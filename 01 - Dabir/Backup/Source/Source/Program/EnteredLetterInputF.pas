unit EnteredLetterInputF;

interface

uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,StrUtils,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, xpBitBtn, wwriched, Wwdbgrid, wwdbedit, Menus,ComObj,
   ContractsUnit,FlowUpUnit,CustomerInfoUnit, ImgList, shellApi, xmldom,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME, MssMessage, Spin,wordXp, AppEvnts;

type
  TReceivedLetterInputForm= class(TMBaseForm)
    Select_Letter: TADOStoredProc;
    Select_LetterUrgencyTitle: TWideStringField;
    Select_LetterClassificationTitle: TWideStringField;
    Select_LetterReciveTypeTitle: TWideStringField;
    Select_LetterLetterID: TAutoIncField;
    Select_LetterIndicatorID: TIntegerField;
    Select_LetterMYear: TWordField;
    Select_LetterSecretariatID: TWordField;
    Select_LetterLetter_Type: TWordField;
    Select_Letterletterformat: TWordField;
    Select_LetterIncommingNO: TWideStringField;
    Select_LetterIncommingdate: TWideStringField;
    Select_LetterCenterNo: TWideStringField;
    Select_LetterCenterDate: TStringField;
    Select_LetterFromOrgID: TIntegerField;
    Select_LetterToOrgID: TIntegerField;
    Select_LetterSignerid: TWideStringField;
    Select_LetterClassificationID: TWordField;
    Select_LetterUrgencyID: TSmallintField;
    Select_LetterMemo: TWideStringField;
    Select_LetterAttachTitle: TWideStringField;
    Select_LetterNumberOfAttachPages: TSmallintField;
    Select_LetterNumberOfPage: TWordField;
    Select_LetterReceiveTypeID: TWordField;
    Select_LetterUserID: TIntegerField;
    Select_LetterRetroactionNo: TWideStringField;
    Select_LetterUserMemo: TWideStringField;
    Select_LetterRegistrationDate: TStringField;
    Select_LetterRegistrationTime: TStringField;
    Select_LetterFollowLetterNo: TWideStringField;
    Select_LetterToStaffer: TWideStringField;
    Select_LetterSentLetterID: TIntegerField;
    Select_LetterTemplateID: TIntegerField;
    Select_LetterHeaderID: TIntegerField;
    Select_LettersenderTitle: TWideStringField;
    Select_LetterFromOrgtitle: TWideStringField;
    Select_LetterFromResponsibleStafferTitle: TWideStringField;
    Select_LetterFromStaffer: TWideStringField;
    Select_LetterUserTitle: TWideStringField;
    Select_LetterLastUpdate: TDateTimeField;
    xpPageControl1: TxpPageControl;
    xpTabSheet1: TxpTabSheet;
    GroupBox3: TPanel;
    Label1: TLabel;
    Label12: TLabel;
    Label24: TLabel;
    Label13: TLabel;
    DBEIndicatorID: TDBEdit;
    DBERegistrationDate: TDBShamsiDateEdit;
    DBERegistrationTime: TDBEdit;
    DBEUserTitle: TDBEdit;
    mainPanel: TPanel;
    GroupBox2: TGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    SpeedButton9: TSpeedButton;
    SpeedButton6: TSpeedButton;
    edit_FromOrgID: TEdit;
    DBLkCBFromOrgTitle: TDBLookupComboBox;
    DBEditToStaffer: TDBEdit;
    DBEdit16: TDBEdit;
    ToOrgTitleEdit: TEdit;
    NoPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
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
    SpeedButton3: TBitBtn;
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
    Apicture: TBitBtn;
    AExpotToWord: TBitBtn;
    AaddLetterData: TBitBtn;
    ActionToolBar1: TActionToolBar;
    ActionManager: TActionManager;
    DataSetInsert: TDataSetInsert;
    DataSetEdit: TDataSetEdit;
    DataSetPost: TDataSetPost;
    DataSetCancel: TDataSetCancel;
    Action11: TAction;
    Action12: TAction;
    Aenter: TAction;
    Select_LetterUserTableID: TIntegerField;
    GroupBox4: TGroupBox;
    DBMemoMemo: TDBMemo;
    Select_LetterUserTableTitle: TStringField;
    Label14: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Select_LetterSubjectTitle: TStringField;
    Select_LetterSubjectID: TIntegerField;
    xpBitBtn1: TBitBtn;
    AmakeRecommite: TAction;
    Label11: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label16: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Select_LetterUserTableID2: TIntegerField;
    Select_LetterUserTableTitle2: TStringField;
    Label18: TLabel;
    DBEdit9: TDBShamsiDateEdit;
    Select_LetterDeadLineDate: TStringField;
    SBSimpleEditor: TBitBtn;
    SpeedButton14: TBitBtn;
    SpeedButton8: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBEFollowLetterNo: TDBEdit;
    DBERetroactionNo: TDBEdit;
    DBEIncommingNO: TDBEdit;
    followLabel: TLabel;
    Select_LetterFollowCode: TStringField;
    Label23: TLabel;
    DBEFollowCode: TDBEdit;
    Select_LetterChristRegDate: TStringField;
    DBEChristRegDate: TDBEdit;
    Select_LetterChristIncomDate: TStringField;
    DBTextChristIncomDate: TDBText;
    ChBoIncommingNO: TCheckBox;
    SpeedButton4: TSpeedButton;
    SpeedButton1: TSpeedButton;
    ChBoFollowRetroaction: TCheckBox;
    SBOther: TBitBtn;
    PopMnuOther: TPopupMenu;
    N5: TMenuItem;
    N3: TMenuItem;
    Select_LetterLetterRecommites: TWideStringField;
    Select_LetterPreCode: TWideStringField;
    Select_LetterFinalized: TBooleanField;
    Select_LetterSendStatusID: TIntegerField;
    Select_LetterUniqueID: TLargeintField;
    Select_LetterArchived: TBooleanField;
    Select_LetterSubjectDescription: TWideStringField;
    Select_LetterLatestActionTypeID: TIntegerField;
    Select_LetterLatestActionReason: TWideStringField;
    Select_LetterActionTypeID: TIntegerField;
    Select_LetterEmailNuFromDate: TWideStringField;
    Select_LetterIndicatorInnerNo: TWideStringField;
    N1: TMenuItem;
    DBGToORG: TYDBGrid;
    Select_LetterOldSecretariatID: TIntegerField;
    Select_LetterCustomerID: TIntegerField;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    acShowCustomerInfo: TAction;
    acFlowUp: TAction;
    acContracts: TAction;
    acCustomerSearch: TAction;
    GroupBox1: TGroupBox;
    DBEdit1: TDBEdit;
    Label25: TLabel;
    Button1: TButton;
    Button5: TButton;
    QTemp: TADOQuery;
    xpForms: TxpTabSheet;
    Panel2: TPanel;
    PopupMenu2: TPopupMenu;
    N7: TMenuItem;
    N8: TMenuItem;
    ImageList1: TImageList;
    Panel3: TPanel;
    QAddedForms: TADOQuery;
    QAddedFormsLetterFormsID: TAutoIncField;
    QAddedFormsLetterID: TIntegerField;
    QAddedFormsFormID: TIntegerField;
    QAddedFormsDescription: TWideStringField;
    QAddedFormsTableCode: TStringField;
    QAddedFormsUserField1: TWideStringField;
    QAddedFormsUserField2: TWideStringField;
    Label26: TLabel;
    SearchEdit: TEdit;
    YDBGrid1: TYDBGrid;
    lblCount: TLabel;
    BitBtn2: TBitBtn;
    xpBitBtn5: TBitBtn;
    btnShowForm: TBitBtn;
    xpPageControl2: TxpPageControl;
    dsQAddedForms: TDataSource;
    QDelForms: TADOQuery;
    GroupBox5: TGroupBox;
    lblHasForms: TLabel;
    QHasForms: TADOQuery;
    QHasFormsID: TAutoIncField;
    acReadECE: TAction;
    ECE1: TMenuItem;
    QHasECEFile: TADOQuery;
    QHasECEFileExtention: TStringField;
    QGetXMLFiles: TADOQuery;
    QGetXMLFilesLetterDataID: TAutoIncField;
    QGetXMLFilesLetterID: TIntegerField;
    QGetXMLFilesImage: TBlobField;
    XMLDocument1: TXMLDocument;
    IdDecoderMIME1: TIdDecoderMIME;
    QAddPayvastFromECE: TADOQuery;
    QAddPayvastFromECELetterDataID: TAutoIncField;
    QAddPayvastFromECELetterID: TIntegerField;
    QAddPayvastFromECEPageNumber: TIntegerField;
    QAddPayvastFromECEImage: TBlobField;
    QAddPayvastFromECEextention: TWordField;
    QAddPayvastFromECEDescription: TWideStringField;
    QGetExtensionID: TADOQuery;
    QGetExtensionIDExtentionID: TAutoIncField;
    Image1: TImage;
    acAnswerReciveECE: TAction;
    XMLDocAnswer: TXMLDocument;
    QGetEmail: TADOQuery;
    QGetEmailEmail: TWideStringField;
    ECE2: TMenuItem;
    MssMessage1: TMssMessage;
    Select_LetterInnerNO: TStringField;
    Select_LetterECEAnswer: TBooleanField;
    ECESend: TDBCheckBox;
    PopupMenu3: TPopupMenu;
    acShowSadereh: TAction;
    N9: TMenuItem;
    N10: TMenuItem;
    FollowLetterYear: TSpinEdit;
    RetroactionYear: TSpinEdit;
    Select_LetterFollowLetterYear: TIntegerField;
    Select_LetterRetroactionYear: TIntegerField;
    Select_LetterParentFollowLetter: TIntegerField;
    btnFollowRetroactionLetter: TBitBtn;
    qry_AccessDelete: TADOQuery;
    qry_AccessDeleteHasDelete: TBooleanField;
    QAddedFormstableID: TIntegerField;
    CheckAccessForErja: TADOStoredProc;
    CheckAccessForErjaResult: TIntegerField;
    CheckBox1: TCheckBox;
    Bevel1: TBevel;
    DBText1: TDBText;
    Label27: TLabel;
    Ado_CountIncommingNO: TADOStoredProc;
    Ado_CountIncommingNOCnt: TIntegerField;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GetLetter(LetterID:integer);
    procedure DBLkCBFromOrgTitleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action11Execute(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBMemoMemoEnter(Sender: TObject);
    procedure DBShamsiDateEditEnter(Sender: TObject);
    procedure AenterExecute(Sender: TObject);
    procedure DataSetInsertExecute(Sender: TObject);
    procedure Select_LetterBeforePost(DataSet: TDataSet);
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
    procedure DBMemoMemoExit(Sender: TObject);
    procedure edit_FromOrgIDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ApictureClick(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure DBGToORGNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure DBLkCBFromOrgTitleClick(Sender: TObject);
    procedure AExpotToWordClick(Sender: TObject);
    procedure ActionManagerExecute(Action: TBasicAction;
      var Handled: Boolean);
    procedure AaddLetterDataClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure wwDBREMemoEnter(Sender: TObject);
    procedure wwDBREMemoExit(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure wwDBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure Select_LetterCalcFields(DataSet: TDataSet);
    procedure edit_FromOrgIDEnter(Sender: TObject);
    procedure DBEIncommingNOKeyPress(Sender: TObject; var Key: Char);
    procedure ChBoIncommingNOClick(Sender: TObject);
    procedure DBEFollowLetterNoKeyPress(Sender: TObject; var Key: Char);
    procedure DBERetroactionNoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure SBOtherClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure acShowCustomerInfoExecute(Sender: TObject);
    procedure acFlowUpExecute(Sender: TObject);
    procedure acContractsExecute(Sender: TObject);
    procedure acCustomerSearchExecute(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure N8Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure YDBGrid1NeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure btnShowFormClick(Sender: TObject);
    procedure xpPageControl2Change(Sender: TObject);
    procedure DSFormDataChange(Sender: TObject; Field: TField);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure DBShamsiDateEditExit(Sender: TObject);
    procedure xpPageControl1Change(Sender: TObject);
    procedure acReadECEExecute(Sender: TObject);
    procedure acReadECEUpdate(Sender: TObject);
    procedure acAnswerReciveECEExecute(Sender: TObject);
    procedure acAnswerReciveECEUpdate(Sender: TObject);
    procedure acShowSaderehExecute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure FollowLetterYearChange(Sender: TObject);
    procedure RetroactionYearChange(Sender: TObject);
    procedure btnFollowRetroactionLetterClick(Sender: TObject);
    procedure QAddedFormsAfterScroll(DataSet: TDataSet);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBEIncommingNOExit(Sender: TObject);
  private
    FfrmCustomerInfo: TfrmCustomerInfo;
    FfrmContracts: TfrmContracts;
    FfrmFlowUp: TfrmFlowUp;
    blnLetterHasForms : boolean;
    FDescForECE: String;
    prewNum : string;
    ToOrgId,FromOrgID : Integer;

    procedure SetfrmCustomerInfo(const Value: TfrmCustomerInfo);
    procedure SetfrmContracts(const Value: TfrmContracts);
    procedure SetfrmFlowUp(const Value: TfrmFlowUp);

    function IS_Girandeh_in_Group:Boolean;
    procedure ShowCount;
    function CheckFormExist:Boolean;
    procedure DontShow_xpFormsTab;
    procedure Show_xpFormsTab;
    function LetterHasForms:Boolean;
    function LetterHasECEFile:Boolean;
    function GetExtensionID(ExtensionName:String):Integer;
    function GetEmail:String;
    procedure SetDescForECE(const Value: String);

  public
    LetterFormat:Byte;
    LetterDataID: integer;
    FirstIndicatorID: integer;
    OldIndicID : String;
    property frmCustomerInfo:TfrmCustomerInfo read FfrmCustomerInfo write SetfrmCustomerInfo;
    property frmFlowUp:TfrmFlowUp read FfrmFlowUp write SetfrmFlowUp;
    property frmContracts:TfrmContracts read FfrmContracts write SetfrmContracts;
    property DescForECE:String read FDescForECE write SetDescForECE;
  end;

var
  ReceivedLetterInputForm: TReceivedLetterInputForm;
  OldIndicatorId :String;

implementation

Uses YShamsiDate, FromOrgU, FixedTableF, QuickSearch, UMain,
     ReCommiteU, ExitedLetterInputF, Dmu,
     FromOrgDialog, DuplicateNo, ReCommitedialog, ExactCopy,
     {ScanImageU, ScanImageU1,} businessLayer, Math, ExportToWord,
     UaddLetterData, UUserTable_Input, UBrowsArchive, LetterRalationFm,
     ScanImageFm, SearchFromCRMUnit, UInputUserTable, Variants, mapimail,
  DescForECEUnit, ShowSaderehUnit, untFollowRetroactionLetter;

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
var
  temp:TWinControl;
begin
  inherited;
  with Dm do
  begin
    Temp := ActiveControl;

    With Properties.YCheckBox do
    begin
      Checked:=GetUserSetting('ShowLetterPropertyPanel');;
      Checked:=not Checked;
      Checked:=not Checked;
    end;

    With attachs.YCheckBox do
    begin
      Checked:=GetUserSetting('ShowLetterAttachPanel');
      Checked:=not Checked;
      Checked:=not Checked;
    end;

    With UserMemo.YCheckBox do
    begin
      Checked:=GetUserSetting('ShowLetterUserMemoPanel');
      Checked:=not Checked;
      Checked:=not Checked; {for refreshing  }
    end;

    With CenterSec.YCheckBox do
    begin
      Checked:=GetUserSetting('ShowLetterCenterNoPanel');
      Checked:=not Checked;
      Checked:=not Checked; {for refreshing}
    end;
    ActiveControl:=temp;
    UpdateDblookup(false);
   end;


   //Add Sanaye 940926
   // Õ· „‘ò· ‰‘«‰ ‰œ«œ‰ ›—” ‰œÂ Ê êÌ—‰œÂ ‰«„Â
   dm.FromOrganizations.Close;
   Dm.FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
   dm.FromOrganizations.Open;
   dm.FromOrganizations.Locate('id',Select_LetterFromOrgID.AsInteger,[]);
   edit_FromOrgID.Text := dm.FromOrganizationsCode.AsString;
   //End Sanaye...

end;

procedure TReceivedLetterInputForm.FormClose(Sender: TObject;var Action: TCloseAction);
begin
  inherited;
  SetUserSetting('ShowLetterPropertyPanel',properties.YCheckBox.Checked);
  SetUserSetting('ShowLetterAttachPanel',attachs.YCheckBox.Checked);
  SetUserSetting('ShowLetterUserMemoPanel',UserMemo.YCheckBox.Checked);
  SetUserSetting('ShowLetterCenterNoPanel',CenterSec.YCheckBox.Checked);

  if (DSForm.DataSet.State in [dsInsert,dsEdit]) and DataSetEdit.Visible and (Select_Letter.LockType<>ltReadOnly )then
    if MessageShow(27,true) then
      DataSetPost.Execute
    else
      DataSetCancel.Execute;
end;

procedure TReceivedLetterInputForm.GetLetter(LetterID: integer);
begin
  inherited;
  with Select_Letter do
  begin
    Close;
    Parameters.ParamByName('@LetterID').Value:=LetterID;
    Open;

    if Recordcount > 0 then
      LetterFormat := Select_Letterletterformat.AsInteger;
  end;

  blnLetterHasForms := LetterHasForms;
end;

procedure TReceivedLetterInputForm.DBLkCBFromOrgTitleKeyDown(
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
var
  sameLetterID:integer;
begin
  inherited;
  {Ranjbar 90.02.07 ID=336}
  //if DSForm.DataSet.State = dsInsert then
  if (Select_Letter.State in [dsEdit,dsInsert]) then
  begin
    //œ— Õ«·  ÊÌ—«Ì‘ «ê— „ﬁœ«— ‘„«—Â ‰«„Â  €ÌÌ— ‰ﬂ—œÂ »Êœ œ«—Ì„
    if (Select_Letter.State = dsEdit)And(Select_LetterIncommingNO.OldValue = Select_LetterIncommingNO.NewValue) then
    begin
      TEditExit(Sender);
      Exit;
    end;
    //--
    if Trim(TDBEdit(Sender).Text) <> '' then
    begin
      SameLetterID := Exec_Get_LetterID_ByInCommingNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
      if (sameLetterID <> 0) and (Select_LetterLetterID.AsInteger <> SameLetterID) then
      begin
        FDuplicate := TFDuplicate.Create(Application);
        FDuplicate.Letterid:=sameLetterID;
        FDuplicate.ShowModal;
      end;
    end
    else
    begin
      {Ranjbar 89.08.18 ID=201}
      //ShowMsg(69);
      //TDBEdit(sender).SetFocus;
      //---
    end;
  end;
  TEditExit(Sender);
  DBEIncommingNO.Text:=StringReplace(DBEIncommingNO.Text,' ','',[rfReplaceAll]);
end;

procedure TReceivedLetterInputForm.DBMemoMemoEnter(Sender: TObject);
var
  s: string;
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
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
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    if DBGToORG.Focused then
    begin
      ToOrgTitleEdit.SetFocus;
      ToOrgTitleEdit.OnChange:= nil;
      ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
      ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;

      DSForm.DataSet.FieldByName('Tostaffer').AsString := Dm.ToorganizationsResponsibleStaffer.AsString;
      DBGToORG.Hide;
      DBEditToStaffer.SetFocus;
    end
    else
      SelectNext(ActiveControl,true,true);
end;

procedure TReceivedLetterInputForm.DataSetInsertExecute(Sender: TObject);
begin
  inherited;
  if not Dm.GetActionAccess(TAction(SENDER).Name,Tag) then
    Exit;

  {Ranjbar 90.01.27 ID=330}
  //if not DataSetEdit.Enabled then
  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    //ShowMsg(63);
    ShowMyMessage('ÅÌ€«„','·ÿ›« ‰«„Â Ã«—Ì —« –ŒÌ—Â ﬂ‰Ìœ',[mbOK],mtInformation);
    Exit;
  end;
  //---
  try
    DBEIncommingNO.SetFocus
  except
  end;

  with Dm,DSForm.DataSet do
  begin
    Insert;
    FieldByName('RegistrationDate').Value := _Today;
    FieldByName('RegistrationTime').Value := Exec_get_NowTime;
    FieldByName('IndicatorID').Value      := LastIndicatorID(1,LetterFormat);
    FieldByName('ClassificationID').Value := DefaultRClassificationID;
    FieldByName('UrgencyID').Value        := DefaultRUrgencyID    ;
    FieldByName('NumberOfPage').Value     := DefaultRNumberOfPage ;
    FieldByName('ReceiveTypeID').Value    := DefaultRReceiveTypeID;
    FieldByName('incommingdate').Value    := FieldByName('RegistrationDate').AsString;
    FieldByName('FromOrgID').AsInteger    := DefaultRFromOrgId;
    FieldByName('MYear').AsInteger        := CurrentMYear;
    FieldByName('LetterFormat').AsInteger := LetterFormat;
    FieldByName('Secretariatid').AsInteger:= Dm.SecId;
    FieldByName('Userid').AsInteger := _UserID;
    FieldByName('letter_type').AsInteger := 1;
    ToOrgTitleEdit.Text := '' ;

    // Amin 1391/12/05 Start
    FollowLetterYear.Value := _Year;
    RetroactionYear.Value := _Year;
    // Amin 1391/12/05 End
  end;
end;

procedure TReceivedLetterInputForm.Select_LetterBeforePost(
  DataSet: TDataSet);
var
  q1: TADOQuery; // Amin 1391/08/06
begin
  inherited;

  With DataSet do
    if State = dsInsert  then
      FieldByName('IndicatorID').Value := Dm.LastIndicatorID(1,LetterFormat)
      // Amin 1391/08/06 Start
    else
    begin
      if StrToInt(DBEIndicatorID.Text)<> FirstIndicatorID then
      begin
        q1:= TADOQuery.Create(nil);
        q1.Connection:= Dm.YeganehConnection;
        q1.SQL.Text:= 'SELECT dbo.FN_IsDuplicateIndicator('+IntToStr(Select_LetterLetterID.Value)+', '+DBEIndicatorID.Text+') as Res';
        q1.Open;
        if q1.FieldValues['Res']=true then
        begin
          ShowMessage('.‘„«—Â «‰œÌò« Ê— Ê«—œ ‘œÂ  ò—«—Ì „Ì »«‘œ');
          //Cancel;
          Abort;
          exit;
        end;
      end;
    end;
      // Amin 1391/08/06 End
  Select_LetterLastUpdate.Value := Now;
end;

procedure TReceivedLetterInputForm.AArecommiteExecute(Sender: TObject);
begin
  inherited;
  MainForm.Arecommite.Execute;
end;

procedure TReceivedLetterInputForm.GetID(IsFrom:boolean);
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
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
        ToOrgId := _ResultOrgID;
      end
      else
      begin
        DSForm.DataSet.FieldByName('ToOrgID').AsInteger:=_ResultOrgID;
        ToOrgTitleEdit.OnChange:=nil;
        ToOrgTitleEdit.Text:=_ResultOrgTitle;
        ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
        DSForm.DataSet.FieldByName('Tostaffer').AsString:=_ResultOrgRespon;
        FromOrgID := _ResultOrgID;
      end;
  end
  else
    MainForm.FromOrgOrganize
end;

procedure TReceivedLetterInputForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  GetID(True);
end;

procedure TReceivedLetterInputForm.ToOrgTitleEditExit(Sender: TObject);
var
  s:string;
begin
  inherited;
  s:=YeganehTrim(ToOrgTitleEdit.Text);

  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    if is_integer(ToOrgTitleEdit.Text) then
      with dm,Toorganizations do
      begin
        Close;
        CommandText := 'Select *,cast(0 as bit) as isSecretariat from Fromorganizations ' +
                       ' where code=''' + s + '''';
        Open;
        if recordcount=0 then
          ShowMsg(64)
        else
        begin
          Select_LetterToorgid.AsInteger:=ToorganizationsID.AsInteger;
          ToOrgTitleEdit.OnChange:=nil;
          ToOrgTitleEdit.Text:=ToorganizationsTitle.AsString;
          ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
          Select_LetterTostaffer.AsString:= ToorganizationsResponsibleStaffer.AsString;
          {Ranjbar}
          //DBEdit2.SetFocus;
          if (DBEFollowLetterNo.Visible)And(DBEFollowLetterNo.Enabled) then
            DBEFollowLetterNo.SetFocus;
          //---
        end;
      end;

  if not DBGToORG.Focused then
    DBGToORG.Hide;
end;

procedure TReceivedLetterInputForm.DataSetPostExecute(Sender: TObject);
var
  IsInsert, flag: boolean;
  q1: TADOQuery;
  Valindi :String;
begin
  inherited;
  //¬Œ—Ì‰ Å«—«›
  // ⁄ÌÌ‰ „Ì ‘Êœ Recommite ﬁ—«— „Ì êÌ—œ  Ê”ÿ  —Ìê— ÃœÊ· LetterRecommites  ÊÃÂ : ﬂ·„Â "¬Œ—Ì‰ Å«—«›:" ﬂÂ œ— ›Ì·œ

  flag := False;
  DBEIndicatorID.SetFocus; //Õ–› ‰‘Êœ

  if not Dm.GetActionAccess(TAction(Sender).Name,Tag) then
    Exit;

  {Ranjbar 89.11.02 ID=278} //œ— Õ«·  ÊÌ—«Ì‘ «„ﬂ«‰  €ÌÌ— êÌ—‰œÂ ÊÃÊœ ‰œ«—œ
  if Select_Letter.State = dsEdit then
    if (Dm.IsLetterRead(Select_LetterLetterID.AsInteger)) and (Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue) then
    begin
      ShowMyMessage('ÅÌ€«„','«Ì‰ ‰«„Â ŒÊ«‰œÂ ‘œÂ «”  »‰«»—«Ì‰ «„ò«‰  €ÌÌ— ›Ì·œ êÌ—‰œÂ ÊÃÊœ ‰œ«—œ'+ #13#13
                        ,[mbOK],mtInformation);
      DBLkCBFromOrgTitle.SetFocus;
      Abort;
      {»—ê—œ«‰œ‰ „ﬁœ«— ﬁ»·Ì - ﬂ«— ‰„Ì ﬂ‰œ
      if Dm.FromOrganizations.Locate('ID',Select_LetterFromOrgID.OldValue,[]) then
      begin
        DBLkCBFromOrgTitle.KeyValue := Dm.FromOrganizationsID.AsInteger;
        Select_LetterFromOrgID.AsInteger := Dm.FromOrganizationsID.AsInteger;
        end;}
    end;

  if Select_Letter.State = dsEdit then
    if (not(Dm.IsLetterRead(Select_LetterLetterID.AsInteger))) and (Select_LetterFromOrgID.OldValue <> Select_LetterFromOrgID.NewValue) then
      flag:=True;
            //Dm.UpdateRecommite(Select_LetterLetterID.AsInteger);
   //---

  {Ranjbar 89.08.18 ID=201}
  if Trim(Select_LetterIncommingNO.AsString) = '' then
    if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ›Ì·œ "‘„«—Â ‰«„Â" Œ«·Ì „Ì »«‘œ. ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',mbOKCancel,mtWarning) <> mrok then
    begin
      DBEIncommingNO.SetFocus;
      Abort;
    end;
  //---

  //-----------------------
   //Commented By Hamed_Ansari_990610
   (*
   Ado_CountIncommingNO.Close;
   Ado_CountIncommingNO.Parameters.ParamByName('@IncommingNO').Value := Trim(Select_LetterIncommingNO.AsString);
   Ado_CountIncommingNO.Parameters.ParamByName('@Year').Value := Select_LetterMYear.AsInteger;
   Ado_CountIncommingNO.Parameters.ParamByName('@SecretariatID').Value := '0';
   Ado_CountIncommingNO.open;

   if Ado_CountIncommingNOCnt.AsInteger > 0 then
   begin
      if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ›Ì·œ "‘„«—Â ‰«„Â"  ò—«—Ì „Ì »«‘œ. ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',mbOKCancel,mtWarning) <> mrok then
      begin
         DBEIncommingNO.SetFocus;
         Abort;
      end;

   end;
   *)
   //Commented By Hamed_Ansari_990610
 //-----------------------
  if not DBERegistrationDate.IsValidDate then
  begin
    DBERegistrationDate.SetFocus;
    ShowMessage('·ÿ›«  «—ÌŒ À»  ‰«„Â —« «’·«Õ ò‰Ìœ');
    Abort;
  end;

  if (Select_LetterFromOrgID.AsInteger = 0) or (Trim(edit_FromOrgID.Text)='') then
  begin
    ShowMsgString('ò«»— ê—«„Ì êÌ—‰œÂ ‰«„Â Œ«·Ì „Ì »«‘œ');
    edit_FromOrgID.SetFocus;
    Abort;
  end
  else
  begin
    if not IS_Girandeh_in_Group then
    begin
      ShowMsgString('êÌ—‰œÂ ‰«„Â œ— ê—ÊÂ ò«—Ì À»  ò‰‰œÂ ‰«„Â ﬁ—«— ‰œ«—œ');
      Abort;
    end;
  end;

  Dm.FromOrganizations.Locate('Code', edit_FromOrgID.Text, []);
  Select_LetterFromOrgID.AsInteger := Dm.FromOrganizationsid.AsInteger;

  IsInsert := False;
  with DSForm.DataSet do
  begin
    if State = dsInsert  then
    begin
      Valindi := IntToStr(dm.LastIndicatorID(1, LetterFormat));
      FieldByName('IndicatorID').Value := Valindi; //(dm.LastIndicatorID(1,LetterFormat));
      IsInsert:=true;
    end
      // Amin 1391/08/06 Start
    else
    begin
      if StrToInt(DBEIndicatorID.Text) <> FirstIndicatorID then
      begin
        q1:= TADOQuery.Create(nil);
        q1.Connection:= Dm.YeganehConnection;

        q1.SQL.Text:= 'SELECT dbo.FN_IsDuplicateIndicator('+IntToStr(Select_LetterLetterID.Value)+', '+DBEIndicatorID.Text+') as Res';
        q1.Open;
        if q1.FieldValues['Res']=1 then
        begin
          ShowMessage('.‘„«—Â «‰œÌò« Ê— Ê«—œ ‘œÂ  ò—«—Ì „Ì »«‘œ');
          exit;
        end;
      end;
    end;
     // Amin 1391/08/06 End
    FieldByName('ToOrgID').AsInteger:=dm.NewToOrganization(ToOrgTitleEdit.text,DBEditToStaffer.Text);
    if Trim(DBEdit5.Text) = '' then
    begin
      Select_LetterCenterNo.AsString := Select_LetterIndicatorInnerNo.AsString;
    end;

    Post;

    //«ÌÃ«œ «—Ã«⁄
    if IsInsert then
      MakeRecommite(LetterFormat,1, FieldByName('LetterID').Value,FieldByName('FromOrgID').Value);

    if (LetterFormat=2) and (OldIndicatorId<>Trim(DBEIndicatorID.Text)) then
    begin
      if not Dm.ExecGet_LetterWordFile(dm.Get_All_LetterLetterID.AsInteger,false,True) then
        Exit;

      FExportToWord:= TFExportToWord.Create(self);
      with dm.WordApplication do
      begin
        If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
          ActiveWindow.ActivePane.View.Type_:= wdPrintView;
        ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
      end;
      MainForm.ReplaceInWord(FExportToWord.WordApplication,'(('+OldIndicatorId+'))','(('+trim(DBEIndicatorID.Text)+'))' );
      FExportToWord.Close;
      OldIndicatorId:=Trim(DBEIndicatorID.Text);
    end;
  end;

  GetLetter(select_LetterLetterID.AsInteger);
  Exec_insert_UserLog(Self.Tag,'DataSetPost',select_LetterLetterID.AsInteger);

  if OldIndicID <> DBEIndicatorID.Text then
   Exec_insert_UserLog(Self.Tag,'‘„«—Â «‰œÌò« Ê— ‰«„Â Ê«—œÂ ' + OldIndicID + ' »Â ' + DBEIndicatorID.Text + '  €ÌÌ— Ì«›  ',select_LetterLetterID.AsInteger);

  if flag then
    Dm.UpdateRecommite(Select_LetterLetterID.AsInteger);
  OldIndicID := DBEIndicatorID.Text;  
end;

procedure TReceivedLetterInputForm.DataSetCancelExecute(Sender: TObject);
begin
  inherited;

  if not dm.GetActionAccess(TAction(SENDER).name,TAG) then
    exit;

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

  if not dm.GetActionAccess(TAction(SENDER).name,TAG) then
    exit;

  DSForm.DataSet.Edit;
  FirstIndicatorID:= Select_LetterIndicatorID.AsInteger;
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
var
  s,t:string;
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

  with dm.Toorganizations do
    if length(s)>=3  then
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
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
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
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ToOrgTitleEdit.OnChange:=nil;
    ToOrgTitleEdit.Text:=dm.ToorganizationsTitle.AsString;
    ToOrgTitleEdit.OnChange:=ToOrgTitleEditChange;
    DSForm.DataSet.FieldByName('Tostaffer').AsString:=dm.Toorganizations.FIELDBYNAME('ResponsibleStaffer').AsString;
    DBGToORG.Hide;
    DBEditToStaffer.SetFocus;
  end;
end;

procedure TReceivedLetterInputForm.DBMemoMemoExit(Sender: TObject);
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
    if not dm.FromOrganizations.Locate('Code',TEdit(Sender).Text,[]) then
    begin
      ShowMessage('òœ Ê«—œ ‘œÂ œ— ç«—  ÊÃÊœ ‰œ«—œ');
      edit_FromOrgID.Text := prewNum;
      TDBEdit(Sender).SetFocus;
    end;
    select_LetterFromOrgID.AsInteger:=dm.FromOrganizationsid.AsInteger;
    select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
  end;
  TEditExit(sender);
  {Ranjbar 89.08.02 ID=160}
  Keyboard_Farsi;
  //---
end;

procedure TReceivedLetterInputForm.FormCreate(Sender: TObject);
var
  i: word;
begin
  inherited;
  {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
            SBOther.Visible := false;
       {$ENDIF}
   {$ENDIF}

  DescForECE:='';
  xpPageControl1.ActivePageIndex:=0;
  DontShow_xpFormsTab;
  for i:=0 to ComponentCount-1 do
    if Components[i].InheritsFrom(TBitBtn) then
      TBitBtn(Components[i]).Visible:=dm.GetActionAccess(TBitBtn(Components[i]).name,MainForm.Tag);

  if MainForm.LockOldYear.Enabled then //Action
    if _year <> dm.CurrentMyear then
    begin
      //Ranjbar
      Select_Letter.LockType := ltReadOnly;
      MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì :  «“„«‰ÌﬂÂ œ— ›—„ " ⁄ÌÌ‰ ”ÿÕ œ” —”Ì" ¬Ì „ "»” Â ‘œ‰ ‰«„Â Â«Ì ”«· ﬁ»·" ›⁄«· »«‘œ'+
                                     #13 + '‘„« ‰„Ì  Ê«‰Ìœ ‰«„Â «Ì —« »—«Ì ”«·Â«Ì ﬁ»· À»  Ê Ì« «⁄„«·  €ÌÌ— ‰„«ÌÌœ', False);
      //---
    end;

  LetterFormat:=1;
  UserMemo.Caption:='   ' + dm.UserMemoDisplay+'   ';
  UserField.Caption:=dm.UserMemoDisplay;
  if dm.MemoFont <> nil then
  begin
    DBMemoMemo.Font:=dm.MemoFont;
    DBEIncommingNO.Font := dm.MemoFont;
    if dm.MemoFont.Size > 10 then
    begin
      NoPanel.Top := 7;
      NoPanel.Height := 40;
    end;
  end;

end;

procedure TReceivedLetterInputForm.ApictureClick(Sender: TObject);

begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;

  with DSForm.DataSet do
  if DataSetPost.Enabled then
  begin
    DataSetPost.Execute;
    //ShowMsg(67);    exit;
  end;

   {
   Extiontion := Exec_Get_LetterdataExtention(select_LetterLetterID.AsInteger);
   if (Extiontion=1) or ((Extiontion=0)and(dm.HasJpg)) then
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
         TifImageF := TTifImageF.Create(Application);
         with TifImageF do
         begin
            LetterID:=select_LetterLetterID.AsInteger;
            ShowModal;
         end;
      end;}

  FmScanImage := TFmScanImage.Create(Application);
  FmScanImage.LetterID := Self.Select_LetterLetterID.AsInteger;
  FmScanImage.ShowModal;

  Exec_insert_UserLog(Self.Tag,'Apicture',select_LetterLetterID.AsInteger);
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

procedure TReceivedLetterInputForm.DBLkCBFromOrgTitleClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.11.02 ID=278}
  if not(Select_Letter.State in [dsEdit,dsInsert]) then
    Exit;
  //---

  Edit_FromOrgID.Text:=dm.FromOrganizationsCode.AsString;
  select_LetterFromStaffer.AsString:=dm.FromOrganizationsResponsibleStaffer.AsString;
end;

procedure TReceivedLetterInputForm.AExpotToWordClick(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;

  if DataSetPost.Enabled then
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
    if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,not _AllowToEditWordFiles,
                                    True, Exec_has_WordExcel(FieldByName('Letterid').AsInteger)) then
    begin
      FExportToWord:=TFExportToWord.Create(Application);
      with FExportToWord do
      begin
        Letterid:=FieldByName('Letterid').AsInteger;
        LetterFormat:=FieldByName('LetterFormat').AsInteger;
        if not dm.UseTemplate then
        begin
          Show;
          OpenFileClick(OpenFile);
        end
        else
          ShowModal;
      end;
    end;

  Exec_insert_UserLog(Self.Tag,'AExpotToWord',select_LetterLetterID.AsInteger);
end;

procedure TReceivedLetterInputForm.ActionManagerExecute(
  Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  if action.tag <> 4 then
    if select_Letter.Active then
      Exec_insert_UserLog(Self.Tag, Action.Name, select_LetterLetterID.AsInteger);
end;

procedure TReceivedLetterInputForm.AaddLetterDataClick(Sender: TObject);
begin
  inherited;
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;

  with DSForm.DataSet do
  begin
    if (DSForm.DataSet.State in [dsInsert,dsEdit])and (select_LetterLetterID.AsInteger>0) then
    begin
      ShowMsg(67);
      Exit;
    end;
    FraddLetterData := TFraddLetterData.Create(Application);
    FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
    FraddLetterData.RecommitID := 0;
    FrAddLetterData.Letter_Or_Erja:='Letter';
    FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
    FraddLetterData.ShowModal;
  end;
end;

procedure TReceivedLetterInputForm.xpBitBtn1Click(Sender: TObject);
begin
  inherited;
  if Trim(select_LetterUserMemo.Text) = '' then
  begin
    //Ranjbar
    MBaseForm.MessageShowString(' ÂÌç „ﬁœ«—Ì œ— ﬁ”„  ' + UserField.Caption +' Ì«›  ‰‘œ  ', False);
    //---
    Exit;
  end;

  FrBrowsArchive:=TFrBrowsArchive.Create(Application);
  FrBrowsArchive.UserMemo.Text := Select_LetterUserMemo.Text;
  FrBrowsArchive.RefreshQuery;
  FrBrowsArchive.ShowModal;
end;

procedure TReceivedLetterInputForm.wwDBREMemoEnter(Sender: TObject);
var
   S: string;
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    if TwwDBRichEdit(Sender).Text='' then
    begin
      s := dm.GetMemoFollow(True, select_LetterFollowLetterNo.AsString, select_LetterRetroactionNo.AsString);
      if s <> '' then
        select_LetterMemo.AsString := s;
    end;
  TwwDBRichEdit(Sender).SelectAll;
  TEditEnter(Sender);
  AEnter.Enabled:=false;
end;

procedure TReceivedLetterInputForm.wwDBREMemoExit(Sender: TObject);
begin
  inherited;
  TEditExit(sender);
  AEnter.Enabled:=true;
end;

procedure TReceivedLetterInputForm.SBSimpleEditorClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 36}
  if not(select_Letter.State in [dsInsert,dsEdit]) then
    Exit;
  Select_LetterMemo.AsString := MainForm.FillBlobField(Self,DBMemoMemo.Text,'„ ‰ „÷„Ê‰ ‰«„Â');
  //---
end;

procedure TReceivedLetterInputForm.SpeedButton7Click(Sender: TObject);
var
  mYear, LetterID,OldSecretariatID:integer;
  RR :Boolean;
begin
  inherited;
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ShowMsg(67);
    Exit;
  end;

  OldSecretariatID:=Dm.GetOldSecretariatID(Select_LetterLetterID.AsInteger);
  if OldSecretariatID>0 then
  begin
    ShowMsgString(' «Ì‰ ‰«„Â «‰ ﬁ«·Ì «“ œ»Ì—Œ«‰Â '+Dm.GetSecretariatName(OldSecretariatID)+ ' „Ì »«‘œ ');
  end
  else
  begin
    if FollowLetterYear.Value = 0 then mYear := _Year else mYear := FollowLetterYear.Value; // Amin 1391/12/05
      if dm.GetFollowAndRetRoAction(True,(select_LetterLetter_Type.AsInteger=1),
               select_LetterFollowLetterNo.AsString,mYear,
               LetterID,RR) then // Amin 1391/12/05 Edited
      begin
        if RR then
          MainForm.ViewReceivedLetter(LetterID)
        else
          MainForm.ViewSentLetter(LetterID);
      end
      else
        ShowMsg(3);
  end;
end;

procedure TReceivedLetterInputForm.SpeedButton8Click(Sender: TObject);
var
  RR :Boolean;
  LetterID, mYear, Letter_Type,OldSecretariatID:Integer;
begin
  inherited;

  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ShowMsg(67);
    Exit;
  end;

  OldSecretariatID:=Dm.GetOldSecretariatID(Select_LetterLetterID.AsInteger);
  if OldSecretariatID>0 then
  begin
    ShowMsgString(' «Ì‰ ‰«„Â «‰ ﬁ«·Ì «“ œ»Ì—Œ«‰Â '+Dm.GetSecretariatName(OldSecretariatID)+ ' „Ì »«‘œ ');
  end
  else
  begin
    if RetroactionYear.Value = 0 then mYear := _Year else mYear:= RetroactionYear.Value; // Amin 1391/12/05
      if dm.GetFollowAndRetRoAction(false,(select_LetterLetter_Type.AsInteger=1),select_LetterRetroactionNo.asstring{⁄ÿ›},
            mYear, LetterID,rr) then  // Amin 1391/12/05 Edited
      begin
        if RR then
          MainForm.ViewReceivedLetter(LetterID) //‰«„Â Ê«—œÂ
        else
          MainForm.ViewSentLetter(LetterID);    //‰«„Â ’«œ—Â
      end
      else
        ShowMsg(4);
  end;
end;

procedure TReceivedLetterInputForm.SpeedButton14Click(Sender: TObject);
begin
  inherited;
//  PopupMenu3.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
  FmLetterRalation := TFmLetterRalation.create(Application);
  FmLetterRalation.LetterID := dm.Get_All_LetterLetterID.AsInteger;
  FmLetterRalation.ShowModal;
end;

procedure TReceivedLetterInputForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.02 ID=230}
  DBEIncommingNO.SetFocus;
  DBEIncommingNO.SelectAll;
  Keyboard_English;
  DBEIncommingNO.OnKeyPress := Nil;
  DBEIncommingNO.BiDiMode := bdLeftToRight;
  Select_LetterIncommingNO.Alignment := taLeftJustify;
  //---
end;

procedure TReceivedLetterInputForm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.02 ID=230}
  DBEIncommingNO.SetFocus;
  DBEIncommingNO.SelectAll;
  Keyboard_Farsi;
  DBEIncommingNO.Font.Name := 'Tahoma';
  DBEIncommingNO.OnKeyPress := DBEIncommingNOKeyPress;
  DBEIncommingNO.BiDiMode := bdRightToLeft;
  Select_LetterIncommingNO.Alignment := taRightJustify;
  //---
end;

procedure TReceivedLetterInputForm.wwDBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  TwwDBEdit(Sender).Text := Keyboard_TypeWithDivider(TwwDBEdit(Sender).Text , Key);
end;

procedure TReceivedLetterInputForm.Select_LetterCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  if not DataSet.FieldByName('LetterID').IsNull then
  begin
    Select_LetterFollowCode.AsString := GetFollowCode(DataSet.FieldByName('LetterID').AsInteger);
  end;

  Select_LetterChristRegDate.AsString:= MiladiMString(DataSet.FieldByName('registrationdate').AsString);

  if DataSet.FieldByName('incommingdate').AsString <> '' then
    Select_LetterChristIncomDate.AsString := MiladiMString(DataSet.FieldByName('incommingDate').AsString);
end;

procedure TReceivedLetterInputForm.edit_FromOrgIDEnter(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.08.02 ID=160}
  prewNum := edit_FromOrgID.Text;
  TEditEnter(Sender);
  Keyboard_English;
  //---
end;

procedure TReceivedLetterInputForm.DBEIncommingNOKeyPress(Sender: TObject;var Key: Char);
begin
  inherited;
  if not ChBoIncommingNO.Checked then
  begin
    if Select_LetterIncommingNO.Alignment = taLeftJustify then
      Select_LetterIncommingNO.Alignment := taRightJustify;
    DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
  end;
  //---
end;

procedure TReceivedLetterInputForm.ChBoIncommingNOClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.02 ID=230}
  if ChBoIncommingNO.Checked then
    Select_LetterIncommingNO.Alignment := taLeftJustify
  else
    Select_LetterIncommingNO.Alignment := taRightJustify;
  DBEIncommingNO.SetFocus;
  //---
end;

procedure TReceivedLetterInputForm.DBEFollowLetterNoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  {Ranjbar 89.09.13 ID=210}
  if not ChBoFollowRetroaction.Checked then
    DBEFollowLetterNo.Text := Keyboard_TypeWithDivider(DBEFollowLetterNo.Text,Key);
  //---
end;

procedure TReceivedLetterInputForm.DBERetroactionNoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  {Ranjbar 89.09.13 ID=210}
  if not ChBoFollowRetroaction.Checked then
    DBERetroactionNo.Text := Keyboard_TypeWithDivider(DBERetroactionNo.Text,Key);
  //---
end;

procedure TReceivedLetterInputForm.FormShow(Sender: TObject);
begin
  inherited;
  {Ranjbar}
  if LetterFormat=2 then
    Caption:=' ÅÌ‘ ‰ÊÌ” '+Caption;

  if Caption='‰«„Â Ê«—œÂ' then ECESend.Visible:=False else ECESend.Visible:=True;
    DBGToORG.Top := 187;

  if (Dm.Check_CRM_Exists)and(_CanConnectToCRM) then
    GroupBox1.Visible := true
  else
    GroupBox1.Visible := false;

  if LetterDataID>0 then
  begin
    with DSForm.DataSet do
    begin
      if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
      begin
        ShowMsg(67);
        Exit;
      end;

      FraddLetterData := TFraddLetterData.Create(Application);
      FraddLetterData.LetterID:=select_LetterLetterID.AsInteger;
      FraddLetterData.RecommitID := 0;
      FrAddLetterData.Letter_Or_Erja:='Letter';
      FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
      FrAddLetterData.LetterDataID := LetterDataID;
      FraddLetterData.ShowModal;
    end;
  end;
     {$IFDEF LIGHT}
       {$IFDEF SINGLE}
            BitBtn2.Visible := false;
            xpForms.TabVisible := false;
            SBOther.Visible := false;
       {$ENDIF}
   {$ENDIF}
  DBEdit12.Hint := DBEdit12.Text;
  OldIndicatorId:=Trim(DBEIndicatorID.Text);

  CheckBox1Click(Self);
  OldIndicID := DBEIndicatorID.Text;
end;

procedure TReceivedLetterInputForm.N5Click(Sender: TObject);
begin
  inherited;
  with DSForm.DataSet do
  begin
    if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
    begin
      ShowMsg(67);
      exit;
    end;

    ReCommite:=TReCommite.Create(Application);

    with ReCommite do
    begin
      LetterID := select_LetterLetterID.AsInteger;
      IsFromReceivedLetters := true; // Amin 1391/12/02
      ShowModal;
    end;
  end;
  Exec_insert_UserLog(Self.Tag,'Arecommite',select_LetterLetterID.AsInteger);
end;

procedure TReceivedLetterInputForm.N3Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.10.29 ID=269}
  if (DSForm.DataSet.State in [dsInsert,dsEdit]) then
  begin
    ShowMsg(67);
    Exit;
  end;

  if not Dm.GetActionAccess('ASendToOtherSec',MainForm.Tag) then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ‘„« »Â «Ì‰ ﬁ”„  œ” —”Ì ‰œ«—Ìœ',[mbOK],mtInformation);
    Exit;
  end;

  MainForm.SendLetter_To_Other_Sec(Select_LetterLetterID.AsInteger);
  //---
end;

procedure TReceivedLetterInputForm.SBOtherClick(Sender: TObject);
begin
  inherited;
  Cursor_SetPos(Self,SBOther,PopMnuOther);
end;

procedure TReceivedLetterInputForm.N1Click(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.10.01 ID=208}
  {if not DataSetEdit.Enabled then
  begin
    ShowMsg(67);
    exit;
  end;}
  if Select_Letter.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;
  //----

  ExactCopyF := TExactCopyF.Create(Application);
  ExactCopyF.LetterID := Select_LetterLetterID.AsInteger;
  ExactCopyF.TypeId := 1;//—Ê‰Ê‘ 
  ExactCopyF.Caption := '—Ê‰Ê‘ ';
  ExactCopyF.ShowModal;
end;

procedure TReceivedLetterInputForm.Button5Click(Sender: TObject);
begin
  PopupMenu1.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TReceivedLetterInputForm.SetfrmCustomerInfo(
  const Value: TfrmCustomerInfo);
begin
  FfrmCustomerInfo := Value;
end;

procedure TReceivedLetterInputForm.SetfrmContracts(
  const Value: TfrmContracts);
begin
  FfrmContracts := Value;
end;

procedure TReceivedLetterInputForm.SetfrmFlowUp(const Value: TfrmFlowUp);
begin
  FfrmFlowUp := Value;
end;

procedure TReceivedLetterInputForm.acShowCustomerInfoExecute(
  Sender: TObject);
begin
  if Dm.Check_CRM_Exists then
  begin
    if not Assigned(frmCustomerInfo) then
      frmCustomerInfo:=TfrmCustomerInfo.Create(Application);

    if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
    begin
      frmCustomerInfo.CustomerID:= Select_LetterCustomerID.AsInteger;
      frmCustomerInfo.ShowModal;
    end
    else
      ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

    frmCustomerInfo.Free;
    frmCustomerInfo:=nil;
  end
  else
    ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');
end;

procedure TReceivedLetterInputForm.acFlowUpExecute(Sender: TObject);
begin
  if Dm.Check_CRM_Exists then
  begin
    if not Assigned(frmFlowUp) then
      frmFlowUp:=TfrmFlowUp.Create(Application);

    if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
    begin
      frmFlowUp.CustomerID:= Select_LetterCustomerID.AsInteger;
      frmFlowUp.ShowModal;
    end
    else
      ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

    frmFlowUp.Free;
    frmFlowUp:=nil;
  end
  else
    ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');
end;

procedure TReceivedLetterInputForm.acContractsExecute(Sender: TObject);
begin
  if Dm.Check_CRM_Exists then
  begin
    if not Assigned(frmContracts) then
      frmContracts:=TfrmContracts.Create(Application);

    if (not Select_LetterCustomerID.IsNull) or (Select_LetterCustomerID.AsInteger>0) then
    begin
      frmContracts.CustomerID:= Select_LetterCustomerID.AsInteger;
      frmContracts.ShowModal;
    end
    else
      ShowMsgString('»—«Ì «Ì‰ „Ê—œ - „‘ —Ì À»  ‰‘œÂ «” ');

    frmContracts.Free;
    frmContracts:=nil;
  end
  else
    ShowMessage('‰«„ »«‰ò «ÿ·«⁄« Ì ”Ì” „ „œÌ—Ì  —Ê«»ÿ „‘ —Ì „‘Œ’ ‰‘œÂ «” ');
end;

procedure TReceivedLetterInputForm.acCustomerSearchExecute(
  Sender: TObject);
begin
  if SearchFromCRM=nil then
    SearchFromCRM:=TSearchFromCRM.Create(Application);
  SearchFromCRM.ShowModal;
  if Select_Letter.State in [dsInsert,dsEdit] then
    Select_LetterCustomerID.AsInteger:=Dm.YDabir_Select_List_CustomersCustomerID.AsInteger
  else
    ShowMsgString('»«Ìœ œ— Õ«·  ÊÌ—«Ì‘ Ì« œ—Ã «ÿ·«⁄«  »«‘Ìœ');
end;

procedure TReceivedLetterInputForm.DBEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key:=#0;
end;

function TReceivedLetterInputForm.IS_Girandeh_in_Group: Boolean;
var GroupID_New :Integer;
begin
  Result:=True;

  //QTemp.Close;
  //QTemp.SQL.Clear;
  //QTemp.SQL.Add('SELECT OrgID FROM ChartWorkGroupDetails WHERE GroupID='+IntToStr(_GroupID));
  //QTemp.SQL.Add('SELECT OrgID FROM ChartWorkGroupDetails WHERE GroupID= (Select groupid from FromOrganizations WHERE id = ' + IntToStr(FromOrgID) + ')');
  //QTemp.SQL.Add('AND OrgID='+ IntToStr(ToOrgId));//IntToStr(Select_LetterFromOrgID.AsInteger));
  //QTemp.SQL.Add('AND AccessForErja=1');
  //QTemp.Open;
  //if QTemp.IsEmpty then
  //  Result:=False;

  CheckAccessForErja.Close;
  CheckAccessForErja.Parameters.ParamByName('@FromOrgID').Value := FromOrgID;
  CheckAccessForErja.Parameters.ParamByName('@ToOrgID').Value   := ToOrgId;//Select_LetterFromOrgID.AsInteger;
  CheckAccessForErja.Open;
  if CheckAccessForErjaResult.AsInteger = 1 then
    Result := True
  ELSE
  Result := False;

end;

procedure TReceivedLetterInputForm.N8Click(Sender: TObject);
begin
  DontShow_xpFormsTab;
  FrInputUserTable := TFrInputUserTable.Create(Application);
  FrInputUserTable.LetterID:=Select_LetterLetterID.AsInteger;
  FrInputUserTable.showmodal;
  Select_Letter.Refresh;
end;

procedure TReceivedLetterInputForm.BitBtn2Click(Sender: TObject);
begin
  if DSForm.DataSet.State in [dsEdit,dsInsert] then
  begin
    ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ·ÿ›« «» œ« «ÿ·«⁄«  ŒÊœ —« –ŒÌ—Â ‰„«ÌÌœ',[mbOK],mtInformation);
    Exit;
  end;
  PopupMenu2.Popup(Mouse.CursorPos.X,Mouse.CursorPos.Y);
end;

procedure TReceivedLetterInputForm.N7Click(Sender: TObject);
begin
  Show_xpFormsTab;
  QAddedForms.Close;
  QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
  QAddedForms.Open;
 // QAddedForms.SQL.SaveToFile('c:\sssssssssssssss.sql');

  ShowCount;
  xpForms.Show;
end;

procedure TReceivedLetterInputForm.SearchEditChange(Sender: TObject);
var
  s : String;
begin
  if QAddedForms.Active then
  begin
    if Length(SearchEdit.Text)>0 then
    begin
      s:=SearchEdit.Text;
      s:=Dm.ReplaceCharacter(SearchEdit.Text,char(223),char(152));
      QAddedForms.Filter:='Description Like ''%'+s+'%''';
      QAddedForms.Filtered:=True;
      ShowCount;
    end
    else
    begin
      QAddedForms.Filter:='';
      QAddedForms.Filtered:=True;
      ShowCount;
    end;
  end;
end;

procedure TReceivedLetterInputForm.YDBGrid1NeedColorCondition(
  Column: TColumn; State: TGridDrawState; var Color: TColor);
begin
  inherited;
  if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
    Color := clBtnFace
  else
    Color := clWhite;
end;

procedure TReceivedLetterInputForm.ShowCount;
begin
  lblCount.Caption:='  ⁄œ«œ ' +IntToStr(YDBGrid1.DataSource.DataSet.RecordCount)+' „Ê—œ Ì«›  ‘œ ';
end;

procedure TReceivedLetterInputForm.btnShowFormClick(Sender: TObject);
var
  x : TxpTabSheet;
begin
  if CheckFormExist then
  begin
    x:=TxpTabSheet.Create(xpPageControl2);
    x.PageControl:=xpPageControl2;
    x.Caption:=QAddedFormsDescription.AsString;
    x.Tag:=QAddedFormsLetterFormsID.AsInteger;
    with TFrUserTable_Input.Create(Application) do
    begin
      LetterID:= Select_LetterLetterID.AsInteger;
      FormOrder:=QAddedFormsLetterFormsID.AsInteger;
      Tag:=QAddedFormsLetterFormsID.AsInteger;
      ShowInPanel(x);
    end;
  end;
end;

function TReceivedLetterInputForm.CheckFormExist: Boolean;
var i: integer;
begin
//Add Sanaye 950923
//Õ· „‘ò· ›—„ Â«Ì «÷«›Â ‘œÂ »Â ‰«„Â
  Result:=False;

  if not QAddedForms.IsEmpty then
  begin
    if xpPageControl2.PageCount > 0 then
    begin
      for i := 0 to xpPageControl2.PageCount-1 do
        if xpPageControl2.Pages[i].Tag = QAddedFormsLetterFormsID.AsInteger then
        begin
          ShowMessage('›—„ "' +xpPageControl2.Pages[i].Caption+ '" »«“ «”  ');
          Abort;
        end;
    end;

    if (QAddedFormsFormID.AsInteger>0) and (QAddedFormsLetterID.AsInteger=Select_LetterLetterID.AsInteger) then
      Result:=True;
  end;
//end Sanaye
end;

procedure TReceivedLetterInputForm.xpPageControl2Change(Sender: TObject);
begin
  inherited;
  if xpPageControl2.PageCount>0 then
  begin
    xpPageControl2.OnChange:=nil;
    xpPageControl2.SelectNextPage(False);
    xpPageControl2.SelectNextPage(True);
    xpPageControl2.OnChange:=xpPageControl2Change;
  end;
end;

procedure TReceivedLetterInputForm.DontShow_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=False;
end;

procedure TReceivedLetterInputForm.Show_xpFormsTab;
begin
  xpPageControl1.Pages[1].TabVisible:=True;
end;

procedure TReceivedLetterInputForm.DSFormDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  DontShow_xpFormsTab;
  if not Select_Letter.IsEmpty then
  begin
    if blnLetterHasForms then
    begin
      lblHasForms.Font.Color:=clGreen;
      lblHasForms.Caption:='«Ì‰ ‰«„Â œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ „Ì »«‘œ';
    end
    else
    begin
      lblHasForms.Font.Color:=clMaroon;
      lblHasForms.Caption:='«Ì‰ ‰«„Â œ«—«Ì ›—„ ÅÌÊ”  ‘œÂ ‰„Ì »«‘œ';
    end;
  end;

  // Amin 1391/12/05 Start
  FollowLetterYear.Enabled := Select_Letter.State in [dsInsert, dsEdit];
  RetroactionYear.Enabled := FollowLetterYear.Enabled;
  if not (Select_Letter.State in [dsInsert, dsEdit]) then
  begin
    if Select_LetterRetroactionYear.Value = NULL then
      RetroactionYear.Value := 0
    else
      RetroactionYear.Value := Select_LetterRetroactionYear.AsInteger;

    if Select_LetterFollowLetterYear.Value = NULL then
      FollowLetterYear.Value := 0
    else
      FollowLetterYear.Value := Select_LetterFollowLetterYear.AsInteger;
  end;
  // Amin 1391/12/05 End
end;

procedure TReceivedLetterInputForm.xpBitBtn5Click(Sender: TObject);
begin
  inherited;
  if messageShowString('¬Ì« «“ Õ–› ›—„ „ÿ„Ì‰ Â” Ìœø',true) then
  begin
    QDelForms.Close;
    QDelForms.Parameters.ParamByName('IDForm').Value:=QAddedFormsLetterFormsID.AsInteger;
    QDelForms.ExecSQL;
    QAddedForms.Close;
    QAddedForms.Parameters.ParamByName('letterID').Value:=Select_LetterLetterID.AsInteger;
    QAddedForms.Open;
    ShowCount;
    ShowMsgString('⁄„·Ì«  »« „Ê›ﬁÌ  «‰Ã«„ ‘œ');
  end;
end;

procedure TReceivedLetterInputForm.DBShamsiDateEditExit(Sender: TObject);
begin
  inherited;
  TEditExit(Sender);
  edit_FromOrgID.SetFocus;
end;

function TReceivedLetterInputForm.LetterHasForms: Boolean;
begin
  Result:=False;
  QHasForms.Close;
  QHasForms.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
  QHasForms.Open;
  if not QHasForms.IsEmpty then
    Result := True;
end;

procedure TReceivedLetterInputForm.xpPageControl1Change(Sender: TObject);
begin
  inherited;
  if xpPageControl1.ActivePageIndex=0 then
    Select_Letter.Refresh;
end;

procedure TReceivedLetterInputForm.acReadECEExecute(Sender: TObject);
var
   str,f,Atf_Or_Peiro,Pasvand,f2,Desc:string;
   i,j,k,z:Integer;
   ECE_Is_Correct:Integer;
   ND,MD:IXMLNode;
   ts,fs:TFileStream;
begin
  inherited;
  if LetterHasECEFile then
  begin
     ECE_Is_Correct:=0;
     QGetXMLFiles.Close;
     QGetXMLFiles.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
     QGetXMLFiles.Open;
     while not QGetXMLFiles.Eof do
     begin
         f:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.xml';
         QGetXMLFilesImage.SaveToFile(f);
         XMLDocument1.LoadFromFile(f);
         if (UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[0].NodeName)='PROTOCOL')
              and
            (UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[1].NodeName)='SOFTWARE')
         then
         begin
             ECE_Is_Correct:=1;
             //////////////////////////
             for i:=0 to XMLDocument1.DocumentElement.ChildNodes.Count-1 do
             begin
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='SENDER' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    for j:=0 to ND.AttributeNodes.Count-1 do
                    begin
                        if UpperCase(ND.AttributeNodes.Nodes[j].NodeName)='POSITION' then
                        begin
                            Select_Letter.Edit;
                            select_LettersenderTitle.AsString:=VarToStr(ND.AttributeNodes.Nodes[j].NodeValue);
                            ToOrgTitleEdit.Text:=VarToStr(ND.AttributeNodes.Nodes[j].NodeValue);
                            Select_Letter.Post;
                        end;
                    end;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='RECEIVER' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    for j:=0 to ND.AttributeNodes.Count-1 do
                    begin
                        if UpperCase(ND.AttributeNodes.Nodes[j].NodeName)='ORGANIZATION' then
                        begin
                            Select_Letter.Edit;
                            DBEdit16.Text:=VarToStr(ND.AttributeNodes.Nodes[j].NodeValue);
                            edit_FromOrgID.Text:='';
                            Select_Letter.Post;
                        end;
                    end;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='LETTERNO' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    Select_Letter.Edit;
                    DBEIncommingNO.Text:=VarToStr(ND.Text);
                    Select_Letter.Post;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='LETTERDATETIME' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    for j:=0 to ND.AttributeNodes.Count-1 do
                    begin
                        if UpperCase(ND.AttributeNodes.Nodes[j].NodeName)='SHOWAS' then
                        begin
                           if UpperCase(VarToStr(ND.AttributeNodes.Nodes[j].NodeValue))='JALALI' then
                           begin
                               Select_Letter.Edit;
                               DBShamsiDateEdit.Text:=ND.Text;
                               Select_Letter.Post;
                           end
                           else
                           begin
                               Select_Letter.Edit;
                               DBTextChristIncomDate.Caption:=ND.Text;
                               Select_Letter.Post;
                           end;
                        end;
                    end;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='RELATEDLETTERS' then
                begin
                     for j:=0 to XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Count-1 do
                     begin
                          ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Nodes[j];
                          for k:=0 to ND.ChildNodes.Count-1 do
                          begin
                              if UpperCase(ND.ChildNodes.Nodes[k].NodeName)='RELATIONTYPE' then
                                 for  z:=0  to ND.ChildNodes.Nodes[k].AttributeNodes.Count-1 do
                                 begin
                                    if UpperCase(ND.ChildNodes.Nodes[k].AttributeNodes.Nodes[z].NodeName)='NAME' then
                                       if VarToStr(ND.ChildNodes.Nodes[k].AttributeNodes.Nodes[z].NodeValue)='⁄ÿ›' then
                                          Atf_Or_Peiro:='⁄ÿ›';
                                       if VarToStr(ND.ChildNodes.Nodes[k].AttributeNodes.Nodes[z].NodeValue)='ÅÌ—Ê' then
                                          Atf_Or_Peiro:='ÅÌ—Ê';
                                 end;
                                 if Atf_Or_Peiro='⁄ÿ›' then
                                    if UpperCase(ND.ChildNodes.Nodes[k].NodeName)='RELATEDLETTERNO' then
                                    begin
                                          Select_Letter.Edit;
                                          DBERetroactionNo.Text:=VarToStr(ND.ChildNodes.Nodes[k].NodeValue);
                                          Select_Letter.Post;
                                    end;

                                 if Atf_Or_Peiro='ÅÌ—Ê' then
                                    if UpperCase(ND.ChildNodes.Nodes[k].NodeName)='RELATEDLETTERNO' then
                                    begin
                                          Select_Letter.Edit;
                                          DBEFollowLetterNo.Text:=VarToStr(ND.ChildNodes.Nodes[k].NodeValue);
                                          Select_Letter.Post;
                                    end;
                          end;
                     end;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='SUBJECT' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    Select_Letter.Edit;
                    DBMemoMemo.Text:=ND.Text;
                    Select_Letter.Post;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='PRIORITY' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    for j:=0 to ND.AttributeNodes.Count-1 do
                    begin
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='›Ê—Ì' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterUrgencyID.AsInteger:=2;
                          Select_Letter.Post;
                       end;
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='⁄«œÌ' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterUrgencyID.AsInteger:=1;
                          Select_Letter.Post;
                       end;
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='ŒÌ·Ì ›Ê—Ì' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterUrgencyID.AsInteger:=3;
                          Select_Letter.Post;
                       end;
                    end;
                end;
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)='CLASSIFICATION' then
                begin
                    ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i];
                    for j:=0 to ND.AttributeNodes.Count-1 do
                    begin
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='„Õ—„«‰Â' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterClassificationID.AsInteger:=2;
                          Select_Letter.Post;
                       end;
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='⁄«œÌ' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterClassificationID.AsInteger:=1;
                          Select_Letter.Post;
                       end;
                       if VarToStr(ND.AttributeNodes.Nodes[j].NodeValue)='ŒÌ·Ì „Õ—„«‰Â' then
                       begin
                          Select_Letter.Edit;
                          Select_LetterClassificationID.AsInteger:=3;
                          Select_Letter.Post;
                       end;
                    end;
                end;
             /////////// Body and attachment
             //+++++++++++++++++++++++++++++
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)=UpperCase('Origins') then
                begin
                     for j:=0 to XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Count-1 do
                     begin
                          ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Nodes[j];
                          for k:=0 to ND.ChildNodes.Count-1 do
                          begin
                              if UpperCase(ND.NodeName)=UpperCase('Origin') then
                              begin
                                   for z:=0 to ND.AttributeNodes.Count-1 do
                                      if Trim(VarToStr(ND.AttributeNodes.Nodes[z].NodeValue))<>'' then
                                           Desc:=VarToStr(ND.AttributeNodes.Nodes[z].NodeValue);

                                   for z:=0 to ND.AttributeNodes.Count-1 do
                                      if UpperCase(ND.AttributeNodes.Nodes[z].NodeName)=UpperCase('Extension') then
                                           Pasvand:=VarToStr(ND.AttributeNodes.Nodes[z].NodeValue);

                                           if UpperCase(Pasvand)=UpperCase('jpg') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.jpg';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('jpg');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('tif') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.tif';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('tif');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('tiff') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.tiff';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('tiff');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('gif') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.gif';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('gif');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('png') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.png';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('png');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                              end;
                          end;
                     end;
                end;

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                if UpperCase(XMLDocument1.DocumentElement.ChildNodes.Nodes[i].NodeName)=UpperCase('Attachments') then
                begin
                     for j:=0 to XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Count-1 do
                     begin
                          ND:=XMLDocument1.DocumentElement.ChildNodes.Nodes[i].ChildNodes.Nodes[j];
                          for k:=0 to ND.ChildNodes.Count-1 do
                          begin
                              if UpperCase(ND.NodeName)=UpperCase('Attachment') then
                              begin
                                   for z:=0 to ND.AttributeNodes.Count-1 do
                                      if Trim(VarToStr(ND.AttributeNodes.Nodes[z].NodeValue))<>'' then
                                           Desc:=VarToStr(ND.AttributeNodes.Nodes[z].NodeValue);

                                   for z:=0 to ND.AttributeNodes.Count-1 do
                                      if UpperCase(ND.AttributeNodes.Nodes[z].NodeName)=UpperCase('Extension') then
                                           Pasvand:=VarToStr(ND.AttributeNodes.Nodes[z].NodeValue);

                                           if UpperCase(Pasvand)=UpperCase('jpg') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.jpg';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('jpg');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('docx') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.docx';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('docx');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('doc') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.doc';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('doc');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('pdf') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.pdf';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('pdf');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('txt') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.txt';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('txt');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('tif') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.tif';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('tif');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('tiff') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.tiff';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('tiff');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('gif') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.gif';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('gif');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                                           if UpperCase(Pasvand)=UpperCase('png') then
                                           begin
                                               f2:=_TempPath + 'temp'+QGetXMLFilesLetterDataID.AsString+'.png';
                                               //if FileExists(QuotedStr(f2)) then DeleteFile(f2);
                                               ts:=TFileStream.Create(f2,fmCreate);
                                               idDecoderMIME1.DecodeToStream(VarToStr(ND.NodeValue),ts);
                                               ts.WriteBuffer(ts,ts.InstanceSize);
                                               ts.Destroy;

                                               QAddPayvastFromECE.Close;
                                               QAddPayvastFromECE.SQL.Clear;
                                               QAddPayvastFromECE.SQL.Add('SELECT LetterDataID,LetterID,PageNumber,Image,extention,Description FROM LetterData WHERE LetterID='+IntToStr(QGetXMLFilesLetterID.AsInteger));
                                               QAddPayvastFromECE.Open;

                                               QAddPayvastFromECE.Insert;
                                               QAddPayvastFromECELetterID.AsInteger:=QGetXMLFilesLetterID.AsInteger;
                                               QAddPayvastFromECEPageNumber.AsInteger:=0;
                                               QAddPayvastFromECEImage.LoadFromFile(f2);
                                               QAddPayvastFromECEextention.AsInteger:=GetExtensionID('png');
                                               QAddPayvastFromECEDescription.AsString:=Desc;
                                               QAddPayvastFromECE.Post;
                                           end;
                              end;
                          end;
                     end;
                end;
             //+++++++++++++++++++++++++++++
             /////////// Body and attachment
             end;
             /////////////////////////
             Break;
         end;
        QGetXMLFiles.Next;
     end;
     if ECE_Is_Correct=0 then ShowMessage('›«Ì·Ì »« ›—„  ’ÕÌÕ »—«Ì ECE ÊÃÊœ ‰œ«—œ');
  end
  else
     ShowMessage('«Ì‰ ÅÌ‘ ‰ÊÌ” œ«—«Ì ÅÌÊ”  XML ‰Ì” ');
end;

procedure TReceivedLetterInputForm.acReadECEUpdate(Sender: TObject);
begin
  inherited;
    if Caption='‰«„Â Ê«—œÂ' then acReadECE.Visible:=False else acReadECE.Visible:=True;
end;

function TReceivedLetterInputForm.LetterHasECEFile: Boolean;
begin
    QHasECEFile.Close;
    QHasECEFile.Parameters.ParamByName('LetterID').Value:=Select_LetterLetterID.AsInteger;
    QHasECEFile.Open;
    if QHasECEFile.IsEmpty then Result:=False else Result:=True;
end;

function TReceivedLetterInputForm.GetExtensionID(
  ExtensionName: String): Integer;
begin
  QGetExtensionID.Close;
  QGetExtensionID.SQL.Clear;
  QGetExtensionID.SQL.Add('SELECT TOP 1 ExtentionID FROM Extention WHERE Extention='''+ExtensionName+'''');
  QGetExtensionID.Open;

  if QGetExtensionID.IsEmpty then Result:=0 else Result:=QGetExtensionIDExtentionID.AsInteger;
end;

procedure TReceivedLetterInputForm.acAnswerReciveECEExecute(Sender: TObject);
var
  iXml: IDOMDocument;
  iRoot, iProtocol, iSoftware, iSender, iAttribute, iNode,
  iReceiver, iOtherReceivers,iLetterNo,iLetterDateTime,
  iDescription,iRegistrationNo, iRegistrationDateTime:IDOMNode;
  XMLText : TStringList;
  FileName,Extention,strGUID,XMLFileName,SenderEmail,DescEmail,AttachAddress,strReceiverEmail:string;
begin
  inherited;
  MssMessage1.DialogSize:=460;
  MssMessage1.MessageType:=MssConfirme;
  if UpperCase(MssMessage1.execute('¬Ì« œ— „ ‰ ÃÊ«» ‰«„Â „Ì ŒÊ«ÂÌœ  Ê÷ÌÕÌ —« œ—Ã ò‰Ìœø'))=UpperCase('Ok') then
  begin
     FDescForECEForm:=TFDescForECE.Create(Application);
     FDescForECEForm.ShowModal;
  end
  else
    DescForECE:='';
  // empty the document
  XMLDocAnswer.Active := False;
  XMLDocAnswer.XML.Text := '';
  XMLDocAnswer.Active := True;

  // root
  iXml:=XMLDocAnswer.DOMDocument;
  iRoot:=iXml.appendChild(iXml.createElement ('Letter'));

  // Base Node
  iProtocol:=iRoot.appendChild(iXml.createElement('Protocol'));
  iSoftware:=iRoot.appendChild(iXml.createElement('Software'));
  iSender:=iRoot.appendChild(iXml.createElement('SentCode'));
  iReceiver:=iRoot.appendChild(iXml.createElement('LetterReceiver'));
  iLetterNo:=iRoot.appendChild(iXml.createElement('LetterNo'));
  iNode:=iLetterNo.appendChild(iXml.createTextNode(Select_LetterIncommingNO.AsString));
  iLetterDateTime:=iRoot.appendChild(iXml.createElement('LetterDateTime'));
  iAttribute:=iXml.createAttribute('ShowAs');
  iAttribute.nodeValue:= 'jalali';
  iLetterDateTime.attributes.setNamedItem(iAttribute);
  iLetterDateTime.appendChild(iXml.createTextNode(Select_LetterRegistrationDate.AsString));
  iRegistrationNo:=iRoot.appendChild(iXml.createElement('RegistrationNo'));
  iRegistrationNo.appendChild(iXml.createTextNode(Select_LetterIndicatorID.AsString));
  iRegistrationDateTime:=iRoot.appendChild(iXml.createElement('RegistrationDateTime'));
  iRegistrationDateTime.appendChild(iXml.createTextNode(Select_LetterRegistrationDate.AsString));
  iDescription:=iRoot.appendChild(iXml.createElement('Description'));
  if Trim(DescForECE)<>'' then
      iDescription.appendChild(iXml.createTextNode(DescForECE));
  // Node Name: Protocol
  iAttribute:=iXml.createAttribute('Name');
  iAttribute.nodeValue:= 'ECE';
  iProtocol.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('Version');
  iAttribute.nodeValue:='1.01';
  iProtocol.attributes.setNamedItem(iAttribute);
  //End Of Node Name: Protocol
  // Node Name: Software
  iAttribute:=iXml.createAttribute('SoftwareDeveloper');
  iAttribute.nodeValue:= 'Yeganeh Software Company http://YeganehSoft.ir';
  iSoftware.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('Version');
  iAttribute.nodeValue:='1.0.0.1';
  iSoftware.attributes.setNamedItem(iAttribute);
  iAttribute:=iXml.createAttribute('GUID');
  strGUID:=CreateClassID;
  iAttribute.nodeValue:=Copy(strGUID,2,length(strGUID)-2);
  iSoftware.attributes.setNamedItem(iAttribute);
  //End Of Node Name: Software

  // Node Name: SentCode
  iSender.appendChild(iXml.createTextNode(edit_FromOrgID.Text));
  //End Of Node Name: SentCode
  // Node Name: LetterReceiver
  if Trim(Select_LetterToStaffer.AsString)<>'' then
  begin
      iAttribute:=iXml.createAttribute('Organization');
      iAttribute.nodeValue:= Trim(Select_LetterToStaffer.AsString);
      iReceiver.attributes.setNamedItem(iAttribute);
  end;
      iAttribute:=iXml.createAttribute('Department');
      iAttribute.nodeValue:= '';
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Position');
      iAttribute.nodeValue:= Select_LetterFromOrgTitle.asstring;
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Name');
      iAttribute.nodeValue:= Select_Letterfromstaffer.asstring;
      iReceiver.attributes.setNamedItem(iAttribute);
      iAttribute:=iXml.createAttribute('Code');
      iAttribute.nodeValue:= Trim(Select_LetterToOrgID.AsString);
      iReceiver.attributes.setNamedItem(iAttribute);
  //End Of Node Name: LetterReceiver

  XMLText := TStringList.Create;
  try
    XMLText.Assign(XMLDocAnswer.XML) ;
    XMLText.Insert(0,'<?xml version="1.0" encoding="utf-8" ?>') ;
    XMLFileName:='Yeganeh_Ind'+Select_LetterIndicatorID.AsString;
//    XMLText.SaveToFile('c:\'+XMLFileName+'.xml') ;

    if RightStr(Dm.PathOfECE,1)<>'\' then
        XMLText.SaveToFile(Dm.PathOfECE+'\'+XMLFileName+'Answer.xml')
    else
        XMLText.SaveToFile(Dm.PathOfECE+XMLFileName+'Answer.xml')
  finally
    XMLText.Free;
  end;

////////  Outlook
  SenderEmail:=GetEmail;
  DescEmail:= '  «ÌÌœÌÂ œ—Ì«›  ‰«„Â ';
  if Trim(ToOrgTitleEdit.Text)<>'' then
      DescEmail:=DescEmail+ToOrgTitleEdit.Text;
  if Trim(Select_LetterToStaffer.AsString)<>'' then
      DescEmail:=DescEmail+Select_LetterToStaffer.AsString;

  AttachAddress:=Dm.PathOfECE+'\'+XMLFileName+'Answer.xml';
  //ShowMessage(AttachAddress);
  if Trim(SenderEmail)='' then
      ShowMessage('«Ì„Ì· ‘„« œ— ÃœÊ·  ‰ŸÌ„«  ò«—»—Ì  ‰ŸÌ„ ‰‘œÂ «” ')
  else
  begin
   strReceiverEmail := 'target@GMAIL.COM';//InputBox('','·ÿ›« ¬œ—” «Ì„Ì· êÌ—‰œÂ —« Ê«—œ ò‰Ìœ',''); //         'TARGET@GMAIL.COM';//
      try
         sendMail( '', strReceiverEmail,
                   '', SenderEmail,
                   ' «—”«· «“ '+Dm.Orgname,DescEmail,
                   AttachAddress, true );
      if (Select_Letter.State=dsEdit) or (Select_Letter.State=dsInsert) then
            Select_Letter.Post;
      Select_Letter.Edit;
      Select_LetterECEAnswer.AsBoolean:=True;
      Select_Letter.Post;
      except on e:exception do
        ShowMessage(e.message);
      end;
  end;
/////// End of Outlook

end;

procedure TReceivedLetterInputForm.acAnswerReciveECEUpdate(
  Sender: TObject);
begin
  inherited;
    if Caption='‰«„Â Ê«—œÂ' then acAnswerReciveECE.Visible:=False else acAnswerReciveECE.Visible:=True;
end;

function TReceivedLetterInputForm.GetEmail: String;
begin
  Result:='';
  QGetEmail.Close;
  QGetEmail.SQL.Clear;
  QGetEmail.SQL.Add('SELECT Email FROM Users WHERE Id='+IntToStr(_UserID));
  QGetEmail.Open;
  if not QGetEmail.IsEmpty then
     if Trim(QGetEmailEmail.AsString)<>'' then
          Result:=QGetEmail.FieldValues['Email'];
end;

procedure TReceivedLetterInputForm.SetDescForECE(const Value: String);
begin
  FDescForECE := Value;
end;

procedure TReceivedLetterInputForm.acShowSaderehExecute(Sender: TObject);
begin
  inherited;
  FShowSadereh := TFShowSadereh.create(Application);
  FShowSadereh.LetterID:=Select_LetterLetterID.AsInteger;
  FShowSadereh.ShowModal;
end;

procedure TReceivedLetterInputForm.N10Click(Sender: TObject);
begin
  inherited;
//  FmLetterRalation := TFmLetterRalation.create(Application);
//  FmLetterRalation.LetterID := Select_LetterParentFollowLetter.AsInteger;
//  FmLetterRalation.ShowModal;
end;

procedure TReceivedLetterInputForm.FollowLetterYearChange(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterFollowLetterYear.Value := FollowLetterYear.Value;
   // Amin 1391/12/05 End
end;

procedure TReceivedLetterInputForm.RetroactionYearChange(Sender: TObject);
begin
  inherited;
   // Amin 1391/12/05 Start
   if Select_Letter.State in [dsInsert, dsEdit] then
      Select_LetterRetroactionYear.Value := RetroactionYear.Value;
   // Amin 1391/12/05 End
end;

procedure TReceivedLetterInputForm.btnFollowRetroactionLetterClick(
  Sender: TObject);
begin
  inherited;
  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â
  if Select_Letter.State in [dsInsert , dsEdit] then
  begin
    ShowMessage('«» œ« «ÿ·«⁄«  —« –ŒÌ—Â ‰„«ÌÌœ ');
    Abort;
  end;

  frmFollowRetroactionLetter := TfrmFollowRetroactionLetter.Create(Application);
  frmFollowRetroactionLetter._FR_LetterID := Select_LetterLetterID.AsInteger;
  frmFollowRetroactionLetter.ShowModal;
  //End Sanaye...
end;

procedure TReceivedLetterInputForm.QAddedFormsAfterScroll(
  DataSet: TDataSet);
begin
   qry_AccessDelete.Close;
   qry_AccessDelete.Parameters.ParamByName('userid').Value := _UserID;
   qry_AccessDelete.Parameters.ParamByName('tableid').Value := QAddedFormstableID.AsInteger;
   qry_AccessDelete.Active := True;

   xpBitBtn5.Enabled := qry_AccessDeleteHasDelete.AsBoolean;
end;

procedure TReceivedLetterInputForm.CheckBox1Click(Sender: TObject);
begin
    if CheckBox1.Checked then
      SpeedButton4Click(Self)
    else
      SpeedButton1Click(Self);
end;

procedure TReceivedLetterInputForm.DBEIncommingNOExit(Sender: TObject);
var
 sameLetterID : integer;
begin
  inherited;
  (*
   if not ChBoIncommingNO.Checked then
   begin
      if Select_LetterIncommingNO.Alignment = taLeftJustify then
         Select_LetterIncommingNO.Alignment := taRightJustify;
     // DBEIncommingNO.Text := Keyboard_TypeWithDivider(DBEIncommingNO.Text,Key);
   end;
   if (DBEIncommingNO.Text <> '') AND (Select_Letter.State IN [dsinsert]) then
   begin
     Ado_CountIncommingNO.Close;
     Ado_CountIncommingNO.Parameters.ParamByName('@IncommingNO').Value := Trim(Select_LetterIncommingNO.AsString);
     Ado_CountIncommingNO.Parameters.ParamByName('@Year').Value := Select_LetterMYear.AsInteger;
     Ado_CountIncommingNO.Parameters.ParamByName('@SecretariatID').Value := '0';
     Ado_CountIncommingNO.open;

     if Ado_CountIncommingNOCnt.AsInteger > 0 then
     begin
        if ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ›Ì·œ "‘„«—Â ‰«„Â"  ò—«—Ì „Ì »«‘œ. ¬Ì« „«Ì· »Â –ŒÌ—Â «ÿ·«⁄«  Â” Ìœø',mbOKCancel,mtWarning) <> mrok then
        begin
           DBEIncommingNO.SetFocus;
           Abort;
        end;

     end;
   end;
   *)
  //Hamed_Ansari_990610_S
  if (Select_Letter.State in [dsEdit,dsInsert]) then
   begin
      //œ— Õ«·  ÊÌ—«Ì‘ «ê— „ﬁœ«— ‘„«—Â ‰«„Â  €ÌÌ— ‰ﬂ—œÂ »Êœ œ«—Ì„
      if (Select_Letter.State = dsEdit)And(Select_LetterIncommingNO.OldValue = Select_LetterIncommingNO.NewValue) then
      begin
         TEditExit(Sender);
         Exit;
      end;
   //--
      if Trim(TDBEdit(Sender).Text) <> '' then
      begin
         SameLetterID := Exec_Get_LetterID_ByInCommingNo(trim(TDBEdit(Sender).Text),1,dm.CurrentMyear,dm.SecID);
         if (sameLetterID <> 0) and (Select_LetterLetterID.AsInteger <> SameLetterID) then
         begin
            FDuplicate := TFDuplicate.Create(Application);
            FDuplicate.Letterid:=sameLetterID;
            FDuplicate.ShowModal;
         end;
      end
         else
         begin
            {Ranjbar 89.08.18 ID=201}
            //ShowMsg(69);
            //TDBEdit(sender).SetFocus;
            //---
         end;
   end;
   TEditExit(Sender);
  //Hamed_Ansari_990610_S
end;

end.

