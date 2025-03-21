unit MainU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ADODB, DB, ExtCtrls, DBCtrls, Grids, DBGrids, Mask,
  ActnList, ActnMan, Buttons, Menus, ToolWin, ActnCtrls, ImgList, ComCtrls,
  DBActns, YDbgrid, DBTreeView, XPStyleActnCtrls, xpPages, UemsVCL,
  xpBitBtn, ActnColorMaps, xpPanel, Spin,dateutils, BaseUnit, ExtActns,
  YWhereEdit, YAmountEdit, KimiyaEdit,shellAPI, MssCalendarPro,
  acArcControls, TntDB, wwdbdatetimepicker, CheckLst, YchecklistBox ;

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
    ACustomerFollowUp: TAction;
    AContract: TAction;
    Amonth: TAction;
    N3: TMenuItem;
    keyboardTimer: TTimer;
    Action4: TAction;
    N5: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    NHost: TMenuItem;
    N25: TMenuItem;
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
    N51: TMenuItem;
    N52: TMenuItem;
    State: TADOTable;
    StateStateID: TWordField;
    StateStateTitle: TWideStringField;
    DState: TDataSource;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N26: TMenuItem;
    N29: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
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
    qryMyTasksProductTitle: TWideStringField;
    qryMyTasksCaseTypeId: TWordField;
    qryMyTasksProductId: TWordField;
    qryMyTasksregisterUserId: TIntegerField;
    qryMyTasksCompleted: TBooleanField;
    N61: TMenuItem;
    SpInsert_Task: TADOStoredProc;
    N60: TMenuItem;
    Timer1: TTimer;
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
    MssCalendarPro1: TMssCalendarPro;
    RefereshCustomerTimer: TTimer;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    N76: TMenuItem;
    adoState: TADOQuery;
    adoStateStateID: TIntegerField;
    adoStateStateTitle: TStringField;
    TimerSendSms: TTimer;
    MainPnl: TPanel;
    pgcMain: TPageControl;
    TabSheet1: TTabSheet;
    dbgMyTasks: TYDBGrid;
    xpPanel1: TxpPanel;
    Panel3: TPanel;
    BitBtn6: TBitBtn;
    btnCasesAll: TBitBtn;
    Panel7: TPanel;
    btnImageBR: TBitBtn;
    grbReference: TGroupBox;
    dblUserRefrence: TDBLookupComboBox;
    btnRefer: TBitBtn;
    GroupBoxEdit: TGroupBox;
    Label38: TLabel;
    Label36: TLabel;
    DBShamsiDateEdit1: TDBShamsiDateEdit;
    dblCaseStatus: TDBLookupComboBox;
    btnFinishCase: TBitBtn;
    pnlDescTask: TxpPanel;
    DBMemo1: TDBMemo;
    grbReferenceComment: TGroupBox;
    mmoDescription: TMemo;
    Panel8: TPanel;
    btnSaveReference: TBitBtn;
    btnRefrenceCancel: TBitBtn;
    ContractTabSheet: TxpTabSheet;
    Panel6: TPanel;
    xpBitBtn7: TBitBtn;
    xpBitBtn5: TBitBtn;
    xpBitBtn3: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn2: TBitBtn;
    pnlAllContract: TPanel;
    Label37: TLabel;
    Label39: TLabel;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    ContractDateEditTo: TShamsiDateEdit;
    ContractDateEditFrom: TShamsiDateEdit;
    BtnAllContract: TBitBtn;
    pnlSearchContract: TxpPanel;
    Label20: TLabel;
    Label22: TLabel;
    Label13: TLabel;
    btnSrchContactAdnavce: TBitBtn;
    dblsrchProductID: TDBLookupComboBox;
    dblSrchContractType: TDBLookupComboBox;
    edtCustomer: TEdit;
    ContractGrid: TYDBGrid;
    xpTabSheet1: TxpTabSheet;
    GridPanel: TPanel;
    FollowGrid: TYDBGrid;
    Panel13: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    DBText1: TDBText;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    cboDoneStatus: TDBLookupComboBox;
    chkDoneStatus: TCheckBox;
    BBPin: TxpBitBtn;
    Panel5: TPanel;
    Button22: TBitBtn;
    Button25: TBitBtn;
    Button18: TBitBtn;
    Button21: TBitBtn;
    Button23: TBitBtn;
    xpBitBtn1: TBitBtn;
    btnViwCustomer: TBitBtn;
    PnlAllAct: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    ActDateEditTo: TShamsiDateEdit;
    ActDateEditFrom: TShamsiDateEdit;
    BtnAllAct: TBitBtn;
    BitBtn9: TBitBtn;
    PinFollowGrid: TYDBGrid;
    pnlSearchFollow: TxpPanel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DonStatus: TComboBox;
    Comment: TEdit;
    Bsuccess: TEdit;
    Esuccess: TEdit;
    DonComment: TEdit;
    ShowAction: TCheckBox;
    ActionType: TDBLookupComboBox;
    btnSrchFollow: TBitBtn;
    chkCommentType: TCheckBox;
    lcbGroup: TDBLookupComboBox;
    xpTabSheet2: TxpTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    btnContract: TBitBtn;
    btnCustomerReportX: TBitBtn;
    BitBtnCase: TBitBtn;
    Panel1: TPanel;
    Splitter1: TSplitter;
    SplitterCity: TSplitter;
    GroupByDate: TPanel;
    MonthList: TListBox;
    Panel10: TPanel;
    Panel11: TPanel;
    PhoneGrid: TYDBGrid;
    GroupBox2: TGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    bbb: TButton;
    pnlSearchCustomer: TxpPanel;
    Label1: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label12: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label42: TLabel;
    SearchEdit: TEdit;
    OnlyCurrentMarketer: TCheckBox;
    edtContactNumber: TEdit;
    edtEmail: TEdit;
    dblCustomerStatus: TDBLookupComboBox;
    dblProduct: TDBLookupComboBox;
    dblGroups: TDBLookupComboBox;
    dblState: TDBLookupComboBox;
    dblCity: TDBLookupComboBox;
    chkContractFinished: TCheckBox;
    edtcity: TYWhereEdit;
    edtState: TYWhereEdit;
    edRecCount: TEdit;
    pnlFilter: TPanel;
    SBRefresh: TSpeedButton;
    btnHome: TSpeedButton;
    Panel9: TPanel;
    StatusBar1: TStatusBar;
    Panel12: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Panel14: TPanel;
    lblCompanyName: TLabel;
    pgM: TPageControl;
    TabContract: TTabSheet;
    TabEghdam: TTabSheet;
    TabCustomer: TTabSheet;
    Setting: TMenuItem;
    ColorType: TMenuItem;
    btnDaily: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    btnCustomer: TxpBitBtn;
    btntabContract: TxpBitBtn;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    CallAccess: TMenuItem;
    NCall: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    TabCartabl: TTabSheet;
    N83: TMenuItem;
    N84: TMenuItem;
    btnCartabl: TxpBitBtn;
    RGTypeReport: TRadioGroup;
    Label43: TLabel;
    edtCustomerNo: TEdit;
    Label44: TLabel;
    edtCustomerName: TEdit;
    pnlTime: TPanel;
    Label6: TLabel;
    BDate: TShamsiDateEdit;
    SpeedButton5: TSpeedButton;
    Label7: TLabel;
    Edate: TShamsiDateEdit;
    SpeedButton6: TSpeedButton;
    grbCaseFinish: TGroupBox;
    mmoCompleteComment: TMemo;
    Panel4: TPanel;
    btnSaveCaseFinish: TBitBtn;
    btnCaseFinishCancel: TBitBtn;
    qryMyTasksCustomerID: TIntegerField;
    qryMyTasksFollowUpID: TIntegerField;
    qryMyTasksIsBug: TBooleanField;
    qryMyTasksCompanyName: TStringField;
    BitBtn8: TBitBtn;
    SpeedButton13: TSpeedButton;
    btnReferEdit: TBitBtn;
    qryMyTasksAssignedComment: TStringField;
    qryMyTasksTaskComment: TStringField;
    RGCartablType: TRadioGroup;
    qryMyTasksAssignUserTitle: TStringField;
    N86: TMenuItem;
    N87: TMenuItem;
    Label45: TLabel;
    edtCustomerSrch: TEdit;
    Label46: TLabel;
    edtCaseIDSrch: TEdit;
    RgTypeCase: TRadioGroup;
    pnltaslsrch: TPanel;
    btnRefresh: TBitBtn;
    btnTaskSrch: TBitBtn;
    N85: TMenuItem;
    Label16: TLabel;
    CbDate: TEdit;
    SpeedButton9: TSpeedButton;
    Label17: TLabel;
    CEDate: TEdit;
    SpeedButton10: TSpeedButton;
    pnlDateContract: TPanel;
    N88: TMenuItem;
    qryMyTasksCasesComment: TWideStringField;
    qryMyTasksUserName: TStringField;
    MessageAlarm: TxpBitBtn;
    ImageList1: TImageList;
    qryMyTasksTaskCurentState: TIntegerField;
    Image1: TImage;
    ImageList2: TImageList;
    qryMyTasksTaskStatusID: TIntegerField;
    TimerMessage: TTimer;
    qryMyTasksRegisterDate: TStringField;
    qryMyTasksCaseEstimatedDate: TStringField;
    N89: TMenuItem;
    N90: TMenuItem;
    h1: TMenuItem;
    gbTaskTime: TGroupBox;
    btnStop: TBitBtn;
    btnstart: TBitBtn;
    edtTimeFromStart: TEdit;
    TimerTaskLog: TTimer;
    LblTaskNo: TLabel;
    btnCustomerView: TBitBtn;
    N91: TMenuItem;
    n92: TMenuItem;
    qryMyTasksTaskCommentGrid: TStringField;
    btnMaps: TBitBtn;
    btnMapBug: TBitBtn;
    N93: TMenuItem;
    Label47: TLabel;
    dblActionType_Level: TDBLookupComboBox;
    N94: TMenuItem;
    pnlCLBCompaginIDs: TPanel;
    Label48: TLabel;
    CLBCompaginIDs: TYchecklistBox;
    pnlOtherMarketer: TPanel;
    Label49: TLabel;
    dblMarketer: TDBLookupComboBox;
    BitBtn4: TBitBtn;
    cbTimeInterval: TCheckBox;
    edtTimeInterval: TEdit;
    Label50: TLabel;
    LockReport: TSpeedButton;
    UnlockRep: TSpeedButton;
    lblLockRep: TLabel;
    pnlSourcedate: TPanel;
    edtSourceDay: TShamsiDateEdit;
    SpeedButton14: TSpeedButton;
    Label51: TLabel;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    RGTypeRepMain: TRadioGroup;
    N95: TMenuItem;
    N96: TMenuItem;
    N97: TMenuItem;
    N98: TMenuItem;
    N99: TMenuItem;
    N100: TMenuItem;
    N101: TMenuItem;
    N102: TMenuItem;
    N103: TMenuItem;
    N104: TMenuItem;
    N105: TMenuItem;
    N106: TMenuItem;
    N107: TMenuItem;
    N108: TMenuItem;
    N109: TMenuItem;
    N110: TMenuItem;
    N111: TMenuItem;
    N112: TMenuItem;
    N113: TMenuItem;
    N114: TMenuItem;
    N115: TMenuItem;
    N116: TMenuItem;
    N117: TMenuItem;
    N118: TMenuItem;
    N119: TMenuItem;
    N120: TMenuItem;
    N121: TMenuItem;
    pnlContractMarketer: TPanel;
    Label52: TLabel;
    DBcontractMARKETER: TDBLookupComboBox;
    BitBtn10: TBitBtn;
    Label53: TLabel;
    DBLCompagin: TDBLookupComboBox;
    BitBtn11: TBitBtn;
    Label54: TLabel;
    dbComboState: TDBLookupComboBox;
    BitBtn12: TBitBtn;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    N122: TMenuItem;
    pnlCustomerMarketer: TPanel;
    Label55: TLabel;
    dblMarketerCustomer: TDBLookupComboBox;
    BitBtn13: TBitBtn;
    pnlCustomerStatusFilter: TPanel;
    Label56: TLabel;
    ComboBox1: TComboBox;
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
    procedure BitBtnCaseClick(Sender: TObject);
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
    procedure TimerSendSmsTimer(Sender: TObject);
    procedure BBPinClick(Sender: TObject);
    procedure PinFollowGridDblClick(Sender: TObject);
    procedure PinFollowGridCellClick(Column: TColumn);
    procedure N78Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure ColorTypeClick(Sender: TObject);
    procedure btnCustomerClick(Sender: TObject);
    procedure btnDailyClick(Sender: TObject);
    procedure btntabContractClick(Sender: TObject);
    procedure NCallClick(Sender: TObject);
    procedure N82Click(Sender: TObject);
    procedure N84Click(Sender: TObject);
    procedure TabCartablShow(Sender: TObject);
    procedure btnCartablClick(Sender: TObject);
    procedure RGTypeReportClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure btnReferEditClick(Sender: TObject);
    procedure dbgMyTasksNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure RGCartablTypeClick(Sender: TObject);
    procedure dbgMyTasksNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure N87Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure N85Click(Sender: TObject);
    procedure N88Click(Sender: TObject);
    procedure dbgMyTasksNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure TimerMessageTimer(Sender: TObject);
    procedure MessageAlarmClick(Sender: TObject);
    procedure N89Click(Sender: TObject);
    procedure h1Click(Sender: TObject);
    procedure btnstartClick(Sender: TObject);
    procedure TimerTaskLogTimer(Sender: TObject);
    procedure btnStopClick(Sender: TObject);
    procedure N80Click(Sender: TObject);
    procedure btnCustomerViewClick(Sender: TObject);
    procedure n92Click(Sender: TObject);
    procedure btnMapsClick(Sender: TObject);
    procedure btnMapBugClick(Sender: TObject);
    procedure N93Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dblActionType_LevelKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure N94Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FollowGridKeyPress(Sender: TObject; var Key: Char);
    procedure FollowGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure UnlockRepClick(Sender: TObject);
    procedure LockReportClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure RGTypeRepMainClick(Sender: TObject);
    procedure N96Click(Sender: TObject);
    procedure N97Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton19Click(Sender: TObject);
    procedure SpeedButton18Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure N122Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure dblMarketerCustomerKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    qrydblsrchContractType :TADOQuery;
    { TODO -oparsa : 14030126 }
    dblProductoldKeyValue : Integer;
    ChangeProduct :Boolean;
    oldTopRecord : Integer;
    StartTimeTaskLog : TDateTime;
    MainTaskLogId : Integer ;
    CurentReportRun : string;
    { TODO -oparsa : 14030126 }
    procedure SetdblContractType;
    Function  LoadImageField(Field:TField;Path:String):Boolean;
    Function  MakeStrSearch(s:string):string;
    Procedure CalcRecourdCount;
    Function  MakeFilterString :WideString;
    procedure SetColorForm ;
    procedure RunTaskQuery (TypeR : Integer=1);
    procedure RefreshAlarmMessage ;
    procedure CountPanelSet;
    procedure customerstatusFilter;
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
    UinputRefferenceTable, AccessInput, //StoreFM, FirstArtGroupFM,
    //SecendArtGroupFM, UnitFM, ArtServiceFM, ChequeFM,EnterDataFM,
    //FactorFM,
    HostFM, FmNewDongleWrite, SetLockFm, CrackU,
    FmSystemSettings_U, UContractType, BusinessLayer, UUserType, UTaxPerYear,
    uGuaranteeType, UReportDongle, UActionType,
    UUpdateOldAttachFile, UdefineHoliday, Types, UCase, UCaseBasicData,
    UCaseAdd, UCommisionPercent, Uattachments, UCustomerReport,ArticleFM,
    CancleReportU, UsersSequenceUnit, PoorsantListUnit, RepTasksUnit,
    SmsCenter1, UAddUserTableDlg, SendSMSForCustomerLockUnit,
    SMSSettingsUnit, GeneralSMSUnit, SMSGeneralUnit, StrUtils,
    USMSEndContract, SMSBirthDateU, SMSAutoTextU, TasksTreeUnit,
    uCategoryEdit, uLockSoftware, untCustStatusReport, StoreFM,
    SecendArtGroupFM, UnitFM, ArtServiceFM, ChequeFM, EnterDataFM, FactorFM,
    USaleReport, UThemColor, FirstArtGroupFM, UCallUser, UReportInPerson,
  UVersionProduct, URefrenceInPerson, UToRefer, UUpdateJobStatus,
  UTaskReport, UBaseRefere, UfollowUpReport, UFMessageAlarm, UReferralUser,
  USendInnerMessage, USalesFunnel, UActionTypeLevel, UCustomerMap,UMapBug,
  UCompare_Report, UTimeIntervalSale, UFixedAsset, UFixAssetMove,
  UDailyUserReport;

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
   Dm.Open_Customer(0); //Customer ��� ���� ����
   //PropertiesForm.DataSetInsert1.Execute;
   //PropertiesForm.DBNavigator1.BtnClick(nbInsert);
   PropertiesForm.ShowModal;
  if  (PropertiesForm<> nil) and (PropertiesForm.Edited = true) then
  begin
   RefreshCustomer;
   dm.Customer.Locate('CustomerId',dm.Select_Customer_By_CustomerIDCustomerID.Value,[])
  end;
  if Assigned(PropertiesForm) then
    FreeAndNil(PropertiesForm);
end;

procedure TMainForm.Action6Execute(Sender: TObject);
begin
   if ActiveControl = SearchEdit then
      SearchEdit.Text := '' else
   if MessageDlg('��� �� ������ ���� ����',mtWarning,[mbyes,mbno],0)=mryes then
      Close;
end;

procedure TMainForm.ApropertyExecute(Sender: TObject);
var Id :integer;
begin
   Id := dm.CustomerCustomerID.AsInteger;
   if Id > 0 then
   begin
     propertiesForm := TPropertiesForm.Create(Application,dm.CustomerCustomerID.AsInteger) ;
     PropertiesForm.Showmodal;

     if (PropertiesForm<> nil) and (PropertiesForm.Edited = true) then
     begin
       RefreshCustomer;
       dm.Customer.Locate('CustomerId',Id,[])
     end;
     if Assigned(PropertiesForm) then
       FreeAndNil(PropertiesForm);
   end;

end;

procedure TMainForm.AreportExecute(Sender: TObject);
begin
   Frep := TFrep.Create(Self);
   Frep.ShowModal;
   if Assigned(Frep) then
     FreeAndNil(Frep);
end;

procedure TMainForm.FormCreate(Sender: TObject);
Var  HasAccessToAllAcontact,HasAccessToAllFollow :Boolean;

begin

   inherited;
   //Color := $00FFEAEA ;
   Dm.CustomerStatus.Close;
   Dm.CustomerStatus.Open;

   WindowState:=WSmaximized;
   dm.Product.Locate('ProductID',_ProductID,[]);
   StatusBar1.Panels[1].Text:= dm.ProductProductTitle.AsString;
   BDate.Text :=copy(_today,1,8)+'01';
   eDate.Text :=copy(_today,1,8)+'29' ;
   edtSourceDay.Text :=_today;
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
   //Showmessage('���� ���� ���� ���');
  Yeganehmenu.Visible:=False;
  NHost.Visible := false;       // Amin 1391/10/04
  NHostGroup.Visible := false;  // Amin 1391/10/04
  //BitBtnCase.Visible := false;  // Amin 1391/10/04
  N37.Visible:=False;
  N67.Visible:=True;
  N67.Enabled:=True;
  NHost.Visible:=False;
  NHostGroup.Visible:=False;
  //TabSheet1.Visible:=False;
  if UpperCase(_AreYouYeganeh) =UpperCase('True') Then
  begin
    Yeganehmenu.Visible:=TRUE;
    NHost.Visible := true;       // Amin 1391/10/04
    NHostGroup.Visible := true;  // Amin 1391/10/04
    //BitBtnCase.Visible := true;  // Amin 1391/10/04
    TabSheet1.Visible:=True;
    NHost.Visible:=True;
    NHostGroup.Visible:=True;
  end
  else
  begin
    BitBtnCase.Visible := false; 
  end;
 ////// N57.Visible:=False;
{   if HasAccessToAllFollow then
      _CurrentMarketerID:=0
   else}
   _CurrentMarketerID:=_MarketerID;
   //RefreshCustomer;

   SetActiveUser.Interval:=_ActiveUserRefreshTime;
   SetActiveUser.Enabled := True;

end;


procedure TMainForm.ADeleteExecute(Sender: TObject);
var checkErr: Integer;
begin

   //if MessageDlg('��� �� ��� ��� ������� ������� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
   if MessageDlg(' ��� �� ��� ����� ' +'('+Dm.CustomerCustomerID.AsString+')'+ ' ������� ����Ͽ ' ,mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
       checkErr:= Open_CheckCustomer(Dm.CustomerCustomerID.Value).FieldByName('ERROR').Value;
         if checkErr = 0 then
         begin
          Qry_SetResult('Insert into dbo.ActivityUser_Log(CustomerID,UserId,Date,FormName,Activity,ComputerName,IPAddress) select '+Dm.CustomerCustomerID.AsString+','+ Dm.UserId.AsString + ',getdate(),''MenuDeleteCustomer'','''+'Delete'+''', '''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);

          Qry_SetResult('Delete From customer where CustomerId = '+ Dm.CustomerCustomerID.AsString,Dm.YeganehConnection);
          RefreshCustomer;
         end
         else if checkErr = 1 then MessageShowString('���� ��� ����� ������� ��� ��� ����� ������� �� ��� ����',True)
         else if checkErr = 2 then MessageShowString('���� ��� ����� ����� ��� ��� ����� ����� �� ��� ����',True)
         else if checkErr = 3 then MessageShowString('��� ����� ����� ���� ����� ����� ������',True);


   end;
end;

procedure TMainForm.N10Click(Sender: TObject);
begin
   //  AboutBox.ShowModal;
   FrAddTimeSheet:=TFrAddTimeSheet.Create(Application);
   FrAddTimeSheet.ShowModal;
   if Assigned(FrAddTimeSheet) then
     FreeAndNil(FrAddTimeSheet);
end;

procedure TMainForm.RefreshCustomer;
begin
   RefereshCustomerTimer.Enabled := true; // Amin 1391/12/26
end;

procedure TMainForm.FormShow(Sender: TObject);
var fltr:String;
   tmpstr : string;
   STR1,STR2 :string;
begin

  pgcMain.ActivePage := xpTabSheet2;
  { TODO -oparsa : 14030201 }
  oldTopRecord :=  0 ;
  { TODO -oparsa : 14030201 }
  SetColorForm ;

  btnstart.Enabled:= True;
  btnStop.Enabled := False;
  
  //btnMaps.Enabled := False;

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
   NMali.Visible :=  _UserAccAcess ;// false;
   N79.Visible :=  False;
 //  N80.Visible :=  False;
   
   CallAccess.Visible := _UserCallAccess ;

   RunTaskQuery(1) ;
      (*
   STR1 := '������� ����� ����� : '+ #13;
   STR2 := #13#13  +'������� ����� ����� : ' +#13;

   With qryMyTasks do
   Begin
      Close;
      SQL.Text:=' Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.TaskStatusTitle,p.ProductTitle,ct.CaseTypeId ,p.ProductId,cases.registerUserId,'
              + ' cases.Completed,Cases.Comment AS CasesComment,cp.CasePriorityID ,Cases.CustomerID,Cases.FollowUpID,Cases.IsBug,c.CompanyName,t.AssignedComment, '
              + ' ''' +STR1+''' '+'+ ISNULL(t.Comment,'''') +'+ ' ''' +STR2+ ''' '+'+ ISNULL(t.AssignedComment,'''') as TaskComment '
              + ' From Tasks t Left Join Cases on Cases.Caseid = T.CaseId '
              + ' LEFT JOIN TaskStatus ts ON ts.TaskStatusID = T.StatusId  '
              + ' LEFT JOIN CasePriority cp ON cp.CasePriorityID = Cases.CasePriorityId '
              + ' LEFT JOIN CaseType ct ON ct.CaseTypeID = Cases.CaseTypeID '
              + ' LEFT JOIN Product p ON p.ProductID = Cases.ProductId '
              + ' LEFT OUTER JOIN  Customer AS c ON c.CustomerID = Cases.CustomerID '
              + ' Where AssignedUserId = '+IntToStr(_UserID)+' and (IsNull(LTrim(RTrim(ToDoDate)),'''') = '''') and Completed = 0 '
              + ' ORDER BY CP.CasePriorityId,t.EstimatedDate,  t.AssignedDate ';
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
    *)
   SetMarketerRate;
   StatusBar1.Panels[4].Text :='����� : '+_UserName;
   StatusBar1.Panels[0].Text :='���� : '+ _SoftVersion ; //+COPY(_SoftVersionDB,1,1)+'.'+ COPY(_SoftVersionDB,2,1);
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

      if pnlCustomerMarketer.Visible and dblMarketerCustomer.KeyValue > 0 then
      begin
        ParamByName('@MarketerID').Value:= dblMarketerCustomer.KeyValue ;
      end
      else      
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


      StatusBar1.Panels[2].Text:='����� : '+IntToStr(RecordCount);
   end;

   { TODO -oparsa : 14030204 }
   PinFollowGrid.Visible := _UserPinFollowUp  ;
   if _UserPinFollowUp then
     BBPin.ImageIndex := 36 ;

  if _UserPinFollowUp then
  begin
    with Dm.Select_FollowUP_Pin do
     begin
       Close;
       Parameters.ParamByName('@UserID').Value:= _UserID;
       Open;
     end;
   end;
   { TODO -oparsa : 14030204 }
   Dm.tblTaskStatus.Close;
   Dm.tblTaskStatus.Open;

   Dm.tblTaskReferral.Close;
   Dm.tblTaskReferral.Open;

   Dm.tblUserType.Close;
   Dm.tblUserType.Open;

   Dm.qryActionType_Level.Close;
   Dm.qryActionType_Level.Open;

   btnImageBR.Visible := False ;
   btnFinishCase.Visible := False ;
   //btnReferInsert .Enabled := False ;

  Dm.RefreshHoliday(copy(_today,1,4));
  MssCalendarPro1.HolidayStr := dm.HolidayStr;

  RefreshAlarmMessage ;
  TimerMessage.Enabled := True;
  
  Dm.Compagin.Close;
  Dm.Compagin.Open;
  CLBCompaginIDs.Fill;

  StatusBar1.Panels[2].Text:='����� : '+IntToStr(PhoneGrid.DataSource.DataSet.RecordCount);

  PnlAllAct.Visible:=_BtnAllAct;
  PnlAllContract.Visible:=_BtnAllContract;

  chkContractFinished.Visible := not pnlCustomerStatusFilter.Visible ;
  OnlyCurrentMarketer.Visible := not pnlCustomerStatusFilter.Visible ;
End;

Function TMainForm.MakeStrSearch(s:string):string;
begin
   replace1(s,char(223),char(152));
   if Is_Integer(s) then //ǐ� ��� ��� ��� ���� ���
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
   if Is_Integer(s) then //ǐ� ��� ��� ��� ���� ���
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
   if Assigned(GroupInp) then
     FreeAndNil(GroupInp);
end;


procedure TMainForm.ComboBox1Click(Sender: TObject);
begin
   RefreshCustomer;
end;

procedure TMainForm.AcityExecute(Sender: TObject);
begin
   FrCityEdit := TFrCityEdit.create(Application);
   FrCityEdit.ShowModal;
   if Assigned(FrCityEdit) then
     FreeAndNil(FrCityEdit);
   {Ranjbar}
   Citys.Close;
   Citys.Open;
   //---
end;

procedure TMainForm.N17Click(Sender: TObject);
begin
   marketerInp := TMarketerInp.create(Application);
   marketerInp.ShowModal;
   if Assigned(marketerInp) then
     FreeAndNil(marketerInp);
end;

procedure TMainForm.emplates1Click(Sender: TObject);
begin
   EditTemplates:=TEditTemplates.Create(Application);
   EditTemplates.ShowModal;
   if Assigned(EditTemplates) then
     FreeAndNil(EditTemplates);
end;

procedure TMainForm.N18Click(Sender: TObject);
begin
   FErrorMsg := TFErrorMsg.Create(Application);
   FErrorMsg.ShowModal;
   if Assigned(FErrorMsg) then
     FreeAndNil(FErrorMsg);
end;

procedure TMainForm.N20Click(Sender: TObject);
begin
   UserDefineF := TUserDefineF.Create(Application);
   UserDefineF.ShowModal;
   if Assigned(UserDefineF) then
     FreeAndNil(UserDefineF);
end;

procedure TMainForm.N21Click(Sender: TObject);
begin
   BackupRestore := TBackupRestore.Create(Application);
   BackupRestore.Mode := backup;
   BackupRestore.ShowModal  ;
   if Assigned(BackupRestore) then
     FreeAndNil(BackupRestore);
end;

procedure TMainForm.AProductExecute(Sender: TObject);
begin
   FinputProducts := TFinputProducts.Create(Application);
   FinputProducts.ShowModal;
   if Assigned(FinputProducts) then
     FreeAndNil(FinputProducts);
end;

procedure TMainForm.APublishExecute(Sender: TObject);
begin
   FPublish := TFPublish.Create(Application);
   FPublish.ShowModal;
   if Assigned(FPublish) then
     FreeAndNil(FPublish);
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
   if Assigned(ProductADD) then
     FreeAndNil(ProductADD);
end;

procedure TMainForm.ACustomerFollowUpExecute(Sender: TObject);
begin
   FrFollowUp := TFrFollowUp.Create(nil,Dm.CustomerCustomerID.AsInteger,true);
   FrFollowUp.CustomerID := Dm.CustomerCustomerID.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.ShowModal;
   if Assigned(FrFollowUp) then
     FreeAndNil(FrFollowUp);
end;

procedure TMainForm.FollowGridDblClick(Sender: TObject);
var ID :Integer;
begin
  // FrFollowUp := TFrFollowUp.Create(Application);
   FrFollowUp := TFrFollowUp.Create(nil,Dm.Select_FollowUP_By_DateCustomerID.AsInteger,true);
   FrFollowUp.CustomerID := Dm.Select_FollowUP_By_DateCustomerID.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.FUID :=  dm.Select_FollowUP_By_DateFollowUPID.AsInteger;
   if  Dm.Select_FollowUP_By_CustomerID.Locate('FollowUPID',dm.Select_FollowUP_By_DateFollowUPID.AsInteger,[]) then
     Dm.Select_FollowUP_By_CustomerID.Edit;
//   Dm.Select_FollowUP_By_CustomerID.Last;
{  if Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString = '' then
      Dm.Select_FollowUP_By_CustomerIDDoneDate.AsString := _Today; }
   FrFollowUp.Showmodal;

   id := Dm.Select_FollowUP_By_DateFollowUPID.Value;
   if FrFollowUp.Edited = true then
   begin
      with dm.Select_FollowUP_By_Date do
      begin
         // Requery;
        ///  Button18Click(self);
          DBGrid_SaveSort(Self.Name,FollowGrid);

          dm.RefreshFollowUP(SF_Bdate,SF_Edate,SF_Ds,SF_ActionTypeID,SF_BSuccess,SF_ESuccess,SF_Comment_like,SF_DoneComment_like,SF_MarketerID,SF_CommentTypeOr,SF_GroupID,SF_CustomerName,SF_CustomerID, SF_TimeInterval );
          if LockReport.Visible then
            DBGrid_LoadSort(self.Name,FollowGrid);
            
          Locate('FollowUPID',id,[]);
      end;
   end;

   if Assigned(FrFollowUp) then
     FreeAndNil(FrFollowUp);

end;

procedure TMainForm.Button25Click(Sender: TObject);
begin
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else  
     Exit;
   end;
   // Amin 1391/10/04 Start
   BitBtn4Click(self);
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate('1300/01/01',_today,cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate('1300/01/01',_today,0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate('1300/01/01',_today,1,_CurrentMarketerID);
   CountPanelSet;

   FollowGrid.Columns[9].Visible:=False;
   CurentReportRun := 'ToToday';
end;

procedure TMainForm.Button18Click(Sender: TObject);
begin
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else  
     Exit;
   end;
   // Amin 1391/10/04 Start
   BitBtn4Click(self);
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(_today,_today,cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(_today,_today,0,_CurrentMarketerID);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID, cboDoneStatus.KeyValue);
   {
  if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
        StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
  else StatusBar1.Panels[2].Text := ' ����� 0';
               }
   CountPanelSet;

   FollowGrid.Columns[9].Visible:=False;
   CurentReportRun := 'Today';
end;

procedure TMainForm.Button21Click(Sender: TObject);
begin
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else
     Exit;
   end;
   // Amin 1391/10/04 Start
   BitBtn4Click(self);
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),0,_CurrentMarketerID);
   // Amin 1391/10/04 End
     {
   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,1),ShamsiIncDate(_today,0,0,1),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
  if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
    StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
  else
    StatusBar1.Panels[2].Text := ' ����� 0';
         }
  CountPanelSet;

   FollowGrid.Columns[9].Visible:=False;
   CurentReportRun := 'LastDay';
end;

procedure TMainForm.Button22Click(Sender: TObject);
begin
   // Amin 1391/10/04 Start
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else
     Exit;
   end;

   BitBtn4Click(self);
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),0,_CurrentMarketerID);
   // Amin 1391/10/04 End
       {
  // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-1),ShamsiIncDate(_today,0,0,-1),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
  if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
    StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
  else
    StatusBar1.Panels[2].Text := ' ����� 0';
                    }
   CountPanelSet;
   FollowGrid.Columns[9].Visible:=False;
   CurentReportRun := 'BeforeDay';
end;

procedure TMainForm.Button23Click(Sender: TObject);
begin
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else
     Exit;
   end;
   // Amin 1391/10/04 Start
   BitBtn4Click(self);
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),cboDoneStatus.KeyValue,_CurrentMarketerID)
   else
      Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),0,_CurrentMarketerID);
   // Amin 1391/10/04 End
                    {
  // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ShamsiIncDate(_today,0,0,-ShamsidayInWeek(_today)),ShamsiIncDate(_today,0,0,7-ShamsidayInWeek(_today)),1,_CurrentMarketerID, cboDoneStatus.KeyValue);
  if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
    StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
  else
    StatusBar1.Panels[2].Text := ' ����� 0';
                     }
   CountPanelSet;
   FollowGrid.Columns[9].Visible:=False;
   CurentReportRun := 'ThisWeek';
end;

procedure TMainForm.btnSrchFollowClick(Sender: TObject);
var
   groupID : integer;
   MarketerId : Integer;
   TimeInterval : Integer;
   CompaginID : Integer ;
   StateID : Integer ;
begin
   if LockReport.Visible then
   begin
     if MessageDlg('����� ��� �� ���� ���� ����� ����� �� ���� ��� ���� ������',mtWarning,[mbyes,mbno],0)=mryes then
       LockReportClick(self)
     else   Exit;
   end;
   
   RGTypeReportClick(self);

   TimeInterval := 0 ;
   if cbTimeInterval.Checked then
   begin
     TimeInterval := StrToInt(edtTimeInterval.text) ;
   end;

   if lcbGroup.KeyValue>0 then
      groupID :=  lcbGroup.KeyValue
   else
      groupID := 0;

   if DBLCompagin.KeyValue>0 then
      CompaginID :=  DBLCompagin.KeyValue
   else
      CompaginID := 0;

   if dbComboState.KeyValue>0 then
      StateID :=  dbComboState.KeyValue
   else
      StateID := 0;

   MarketerId := _CurrentMarketerID ;
   if pnlOtherMarketer.Visible and dblMarketer.KeyValue > 0 then
     MarketerId := dblMarketer.KeyValue  ;

   if DonStatus.ItemIndex<0 then
      DonStatus.ItemIndex:=0;
   FollowGrid.Columns[7].Visible:=DonStatus.ItemIndex=0;

   if ShowAction.Checked then
      Dm.RefreshFollowUP(BDate.Text,Edate.Text,DonStatus.ItemIndex,ActionType.KeyValue,StrToInt( Bsuccess.Text),StrToInt(Esuccess.Text),Comment.Text,DonComment.Text,MarketerId, chkCommentType.Checked,groupID,trim(edtCustomerName.Text),ifthen((trim(edtCustomerNo.Text) <> ''),trim(edtCustomerNo.Text) ,'0') ,TimeInterval,CompaginID,StateID) // Amin 1391/08/25
   else
      Dm.RefreshFollowUP(BDate.Text,Edate.Text,DonStatus.ItemIndex,0 ,StrToInt( Bsuccess.Text),StrToInt(Esuccess.Text),Comment.Text,DonComment.Text,MarketerId, chkCommentType.Checked,groupID,trim(edtCustomerName.Text),ifthen((trim(edtCustomerNo.Text) <> ''),trim(edtCustomerNo.Text) ,'0'),TimeInterval ,CompaginID,StateID); // Amin 1391/08/25
      {
  if Dm.Select_FollowUP_By_Date.RecordCount > 0 then
        StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
  else
        StatusBar1.Panels[2].Text := ' ����� 0';
        }
  CountPanelSet;
end;

procedure TMainForm.xpTabSheet1Show(Sender: TObject);
begin
   if UnlockRep.Visible then
   begin
     // Amin 1391/10/04 Start
     if(chkDoneStatus.Checked) then
     begin
        chkDoneStatusClick(chkDoneStatus);

        Dm.RefreshFollowUP_ByDate(_today,_today,cboDoneStatus.KeyValue,_CurrentMarketerID);
     end
     else
        Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID);
   end;
                    {
  if (FollowGrid.DataSource <> nil) and  (FollowGrid.DataSource.DataSet.Active) then
    StatusBar1.Panels[2].Text:='����� : '+IntToStr(FollowGrid.DataSource.DataSet.RecordCount)
  else StatusBar1.Panels[2].Text:='����� : ' + '0' ;
  }
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(_today,_today,1,_CurrentMarketerID, cboDoneStatus.KeyValue);

   
end;

procedure TMainForm.AContractExecute(Sender: TObject);
begin
   FrContract := TFrContract.Create(Application,Dm.CustomerCustomerID.AsInteger);
   FrContract.ShowModal;
   if Assigned(FrContract) then
     FreeAndNil(FrContract);
end;

procedure TMainForm.ShowActionClick(Sender: TObject);
begin
   //ActionType.Visible := ShowAction.Checked;
   ActionType.Enabled := ShowAction.Checked;
   ActionType.KeyValue := dm.ActionTypeActionTypeID.AsInteger;
end;

procedure TMainForm.xpBitBtn1Click(Sender: TObject);
begin
   FrViewByCalender:= TFrViewByCalender.Create(Application);
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
      if Assigned(PropertiesForm) then
        FreeAndNil(PropertiesForm);
   end
   else ShowMyMessage('�����','�� �������� ���� ���',[mbOK],mtInformation);
end;

procedure TMainForm.xpBitBtn10Click(Sender: TObject);
begin
   IF dm.Select_Contract_By_Date.RecordCount>0 THEN
   begin
      propertiesForm :=TPropertiesForm.Create(Application,dm.Select_Contract_By_DateCustomerID.AsInteger) ;
      PropertiesForm.showmodal;
      if Assigned(PropertiesForm) then
        FreeAndNil(PropertiesForm);
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
    tempMarketerId : Integer ;
begin
  tempMarketerId :=  _MarketerID ;
  if (pnlContractMarketer.Visible) and (DBcontractMARKETER.KeyValue <> null ) THEN
    tempMarketerId :=  DBcontractMARKETER.KeyValue ;

  if dblSrchContractType.KeyValue = null then
    ContractTypeId  := 0
  else  ContractTypeId  := dblSrchContractType.KeyValue;

  if dblsrchProductID.KeyValue = null then
    ProductId  := 0
  else  ProductId  := dblsrchProductID.KeyValue;

    dsdbgContract := TDataSource.Create(nil);
    dsdbgContract.DataSet := SpSearch_Contract_Advance(FromDate,ToDate,tempMarketerId,ContractTypeId,ProductId,StrToIntDef(edtCustomer.Text,0),_UserTypeID);
//    dsdbgContract.DataSet.FieldByName('Amount').OnGetText :=ContractGridGetText;
    ContractGrid.DataSource := dsdbgContract;
  if CurrentGrid.DataSource.DataSet.Active then
      if  CurrentGrid.DataSource.DataSet.RecordCount > 0 then
          StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := ' ����� 0';

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
   RefreshContract(copy(_today,1,4)+'/01/01',_today);
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
         StatusBar1.Panels[1].Text:= '��� �������';
       {
      with Dm.Customer do
      begin
          Filtered:=False;
          Tmp:=MakeFilterString;
          Tmp:=DeleteComma(Tmp);
          Tmp:=replace(Tmp,char(223),char(152));
          Filter := Tmp;
          Filtered:=True;
      end;
      {
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
   SetColorForm;
end;

procedure TMainForm.btnHomeClick(Sender: TObject);
begin
   where:='';

{   s:=trim(TBitBtn(sender).Caption);
   if s<>'���' then
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
  dblActionType_Level.KeyValue := null;
  dblMarketerCustomer.KeyValue := null ;  
  SearchEdit.Text :='';
  gsrcCustomerStatusId := 0;
  gsrcProductId := 0;
  gsrcGroupId := 0;
  chkContractFinished.Checked :=false;
  Dm.Customer.Filtered:=False;
  ComboBox1.ItemIndex := -1 ;
  CLBCompaginIDs.Fill;
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
   Panel1.Align    := alClient;
   PhoneGrid.Align := alClient;
   GroupBox2.Align := alTop;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
begin
  if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then     CurrentGrid.ExportToExcel
  else ShowMessage('��� ���� ����� ����� �� ���� �� ������');
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
  if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then     CurrentGrid.Print
  else ShowMessage('��� ���� ����� ����� �� ���� �� ������');
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  if (_ExportCustomerList = true)or (CurrentGrid <> PhoneGrid) then
      CurrentGrid.ExportToWord else ShowMessage('��� ���� ����� ����� �� ���� �� ������');

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
   if Assigned(Frep2) then
     FreeAndNil(Frep2);
end;

procedure TMainForm.N11Click(Sender: TObject);
begin
//   FrInsertrateRep := TFrInsertrateRep.Create(Application);
//   FrInsertrateRep.ShowModal;
    ShowMessage('����� ���� ���� ����� ����');
end;

procedure TMainForm.NHostClick(Sender: TObject);
begin
   {��� ��� ��� ��
   FrWebsite := TFrWebsite.Create(Application);
   FrWebsite.ShowModal;}

   //����� ������� ��������
   FMHost := TFMHost.Create(Application);
   FMHost.ShowModal;
   if Assigned(FMHost) then
     FreeAndNil(FMHost);

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
   if Assigned(Frep3) then
     FreeAndNil(Frep3);
end;

procedure TMainForm.Action5Execute(Sender: TObject);
begin
   FmReportSalary := TFmReportSalary.Create(Application);
   FmReportSalary.ShowModal;
   if Assigned(FmReportSalary) then
     FreeAndNil(FmReportSalary);
end;

procedure TMainForm.N34Click(Sender: TObject);
begin
   FrReportAll := TFrReportAll.Create(Application);
   FrReportAll.ShowModal;
   if Assigned(FrReportAll) then
     FreeAndNil(FrReportAll);
end;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.showmodal;
   if Assigned(FrInputUserTable) then
     FreeAndNil(FrInputUserTable);
end;

procedure TMainForm.AreportFormExecute(Sender: TObject);
begin
   FrMakeUserTableRep := TFrMakeUserTableRep.Create(Application);
   FrMakeUserTableRep.ShowModal;
   if Assigned(FrMakeUserTableRep) then
     FreeAndNil(FrMakeUserTableRep);
end;

procedure TMainForm.AAddRefrenceTableExecute(Sender: TObject);
begin
   FrInputRefferenceTable := TFrInputRefferenceTable.Create(Application);
   FrInputRefferenceTable.ShowModal;
   if Assigned(FrInputRefferenceTable) then
     FreeAndNil(FrInputRefferenceTable);
end;

procedure TMainForm.AAtachmentsExecute(Sender: TObject);
begin
   Dm.ShowAttachments(dm.Customer,true);
end;

procedure TMainForm.N38Click(Sender: TObject);
begin
   inherited;
   AccessForm := TAccessForm.Create(Application);
   AccessForm.ShowModal;
   if Assigned(AccessForm) then
     FreeAndNil(AccessForm);
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
   if Assigned(FMStore) then
     FreeAndNil(FMStore);
end;

procedure TMainForm.NFirstArtGroupClick(Sender: TObject);
begin
   inherited;
   FMFirstArtGroup := TFMFirstArtGroup.Create(Application);
   FMFirstArtGroup.ShowModal;
   if Assigned(FMFirstArtGroup) then
     FreeAndNil(FMFirstArtGroup);
end;

procedure TMainForm.NSecendArtGroupClick(Sender: TObject);
begin
   inherited;
   FMSecendArtGroup := TFMSecendArtGroup.Create(Application);
   FMSecendArtGroup.ShowModal;
   if Assigned(FMSecendArtGroup) then
     FreeAndNil(FMSecendArtGroup);
end;

procedure TMainForm.NUnitClick(Sender: TObject);
begin
   inherited;
   FMUnit := TFMUnit.Create(Application);
   FMUnit.ShowModal;
   if Assigned(FMUnit) then
     FreeAndNil(FMUnit);
end;

procedure TMainForm.NArtServiceClick(Sender: TObject);
begin
   inherited;
   FMArtService := TFMArtService.Create(Application);
   FMArtService.ShowModal;
   if Assigned(FMArtService) then
     FreeAndNil(FMArtService);
end;

procedure TMainForm.NArticleClick(Sender: TObject);
begin
   inherited;
   FMArticle := TFMArticle.Create(Application);
   FMArticle.ShowModal;
   if Assigned(FMArticle) then
     FreeAndNil(FMArticle);
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
      FMCheque.ChequeType := 1  //����� �������
   else
      FMCheque.ChequeType := 2; //����� �������
   FMCheque.ShowModal;
   if Assigned(FMCheque) then
     FreeAndNil(FMCheque);
end;

procedure TMainForm.NCheque2Click(Sender: TObject);
begin
   inherited;
   NCheque1Click(Sender);
end;

//EnterData_CallForm(1,'����� ������ ���','��','����� ������ ���','�������',_UserID  );
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
   if Assigned(FMEnterData) then
     FreeAndNil(FMEnterData);
end;

procedure TMainForm.N31Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'F'; // ��� �ǘ��� ����
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N39Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'KH'; // ��� �ǘ��� ����
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N40Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'P'; // ��� ��� �ǘ���
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N41Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'BF'; // ��� �ǘ��� �ѐ�� �� ����
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N42Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'BKH'; // ��� �ǘ��� �ѐ�� �� ����
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N43Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'A'; // ��� �ǘ��� �����
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
end;

procedure TMainForm.N44Click(Sender: TObject);
begin
   inherited;
   FMFactor := TFMFactor.Create(Application);
   FMFactor.Hint := 'E'; // ��� �ǘ��� �������
   FMFactor.ShowModal;
   if Assigned(FMFactor) then
     FreeAndNil(FMFactor);
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
    if UpperCase(Column.Title.Caption) = UpperCase('����') then
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
   MainForm.EnterData_CallForm(29,'����� ���� ������� ��������','��','��� ���� ������� ��������','�������',0);//HostGroup
end;

procedure TMainForm.N32Click(Sender: TObject);
begin
   inherited;
   if dm.CustomerCustomerStatusID.AsInteger=2 then
   begin
      FM_NewDongleWrite:=TFM_NewDongleWrite.Create(Application,dm.CustomerCustomerID.AsInteger,Dm.CustomerCompanyName.AsString,' ����� ��� ���� '+dm.Customernickname.AsString);
//      FM_NewDongleWrite.Caption:=;
{      if Dm.CustomerCustomerID.AsInteger=20974 then
         FM_NewDongleWrite.CompanyName:=Dm.CustomerCompanyName.AsString+'mm'+'(�� � �� � �� ...�� ��������)';}
      FM_NewDongleWrite.ShowModal;
      if Assigned(FM_NewDongleWrite) then
        FreeAndNil(FM_NewDongleWrite);
   end
      else
         ShowMessage('���� �� ����� ���� �� ����� ��� ������� �� ������ ������');

end;

procedure TMainForm.N25Click(Sender: TObject);
begin
   inherited;
   Fcrack := TFcrack.Create(Application);
   Fcrack.ShowModal;
   if Assigned(Fcrack) then
     FreeAndNil(Fcrack);
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
   if Assigned(FmSystemSettings) then
     FreeAndNil(FmSystemSettings);
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
          ShowMessage('��� ������ ���� ������ ��������� �� ������');
          ActivePageIndex := 3;
          pgM.ActivePage := TabCustomer;
      end;
   if (_ShowMyAction = false) and
      (ActivePageIndex = 0) then
      begin
          ActivePage.Visible :=false;
          ShowMessage('��� ������ ������ ��� ���� �� ������');
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
          StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := ' ����� 0';
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
   if State.Locate('StateID',StrtoInt (edtState.Text),[]) and (edtstate.Focused) then
     dblState.KeyValue := StrtoInt (edtState.Text)
   else   dblState.KeyValue := null
  end
  else
  begin
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
   if Assigned(FrContract) then
     FreeAndNil(FrContract);
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
                                          ,'select  ContractTypetitle, ContractTypeID,ContractTypeCode from dbo.ContractType  WITH(NOLOCK)  where ContractTypeID in (select ContractTypeId from dbo.UserTypeContractType  WITH(NOLOCK)  where UserTypeID =  '+IntToStr(_UserTypeID)+') or '+IntToStr(_UserTypeID)+' = 0'
                                                                      ,Dm.YeganehConnection);

     if qrydblsrchContractType.RecordCount >0 then
     begin
         qrydblsrchContractType.Fields[0].Alignment:=   taRightJustify;
         SetDbLookUp(dblsrchContractType,dsdblsrchContractType,'ContractTypetitle','ContractTypeID');
         StatusBar1.Panels[2].Text:='����� : '+IntToStr(qrydblsrchContractType.RecordCount);
     end
     else StatusBar1.Panels[2].Text:='����� : '+ ' 0';

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
      StatusBar1.Panels[1].Text:= '��� �������';
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
   if  (PropertiesForm<> nil) and (PropertiesForm.Edited = true)  then
   begin
     id := Dm.Select_FollowUP_By_DateFollowUPID.Value;
     //Dm.Select_FollowUP_By_Date.Requery;
     dm.RefreshFollowUP(SF_Bdate,SF_Edate,SF_Ds,SF_ActionTypeID,SF_BSuccess,SF_ESuccess,SF_Comment_like,SF_DoneComment_like,SF_MarketerID,SF_CommentTypeOr,SF_GroupID,SF_CustomerName,SF_CustomerID, SF_TimeInterval );
     Dm.Select_FollowUP_By_Date.Locate('FollowUPID',id,[]);
   end;
   if Assigned(PropertiesForm) then
     FreeAndNil(PropertiesForm);

   FollowGrid.Columns[9].Visible:=False;
end;

procedure TMainForm.N56Click(Sender: TObject);
begin
  inherited;
   if dm.CustomerCustomerStatusID.AsInteger=2 then
   begin
      FmSetLock:=TFmSetLock.Create(Application);
      FmSetLock.CustomerID:=dm.CustomerCustomerID.AsInteger;
      FmSetLock.Caption:=' ����� ��� ���� '+dm.Customernickname.AsString;
      FmSetLock.CompanyName:=Dm.CustomerCompanyName.AsString;
      FmSetLock.ShowModal;
      if Assigned(FmSetLock) then
        FreeAndNil(FmSetLock);
   end
      else
         ShowMessage('���� �� ����� ���� �� ����� ��� ������� �� ������ ������');

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
     StatusBar1.Panels[2].Text :=' ����� '+ IntToStr(Dm.Customer.recordcount);

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
      StatusBar1.Panels[1].Text:= '��� �������';
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

  customerstatusFilter;

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

  if pnlCustomerMarketer.Visible and dblMarketerCustomer.KeyValue > 0 then
  begin

     if Where <> '' then
           Where := Where + ' and '+' MarketerID ='+IntToStr(dblMarketerCustomer.KeyValue)
      else
           Where := ' MarketerID ='+IntToStr(dblMarketerCustomer.KeyValue);
  end
  else
  if OnlyCurrentMarketer.Checked then
     if Where <> '' then
           Where := Where + ' and '+' MarketerID ='+IntToStr(_MarketerID)
      else
           Where := ' MarketerID ='+IntToStr(_MarketerID);

  if chkContractFinished.Checked then
  begin
      if where <> '' then
          where := where + ' and  FinishedContractProducts <> '''''
       else  where := ' FinishedContractProducts <> ''''';
  end
  else
  if ComboBox1.ItemIndex in [3,4]  then
  begin
      if where <> '' then
          where := where + ' and  FinishedContractProducts = '''''
       else  where := ' FinishedContractProducts = ''''';

  end;

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

     with TADOQuery.Create(nil) do
     begin
        Connection := Dm.YeganehConnection;
        CommandTimeout := 1200;
      // if DBchIsBug.Checked then
         SQL.Text := ' insert into dbo.FollowUp (TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
                     ' values('+IntToStr(NewTaskId)+',(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),48,3,'+IntToStr(_MarketerID)+','''+' �ǐ ' + qryMyTasksCaseId.AsString +'� ����� �� �������  '+dblUserRefrence.Text+' � '+ mmoDescription.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';

       ExecSQL;
     end;

  end;
  
  if messageShowString('��� ��� ����� ���� ������ ���� ������ �������� ����� ���Ͽ',True) then
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
    SQL.Text := ' Select * from dbo.Users  WITH(NOLOCK)  where isactive = 1 AND (ID = '+inttostr(_UserID)+' or  id IN (SELECT Childid FROM [dbo].[ReferralUser]  WITH(NOLOCK)  where parentId = '+inttostr(_UserID)+ ' )) '  ;
    //Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
   // Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
   // Parameters.ParamByName('UserId').Value := _UserID;
    Open;
  end;
end;

procedure TMainForm.dbgMyTasksDblClick(Sender: TObject);
begin
  inherited;
  (*
  if qryMyTasksAssignedUserId.AsInteger <> _UserID then
  begin
    ShowMessage('�Ә ���� ��� ����� �� ����� ���� ��� ���� ');
    Exit;
  end;
        *)
  if dblCaseStatus.KeyValue = 10 then
  begin
    Application.CreateForm(TFRefrenceInPerson, FRefrenceInPerson);
    FRefrenceInPerson.FollowUpId          := qryMyTasksFollowUpID.Asinteger ;
    FRefrenceInPerson.CustomerId          := qryMyTasksCustomerID.Asinteger ;
    FRefrenceInPerson.ProductsIdSTR       := qryMyTasksProductId.AsString ;
    FRefrenceInPerson.DBECompanyName.Text := qryMyTasksCompanyName.AsString;
    FRefrenceInPerson.DBEProducts.Text    := qryMyTasksProductTitle.AsString ;
    FRefrenceInPerson.ShowModal;
    if Assigned(FRefrenceInPerson) then
      FreeAndNil(FRefrenceInPerson);
  end
  else
  if qryMyTasks.RecordCount > 0 then
    with  TfrCaseAdd.Create(Self,qryMyTasksCaseId.Value,qryMyTasksCaseTitle.Text,qryMyTasksProductId.Value,qryMyTasksCaseTypeId.Value,qryMyTasksregisterUserId.value,qryMyTasksCompleted.value,qryMyTasksCasesComment.Text,qryMyTasksCasePriorityID.AsInteger,False,qryMyTasksRegisterDate.AsString,qryMyTasksCaseEstimatedDate.asString) do
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
  if MessageDlg('�� ����� ��� ���� ������ ��� ���� ����� �ϡ ���� ������ ������� ����Ͽ',mtConfirmation,[mbyes,mbno],0)=mryes then
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
     CommandTimeout := 1200;
     SQL.Text :='Update Cases set Completed = 1,CompleteDate = '''+_Today+''',CompleteComment= '''+mmoCompleteComment.Text+''' where caseId = '+qryMyTasksCaseId.AsString;

     SQL.Text := SQL.Text + ' insert into dbo.FollowUp (TaskID,CustomerID,ActionTypeID,DoneStatusID,MarketerID,Comment,ToDoDate,insertdate,Lastupdate,FollowUpInsertDate)'+
              ' values(0,(SELECT top 1 CustomerID FROM [dbo].[Cases] WHERE CaseID = '+qryMyTasksCaseId.AsString+'),49,2,'+IntToStr(_MarketerID)+','''+' �ǐ ' + qryMyTasksCaseId.AsString +' � ����� � '+ mmoCompleteComment.text+''','''+_Today+''',getdate(),GetDate()'+','''+_Today+'''' +') ';


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
   if Assigned(FrContract) then
     FreeAndNil(FrContract);
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
          StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(CurrentGrid.DataSource.DataSet.RecordCount)
    else
          StatusBar1.Panels[2].Text := ' ����� 0';

   ContractGrid.UpdateFooter;

end;

procedure TMainForm.BtnAllActClick(Sender: TObject);
begin
  inherited;
  BitBtn4Click(self);
   FollowGrid.Columns[9].Visible:=_BtnAllAct;
   // Amin 1391/10/04 Start
   if(chkDoneStatus.Checked) and (cboDoneStatus.KeyValue <> NULL) then
      Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,cboDoneStatus.KeyValue,0)
   else
      Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,1,0);
   // Amin 1391/10/04 End

   // Amin 1391/10/04 Dm.RefreshFollowUP_ByDate(ActDateEditFrom.Text,ActDateEditTo.Text,1,0, cboDoneStatus.KeyValue);
   IF Dm.Select_FollowUP_By_Date.RecordCount > 0 then
      StatusBar1.Panels[2].Text := ' ����� ' + IntToStr(Dm.Select_FollowUP_By_Date.RecordCount)
   Else
      StatusBar1.Panels[2].Text := ' ����� 0';

end;

procedure TMainForm.N60Click(Sender: TObject);
begin
  inherited;
   FrCancleReport := TFrCancleReport.Create(Self);
   FrCancleReport.ShowModal;
   if Assigned(FrCancleReport) then
     FreeAndNil(FrCancleReport);
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
   IF UpperCase(_AreYouYeganeh) = UpperCase('True') Then
        SetActiveUserOnStatusBar;
//     StatusBar1.Panels[3].Text:='����:'+dm.MarketerInsertRateMarketerTitle.AsString;
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  inherited;
//  SetMarketerRate;
end;

procedure TMainForm.BitBtnCaseClick(Sender: TObject);
begin
  inherited;
   with TfrCase.Create(Application,false,True) do
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
  if btnStop.Enabled then
  begin
   btnStopClick(self);
  end;
  DBGrid_SaveColumns(Self.Name,PhoneGrid);
  DBGrid_SaveColumns(Self.Name,FollowGrid);
  DBGrid_SaveColumns(Self.Name,ContractGrid);
  DBGrid_SaveColumns(Self.Name,dbgMyTasks);
  DBGrid_SaveColumns(Self.Name,PinFollowGrid);
 // DBGrid_SaveSort(Self.Name,FollowGrid);

  Qry_SetResult('UPDATE dbo.Users SET LastLogOutDateTime = getdate()  WHERE ID = '+Dm.UserId.AsString ,dm.YeganehConnection);
  Qry_SetResult('Insert into dbo.User_LogIn_Log(UserId,logOut,ComputerName,IPAddress) select '+ Dm.UserId.AsString + ',getdate(),'''+UpperCase(_ComputerName) +''','''+_IpAddress +'''' ,dm.YeganehConnection);
end;

procedure TMainForm.acShowUserSequenceExecute(Sender: TObject);
begin
  inherited;
//  if FUsersSequence=nil then
  FUsersSequence:= TFUsersSequence.Create(Application);
  FUsersSequence.ShowModal;
  if Assigned(FUsersSequence) then
    FreeAndNil(FUsersSequence);
end;

procedure TMainForm.SetActiveUserOnStatusBar;
var AccessName : string;
begin
  Dm.QGetActiveUser.Close;
  Dm.QGetActiveUser.Open;
  //StatusBar1.Panels[3].Text:='����:'+dm.QGetActiveUserTitle.AsString;
  AccessName := Dm.GetSql(' select top 1 isnull(PositionInCrm,title) from dbo.Accesses where Id ='+ IntToStr( _accessID));
  StatusBar1.Panels[3].Text:='��� : '+ AccessName;
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
   if Assigned(FPoorsantList) then
     FreeAndNil(FPoorsantList);
end;

procedure TMainForm.acShowRepTasksExecute(Sender: TObject);
begin
  inherited;
   FRepTasks:=TFRepTasks.Create(Self);
   FRepTasks.ShowModal;
   if Assigned(FRepTasks) then
     FreeAndNil(FRepTasks);
end;

procedure TMainForm.acSendSMSForCustomerLockExecute(Sender: TObject);
begin
  inherited;
   FSendSMSForCustomerLock:=TFSendSMSForCustomerLock.Create(Self);
   FSendSMSForCustomerLock.ShowModal;
   if Assigned(FSendSMSForCustomerLock) then
     FreeAndNil(FSendSMSForCustomerLock);
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
   if Assigned(FSMSGeneral) then
     FreeAndNil(FSMSGeneral);
end;

procedure TMainForm.acShowSMSEndContractExecute(Sender: TObject);
begin
  inherited;
   FSMSEndContract:=TFSMSEndContract.Create(Self);
   FSMSEndContract.ShowModal;
   if Assigned(FSMSEndContract) then
     FreeAndNil(FSMSEndContract);
end;

procedure TMainForm.acSMSBirthDateExecute(Sender: TObject);
begin
  inherited;
  FSMSBirthDate:=TFSMSBirthDate.Create(Self);
  FSMSBirthDate.ShowModal;
  if Assigned(FSMSBirthDate) then
    FreeAndNil(FSMSBirthDate);
end;

procedure TMainForm.acShowAutoSMSTextExecute(Sender: TObject);
begin
  inherited;
  FSMSAutoText:=TFSMSAutoText.Create(Self);
  FSMSAutoText.ShowModal;
  if Assigned(FSMSAutoText) then
    FreeAndNil(FSMSAutoText);
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
   if Assigned(TasksTreeForm) then
     FreeAndNil(TasksTreeForm);
end;

procedure TMainForm.chkDoneStatusClick(Sender: TObject);
begin
  inherited;
   if Dm.DoneStatus.Active = false then
      Dm.DoneStatus.Open;

   if Dm.DoneStatusShow.Active = false then
      Dm.DoneStatusShow.Open;

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
   customerstatusFilter;

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
         tmpstr:= '(EXISTS(SELECT 1 FROM dbo.Users us WITH(NOLOCK)  WHERE us.isadmin = 1 AND us.Id = '+IntToStr(_UserID)+') OR EXISTS(select 1 from UsersCustomerAccess uca WITH(NOLOCK)  where uca.HasAccess = 1 and  uca.CustomerID = Customer.CustomerID and uca.UserID = '+IntToStr(_UserID)+' ))';
          if where = '' then
            where:= tmpstr
          else
            where := where + ' and '+ tmpstr;
         // Amin 1391/10/04 End

         { TODO -oparsa : 14030201 }
         txt :=   replace1(Trim(SearchEdit.Text),char(223),char(152));

         //if (Trim(txt) <> '') then
         ParamByName('@SearchStr').Value := Trim(SearchEdit.Text) ;
           {
         if (Trim(txt) <> '') then
          if Where <> '' then
            Where := Where+ ' and '+' ((CompanyName like ''%'+txt+'%'' ) or (Treater like ''%'+txt+'%'' ) or (PersonTitle like ''%'+txt+'%'' ) or (Notes like ''%'+txt+'%'' ) or (Address like ''%'+txt+'%'' ) or (PostalCode like ''%'+txt+'%'' ) or (CustomerID like ''%'+txt+'%'' ) or (CustomerNo like ''%'+txt+'%'' ) or '+
                                        ' ( Phone like ''%'+txt+'%'' ) or  (WorkPhone1 like ''%'+txt+'%'' ) or   (MobilePhone like ''%'+txt+'%'' ) or  (FaxNumber like ''%'+txt+'%'' ) or (EmailAddress like ''%'+txt+'%'') or (competitiveNote like ''%'+txt+'%'' ) )'
          else
            Where :=  ' ((CompanyName like ''%'+txt+'%'' ) or (Treater like ''%'+txt+'%'' ) or (PersonTitle like ''%'+txt+'%'' ) or (Notes like ''%'+txt+'%'' ) or (Address like ''%'+txt+'%'' ) or (PostalCode like ''%'+txt+'%'' ) or (CustomerID like ''%'+txt+'%'' ) or (CustomerNo like ''%'+txt+'%'' )  or '+
                                        ' ( Phone like ''%'+txt+'%'' ) or  (WorkPhone1 like ''%'+txt+'%'' ) or   (MobilePhone like ''%'+txt+'%'' ) or  (FaxNumber like ''%'+txt+'%'' ) or (EmailAddress like ''%'+txt+'%'')  or (competitiveNote like ''%'+txt+'%'' ) )' ;

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
             }

        if chkContractFinished.Checked then
        begin
            if where <> '' then
              where := where + ' and  FinishedContractProducts <> '''''
            else  where := ' FinishedContractProducts <> ''''';
        end
        else
        if ComboBox1.ItemIndex in [3,4]  then
        begin
            if where <> '' then
                where := where + ' and  FinishedContractProducts = '''''
             else  where := ' FinishedContractProducts = ''''';

        end;
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

      ParamByName('@ContactNumber')   .Value:=Trim(edtContactNumber.Text);

      ParamByName('@Email').Value:= edtEmail.Text ;

      if pnlCustomerMarketer.Visible and dblMarketerCustomer.KeyValue > 0 then
      begin
        ParamByName('@MarketerID').Value:= dblMarketerCustomer.KeyValue ;
      end
      else
      if OnlyCurrentMarketer.Checked then
         ParamByName('@MarketerID').Value:= _MarketerID
      else
         ParamByName('@MarketerID').Value:= -1 ;
      { TODO -oparsa : 14030201 }

      { TODO -oparsa : 14030126 }

      if dblCustomerStatus.KeyValue <> null then
         ParamByName('@Customerstatusid').Value:=dblCustomerStatus.KeyValue
      else
         ParamByName('@Customerstatusid').Value := 0;

     // ParamByName('@ContactNumber')   .Value:=Trim(edtContactNumber.Text);

      if pnlCustomerMarketer.Visible and dblMarketerCustomer.KeyValue > 0 then
      begin
        ParamByName('@MarketerID').Value:= dblMarketerCustomer.KeyValue ;
      end
      else
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

      if dblActionType_Level.KeyValue <> null then
        ParamByName('@ActionType_LevelId').Value:= dblActionType_Level.KeyValue
      else ParamByName('@ActionType_LevelId').Value := 0;

     if CLBCompaginIDs.SelectedCodes <> ''  then
       ParamByName('@CompaginIDs').value    := CLBCompaginIDs.SelectedCodes
     else  ParamByName('@CompaginIDs').value    := '0';

      //  ParamByName('@Email').Value:=edtEmail.Text;

      { TODO -oparsa : 14030126 }

      Open;
      Filter := fltr;
      Filtered:=true;


      StatusBar1.Panels[2].Text:='����� : '+IntToStr(RecordCount);
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
  if Assigned(FrCategoryEdit) then
    FreeAndNil(FrCategoryEdit);
end;

procedure TMainForm.N74Click(Sender: TObject);
begin
  inherited;
  FrLockSoftware :=TFrLockSoftware.Create(Self);
  FrLockSoftware.ShowModal;
  if Assigned(FrLockSoftware) then
    FreeAndNil(FrLockSoftware);
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
         StatusBar1.Panels[1].Text:= '��� �������';

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
  if Assigned(frmCustStatusReport) then
    FreeAndNil(frmCustStatusReport);
end;

procedure TMainForm.edRecCountKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    bbbClick(self);
end;

{ TODO -oparsa : 14030204 }
procedure TMainForm.TimerSendSmsTimer(Sender: TObject);
var
  qry,qryUpdate : TADOQuery;
  i:integer;
  T:SmsThread;
begin
  
  inherited;
  if _SendSMSType2 then
  begin
    try
      if dm.YeganehConnection.Connected = false then
      begin
        Sleep(10000);
        dm.YeganehConnection.Open('yeganehCompany_CRM', Dm.IntToY(61));
        dm.YeganehConnection.Connected := True;
      end;

      qry:=TADOQuery.Create(self);
      qry.Connection := dm.YeganehConnection;
      qry.CommandTimeout := 1200;

      qryUpdate:=TADOQuery.Create(self);
      qryUpdate.Connection := dm.YeganehConnection;
      qryUpdate.CommandTimeout := 1200;

      qry.SQL.Text := 'Select * From dbo.OutBox  WITH(NOLOCK)  Where  SmsStatus Is null And InProcess=0 And issend=0';
      qry.Open;

      if qry.RecordCount=0 then
        Abort;

      qry.First;
      i:=0;
      SetLength(arrSmsDetails,0); //Add Sanaye 950428 ���� ���� ������� ���� � ����� �� �� �� ʘ����
      while not (qry.eof) do
      begin
        SetLength(arrSmsDetails,Length(arrSmsDetails)+1);
        arrSmsDetails[i].SmsPhone := qry.Fields.Fieldbyname('SmsNumber').AsString;
        arrSmsDetails[i].SmsText := qry.Fields.Fieldbyname('SmsText').AsString;
        arrSmsDetails[i].Id := qry.Fields.Fieldbyname('OutBoxId').asinteger ;
        qryUpdate.SQL.Text := 'update OutBox set InProcess =1 where  OutBoxId ='+qry.Fields.Fieldbyname('OutBoxId').AsString;
        qryUpdate.ExecSQL;
        inc(i);
        qry.Next;
      end;

      if qry.RecordCount>0 then
      begin
        T := SmsThread.Create(True);
        T.FreeOnTerminate := True;
        T.Resume;
      end;

    except

    end;
    qry.Free;
    qryUpdate.Free;

  end;

end;
{ TODO -oparsa : 14030204 }

procedure TMainForm.BBPinClick(Sender: TObject);
var
  qry: TADOQuery;
begin
  inherited;
  if BBPin.ImageIndex=38 then
  begin
    BBPin.ImageIndex := 37 ;
    PinFollowGrid.Visible := True ;
  end
  else
  begin
    BBPin.ImageIndex := 38 ;
    PinFollowGrid.Visible := False ;
  end;
  _UserPinFollowUp :=  PinFollowGrid.Visible ;

  qry := TADOQuery.Create(self);
  qry.Connection := dm.YeganehConnection;
  qry.CommandTimeout := 1200;
  qry.SQL.Text   := 'update dbo.Users set PinFollowUp = '+ BoolToStr(_UserPinFollowUp ) +' where  Id ='+ IntToStr(_UserId );
  qry.ExecSQL;
  qry.Free;
  if _UserPinFollowUp then
  begin
    with Dm.Select_FollowUP_Pin do
     begin
       Close;
       Parameters.ParamByName('@UserID').Value:= _UserID;
       Open;
     end;
   end;

end;

procedure TMainForm.PinFollowGridDblClick(Sender: TObject);
var ID :Integer;
begin
   //FrFollowUp := TFrFollowUp.Create(Application);
   FrFollowUp := TFrFollowUp.Create(nil,Dm.Select_FollowUP_PinCustomerId.AsInteger,true);
   FrFollowUp.CustomerID := Dm.Select_FollowUP_PinCustomerId.AsInteger;
   FrFollowUp.refreshData;
   FrFollowUp.FUID :=  dm.Select_FollowUP_By_DateFollowUPID.AsInteger;
   FrFollowUp.Showmodal;
   if Assigned(FrFollowUp) then
     FreeAndNil(FrFollowUp);
end;

procedure TMainForm.PinFollowGridCellClick(Column: TColumn);
begin
  inherited;
  if Dm.Select_FollowUP_By_Date.RecordCount >0  then
    Dm.Select_FollowUP_By_Date.Locate('CustomerId',Dm.Select_FollowUP_PinCustomerId.Value,[])
end;

procedure TMainForm.N78Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFSaleReport, FSaleReport);
  FSaleReport.ShowModal;
  if Assigned(FSaleReport) then
    FreeAndNil(FSaleReport);
end;

procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
  inherited;
   ContractDateEditFrom.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton12Click(Sender: TObject);
begin
  inherited;
  ContractDateEditTo.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SetColorForm;
begin
  ShapeBase.Brush.Color := _Color1 ;
  MainPnl.Color         := _Color1 ;

  pnlSearchCustomer.StartColor := _Color1 ;
  pnlSearchCustomer.EndColor   := _Color2 ;

  pnlSearchCustomer.TitleStartColor :=  _Color3;
  pnlSearchCustomer.TitleEndColor   :=  _Color4;

  pnlSearchFollow.StartColor := _Color1 ;
  pnlSearchFollow.EndColor   := _Color2 ;

  pnlSearchFollow.TitleStartColor :=  _Color3;
  pnlSearchFollow.TitleEndColor   :=  _Color4;

  pnlSearchContract.StartColor := _Color1 ;
  pnlSearchContract.EndColor   := _Color2 ;

  pnlSearchContract.TitleStartColor :=  _Color3;
  pnlSearchContract.TitleEndColor   :=  _Color4;

  xpPanel1.StartColor := _Color1 ;
  xpPanel1.EndColor   := _Color2 ;

  xpPanel1.TitleStartColor :=  _Color3;
  xpPanel1.TitleEndColor   :=  _Color4;

  pnlDescTask.StartColor := _Color1 ;
  pnlDescTask.EndColor   := _Color2 ;

  pnlDescTask.TitleStartColor :=  _Color3;
  pnlDescTask.TitleEndColor   :=  _Color4;


  btnCustomer.EndColor    :=  _Color1 ;
  btnDaily.EndColor       :=  _Color1 ;
  btntabContract.EndColor :=  _Color1 ;
  btnCartabl.EndColor     :=  _Color1 ;
  //MessageAlarm.EndColor   :=  _Color1 ;

  if (pgcMain.ActivePage.PageIndex  =  3)  then
      btnCustomer.EndColor :=  _Color2
   else if (pgcMain.ActivePage.PageIndex  =  2)  then
      btnDaily.EndColor :=  _Color2
   else if (pgcMain.ActivePage.PageIndex  =  1)  then
      btntabContract.EndColor :=  _Color2

end;

procedure TMainForm.ColorTypeClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFThemColor, FThemColor);
  FThemColor.Showmodal;
  if Assigned(FThemColor) then
    FreeAndNil(FThemColor);
  SetColorForm ;
end;

procedure TMainForm.btnCustomerClick(Sender: TObject);
begin
  inherited;
  pgcMain.ActivePage      := xpTabSheet2;
  btnCustomer.EndColor    :=  _Color2 ;
  btnDaily.EndColor       :=  _Color1 ;
  btntabContract.EndColor :=  _Color1 ;
  btnCartabl.EndColor     :=  _Color1 ;

  if (PhoneGrid.DataSource <> nil) and (PhoneGrid.DataSource.DataSet.Active) then
    StatusBar1.Panels[2].Text:='����� : '+IntToStr(PhoneGrid.DataSource.DataSet.RecordCount)
  else  StatusBar1.Panels[2].Text:='����� : '+ '0' ;
end;

procedure TMainForm.btnDailyClick(Sender: TObject);
begin
  inherited;
  pgcMain.ActivePage      := xpTabSheet1;
  btnCustomer.EndColor    :=  _Color1 ;
  btnDaily.EndColor       :=  _Color2 ;
  btntabContract.EndColor :=  _Color1 ;
  btnCartabl.EndColor     :=  _Color1 ;

  if (FollowGrid.DataSource <> nil) and  (FollowGrid.DataSource.DataSet.Active) then
    StatusBar1.Panels[2].Text:='����� : '+IntToStr(FollowGrid.DataSource.DataSet.RecordCount)
  else StatusBar1.Panels[2].Text:='����� : ' + '0' ;
end;

procedure TMainForm.btntabContractClick(Sender: TObject);
begin
  inherited;
  pgcMain.ActivePage      := ContractTabSheet;
  btnCustomer.EndColor    :=  _Color1 ;
  btnDaily.EndColor       :=  _Color1 ;
  btnCartabl.EndColor     :=  _Color1 ;
  btntabContract.EndColor :=  _Color2 ;
  
  if (ContractGrid.DataSource <> nil) and (ContractGrid.DataSource.DataSet.Active) then
   StatusBar1.Panels[2].Text:='����� : '+IntToStr(ContractGrid.DataSource.DataSet.RecordCount)
  else StatusBar1.Panels[2].Text:='����� : ' + '0';
end;

procedure TMainForm.NCallClick(Sender: TObject);
begin
  inherited;
  //Application.CreateForm(TMainForm, MainForm);
  //MainForm.Showmodal;
    Application.CreateForm(TFCallUser, FCallUser);
    FCallUser.Showmodal;
    if Assigned(FCallUser) then
      FreeAndNil(FCallUser);
end;

procedure TMainForm.N82Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFReportInPerson, FReportInPerson);
  FReportInPerson.Showmodal;
  if Assigned(FReportInPerson) then
    FreeAndNil(FReportInPerson);
end;

procedure TMainForm.N84Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFVersionProduct, FVersionProduct);
  FVersionProduct.Showmodal;
  if Assigned(FVersionProduct) then
    FreeAndNil(FVersionProduct);
end;

procedure TMainForm.TabCartablShow(Sender: TObject);
begin
  inherited;
   pgcMain.ActivePage := TabSheet1;
end;

procedure TMainForm.btnCartablClick(Sender: TObject);
begin
  inherited;
  pgcMain.ActivePage := TabSheet1;
  btnCustomer.EndColor    :=  _Color1 ;
  btnDaily.EndColor       :=  _Color1 ;
  btntabContract.EndColor :=  _Color1 ;
  btnCartabl.EndColor     :=  _Color2 ;
  qryMyTasks.Requery;

  if  qryMyTasks.Active then
    StatusBar1.Panels[2].Text:='����� : '+IntToStr(qryMyTasks.RecordCount)
  else StatusBar1.Panels[2].Text:='����� : ' + '0' ;
end;

procedure TMainForm.RGTypeReportClick(Sender: TObject);
var
   temp_Today :String;
begin
  inherited;
  temp_Today := _today ;
  if RGTypeRepMain.ItemIndex = 1 then
  begin
    temp_Today :=  edtSourceDay.Text;
    RGTypeReport.ItemIndex := 3 ;
  end;
    
  case  RGTypeReport.ItemIndex of
  0:begin
    if BDate.Text ='' then
      BDate.Text := copy(temp_Today,1,8)+'01';

    if eDate.Text ='' then
      eDate.Text := copy(temp_Today,1,8)+'29' ;
  end;
  1:begin
    BDate.Text := ShamsiIncDate(temp_Today,0,0,-1);
    Edate.Text := ShamsiIncDate(temp_Today,0,0,-1);
  end ;
  2:begin
    BDate.Text := '1300/01/01';
    Edate.Text := temp_Today;
  end  ;
  3: begin
    BDate.Text := temp_Today;
    Edate.Text := temp_Today;
  end     ;
  4: begin
    BDate.Text := ShamsiIncDate(temp_Today,0,0,1);
    Edate.Text := ShamsiIncDate(temp_Today,0,0,1);
  end      ;
  5:begin
    BDate.Text := ShamsiIncDate(temp_Today,0,0,-ShamsidayInWeek(temp_Today));
    Edate.Text := ShamsiIncDate(temp_Today,0,0,7-ShamsidayInWeek(temp_Today));
  end    ;
  end;  
  pnlTime.Enabled :=  (RGTypeReport.ItemIndex = 0) and (RGTypeRepMain.ItemIndex =0) ;
  pnlSourcedate .Enabled := (RGTypeRepMain.ItemIndex = 1) ;

//
end;

procedure TMainForm.BitBtn8Click(Sender: TObject);
begin
  inherited;
//
  if qryMyTasksAssignedUserId.AsInteger <> _UserID then
  begin
    ShowMessage('�Ә ���� ��� ����� �� ����� ���� ��� ���� ');
    Exit;
  end;

  if qryMyTasks.RecordCount = 0 then Exit ;

  if (dblCaseStatus.KeyValue = 10) and (qryMyTasksCaseTypeId.AsInteger = 9 ) then
  begin
    Application.CreateForm(TFRefrenceInPerson, FRefrenceInPerson);
    FRefrenceInPerson.FollowUpId          := qryMyTasksFollowUpID.Asinteger ;
    FRefrenceInPerson.CustomerId          := qryMyTasksCustomerID.Asinteger ;
    FRefrenceInPerson.ProductsIdSTR       := qryMyTasksProductId.AsString ;
    FRefrenceInPerson.DBECompanyName.Text := qryMyTasksCompanyName.AsString;
    FRefrenceInPerson.DBEProducts.Text    := qryMyTasksProductTitle.AsString ;
    FRefrenceInPerson.ShowModal;
    if Assigned(FRefrenceInPerson) then
      FreeAndNil(FRefrenceInPerson);
  end
  else
  begin

    Application.CreateForm(TFToRefer, FToRefer);
    FToRefer.CaseStatusItem := 0 ;
    FToRefer.ShamsiDate := '' ;
    FToRefer.TaskId  := qryMyTasksTaskID.AsInteger ;
    
    if qryMyTasksCaseTypeID.AsInteger <> 3 then
      FToRefer.IsTask := True
    else  FToRefer.IsTask := False;
    
    FToRefer.ShowModal;
    if Assigned(FToRefer) then
      FreeAndNil(FToRefer);
  end  ;

  qryMyTasks.Requery;
end;

procedure TMainForm.SpeedButton13Click(Sender: TObject);
begin
  inherited;
   DBShamsiDateEdit1.Text := MssCalendarPro1.Execute('/');
   DBShamsiDateEdit1.SetFocus;
end;

procedure TMainForm.btnReferEditClick(Sender: TObject);
 var TaskId : Integer;
begin
  inherited;


  if qryMyTasksAssignedUserId.AsInteger <> _UserID then
  begin
    ShowMessage('�Ә ���� ��� ����� �� ����� ���� ��� ���� ');
    Exit;
  end;

  Application.CreateForm(TFUpdateJobStatus, FUpdateJobStatus);

  FUpdateJobStatus.CaseStatusItem := qryMyTasksStatusId.AsInteger ;
  FUpdateJobStatus.ShamsiDate     := qryMyTasksEstimatedDate.AsString ;
  FUpdateJobStatus.TaskId  := qryMyTasksTaskID.AsInteger ;
  FUpdateJobStatus.ShowModal;
  if Assigned(FUpdateJobStatus) then
    FreeAndNil(FUpdateJobStatus);

  TaskId := qryMyTasksTaskID.AsInteger ;
  qryMyTasks.Requery;
  qryMyTasks.Locate('TaskID',TaskId,[])

end;

procedure TMainForm.dbgMyTasksNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
   f.Color:=clBlack;
   try
     if (qryMyTasksCompleted.AsBoolean = False ) and (Trim(qryMyTasksEstimatedDate.AsString) <> '')  and (Trim(qryMyTasksEstimatedDate.AsString) < _Today) THEN
         f.Color:=clred
   except
   end;
end;

procedure TMainForm.RGCartablTypeClick(Sender: TObject);
begin
  inherited;
//
  RunTaskQuery(RGCartablType.ItemIndex+1);
  
end;

procedure TMainForm.RunTaskQuery(TypeR : Integer=1);
var
   STR1,STR2,FilterStr :string;
begin
   STR1 := '������� ����� ����� : '+ #13;
   STR2 := #13#13  +'������� ����� ����� : ' +#13;

   if TypeR = 1 then  //����� �������
     FilterStr :=  ' Where Cases.IsActive = 1 and  (IsNull(LTrim(RTrim(ToDoDate)),'''') = '''')  and AssignedUserId = '+IntToStr(_UserID) +' and Completed = 0  '
   else
   if TypeR = 2 then // ����� ������
   begin
     FilterStr :=  ' where Cases.IsActive = 1 and  AssignedUserId = '+IntToStr(_UserID)  +  ' and  (IsNull(LTrim(RTrim(ToDoDate)),'''') <> '''')  ' +
         ' and taskid in ( SELECT MAX(taskid) FROM dbo.tasks where  AssignedUserId = '+IntToStr(_UserID)  +  ' GROUP BY CaseId  ) '
   end
   else
   if TypeR = 3 then // ����� �����
     FilterStr :=  ' where Cases.IsActive = 1 and  AssignedUserId = '+IntToStr(_UserID)  +  ' '
   else
   if TypeR = 4 then   //���� ������ ���
     FilterStr :=  ' Where Cases.IsActive = 1 and (IsNull(LTrim(RTrim(ToDoDate)),'''') = '''')  and Completed = 0 '
   else
   if TypeR = 5 then   //����� ����� �����
     FilterStr :=  ' Where Cases.IsActive = 1  and taskid in ( SELECT MAX(taskid) FROM dbo.tasks  GROUP BY CaseId ) '
   else
   if TypeR = 6 then  // ���� �����
     FilterStr :=  ' Where Cases.IsActive = 1  '    ;

   if edtCustomerSrch.Text <> '' then
      FilterStr := FilterStr + ' and Cases.CustomerID = ' + edtCustomerSrch.Text;

   if edtCaseIDSrch.Text <> '' then
      FilterStr := FilterStr + ' and  Cases.CaseId =  ' + edtCaseIDSrch.Text ;

    if RgTypeCase .ItemIndex  = 1 then
      FilterStr := FilterStr + ' and Cases.IsBug = 0 and Cases.CaseTypeID <> 9 '
    else  if RgTypeCase .ItemIndex  = 2 then
      FilterStr := FilterStr + ' and Cases.IsBug = 1 '
    else  if RgTypeCase .ItemIndex  = 3 then
       FilterStr := FilterStr + ' and Cases.CaseTypeID = 9 ' ;

   With qryMyTasks do
   Begin
      Close;
      SQL.Text:=' Select t.*,CaseTitle,ct.CaseTypeTitle,cp.CasePriorityTitle,ts.TaskStatusTitle,p.ProductTitle,ct.CaseTypeId ,p.ProductId,cases.registerUserId,'
              + ' cases.Completed,Cases.Comment AS CasesComment,cp.CasePriorityID ,Cases.CustomerID,Cases.FollowUpID,Cases.IsBug,c.CompanyName,t.AssignedComment, '
              + ' ''' +STR1+''' '+'+ ISNULL(t.Comment,'''') +'+ ' ''' +STR2+ ''' '+'+ ISNULL(t.AssignedComment,'''') as TaskComment  ,u.Title AssignUserTitle '
              + ' ,ISNULL(t.Comment,'''')  TaskCommentGrid '
              + ' ,Cases.RegisterDate,Cases.CaseEstimatedDate '
              + ',u2.UserName , 0 TaskCurentState,ts.TaskStatusID  '
              + ' From dbo.Tasks t  WITH(NOLOCK)  '
              + ' Left Join dbo.Cases  WITH(NOLOCK) on Cases.Caseid = T.CaseId '
              + ' LEFT JOIN dbo.TaskStatus ts  WITH(NOLOCK)  ON ts.TaskStatusID = T.StatusId  '
              + ' LEFT JOIN dbo.CasePriority cp  WITH(NOLOCK) ON cp.CasePriorityID = Cases.CasePriorityId '
              + ' LEFT JOIN dbo.CaseType ct  WITH(NOLOCK) ON ct.CaseTypeID = Cases.CaseTypeID '
              + ' LEFT JOIN dbo.Product p  WITH(NOLOCK) ON p.ProductID = Cases.ProductId '
              + ' LEFT OUTER JOIN  dbo.Customer AS c  WITH(NOLOCK)  ON c.CustomerID = Cases.CustomerID '
              + ' LEFT JOIN  dbo.Users u  WITH(NOLOCK)   ON u.Id = AssignedUserId  '
              + ' LEFT JOIN dbo.Users u2	 WITH(NOLOCK)  ON u2.Id = Cases.RegisterUserID  '
              +  FilterStr ;
              if TypeR = 6 then  // ���� �����
                SQL.Text:= SQL.Text + ' ORDER BY t.CaseId desc ,t.taskid,t.EstimatedDate,  t.AssignedDate '
              else  SQL.Text:= SQL.Text + ' ORDER BY CP.CasePriorityId,t.CaseId,t.taskid,t.EstimatedDate,  t.AssignedDate '  ;
      Open;
      First;
      With dm.UserByCaseFilter do
      Begin
        Close;
          SQL.Text := ' Select * from dbo.Users  WITH(NOLOCK)  where isactive = 1 AND (ID = '+inttostr(_UserID)+' or  id IN (SELECT Childid FROM [dbo].[ReferralUser]  WITH(NOLOCK)  where parentId = '+inttostr(_UserID)+ ' )) '  ;
          //Parameters.ParamByName('CaseTypeId1').Value := qryMyTasksCaseTypeId.Value;
         //Parameters.ParamByName('CaseTypeId2').Value := qryMyTasksCaseTypeId.Value;
         // Parameters.ParamByName('UserId').Value := _UserID;
        Open;
      End;
   End;
   qryMyTasks.Requery;

  if  qryMyTasks.Active then
    StatusBar1.Panels[2].Text:='����� : '+IntToStr(qryMyTasks.RecordCount)
  else StatusBar1.Panels[2].Text:='����� : ' + '0' ;
end;

procedure TMainForm.dbgMyTasksNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
   Color:= clWindow;
   try

     if (Trim(qryMyTasksCaseEstimatedDate.AsString) <> '')  and (Trim(qryMyTasksCaseEstimatedDate.AsString) < _Today) THEN
         Color:= $00DDDDFF ;

     if (qryMyTasksCompleted.AsBoolean) THEN
         Color:= clMoneyGreen ;

   except
   end;

end;

procedure TMainForm.N87Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFTaskReport, FTaskReport);
  FTaskReport.Showmodal;
  if Assigned(FTaskReport) then
    freeandnil(FTaskReport)
end;

procedure TMainForm.btnRefreshClick(Sender: TObject);
begin
  inherited;
//
  edtCustomerSrch.Text := '';
  edtCaseIDSrch.Text := '' ;
  RgTypeCase.ItemIndex := 0 ;
  
end;

procedure TMainForm.N85Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFBaseRefere, FBaseRefere);
  FBaseRefere.Showmodal;
  if Assigned(FBaseRefere) then
    FreeAndNil(FBaseRefere);
end;

procedure TMainForm.N88Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFfollowUpReport, FfollowUpReport);
  FfollowUpReport.Showmodal;
  if Assigned(FfollowUpReport) then
    FreeAndNil(FfollowUpReport);
end;

procedure TMainForm.dbgMyTasksNeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;

  if Column.FieldName = 'TaskCurentState' then
  begin

    if qryMyTasksCaseTypeID.AsInteger = 10 then
      ImageIndex := 24
    else
    if qryMyTasksTaskStatusID.AsInteger = 11 then
      ImageIndex := 28
    else
    if qryMyTasksTaskStatusID.AsInteger in [5,8,12] then
      ImageIndex := 33
    else
    if qryMyTasksTaskStatusID.AsInteger = 1 then
      ImageIndex := 35
    else
    if qryMyTasksTaskStatusID.AsInteger = 2 then
      ImageIndex := 34
    else
    if qryMyTasksTaskStatusID.AsInteger = 10 then
      ImageIndex := 40
    else
    if qryMyTasksTaskStatusID.AsInteger = 4 then
      ImageIndex := 32
    else
    if qryMyTasksTaskStatusID.AsInteger = 7 then
      ImageIndex := 29
    else
    if qryMyTasksTaskStatusID.AsInteger = 9 then
      ImageIndex := 30
    else
    if qryMyTasksTaskStatusID.AsInteger = 13 then
      ImageIndex := 39
    else
      ImageIndex := 0;
  end;    
end;

procedure TMainForm.TimerMessageTimer(Sender: TObject);
begin
  inherited;
  RefreshAlarmMessage ;
end;

procedure TMainForm.RefreshAlarmMessage;
var qry : TADOQuery;
    qryUpdate : TADOQuery;
begin
  inherited;
  (*
  if _ManagerSupport then
  begin
    qryUpdate:= TADOQuery.Create(self);
    qryUpdate.Connection:= dm.YeganehConnection;

    qryUpdate.SQL.Text := 'Insert dbo.Messages (InserteadUserId, CurrentDate,MessageType,Subject,Description,UserID)'+
                          ' select '+IntToStr(_IsSystemUserID)+',getdate(),1,'+''''+'�����'+''''+','+''''+'���'+''''+','+ inttostr(_userid) +
                          ' from dbo.VWFolloWUpMessage where TypeMessage = 1 ' ;
    qryUpdate.ExecSQL;

  end;
  *)
  
  if dm.YeganehConnection.Connected = false then
  begin
    Sleep(10000);
    dm.YeganehConnection.Open('yeganehCompany_CRM', Dm.IntToY(61));
    dm.YeganehConnection.Connected := True;
  end;

  Qry_SetResult(' EXEC sp_InsertAutoMessage '+ inttostr(_userid) ,dm.YeganehConnection);
  

   qry := TADOQuery.Create(self);
   qry.Connection:= dm.YeganehConnection;
   qry.CommandTimeout := 1200;
   qry.SQL.Text := 'Select id From dbo.Messages  WITH(NOLOCK)  Where  IsActive = 1 and IsRead = 0 and UserID ='+inttostr(_Userid);
   qry.Open;

   if qry.RecordCount=0 then
   begin
     MessageAlarm.ImageIndex := 42 ;
     MessageAlarm.Caption := '0';
     MessageAlarm.Font.Color := clBlack;
   end
   else
   begin
     MessageAlarm.ImageIndex := 44 ;
     
     if qry.RecordCount >99 then
       MessageAlarm.Caption := '+99'
     else MessageAlarm.Caption :=  IntToStr(qry.RecordCount) ;

     MessageAlarm.Font.Color := $000000CA;
   end;

end;

procedure TMainForm.MessageAlarmClick(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFMessageAlarm, FMessageAlarm);
  FMessageAlarm.Showmodal;
  if Assigned(FMessageAlarm) then
   FreeAndNil(FMessageAlarm);
  RefreshAlarmMessage ;

end;

procedure TMainForm.N89Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFReferralUser, FReferralUser);
  FReferralUser.Showmodal;
  if Assigned(FReferralUser) then
    FreeAndNil(FReferralUser);
end;

procedure TMainForm.h1Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFSendInnerMessage, FSendInnerMessage);
  FSendInnerMessage.Showmodal;
  if Assigned(FSendInnerMessage) then
    FreeAndNil(FSendInnerMessage);
end;

procedure TMainForm.btnstartClick(Sender: TObject);
var
  tempTime : TTime;
begin
  inherited;
  if (RGCartablType.ItemIndex = 0) or (RGCartablType.ItemIndex = 1) or (RGCartablType.ItemIndex = 2)  then
  begin
    dm.tblTaskLog.Close;
    dm.tblTaskLog.open;
    StartTimeTaskLog:= Now;
    TimerTaskLog.Enabled:=True;
    btnstart.Enabled:= False;
    btnStop.Enabled := True;
    dm.tblTaskLog.Append;
    dm.tblTaskLogUserId.AsInteger := _UserId ;
    dm.tblTaskLogTaskId.AsInteger := qryMyTasksTaskId.AsInteger ;
    dm.tblTaskLogCaseId.AsInteger := qryMyTasksCaseId.AsInteger ;
    dm.tblTaskLogStartTime.AsDateTime := now ;//Time_GetTime(Dm.YeganehConnection,False);
    dm.tblTaskLog.post;
    MainTaskLogId := dm.tblTaskLogId.AsInteger ;
    LblTaskNo.Caption := ' �Ә '+ qryMyTasksCaseId.AsString ;//qryMyTasksTaskID.AsString ;
    tempTime :=  Timeof(Now-StartTimeTaskLog) ;
    edtTimeFromStart.Text := inttostr(strtoint(Copy(TimeToStr(tempTime),1,2))-12) + Copy(TimeToStr(tempTime),3,6);
  end
  else
  begin
    ShowMessage('��� ������ ��� ����� ����� �� ���  ������� ����� ��� ���� ������ ����� ���� ��� Ϙ�� ��� �� ��� ');
  end;

end;

procedure TMainForm.TimerTaskLogTimer(Sender: TObject);
var
  tempTime : TTime;
begin
  inherited;
  //edtTimeFromStart.Text := TimeToStr(Timeof(Now-StartTimeTaskLog));
  tempTime :=  Timeof(Now-StartTimeTaskLog) ;
  edtTimeFromStart.Text := TimeToStr(tempTime);
  edtTimeFromStart.Text := inttostr(strtoint(Copy(TimeToStr(tempTime),1,2))-12) +  Copy(TimeToStr(tempTime),3,6);;
 // TimeToStr(Now-StartTimeTaskLog);
end;

procedure TMainForm.btnStopClick(Sender: TObject);
begin
  inherited;
  TimerTaskLog.Enabled:= False ;
  dm.tblTaskLog.Close;
  dm.tblTaskLog.Open;
  if ( dm.tblTaskLog.Locate('ID',MainTaskLogId,[])) then
  begin
    dm.tblTaskLog.Edit;
    dm.tblTaskLogEndTime.AsDateTime := now ;//Time_GetTime(Dm.YeganehConnection,False);
    if Length(Trim(edtTimeFromStart.Text))= 7 then
      Dm.tblTaskLogLongTime.AsString  := '0'+Trim(edtTimeFromStart.Text)
    else  Dm.tblTaskLogLongTime.AsString  := Trim(edtTimeFromStart.Text) ;

    dm.tblTaskLog.post;
    MainTaskLogId := 0 ;
    edtTimeFromStart.Text := '0' ;
    LblTaskNo.Caption := ' �Ә ' ;
  end ;

  btnstart.Enabled:= True;
  btnStop.Enabled := False;
end;

procedure TMainForm.N80Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFSalesFunnel, FSalesFunnel);
  FSalesFunnel.Showmodal;
  if Assigned(FSalesFunnel) then
    FreeAndNil(FSalesFunnel);

end;

procedure TMainForm.btnCustomerViewClick(Sender: TObject);
begin
  inherited;
   propertiesForm := TPropertiesForm.Create(Application,qryMyTasksCustomerID.Asinteger ) ;
   PropertiesForm.Showmodal;
   if Assigned(PropertiesForm) then
     FreeAndNil(PropertiesForm);
end;

procedure TMainForm.n92Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFActionTypeLevel, FActionTypeLevel);
  FActionTypeLevel.Showmodal;
  if Assigned(FActionTypeLevel) then
    FreeAndNil(FActionTypeLevel);
end;

procedure TMainForm.btnMapsClick(Sender: TObject);
begin
  inherited;
  FCustomerMap := TFCustomerMap.Create(Application,dm.CustomerCustomerID.AsInteger) ;
  //Application.CreateForm(TFCustomerMap, FCustomerMap);
  FCustomerMap.Showmodal;
  if Assigned(FCustomerMap) then
    FreeAndNil(FCustomerMap);
end;

procedure TMainForm.btnMapBugClick(Sender: TObject);
begin
  inherited;
  //Application.CreateForm(TFMapBug, FMapBug);
  FMapBug := TFMapBug.Create(Application,qryMyTasksCaseId.AsInteger) ;
  FMapBug.Showmodal;
  if Assigned(FMapBug) then
    FreeAndNil(FMapBug);
end;

procedure TMainForm.N93Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFCompare_Report, FCompare_Report);
  FCompare_Report.Showmodal;
  if Assigned(FCompare_Report) then
    FreeAndNil(FCompare_Report);
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if  pgcMain.ActivePage = xpTabSheet2 then
  begin
    If (Shift = [ssctrl]) and (inttostr(key) = '113') then   //f2
    begin

    end;
    If (Shift = [ssctrl]) and (inttostr(key) = '116') then  //f5
    begin

    end;
    If (Shift = [ssctrl]) and (inttostr(key) = '78') then //n
    begin
      if BitBtn1.Visible and BitBtn1.Enabled then
        BitBtn1Click(self);
    end;
  end;
end;

procedure TMainForm.dblActionType_LevelKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);
end;

procedure TMainForm.N94Click(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TFTimeIntervalSale, FTimeIntervalSale);
  FTimeIntervalSale.Showmodal;
  if Assigned(FTimeIntervalSale) then
    FreeAndNil(FTimeIntervalSale);
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  inherited;
  dblMarketer.KeyValue := null;
end;

procedure TMainForm.FollowGridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    FollowGridDblClick(self);
end;

procedure TMainForm.FollowGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
begin
  inherited;
  Color:= clWindow ;
  if cbTimeInterval.checked then
  begin
    try
      with dm do
      if (Select_FollowUP_By_DateISPlusTime.AsBoolean ) then
        Color := $009595FF ;
    except
    end;
  end;


  if (Dm.Select_FollowUP_By_DateActionTypeID.AsInteger in  [78,62] ) then
       Color:= TColor(RGB(255, 201, 14));


  if (Dm.Select_FollowUP_By_DateActionTypeID.AsInteger in  [37,7,64] ) then
       Color:= TColor(RGB(210, 166, 255));

    {
  if not (Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull) then
            Color:= TColor(RGB(250, 170, 49));

  if not (Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) then
            Color:=$00ffd683;


  if not (Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) then
            Color:= TColor(RGB(85, 232, 105));

  if not (Dm.Select_FollowUP_By_CustomerIDPdfAttachment.IsNull) then
            Color:= clred;

  if ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDPicAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      or
      ((not Dm.Select_FollowUP_By_CustomerIDWordAttachment.IsNull) and (not Dm.Select_FollowUP_By_CustomerIDExcellAttachment.IsNull))
      then
      Color:=$00d4acfd ;
            }

end;

procedure TMainForm.UnlockRepClick(Sender: TObject);
begin
  inherited;
  lblLockRep.Caption := '����� ��� �� ����';
  LockReport.Visible := True;
  UnlockRep.Visible  := False;
end;

procedure TMainForm.LockReportClick(Sender: TObject);
begin
  inherited;
  {
  if CurentReportRun = 'Today'  then
    lblLockRep.Caption := '�����'
  else if CurentReportRun = 'BeforeDay'  then
    lblLockRep.Caption := '�����'
  else if CurentReportRun = 'LastDay'  then
    lblLockRep.Caption := '����'
  else if CurentReportRun = 'ToToday'  then
    lblLockRep.Caption := '�� �����'
  else if CurentReportRun = 'ThisWeek'  then
    lblLockRep.Caption := '��� ����' ;
           }

  lblLockRep.Caption := '������ ��� ����';

  LockReport.Visible := False;
  UnlockRep.Visible  := True;

end;

procedure TMainForm.CountPanelSet;
begin

   if (FollowGrid.DataSource <> nil) and  (FollowGrid.DataSource.DataSet.Active) then
      StatusBar1.Panels[2].Text := ' ����� ����� : ' +IntToStr(Dm.Select_FollowUP_By_Date.Parameters.ParamByName('@CountUniqCustomer').Value)
   else
      StatusBar1.Panels[2].Text := '����� : ' + '0' ;

end;

procedure TMainForm.SpeedButton14Click(Sender: TObject);
begin
  inherited;
   edtSourceDay.Text := MssCalendarPro1.Execute('/');
end;

procedure TMainForm.SpeedButton15Click(Sender: TObject);
begin
  inherited;
  edtSourceDay.Text := ShamsiIncDate(edtSourceDay.Text,0,0,1);
  
  btnSrchFollowClick(Sender );
end;

procedure TMainForm.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  edtSourceDay.Text := ShamsiIncDate(edtSourceDay.Text,0,0,-1);

  btnSrchFollowClick(Sender );
end;

procedure TMainForm.RGTypeRepMainClick(Sender: TObject);
begin
  inherited;
  pnlTime.Enabled      :=  (RGTypeReport.ItemIndex = 0) and (RGTypeRepMain.ItemIndex =0) ;
  RGTypeReport.Enabled :=  (RGTypeRepMain.ItemIndex =0);

  pnlSourcedate .Enabled := (RGTypeRepMain.ItemIndex = 1) ;

  if RGTypeRepMain.ItemIndex =0 then
  begin
    edtSourceDay.Color :=  clScrollBar;
    BDate.Color :=  clWindow;
    Edate.Color :=  clWindow;
  end
  else
  begin
    edtSourceDay.Color :=  clWindow;
    BDate.Color :=  clScrollBar;
    Edate.Color :=  clScrollBar;
  end;
end;

procedure TMainForm.N96Click(Sender: TObject);
begin
  inherited;
   FFixedAsset := TFFixedAsset.Create(Application);
   FFixedAsset.ShowModal;
   if Assigned(FFixedAsset) then
     FreeAndNil(FFixedAsset);
end;

procedure TMainForm.N97Click(Sender: TObject);
begin
  inherited;
   FFixAssetMove := TFFixAssetMove.Create(Application);
   FFixAssetMove.ShowModal;
   if Assigned(FFixAssetMove) then
     FreeAndNil(FFixAssetMove);
end;

procedure TMainForm.BitBtn11Click(Sender: TObject);
begin
  inherited;
  DBLCompagin.KeyValue := null ;
end;

procedure TMainForm.BitBtn12Click(Sender: TObject);
begin
  inherited;
  dbComboState.KeyValue := null ;
end;

procedure TMainForm.SpeedButton17Click(Sender: TObject);
begin
  inherited;
  Edate.Text := ShamsiIncDate(Edate.Text,0,0,1);
end;

procedure TMainForm.SpeedButton19Click(Sender: TObject);
begin
  inherited;
  BDate.Text := ShamsiIncDate(BDate.Text,0,0,1);
end;

procedure TMainForm.SpeedButton18Click(Sender: TObject);
begin
  inherited;
  Edate.Text := ShamsiIncDate(Edate.Text,0,0,-1);
end;

procedure TMainForm.SpeedButton20Click(Sender: TObject);
begin
  inherited;
  BDate.Text := ShamsiIncDate(BDate.Text,0,0,-1);
end;

procedure TMainForm.N122Click(Sender: TObject);
begin
  inherited;
   FDailyUserReport := TFDailyUserReport.Create(Application);
   FDailyUserReport.ShowModal;
   if Assigned(FDailyUserReport) then
     FreeAndNil(FDailyUserReport);

 // Application.CreateForm(TFDailyUserReport, FDailyUserReport);
end;

procedure TMainForm.BitBtn13Click(Sender: TObject);
begin
  inherited;
  dblMarketerCustomer.KeyValue := null ;
  SearchEditChange(Sender);
end;

procedure TMainForm.dblMarketerCustomerKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  SearchEditChange(Sender);
end;

procedure TMainForm.customerstatusFilter;
begin
  if ComboBox1.ItemIndex = 0  then
  begin
      chkContractFinished.Checked := True ;
      OnlyCurrentMarketer.Checked := False ;
  end
  else   if ComboBox1.ItemIndex = 1  then
  begin
     OnlyCurrentMarketer.Checked := True ;
     chkContractFinished.Checked := False ;
  end
  else   if ComboBox1.ItemIndex = 2  then
  begin
     chkContractFinished.Checked := True ;
     OnlyCurrentMarketer.Checked := True ;
  end
  else   if ComboBox1.ItemIndex = 3  then
  begin
     OnlyCurrentMarketer.Checked := False ;
     chkContractFinished.Checked := False ;
  end
  else   if ComboBox1.ItemIndex = 4  then
  begin
     OnlyCurrentMarketer.Checked := True ;
     chkContractFinished.Checked := False ;
  end ;

end;

end.
