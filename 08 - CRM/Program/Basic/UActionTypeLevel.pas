unit UActionTypeLevel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, YDbgrid,
  ComCtrls, ExtActns, ActnList, DB, dxGDIPlusClasses, ADODB, DBCtrls;

type
  TFActionTypeLevel = class(TMBaseForm)
    pnlMain: TPanel;
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    ActionTypeLevelTree: TTreeView;
    Panel1: TPanel;
    BBOK: TBitBtn;
    BBCancel: TBitBtn;
    GroupBox1: TGroupBox;
    Label5: TLabel;
    PActionType: TADODataSet;
    PActionTypeID: TAutoIncField;
    PActionTypeTitle: TWideStringField;
    ActionTypeTitle: TWideStringField;
    ActionTypeparentid: TIntegerField;
    ActionTypeID: TAutoIncField;
    DActionType: TDataSource;
    ActionType: TADODataSet;
    Label2: TLabel;
    BBInsert: TBitBtn;
    deleteBtn: TBitBtn;
    edtDescription: TEdit;
    Label3: TLabel;
    Label6: TLabel;
    edtOrder: TEdit;
    ActionTypeChildID: TIntegerField;
    ActionTypeOrderId: TIntegerField;
    ActionTypeLevel: TIntegerField;
    ActionTypeType: TIntegerField;
    TempAllData: TADOQuery;
    TempAllDataId: TIntegerField;
    TempAllDataParentID: TIntegerField;
    TempAllDataChildID: TIntegerField;
    TempAllDataOrderId: TIntegerField;
    TempAllDataDescription: TStringField;
    TempAllDataLevel: TIntegerField;
    TempAllDataType: TIntegerField;
    TempAllDataparentDescription: TStringField;
    Select_FollowUP_By_Organization: TADOStoredProc;
    Select_FollowUP_By_OrganizationFollowUPID: TAutoIncField;
    Select_FollowUP_By_OrganizationCustomerID: TIntegerField;
    Select_FollowUP_By_OrganizationActionTypeID: TIntegerField;
    Select_FollowUP_By_OrganizationDoneStatusID: TWordField;
    Select_FollowUP_By_OrganizationMarketerID: TIntegerField;
    Select_FollowUP_By_OrganizationComment: TWideStringField;
    Select_FollowUP_By_OrganizationToDoDate: TStringField;
    Select_FollowUP_By_OrganizationDoneDate: TStringField;
    Select_FollowUP_By_OrganizationAttachment1: TWideStringField;
    Select_FollowUP_By_OrganizationAttachment2: TWideStringField;
    Select_FollowUP_By_OrganizationToDoTime: TStringField;
    Select_FollowUP_By_OrganizationActionTypeTitle: TStringField;
    Select_FollowUP_By_OrganizationMarketerTilte: TStringField;
    Select_FollowUP_By_OrganizationDoneStatusTitle: TStringField;
    Select_FollowUP_By_OrganizationSuccessChance: TWordField;
    Select_FollowUP_By_OrganizationDoneComment: TWideStringField;
    Select_FollowUP_By_OrganizationWordAttachment: TBlobField;
    Select_FollowUP_By_OrganizationPicAttachment: TBlobField;
    Select_FollowUP_By_OrganizationActionTypeTitleAll: TWideStringField;
    Select_FollowUP_By_OrganizationParentFollowUpID: TIntegerField;
    Select_FollowUP_By_OrganizationStatusSaveDate: TStringField;
    Select_FollowUP_By_OrganizationFollowUpInsertDate: TStringField;
    Select_FollowUP_By_OrganizationFullActionTitle: TStringField;
    Select_FollowUP_By_OrganizationExcellAttachment: TBlobField;
    Select_FollowUP_By_OrganizationPdfAttachment: TBlobField;
    Select_FollowUP_By_OrganizationIsFactor: TBooleanField;
    Select_FollowUP_By_OrganizationIsPreFactor: TBooleanField;
    Select_FollowUP_By_OrganizationFactorId: TIntegerField;
    Select_FollowUP_By_OrganizationPicAttachmentType: TStringField;
    Select_FollowUP_By_OrganizationIsAuto: TBooleanField;
    DSelect_FollowUP_By_Organization: TDataSource;
    TempAllDatapparentId: TIntegerField;
    DBActionType: TDBLookupComboBox;
    Button1: TButton;
    edtParent: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActionTypeAfterScroll(DataSet: TDataSet);
    procedure ActionTypeLevelTreeChanging(Sender: TObject; Node: TTreeNode;
      var AllowChange: Boolean);
    procedure ActionTypeLevelTreeDblClick(Sender: TObject);
    procedure BBCancelClick(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure ActionTypeLevelTreeGetImageIndex(Sender: TObject;
      Node: TTreeNode);
    procedure deleteBtnClick(Sender: TObject);
    procedure BBInsertClick(Sender: TObject);
    procedure ActionTypeLevelTreeChange(Sender: TObject; Node: TTreeNode);
    procedure Button1Click(Sender: TObject);
  private
    FActionTypeLevelMode: boolean;
    procedure SetActionTypeLevelMode(const Value: boolean);
    procedure addchildlevel0(Node: TTreeNode);
    procedure addchildlevel1(Node: TTreeNode);
    procedure addchildlevel2(Node: TTreeNode);
    Function Exec_get_LevelTitleByID(d:integer):widestring;
    Function Exec_Level_hasChild(ParentID:integer):boolean;
    procedure AdeleteExecute(Sender: TObject);
    function Exec_insert_ToLevel( Description: widestring;ParentID :integer;ChildID : Integer; OrderId : Integer; Level : Integer ; aType : Integer):integer;
  public
    done:boolean;
    Property ActionTypeLevelMode:boolean read FActionTypeLevelMode write SetActionTypeLevelMode;
  end;

var
  FActionTypeLevel: TFActionTypeLevel;

implementation

uses dmu,YShamsiDate ;

{$R *.dfm}

{ TFActionTypeLevel }

procedure TFActionTypeLevel.SetActionTypeLevelMode(const Value: boolean);
begin
  FActionTypeLevelMode := Value;
end;

procedure TFActionTypeLevel.FormShow(Sender: TObject);
begin
  inherited;
//
  TempAllData.Close;
  TempAllData.Open;
  //dm.DActionType.dataset. close;
  //dm.DActionType.dataset. open;

    edtParent.Caption       := '-' ;
    edtDescription.Text     := 'ÔÑ˜Ê' ;
    edtOrder.Text           := '0' ;
    DBActionType.KeyValue   := 0 ;

end;

procedure TFActionTypeLevel.FormCreate(Sender: TObject);
var
  c: ^integer;
begin
  inherited;
  BidiModeToRight(ActionTypeLevelTree);
  PageControl.ActivePageIndex:=0;

  New(c);
  c^:= 0;
  ActionTypeLevelTree.Items.AddChildObject(nil,'ÔÑ˜Ê',c);
 // ActionTypeLevelTree.Items.AddChildObject(nil,Exec_get_LevelTitleByID(1),c);
  addchildlevel0(ActionTypeLevelTree.Items[0]);

end;

procedure TFActionTypeLevel.ActionTypeAfterScroll(DataSet: TDataSet);
begin
  inherited;
//
end;

procedure TFActionTypeLevel.ActionTypeLevelTreeChanging(Sender: TObject;
  Node: TTreeNode; var AllowChange: Boolean);
var
  aPointer:^integer;
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;
  {
  aPointer    := ActionTypeLevelTree.Selected.Data;
  SelectedId  := integer(ActionTypeLevelTree.Selected.Data^); //aPointer^;


 // Exec_get_FromOrganizationsTitle_byID(SelectedId,title,respon,Code);


  TempAllData.Locate('Id',SelectedId,[]) ;

  (*
  Select_FollowUP_By_Organization.Close;
  if  TempAllDataLevel.AsInteger = 2 then
  begin
    Select_FollowUP_By_Organization.Parameters.ParamByName('@OrgID').Value  := TempAllDatapparentId.AsInteger ;
    Select_FollowUP_By_Organization.Open;
  end;
  *)

  edtParent.Caption       := TempAllDataparentDescription.AsString ;
  edtDescription.Text  := TempAllDataDescription.AsString ;
  edtOrder.Text        := TempAllDataOrderId.AsString ;
  DBActionType.KeyValue := TempAllDataChildID.AsInteger;
  }
end;

procedure TFActionTypeLevel.ActionTypeLevelTreeDblClick(Sender: TObject);
var
  SelectedId : integer;
begin
  inherited;
  {
  if not OrganizeMode then
  begin
   close;
   done:=true;
  end
  else
  begin
    SelectedId := integer(ActionTypeLevelTree.Selected.Data^);
    FromOrgDialogF:=TFromOrgDialogF.Create(Application);
    with FromOrgDialogF.Fromorg do
    begin
      Close;
      Parameters.ParamByName('id').Value:=selectedid;
      Open;
    end;
    FromOrgDialogF.ShowModal;

    dm.FromOrganizations.Locate('id',SelectedId,[]);
  end;
  }
end;

procedure TFActionTypeLevel.BBCancelClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFActionTypeLevel.BBOKClick(Sender: TObject);
var
  Selectedid :integer;
begin
  inherited;
  try
    SelectedId := integer(ActionTypeLevelTree.Selected.Data^);
    if Trim(edtOrder.Text) = '' then
      edtOrder.Text := '1' ;

    if (SelectedId>0) and  (TempAllDataLevel.AsInteger = 1) then
    begin
      if (DBActionType.KeyValue  = null) or (DBActionType.KeyValue = 0) then
      begin
        ShowMyMessage('íÛÇã','áØÝÇ ÇÞÏÇãÇÊ ãÑÊÈØ ÇäÊÎÇÈ äãÇííÏ',[mbOK],mtInformation);
        Exit;
      end;

      edtDescription.Text := DBActionType.KeyField ;
    end;

    if Trim(edtDescription.Text) = '' then
    begin
      ShowMyMessage('íÛÇã','áØÝÇ ÚäæÇä æÇÏ äãÇííÏ',[mbOK],mtInformation);
      Exit;
    end;

    if (SelectedId>0) then
    begin
      dm.YeganehConnection.Execute(' Insert into [dbo].[ActionType_Level] ([ParentID],[ChildID],[OrderId],[Description],[Level],[Type]) '+
      ' select '+IntToStr(Selectedid)+','+ inttostr(DBActionType.KeyValue) +','+Trim(edtOrder.Text)+','''+
       Trim(edtDescription.Text)+''','+ inttostr(TempAllDataLevel.asInteger + 1)+','+ inttostr(TempAllDataType.asInteger + 1) );
    end
    else
    begin
      dm.YeganehConnection.Execute(' Insert into [dbo].[ActionType_Level] ([ParentID],[ChildID],[OrderId],[Description],[Level],[Type]) '+
                                   ' select 0,0,(select isnull(max(OrderId),0)+1 from [dbo].[ActionType_Level] where ParentID = 0 ),'''+Trim(edtDescription.Text)+''',0,1' );
    end;

  finally
    PageControl.Enabled := True;
    deleteBtn.Enabled   := True;
    BBInsert.Enabled    := True;

    //Close;
  end;
end;

procedure TFActionTypeLevel.ActionTypeLevelTreeGetImageIndex(
  Sender: TObject; Node: TTreeNode);
begin
  inherited;
  node.ImageIndex:=32;
end;

procedure TFActionTypeLevel.addchildlevel0(Node: TTreeNode);
var
  c,d:^integer;
  newnode :TTREENODE;
  TempS:String;
  ADODataSet1: TADODataSet;
begin
  node.DeleteChildren;
  d:=node.Data;

  ADODataSet1 := TADODataSet.Create(self);
  ADODataSet1.Connection := Dm.YeganehConnection ;
  with ADODataSet1 do
  begin
    Close;
    c:=Node.Data;
    CommandText:= 'Select   ID, Description from dbo.ActionType_Level '+
                  'where  ParentID = '+IntToStr(c^) ;

    CommandText:= CommandText+' order by ParentID,OrderId   ';


    Open;
    first;
    while not eof do
    begin
      New(c);
      c^:= FieldByName('id').AsInteger;
      TempS:= FieldByName('Description').AsString;
      newnode:= ActionTypeLevelTree.Items.AddChildObject(node,TempS,c);
      if Exec_Level_hasChild(FieldByName('id').AsInteger) then
      begin
        ActionTypeLevelTree.Items.AddChild(newnode,'');
        addchildlevel1(newnode);
      end;
      next;
    end;
  end;
  FreeAndNil(ADODataSet1);
end;

procedure TFActionTypeLevel.addchildlevel1(Node: TTreeNode);
var
  c,d:^integer;
  newnode :TTREENODE;
  TempS:String;
  ADODataSet1: TADODataSet;
begin
  node.DeleteChildren;
  d:= node.Data;

  ADODataSet1 := TADODataSet.Create(self);
  ADODataSet1.Connection := Dm.YeganehConnection ;
  with ADODataSet1 do
  begin
    Close;
    c:=Node.Data;
    CommandText:= 'Select   ID, Description from dbo.ActionType_Level '+
                  'where  ParentID = '+IntToStr(c^) ;

    CommandText:= CommandText+' order by ParentID,OrderId   ';


    Open;
    first;
    while not eof do
    begin
      New(c);
      c^:= FieldByName('id').AsInteger;
      TempS:= FieldByName('Description').AsString;
      newnode:= ActionTypeLevelTree.Items.AddChildObject(node,TempS,c);
      if Exec_Level_hasChild(FieldByName('id').AsInteger) then
      begin
        ActionTypeLevelTree.Items.AddChild(newnode,'');
        addchildlevel2(newnode);
      end;
      next;
    end;
  end;
  FreeAndNil(ADODataSet1);
end;

procedure TFActionTypeLevel.addchildlevel2(Node: TTreeNode);
var
  c,d:^integer;
  newnode :TTREENODE;
  TempS:String;
  ADODataSet1: TADODataSet;
begin
  node.DeleteChildren;
  d:= node.Data;

  ADODataSet1 := TADODataSet.Create(self);
  ADODataSet1.Connection := Dm.YeganehConnection ;
  with ADODataSet1 do
  begin
    Close;
    c:=Node.Data;
    CommandText:= 'Select   atl.ID, ac.ActionTypeTitle Description from dbo.ActionType_Level atl '+
                  ' left join [dbo].[ActionType] ac  on atl.ChildID = ac.ActionTypeID  '+
                  'where  atl.ParentID = '+IntToStr(c^) ;

    CommandText:= CommandText+' order by atl.ParentID,atl.OrderId   ';


    Open;
    first;
    while not eof do
    begin
      New(c);
      c^:= FieldByName('id').AsInteger;
      TempS:= FieldByName('Description').AsString;
      newnode:= ActionTypeLevelTree.Items.AddChildObject(node,TempS,c);
      if Exec_Level_hasChild(FieldByName('id').AsInteger) then
      begin
        ActionTypeLevelTree.Items.AddChild(newnode,'');
      end;
      next;
    end;
  end;
  FreeAndNil(ADODataSet1);
end;

function TFActionTypeLevel.Exec_get_LevelTitleByID(d: integer): widestring;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:= TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_LevelDescriptionByID';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ID';
    value:=d;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftWideString;
    Direction := pdInputOutput;
    size:=255;
    Name:='@Description';
  end;
  ADOSP.Connection:= dm.YeganehConnection;
  ADOSP.ExecProc;
  result:= ADOSP.Parameters.ParamByName('@Description').Value;
  FreeAndNil(ADOSP);
end;

function TFActionTypeLevel.Exec_Level_hasChild(ParentID: integer): boolean;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:= TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_Level_hasChild';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ParentID';
    Value :=ParentID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftboolean;
    Direction := pdoutput;
    Name:='@hasChild';
  end;

  ADOSP.Connection:= dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:= ADOSP.Parameters.ParamByName('@hasChild').Value;
  FreeAndNil(ADOSP);
end;


procedure TFActionTypeLevel.AdeleteExecute(Sender: TObject);
var
  Selectedid :integer;
begin
  inherited;
  SelectedId := integer(ActionTypeLevelTree.Selected.Data^);

  if SelectedId<=5 then
  begin
    ShowMyMessage('íÛÇã','ÇØáÇÚÇÊ Çíå ãí ÈÇÔÏ æ ÞÇÈá ÍÐÝ äíÓÊ',[mbOK],mtInformation);
    exit;
  end;

  if ActionTypeLevelTree.Selected.HasChildren then
     ShowMyMessage('íÛÇã','áØÝÇ ÇÈÊÏÇ ÒíÑãÌãæÚå åÇ Ñæ ÍÐÝ ˜äíÏ',[mbOK],mtInformation)
  else
  begin
      if messageShowString(' ÂíÇ ÇÒ ÍÐÝ'+' '+ActionTypeLevelTree.Selected.Text+' '+' ãØãÚä åÓÊíÏ ',true)then
      begin
        dm.YeganehConnection.Execute('delete from dbo.ActionType_Level where id='+IntToStr(Selectedid));

        ActionTypeLevelTree.Items.Delete(ActionTypeLevelTree.Selected);
      end;
  end;
end;

procedure TFActionTypeLevel.deleteBtnClick(Sender: TObject);
var
  Selectedid :integer;
begin
  inherited;
  PageControl.Enabled := False;
  BBInsert.Enabled    := False;

  SelectedId := integer(ActionTypeLevelTree.Selected.Data^);

  if SelectedId<=5 then
  begin
    PageControl.Enabled := True;
    BBInsert.Enabled    := True;
    exit;
  end ;

  if ActionTypeLevelTree.Selected.HasChildren then
     ShowMyMessage('íÛÇã','áØÝÇ ÇÈÊÏÇ ÒíÑãÌãæÚå åÇ Ñæ ÍÐÝ ˜äíÏ',[mbOK],mtInformation)
  else
  begin
      if messageShowString(' ÂíÇ ÇÒ ÍÐÝ'+' "'+ActionTypeLevelTree.Selected.Text+'" '+' ãØãÚä åÓÊíÏ ',true)then
      begin
        dm.YeganehConnection.Execute('delete from dbo.ActionType_Level where id='+IntToStr(Selectedid));

        ActionTypeLevelTree.Items.Delete(ActionTypeLevelTree.Selected);
      end;
  end;
  PageControl.Enabled := True;
  BBInsert.Enabled    := True;
end;

function TFActionTypeLevel.Exec_insert_ToLevel(  Description: widestring;ParentID: integer;ChildID : Integer; OrderId : Integer; Level : Integer ; aType : Integer): integer;
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_ActionType_Level';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@Description';
    size:= 200;
    Value := Description;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ParentID';
    Value := ParentID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@ChildID';
    Value := ChildID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@OrderId';
    Value := OrderId;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Level';
    Value := Level;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@Type';
    Value := aType;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdoutput;
    Name:='@id';
  end;

  ADOSP.Connection := dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:= ADOSP.Parameters.ParamByname('@id').value;
  FreeAndNil(ADOSP);
end;

procedure TFActionTypeLevel.BBInsertClick(Sender: TObject);
var
  SelectedId:integer;
begin
  inherited;
  PageControl.Enabled := False;
  deleteBtn.Enabled := False;
  SelectedId  := integer(ActionTypeLevelTree.Selected.Data^);
  if SelectedId >0 then
  begin
    TempAllData.Locate('Id',SelectedId,[]) ;
    edtParent.Caption       := TempAllDataDescription.AsString  ;
  end
  else
  begin
    edtParent.Caption       := 'ÔÑ˜Ê' ;
  end;


  edtDescription.Text     := '' ;
  edtOrder.Text           := '1' ;
  DBActionType.KeyValue   := 0 ;


  Dm.ActionType.Filtered := False;
  if (SelectedId >0) and (TempAllDataLevel.AsInteger = 1) then
  begin
    edtDescription.Enabled := False ;
    
    if  TempAllDataparentId.AsInteger in [1,2] then
     Dm.ActionType.Filter := ' UserTypeId = 1 '
    else if  TempAllDataparentId.AsInteger in [3] then
     Dm.ActionType.Filter := ' UserTypeId = 2 '
    else Dm.ActionType.Filter := ' UserTypeId = 0 '  ;
  end
  else  Dm.ActionType.Filter := ' UserTypeId = 0 '  ;

  Dm.ActionType.Filtered := True;

end;

procedure TFActionTypeLevel.ActionTypeLevelTreeChange(Sender: TObject;
  Node: TTreeNode);
var
  aPointer:^integer;
  SelectedId:integer;
  title,respon,Code:widestring;
begin
  inherited;
  aPointer    := ActionTypeLevelTree.Selected.Data;
  SelectedId  := integer(ActionTypeLevelTree.Selected.Data^); //aPointer^;


 // Exec_get_FromOrganizationsTitle_byID(SelectedId,title,respon,Code);


  TempAllData.Locate('Id',SelectedId,[]) ;

  (*
  Select_FollowUP_By_Organization.Close;
  if  TempAllDataLevel.AsInteger = 2 then
  begin
    Select_FollowUP_By_Organization.Parameters.ParamByName('@OrgID').Value  := TempAllDatapparentId.AsInteger ;
    Select_FollowUP_By_Organization.Open;
  end;
  *)
  Dm.ActionType.Filtered := False;
  if  TempAllDataLevel.AsInteger = 2 then
  begin
    if  TempAllDatapparentId.AsInteger in [1,2] then
     Dm.ActionType.Filter := ' UserTypeId = 1 '
    else if  TempAllDatapparentId.AsInteger in [3] then
     Dm.ActionType.Filter := ' UserTypeId = 2 '
    else Dm.ActionType.Filter := ' UserTypeId = 0 '  ;
  end
  else  Dm.ActionType.Filter := ' UserTypeId = 0 '  ;

  Dm.ActionType.Filtered := True;

  if SelectedId = 0 then
  begin
    edtParent.Caption       := '-' ;
    edtDescription.Text     := 'ÔÑ˜Ê' ;
    edtOrder.Text           := '0' ;
    DBActionType.KeyValue   := 0 ;
  end
  else
  begin
    edtParent.Caption       := TempAllDataparentDescription.AsString ;
    edtDescription.Text     := TempAllDataDescription.AsString ;
    edtOrder.Text           := TempAllDataOrderId.AsString ;
    DBActionType.KeyValue   := TempAllDataChildID.AsInteger;
  end
end;

procedure TFActionTypeLevel.Button1Click(Sender: TObject);
begin
  inherited;
  DBActionType.KeyValue := null;
end;

end.
