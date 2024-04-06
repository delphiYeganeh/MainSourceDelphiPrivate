 unit ExitedLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  YCheckGroupBox, DBLookupEdit, YDbgrid, ExtActns, XPStyleActnCtrls,
  xpWindow, xpPages, xpBitBtn;

type
  TSentLetterInputForm = class(TMBaseForm)
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
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
    select_LetterSendStatusID: TWordField;
    select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    FormData: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit23: TDBShamsiDateEdit;
    DBEdit24: TDBEdit;
    DBEdit4: TDBEdit;
    MainPanel: TPanel;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    Label8: TLabel;
    Label10: TLabel;
    Image1: TImage;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton1: TSpeedButton;
    DBEdit9: TEdit;
    FromResponsibleStafferTitle: TDBEdit;
    DBEditToStaffer: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    ToOrgTitleEdit: TEdit;
    Properties: TYCheckGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    SpeedButton6: TSpeedButton;
    Label17: TLabel;
    SpeedButton9: TSpeedButton;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox7: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit3: TEdit;
    DBEdit17: TDBEdit;
    attachs: TYCheckGroupBox;
    Label15: TLabel;
    Label20: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    UserMemo: TYCheckGroupBox;
    UserField: TLabel;
    DBEdit12: TDBEdit;
    GroupBox1: TGroupBox;
    DBMemo2: TDBMemo;
    Panel1: TPanel;
    SpeedButton3: TSpeedButton;
    BitBtn1: TSpeedButton;
    SpeedButton110: TSpeedButton;
    ActionToolBar1: TActionToolBar;
    DBGToORG: TYDBGrid;
    select_LetterUserTableID: TIntegerField;
    select_LetterUserTableTitle: TStringField;
    Label14: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    select_LetterSubjectID: TIntegerField;
    select_LetterSubjectTitle: TStringField;
    xpBitBtn1: TxpBitBtn;
    CenterSec: TYCheckGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton8: TSpeedButton;
    FormData2: TxpTabSheet;
    Label11: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    select_LetterUserTableID2: TIntegerField;
    select_LetterUserTableTitle2: TStringField;
    SpeedButton12: TSpeedButton;
    DBShamsiDateEdit2: TDBShamsiDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    function GetLetter(LetterID:integer):boolean;
    procedure DBLookupComboBox2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure AEnterExecute(Sender: TObject);
    procedure SetDefualt;
    procedure DataSetInsertExecute(Sender: TObject);
    procedure DataSetPostExecute(Sender: TObject);
    procedure UpdateDblookup(all : boolean);
    procedure ToOrgTitleEditExit(Sender: TObject);
    procedure DataSetCancelExecute(Sender: TObject);
    procedure DataSetFirstExecute(Sender: TObject);
    procedure DataSetLastExecute(Sender: TObject);
    procedure DataSetEditExecute(Sender: TObject);
    procedure DBGToORGKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ToOrgTitleEditChange(Sender: TObject);
    procedure ToOrgTitleEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGToORGCellClick(Column: TColumn);
    Procedure GetID(IsFrom:boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBMemo2Enter(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure DBMemo2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBLookupComboBox4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure SpeedButton110Click(Sender: TObject);
    procedure DBGToORGNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure DBGToORGNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure select_LetterBeforePost(DataSet: TDataSet);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormDataShow(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure Panel1Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure FormData2Show(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
  private
    { Private declarations }
  public
   IsAnswer:boolean;
   LetterFormat:Byte;
    { Public declarations }
  end;

var
  SentLetterInputForm: TSentLetterInputForm;

implementation

uses  YShamsiDate, FromOrgU,  FixedTableF, QuickSearch, UMain,
    Dmu,  DuplicateNo, URetroExist,
  ExportToWord, ReCommiteU, ExactCopy, businessLayer, UaddLetterData,
  UUserTable_Input, UBrowsArchive,ScanImageU1,ScanImageU;
{$R *.dfm}



procedure TSentLetterInputForm.GetID(IsFrom:boolean);
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
      DSForm.DataSet.FieldByName('FromOrgID').AsInteger:=_ResultOrgID;
      select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
      dbedit9.Text:=dm.FromOrganizationsCode.AsString;
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


function TSentLetterInputForm.GetLetter(LetterID:integer):boolean;
begin
  inherited;
with select_Letter do
 begin
  close;
  Parameters.ParamByName('@LetterID').Value:=LetterID;
  open;

  Result:=RecordCount<>0;
  if Recordcount>0 then
   LetterFormat:=select_Letterletterformat.AsInteger;


  if LetterFormat>1 then
   begin
     DataSetInsert.Visible:=true;
     DataSetEdit.Visible:=true;
     DataSetPost.Visible:=true;
     DataSetCancel.Visible:=true;

     DataSetInsert.Enabled:=true;
     DataSetEdit.Enabled:=true;
     DataSetPost.Enabled:=true;
     DataSetCancel.Enabled:=true;
   end;
 end;
end;


procedure TSentLetterInputForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
 dm.SetValue(1004,properties.YCheckBox.Checked);
 dm.SetValue(1005,attachs.YCheckBox.Checked);
 dm.SetValue(1006,UserMemo.YCheckBox.Checked);
 if not DataSetEdit.Enabled and DataSetEdit.Visible and (select_Letter.LockType<>ltReadOnly )then
    if messageShow(27,true) then
      DataSetPost.Execute
     else DataSetCancel.Execute;

 end;

procedure TSentLetterInputForm.FormActivate(Sender: TObject);
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
  Checked:=not Checked;Checked:=not Checked;
 end;
 ActiveControl:=temp;
mainPanel.Color:=GetValue(1008);
UpdateDblookup(False);
end;
end;

procedure TSentLetterInputForm.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  GetID( true);
end;

procedure TSentLetterInputForm.DBLookupComboBox2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
if not DataSetEdit.Enabled then
 if key=32 then
    if MainForm.GetSearch then
    DSForm.DataSet.FieldByName('Fromorgid').AsInteger:= dm.FromOrganizationsID.AsInteger;
end;



procedure TSentLetterInputForm.Action11Execute(Sender: TObject);
begin
  inherited;
 close;
end;
procedure TSentLetterInputForm.UpdateDblookup(all: boolean);
begin
  inherited;
 if not ((DSForm.DataSet.State=dsinsert) and IsAnswer) then
  begin
    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=DSForm.DataSet.FieldByName('SenderTitle').AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
  end;
 if all then
   DSForm.DataSet.FieldByName('Tostaffer').AsString:=
   dm.ToorganizationsResponsibleStaffer.AsString;

   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
   dbedit3.Text:=dm.SignersCode.AsString;

end;

procedure TSentLetterInputForm.AEnterExecute(Sender: TObject);
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
procedure TSentLetterInputForm.SetDefualt;
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
procedure TSentLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 if not DataSetEdit.Enabled then
   begin
    ShowMsg(63);
    exit;
   end;
try DBEdit9.SetFocus;    except end;
with dm,DSForm.DataSet do
begin
  Insert;
  FieldByName('IndicatorID').Value     :=LastIndicatorID(2,LetterFormat);
  FieldByName('FromOrgID').AsInteger   :=DefaultSFromOrgId;
  FieldByName('MYear').AsInteger       :=CurrentMYear;
  FieldByName('LetterFormat').AsInteger:=LetterFormat;
  FieldByName('Secretariatid').AsInteger:=dm.SecID;
  FieldByName('Userid').AsInteger:=_userid;
  FieldByName('Letter_Type').AsInteger:=2;
  ToOrgTitleEdit.Text:='' ;
  SetDefualt;
end;

end;

procedure TSentLetterInputForm.DataSetPostExecute(Sender: TObject);
 var IsInsert: boolean;
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

   dm.FromOrganizations.Locate('Code',DBEdit9.Text,[]);
   select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
   
    dm.Signers.Locate('Code',DBEdit3.Text,[]);
   select_LettersignerID.AsInteger:=dm.Signersid.AsInteger;

  IsInsert:=false;
with DSForm.DataSet do
begin
    if state=dsinsert  then
      begin
      if not IsAnswer then
        FieldByName('IndicatorID').Value:=dm.LastIndicatorID(2,LetterFormat)
       else
        Exec_AnswerLetter(FieldByName('IndicatorID').Value,dm.Get_All_LetterLetterID.AsInteger,dm.today);
       IsInsert:=true;
      end;
   FieldByName('ToOrgID').AsInteger:=
         dm.NewToOrganization(ToOrgTitleEdit.text,FieldByName('ToStaffer').asString);
      if _HasReplicate then
       if Exec_Org_is_Secretariat(FieldByName('ToOrgID').AsInteger)  then
          select_LetterSendStatusID.Value:=2;

     Post;
      if IsInsert then
        MakeRecommite(LetterFormat,2,FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);

      if IsAnswer then
        Exec_AnswerLetter(select_LetterLetterID.AsInteger,dm.Get_All_LetterLetterID.AsInteger,dm.today);
  end;
  GetLetter(select_LetterLetterID.AsInteger);
try Exec_insert_UserLog(2004,select_LetterLetterID.AsInteger); except end;

end;

procedure TSentLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var s:string;
begin
  inherited;
s:=YeganehTrim(ToOrgTitleEdit.Text);

if not DataSetEdit.Enabled then
 if is_integer(ToOrgTitleEdit.Text) then
 with dm,Toorganizations do
  begin
    Close;
    CommandText:='Select fromorganizations.*,cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit) isSecretariat '+
    ' from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource '+
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

procedure TSentLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 DSForm.DataSet.Cancel;
 UpdateDblookup(False);
end;

procedure TSentLetterInputForm.DataSetFirstExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.First;
 UpdateDblookup(False);

end;

procedure TSentLetterInputForm.DataSetLastExecute(Sender: TObject);
begin
  inherited;
 DSForm.DataSet.Last;
  UpdateDblookup(False);

end;

procedure TSentLetterInputForm.DataSetEditExecute(Sender: TObject);
begin
  inherited;

IF NOT dm.GetActionAccess(TAction(SENDER).Tag,TAG) THEN exit;

 DSForm.DataSet.Edit;
 UpdateDblookup(False);
end;

procedure TSentLetterInputForm.DBGToORGKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if key=32 then
    GetID(False);

end;

procedure TSentLetterInputForm.ToOrgTitleEditChange(Sender: TObject);
var s,t:string;
begin
  inherited;
 if DataSetEdit.Enabled then
   exit;


s:=Replace(YeganehTrim(ToOrgTitleEdit.Text),char(152),'yy');
S:=Replace(s,'ﬂ','yy');
 if is_integer(s) then
   t:='ID'
 else
   t:=' replace(replace(title,char(152),''yy''),''ﬂ'',''yy'')';

 with dm.toorganizations do
 if length(s)>=2  then
  begin
    Close;
    if _HasReplicate then
     CommandText:='Select fromorganizations.*,cast(case when r.DestinationOrgID_inSource is null then 0 else 1 end as bit) isSecretariat '+
    ' from fromorganizations LEFT JOIN RelatedSecretariats R ON FromOrganizations.ID = R.DestinationOrgID_inSource '+
    ' where  '+t+' like '''+s+'%'''
    else
     CommandText:='Select fromorganizations.*,cast(0 as bit) isSecretariat '+
    ' from fromorganizations  '+
    ' where  '+t+' like '''+s+'%''';

    DBGToORG.Show;
    open;
  end;
end;

procedure TSentLetterInputForm.ToOrgTitleEditKeyDown(Sender: TObject;
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

procedure TSentLetterInputForm.DBGToORGCellClick(Column: TColumn);
begin
  inherited;
 if not DataSetEdit.Enabled then
  begin
     ToOrgTitleEdit.OnChange:=nil;
     ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
     ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.ToorganizationsResponsibleStaffer.AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
  end;

end;

procedure TSentLetterInputForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  GetID(false);
end;

procedure TSentLetterInputForm.DBMemo2Enter(Sender: TObject);
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

except end;   
   TDBMemo(Sender).SelectAll;
TEditEnter(Sender);
AEnter.Enabled:=false;
end;

procedure TSentLetterInputForm.DBEdit9Exit(Sender: TObject);
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

procedure TSentLetterInputForm.DBMemo2Exit(Sender: TObject);
begin
  inherited;
TEditExit(sender);
AEnter.Enabled:=true;

end;

procedure TSentLetterInputForm.DBEdit7Exit(Sender: TObject);
var sameAnswerLetterID:integer;
begin
  inherited;
if DSForm.DataSet.State=dsInsert then
if trim(TDBEdit(Sender).Text)<>'' then
 begin
   sameAnswerLetterID:=Exec_get_LetterID_ByRetroActionNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
   if (sameAnswerLetterID<>0) and (sameAnswerLetterID<>select_LetterLetterID.AsInteger) then
     begin
      RetroExist:=TRetroExist.Create(Application);
      RetroExist.LetterID:=sameAnswerLetterID;
      RetroExist.ShowModal;
     end;

end;
end;
procedure TSentLetterInputForm.FormCreate(Sender: TObject);
begin
  inherited;
  if MainForm.LockOldYear.Enabled then
   if _year<>dm.CurrentMyear then
    select_Letter.LockType:=ltReadOnly;


 LetterFormat:=1;
 UserMemo.Caption:='   '+dm.UserMem;
 UserField.Caption:=dm.UserMem;
if dm.MemoFont<>nil then
   DBMemo2.Font:=dm.MemoFont;
 DBGToORG.Columns[0].Visible:=_HasReplicate;

 end;

procedure TSentLetterInputForm.FormShow(Sender: TObject);
begin
  inherited;
  if LetterFormat=2 then
    Caption:=Caption+' ÅÌ‘ ‰ÊÌ” ';
end;

procedure TSentLetterInputForm.SpeedButton3Click(Sender: TObject);
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

procedure TSentLetterInputForm.SpeedButton9Click(Sender: TObject);
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

procedure TSentLetterInputForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
if  DataSetEdit.Enabled then  exit;
   FromOrgForm:=TFromOrgForm.Create(Application);
    FromOrgForm.outerOrg.Checked:=false;
   FromOrgForm.ShowModal;
   if FromOrgForm.done then
    begin
      DSForm.DataSet.FieldByName('signerID').AsInteger:=_ResultOrgID;
      dbedit3.Text:=dm.SignersCode.AsString;
   end
else
  MainForm.FromOrgOrganize
end;
procedure TSentLetterInputForm.DBGToORGNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 if dm.ToorganizationsisSecretariat.AsBoolean then
    Color:=clWhite
   else
    Color:=$00FFD3A8;
end;

procedure TSentLetterInputForm.DBLookupComboBox2Click(Sender: TObject);
begin
  inherited;
   dbedit9.Text:=dm.FromOrganizationsCode.AsString;
   select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;

end;

procedure TSentLetterInputForm.DBEdit3Exit(Sender: TObject);
begin
  inherited;

if select_Letter.State in [dsedit,dsinsert] then
 begin
    dm.Signers.Locate('Code',TEdit(Sender).Text,[]);
   select_LettersignerID.AsInteger:=dm.Signersid.AsInteger;
 end;

TEditExit(sender);
end;

procedure TSentLetterInputForm.DBLookupComboBox4Click(Sender: TObject);
begin
  inherited;
   dbedit3.Text:=dm.signersCode.AsString;
end;

procedure TSentLetterInputForm.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if not DataSetEdit.Enabled then
    DataSetPost.Execute;

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


procedure TSentLetterInputForm.ActionManagerExecute(Action: TBasicAction;
  var Handled: Boolean);
begin
  inherited;
if action.tag<>4 then
 try Exec_insert_UserLog(2000+Action.Tag,select_LetterLetterID.AsInteger); except end;

end;

procedure TSentLetterInputForm.SpeedButton110Click(Sender: TObject);
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

procedure TSentLetterInputForm.DBGToORGNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
if dm.ToorganizationsisSecretariat.AsBoolean then
  begin
    f.Style:=f.Style+[fsbold];
    f.Color:=clMaroon;
  end
   else
  begin
    f.Style:=f.Style-[fsbold];
    f.Color:=clBlack
  end;
end;

procedure TSentLetterInputForm.DBGToORGNeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;
 
  if Column.FieldName='isSecretariat' then
   if dm.ToorganizationsisSecretariat.AsBoolean then
   ImageIndex:=4
  else
   ImageIndex:=-1;
end;

procedure TSentLetterInputForm.select_LetterBeforePost(DataSet: TDataSet);
begin
  inherited;
select_LetterLastUpdate.Value:=now;

end;

procedure TSentLetterInputForm.SpeedButton5Click(Sender: TObject);
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

procedure TSentLetterInputForm.SpeedButton4Click(Sender: TObject);
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

procedure TSentLetterInputForm.FormDataShow(Sender: TObject);
begin
  inherited;
FrUserTable_Input:= TFrUserTable_Input.Create(Application);
FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
FrUserTable_Input.FormOrder:=1;
FrUserTable_Input.ShowInPanel(FormData);
end;

procedure TSentLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
if trim(select_LetterUserMemo.Text)='' then exit;
FrBrowsArchive:=TFrBrowsArchive.Create(Application);
FrBrowsArchive.UserMemo.Text:=select_LetterUserMemo.Text;
FrBrowsArchive.RefreshQuery;
FrBrowsArchive.ShowModal;

end;

procedure TSentLetterInputForm.Panel1Click(Sender: TObject);
 var extiontion : byte;
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
    ShowMsg(67);
    exit;
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

procedure TSentLetterInputForm.SpeedButton8Click(Sender: TObject);
 var extiontion : byte;

begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
   ShowMsg(67);
    exit;
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
  with TifImageF do
   try
    LetterID:=select_LetterLetterID.AsInteger;
    TifImageF.ShowModal;
   except
    TifImageF:=TTifImageF.Create(Application);
    LetterID:=select_LetterLetterID.AsInteger;
    ShowModal;
    end  ;
 end;


end;

procedure TSentLetterInputForm.FormData2Show(Sender: TObject);
begin
  inherited;
FrUserTable_Input:= TFrUserTable_Input.Create(Application);
FrUserTable_Input.LetterID:=select_LetterLetterID.AsInteger;
FrUserTable_Input.FormOrder:=2;
FrUserTable_Input.ShowInPanel(FormData2);

end;

procedure TSentLetterInputForm.SpeedButton12Click(Sender: TObject);
begin
  inherited;
 if not DataSetEdit.Enabled then
   begin
    ShowMsg(67);
    exit;
   end;
 ExactCopyF:=TExactCopyF.Create(Application);
 ExactCopyF.LetterID:=select_LetterLetterID.AsInteger;
 ExactCopyF.TypeId:=2;
 ExactCopyF.ShowModal;

end;

end.
