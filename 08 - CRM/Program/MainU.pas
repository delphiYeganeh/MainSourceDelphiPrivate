unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, ExtCtrls, DBCtrls, Grids, DBGrids, Mask,
  ActnList, ActnMan, Buttons, Menus, ToolWin, ActnCtrls, ImgList, ComCtrls,
  DBActns, YDbgrid, DBTreeView, XPStyleActnCtrls, xpPages, UemsVCL,
  xpBitBtn, ActnColorMaps, xpPanel, Spin,dateutils, BaseUnit, ExtActns,
  YWhereEdit, YAmountEdit, KimiyaEdit,shellAPI, MssCalendarPro,
  acArcControls ;

type
  TMainForm = class(TMBaseForm)
    ImageList: TImageList;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    NInsertCustomer: TMenuItem;
    N14: TMenuItem;
    N12: TMenuItem;
    DeleteItem: TMenuItem;
    N8: TMenuItem;
    N15: TMenuItem;
    DGroups: TDataSource;
    Citys: TADODataSet;
    N4: TMenuItem;
    N19: TMenuItem;
    CitysCityID: TAutoIncField;
    CitysStateID: TIntegerField;
    N2: TMenuItem;
    N9: TMenuItem;
    N17: TMenuItem;
    emplates1: TMenuItem;
    N18: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N27: TMenuItem;
    ActionManager: TActionManager;
    Ainsert: TAction;
    Aproperty: TAction;
    Areport: TAction;
    Action6: TAction;
    ADelete: TDataSetDelete;
    Action2: TAction;
    Agrouping: TAction;
    Action3: TAction;
    AGroups: TAction;
    ACustom: TAction;
    AWord: TAction;
    AnewGroup: TAction;
    AviewGroup: TAction;
    AdeleteGroup: TAction;
    Acity: TAction;
    AProduct: TAction;
    AChangeProduct: TAction;
    AAddProduct: TAction;
    ASetPriority: TAction;
    pgcMain: TPageControl;
    xpTabSheet1: TxpTabSheet;
    xpTabSheet2: TxpTabSheet;
    Panel2: TPanel;
    Panel1: TPanel;
    ACustomerFollowUp: TAction;
    AContract: TAction;
    GridPanel: TPanel;
    FollowGrid: TYDBGrid;
    ContractTabSheet: TxpTabSheet;
    Label2: TLabel;
    Panel9: TPanel;
    StatusBar1: TStatusBar;
    GroupByDate: TPanel;
    MonthList: TListBox;
    Amonth: TAction;
    N3: TMenuItem;
    Panel10: TPanel;
    Panel11: TPanel;
    PhoneGrid: TYDBGrid;
    keyboardTimer: TTimer;
    Action4: TAction;
    N5: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    NHost: TMenuItem;
    N25: TMenuItem;
    Panel13: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    DBEdit9: TDBEdit;
    MakeLock: TAction;
    N30: TMenuItem;
    N32: TMenuItem;
    Action5: TAction;
    N33: TMenuItem;
    N34: TMenuItem;
    AAddRefrenceTable: TAction;
    AreportForm: TAction;
    N16: TMenuItem;
    AAddform: TAction;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    AAtachments: TAction;
    N38: TMenuItem;
    Yeganehmenu: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    NMali: TMenuItem;
    NStore: TMenuItem;
    NFirstArtGroup: TMenuItem;
    NSecendArtGroup: TMenuItem;
    NUnit: TMenuItem;
    NArtService: TMenuItem;
    NArticle: TMenuItem;
    N28: TMenuItem;
    N31: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    NCheque1: TMenuItem;
    NCheque2: TMenuItem;
    Groups: TADOQuery;
    GroupsGroupID: TIntegerField;
    GroupsGroupTitle: TWideStringField;
    GroupsGroupNo: TStringField;
    Groupseffect: TWordField;
    Splitter1: TSplitter;
    SplitterCity: TSplitter;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    CitysStateCityTitle: TWideStringField;
    CitysStateTitle: TWideStringField;
    NHostGroup: TMenuItem;
    N7: TMenuItem;
    N13: TMenuItem;
    NSystemSettings: TMenuItem;
    N6: TMenuItem;
    pnlSearchFollow: TxpPanel;
    Label6: TLabel;
    BDate: TShamsiDateEdit;
    Label7: TLabel;
    Edate: TShamsiDateEdit;
    Label5: TLabel;
    DonStatus: TComboBox;
    Label8: TLabel;
    Comment: TEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bsuccess: TEdit;
    Esuccess: TEdit;
    Label9: TLabel;
    DonComment: TEdit;
    ShowAction: TCheckBox;
    ActionType: TDBLookupComboBox;
    btnSrchFollow: TBitBtn;
    Panel5: TPanel;
    Button22: TBitBtn;
    Button25: TBitBtn;
    Button18: TBitBtn;
    Button21: TBitBtn;
    Button23: TBitBtn;
    xpBitBtn1: TBitBtn;
    N51: TMenuItem;
    Panel6: TPanel;
    xpBitBtn7: TBitBtn;
    xpBitBtn5: TBitBtn;
    xpBitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    pnlSearchContract: TxpPanel;
    btnSrchContactAdnavce: TBitBtn;
    Label16: TLabel;
    Label17: TLabel;
    CbDate: TEdit;
    CEDate: TEdit;
    dblsrchProductID: TDBLookupComboBox;
    Label20: TLabel;
    dblSrchContractType: TDBLookupComboBox;
    Label22: TLabel;
    Label13: TLabel;
    edtCustomer: TEdit;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    pnlSearchCustomer: TxpPanel;
    Label1: TLabel;
    SearchEdit: TEdit;
    OnlyCurrentMarketer: TCheckBox;
    Label28: TLabel;
    Label29: TLabel;
    edtContactNumber: TEdit;
    edtEmail: TEdit;
    N52: TMenuItem;
    btnContract: TBitBtn;
    State: TADOTable;
    StateStateID: TWordField;
    StateStateTitle: TWideStringField;
    DState: TDataSource;
    SBRefresh: TSpeedButton;
    btnHome: TSpeedButton;
    GroupBox2: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label23: TLabel;
    DBEdit8: TDBEdit;
    Label24: TLabel;
    DBEdit10: TDBEdit;
    BitBtn2: TBitBtn;
    Label12: TLabel;
    dblCustomerStatus: TDBLookupComboBox;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    TabSheet1: TTabSheet;
    btnViwCustomer: TBitBtn;
    N56: TMenuItem;
    N26: TMenuItem;
    Label25: TLabel;
    DBEdit11: TDBEdit;
    N29: TMenuItem;
    N57: TMenuItem;
    dblProduct: TDBLookupComboBox;
    Label30: TLabel;
    Label31: TLabel;
    dblGroups: TDBLookupComboBox;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    Label26: TLabel;
    Label27: TLabel;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    ContractGrid: TYDBGrid;
    chkContractFinished: TCheckBox;
    dbgMyTasks: TYDBGrid;
    xpPanel1: TxpPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    Panel7: TPanel;
    btnImageBR: TBitBtn;
    grbReference: TGroupBox;
    dblUserRefrence: TDBLookupComboBox;
    btnRefer: TBitBtn;
    GroupBox4: TGroupBox;
    BitBtn4: TBitBtn;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    btnFinishCase: TBitBtn;
    N58: TMenuItem;
    N59: TMenuItem;
    Label38: TLabel;
    Label36: TLabel;
    qryMyTasks: TADOQuery;
    dsMyTasks: TDataSource;
    qryMyTasksTaskID: TAutoIncField;
    qryMyTasksCaseId: TIntegerField;
    qryMyTasksComment: TWideStringField;
    qryMyTasksTodoDate: TWideStringField;
    qryMyTasksStatusId: TIntegerField;
    qryMyTasksAssignedUserId: TIntegerField;
    qryMyTasksAssignedDate: TWideStringField;
    qryMyTasksEstimatedDate: TWideStringField;
    qryMyTasksCaseTitle: TWideStringField;
    qryMyTasksCaseTypeTitle: TWideStringField;
    qryMyTasksCasePriorityTitle: TWideStringField;
    qryMyTasksTaskStatusTitle: TWideStringField;
    pnlDescTask: TxpPanel;
    DBMemo1: TDBMemo;
    qryMyTasksProductTitle: TWideStringField;
    dblCaseStatus: TDBLookupComboBox;
    qryMyTasksCaseTypeId: TWordField;
    qryMyTasksProductId: TWordField;
    qryMyTasksregisterUserId: TIntegerField;
    btnCasesAll: TBitBtn;
    qryMyTasksCompleted: TBooleanField;
    grbReferenceComment: TGroupBox;
    mmoDescription: TMemo;
    Panel8: TPanel;
    btnSaveReference: TBitBtn;
    btnRefrenceCancel: TBitBtn;
    grbCaseFinish: TGroupBox;
    mmoCompleteComment: TMemo;
    Panel4: TPanel;
    btnSaveCaseFinish: TBitBtn;
    btnCaseFinishCancel: TBitBtn;
    N61: TMenuItem;
    SpInsert_Task: TADOStoredProc;
    btnCustomerReportX: TBitBtn;
    PnlAllAct: TPanel;
    ActDateEditTo: TShamsiDateEdit;
    Label4: TLabel;
    ActDateEditFrom: TShamsiDateEdit;
    Label3: TLabel;
    BtnAllAct: TBitBtn;
    pnlAllContract: TPanel;
    Label37: TLabel;
    Label39: TLabel;
    ContractDateEditTo: TShamsiDateEdit;
    ContractDateEditFrom: TShamsiDateEdit;
    BtnAllContract: TBitBtn;
    N60: TMenuItem;
    Timer1: TTimer;
    BitBtn8: TBitBtn;
    edtcity: TYWhereEdit;
    edtState: TYWhereEdit;
    Panel12: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    qryMyTasksCasesComment: TWideStringField;
    qryMyTasksCasePriorityID: TWordField;
    acShowUserSequence: TAction;
    N62: TMenuItem;
    SetActiveUser: TTimer;
    acShowPoorsantList: TAction;
    acShowRepTasks: TAction;
    N65: TMenuItem;
    N63: TMenuItem;
    acSendSMSForCustomerLock: TAction;
    N64: TMenuItem;
    acSMSSettings: TAction;
    N67: TMenuItem;
    acShowSMSGeneral: TAction;
    N68: TMenuItem;
    acShowSMSEndContract: TAction;
    N69: TMenuItem;
    acSMSBirthDate: TAction;
    N70: TMenuItem;
    N66: TMenuItem;
    N71: TMenuItem;
    acShowAutoSMSText: TAction;
    N72: TMenuItem;
    chkCommentType: TCheckBox;
    Label40: TLabel;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    MssCalendarPro1: TMssCalendarPro;
    BitBtn9: TBitBtn;
    cboDoneStatus: TDBLookupComboBox;
    chkDoneStatus: TCheckBox;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    RefereshCustomerTimer: TTimer;
    Panel14: TPanel;
    pgM: TPageControl;
    TabContract: TTabSheet;
    TabEghdam: TTabSheet;
    TabCustomer: TTabSheet;
    lblCompanyName: TLabel;
    Label41: TLabel;
    lcbGroup: TDBLookupComboBox;
    edRecCount: TEdit;
    Label42: TLabel;
    N73: TMenuItem;
    N74: TMenuItem;
    bbb: TButton;
    N75: TMenuItem;
    N76: TMenuItem;
    adoState: TADOQuery;
    adoStateStateID: TIntegerField;
    adoStateStateTitle: TStringField;
    procedure AinsertExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure ApropertyExecute(Sender: TObject);
    procedure AreportExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ADeleteExecute(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure RefreshCustomer;
    procedure FormShow(Sender: TObject);
    procedure AgroupingExecute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure CitysAfterScroll(DataSet: TDataSet);
    procedure AGroupsExecute(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure AcityExecute(Sender: TObject);
    procedure N17Click(Sender: TObject);
    procedure emplates1Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure APublishExecute(Sender: TObject);
   procedure AProductExecute(Sender: TObject);
    procedure AChangepRODUCTExecute(Sender: TObject);
    procedure AAddpRODUCTExecute(Sender: TObject);
    procedure ACustomerFollowUpExecute(Sender: TObject);
    procedure FollowGridDblClick(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure btnSrchFollowClick(Sender: TObject);
    procedure xpTabSheet1Show(Sender: TObject);
    procedure AContractExecute(Sender: TObject);
    procedure ShowActionClick(Sender: TObject);
    procedure xpBitBtn1Click(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
    procedure xpBitBtn10Click(Sender: TObject);
    procedure RefreshContract(FromDate:string;ToDate:string);
    procedure xpBitBtn5Click(Sender: TObject);
    procedure btnSrchContactAdnavceClick(Sender: TObject);
    procedure xpBitBtn7Click(Sender: TObject);
    procedure xpBitBtn3Click(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btnHomeClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    Function CurrentGrid:TYDBGrid;
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MonthListClick(Sender: TObject);
    procedure AmonthExecute(Sender: TObject);
    procedure keyboardTimerTimer(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure NHostClick(Sender: TObject);
    procedure FollowGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure N30Click(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure AreportFormExecute(Sender: TObject);
    procedure AAddRefrenceTableExecute(Sender: TObject);
    procedure AAtachmentsExecute(Sender: TObject);
    procedure N38Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure NStoreClick(Sender: TObject);
    procedure NFirstArtGroupClick(Sender: TObject);
    procedure NSecendArtGroupClick(Sender: TObject);
    procedure NUnitClick(Sender: TObject);
    procedure NArtServiceClick(Sender: TObject);
    procedure NArticleClick(Sender: TObject);
    procedure NCheque1Click(Sender: TObject);
    procedure NCheque2Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N39Click(Sender: TObject);
    procedure N40Click(Sender: TObject);
    procedure N41Click(Sender: TObject);
    procedure N42Click(Sender: TObject);
    procedure N43Click(Sender: TObject);
    procedure N44Click(Sender: TObject);
    procedure GroupsAfterScroll(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure YDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure YDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure PhoneGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FollowGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SBRefreshClick(Sender: TObject);
    procedure NHostGroupClick(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure NInsertCustomerClick(Sender: TObject);
    procedure NSystemSettingsClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N51Click(Sender: TObject);
    procedure pgcMainChange(Sender: TObject);
    procedure edtState1KeyPress(Sender: TObject; var Key: Char);
    procedure edtState1Change(Sender: TObject);
    procedure DStateDataChange(Sender: TObject; Field: TField);
    procedure edtcityChange(Sender: TObject);
    procedure N52Click(Sender: TObject);
    procedure btnContractClick(Sender: TObject);
    procedure edtContactNumberChange(Sender: TObject);
    procedure dblStateExit(Sender: TObject);
    procedure dblCityExit(Sender: TObject);
    procedure dblStateKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblCityKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtEmailEnter(Sender: TObject);
    procedure edtEmailExit(Sender: TObject);
    procedure edtProductChange(Sender: TObject);
    procedure edtStatusChange(Sender: TObject);
    procedure ContractTabSheetEnter(Sender: TObject);
    procedure pnlSearchContractAfterMinimized(Sender: TxpPanel;
      ASizeRestored: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure ContractGridGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure btnSrchCustomerAdvanceClick(Sender: TObject);
    procedure edtEmailChange(Sender: TObject);
    procedure dblCustomerStatusCloseUp(Sender: TObject);
    procedure dblCustomerStatusKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblProductCloseUp(Sender: TObject);
    procedure N53Click(Sender: TObject);
    procedure N55Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure edtRegisterDateSRKeyPress(Sender: TObject; var Key: Char);
    procedure btnViwCustomerClick(Sender: TObject);
    procedure N56Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N29Click(Sender: TObject);
    procedure N57Click(Sender: TObject);
    procedure dblProductKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblGroupsCloseUp(Sender: TObject);
    procedure dblGroupsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblCityCloseUp(Sender: TObject);
    procedure dblCityKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PhoneGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure PhoneGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure BitBtn6Click(Sender: TObject);
    procedure N59Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btnRefrenceCancelClick(Sender: TObject);
    procedure btnReferClick(Sender: TObject);
    procedure dbgMyTasksCellClick(Column: TColumn);
    procedure btnSaveReferenceClick(Sender: TObject);
    procedure dsMyTasksDataChange(Sender: TObject; Field: TField);
    procedure dbgMyTasksDblClick(Sender: TObject);
    procedure btnCasesAllClick(Sender: TObject);
    procedure btnFinishCaseClick(Sender: TObject);
    procedure btnSaveCaseFinishClick(Sender: TObject);
    procedure btnCaseFinishCancelClick(Sender: TObject);
    procedure N61Click(Sender: TObject);
    procedure ContractGridDblClick(Sender: TObject);
    procedure btnImageBRClick(Sender: TObject);
    procedure btnCustomerReportXClick(Sender: TObject);
    procedure BtnAllContractClick(Sender: TObject);
    procedure BtnAllActClick(Sender: TObject);
    procedure N60Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure dblStateKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acShowUserSequenceExecute(Sender: TObject);
    procedure SetActiveUserTimer(Sender: TObject);
    procedure acShowPoorsantListExecute(Sender: TObject);
    procedure acShowRepTasksExecute(Sender: TObject);
    procedure acSendSMSForCustomerLockExecute(Sender: TObject);
    procedure acSMSSettingsExecute(Sender: TObject);
    procedure acShowSMSGeneralExecute(Sender: TObject);
    procedure acShowSMSEndContractExecute(Sender: TObject);
    procedure acSMSBirthDateExecute(Sender: TObject);
    procedure acShowAutoSMSTextExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure chkDoneStatusClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure RefereshCustomerTimerTimer(Sender: TObject);
    procedure TabContractShow(Sender: TObject);
    procedure TabEghdamShow(Sender: TObject);
    procedure TabCustomerShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure N73Click(Sender: TObject);
    procedure N74Click(Sender: TObject);
    procedure bbbClick(Sender: TObject);
    procedure SearchEditKeyPress(Sender: TObject; var Key: Char);
    procedure edtContactNumberKeyPress(Sender: TObject; var Key: Char);
    procedure N76Click(Sender: TObject);
    procedure edRecCountKeyPress(Sender: TObject; var Key: Char);

  private
    qrydblsrchContractType :TADOQuery;
    { TODO -oparsa : 14030126 }
    dblProductoldKeyValue : Integer;
    ChangeProduct :Boolean;
    oldTopRecord : Integer;
    { TODO -oparsa : 14030126 }
    procedure SetdblContractType;
    Function  LoadImageField(Field:TField;Path:String):Boolean;
    Function MakeStrSearch(s:string):string;
    Procedure CalcRecourdCount;
    Function MakeFilterString :WideString;
  public
    GroupId: integer;
    CityId: integer;
    Procedure EnterData_CallForm(aData_Ref:integer ; aFormCaption,aCodeCaption,aNameCaption,aDescCaption:String;aUsers_ID:Integer);
    PROCEDURE SetMarketerRate;
    procedure SetActiveUserOnStatusBar;
  end;

var
  MainForm: TMainForm;

implementation

Uses Telinputunit, dmu,  about, Report, ReportPhone,
     GroupsInp, GroupDialog,   city, marketer, UInputTemplate, ErrorMsg,
     userDefine, backupF, YShamsiDate, UPublish,UsetPriority,
     UinputProducts, UchangeProduct, UProductADD, UFollowUp,
     UContract, UCalenderView, Report_ContractU, AddTimeSheetU, InsertrateRep,
     sheet,ReportAll,ReportSalaryFm,UInputUserTable, UMakeUserTableRep,
     UinputRefferenceTable, AccessInput, StoreFM, FirstArtGroupFM,
     SecendArtGroupFM, UnitFM, ArtServiceFM,  ChequeFM, EnterDataFM,
     FactorFM, HostFM, FmNewDongleWrite, SetLockFm, CrackU,
  FmSystemSettings_U, UContractType, BusinessLayer, UUserType, UTaxPerYear,
  uGuaranteeType, UReportDongle, UActionType,
  UUpdateOldAttachFile, UdefineHoliday, Types, UCase, UCaseBasicData,
  UCaseAdd, UCommisionPercent, Uattachments, UCustomerReport,ArticleFM,
  CancleReportU, UsersSequenceUnit, PoorsantListUnit, RepTasksUnit,
  SmsCenter1, UAddUserTableDlg, SendSMSForCustomerLockUnit,
  SMSSettingsUnit, GeneralSMSUnit, SMSGeneralUnit, StrUtils,
  USMSEndContract, SMSBirthDateU, SMSAutoTextU, TasksTreeUnit,
  uCategoryEdit, uLockSoftware, untCustStatusReport, UPleaseWait;

{$R *.dfm}

Var
   Where : String;
   D : integer;

Function TMainForm.LoadImageField(Field:TField; Path: String):Boolean;
begin
end;


procedure TMainForm.AinsertExecute(Sender: TObject);
var Id :integer;
begin
   PropertiesForm := TPropertiesForm.Create(nil,0,true) ;
   Dm.Open_Customer(0); //Customer »«“ ò—œ‰ ÃœÊ·
   //PropertiesForm.DataSetInsert1.Execute;
   //PropertiesForm.DBNavigator1.BtnClick(nbInsert);
   PropertiesForm.ShowModal;
if PropertiesForm.Edited = true then
  begin
   RefreshCustomer;
   dm.Customer.Locate('CustomerId',dm.Select_Customer_By_CustomerIDCustomerID.Value,[])
  end;
end;

procedure TMainForm.Action6Execute(Sender: TObject);
begin
   if ActiveControl = SearchEdit then
      SearchEdit.Text := '' else
   if MessageDlg('¬Ì« „Ì ŒÊ«ÂÌœ Œ«—Ã ‘ÊÌœ',mtWarning,[mbyes,mbno],0)=mryes then
      Close;
end;

procedure TMainForm.ApropertyExecute(Sender: TObject);
var Id :integer;
begin
   Id := dm.CustomerCustomerID.AsInteger;
   propertiesForm := TPropertiesForm.Create(Application,dm.CustomerCustomerID.AsInteger) ;
   PropertiesForm.Showmodal;
if PropertiesForm.Edited = true then
   begin
     RefreshCustomer;
     dm.Customer.Locate('CustomerId',Id,[])
    end
end;

procedure TMainForm.AreportExecute(Sender: TObject);
begin
   Frep := TFrep.Create(Self);
   Frep.ShowModal;
end;

procedure TMainForm.FormCreate(Sender: TObject);
Var  HasAccessToAllAcontact,HasAccessToAllFollow :Boolean;

begin
   inherited;
   Dm.CustomerStatus.Close;
   Dm.CustomerStatus.Open;

   WindowState:=WSmaximized;
   dm.Product.Locate('ProductID',_ProductID,[]);
   StatusBar1.Panels[1].Text:=dm.ProductProductTitle.AsString;
   BDate.Text :=copy(_today,1,8)+'01';
   eDate.Text :=copy(_today,1,8)+'29' ;
   { TODO -oparsa : 14030201 }
   ActDateEditTo.Text :=copy(_today,1,5)+'12/29' ;
   ContractDateEditTo.Text :=copy(_today,1,5)+'12/29' ;
   //ActDateEditFrom.Text :=   SELECT MIN(ToDoDate) FROM dbo.FollowUp WHERE ToDoDate <>''
   { TODO -oparsa : 14030201 }
   cBDate.Text:=copy(_today,1,8)+'01';
   ceDate.Text:=copy(_today,1,8)+'29';
//   HasAccessToAllAcontact :=


   //BidiModeToRight(pgcMain); // Amin 1391/10/04

   OnlyCurrentMarketer.Checked:=  not _ShowAllCustomer;//not HasAccessToAllAcontact;
   OnlyCurrentMarketer.Enabled:= _ShowAllCustomer;//HasAccessToAllAcontact;
//    OnlyCurrentMarketerClick(sender);
   //Showmessage('„‰ÊÌ Ìê«‰Â ›⁄«· «” ');
  Yeganehmenu.Visible:=False;
  NHost.Visible := false;       // Amin 1391/10/04
  NHostGroup.Visible := false;  // Amin 1391/10/04
  BitBtn8.Visible := false;  // Amin 1391/10/04
  N37.Visible:=False;
  N67.Visible:=True;
  N67.Enabled:=True;
  NHost.Visible:=False;
  NHostGroup.Visible:=False;
  TabSheet1.Visible:=False;
  if UpperCase(_AreYouYeganeh) =UpperCase('True') Then
  begin
    Yeganehmenu.Visible:=TRUE;
    NHost.Visible := true;       // Amin 1391/10/04
    NHostGroup.Visible := true;  // Amin 1391/10/04
    BitBtn8.Visible := true;  // Amin 1391/10/04
    TabSheet1.Visible:=True;
    NHost.Visible:=True;
    NHostGroup.Visible:=True;
  end;
  N57.Visible:=False;
{   if HasAccessToAllFollow then
      _CurrentMarketerID:=0
   else}
   _CurrentMarketerID:=_MarketerID;
   //RefreshCustomer;

   SetActiveUser.Interval:=_ActiveUserRefreshTime;
   SetActiveUser.Enabled:=True;

end;


procedure TMainForm.ADeleteExecute(Sender: TObject);
var checkErr: Integer;
begin

   if MessageDlg('¬Ì« «“ Õ–› «Ì‰ «ÿ·«⁄«  «ÿ„Ì‰«‰ œ«—Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
       checkErr:= Open_CheckCustomer(Dm.CustomerCustomerID.Value).FieldByName('ERROR').Value;
         if checkErr = 0 then
         begin
          Qry_SetResult('Delete From customer where CustomerId = '+ Dm.CustomerCustomerID.AsString,Dm.YeganehConnection);
          RefreshCustomer;
         end
         else if checkErr = 1 then MessageShowString('»—«Ì «Ì‰ „‘ —Ì ﬁ—«—œ«œ À»  ‘œÂ° «» œ« ﬁ—«—œ«œ —« Õ–› ò‰Ìœ',True)
         else if checkErr = 2 then MessageShowString('»—«Ì «Ì‰ „‘ —Ì ÅÌêÌ—Ì À»  ‘œÂ° «» œ« ÅÌêÌ—Ì —« Õ–› ò‰Ìœ',True)
         else if checkErr = 3 then MessageShowString('«Ì‰ „‘ —Ì œ«—«Ì ”«Ì— «‘Œ«’ „— »ÿ „Ì»«‘œ',True);


   end;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
   //  AboutBox.ShowModal;
   FrAddTimeSheet:=TFrAddTimeSheet.Create(Application);
   FrAddTimeSheet.ShowModal;
end;

procedure TMainForm.RefreshCustomer;
begin
   RefereshCustomerTimer.Enabled := true; // Amin 1391/12/26
end;

procedure TMainForm.FormShow(Sender: TObject);
var fltr:String;
   tmpstr : string;
begin
  { TODO -oparsa : 14030201 }
  oldTopRecord :=  0 ;
  { TODO -oparsa : 14030201 }

   DBGrid_Columns_Caption(PhoneGrid);
   DBGrid_LoadColumns(Self.Name,PhoneGrid);
   DBGrid_LoadColumns(Self.Name,FollowGrid);
   DBGrid_LoadColumns(Self.Name,ContractGrid);
   DBGrid_LoadColumns(Self.Name,dbgMyTasks);
   
   State.Active :=TRUE;
   IF not Groups.Active then
   begin
      Groups.Open;
      Groups.Sort:='GroupTitle';
   end;

   { TODO -oparsa : 14030126 }
   IF not adoState.Active then
   begin
      adoState.Open;
   end;
   { TODO -oparsa : 14030126 }

//   dblState.KeyValue := StateStateID.Value;
    edtState.Clear;
    edtcity.Clear;
    dblGroups.KeyValue := null;
//   RefreshCustomer;
   pgcMain.ActivePageIndex:=3;
   pgm.ActivePageIndex := 3;
   pgm.ActivePage := TabCustomer;
   NMali.Visible := false;
   With qryMyTasks do
   Begin
    Close;
    SQL.Text:=' Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.TaskStatusTitle,p.ProductTitle,ct.CaseTypeId ,p.ProductId,cases.registerUserId,cases.Completed,Cases.Comment AS CasesComment,cp.CasePriorityID '
            + ' From Tasks t Left Join Cases on Cases.Caseid = T.CaseId '
            + ' LEFT JOIN TaskStatus ts ON ts.TaskStatusID = T.StatusId  '
            + ' LEFT JOIN CasePriority cp ON cp.CasePriorityID = Cases.CasePriorityId '
            + ' LEFT JOIN CaseType ct ON ct.CaseTypeID = Cases.CaseTypeID '
            + ' LEFT JOIN Product p ON p.ProductID = Cases.ProductId '
            + ' Where AssignedUserId = '+IntToStr(_UserID)+' and (IsNull(LTrim(RTrim(ToDoDate)),'''') = '''') and Completed = 0 ';
    Open;
    First;
    With dm.UserByCaseFilter do
    Begin
      Close;
        Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
        Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
        Parameters.ParamByName('UserId').Value := _UserID;
      Open;
    End;
   End;
   SetMarketerRate;
   StatusBar1.Panels[4].Text:='ò«—»— :'+_UserName;
   StatusBar1.Panels[0].Text :='‰”ŒÂ :'+ _SoftVersion+COPY(_SoftVersionDB,1,1)+'.'+ COPY(_SoftVersionDB,2,1);
   CalcRecourdCount;
   try
      lblCompanyName.Caption := GetSystemSetting('CompanyName');
   except
      lblCompanyName.Caption :='';
   end;

{did   xpPanel1.Align:=alTop;
   Panel1.Align:=alClient;
   PhoneGrid.Align:=alClient;
   GroupBox2.Align:=alTop;
}
   _ProjectIsLoaded := true;   // Amin 1391/12/26


//-------------------
   { TODO -oparsa : 14030126 }
   dblProductoldKeyValue := 0 ;
   { TODO -oparsa : 14030126 }
   With Dm.Customer,Parameters do
   begin
   where := '';
   if Filtered = true then  fltr := Filter;
      Close;
      if MonthList.ItemIndex=0 then
          ParamByName('@likeWhere').Value:=''
      else
      begin
         // Amin 1391/10/04 Start
         //tmpstr:= '(EXISTS(SELECT * FROM Users us WHERE us.isadmin = 1 AND us.Id = '+IntToStr(_UserID)+') or exists(select 1 from UsersCustomerAccess uca where uca.CustomerID = Customer.CustomerID and uca.UserID = '+IntToStr(_UserID)+' and uca.HasAccess = 1))';
         tmpstr:= '(EXISTS(SELECT 1 FROM dbo.Users us  WITH(NOLOCK)  WHERE us.isadmin = 1 AND us.Id = '+IntToStr(_UserID)+') OR EXISTS(select 1 from dbo.UsersCustomerAccess uca  WITH(NOLOCK)  where uca.HasAccess = 1 and uca.CustomerID = Customer.CustomerID and  uca.UserID = '+IntToStr(_UserID)+' ))';
          if where = '' then
            where:= tmpstr
          else
            where := where + ' and '+ tmpstr;
         // Amin 1391/10/04 End

          if where <> '' then where := '('+where+')';
          ParamByName('@likeWhere').Value:=where;
          if GroupByDate.Visible then
             if where<>'' then
                ParamByName('@likeWhere').Value := where+' And (Substring(insertdate,1,7) = '''+MonthList.Items[MonthList.ItemIndex]+''')'
             else
                ParamByName('@likeWhere').Value := '  (Substring(insertdate,1,7) = '''+MonthList.Items[MonthList.ItemIndex]+''')';
      end;

      try
        ParamByName('@Top').Value:=strToint(edRecCount.Text);
      except
        ParamByName('@Top').Value:=100;
      end;

      { TODO -oparsa : 14030201 }
      oldTopRecord :=  ParamByName('@Top').Value ;
      { TODO -oparsa : 14030201 }

      if dblCustomerStatus.KeyValue <> null then
         ParamByName('@Customerstatusid').Value:=dblCustomerStatus.KeyValue
      else
         ParamByName('@Customerstatusid').Value := 0;

      ParamByName('@ContactNumber')   .Value:=Trim(edtContactNumber.Text);

      if OnlyCurrentMarketer.Checked then
         ParamByName('@MarketerID').Value:=_MarketerID
      else
         ParamByName('@MarketerID').Value:=-1;//_CurrentMarketerID;;

      if dblGroups.KeyValue <> null then
         ParamByName('@GroupId').Value:= dblGroups.KeyValue
      else
         ParamByName('@GroupId').Value := 0;

      if dblCity.KeyValue <> null then
        ParamByName('@CityId').Value:= dblCity.KeyValue
      else ParamByName('@CityId').Value := 0;

      if dblState.KeyValue <> null then
        ParamByName('@StateId').Value:= dblState.KeyValue
      else
         ParamByName('@StateId').Value := 0;

      if dblProduct.KeyValue <> null then
        ParamByName('@ProductId').Value:= dblProduct.KeyValue
      else ParamByName('@ProductId').Value := 0;

        ParamByName('@Email').Value:=edtEmail.Text;
      Open;
      Filter := fltr;
      Filtered:=true;


      StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(RecordCount);
   end;


End;

Function TMainForm.MakeStrSearch(s:string):string;
begin
   replace1(s,char(223),char(152));
   if Is_Integer(s) then //«ê— „ ‰  «ÌÅ ‘œÂ ⁄œœÌ »Êœ
   begin
      Result:='( CustomerIdStr like ''%'+s+'%'') or (PostalCode like ''%'+s+'%'')  '
   end
   else
   begin
      Result := '(CompanyName like ''%' + s + '%'') or (PersonTitle like ''%' + s +
                '%'') or (Treater like ''%' + s + '%'') ' +
                ' or (Address like ''%' + s + '%'') or (Notes like ''%' + s + '%'')  ';
      end;
end;

Function like(s:string):string;
begin
   if Is_Integer(s) then //«ê— „ ‰  «ÌÅ ‘œÂ ⁄œœÌ »Êœ
      Result:='((CustomerNo like ''%'+s+'%'') or (Phone like ''%'+s+'%'') or (WorkPhone1 like ''%'+s+'%'') or '+
         ' (MobilePhone like ''%'+s+'%'') or (FaxNumber like ''%'+s+'%'') or (CustomerID='+s+') )'
   else
      //Result:='((Companyname like ''%'+s+'%'') or (PersonTitle like ''%'+s+'%'') or (Treater like ''%'+s+'%'') or (EmailAddress like ''%'+s+'%''))';
      Result := '((Companyname like ''%' + s + '%'') or (PersonTitle like ''%' + s +
                '%'') or (Treater like ''%' + s + '%'')  ' +
                ' or (Address like ''%' + s + '%'') or (Notes like ''%' + s + '%'') ) ' ;
end;

procedure TMainForm.AgroupingExecute(Sender: TObject);
begin
{   if not Groups.Active then
   begin
      Groups.Open;
      Groups.Sort:='GroupTitle';
   end;

   Groups.AfterScroll := GroupsAfterScroll;
   GroupPanel.Visible := not GroupPanel.Visible;
   if not GroupPanel.Visible then
      Groupid:=0;
   refreshCustomer;

   Splitter1.Visible := GroupPanel.Visible;}
end;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
{   CityPanel.Visible := not CityPanel.Visible;
   SplitterCity.Visible := CityPanel.Visible;
   if not CityPanel.Visible then
      CityId := 0
   else
      begin
         citySearch.SetFocus;
         Citys.Close;
         Citys.Open;
         //Citys.Locate('CitiyTitle',citySearch.Text,[lopartialkey])
         Citys.Locate('StateCityTitle',citySearch.Text,[lopartialkey])
      end;
   RefreshCustomer;}
end;

procedure TMainForm.CitysAfterScroll(DataSet: TDataSet);
begin
   CityId:=CitysCityID.AsInteger;
   RefreshCustomer;
end;

procedure TMainForm.AGroupsExecute(Sender: TObject);
begin
   GroupInp := TGroupInp.Create(Application);
   GroupInp.ShowModal;
end;


procedure TMainForm.ComboBox1Click(Sender: TObject);
begin
   RefreshCustomer;
end;

procedure TMainForm.AcityExecute(Sender: TObject);
begin
   FrCityEdit := TFrCityEdit.create(Application);
   FrCityEdit.ShowModal;
   {Ranjbar}
   Citys.Close;
   Citys.Open;
   //---
end;

procedure TMainForm.N17Click(Sender: TObject);
begin
   marketerInp := TMarketerInp.create(Application);
   marketerInp.ShowModal;
end;

procedure TMainForm.emplates1Click(Sender: TObject);
begin
   EditTemplates:=TEditTemplates.Create(Application);
   EditTemplates.ShowModal;
end;

procedure TMainForm.N18Click(Sender: TObject);
begin
   FErrorMsg := TFErrorMsg.Create(Application);
   FErrorMsg.ShowModal;
end;

procedure TMainForm.N20Click(Sender: TObject);
begin
   UserDefineF := TUserDefineF.Create(Application);
   UserDefineF.ShowModal;
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
   BackupRestore := TBackupRestore.Create(Application);
   BackupRestore.Mode := backup;
   BackupRestore.ShowModal
end;

procedure TMainForm.AProductExecute(Sender: TObject);
begin
   FinputProducts := TFinputProducts.Create(Application);
   FinputProducts.ShowModal;
end;

procedure TMainForm.APublishExecute(Sender: TObject);
begin
   FPublish := TFPublish.Create(Application);
   FPublish.ShowModal;
end;

procedure TMainForm.AChangeProductExecute(Sender: TObject);
begin
{   ChangeProduct := TChangeProduct.Create(Application);
   ChangeProduct.ShowModal;
   dm.Product.Locate('Productid',_ProductID,[]);
   StatusBar1.Panels[1].Text:=dm.ProductProductTitle.AsString;
   RefreshCustomer;}
end;

procedure TMainForm.AAddProductExecute(Sender: TObject);
begin
   ProductADD := TProductADD.create(Application);
   ProductADD.ShowModal;
end;

procedure TMainForm.ACustomerFollowUpExecute(Sender: TObject);
begin
   FrFollowUp := TFrFollowUp.Create(Application);
   FrFollowUp.CustomerID := Dm.CustomerCustomerID.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.ShowModal;
end;

procedure TMainForm.FollowGridDblClick(Sender: TObject);
var ID :Integer;
begin
   FrFollowUp := TFrFollowUp.Create(Application);
   FrFollowUp.CustomerID := Dm.Select_FollowUP_By_DateCustomerID.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.FUID :=  dm.Select_FollowUP_By_DateFollowUPID.AsInteger;
   Dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID',dm.Select_FollowUP_By_DateFollowUPID.AsInteger,[]);
   Dm.Select_FollowUP_By_CustomerID.Edit;
//   Dm.Select_FollowUP_By_CustomerID.Last;
{  if Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString = '' then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString := _Today; }
   FrFollowUp.Showmodal;
   id := Dm.Select_FollowUP_By_DateFollowUPID.Value;

with    dm.Select_FollowUP_By_Date do
    begin
        Requery;
        Locate('FollowUPID',id,[]);
    end;
end;

procedure TMainForm.Button25Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate('1300/01/01',_today,cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate('1300/01/01',_today,0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate('1300/01/01',_today,1,_CurrentMarketerID);
   if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
   else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';

   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.Button18Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(_today,_today,cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(_today,_today,0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID, cboDoneStatus.KeyValue);
if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.Button21Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
   if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.Button22Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
   if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.Button23Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
   if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.btnSrchFollowClick(Sender: TObject);
var
   groupID : integer;
begin
   if lcbGroup.KeyValue>0 then
      groupID :=  lcbGroup.KeyValue
   else
      groupID := 0;
      
   if DonStatus.ItemIndex<0 then
      DonStatus.ItemIndex:=0;
   FollowGrid.Columns[7].Visible:=DonStatus.ItemIndex=0;
   if ShowAction.Checked then
      Dm.RefreshFollowUP(BDate.Text,Edate.Text,DonStatus.ItemIndex,ActionType.KeyValue,StrToInt( Bsuccess.Text),StrToInt(Esuccess.Text),Comment.Text,DonComment.Text,_CurrentMarketerID, chkCommentType.Checked,groupID) // Amin 1391/08/25
   else
      Dm.RefreshFollowUP(BDate.Text,Edate.Text,DonStatus.ItemIndex,0 ,StrToInt( Bsuccess.Text),StrToInt(Esuccess.Text),Comment.Text,DonComment.Text,_CurrentMarketerID, chkCommentType.Checked,groupID); // Amin 1391/08/25
if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
end;

procedure TMainForm.xpTabSheet1Show(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) then
   begin
      chkDoneStatusClick(chkDoneStatus);
         
      Dm.RefreshFollowUP_ByDate(_today,_today,cboDoneStatus.KeyValue,_CurrentMarketerID);
   end
   else
      Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID, cboDoneStatus.KeyValue);
end;

procedure TMainForm.AContractExecute(Sender: TObject);
begin
   FrContract := TFrContract.Create(Application,Dm.CustomerCustomerID.AsInteger);
   FrContract.ShowModal;
end;

procedure TMainForm.ShowActionClick(Sender: TObject);
begin
   //ActionType.Visible := ShowAction.Checked;
   ActionType.Enabled := ShowAction.Checked;
   ActionType.KeyValue := dm.ActionTypeActionTypeID.AsInteger;
end;

procedure TMainForm.xpBitBtn1Click(Sender: TObject);
begin
   FrViewByCalender:=TFrViewByCalender.Create(Application);
   FrViewByCalender.Show;
   FrViewByCalender.ManualDock(GridPanel,nil,alClient);
end;

function CommaSeperate(s:string):string; //860613m
Var
   S1:String;
   I:Integer;
   Slist:TStringList;
   Label EndMenu;
begin
   SList := TStringList.Create;
   While Pos(',',S)>0 Do Delete(S,Pos(',',S),1);
      For I:=Length(S) DownTo 1 Do
         IF Length(S)>3 Then
         Begin
            S1 := Copy(S,Length(S)-2,3);
            Slist.Add(S1);
            Delete(S,Length(S)-2,3);
         End;
   IF Length(S) > 0 Then
      Slist.Add(S);
   S := '';
   For I := Slist.Count-1 DownTo 0 Do
   Begin
      S1 := Slist.Strings[I];
      S := S + S1 + ',' ;
   End;
   Delete(S,Length(S),1);
   Result := S;
end;

procedure TMainForm.xpBitBtn2Click(Sender: TObject);
begin
   IF dm.Select_FollowUP_By_Date.RecordCount>0 THEN
   begin
      propertiesForm :=TPropertiesForm.Create(Application,dm.Select_FollowUP_By_DateCustomerID.AsInteger) ;
      PropertiesForm.showmodal;
   end
      else
         ShowMyMessage('ÅÌ€«„','ÂÌç «ÿ·«⁄« Ì Ì«›  ‰‘œ',[mbOK],mtInformation);
end;

procedure TMainForm.xpBitBtn10Click(Sender: TObject);
begin
   IF dm.Select_Contract_By_Date.RecordCount>0 THEN
   begin
      propertiesForm :=TPropertiesForm.Create(Application,dm.Select_Contract_By_DateCustomerID.AsInteger) ;
      PropertiesForm.showmodal;
   end;
end;

procedure TMainForm.xpBitBtn5Click(Sender: TObject);
begin
   RefreshContract(copy(_today,1,8)+'01',_today);
   ContractGrid.Columns[6].Visible:=false;
end;

procedure TMainForm.RefreshContract(FromDate:string;ToDate:string);
var ContractTypeId ,ProductId : integer;
    dsdbgContract :TDataSource;
begin

if dblSrchContractType.KeyValue = null then
    ContractTypeId  := 0 else     ContractTypeId  := dblSrchContractType.KeyValue;
if dblsrchProductID.KeyValue = null then
    ProductId  := 0 else     ProductId  := dblsrchProductID.KeyValue;

    dsdbgContract := TDataSource.Create(nil);
    dsdbgContract.DataSet := SpSearch_Contract_Advance(FromDate,ToDate,_MarketerID,ContractTypeId,ProductId,StrToIntDef(edtCustomer.Text,0),_UserTypeID);
//    dsdbgContract.DataSet.FieldByName('Amount').OnGetText :=ContractGridGetText;
    ContractGrid.DataSource := dsdbgContract;
  if CurrentGrid.DataSource.DataSet.Active then
      if  CurrentGrid.DataSource.DataSet.RecordCount > 0 then
          StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';

   ContractGrid.UpdateFooter;
end;

procedure TMainForm.btnSrchContactAdnavceClick(Sender: TObject);
begin
   RefreshContract(cBDATE.Text,CEdate.Text);
end;

procedure TMainForm.xpBitBtn7Click(Sender: TObject);
begin
   RefreshContract(copy(ShamsiIncDate(_today,0,-1,0),1,8)+'01',copy(ShamsiIncDate(_today,0,-1,0),1,8)+'31');
   ContractGrid.Columns[6].Visible:=false;
end;

procedure TMainForm.xpBitBtn3Click(Sender: TObject);
begin
   RefreshContract(copy(_today,1,4)+'/01/01',copy(_today,1,4)+_today);
   ContractGrid.Columns[6].Visible:=false;
end;

procedure TMainForm.SearchEditChange(Sender: TObject);
var
  S,Tmp:String;
  i:Integer;
begin
     { TODO -oparsa : 14030126 }
     ChangeProduct  := false ;
     if (dblProduct.KeyValue <> null) and (dblProductoldKeyValue <> dblProduct.KeyValue) then
     begin
       ChangeProduct := True ;
       dblProductoldKeyValue := dblProduct.KeyValue ;
     end;
     RefereshCustomerTimerTimer(self);
     { TODO -oparsa : 14030126 }
     S := Trim(SearchEdit.Text);
     S := replace(s,char(223),char(152));
     PhoneGrid.SelectedIndex:=0;

     if dblProduct.KeyValue <> null then
         StatusBar1.Panels[1].Text := dm.ProductProductTitle.AsString
     else
         StatusBar1.Panels[1].Text:= 'Â„Â „Õ’Ê·« ';

      with Dm.Customer do
      begin
          Filtered:=False;
          Tmp:=MakeFilterString;
          Tmp:=DeleteComma(Tmp);
          Tmp:=replace(Tmp,char(223),char(152));
          Filter := Tmp;
          Filtered:=True;
      end;
   CalcRecourdCount;
   { TODO -oparsa : 14030126 }
   {
   if dblProduct.KeyValue <> null then
      RefereshCustomerTimerTimer(self);
      }
   { TODO -oparsa : 14030126 }

end;

procedure TMainForm.FormResize(Sender: TObject);
begin
   pgcMain.ActivePageIndex:=2;
   pgcMain.ActivePageIndex:=3;
   pgcMain.TabWidth:=Width div 4 -50;

   pnlSearchContract        .Minimized :=True;
   pnlSearchFollow          .Minimized :=True;
end;

procedure TMainForm.btnHomeClick(Sender: TObject);
begin
   where:='';

{   s:=trim(TBitBtn(sender).Caption);
   if s<>'Â„Â' then
      where:=MakeStrSearch(QuotedStr(s[1]+'%'));

   if pos('-',s)<>0 then
   where:=where+' or '+MakeStrSearch(QuotedStr(s[3]+'%'));
 }
  Dm.Customer.Filter :='';
  edtEmail.Text := '';
  edtContactNumber.Clear;
  edtcity.Clear;
  edtState.Clear;
  dblGroups.KeyValue :=null;
  dblCustomerStatus.KeyValue :=null;
  dblState.KeyValue :=null;
  dblCity.KeyValue :=null;
  GroupByDate.Hide;
  OnlyCurrentMarketer.Checked:=false;
  dblProduct.KeyValue :=null;
  dblCustomerStatus.KeyValue :=null;
  SearchEdit.Text :='';
  gsrcCustomerStatusId := 0;
  gsrcProductId := 0;
  gsrcGroupId := 0;
  chkContractFinished.Checked :=false;
  Dm.Customer.Filtered:=False;
  //dm.Customer.Close;
  //dm.Customer.Open;
  CalcRecourdCount;
  RefreshCustomer;

{   OnlyCurrentMarketer.Checked:=false;
   SearchEdit.Text:='';
   where:='';
   GroupByDate.Hide;
   CityId:=0;
   CityPanel.Hide;
   RefreshCustomer;}
end;

Function TMainForm.CurrentGrid:TYDBGrid;
begin
   case pgcMain.ActivePageIndex of
      0: Result := dbgMyTasks;
      1: Result := ContractGrid;
      2: Result := FollowGrid;
      3: Result := PhoneGrid;
   end;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
   CurrentGrid.CustomizePrint ;
   Panel1.Align:=alClient;
   PhoneGrid.Align:=alClient;
   GroupBox2.Align:=alTop;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then     CurrentGrid.ExportToExcel
 else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then     CurrentGrid.Print
 else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then
      CurrentGrid.ExportToWord else ShowMessage('‘„« „ÃÊ“ ê—› ‰ Œ—ÊÃÌ «“ ·Ì”  —« ‰œ«—Ìœ');

end;

procedure TMainForm.MonthListClick(Sender: TObject);
begin
   RefreshCustomer;
end;

procedure TMainForm.AmonthExecute(Sender: TObject);
begin
   GroupByDate.Visible:=not GroupByDate.Visible;
end;

procedure TMainForm.keyboardTimerTimer(Sender: TObject);
Var S : String;
begin
   Inc(D);
   if D = 0 then
      Exit;
   S := Trim(SearchEdit.Text);
   if Length(S) > 0 then
   begin
      keyboardTimer.Enabled := False;
      Where := MakeStrSearch(S);
      RefreshCustomer;
   end;
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
   Frep2 := TFrep2.Create(Application);
   Frep2.ShowModal;
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
//   FrInsertrateRep := TFrInsertrateRep.Create(Application);
//   FrInsertrateRep.ShowModal;
    ShowMessage('ê“«—‘ ÃœÌœ »«Ìœ ÿ—«ÕÌ ê—œœ');
end;

procedure TMainForm.NHostClick(Sender: TObject);
begin
   {«Ì‰ ›—„ Õ–› ‘œ
   FrWebsite := TFrWebsite.Create(Application);
   FrWebsite.ShowModal;}

   // ⁄—Ì› ”«Ì Â«Ì «Ì‰ —‰ Ì
   FMHost := TFMHost.Create(Application);
   FMHost.ShowModal;

end;

function NowTime:string;
var
   i,j : byte;
begin
   i:=HourOf(now);
   j:=MinuteOf(Now);
   if i<10 then Result:='0'+IntToStr(i) else Result:=IntToStr(i);
   if j<10 then Result:=Result+':0'+IntToStr(j) else Result:=Result+':'+IntToStr(j);

end;

procedure TMainForm.FollowGridNeedFontCondition(Column: TColumn;
          State: TGridDrawState; var F: TFont);
begin
   f.Color:=clBlack;
   try
      with dm do
      if (Select_FollowUP_By_DateDoneStatusID.AsInteger=1) then
         if (Select_FollowUP_By_DateToDoDate.AsString<_today) then
            f.Color:=clred
      else
         if (Select_FollowUP_By_DateToDoDate.AsString=_today) then
            if (Select_FollowUP_By_DateToDoTime.AsString<>'') then
               if (Select_FollowUP_By_DateToDoTime.AsString<=NowTime) then
                  f.Color:=clred
   except
   end;
end;

procedure TMainForm.N30Click(Sender: TObject);
begin
   Frep3 := TFrep3.Create(Application);
   Frep3.ShowModal;
end;

procedure TMainForm.Action5Execute(Sender: TObject);
begin
   FmReportSalary := TFmReportSalary.Create(Application);
   FmReportSalary.ShowModal;
end;

procedure TMainForm.N34Click(Sender: TObject);
begin
   FrReportAll := TFrReportAll.Create(Application);
   FrReportAll.ShowModal;
end;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.showmodal;
end;

procedure TMainForm.AreportFormExecute(Sender: TObject);
begin
   FrMakeUserTableRep := TFrMakeUserTableRep.Create(Application);
   FrMakeUserTableRep.ShowModal;
end;

procedure TMainForm.AAddRefrenceTableExecute(Sender: TObject);
begin
   FrInputRefferenceTable := TFrInputRefferenceTable.Create(Application);
   FrInputRefferenceTable.ShowModal;
end;

procedure TMainForm.AAtachmentsExecute(Sender: TObject);
begin
   Dm.ShowAttachments(dm.Customer,true);
end;

procedure TMainForm.N38Click(Sender: TObject);
begin
   inherited;
   AccessForm:=TAccessForm.Create(Application);
   AccessForm.ShowModal;
end;

procedure TMainForm.Edit2Change(Sender: TObject);
begin
   inherited;
   Groups.Locate('GroupTitle',TEdit(Sender).Text,[lopartialkey]);
end;

procedure TMainForm.NStoreClick(Sender: TObject);
begin
   inherited;
   FMStore := TFMStore.Create(Application);
   FMStore.ShowModal;
end;

procedure TMainForm.NFirstArtGroupClick(Sender: TObject);
begin
   inherited;
   FMFirstArtGroup := TFMFirstArtGroup.Create(Application);
   FMFirstArtGroup.ShowModal;
end;

procedure TMainForm.NSecendArtGroupClick(Sender: TObject);
begin
   inherited;
   FMSecendArtGroup := TFMSecendArtGroup.Create(Application);
   FMSecendArtGroup.ShowModal;
end;

procedure TMainForm.NUnitClick(Sender: TObject);
begin
   inherited;
   FMUnit := TFMUnit.Create(Application);
   FMUnit.ShowModal;
end;

procedure TMainForm.NArtServiceClick(Sender: TObject);
begin
   inherited;
   FMArtService := TFMArtService.Create(Application);
   FMArtService.ShowModal;
end;

procedure TMainForm.NArticleClick(Sender: TObject);
begin
   inherited;
   FMArticle := TFMArticle.Create(Application);
   FMArticle.ShowModal;
end;

procedure TMainForm.NCheque1Click(Sender: TObject);
Var
   FormScroll : TForm;
   FormClass :TFormClass;
begin
   inherited;
   FMCheque := TFMCheque.Create(Application);
   FMCheque.Factor_ID := 0;
   if Sender = NCheque1 then
      FMCheque.ChequeType := 1  //çﬂÂ«Ì œ—Ì«› Ì
   else
      FMCheque.ChequeType := 2; //çﬂÂ«Ì Å—œ«Œ Ì
   FMCheque.ShowModal;
end;

procedure TMainForm.NCheque2Click(Sender: TObject);
begin
   inherited;
   NCheque1Click(Sender);
end;

//EnterData_CallForm(1,' ⁄—Ì› „Õ Ê«Ì ⁄ﬂ”','ﬂœ','⁄‰Ê«‰ „Õ Ê«Ì ⁄ﬂ”',' Ê÷ÌÕ« ',_UserID  );
Procedure TMainForm.EnterData_CallForm(aData_Ref:integer ; aFormCaption,aCodeCaption,aNameCaption,aDescCaption:String;aUsers_ID:Integer);
begin
   FMEnterData := TFMEnterData.Create(Application);
   With FMEnterData do
   begin
      Caption := aFormCaption;
      Data_Ref := aData_Ref;
      CodeCaption := aCodeCaption;
      NameCaption := aNameCaption;
      DescCaption := aDescCaption;
      Users_ID := aUsers_ID;
      ShowModal;
   end;
end;

procedure TMainForm.N31Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'F'; // ›—„ ›«ò Ê— ›—Ê‘
   FMFactor.ShowModal;
end;

procedure TMainForm.N39Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'KH'; // ›—„ ›«ò Ê— Œ—Ìœ
   FMFactor.ShowModal;
end;

procedure TMainForm.N40Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'P'; // ›—„ ÅÌ‘ ›«ò Ê—
   FMFactor.ShowModal;
end;

procedure TMainForm.N41Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'BF'; // ›—„ ›«ò Ê— »—ê‘  «“ ›—Ê‘
   FMFactor.ShowModal;
end;

procedure TMainForm.N42Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'BKH'; // ›—„ ›«ò Ê— »—ê‘  «“ Œ—Ìœ
   FMFactor.ShowModal;
end;

procedure TMainForm.N43Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'A'; // ›—„ ›«ò Ê— «„«‰Ì
   FMFactor.ShowModal;
end;

procedure TMainForm.N44Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'E'; // ›—„ ›«ò Ê— «” Â·«ﬂ
   FMFactor.ShowModal;
end;

procedure TMainForm.GroupsAfterScroll(DataSet: TDataSet);
begin
   inherited;
   GroupId := GroupsGroupID.AsInteger;
   RefreshCustomer;
end;

procedure TMainForm.BitBtn7Click(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   RefreshContract('1300/01/01','1500/01/01');
   ContractGrid.Columns[6].Visible:=false;

end;

procedure TMainForm.YDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
//   DBGrid_SetFocusAfterExit(YDBGrid2,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TMainForm.YDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
//   DBGrid_SetFocusAfterExit(YDBGrid1,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TMainForm.PhoneGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
{//
 DBGrid_SetFocusAfterExit(PhoneGrid,Rect,DataCol,Column,State,clHighlightText);
    if UpperCase(Column.Title.Caption) = UpperCase('—œÌ›') then
     begin
      if  PhoneGrid.DataSource.DataSet.RecNo > 0 then
            if gdFocused in State then
            begin
               edtRecordNo.Left:=  PhoneGrid.Width - PhoneGrid.Columns[0].Width - 14;
               edtRecordNo.Top:=Rect.Top+PhoneGrid.Top;
               edtRecordNo.Width:=PhoneGrid.Columns[0].Width;
               edtRecordNo.Visible:=True;
               if PhoneGrid.DataSource.DataSet.RecNo > 0 then
               edtRecordNo.Text:= IntToStr(PhoneGrid.DataSource.DataSet.RecNo)
               else edtRecordNo.Text:='0';
            end
            else
            begin
               // ShowMessage(IntToStr(Rect.Top));
                edtRecordNo.Visible:=false;
                with PhoneGrid do
                begin

                  Canvas.FillRect(Rect);
                  Canvas.TextOut(Rect.Left, Rect.Top,IntToStr(PhoneGrid.DataSource.DataSet.RecNo));
                end;
            end;
      end
    else  edtRecordNo.Visible:=false;}
end;

procedure TMainForm.FollowGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   inherited;
   DBGrid_SetFocusAfterExit(FollowGrid,Rect,DataCol,Column,State,clHighlightText);
end;

procedure TMainForm.SBRefreshClick(Sender: TObject);
var Id :integer;
begin

   Id := dm.CustomerCustomerID.AsInteger;
   { TODO -oparsa : 14030126 }
   dm.Customer.Close;
   dm.Customer.Open;
   SearchEditChange(Sender);

  {Application.CreateForm(TFPleaseWait, FPleaseWait);
  FPleaseWait.OpenState := 'Customer';
  FPleaseWait.CustomerId := Id;
  FPleaseWait.ShowModal;
  FPleaseWait.Free;   }
   { TODO -oparsa : 14030126 }

   dm.Customer.Locate('CustomerId',Id,[]);
end;

procedure TMainForm.NHostGroupClick(Sender: TObject);
begin
   inherited;
   MainForm.EnterData_CallForm(29,' ⁄—Ì› ê—ÊÂ ¬œ—”Â«Ì «Ì‰ —‰ Ì','ﬂœ','‰«„ ê—ÊÂ ¬œ—”Â«Ì «Ì‰ —‰ Ì',' Ê÷ÌÕ« ',0);//HostGroup
end;

procedure TMainForm.N32Click(Sender: TObject);
begin
   inherited;
   if dm.CustomerCustomerStatusID.AsInteger=2 then
   begin
      FM_NewDongleWrite:=TFM_NewDongleWrite.Create(Application,dm.CustomerCustomerID.AsInteger,Dm.CustomerCompanyName.AsString,'  ‰ŸÌ„ ﬁ›· »—«Ì '+dm.Customernickname.AsString);
//      FM_NewDongleWrite.Caption:=;
{      if Dm.CustomerCustomerID.AsInteger=20974 then
         FM_NewDongleWrite.CompanyName:=Dm.CustomerCompanyName.AsString+'mm'+'(„‰ °  Ê ° «Ê ...„« «Ì—«‰Ì«‰)';}
      FM_NewDongleWrite.ShowModal;
   end
      else
         ShowMessage('·ÿ›« Ìﬂ „‘ —Ì ﬁÿ⁄Ì Ì« œ«—«Ì ⁄ﬁœ ﬁ—«—œ«œ —« «‰ Œ«» ‰„«ÌÌœ');
end;

procedure TMainForm.N25Click(Sender: TObject);
begin
   inherited;
   Fcrack := TFcrack.Create(Application);
   Fcrack.ShowModal;
end;

procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
   inherited;
   if NInsertCustomer.Visible then
      AinsertExecute(Sender);
end;

procedure TMainForm.NInsertCustomerClick(Sender: TObject);
begin
   inherited;
   AinsertExecute(Sender);
end;

procedure TMainForm.NSystemSettingsClick(Sender: TObject);
begin
   inherited;
   FmSystemSettings := TFmSystemSettings.Create(nil);
   FmSystemSettings.ShowModal;
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  inherited;
   with TfrmContractType.create(Application) do
             ShowModal;
end;

procedure TMainForm.N51Click(Sender: TObject);
begin
  inherited;
  with  TfruserType.Create(nil) do
      ShowModal

end;

procedure TMainForm.pgcMainChange(Sender: TObject);
begin
  inherited;
With pgcMain do
begin
   if (_ShowContract = false) and
      (ActivePageIndex = 1) then
      begin
          ActivePage.Visible :=false;
          ShowMessage('‘„« œ” —”Ì »—«Ì „‘«ÂœÂ ﬁ—«—œ«œÂ« —« ‰œ«—Ìœ');
          ActivePageIndex := 3;
          pgM.ActivePage := TabCustomer;
      end;
   if (_ShowMyAction = false) and
      (ActivePageIndex = 0) then
      begin
          ActivePage.Visible :=false;
          ShowMessage('‘„« œ” —”Ì „‘«ÂœÂ «Ì‰ ’›ÕÂ —« ‰œ«—Ìœ');
          ActivePageIndex := 3;
          pgM.ActivePage := TabCustomer;
      end;

   PnlAllAct.Visible:=_BtnAllAct;
   PnlAllContract.Visible:=_BtnAllContract;
   ContractGrid.Columns[6].Visible:=false;
   FollowGrid.Columns[9].Visible:=False;

end;
  CurrentGrid;

if CurrentGrid.DataSource <> nil then
  if (CurrentGrid.DataSource.DataSet.Active)then
      if  CurrentGrid.DataSource.DataSet.RecordCount > 0 then
          StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';
end;

procedure TMainForm.edtState1KeyPress(Sender: TObject; var Key: Char);
var i:integer;
begin
  inherited;
 if not (key in ['1','2','3','4','5','6','7','8','9','0',#8]) then
     key:=#0;
end;

procedure TMainForm.edtState1Change(Sender: TObject);
begin
  inherited;
if edtState.Text <> '' then
 begin
   if State.Locate('StateID',StrtoInt (edtState.Text),[])and(edtstate.Focused) then
          dblState.KeyValue := StrtoInt (edtState.Text)
          else     dblState.KeyValue := null
  end
  else begin
        dblState.KeyValue := null;
        dblCity.Enabled :=false;
        edtcity.Enabled :=False;
        edtcity.Clear;
        gsrcStateId :=  0;
      end;


      SearchEditChange(Sender);

end;

procedure TMainForm.DStateDataChange(Sender: TObject; Field: TField);
begin
  inherited;

if (dblState.KeyValue <> 0)and(dblState.KeyValue <> null) then
begin
  //edtState.Text := StateStateID.AsString;
  edtState.Text := dblState.KeyValue ;
  with dm.CitysFilterByState do
  begin
    Close;
    //Parameters.ParamByName('StateID').Value :=  StateStateID.Value;
    Parameters.ParamByName('StateID').Value :=  dblState.KeyValue ;
    open;
  end;
  dblCity.Enabled :=True;
  edtcity.Enabled :=True;

  edtcity.Clear;
end
{ TODO -oparsa : 14030126 }
else  if (dblState.KeyValue = 0) then
begin

  edtcity.Clear;
  edtState.Clear ;
  dblCity.KeyValue := 0 ;

  dblCity.Enabled := False;
  edtcity.Enabled := False;


end;
{ TODO -oparsa : 14030126 }


  //dblCity.KeyValue :=CitysFilterByStateCityId.Value;
end;

procedure TMainForm.edtcityChange(Sender: TObject);
begin
  inherited;
if edtcity.Text <> '' then
 begin
   if dm.CitysFilterByState.Locate('CityID',StrtoInt (edtcity.Text),[])and(edtcity.Focused) then
         dblCity.KeyValue := StrtoInt (edtcity.Text)
       //else dblCity.KeyValue := null;
   end
  else dblCity.KeyValue := null;


  SearchEditChange(Sender);
end;

procedure TMainForm.N52Click(Sender: TObject);
begin
  inherited;
   with TFrTaxPerYear.create(Application) do
             ShowModal;
end;

procedure TMainForm.btnContractClick(Sender: TObject);
begin
  inherited;
   FrContract := TFrContract.Create(Application,Dm.CustomerCustomerID.AsInteger);
   FrContract.ShowModal;
end;

procedure TMainForm.edtContactNumberChange(Sender: TObject);
begin
  inherited;
with Dm.Customer do
begin
          PhoneGrid.SelectedIndex:=0;
          Filtered:=False;
          gsrcContactNumberm := edtContactNumber.text;
          Filtered:=True;

      CalcRecourdCount;

end;
// RefreshCustomer;
end;

procedure TMainForm.dblStateExit(Sender: TObject);
begin
  inherited;
 if dblState.KeyValue = null then edtState.Clear;
end;

procedure TMainForm.dblCityExit(Sender: TObject);
begin
  inherited;
 if dblCity.KeyValue = null then edtcity.Clear;
end;

procedure TMainForm.dblStateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
   if key = vk_delete then edtState.Clear;
end;

procedure TMainForm.dblCityKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key = vk_delete then edtcity.Clear;
end;

procedure TMainForm.edtEmailEnter(Sender: TObject);
begin
  inherited;
   Keyboard_English;
   TEditEnter(Sender);
end;

procedure TMainForm.edtEmailExit(Sender: TObject);
begin
  inherited;
   Keyboard_Farsi;
   TEditEnter(Sender);

end;

procedure TMainForm.edtProductChange(Sender: TObject);
begin
  inherited;
RefreshCustomer;
end;

procedure TMainForm.edtStatusChange(Sender: TObject);
begin
  inherited;
RefreshCustomer;
end;

procedure TMainForm.ContractTabSheetEnter(Sender: TObject);
begin
  inherited;
  SetdblContractType;
end;

procedure TMainForm.SetdblContractType;
var  dsdblsrchContractType :TDataSource;

begin
    dsdblsrchContractType            := TDataSource.Create(Self);

    SetQueryDataSet(dsdblsrchContractType,qrydblsrchContractType
                                          ,'select  ContractTypetitle, ContractTypeID,ContractTypeCode from ContractType where ContractTypeID in (select ContractTypeId from UserTypeContractType where UserTypeID =  '+IntToStr(_UserTypeID)+') or '+IntToStr(_UserTypeID)+' = 0'
                                                                      ,Dm.YeganehConnection);

     if qrydblsrchContractType.RecordCount >0 then
     begin
         qrydblsrchContractType.Fields[0].Alignment:=   taRightJustify;
         SetDbLookUp(dblsrchContractType,dsdblsrchContractType,'ContractTypetitle','ContractTypeID');
     end;

end;

procedure TMainForm.pnlSearchContractAfterMinimized(Sender: TxpPanel;
  ASizeRestored: Boolean);
begin
  inherited;
  If not pnlSearchContract.Minimized then
        CbDate.SetFocus;

end;

procedure TMainForm.BitBtn2Click(Sender: TObject);
begin
  inherited;
   RefreshContract(copy(ShamsiIncDate(_today,0,+1,0),1,8)+'01',copy(ShamsiIncDate(_today,0,+1,0),1,8)+'31');
   ContractGrid.Columns[6].Visible:=false;
end;

procedure TMainForm.ContractGridGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
  var Value:String;
begin
  inherited;
//  text := AddSeprator(Value,length(Value) div 3);
//  Text:= AddSeprator(Text,length(Text) div 3);
end;

procedure TMainForm.btnSrchCustomerAdvanceClick(Sender: TObject);
begin
  inherited;
      RefreshCustomer;
end;

procedure TMainForm.edtEmailChange(Sender: TObject);
begin
  inherited;
      with Dm.Customer do
      begin
          Filtered:=False;
          gsrcEmail := Trim(edtEmail.Text);
          Filtered:=True
      end;
      CalcRecourdCount;

end;

procedure TMainForm.dblCustomerStatusCloseUp(Sender: TObject);
begin
  inherited;
      with Dm.Customer do
      begin
          Filtered:=False;
          if dblCustomerStatus.KeyValue <> null then
          gsrcCustomerStatusId :=  dblCustomerStatus.KeyValue
          else gsrcCustomerStatusId :=  0;
          Filtered:=True;

      end;
      CalcRecourdCount;

end;

procedure TMainForm.dblCustomerStatusKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);
{      with Dm.Customer do
      begin
          Filtered:=False;
          if dblCustomerStatus.KeyValue <> null then
          gsrcCustomerStatusId :=  dblCustomerStatus.KeyValue
          else gsrcCustomerStatusId :=  0;
          Filtered:=True
      end;
      CalcRecourdCount;}
end;

procedure TMainForm.dblProductCloseUp(Sender: TObject);
begin
  inherited;
      with Dm.Customer do
      begin
          Filtered:=False;
          if dblProduct.KeyValue <> null then
              gsrcProductId :=  dblProduct.KeyValue
          else gsrcProductId :=  0;
          Filtered:=True;

      end;
      CalcRecourdCount;

if dblProduct.KeyValue <> null then
   StatusBar1.Panels[1].Text:=dm.ProductProductTitle.AsString
      else
      StatusBar1.Panels[1].Text:= 'Â„Â „Õ’Ê·« ';
end;

procedure TMainForm.N53Click(Sender: TObject);
begin
  inherited;
   with TfrGuaranteeType.create(Application) do
             ShowModal;
end;

procedure TMainForm.N55Click(Sender: TObject);
begin
  inherited;
   With TfrReportDongle.Create(Application) do
              ShowModal;
end;

procedure TMainForm.TabSheet1Show(Sender: TObject);
begin
  inherited;
{  with dm do
  begin
    BugType.Close;
    BugType.Open;
    BugPriority.Close;
    BugPriority.Open;
    BugStatus.Close;
    BugStatus.Open;
  end;
 }
end;

procedure TMainForm.edtRegisterDateSRKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  If not (key in ['1'..'6','7','8','9','/','0',char(vk_delete),char(vk_back)]) then
      Key := #0;
end;

procedure TMainForm.btnViwCustomerClick(Sender: TObject);
var Id :Integer;
Begin
if dm.Select_FollowUP_By_Date.RecordCount = 0 then exit;
   propertiesForm := TPropertiesForm.Create(Application,dm.Select_FollowUP_By_DateCustomerID.AsInteger) ;
   PropertiesForm.Showmodal;
   id := Dm.Select_FollowUP_By_DateFollowUPID.Value;
   Dm.Select_FollowUP_By_Date.Requery;
   Dm.Select_FollowUP_By_Date.Locate('FollowUPID',id,[]);
   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.N56Click(Sender: TObject);
begin
  inherited;
   if dm.CustomerCustomerStatusID.AsInteger=2 then
   begin
      FmSetLock:=TFmSetLock.Create(Application);
      FmSetLock.CustomerID:=dm.CustomerCustomerID.AsInteger;
      FmSetLock.Caption:='  ‰ŸÌ„ ﬁ›· »—«Ì '+dm.Customernickname.AsString;
      FmSetLock.CompanyName:=Dm.CustomerCompanyName.AsString;
      FmSetLock.ShowModal;
   end
      else
         ShowMessage('·ÿ›« Ìﬂ „‘ —Ì ﬁÿ⁄Ì Ì« œ«—«Ì ⁄ﬁœ ﬁ—«—œ«œ —« «‰ Œ«» ‰„«ÌÌœ');

end;

procedure TMainForm.N26Click(Sender: TObject);
begin
  inherited;
   with TfrActionType.create(Application) do
             ShowModal;
end;

Procedure TMainForm.CalcRecourdCount;
Begin

if Dm.Customer.Active then
     StatusBar1.Panels[2].Text :='  ⁄œ«œ '+ IntToStr(Dm.Customer.recordcount);

end;

procedure TMainForm.N29Click(Sender: TObject);
begin
  inherited;
  with TfrUpdateOldAttachFile.Create(Application) do
      ShowModal;
end;

procedure TMainForm.N57Click(Sender: TObject);
begin
  inherited;
  with TfrDefineHoliday.Create(Application) do
      ShowModal;
end;

procedure TMainForm.dblProductKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);

if dblsrchProductID.KeyValue <> null then
   StatusBar1.Panels[1].Text:=dm.ProductProductTitle.AsString
   else
      StatusBar1.Panels[1].Text:= 'Â„Â „Õ’Ê·« ';
end;

procedure TMainForm.dblGroupsCloseUp(Sender: TObject);
begin
  inherited;
      with Dm.Customer do
      begin
          Filtered:=False;
          if dblGroups.KeyValue <> null then
          gsrcGroupId :=  dblGroups.KeyValue
          else gsrcGroupId :=  0;
          Filtered:=True;

      end;
      CalcRecourdCount;
end;

procedure TMainForm.dblGroupsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);
end;

procedure TMainForm.dblCityCloseUp(Sender: TObject);
begin
  inherited;
  edtcity.Text := dm.CitysFilterByStateCityId.AsString;
  SearchEditChange(Sender);
end;

procedure TMainForm.dblCityKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  edtcity.Text := dm.CitysFilterByStateCityId.AsString;
  SearchEditChange(Sender);
  edtState.SetFocus;

end;
Function TMainForm.MakeFilterString :WideString;
var Where :WideString;
    txt:String;
begin

  if Trim(edtContactNumber.Text) <> '' then
      Where :=  ' ( SearchInt  like ''%'+ edtContactNumber.Text+'%'' )';

  txt :=   replace1(Trim(SearchEdit.Text),char(223),char(152));
  if (Trim(txt) <> '') then
     if Where <> '' then
     Where := Where+ ' and '+' (SearchStr like ''%'+txt+'%'' )'
     else
     Where := Where +' (SearchStr like ''%'+txt+'%'' )';

  if trim(edtEmail.Text) <> '' then
     if Where <> '' then
         Where := Where + ' and ' +' EmailAddress like ''%'+Trim(edtEmail.Text)+'%'''
     else
         Where := ' EmailAddress like ''%'+Trim(edtEmail.Text)+'%''';

  if (dblCustomerStatus.KeyValue <> null) AND (dblCustomerStatus.KeyValue) <> 0 Then
     if Where <> '' then
           Where := Where + ' and '+' CustomerStatusID ='+IntToStr(dblCustomerStatus.KeyValue)
      else
           Where := ' CustomerStatusID ='+IntToStr(dblCustomerStatus.KeyValue);

  if (dblProduct.KeyValue <> null)and( dblProduct.KeyValue <> 0 ) then
     if Where <> '' then
          Where := Where + ' and  ProductsID  like ''%|' + IntToStr(dblProduct.KeyValue)+'|%'' '
    else
          Where := '   ProductsID  like ''%|' + IntToStr(dblProduct.KeyValue)+'|%'' ';

  { TODO -oparsa : 14030126 }
  //if dblGroups.KeyValue <> null then
  if (dblGroups.KeyValue <> null) and (dblGroups.KeyValue <> 0) then
  { TODO -oparsa : 14030126 }
     if Where <> '' then
           Where := Where + ' and '+' GroupId ='+IntToStr(dblGroups.KeyValue)
      else
           Where := ' GroupId ='+IntToStr(dblGroups.KeyValue);

  { TODO -oparsa : 14030126 }
  //if dblState.KeyValue <> null then
  if (dblState.KeyValue <> null) and  (dblState.KeyValue <> 0)  then
  { TODO -oparsa : 14030126 }
     if Where <> '' then
           Where := Where + ' and '+' StateID ='+IntToStr(dblState.KeyValue)
      else
           Where := ' StateID ='+IntToStr(dblState.KeyValue);

  { TODO -oparsa : 14030126 }
  //if dblCity.KeyValue <> null then
  if (dblCity.KeyValue <> null) and  (dblCity.KeyValue <> 0)   then
  { TODO -oparsa : 14030126 }
     if Where <> '' then
           Where := Where + ' and '+' CityId ='+IntToStr(dblCity.KeyValue)
      else
          Where := ' CityId ='+IntToStr(dblCity.KeyValue);

  if OnlyCurrentMarketer.Checked then
     if Where <> '' then
           Where := Where + ' and '+' MarketerID ='+IntToStr(_MarketerID)
      else
           Where := ' MarketerID ='+IntToStr(_MarketerID);

  if chkContractFinished.Checked then
      if where <> '' then
          where := where + ' and  FinishedContractProducts <> '''''
       else  where := ' FinishedContractProducts <> ''''';

    Result :=  Where;
end;

procedure TMainForm.PhoneGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
 {    if PhoneGrid.DataSource.DataSet.FieldByName('FinishedContractProducts').Value <> '' then
        Color:=$00C4BBF7 ;
}

end;

procedure TMainForm.PhoneGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
    if PhoneGrid.DataSource.DataSet.FieldByName('FinishedContractProducts').Value <> '' then
        f.Color:=clRed;

end;

procedure TMainForm.BitBtn6Click(Sender: TObject);
begin
  inherited;
  with TfrCase.Create(Application,false) do
      ShowModal;
      qryMyTasks.Requery;
end;

procedure TMainForm.N59Click(Sender: TObject);
begin
  inherited;
  with TfrCaseBasicData.Create(Application) do
      ShowModal;
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  inherited;
  if qryMyTasks.state in [dsedit,dsinsert] then
  begin
    qryMyTasks.Post;
    qryMyTasks.Requery;
  end;
end;

procedure TMainForm.btnRefrenceCancelClick(Sender: TObject);
begin
  inherited;
  grbReferenceComment.Visible:=False;
end;

procedure TMainForm.btnReferClick(Sender: TObject);
begin
  inherited;
  if dblUserRefrence.KeyValue <> null then
  begin
{    grbReferenceComment.Left :=  dbgMyTasks.Width - grbReferenceComment.Width;
    grbReferenceComment.Top :=  pnlDescTask.Top +80;}
    grbReferenceComment.Visible :=True;
    grbReferenceComment.BringToFront;
  end;
end;

procedure TMainForm.dbgMyTasksCellClick(Column: TColumn);
begin
  inherited;
grbReferenceComment.Visible :=False;

end;

procedure TMainForm.btnSaveReferenceClick(Sender: TObject);
Var NewTaskId :integer;
begin
  inherited;
 if not(qryMyTasks.state in [dsedit,dsinsert]) then qryMyTasks.Edit;
 qryMyTasksTodoDate.AsString := _Today;
 qryMyTasksStatusId.Value := 4;
 qryMyTasks.Post;
  with SpInsert_Task,Parameters do
  begin
     close;
     ParamByName('@CaseId')       .Value := qryMyTasksCaseId.AsString;
     ParamByName('@Desc')         .Value := mmoDescription.Text;
     ParamByName('@UserRefrence') .Value := dblUserRefrence.KeyValue;
     ExecProc;
     NewTaskId := ParamValues['@RETURN_VALUE'];
  end;
  if messageShowString('ﬂ«— À»  ê—œÌœ °¬Ì« ÅÌÊ” Ì »—«Ì «Ì‰ﬂ«— „ÌŒÊ«ÂÌœ «÷«›Â ﬂ‰Ìœø',True) then
     with TfrAttachments.create(Application,1,NewTaskId,false) do
             ShowModal;

  grbReferenceComment.Visible :=false;
  qryMyTasks.Requery;
end;

procedure TMainForm.dsMyTasksDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  with dm.UserByCaseFilter do
  begin
    Close;
    Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
    Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
    Parameters.ParamByName('UserId').Value := _UserID;
    Open;
  end;
end;

procedure TMainForm.dbgMyTasksDblClick(Sender: TObject);
begin
  inherited;
if qryMyTasks.RecordCount > 0 then
  with  TfrCaseAdd.Create(Self,qryMyTasksCaseId.Value,qryMyTasksCaseTitle.Text,qryMyTasksProductId.Value,qryMyTasksCaseTypeId.Value,qryMyTasksregisterUserId.value,qryMyTasksCompleted.value,qryMyTasksComment.Text,qryMyTasksCasePriorityID.AsInteger) do
            ShowModal;

end;

procedure TMainForm.btnCasesAllClick(Sender: TObject);
begin
  inherited;
  with TfrCase.Create(Application,true) do
      ShowModal;

end;

procedure TMainForm.btnFinishCaseClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('»« « „«„ ﬂ«— „Ê—œ „—»ÊÿÂ ‰Ì“ ﬂ«„· ŒÊ«Âœ ‘œ° »—«Ì «Ì‰ﬂ«— «ÿ„Ì‰«‰ œ«—Ìœø',mtConfirmation,[mbyes,mbno],0)=mryes then
  begin
{      grbCaseFinish.Left :=  8;
      grbCaseFinish.Top :=  pnlDescTask.Top +80;}
      grbCaseFinish.Visible :=True;
  end;
end;
procedure TMainForm.btnSaveCaseFinishClick(Sender: TObject);
begin
  inherited;
   qryMyTasks.Edit;
   qryMyTasksTodoDate.AsString := _Today;
   qryMyTasks.Post;

  with TADOQuery.Create(nil) do
  begin
     Connection := Dm.YeganehConnection;
     SQL.Text :='Update Cases set Completed = 1,CompleteDate = '''+_Today+''',CompleteComment= '''+mmoCompleteComment.Text+''' where caseId = '+qryMyTasksCaseId.AsString;
    ExecSQL;
  end;
  qryMyTasks.Requery;
  grbCaseFinish.Visible :=false;
end;



procedure TMainForm.btnCaseFinishCancelClick(Sender: TObject);
begin
  inherited;
  grbCaseFinish.Visible :=false;
end;

procedure TMainForm.N61Click(Sender: TObject);
begin
  inherited;
   with TfrCommisionPercent.create(Application) do
             ShowModal;

end;

procedure TMainForm.ContractGridDblClick(Sender: TObject);
begin
  inherited;
   FrContract := TFrContract.Create(Application,ContractGrid.DataSource.DataSet.FieldByName('CustomerId').Value);
   FrContract.ShowModal;
end;

procedure TMainForm.btnImageBRClick(Sender: TObject);
begin
  inherited;
if qryMyTasks.RecordCount > 0 then
     with TfrAttachments.create(Application,1,qryMyTasksTaskID.Value,false) do
             ShowModal;
end;

procedure TMainForm.btnCustomerReportXClick(Sender: TObject);

begin
  inherited;
     with TfrCustomerReport.create(Application) do
             ShowModal;
end;

procedure TMainForm.BtnAllContractClick(Sender: TObject);
var ContractTypeId ,ProductId : integer;
    dsdbgContract :TDataSource;
begin
  inherited;
   ContractGrid.Columns[6].Visible:=_BtnAllContract;
  if dblSrchContractType.KeyValue = null then
    ContractTypeId  := 0 else     ContractTypeId  := dblSrchContractType.KeyValue;
  if dblsrchProductID.KeyValue = null then
    ProductId  := 0 else     ProductId  := dblsrchProductID.KeyValue;

    dsdbgContract := TDataSource.Create(nil);
    dsdbgContract.DataSet := SpSearch_Contract_Advance(ContractDateEditFrom.Text,ContractDateEditTo.Text,0,0,0,0,0);
    ContractGrid.DataSource := dsdbgContract;
  if CurrentGrid.DataSource.DataSet.Active then
      if  CurrentGrid.DataSource.DataSet.RecordCount > 0 then
          StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';

   ContractGrid.UpdateFooter;

end;

procedure TMainForm.BtnAllActClick(Sender: TObject);
begin
  inherited;
   FollowGrid.Columns[9].Visible:=_BtnAllAct;
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,cboDoneStatus.KeyValue,0)
   else
      Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,1,0);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,1,0, cboDoneStatus.KeyValue);
   IF Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := '  ⁄œ«œ ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
   Else
      StatusBar1.Panels[2].Text := '  ⁄œ«œ 0';

end;

procedure TMainForm.N60Click(Sender: TObject);
begin
  inherited;
   FrCancleReport := TFrCancleReport.Create(Self);
   FrCancleReport.ShowModal;

end;

PROCEDURE TMainForm.SetMarketerRate;
begin
   With dm.MarketerInsertRate,parameters do
   Begin
    Close;
    ParamByName('@FromDate').value:=copy(_today,1,8)+'01';
    ParamByName('@ToDate').value:=_today ;
    Open;
   End;
   dm.MarketerInsertRate.First;
   IF UpperCase(_AreYouYeganeh) =UpperCase('True') Then
        SetActiveUserOnStatusBar;
//     StatusBar1.Panels[3].Text:='‰Ê» :'+dm.MarketerInsertRateMarketerTitle.AsString;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  inherited;
//  SetMarketerRate;
end;

procedure TMainForm.BitBtn8Click(Sender: TObject);
begin
  inherited;
   with TfrCase.Create(Application,false) do
   begin
      _insertMode:=true;
      ShowModal;
      _insertMode:=False;

   end;
   qryMyTasks.Requery;

end;

procedure TMainForm.dblStateKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);
  edtState.SetFocus;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
   DBGrid_SaveColumns(Self.Name,PhoneGrid);
   DBGrid_SaveColumns(Self.Name,FollowGrid);
   DBGrid_SaveColumns(Self.Name,ContractGrid);
   DBGrid_SaveColumns(Self.Name,dbgMyTasks);
end;

procedure TMainForm.acShowUserSequenceExecute(Sender: TObject);
begin
  inherited;
//  if FUsersSequence=nil then
  FUsersSequence:=TFUsersSequence.Create(Application);
  FUsersSequence.ShowModal;
end;

procedure TMainForm.SetActiveUserOnStatusBar;
begin
  Dm.QGetActiveUser.Close;
  Dm.QGetActiveUser.Open;
  StatusBar1.Panels[3].Text:='‰Ê» :'+dm.QGetActiveUserTitle.AsString;
end;

procedure TMainForm.SetActiveUserTimer(Sender: TObject);
begin
  inherited;
  SetActiveUserOnStatusBar;
end;

procedure TMainForm.acShowPoorsantListExecute(Sender: TObject);
begin
  inherited;
   FPoorsantList:=TFPoorsantList.Create(Self);
   FPoorsantList.ShowModal;
end;

procedure TMainForm.acShowRepTasksExecute(Sender: TObject);
begin
  inherited;
   FRepTasks:=TFRepTasks.Create(Self);
   FRepTasks.ShowModal;
end;

procedure TMainForm.acSendSMSForCustomerLockExecute(Sender: TObject);
begin
  inherited;
   FSendSMSForCustomerLock:=TFSendSMSForCustomerLock.Create(Self);
   FSendSMSForCustomerLock.ShowModal;
end;

procedure TMainForm.acSMSSettingsExecute(Sender: TObject);
begin
  inherited;
  with TFSMSSettings.Create(Application) do
      ShowModal;
end;

procedure TMainForm.acShowSMSGeneralExecute(Sender: TObject);
begin
  inherited;
   FSMSGeneral:=TFSMSGeneral.Create(Self);
   FSMSGeneral.ShowModal;
end;

procedure TMainForm.acShowSMSEndContractExecute(Sender: TObject);
begin
  inherited;
   FSMSEndContract:=TFSMSEndContract.Create(Self);
   FSMSEndContract.ShowModal;
end;

procedure TMainForm.acSMSBirthDateExecute(Sender: TObject);
begin
  inherited;
  FSMSBirthDate:=TFSMSBirthDate.Create(Self);
  FSMSBirthDate.ShowModal;
end;

procedure TMainForm.acShowAutoSMSTextExecute(Sender: TObject);
begin
  inherited;
  FSMSAutoText:=TFSMSAutoText.Create(Self);
  FSMSAutoText.ShowModal;
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
   Edate.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton5Click(Sender: TObject);
begin
  inherited;
   BDate.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.BitBtn9Click(Sender: TObject);
begin
  inherited;
   If (dm.Select_FollowUP_By_Date.RecordCount = 0) or
      (Dm.Select_FollowUP_By_Date.RecNo < 0) then
      exit;

   TasksTreeForm := TTasksTreeForm.Create(Application);
   TasksTreeForm.FollowupID := Dm.Select_FollowUP_By_DateFollowUPID.AsInteger;
   TasksTreeForm.ShowModal;
end;

procedure TMainForm.chkDoneStatusClick(Sender: TObject);
begin
  inherited;
   if Dm.DoneStatus.Active = false then
      Dm.DoneStatus.Open;
   cboDoneStatus.Enabled := chkDoneStatus.Checked;
   cboDoneStatus.KeyValue := 1;
end;

procedure TMainForm.SpeedButton7Click(Sender: TObject);
begin
  inherited;
   ActDateEditFrom.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton8Click(Sender: TObject);
begin
  inherited;
   ActDateEditTo.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
   CbDate.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton10Click(Sender: TObject);
begin
  inherited;
   CEDate.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.RefereshCustomerTimerTimer(Sender: TObject);
var fltr:String;
   tmpstr : string;
   txt : string;
begin
   { TODO -oparsa : 14030126 }
   //if ((dblProduct.KeyValue <> null ) and ( ChangeProduct )) or (oldTopRecord <> strToint(edRecCount.Text)) then
   //begin
   { TODO -oparsa : 14030126 }

   With Dm.Customer,Parameters do
   begin
   where := '';
   if Filtered = true then  fltr := Filter;
      Close;
      if MonthList.ItemIndex=0 then
          ParamByName('@likeWhere').Value:=''
      else
      begin
         // Amin 1391/10/04 Start
         tmpstr:= '(EXISTS(SELECT 1 FROM Users us WITH(NOLOCK)  WHERE us.isadmin = 1 AND us.Id = '+IntToStr(_UserID)+') OR EXISTS(select 1 from UsersCustomerAccess uca WITH(NOLOCK)  where uca.HasAccess = 1 and  uca.CustomerID = Customer.CustomerID and uca.UserID = '+IntToStr(_UserID)+' ))';
          if where = '' then
            where:= tmpstr
          else
            where := where + ' and '+ tmpstr;
         // Amin 1391/10/04 End

         { TODO -oparsa : 14030201 }
         txt :=   replace1(Trim(SearchEdit.Text),char(223),char(152));
         if (Trim(txt) <> '') then
          if Where <> '' then
            Where := Where+ ' and '+' ((CompanyName like ''%'+txt+'%'' ) or (Treater like ''%'+txt+'%'' ) or (PersonTitle like ''%'+txt+'%'' ) or (Notes like ''%'+txt+'%'' ) or (Address like ''%'+txt+'%'' ) or (PostalCode like ''%'+txt+'%'' ) )'
          else
            Where :=  ' ((CompanyName like ''%'+txt+'%'' ) or (Treater like ''%'+txt+'%'' ) or (PersonTitle like ''%'+txt+'%'' ) or (Notes like ''%'+txt+'%'' ) or (Address like ''%'+txt+'%'' ) or (PostalCode like ''%'+txt+'%'' ) )' ;

         if trim(edtContactNumber.Text) <> '' then
           if Where <> '' then
              Where := Where + ' and ' +' ((Phone like ''%'+Trim(edtContactNumber.Text)+'%'' ) or  (WorkPhone1 like ''%'+Trim(edtContactNumber.Text)+'%'' ) or   (MobilePhone like ''%'+Trim(edtContactNumber.Text)+'%'' ) or  (FaxNumber like ''%'+Trim(edtContactNumber.Text)+'%'' ) )'
           else
             Where := ' ((Phone like ''%'+Trim(edtContactNumber.Text)+'%'' ) or  (WorkPhone1 like ''%'+Trim(edtContactNumber.Text)+'%'' ) or   (MobilePhone like ''%'+Trim(edtContactNumber.Text)+'%'' ) or  (FaxNumber like ''%'+Trim(edtContactNumber.Text)+'%'' ) )' ;

         if trim(edtEmail.Text) <> '' then
           if Where <> '' then
              Where := Where + ' and ' +' EmailAddress like ''%'+Trim(edtEmail.Text)+'%'''
           else
             Where := ' EmailAddress like ''%'+Trim(edtEmail.Text)+'%''';

         if OnlyCurrentMarketer.Checked then
            if Where <> '' then
               Where := Where + ' and '+' MarketerID ='+IntToStr(_MarketerID)
            else
             Where := ' MarketerID ='+IntToStr(_MarketerID);

         if chkContractFinished.Checked then
            if where <> '' then
              where := where + ' and  FinishedContractProducts <> '''''
            else  where := ' FinishedContractProducts <> ''''';
         { TODO -oparsa : 14030201 }

          if where <> '' then where := '('+where+')';
          ParamByName('@likeWhere').Value:=where;
          if GroupByDate.Visible then
             if where<>'' then
                ParamByName('@likeWhere').Value := where+' And (Substring(insertdate,1,7) = '''+MonthList.Items[MonthList.ItemIndex]+''')'
             else
                ParamByName('@likeWhere').Value := '  (Substring(insertdate,1,7) = '''+MonthList.Items[MonthList.ItemIndex]+''')';
      end;

      try
        ParamByName('@Top').Value:=strToint(edRecCount.Text);
      except
        ParamByName('@Top').Value:=100;
      end;

      { TODO -oparsa : 14030201 }
      oldTopRecord :=  ParamByName('@Top').Value ;
      { TODO -oparsa : 14030201 }

      { TODO -oparsa : 14030126 }
      {
      if dblCustomerStatus.KeyValue <> null then
         ParamByName('@Customerstatusid').Value:=dblCustomerStatus.KeyValue
      else
         ParamByName('@Customerstatusid').Value := 0;

      ParamByName('@ContactNumber')   .Value:=Trim(edtContactNumber.Text);

      if OnlyCurrentMarketer.Checked then
         ParamByName('@MarketerID').Value:=_MarketerID
      else
         ParamByName('@MarketerID').Value:=-1;//_CurrentMarketerID;;

      if dblGroups.KeyValue <> null then
         ParamByName('@GroupId').Value:= dblGroups.KeyValue
      else
         ParamByName('@GroupId').Value := 0;

      if dblCity.KeyValue <> null then
        ParamByName('@CityId').Value:= dblCity.KeyValue
      else ParamByName('@CityId').Value := 0;

      if dblState.KeyValue <> null then
        ParamByName('@StateId').Value:= dblState.KeyValue
      else
         ParamByName('@StateId').Value := 0;

      if dblProduct.KeyValue <> null then
        ParamByName('@ProductId').Value:= dblProduct.KeyValue
      else ParamByName('@ProductId').Value := 0;

        ParamByName('@Email').Value:=edtEmail.Text;
        }

      ParamByName('@Customerstatusid').Value := 0;

      ParamByName('@ContactNumber')   .Value:=Trim(edtContactNumber.Text);

      ParamByName('@MarketerID').Value:=-1;//_CurrentMarketerID;;

      ParamByName('@GroupId').Value := 0;

      ParamByName('@CityId').Value := 0;

      ParamByName('@StateId').Value := 0;

      if dblProduct.KeyValue <> null  then
        ParamByName('@ProductId').Value:= dblProduct.KeyValue
      else ParamByName('@ProductId').Value := 0;

      { TODO -oparsa : 14030126 }

      Open;
      Filter := fltr;
      Filtered:=true;


      StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(RecordCount);
   end;
   { TODO -oparsa : 14030126 }
   //end;
   ChangeProduct := false;
   { TODO -oparsa : 14030126 }
   RefereshCustomerTimer.Enabled := false;
end;

procedure TMainForm.TabContractShow(Sender: TObject);
begin
  inherited;
   pgcMain.ActivePage := ContractTabSheet;
end;

procedure TMainForm.TabEghdamShow(Sender: TObject);
begin
  inherited;
   pgcMain.ActivePage := xpTabSheet1;
end;

procedure TMainForm.TabCustomerShow(Sender: TObject);
begin
  inherited;
   pgcMain.ActivePage := xpTabSheet2;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  inherited;
   ShowMessage(ShamsiString(now));
end;

procedure TMainForm.N73Click(Sender: TObject);
begin
  inherited;
  FrCategoryEdit :=TFrCategoryEdit.Create(Self);
  FrCategoryEdit.ShowModal;
end;

procedure TMainForm.N74Click(Sender: TObject);
begin
  inherited;
  FrLockSoftware :=TFrLockSoftware.Create(Self);
  FrLockSoftware.ShowModal;
end;

procedure TMainForm.bbbClick(Sender: TObject);
var
  S,Tmp:String;
  i:Integer;
begin
     { TODO -oparsa : 14030126 }
     {
     S := Trim(SearchEdit.Text);
     S := replace(s,char(223),char(152));
     PhoneGrid.SelectedIndex:=0;

     if dblProduct.KeyValue <> null then
         StatusBar1.Panels[1].Text:=dm.ProductProductTitle.AsString
     else
         StatusBar1.Panels[1].Text:= 'Â„Â „Õ’Ê·« ';

      with Dm.Customer do
      begin
          Filtered:=False;
          Tmp:=MakeFilterString;
          Tmp:=DeleteComma(Tmp);
          Tmp:=replace(Tmp,char(223),char(152));
          Filter := Tmp;
          Filtered:=True;
      end;
   CalcRecourdCount;

   if dblProduct.KeyValue <> null then
      RefereshCustomerTimerTimer(self);  }
        SearchEditChange(Sender);
   { TODO -oparsa : 14030126 }


end;

procedure TMainForm.SearchEditKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    bbbClick(self);

end;

procedure TMainForm.edtContactNumberKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    bbbClick(self);

end;

procedure TMainForm.N76Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmCustStatusReport,frmCustStatusReport);
  frmCustStatusReport.ShowModal;
  frmCustStatusReport.Free;
end;

procedure TMainForm.edRecCountKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    bbbClick(self);
end;

end.
