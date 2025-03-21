unit UUpdateOldAttachFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,
  Grids, DBGrids, YDbgrid, ComCtrls, xpPages,ADODB;

type
  TfrUpdateOldAttachFile = class(TMBaseForm)
    pnlMain: TPanel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    btnCancel: TBitBtn;
    rdgUpdateType: TRadioGroup;
    btnShowContractWord: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    Label9: TLabel;
    pgcUpdate: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    dbgFollowUp: TYDBGrid;
    Panel4: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdtCustomerIdFollow: TEdit;
    edtFollowStart: TEdit;
    edtFollowEnd: TEdit;
    xpTabSheet2: TxpTabSheet;
    dbgContract: TYDBGrid;
    Panel3: TPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edtCustomerIdContract: TEdit;
    edtContractStart: TEdit;
    edtContractEnd: TEdit;
    pnlProcess: TPanel;
    Label8: TLabel;
    Bevel1: TBevel;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnCancelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdtCustomerIdFollowChange(Sender: TObject);
    procedure btnShowContractWordClick(Sender: TObject);
    procedure edtFollowStartExit(Sender: TObject);
    procedure edtFollowEndExit(Sender: TObject);
    procedure edtContractStartExit(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth,
      NewHeight: Integer; var Resize: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateContract(UpdateKind :byte);
    procedure UpdateFollow(UpdateKind :byte);
    Procedure RefreshContract;
    Procedure RefreshFollowUp;
    Procedure MakeFilter;
    Procedure MakeFilterContract;        
  public
    { Public declarations }
  end;

var
  frUpdateOldAttachFile: TfrUpdateOldAttachFile;
  ADOQryContract,ADOQryFollow,ADOQryContractUpdate,ADOQryFollowUpUpdate  :TADOQuery;

implementation

uses dmu;

{$R *.dfm}

procedure TfrUpdateOldAttachFile.BitBtn1Click(Sender: TObject);
begin
if pgcUpdate.ActivePageIndex = 1 then
          UpdateContract(rdgUpdateType.ItemIndex);
if pgcUpdate.ActivePageIndex = 0 then
          UpdateFollow(rdgUpdateType.ItemIndex);
end;

procedure TfrUpdateOldAttachFile.btnCancelClick(Sender: TObject);
begin
  inherited;
  if  (ADOQryContract.State in [dsinsert])or(ADOQryFollow.State in [dsinsert]) then
  begin
     ADOQryContract.Cancel;
     ADOQryFollow.Cancel;
  end else

  ModalResult :=mrCancel;
end;

procedure TfrUpdateOldAttachFile.FormCreate(Sender: TObject);
begin
  inherited;
    RefreshContract;
    RefreshFollowUp;
end;

procedure TfrUpdateOldAttachFile.UpdateContract(UpdateKind :byte);
var    AttachmentPath : String;
begin
    pnlProcess.Visible :=true;
    pnlProcess.Refresh;

    ADOQryContractUpdate            := TADOQuery.Create(nil);
       with ADOQryContractUpdate do
       begin
          Connection := Dm.YeganehConnection;
          CommandTimeout := 1200;
          if  UpdateKind = 0 then
                 SQL.Text := 'Select ContractID,ContractText,Attachment from contract where Attachment <> '''' and (ContractText is null)'
          else
                 SQL.Text := 'Select ContractID,ContractText,Attachment from contract where ContractId = '+ADOQryContract.FieldByName('ContractID').asstring;
          Open
       end;

      with ADOQryContract do
       if UpdateKind = 0 then
       begin
              first;
                While not Eof do
                begin
                  if (copy(FieldByName('Attachment').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment').asstring,1,1)) <> 'B') then
                         AttachmentPath := 'B'+ copy(FieldByName('Attachment').AsString,2,length(FieldByName('Attachment').AsString)-1)
                         else AttachmentPath :=  FieldByName('Attachment').asstring;

                  if FileExists(AttachmentPath) then
                    if ADOQryContractUpdate.Locate('ContractID',FieldByName('ContractID').Value,[]) then
                    begin
                      ADOQryContractUpdate.Edit;
                      CopyFile(PAnsiChar(AnsiString(AttachmentPath)),'C:\YeganehContractTemp.doc',false);
                      TBlobField(ADOQryContractUpdate.FieldByName('ContractText')).LoadFromFile('C:\YeganehContractTemp.doc');
                      DeleteFile('C:\YeganehContractTemp.doc');
                      ADOQryContractUpdate.Post;
                    end;
                  Next;
                end;
        end else
        begin
                  if (copy(FieldByName('Attachment').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment').asstring,1,1)) <> 'B') then
                         AttachmentPath := 'B'+ copy(FieldByName('Attachment').AsString,2,length(FieldByName('Attachment').AsString)-1)
                    else AttachmentPath :=  FieldByName('Attachment').asstring;

                  if FileExists(AttachmentPath) then
                   begin
                      ADOQryContractUpdate.Edit;
                      CopyFile(PAnsiChar(AnsiString(AttachmentPath)),'C:\YeganehContractTemp.doc',false);
                      TBlobField(ADOQryContractUpdate.FieldByName('ContractText')).LoadFromFile('C:\YeganehContractTemp.doc');
                      DeleteFile('C:\YeganehContractTemp.doc');
                      ADOQryContractUpdate.Post;
                   end;

        end;
        ShowMessage('������� ����� ��');
        pnlProcess.Visible :=False;
        RefreshContract;
end;

procedure TfrUpdateOldAttachFile.UpdateFollow(UpdateKind :byte);
var    AttachmentPathWord,AttachmentPathPic : String;
begin

          ADOQryFollowUpUpdate            := TADOQuery.Create(nil);
          with ADOQryFollowUpUpdate do
          begin
            CommandTimeout := 1200;
            Connection := Dm.YeganehConnection;
            if  UpdateKind = 0 then
            SQL.Text := 'Select FollowUpId,CustomerId, Attachment1, Attachment2, WordAttachment, PicAttachment from FollowUp where  (isnull(Attachment1,'''') <> '''' and WordAttachment is null)'+
                                                                                              'or(isnull(Attachment2,'''') <> '''' and PicAttachment is null) '
                                                                                              else
            SQL.Text := 'Select FollowUpId,CustomerId, Attachment1, Attachment2, WordAttachment, PicAttachment from FollowUp where  FollowUpId = '+ ADOQryFollow.FieldByName('FollowUpId').asstring;
            Open;
          end;

      with ADOQryFollow do
       if UpdateKind = 0 then
       begin
          first;
            While not Eof do
            begin
                  if (copy(FieldByName('Attachment1').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment1').asstring,1,1)) <> 'B') then
                     AttachmentPathWord := 'B'+ copy(FieldByName('Attachment1').AsString,2,length(FieldByName('Attachment1').AsString)-1)
                     else AttachmentPathWord :=  FieldByName('Attachment1').asstring;

                  if (copy(FieldByName('Attachment2').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment2').asstring,1,1)) <> 'B') then
                     AttachmentPathPic := 'B'+ copy(FieldByName('Attachment2').AsString,2,length(FieldByName('Attachment2').AsString)-1)
                     else AttachmentPathPic :=  FieldByName('Attachment2').asstring;

              if ADOQryFollowUpUpdate.Locate('FollowUpID',FieldByName('FollowUpID').Value,[]) then
              begin
                 ADOQryFollowUpUpdate.Edit;
                   if FileExists(AttachmentPathPic) then
                    begin
                        CopyFile(PAnsiChar(AttachmentPathPic),'C:\YeganehContractTemp.doc',false);
                        TBlobField(ADOQryFollowUpUpdate.FieldByName('PicAttachment')).LoadFromFile('C:\YeganehContractTemp.doc');
                        DeleteFile('C:\YeganehContractTemp.doc');
                    end;

                   if FileExists(AttachmentPathWord) then
                    begin
                        CopyFile(PAnsiChar(AttachmentPathWord),'C:\YeganehContractTemp.doc',false);
                        TBlobField(ADOQryFollowUpUpdate.FieldByName('WordAttachment')).LoadFromFile('C:\YeganehContractTemp.doc');
                        DeleteFile('C:\YeganehContractTemp.doc');
                    end;
                    
                    ADOQryFollowUpUpdate.Post;
               end;
              Next;
            end;
       end
       else
       begin
                  if (copy(FieldByName('Attachment1').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment1').asstring,1,1)) <> 'B') then
                     AttachmentPathWord := 'B'+ copy(FieldByName('Attachment1').AsString,2,length(FieldByName('Attachment1').AsString)-1)
                     else AttachmentPathWord :=  FieldByName('Attachment1').asstring;

                  if (copy(FieldByName('Attachment2').asstring,2,1) = ':')AND (UpperCase(copy(FieldByName('Attachment2').asstring,1,1)) <> 'B') then
                     AttachmentPathPic := 'B'+ copy(FieldByName('Attachment2').AsString,2,length(FieldByName('Attachment2').AsString)-1)
                     else AttachmentPathPic :=  FieldByName('Attachment2').asstring;


                ADOQryFollowUpUpdate.Edit;
                
               if FileExists(AttachmentPathPic) then
                begin
                    CopyFile(PAnsiChar(AttachmentPathPic),'C:\YeganehContractTemp.doc',false);
                    TBlobField(ADOQryFollowUpUpdate.FieldByName('PicAttachment')).LoadFromFile('C:\YeganehContractTemp.doc');
                    DeleteFile('C:\YeganehContractTemp.doc');
                end;

               if FileExists(AttachmentPathWord) then
               begin
                    CopyFile(PAnsiChar(AttachmentPathWord),'C:\YeganehContractTemp.doc',false);
                    TBlobField(ADOQryFollowUpUpdate.FieldByName('wordAttachment')).LoadFromFile('C:\YeganehContractTemp.doc');
                    DeleteFile('C:\YeganehContractTemp.doc');
               end;
              ADOQryFollowUpUpdate.Post;

       end;
        ShowMessage('������� ����� ��');
        RefreshFollowUp;

end;

procedure TfrUpdateOldAttachFile.EdtCustomerIdFollowChange(Sender: TObject);
begin
  inherited;
  MakeFilter;
end;

procedure TfrUpdateOldAttachFile.RefreshContract;
var DsContract : TDataSource;
begin
    ADOQryContract                  := TADOQuery.Create(nil);
    DsContract                      := TDataSource.Create(nil);

    with ADOQryContract do
    begin
      CommandTimeout := 1200;
      Connection := Dm.YeganehConnection;
      SQL.Text := 'Select cast(CustomerId as nvarchar) CustomerIdChar ,ContractID,CustomerId,Attachment,BeginDate from contract where Attachment <> '''' and (ContractText is null)';
      Open;
      DsContract.DataSet := ADOQryContract;
      dbgContract.DataSource := DsContract;
      ADOQryContract.FieldByName('Attachment').Alignment := taRightJustify;
    end;
end;

procedure TfrUpdateOldAttachFile.RefreshFollowUp;
var DsFollowUp : TDataSource;
begin

    ADOQryFollow                    := TADOQuery.Create(nil);
    DsFollowUp                      := TDataSource.Create(nil);

    with ADOQryFollow do
    begin
      CommandTimeout := 1200;
      Connection := Dm.YeganehConnection;
      SQL.Text := 'Select cast(CustomerId as nvarchar) CustomerIdChar ,FollowUpId,CustomerId,ToDoDate, Attachment1, Attachment2 from FollowUp where  (isnull(Attachment1,'''') <> '''' and WordAttachment is null)'+
                                                                                        'or(isnull(Attachment2,'''') <> '''' and PicAttachment is null) ';
      Open;
      DsFollowUp.DataSet := ADOQryFollow;
      dbgFollowUp.DataSource := DsFollowUp;
    end;

end;

procedure TfrUpdateOldAttachFile.btnShowContractWordClick(Sender: TObject);
begin
  inherited;
if pgcUpdate.ActivePageIndex = 1 then
          dbgContract.ExportToWord;
if pgcUpdate.ActivePageIndex = 0 then
          dbgFollowUp.ExportToWord
end;

Procedure TfrUpdateOldAttachFile.MakeFilter;
Begin
  with   ADOQryFollow do
  begin
    Filtered := False;
    Filter := '';
    if EdtCustomerIdFollow.Text <>''then
    Filter   := 'CustomerIdChar like %'+EdtCustomerIdFollow.Text+'%';

    if edtFollowStart.Text <> '' then
    if  Filter <> '' then Filter   := Filter + ' and ToDoDate >= '''+edtFollowStart.Text+''''
     else Filter   := Filter + ' ToDoDate >= '''+edtFollowStart.Text+'''';

    if edtFollowEnd.Text <> '' then
    if  Filter <> '' then Filter   := Filter + ' and ToDoDate <= '''+edtFollowEnd.Text+''''
     else Filter   := Filter + ' ToDoDate <= '''+edtFollowEnd.Text+'''';

    if Filter <> '' then
    Filtered := True;
  end
end;
Procedure TfrUpdateOldAttachFile.MakeFilterContract;
Begin
  with   ADOQryContract do
  begin
    Filtered := False;
    Filter := '';
    if edtCustomerIdContract.Text <>''then
    Filter   := 'CustomerIdChar like %'+edtCustomerIdContract.Text+'%';

    if edtContractStart.Text <> '' then
    if  Filter <> '' then Filter   := Filter + ' and BeginDate >= '''+edtContractStart.Text+''''
     else Filter   := Filter + ' BeginDate >= '''+edtContractStart.Text+'''';

    if edtContractEnd.Text <> '' then
    if  Filter <> '' then Filter   := Filter + ' and BeginDate <= '''+edtContractEnd.Text+''''
     else Filter   := Filter + ' BeginDate <= '''+edtContractEnd.Text+'''';

    if Filter <> '' then
    Filtered := True;
  end
end;

procedure TfrUpdateOldAttachFile.edtFollowStartExit(Sender: TObject);
begin
  inherited;
MakeFilter;
end;

procedure TfrUpdateOldAttachFile.edtFollowEndExit(Sender: TObject);
begin
  inherited;
MakeFilter
end;

procedure TfrUpdateOldAttachFile.edtContractStartExit(Sender: TObject);
begin
  inherited;
MakeFilterContract
end;

procedure TfrUpdateOldAttachFile.FormCanResize(Sender: TObject;
  var NewWidth, NewHeight: Integer; var Resize: Boolean);
begin
  { TODO -oparsa : 14030203 }
  if (NewWidth < 649)  or (NewHeight < 399) then
    Resize := False
  else Resize := True;
   { TODO -oparsa : 14030203 }
  inherited;

end;

procedure TfrUpdateOldAttachFile.FormShow(Sender: TObject);
begin
  inherited;
  ShapeBase.Brush.Color := _Color1 ;
  pnlMain.Color := _Color1 ;

end;

end.
