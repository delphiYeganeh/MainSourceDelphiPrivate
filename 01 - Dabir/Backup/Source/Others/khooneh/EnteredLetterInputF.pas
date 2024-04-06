unit EnteredLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, xpBitBtn;


type
  TReceivedLetterInputForm= class(TMBaseForm)
    select_Letter: TADOStoredProc;
    select_LetterUrgencyTitle: TWideStringField;
    select_LetterClassificationTitle: TWideStringField;
    select_LetterReciveTypeTitle: TWideStringField;
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
    select_LetterFromOrgtitle: TWideStringField;
    select_LetterFromResponsibleStafferTitle: TWideStringField;
    select_LetterFromStaffer: TWideStringField;
    select_LetterUserTitle: TWideStringField;
    select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    FormData: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    mainPanel: TPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    SpeedButton1: TSpeedButton;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    edit_FromOrgID: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEditToStaffer: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit16: TDBEdit;
    ToOrgTitleEdit: TEdit;
    NoPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    DBShamsiDateEdit: TDBShamsiDateEdit;
    attachs: TYCheckGroupBox;
    Label20: TLabel;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Properties: TYCheckGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton12: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBEdit17: TDBEdit;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    CenterSec: TYCheckGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    SpeedButton11: TSpeedButton;
    BitBtn1: TSpeedButton;
    SpeedButton110: TSpeedButton;
    ActionToolBar1: TActionToolBar;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Aenter: TAction;
    select_LetterUserTableID: TIntegerField;
    GroupBox4: TGroupBox;
    DBMemo2: TDBMemo;
    select_LetterUserTableTitle: TStringField;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    select_LetterSubjectTitle: TStringField;
    select_LetterSubjectID: TIntegerField;
    xpBitBtn1: TxpBitBtn;
    AmakeRecommite: TAction;
    DBGToORG: TYDBGrid;
    Formdata2: TxpTabSheet;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    select_LetterUserTableID2: TIntegerField;
    select_LetterUserTableTitle2: TStringField;
    Label18: TLabel;
    DBEdit9: TDBShamsiDateEdit;
    select_LetterDeadLineDate: TStringField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetLetter(LetterID:integer);
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure select_LetterBeforePost(DataSet: TDataSet);
    procedure AArecommiteExecute(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure UpdateDblookup(all:Boolean);
    procedure DataSetEditExecute(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToOrgTitleEditChange(Sender: TObject);
    procedure ToOrgTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    procedure GetID(IsFrom:boolean);
    procedure DBMemo2Exit(Sender: TObject);
    procedure edit_FromOrgIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure SpeedButton110Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure AmakeRecommiteExecute(Sender: TObject);
    procedure Formdata2Show(Sender: TObject);
  private
    { Private declarations }
  public
    LetterFormat:byte;
   { Public declarations }
  end;

var
  ReceivedLetterInputForm: TReceivedLetterInputForm;

implementation

uses  YShamsiDate, FromOrgU,  FixedTableF, QuickSearch, UMain,
  ReCommiteU, ExitedLetterInputF,  Dmu,
   FromOrgDialog, DuplicateNo, ReCommitedialog, ExactCopy,
   ScanImageU,   ScanImageU1,   businessLayer, Math, ExportToWord,
  UaddLetterData, UUserTable_Input, UBrowsArchive;

{$R *.dfm}
procedure TReceivedLetterInputForm.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 MainForm.ShowFixTables;
end;
procedure TReceivedLetterInputForm.UpdateDblookup(all:Boolean);
begin
  inherited;
 ToOrgTitleEdit.OnChange:=nil;
 ToOrgTitleEdit.Text:=select_LettersenderTitle.AsString;
 ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
 if all then
   select_LetterTostaffer.AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
   edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
end;

procedure TReceivedLetterInputForm.FormActivate(Sender: TObject);
var temp:TWinControl;
begin
  inherited;
with dm do
 begin
   temp:=ActiveControl;

with  Properties.YCheckBox do
 begin
  Checked:=GetValue(1004);
  Checked:=not Checked;Checked:=not Checked;
 end;
with attachs.YCheckBox do
 begin
  Checked:=GetValue(1005);
  Checked:=not Checked;Checked:=not Checked;
 end;
with UserMemo.YCheckBox do
 begin
  Checked:=GetValue(1006);
  Checked:=not Checked;Checked:=not Checked; {for refreshing  }
 end;
with CenterSec.YCheckBox do
 begin
  Checked:=GetValue(1107);
  Checked:=not Checked;Checked:=not Checked; {for refreshing}
 end;
 ActiveControl:=temp;
 mainPanel.Color:=GetValue(1007);
 UpdateDblookup(false);
end;
end;

procedure TReceivedLetterInputForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
with dm do
 begin
 SetValue(1004,properties.YCheckBox.Checked);
 SetValue(1005,attachs.YCheckBox.Checked);
 SetValue(1006,UserMemo.YCheckBox.Checked);
 SetValue(1107,CenterSec.YCheckBox.Checked);
end;
 if not DataSetEdit.Enabled and DataSetEdit.Visible and (select_Letter.LockType<>ltReadOnly )then
    if messageShow(27,true) then
      DataSetPost.Execute
     else DataSetCancel.Execute;
end;

procedure TReceivedLetterInputForm.GetLetter(LetterID: integer);
begin
  inherited;
with select_Letter do
 begin
  close;
  Parameters.ParamByName('@LetterID').Value:=LetterID;
  open;
  if Recordcount>0 then
   LetterFormat:=select_Letterletterformat.AsInteger;
 end;
end;

procedure TReceivedLetterInputForm.DBLookupComboBox2KeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(true);
end;

procedure TReceivedLetterInputForm.Action11Execute(Sender: TObject);
begin
  inherited;
close;
end;

procedure TReceivedLetterInputForm.DBEdit3Exit(Sender: TObject);
 var sameLetterID:integer;
begin
  inherited;
if DSForm.DataSet.State=dsInsert then
if trim(TDBEdit(Sender).Text)<>'' then
 begin
   sameLetterID:=Exec_get_LetterID_ByInCommingNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
   if (sameLetterID<>0) and (select_LetterLetterID.AsInteger<>sameLetterID) then
     begin
      FDuplicate:=TFDuplicate.Create(Application);
      FDuplicate.Letterid:=sameLetterID;
      FDuplicate.ShowModal;
     end;
 end
 else
 begin
  ShowMsg(69);
  TDBEdit(sender).SetFocus;
 end;
TEditExit(Sender);
end;

procedure TReceivedLetterInputForm.DBMemo2Enter(Sender: TObject);
 var s: string;
begin
  inherited;
if not DataSetEdit.Enabled then
 if TDBMemo(sender).Text='' then
  begin
   s:=dm.GetMemoFollow(true,select_LetterFollowLetterNo.AsString,select_LetterRetroactionNo.AsString);
   if s<>'' then
    select_LetterMemo.AsString:=s;
  end;
TDBMemo(Sender).SelectAll;
TEditEnter(Sender);
AEnter.Enabled:=false;
end;

procedure TReceivedLetterInputForm.DBShamsiDateEditEnter(Sender: TObject);
begin
  inherited;
TCustomEdit(sender).SelStart:=8;
TCustomEdit(sender).SelLength:=2;
TEditEnter(Sender);
end;

procedure TReceivedLetterInputForm.AenterExecute(Sender: TObject);
begin
  inherited;
if not DataSetEdit.Enabled then
  if DBGToORG.Focused then
   begin
    ToOrgTitleEdit.SetFocus;
    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
   end else
   SelectNext(ActiveControl,true,true);
end;

procedure TReceivedLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 if not DataSetEdit.Enabled then
   begin
               ShowMsg(63);
    exit;
   end;
    try DBEdit3.SetFocus except end;
  with dm,DSForm.DataSet do
   begin
    insert;
    FieldByName('RegistrationDate').Value:=today;
    FieldByName('RegistrationTime').Value:=Exec_get_NowTime;
    FieldByName('IndicatorID').Value     :=LastIndicatorID(1,LetterFormat);
    FieldByName('ClassificationID').Value:=DefaultRClassificationID;
    FieldByName('UrgencyID').Value       :=DefaultRUrgencyID    ;
    FieldByName('NumberOfPage').Value    :=DefaultRNumberOfPage ;
    FieldByName('ReceiveTypeID').Value   :=DefaultRReceiveTypeID;
    FieldByName('incommingdate').Value   :=FieldByName('RegistrationDate').AsString;
    FieldByName('FromOrgID').AsInteger   :=DefaultRFromOrgId;
    FieldByName('MYear').AsInteger       :=CurrentMYear;
    FieldByName('LetterFormat').AsInteger:=LetterFormat;
    FieldByName('Secretariatid').AsInteger:=Dm.SecId;
    FieldByName('Userid').AsInteger:=_userid;
    FieldByName('letter_type').AsInteger:=1;
    ToOrgTitleEdit.Text:='' ;
  end;
end;

procedure TReceivedLetterInputForm.select_LetterBeforePost(
  DataSet: TDataSet);
begin
  inherited;
with DataSet do
 if state=dsinsert  then
     FieldByName('IndicatorID').Value:=dm.LastIndicatorID(1,LetterFormat);
select_LetterLastUpdate.Value:=now;
end;

procedure TReceivedLetterInputForm.AArecommiteExecute(Sender: TObject);
begin
  inherited;
 MainForm.Arecommite.Execute;
end;

procedure TReceivedLetterInputForm.GetID(IsFrom:boolean);
begin
  inherited;
if not DataSetEdit.Enabled then
begin
   FromOrgForm:=TFromOrgForm.Create(Application);
   if IsFrom then
    FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.OrganizeMode:=false;
   
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    if ISFrom then
      begin
       select_LetterFromOrgID.AsInteger:=_ResultOrgID;
       edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
       select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;

      end
    else
      begin
       DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=_ResultOrgID;
       ToOrgTitleEdit.OnChange:=nil;
       ToOrgTitleEdit.Text:=_ResultOrgTitle;
       ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
       DSForm.DataSet.FieldByName('Tostaffer').AsString:=_ResultOrgRespon;
      end;
end
else
  MainForm.FromOrgOrganize
end;
procedure TReceivedLetterInputForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetID(true);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var s:string;
begin
  inherited;
s:=YeganehTrim(ToOrgTitleEdit.Text);

if not DataSetEdit.Enabled then
 if is_integer(ToOrgTitleEdit.Text) then
 with dm,Toorganizations do
  begin
    Close;
    CommandText:='Select *,cast(0 as bit) as isSecretariat from Fromorganizations '+
    ' where code='''+s+'''';
    open;
    if recordcount=0 then
      ShowMsg(64)
     else
    begin
     select_LetterToorgid.AsInteger:=ToorganizationsID.AsInteger;
     ToOrgTitleEdit.OnChange:=nil;
     ToOrgTitleEdit.Text:=ToorganizationsTitle.AsString;
     ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
     select_LetterTostaffer.AsString:= ToorganizationsResponsibleStaffer.AsString;
     DBEdit2.SetFocus;
    end;
  end;

if not DBGToORG.Focused then
 DBGToORG.Hide;
end;

procedure TReceivedLetterInputForm.DataSetPostExecute(Sender: TObject);
 var IsInsert: boolean;
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

   dm.FromOrganizations.Locate('Code',edit_FromOrgID.Text,[]);
   select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;

  IsInsert:=false;
 with DSForm.DataSet do
  begin
    if state=dsinsert  then
      begin
       FieldByName('IndicatorID').Value:=dm.LastIndicatorID(1,LetterFormat);
       IsInsert:=true;
      end;
      FieldByName('ToOrgID').AsInteger:=dm.NewToOrganization(ToOrgTitleEdit.text,DBEditToStaffer.Text);
     Post;
      if IsInsert then
        MakeRecommite(LetterFormat,1, FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);
  end;
  GetLetter(select_LetterLetterID.AsInteger);
try Exec_insert_UserLog(3004,select_LetterLetterID.AsInteger); except end;

end;

procedure TReceivedLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 DSForm.DataSet.Cancel;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.First;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.DataSetEditExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 DSForm.DataSet.Edit;
 UpdateDblookup(false);
end;

procedure TReceivedLetterInputForm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
GetID(false);
end;

procedure TReceivedLetterInputForm.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditChange(Sender: TObject);
var s,t:string;
begin
  inherited;
 if DataSetEdit.Enabled then
   exit;


s:=Replace(YeganehTrim(ToOrgTitleEdit.Text),char(152),'yy');
S:=Replace(s,'ß','yy');
 if is_integer(s) then
   t:='ID'
 else
   t:=' replace(replace(title,char(152),''yy''),''ß'',''yy'')';

 with dm.Toorganizations do
 if length(s)>=2  then
  begin
    Close;
    CommandText:='Select *,cast(0 as bit) isSecretariat from Fromorganizations '+
    ' where '+t+' like '''+s+'%''';       
    DBGToORG.Show;
    open;
  end;

end;

procedure TReceivedLetterInputForm.ToOrgTitleEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if not DataSetEdit.Enabled then
if (key=vk_down) or (key=vk_up) then
 begin
   if ssalt in shift then
     DBGToORG.Visible:=not DBGToORG.Visible
    else
    DBGToORG.SetFocus;
 end;
end;

procedure TReceivedLetterInputForm.DBGToORGCellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.Toorganizations.FIELDBYNAME('ResponsibleStaffer').AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
  end;
end;

procedure TReceivedLetterInputForm.DBMemo2Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
AEnter.Enabled:=true;


end;

procedure TReceivedLetterInputForm.edit_FromOrgIDExit(Sender: TObject);
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

procedure TReceivedLetterInputForm.FormCreate(Sender: TObject);

begin
  inherited;
  if MainForm.LockOldYear.Enabled then
  if _year<>dm.CurrentMyear then
    select_Letter.LockType:=ltReadOnly;

  LetterFormat:=1;
 UserMemo.Caption:='   '+dm.UserMem;
 UserField.Caption:=dm.UserMem;
if dm.MemoFont<>nil then
  begin
   DBMemo2.Font:=dm.MemoFont;
   DBEdit3.Font:=dm.MemoFont;
   if dm.MemoFont.Size>10 then
     begin
       NoPanel.Top:=7;
       NoPanel.Height:=40;
     end;
  end;
end;

procedure TReceivedLetterInputForm.SpeedButton12Click(Sender: TObject);
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
               ShowMsg(67);
    exit;
   end;
 ExactCopyF:=TExactCopyF.Create(Application);
 ExactCopyF.LetterID:=select_LetterLetterID.AsInteger;
 ExactCopyF.TypeId:=1;
 ExactCopyF.ShowModal;

end;

procedure TReceivedLetterInputForm.SpeedButton11Click(Sender: TObject);
 var extiontion : byte;
begin
  inherited;
with DSForm.DataSet do
 if not DataSetEdit.Enabled then
   begin
    DataSetPost.Execute;
//    ShowMsg(67);    exit;
   end;


extiontion:=Exec_Get_LetterdataExtention(select_LetterLetterID.AsInteger);

if (extiontion=1) or ((extiontion=0) and  dm.HasJpg) then
 begin
 ScanImageF:=TScanImageF.Create(Application);
 with ScanImageF do
  begin
   LetterID:=select_LetterLetterID.AsInteger;
   ShowModal;
  end;
 end
else
begin
 TifImageF:=TTifImageF.Create(Application);
 with TifImageF do
  begin
   LetterID:=select_LetterLetterID.AsInteger;
   ShowModal;
  end;
end;

try Exec_insert_UserLog(1021,select_LetterLetterID.AsInteger); except end;

end;

procedure TReceivedLetterInputForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  GetID(False);
end;

procedure TReceivedLetterInputForm.DBGToORGNeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if dm.ToorganizationsIsInnerOrg.AsBoolean then
    Color:=$00FFE6FF
   else
    Color:=$00FFD3A8;
end;

procedure TReceivedLetterInputForm.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
   edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
   select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
    
end;

procedure TReceivedLetterInputForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
     DataSetPost.Execute;
     //ShowMsg(67);    exit;
   end;
   
    if _Word_Is_Opened then
     if Application_Is_Run('winword.exe') then
      begin
        messageShow(86,FALSE) ;
       exit;
      end;
      

 with select_Letter do
if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,not _AllowToEditWordFiles) then
 begin
  FExportToWord:=TFExportToWord.Create(Application);
   with FExportToWord do
    begin
     Letterid:=FieldByName('Letterid').AsInteger;
     LetterFormat:=FieldByName('LetterFormat').AsInteger;
     if not dm.Use_Template then
      begin
        Show;
        OpenFileClick(OpenFile);
      end
     else
      ShowModal;
   end;
end;
try Exec_insert_UserLog(1024,select_LetterLetterID.AsInteger); except end;


end;

procedure TReceivedLetterInputForm.ActionManagerExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
if action.tag<>4 then
  try Exec_insert_UserLog(3000+Action.Tag,select_LetterLetterID.AsInteger); except end;
end;

procedure TReceivedLetterInputForm.SpeedButton110Click(Sender: TObject);
begin
  inherited;
with DSForm.DataSet do
 begin
 if not DataSetEdit.Enabled then
   begin
               ShowMsg(67);
    exit;
   end;
FraddLetterData:=TFraddLetterData.Create(Application);
FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
FraddLetterData.ShowModal;
 end;
end;

procedure TReceivedLetterInputForm.SpeedButton4Click(Sender: TObject);
var LetterID:integer;
    rr          :Boolean;
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
    ShowMsg(67);
    exit;
   end;

if dm.GetFollowAndRetRoAction(true,(select_LetterLetter_Type.AsInteger=1),select_LetterFollowLetterNo.asstring,LetterID,rr) then
begin
 if RR then
  MainForm.ViewReceivedLetter(LetterID)
 else
  MainForm.ViewSentLetter(LetterID);
end else ShowMsg(3);

end;

procedure TReceivedLetterInputForm.SpeedButton1Click(Sender: TObject);
var LetterID:integer;
    rr          :Boolean;
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
    ShowMsg(67);
    exit;
   end;
if dm.GetFollowAndRetRoAction(false,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring,LetterID,rr) then
begin
 if RR then
  MainForm.ViewReceivedLetter(LetterID)
 else
  MainForm.ViewSentLetter(LetterID);
end else ShowMsg(3);

end;


procedure TReceivedLetterInputForm.FormDataShow(Sender: TObject);
begin
  inherited;
FrUserTable_Input:= TFrUserTable_Input.Create(Application);
FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
FrUserTable_Input.FormOrder:=1;
FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TReceivedLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
if trim(select_LetterUserMemo.Text)='' then exit;
FrBrowsArchive:=TFrBrowsArchive.Create(Application);
FrBrowsArchive.UserMemo.Text:=select_LetterUserMemo.Text;
FrBrowsArchive.RefreshQuery;
FrBrowsArchive.ShowModal;
end;

procedure TReceivedLetterInputForm.AmakeRecommiteExecute(Sender: TObject);
begin
  inherited;
with DSForm.DataSet do
 begin
 if not DataSetEdit.Enabled then
   begin
    ShowMsg(67);
    exit;
   end;
   ReCommite:=TReCommite.Create(Application);
   with ReCommite do
    begin
     LetterID:=select_LetterLetterID.AsInteger;
     ShowModal;
   end;
end;
try Exec_insert_UserLog(1003,select_LetterLetterID.AsInteger); except end;

end;

procedure TReceivedLetterInputForm.Formdata2Show(Sender: TObject);
begin
  inherited;
FrUserTable_Input:= TFrUserTable_Input.Create(Application);
FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
FrUserTable_Input.FormOrder:=2;
FrUserTable_Input.ShowInPanel(FormData2);

end;

end.

