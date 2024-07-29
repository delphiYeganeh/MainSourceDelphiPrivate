unit UaddLetterData;

interface

uses
   shellApi,
  YDbgrid, Controls, xpBitBtn,  ExtActns, Classes, ActnList, DB,
  BaseUnit, Dialogs, XPStyleActnCtrls, ActnMan, Grids, DBGrids , Buttons, SysUtils,
  StdCtrls,  ADODB, windows, Menus, ExtCtrls, IdBaseComponent, IdCoder,
  IdCoder3to4, IdCoderMIME, AppEvnts;

type
  TFrAddLetterData = class(TMBaseForm)
    ActionManager: TActionManager;
    Action1: TAction;
    DBGrid2: TYDBGrid;
    OpenDialog: TOpenDialog;
    SaveDialog: TSaveDialog;
    Panel1: TPanel;
    ADeleteAttachments: TBitBtn;
    btnedit: TBitBtn;
    AddBtn: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BBShow: TBitBtn;
    Panel2: TPanel;
    Label1: TLabel;
    popAdd: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    btnECE: TBitBtn;
    IdDecoderMIME1: TIdDecoderMIME;
    CHK_USER_ACCESS_QRY: TADOQuery;
    procedure BitBtn1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ADeleteAttachmentsClick(Sender: TObject);
    procedure btneditClick(Sender: TObject);
    procedure RefreshData;
    procedure FormShow(Sender: TObject);
    procedure AddBtnClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure BBShowClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure btnECEClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FLetter_Or_Erja: String;
    FGroupFlag1: Boolean;
    FShowReadonly: Boolean;
    procedure SetLetter_Or_Erja(const Value: String);
    procedure SetGroupFlag1(const Value: Boolean);
    procedure SetShowReadonly(const Value: Boolean);
    procedure ShowReadOnlyForm;
    procedure NotShowReadOnlyForm;
    Procedure SaveFileToLetterData(aTempFilName, Desc:String);
    { Private declarations }
  public
    { Public declarations }
    SHOW_TYP : String;
    LetterID : Integer;
    RecommitID : Integer;
    ReadOnly : Boolean;
    LetterDataID : integer;

    property Letter_Or_Erja:String read FLetter_Or_Erja write SetLetter_Or_Erja;
    property GroupFlag1:Boolean read FGroupFlag1 write SetGroupFlag1;
    property ShowReadonly:Boolean read FShowReadonly write SetShowReadonly;

  end;

var
  FrAddLetterData: TFrAddLetterData;

implementation

uses  Dmu, businessLayer, Forms, UAddLetterDataDialog, ArchiveAttach,
  Uconnect, ShowArchiveDoc,  
   xmldom, XMLIntf, msxmldom, XMLDoc, YShamsiDate, DateUtils, UMain;

{$R *.dfm}

procedure TFrAddLetterData.BitBtn1Click(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddLetterData.Action1Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFrAddLetterData.ADeleteAttachmentsClick(Sender: TObject);
begin
  inherited;
  if messageShow(39,True) then
  begin
    if Letter_Or_Erja='Letter' then
    begin
      with TADOQuery.Create(nil) do
      begin
        Connection := dm.YeganehConnection;
        SQL.Text := 'SELECT LetterID,ArchiveID,isDocument FROM LetterData WHERE LetterDataID='+dm.Get_LetterData_by_LetterIDLetterDataID.AsString;
        Open;
        if Fields[1].AsInteger>0 then
        begin
          if dm.ArchiveConnection.Connected then
          begin
            if Fields[2].AsBoolean then
              SQL.Text := 'DELETE FROM AutomationRelation WHERE isDocument=1 AND DabirLetterID='+ Fields[0].AsString + ' AND ArchiveID='+ Fields[1].AsString
            else
              SQL.Text := 'DELETE FROM AutomationRelation WHERE isDocument=0 AND DabirLetterID='+ Fields[0].AsString + ' AND ArchiveID='+ Fields[1].AsString;
            close;
            Connection := dm.ArchiveConnection;
            ExecSQL;
          end
          else
          begin
            ShowMessage('«— »«ÿ »« Å«Ìê«Â œ«œÂ »«Ìê«‰Ì „ﬁœÊ— ‰Ì” ');
            Exit;
          end;
        end;
      end;
      Exec_delete_LetterData(dm.Get_LetterData_by_LetterIDLetterDataID.AsInteger);
    end;

    if Letter_Or_Erja='Erja' then
      Exec_Delete_RecommitePayvast(dm.Get_RecommitePayvast_by_RecommiteIDID.AsInteger);

    RefreshData;
  end;
end;

procedure TFrAddLetterData.btneditClick(Sender: TObject);
begin
  // Amin 1391/12/15 Start
  {
  if Letter_Or_Erja='Letter' then
  begin
      with  dm,Get_LetterData_by_LetterID do
        if not Y_InputQuery('‘—Õ ÅÌÊ”  ',dm.Get_LetterData_by_LetterIDdescription.AsString,s) then exit else
        begin
          edit;
          Get_LetterData_by_LetterIDdescription.AsString:=s;
          post;
        end;
   end;

  if Letter_Or_Erja='Erja' then
  begin
      with  dm,Get_RecommitePayvast_by_RecommiteID do
        if not Y_InputQuery('‘—Õ ÅÌÊ”  ',dm.Get_RecommitePayvast_by_RecommiteIDdescription.AsString,s) then exit else
        begin
          edit;
          Get_RecommitePayvast_by_RecommiteIDdescription.AsString:=s;
          post;
        end;
   end;
   }

  if (DBGrid2.DataSource.DataSet.RecordCount = 0) or
      (DBGrid2.DataSource.DataSet.RecNo < 0)then
    exit;

  FrAddLetterDataDialog := TFrAddLetterDataDialog.Create(Application);
  FrAddLetterDataDialog.Letter_Or_Erja := Letter_Or_Erja;
  if Letter_Or_Erja = 'Letter' then
  begin
    Dm.Get_LetterData_by_LetterID.Edit;
    FrAddLetterDataDialog.DSForm.DataSet := Dm.Get_LetterData_by_LetterID;
  end;

  if Letter_Or_Erja = 'Erja'   then
  begin
    Dm.Get_RecommitePayvast_by_RecommiteID.Edit;
    FrAddLetterDataDialog.DSForm.DataSet := Dm.Get_RecommitePayvast_by_RecommiteID;
  end;

  FrAddLetterDataDialog.ShowModal;
   // Amin 1391/12/15 End
end;

procedure TFrAddLetterData.RefreshData;
begin
  if Letter_Or_Erja = 'Letter' then
    with dm.Get_LetterData_by_LetterID do
    begin
      Close;
      Parameters.ParamByName('@LetterID').Value := LetterID;
      Open;
    end;

  if Letter_Or_Erja = 'Erja' then
    with dm.Get_RecommitePayvast_by_RecommiteID do
    begin
      Close;
      Parameters.ParamByName('@RecommiteID').Value := RecommitID;
      Open;
    end;
end;

procedure TFrAddLetterData.FormShow(Sender: TObject);
begin
  inherited;
  RefreshData;
{
   btnDel.Visible :=not ReadOnly;
   btnedit.Visible:=not ReadOnly;
 // btnOpen.Visible:= not ReadOnly;
   AddBtn.Visible:= not ReadOnly;
}

  if ShowReadonly then
    ShowReadOnlyForm
  else
    NotShowReadOnlyForm;

  if LetterDataID>0 then
    dm.Get_LetterData_by_LetterID.Locate('LetterDataID',LetterDataID,[]);

  CHK_USER_ACCESS_QRY.Close;
  CHK_USER_ACCESS_QRY.SQL.Clear;
  CHK_USER_ACCESS_QRY.SQL.Add('DECLARE @AccessID INT                                                                       ');
  //CHK_USER_ACCESS_QRY.SQL.Add('SET @AccessID = (SELECT AccessID hh FROM [dbo].[Users] WHERE Id = '+Dm.UsersId.AsString+' ) ');
  CHK_USER_ACCESS_QRY.SQL.Add('SET @AccessID = (SELECT AccessID hh FROM [dbo].[Users] WHERE Id = '+ IntToStr(_UserID)+' ) ');
  CHK_USER_ACCESS_QRY.SQL.Add('SELECT bb.HasAccess as hh FROM [dbo].[Users] u                                              ');
  CHK_USER_ACCESS_QRY.SQL.Add('INNER JOIN                                                                                  ');
  CHK_USER_ACCESS_QRY.SQL.Add('(                                                                                           ');
  CHK_USER_ACCESS_QRY.SQL.Add('SELECT DISTINCT                                                                             ');
  CHK_USER_ACCESS_QRY.SQL.Add('aa.AccessID,aa.HasAccess FROM ActionsAccess aa                                              ');
  CHK_USER_ACCESS_QRY.SQL.Add('INNER JOIN  actions a ON a.id = aa.actionid AND  AA.FormTag =a.FormTag                      ');
  CHK_USER_ACCESS_QRY.SQL.Add('left JOIN componentTag ct ON ct.componentTagId=a.componentTag                               ');
  CHK_USER_ACCESS_QRY.SQL.Add('WHERE                                                                                       ');
  CHK_USER_ACCESS_QRY.SQL.Add('aa.AccessID = @AccessID and 1=1                                                             ');
  CHK_USER_ACCESS_QRY.SQL.Add('and                                                                                         ');
  CHK_USER_ACCESS_QRY.SQL.Add('a.FormTag=1                                                                                 ');
  CHK_USER_ACCESS_QRY.SQL.Add('And                                                                                         ');
  CHK_USER_ACCESS_QRY.SQL.Add('aa.ActionID = ''ADeleteAttachments''/*''adeletePeyvastInKartabl''*/                                                   ');
  CHK_USER_ACCESS_QRY.SQL.Add(') bb                                                                                        ');
  CHK_USER_ACCESS_QRY.SQL.Add('ON bb.AccessID = u.AccessID                                                                 ');
  CHK_USER_ACCESS_QRY.SQL.Add('where                                                                                       ');
  //CHK_USER_ACCESS_QRY.SQL.Add('u.Id = '+Dm.UsersId.AsString+'
  CHK_USER_ACCESS_QRY.SQL.Add('u.Id = '+IntToStr(_UserID)+'                                                              ');
  //CHK_USER_ACCESS_QRY.SQL.SaveToFile('c:\enabble.sql');
  CHK_USER_ACCESS_QRY.Connection := Dm.YeganehConnection ;
  CHK_USER_ACCESS_QRY.Open;
  if CHK_USER_ACCESS_QRY.FieldByName('hh').AsBoolean = True then
    ADeleteAttachments.Enabled := True
  else
    ADeleteAttachments.Enabled := False;
  CHK_USER_ACCESS_QRY.Close;

  if SHOW_TYP = 'SHOW' then
  begin
    AddBtn.Visible             := False;
    btnedit.Visible            := False;
    ADeleteAttachments.Enabled := False;
    Self.Caption := '';
  end
  else
  if SHOW_TYP = 'EDIT' then
  begin
    AddBtn.Visible             := False;
    btnedit.Visible            := False;
    ADeleteAttachments.Enabled := False;
  end;
end;

function IntToY(l:byte):string ;
var
  i,j,k,n:integer;
begin
  Result:='';
  i := 60 + 3 + 1 + 1;
  j := 2 * 60 + 2 * 3 + 1;
  k := 15 * 11 + 3 + 1;
  for n:=1 to l do
  begin
    if (i >= 28 + 1 - 1) and (i <= 128 + 1 - 1) then
      Result := Result + char(i);
    i := k*i mod j;
  end;
end;

procedure TFrAddLetterData.AddBtnClick(Sender: TObject);
 begin
  if (dm.ArchiveConnection.Connected) and (Letter_Or_Erja = 'Letter') then
  begin
    popAdd.Popup(FrAddLetterData.left + AddBtn.Left + 130, FrAddLetterData.Top + AddBtn.Height + 28 + Panel1.Top + AddBtn.Top);
  end
  else
  begin
    if (Letter_Or_Erja = 'Letter') then
      N1Click(self)
    else
      try
        with DM.ArchiveConnection do
        begin
          Connected := false;
          ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+ArchiveDBName+';Data Source='+ ArchiveServerName;
          ConnectionTimeout:=3;
        end;

        try
          dm.ArchiveConnection.Open('YeganehCorporate_Archive', IntToY(66));
          dm.ArchiveConnection.Connected:=true;
          _ConnectedToArchive := true;
        except
          _ConnectedToArchive := false;
        end;

        if (_ConnectedToArchive = true) then
          popAdd.Popup(FrAddLetterData.left + AddBtn.Left  + 130, FrAddLetterData.Top + AddBtn.Height + 28 + Panel1.Top + AddBtn.Top)
        else
          N1Click(self);
      except
        N1Click(self);
      end;
  end;
end;

//procedure TFrAddLetterData.btnOpenClick(Sender: TObject);
//begin
//   if Letter_Or_Erja='Letter' then
//   if OpenDialog.Execute then
//      with dm.Get_LetterData_by_LetterDataID do
//      begin
//         Close;
//         Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
//         Open;
//         Edit;
//         dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(OpenDialog.FileName);
//         Post;
//      end;
//
//   if Letter_Or_Erja='Erja' then
//   if OpenDialog.Execute then
//      with dm.Get_RecommitePayvast_by_RecommitePayvastID do
//      begin
//         Close;
//         Parameters.ParamByName('@RecommitePayvastID').Value:=dm.Get_RecommitePayvast_by_RecommiteIDID.Value;
//         Open;
//         Edit;
//         dm.Get_RecommitePayvast_by_RecommitePayvastIDImage.SaveToFile(OpenDialog.FileName);
//         Post;
//      end;
//end;

procedure TFrAddLetterData.BitBtn2Click(Sender: TObject);
begin
  if Letter_Or_Erja = 'Letter' then
  begin
    SaveDialog.Filter := UpperCase(dm.Get_LetterData_by_LetterIDExt.asstring) + ' Files|*.' + dm.Get_LetterData_by_LetterIDExt.asstring;
    if SaveDialog.Execute then
      with dm.Get_LetterData_by_LetterDataID do
      begin
        close;
        if dm.Get_LetterData_by_LetterIDarchiveID.AsInteger>0 then
        begin
          if dm.ArchiveConnection.Connected then
          begin
            if not dm.Get_LetterData_by_LetterIDisDocument.AsBoolean then
            begin
              Connection := dm.ArchiveConnection;
              Parameters.ParamByName('@LetterdataID').Value := dm.Get_LetterData_by_LetterIDarchiveID.Value;
              Open;
              dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(SaveDialog.FileName + '.' + dm.Get_LetterData_by_LetterIDExt.AsString);
              Close;
              Connection := dm.YeganehConnection;
            end
            else
            begin
              //TODO show doc
            end;
          end
          else
            ShowMessage('«— »«ÿ »« Å«Ìê«Â œ«œÂ »«Ìê«‰Ì „ﬁœÊ— ‰Ì” ');
        end
        else
        begin
          Connection := dm.YeganehConnection;
          Parameters.ParamByName('@LetterdataID').Value := dm.Get_LetterData_by_LetterIDLetterDataID.Value;
          Open;
          dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(SaveDialog.FileName + '.' + dm.Get_LetterData_by_LetterIDExt.AsString);
        end;
      end;
  end;

  dm.Get_LetterData_by_LetterDataID.Connection := dm.YeganehConnection;

  if Letter_Or_Erja = 'Erja' then
  begin
    SaveDialog.Filter := UpperCase(dm.Get_RecommitePayvast_by_RecommiteIDExt.AsString) + ' Files|*.' + dm.Get_RecommitePayvast_by_RecommiteIDExt.AsString;
    if SaveDialog.Execute then
      with dm.Get_RecommitePayvast_by_RecommitePayvastID do
      begin
        close;
        Parameters.ParamByName('@RecommitePayvastID').Value := dm.Get_RecommitePayvast_by_RecommiteIDID.Value;
        Open;
        dm.Get_RecommitePayvast_by_RecommitePayvastIDImage.SaveToFile(SaveDialog.FileName + '.' + dm.Get_RecommitePayvast_by_RecommiteIDExt.AsString);
      end;
  end;
end;

procedure TFrAddLetterData.DBGrid2DblClick(Sender: TObject);
begin
  inherited;
  BBShow.Click;
end;

procedure TFrAddLetterData.BBShowClick(Sender: TObject);
var
  f:string;
  ArchivLetID : integer;
begin
  if Letter_Or_Erja='Letter' then
  begin
    with dm,Get_LetterData_by_LetterDataID do
    begin
      close;
      if dm.Get_LetterData_by_LetterIDarchiveID.AsInteger>0 then
      begin
        if dm.ArchiveConnection.Connected then
        begin
          if not dm.Get_LetterData_by_LetterIDisDocument.AsBoolean then
          begin
            with TADOQuery.Create(nil)do
            begin
              Connection := dm.ArchiveConnection;
              SQL.Text := 'SELECT LetterID FROM LetterData WHERE LetterDataID='+dm.Get_LetterData_by_LetterIDarchiveID.AsString;
              Open;
              if not IsEmpty then
                ArchivLetID := fields[0].Value;
            end;

            if(not _Can_View_Classified_Archive_Docs)then
              with TADOQuery.Create(nil)do
              begin
                Connection := dm.ArchiveConnection;
                SQL.Text := 'SELECT ClassificationID FROM Letter WHERE LetterID='+IntToStr(ArchivLetID);
                Open;
                if (Fields[0].AsInteger > 1) then
                begin
                  ShowMessage('«Ì‰ ”‰œ œ«—«Ì ”ÿÕ „Õ—„«‰Â „Ì »«‘œ');
                  Exit;
                end;
              end;

            Connection := dm.ArchiveConnection;
            Parameters.ParamByName('@LetterdataID').Value := dm.Get_LetterData_by_LetterIDarchiveID.Value;
            Open;
            f :=_TempPath + 'temp' + Get_LetterData_by_LetterDataIDLetterDataID.AsString + '.' + Get_LetterData_by_LetterIDExt.AsString;
            SysUtils.FileSetReadOnly(pchar(f), false);
            DeleteFile(pchar(f));
            Get_LetterData_by_LetterDataIDImage.SaveToFile(f);
            ShellExecute(Handle, 'open', pchar(f), nil, nil, SW_SHOWNORMAL);
            Close;
            Connection := dm.YeganehConnection;
          end
          else
          begin
            ArchivLetID :=  dm.Get_LetterData_by_LetterIDarchiveID.AsInteger;
            if (not _Can_View_Classified_Archive_Docs)then
              with TADOQuery.Create(nil)do
              begin
                Connection := dm.ArchiveConnection;
                SQL.Text := 'SELECT ClassificationID FROM Letter WHERE LetterID=' + IntToStr(ArchivLetID);
                Open;
                if (Fields[0].AsInteger >1) then
                begin
                  ShowMessage('«Ì‰ ”‰œ œ«—«Ì ”ÿÕ „Õ—„«‰Â „Ì »«‘œ');
                  Exit;
                end;
              end;
            fmShowArchiveDoc := TfmShowArchiveDoc.Create(Application);
            fmShowArchiveDoc.LetterID := dm.Get_LetterData_by_LetterIDarchiveID.AsInteger;
            fmShowArchiveDoc.ShowModal;
          end;
        end
        else
          ShowMessage('«— »«ÿ »« Å«Ìê«Â œ«œÂ »«Ìê«‰Ì „ﬁœÊ— ‰Ì” ');
      end
      else
      begin
        Connection := dm.YeganehConnection;
        Parameters.ParamByName('@LetterdataID').Value := dm.Get_LetterData_by_LetterIDLetterDataID.Value;
        Open;
        f :=_TempPath + 'temp' + Get_LetterData_by_LetterDataIDLetterDataID.AsString + '.' + Get_LetterData_by_LetterIDExt.AsString;
        SysUtils.FileSetReadOnly(pchar(f), false);
        DeleteFile(pchar(f));
        Get_LetterData_by_LetterDataIDImage.SaveToFile(f);
        //if Get_LetterData_by_LetterIDExt.AsString = 'txt' then
        //  ShellExecute(Handle, 'open', PChar('wordpad'), pchar(f), nil, SW_SHOWNORMAL)
        //else
        ShellExecute(Handle, 'open', pchar(f), nil, nil, SW_SHOWNORMAL);
      end;
    end;
  end;

  if Letter_Or_Erja = 'Erja' then
  begin
    with dm,Get_RecommitePayvast_by_RecommitePayvastID do
    begin
      close;
      Parameters.ParamByName('@RecommitePayvastID').Value := dm.Get_RecommitePayvast_by_RecommiteIDID.Value;
      Open;
      f := _TempPath + 'temp' + Get_RecommitePayvast_by_RecommitePayvastIDID.AsString + '.' + Get_RecommitePayvast_by_RecommiteIDExt.AsString;
      SysUtils.FileSetReadOnly(pchar(f), false);
      DeleteFile(pchar(f));
      Get_RecommitePayvast_by_RecommitePayvastIDImage.SaveToFile(f);
      ShellExecute(Handle, 'open', pchar(f), nil, nil, SW_SHOWNORMAL)
    end;
  end;
end;

procedure TFrAddLetterData.SetLetter_Or_Erja(const Value: String);
begin
  FLetter_Or_Erja := Value;
end;

procedure TFrAddLetterData.SetGroupFlag1(const Value: Boolean);
begin
  FGroupFlag1 := Value;
end;

procedure TFrAddLetterData.SetShowReadonly(const Value: Boolean);
begin
  FShowReadonly := Value;
end;

procedure TFrAddLetterData.ShowReadOnlyForm;
begin
  AddBtn.Enabled:=False;
  ADeleteAttachments.Enabled:=False;
  btnedit.Enabled:=False;
//  btnOpen.Enabled:=False;
  BBShow.Enabled:=True;
end;

procedure TFrAddLetterData.NotShowReadOnlyForm;
begin
  AddBtn.Enabled:=True;
  ADeleteAttachments.Enabled:=True;
  btnedit.Enabled:=True;
 // btnOpen.Enabled:=True;
  BBShow.Enabled:=True;
end;

procedure TFrAddLetterData.N1Click(Sender: TObject);
begin
  inherited;
  if Letter_Or_Erja = 'Letter' then
  begin
    dm.Get_LetterData_by_LetterID.Insert;
    Dm.Get_LetterData_by_LetterIDIsTemplate.AsBoolean  := True;
    dm.Get_LetterData_by_LetterIDletterid.AsInteger := LetterID;
    dm.Get_LetterData_by_LetterIDVersionDate.Value := _Today; // Amin 1391/12/15
  end;

  if Letter_Or_Erja = 'Erja' then
  begin
    dm.Get_RecommitePayvast_by_RecommiteID.Insert;
    dm.Get_RecommitePayvast_by_RecommiteIDRecommiteID.AsInteger := RecommitID;
    dm.Get_RecommitePayvast_by_RecommiteIDLetterID.AsInteger := LetterID;
    Dm.Get_RecommitePayvast_by_RecommiteIDVersionDate.Value := _Today; // Amin 1391/12/15
  end;

  FrAddLetterDataDialog := TFrAddLetterDataDialog.Create(Application);
  FrAddLetterDataDialog.Letter_Or_Erja := Letter_Or_Erja;

  if Letter_Or_Erja = 'Letter' then
  begin
    FrAddLetterDataDialog.DSForm.DataSet := Dm.Get_LetterData_by_LetterID;
    if (dm.ArchiveConnection.Connected) then
      FrAddLetterDataDialog.chkSendAttachToArchive.Visible := true
    else
      FrAddLetterDataDialog.chkSendAttachToArchive.Visible := False;
  end;

  if Letter_Or_Erja = 'Erja'   then
  begin
    FrAddLetterDataDialog.DSForm.DataSet:=Dm.Get_RecommitePayvast_by_RecommiteID;
    FrAddLetterDataDialog.GroupFlag1:=GroupFlag1;
    FrAddLetterDataDialog.RecommiteID:=RecommitID;
    FrAddLetterDataDialog.chkSendAttachToArchive.Visible := False;
  end;

  FrAddLetterDataDialog.ShowModal;
  Dm.Get_LetterData_by_LetterID.Close;
  Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterID').Value := LetterID;
  Dm.Get_LetterData_by_LetterID.Open;
end;

procedure TFrAddLetterData.N2Click(Sender: TObject);
begin
  inherited;
  if _ConnectedToArchive then
  begin
    fmArchiveAttachment := TfmArchiveAttachment.Create(Application);
    fmArchiveAttachment.DabirLetterID := LetterID;
    fmArchiveAttachment.ShowModal;
    dm.Extention.Close;
    dm.Extention.Open;
    Dm.Get_LetterData_by_LetterID.Close;
    Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterID').Value := LetterID;
    Dm.Get_LetterData_by_LetterID.Open;
  end;
end;

procedure TFrAddLetterData.btnECEClick(Sender: TObject);
var
  id, j,k : integer;
  Attach_FileName, body, tmpStr, tmpFileName : string;
  XMLDoc: IXMLDocument;
  LetterChilds, FileChilds: IXMLNode;
  fs : TFileStream;
begin
  inherited;
  Attach_FileName := 'tmp.xml';
  with dm.Get_LetterData_by_LetterDataID do
  begin
    Connection := dm.YeganehConnection;
    Parameters.ParamByName('@LetterdataID').Value:=dm.Get_LetterData_by_LetterIDLetterDataID.Value;
    Open;
    dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(_TempPath+Attach_FileName);
  end;

  XMLDoc := TXMLDocument.Create(self);
  XMLDoc.LoadFromFile(_TempPath+Attach_FileName);
  XMLDoc.Active := true;

  for j := 0 to XMLDoc.ChildNodes.Nodes['Letter'].ChildNodes.Count - 1 do
  begin
    LetterChilds := XMLDoc.ChildNodes.Nodes['Letter'].ChildNodes[j];
    if LetterChilds.NodeName = 'Sender' then
    begin
      Body := Body +'›—” ‰œÂ :';
      Body := Body +LetterChilds.AttributeNodes['Organization'].Text + ' - '
                       +LetterChilds.AttributeNodes['Department'].Text + ' - '
                       +LetterChilds.AttributeNodes['Position'].Text + ' - '
                       +LetterChilds.AttributeNodes['Name'].Text;
      Body := Body +#13#10;
    end;

    if LetterChilds.NodeName = 'Receiver' then
    begin
      Body := Body +'êÌ—‰œÂ :';
      Body := Body +LetterChilds.AttributeNodes['Organization'].Text + ' - '
                       +LetterChilds.AttributeNodes['Department'].Text + ' - '
                       +LetterChilds.AttributeNodes['Position'].Text + ' - '
                       +LetterChilds.AttributeNodes['Name'].Text;
      Body := Body +#13#10;
    end;

    if LetterChilds.NodeName = 'LetterNo' then
    begin
      Body := Body +'‘„«—Â ‰«„Â :';
      Body := Body +LetterChilds.Text;
      Body := Body +#13#10;
    end;

    if LetterChilds.NodeName = 'LetterDateTime' then
    begin
      Body := Body +'  «—ÌŒ ‰«„Â :';
      tmpStr := LetterChilds.Text;
      tmpStr := StringReplace(tmpStr,'-','/',[rfReplaceAll]);
      if copy(tmpStr,1,2)>'19' then
        Body := Body + ShamsiMString(copy(tmpStr,1,10))
      else
        body := body + copy(tmpStr,1,10);
      body := body +'    '+ copy(tmpStr,12,5);
      Body := Body +#13#10;
    end;

    if LetterChilds.NodeName = 'Subject' then
    begin
      Body := Body +' „Ê÷Ê⁄ ‰«„Â :';
      body := body + LetterChilds.Text;
      Body := Body +#13#10;
    end;

    /////  Origins  &  Attachments
    if (LetterChilds.NodeName = 'Origins') or (LetterChilds.NodeName = 'Attachments') then
    begin
      for k := 0 to LetterChilds.ChildNodes.Count - 1 do
      begin
        FileChilds := LetterChilds.ChildNodes[k];
        tmpFileName := _TempPath+'123'+IntToStr(k)+'.'+FileChilds.AttributeNodes['Extension'].Text;
        if FileExists(tmpFileName)then
        begin
          SysUtils.FileSetReadOnly(pchar(tmpFileName), false);
          DeleteFile(pchar(tmpFileName));
        end;
        fs := TFileStream.Create(tmpFileName,fmCreate);
        idDecoderMIME1.DecodeToStream(FileChilds.Text,fs);
        fs.WriteBuffer(fs,fs.InstanceSize);
        fs.Destroy;
        SaveFileToLetterData(tmpFileName , FileChilds.AttributeNodes['Description'].Text);
        SysUtils.FileSetReadOnly(pchar(tmpFileName), false);
        DeleteFile(pchar(tmpFileName));
      end;
    end;

  end;
                  //
  SysUtils.FileSetReadOnly(pchar(_TempPath+Attach_FileName), false);
  DeleteFile(pchar(_TempPath+Attach_FileName));
  dm.YeganehConnection.Execute('DELETE FROM LetterData where LetterDataID='+dm.Get_LetterData_by_LetterIDLetterDataID.AsString);
  id := dm.Get_LetterData_by_LetterIDletterid.AsInteger;
  dm.Get_LetterData_by_LetterID.Close;
  dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@letterid').Value := id;
  dm.Get_LetterData_by_LetterID.Open;
end;

Procedure TFrAddLetterData.SaveFileToLetterData(aTempFilName, Desc:String);
Var
   FileExt:String;
   ExtID :Integer;
begin
  With dm,Get_LetterWordFile do
  begin
    Close;
    Parameters.ParamByName('@LetterID').Value := dm.Get_LetterData_by_LetterIDletterid.AsInteger;
    Open;
    Insert;

    Get_LetterWordFileLetterID.AsInteger := dm.Get_LetterData_by_LetterIDletterid.AsInteger;

    Get_LetterWordFileImage.LoadFromFile(aTempFilName);

    //Å”Ê‰œ ›«Ì·
    FileExt := File_GetFileExt(aTempFilName);
    if UpperCase(FileExt)='DOC' then
      ExtID := StrToIntDef( Qry_GetResult('Select ExtentionID from Extention Where issystem=0 and Extention = '+QuotedStr(FileExt),dm.YeganehConnection) ,0)
    else
      ExtID := StrToIntDef( Qry_GetResult('Select ExtentionID from Extention Where Extention = '+QuotedStr(FileExt),dm.YeganehConnection) ,0);

    if ExtID > 0 then
      Get_LetterWordFileExtention.AsInteger := ExtID //3 From extention table ›«Ì· Ê—œ
    else

    if ExtID = 0 then  //«ê— Å”Ê‰œ ÊÃÊœ ‰œ«‘  ¬‰ê«Â
      with dm,Extention do
      begin
        Close;
        Open;
        Insert;
        ExtentionExtentionTitle.AsString := FileExt;
        ExtentionExtention.AsString := FileExt;
        ExtentionIsSystem.AsBoolean := False;
        Post;
        Get_LetterWordFileExtention.AsInteger := dm.ExtentionExtentionID.AsInteger;
        Close;
      end;
    Get_LetterWordFileDescription.AsString  := Desc;
    Get_LetterWordFilePageNumber.AsInteger  := Exec_get_MaxPage_ByLetterID(Get_LetterWordFileExtention.AsInteger, dm.Get_LetterData_by_LetterIDletterid.AsInteger);
    Get_LetterWordFileLastUpdate.AsDateTime := Now;
    Post;
    Close;
  end;
end;

procedure TFrAddLetterData.FormCreate(Sender: TObject);
var i : Integer;
begin
  inherited;
  //Add Sanaye 941107
  //«÷«›Â ò—œ‰ ”ÿÕ œ” —”Ì ò«—»— »—«Ì Õ–› ÅÌÊ”  Â«
  for i:=0 to ComponentCount-1 do
    if Components[i].InheritsFrom(TBitBtn) then
      TBitBtn(Components[i]).Visible := Dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag)
  //end Sanaye
end;

end.
