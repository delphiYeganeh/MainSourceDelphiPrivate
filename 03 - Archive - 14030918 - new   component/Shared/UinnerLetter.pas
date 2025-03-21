unit UinnerLetter;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages;

type
  TFinnerLetter = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetDelete: TDataSetDelete;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action13: TAction;
    AEnter: TAction;
    select_Letter: TADOStoredProc;
    select_LetterUrgencyTitle: TWideStringField;
    select_LetterClassificationTitle: TWideStringField;
    select_LetterReciveTypeTitle: TWideStringField;
    select_LetterResponsibleStafferTitle: TWideStringField;
    select_LetterFormOgrTitle: TWideStringField;
    select_LetterSignertitle: TWideStringField;
    select_LetterLetterID: TAutoIncField;
    select_LetterIndicatorID: TIntegerField;
    select_LetterMYear: TWordField;
    select_LetterSecretariatID: TWordField;
    select_LetterLetter_Type: TWordField;
    select_Letterletterformat: TWordField;
    select_LetterIncommingNO: TWideStringField;
    select_LetterIncommingdate: TWideStringField;
    select_LetterCenterNo: TWideStringField;
    select_LetterCenterDate: TStringField;
    select_LetterFromOrgID: TIntegerField;
    select_LetterToOrgID: TIntegerField;
    select_LetterSignerid: TWideStringField;
    select_LetterClassificationID: TWordField;
    select_LetterUrgencyID: TSmallintField;
    select_LetterMemo: TWideStringField;
    select_LetterAttachTitle: TWideStringField;
    select_LetterNumberOfAttachPages: TSmallintField;
    select_LetterNumberOfPage: TWordField;
    select_LetterReceiveTypeID: TWordField;
    select_LetterUserID: TIntegerField;
    select_LetterRetroactionNo: TWideStringField;
    select_LetterUserMemo: TWideStringField;
    select_LetterRegistrationDate: TStringField;
    select_LetterRegistrationTime: TStringField;
    select_LetterFollowLetterNo: TWideStringField;
    select_LetterToStaffer: TWideStringField;
    select_LetterSentLetterID: TIntegerField;
    select_LetterTemplateID: TIntegerField;
    select_LetterHeaderID: TIntegerField;
    select_LettersenderTitle: TWideStringField;
    select_LetterFromStaffer: TWideStringField;
    select_LetterUserTitle: TWideStringField;
    select_LetterToorgTitle: TWideStringField;
    select_LetterSecCode: TStringField;
    select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    FormData: TxpTabSheet;
    MainPanel: TPanel;
    OwnerPanel: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    Image1: TImage;
    FromResponsibleStafferTitle: TDBEdit;
    OwnerCombo: TDBLookupComboBox;
    DBEdit9: TEdit;
    attachs: TYCheckGroupBox;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Button1: TButton;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo2: TDBMemo;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    BitBtn1: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label11: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    select_LetterUserTableID: TIntegerField;
    select_LetterUserTableTitle: TStringField;
    ActionToolBar1: TActionToolBar;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    function GetLetter(LetterID:integer):boolean;
    procedure OwnerComboKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure UpdateDblookup(all : boolean);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure OwnerComboClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure Edit1Exit(Sender: TObject);
    procedure DBLookupComboBox5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure select_LetterBeforePost(DataSet: TDataSet);
    procedure FormDataShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SecID:integer;
  end;

var
  FinnerLetter: TFinnerLetter;

implementation

uses  YShamsiDate, FromOrgU,   QuickSearch, UMain,
    Dmu,   
  ExportToWord, ReCommiteU, ExactCopy, businessLayer, URetroExist,
  UUserTable_Input;
{$R *.dfm}

function TFinnerLetter.GetLetter(LetterID:integer):boolean;
begin
  inherited;
  with select_Letter do
  begin
    close;
    Parameters.ParamByName('@LetterID').Value:=LetterID;
    open;
    Result:=RecordCount<>0;
    if Result then
      secid:=select_LetterSecretariatID.AsInteger;
  end;
end;

procedure TFinnerLetter.FormClose(Sender: TObject;
 var Action: TCloseAction);
begin
  inherited;
  dm.SetValue(1005,attachs.YCheckBox.Checked);
  dm.SetValue(1006,UserMemo.YCheckBox.Checked);
  if not DataSetEdit.Enabled and DataSetEdit.Visible then
    if messageShow(27,true) then
      DataSetPost.Execute
    else DataSetCancel.Execute;

end;

procedure TFinnerLetter.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
  inherited;
  with dm do
  begin
    temp:=ActiveControl;

    with attachs.YCheckBox do
    begin
      Checked:=GetValue(1005);
      Checked:=not Checked;Checked:=not Checked;
    end;

    with UserMemo.YCheckBox do
    begin
      Checked:=GetValue(1006);
      Checked:=not Checked;Checked:=not Checked;
    end;
    ActiveControl:=temp;
    mainPanel.Color:=GetValue(1008);
    UpdateDblookup(False);
  end;
end;

procedure TFinnerLetter.OwnerComboKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not DataSetEdit.Enabled then
    if key=32 then
      if MainForm.GetSearch then
        DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;

procedure TFinnerLetter.Action11Execute(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TFinnerLetter.UpdateDblookup(all: boolean);
begin
  inherited;

  if all then
    DSForm.DataSet.FieldByName('Tostaffer').AsString:=

  dm.ToorganizationsResponsibleStaffer.AsString;

  dbedit9.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TFinnerLetter.AEnterExecute(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
    SelectNext(ActiveControl,true,true);
end;

procedure TFinnerLetter.SetDefualt;
begin
  inherited;
  with dm,DSForm.DataSet do
  begin
    FieldByName('RegistrationDate').Value:=today;
    FieldByName('RegistrationTime').Value:=Exec_get_NowTime;
    FieldByName('ClassificationID').value:=DefaultSClassificationID;
    FieldByName('UrgencyID').value       :=DefaultSUrgencyID    ;
    FieldByName('NumberOfPage').value    :=DefaultSNumberOfPage ;
    FieldByName('receiveTypeID').value   :=DefaultSReceiveTypeID;
    FieldByName('SignerID').AsInteger    :=DefualtSSigner;
  end;
end;

procedure TFinnerLetter.DataSetInsertExecute(Sender: TObject);
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).Tag,TAG) then
    exit;

  if not DataSetEdit.Enabled then
  begin
    ShowMsg(63);
    exit;
  end;

  try
    DBEdit9.SetFocus;
  except
  end;

  with dm,DSForm.DataSet do
  begin
    Insert;
    FieldByName('IndicatorID').Value      :=Exec_get_LastIndicatorID(3,1,dm.CurrentmYear,SecID);
    FieldByName('FromOrgID').AsInteger    :=DefaultSFromOrgId;
    FieldByName('MYear').AsInteger        :=CurrentMYear;
    FieldByName('LetterFormat').AsInteger :=1;
    FieldByName('Secretariatid').AsInteger:=SecID;
    FieldByName('Userid').AsInteger:=_userid;
    FieldByName('Letter_Type').AsInteger:=3;
    SetDefualt;
  end;

end;

procedure TFinnerLetter.DataSetPostExecute(Sender: TObject);
 var IsInsert: boolean;
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).Tag,TAG) then
    exit;

  dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]);
  select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;

  IsInsert:=false;
  with DSForm.DataSet do
  begin
    if state=dsinsert  then
      IsInsert:=true;

    Post;
    if IsInsert then
      MakeRecommite(2,3,FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);

  end;
  GetLetter(select_LetterLetterID.AsInteger);

  try
    Exec_insert_UserLog(2004,select_LetterLetterID.AsInteger);
  except
  end;

end;

procedure TFinnerLetter.DataSetCancelExecute(Sender: TObject);
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).Tag,TAG) then
    exit;

  DSForm.DataSet.Cancel;
  UpdateDblookup(False);
end;

procedure TFinnerLetter.DataSetDeleteExecute(Sender: TObject);
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).Tag,TAG) then
    exit;

  if messageShow(38,True) then
  begin
    Exec_delete_Letter(select_LetterLetterID.AsInteger,Exec_get_LastIndicatorID(3,3,dm.CurrentmYear,SecID));
    GetLetter(0);
    UpdateDblookup(False);
  end;

end;

procedure TFinnerLetter.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
  DSForm.DataSet.First;
  UpdateDblookup(False);
end;

procedure TFinnerLetter.DataSetLastExecute(Sender: TObject);
begin
  inherited;
  DSForm.DataSet.Last;
  UpdateDblookup(False);
end;

procedure TFinnerLetter.DataSetEditExecute(Sender: TObject);
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).Tag,TAG) then
    exit;

  DSForm.DataSet.Edit;
  UpdateDblookup(False);
end;

procedure TFinnerLetter.DBMemo2Enter(Sender: TObject);
 var s: string;
begin
  inherited;
  if not DataSetEdit.Enabled then
    try
      if TDBMemo(sender).Text='' then
      begin
        s:=dm.GetMemoFollow(true,select_LetterFollowLetterNo.AsString,select_LetterRetroactionNo.AsString);
        if s<>'' then
          select_LetterMemo.AsString:=s;
      end;

    except
    end;

  TDBMemo(Sender).SelectAll;
  TEditEnter(Sender);
end;

procedure TFinnerLetter.DBEdit9Exit(Sender: TObject);
begin
  inherited;

  if select_Letter.State in [dsedit,dsinsert] then
  begin
    dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]);
    select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
    select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
  end;

  TEditExit(sender);
end;

procedure TFinnerLetter.DBMemo2Exit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  if trim(TDBMemo(Sender).Text)='' then
  begin
    ShowMsg(66);
    TDBEdit(sender).SetFocus;
  end;
end;

procedure TFinnerLetter.FormCreate(Sender: TObject);
begin
  inherited;
  UserMemo.Caption:='   '+dm.UserMem;
  UserField.Caption:=dm.UserMem;
end;

procedure TFinnerLetter.DBGToORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if dm.ToorganizationsIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
  else
    Color:=$00FFD3A8;
end;

procedure TFinnerLetter.OwnerComboClick(Sender: TObject);
begin
  inherited;
  dbedit9.Text:=dm.FromOrganizationsCode.AsString;
  select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
end;

procedure TFinnerLetter.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.Arecommite.Execute;
end;

procedure TFinnerLetter.ActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
  if action.tag<>4 then
    try
      Exec_insert_UserLog(2000+Action.Tag,select_LetterLetterID.AsInteger);
    except
    end;
end;

procedure TFinnerLetter.Edit1Exit(Sender: TObject);
begin
  inherited;

  if select_Letter.State in [dsedit,dsinsert] then
  begin
    dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]);
    select_LetterToOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
    select_LetterToStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
  end;

  TEditExit(sender);
end;

procedure TFinnerLetter.DBLookupComboBox5KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if not DataSetEdit.Enabled then
    if key=32 then
      if MainForm.GetSearch then
        DSForm.DataSet.FieldByName('toorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;

procedure TFinnerLetter.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.Apicture.Execute;
end;

procedure TFinnerLetter.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.AExpotToWord.Execute;
end;

procedure TFinnerLetter.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.AnewRecommite.Execute;
  close;

  try
    Exec_insert_UserLog(1003,select_LetterLetterID.AsInteger);
  except
  end;

end;

procedure TFinnerLetter.SpeedButton3Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;

  MainForm.AAnswer.Execute;
  close;
end;

procedure TFinnerLetter.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;
  MainForm.ADoCommite.Execute;
  close;
end;

procedure TFinnerLetter.select_LetterBeforePost(DataSet: TDataSet);
begin
  inherited;
  select_LetterLastUpdate.Value:=now;
end;

procedure TFinnerLetter.FormDataShow(Sender: TObject);
begin
  inherited;
  FrUserTable_Input:= TFrUserTable_Input.Create(Application);
  FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
  FrUserTable_Input.ShowInPanel(FormData);
end;

end.
