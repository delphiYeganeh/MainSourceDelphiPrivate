unit UMain;

interface

Uses shellapi, windows,forms, BaseUnit, ExtCtrls, Menus, ExtActns, BandActn, Classes,SysUtils,StdCtrls,Dialogs,
  ActnList, ActnMan, ToolWin, ActnCtrls, Controls, ComCtrls,ADODB,Grids,Variants,DB,DBGrids,
  QuickRpt, QRCtrls, OleServer, WordXP, OleCtnrs, XPStyleActnCtrls,Types,FileCtrl ,
  ActnMenus, Buttons, DBCtrls, YDbgrid,Graphics, DBTreeView, Spin,  shlobj,
  ImgList,Registry, OleCtrls, uCiaTrayIcon,  YRotateLabel , Math,
  frxDesgn, frxClass,   wwriched,StrUtils, IdSocketHandle,
  CheckLst, YchecklistBox, IdMessage, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdPOP3, ZipForge,
  YeganehCheckMail, UemsVCL, Mask, YEDit, ieview, imageenview,
  dbimageen,yShamsiDate, AcroPDFLib_TLB, mssdbgrid, Planner, AdvAlertWindow, UGetEmailThread,
  TntDBGrids,U_VERSION_INFO_FRM,U_VERSION_INFO_EDIT_FRM,U_SETTING_ATF_PEY_FRM,U_CONNECT_DABIR_TO_ARCHIVE_SETTING_FRM,
  AppEvnts;

Type
   {Ranjbar}

   TReportType = (rtShow , rtPrint , rtDesign);

   DisplayModes=(Notany,Archive,Search);
   TDblclickAction=(viewLetter,ViewJpg,ViewWord,ViewPdf);
  TMainForm = class(TMBaseForm)
    MainActionManager: TActionManager;
    ReceiveInsert: TAction;
    SendInsert: TAction;
    Arecommite: TAction;
    Afix: TAction;
    Aclose: TAction;
    AARCHIVE: TAction;
    AChangeColor: TAction;
    AAnswer: TAction;
    AShowFollowLetter: TAction;
    AFromOrganize: TAction;
    AretroAction: TAction;
    ABackup: TAction;
    AShrinck: TAction;
    access: TAction;
    AviewAllletter: TAction;
    AUsers: TAction;
    AUserSetting: TAction;
    ATExactCopy: TAction;
    AOtherReceivers: TAction;
    Apicture: TAction;
    AAbout: TAction;
    ActionPanel: TPanel;
    ChangeYear: TAction;
    ATemplate: TAction;
    AWordMain: TAction;
    ADarftIns: TAction;
    ADraftToLetter: TAction;
    ALetterReport: TAction;
    AFulltext: TAction;
    AsecChange: TAction;
    AEditSecs: TAction;
    AErrorMsg: TAction;
    ASystemSetting: TAction;
    Astatistic: TAction;
    Adailyrep: TAction;
    AfillLetterData: TAction;
    QueryRefresher: TTimer;
    AshortCut: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    Adeleted_toLetter: TAction;
    AchangePassword: TAction;
    PtoolBar: TPanel;
    GroupingPanel: TPanel;
    PArchive: TPanel;
    Panel8: TPanel;
    SpeedButton1: TSpeedButton;
    SBArchive: TSpeedButton;
    List: TPanel;
    PSearch: TPanel;
    Splitter1: TSplitter;
    Pdata: TPanel;
    Label1: TLabel;
    DBMemoMemo: TDBMemo;
    Splitter2: TSplitter;
    alock: TAction;
    Ahome: TAction;
    Asearch: TAction;
    AArchiveFolders: TAction;
    DBTreeArchive: TDBTreeView;
    Panel2: TPanel;
    status0: TPanel;
    status1: TPanel;
    status2: TPanel;
    status3: TPanel;
    YEGANEH: TPanel;
    status4: TPanel;
    UserTimer: TTimer;
    GetList3: TADOStoredProc;
    GetList4: TADOStoredProc;
    DGetList3: TDataSource;
    DgetList4: TDataSource;
    AloadImages: TAction;
    ArchiveFolders: TMemo;
    LoginLogoutReport: TAction;
    AexportData: TAction;
    ArestorLtterData: TAction;
    AActiveUser: TAction;
    status6: TPanel;
    ArecDraftIns: TAction;
    adeleteWord: TAction;
    ARecommiteGroup: TAction;
    DBMemoLetterRecommites: TDBMemo;
    AGroupRecommite: TAction;
    AchangeLetterProperties: TAction;
    ATemplateGroup: TAction;
    AAddExtention: TAction;
    AaddLetterData: TAction;
    AnewRecommite: TAction;
    ADoCommite: TAction;
    ImageList: TImageList;
    ActionToolBar1: TActionToolBar;
    Label4: TLabel;
    AloadPDF: TAction;
    ACustomizeGrid: TAction;
    AinnerLetter: TAction;
    ASendToOtherSec: TAction;
    adeleteScan: TAction;
    ARelatedSecretariat: TAction;
    AllowEditWord: TAction;
    Aimport: TAction;
    AmonitorTables: TAction;
    ARecommiteList: TAction;
    ALetterNoSetting: TAction;
    AUserTable: TAction;
    AInputRefferenceTable: TAction;
    aReportUserTable: TAction;
    lettersDbGrid: TYDBGrid;
    AARchiveLetter: TAction;
    aSENDMessage: TAction;
    AgetMessage: TAction;
    AEditSubject: TAction;
    ABrowsArchive: TAction;
    EditLetterText: TAction;
    AddNote: TAction;
    ASendLetterToSec: TAction;
    ViewRecommite: TAction;
    ActivateRecommite: TAction;
    PopupMenu1: TPopupMenu;
    N3: TMenuItem;
    ADelete: TAction;
    ASwitchUser: TAction;
    ALetterHistory: TAction;
    AArchiveCenter: TAction;
    AddLetterSubject: TAction;
    ARecommiteReport: TAction;
    ARecommiteStat: TAction;
    FollowupPanel: TPanel;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    CloseBtn: TSpeedButton;
    openBtn: TSpeedButton;
    MinimizedPanel: TPanel;
    labell: TYRotateLabel;
    PDJRotoLabel1: TYRotateLabel;
    ImageList1: TImageList;
    ALetterChainFollow: TAction;
    AddFollow: TAction;
    AShowFollow: TAction;
    AddDocument: TAction;
    ScanL: TAction;
    Charset: TTimer;
    SaveDialog: TSaveDialog;
    ASaveWord: TAction;
    ExactCopy: TAction;
    LockOldYear: TAction;
    AAccessField: TAction;
    FaxRefresher: TTimer;
    AUpdateFax: TAction;
    PopupMenu: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    Excel1: TMenuItem;
    Word1: TMenuItem;
    AloadFile: TAction;
    Panel3: TPanel;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    lblYear: TLabel;
    Label3: TLabel;
    SpinEdit: TEdit;
    CBFormat: TDBLookupComboBox;
    CBReceive: TDBLookupComboBox;
    GetList7: TADOStoredProc;
    DgetList7: TDataSource;
    CBArchiveStatus: TDBLookupComboBox;
    Areport_userLog: TAction;
    APrintFish: TAction;
    AddGroupNews: TAction;
    AddNews: TAction;
    NewsList: TAction;
    PageControl1: TPageControl;
    TshFollowUp: TTabSheet;
    TaskPanel: TPanel;
    YDBGrid2: TYDBGrid;
    Panel4: TPanel;
    Button1: TBitBtn;
    Button2: TBitBtn;
    Button3: TBitBtn;
    TshMessage: TTabSheet;
    QrNews: TADOQuery;
    QrNewsNewsID: TAutoIncField;
    QrNewsCode: TIntegerField;
    QrNewsTitle: TWideStringField;
    QrNewsISRead: TBooleanField;
    DSNews: TDataSource;
    GroupBox2: TGroupBox;
    Panel9: TPanel;
    Panel6: TPanel;
    BBNewsOK: TBitBtn;
    GroupBox1: TGroupBox;
    MessageLabel: TLabel;
    BBOK: TBitBtn;
    DBGrid1: TDBGrid;
    QrSrchArchFolder: TADOQuery;
    SpeedButton3: TSpeedButton;
    QrSrchArchFolderFolderID: TAutoIncField;
    QrSrchArchFolderParentFolderID: TIntegerField;
    QrSrchArchFolderTitle: TWideStringField;
    QrSrchArchFolderUserID: TIntegerField;
    QrSrchArchFolderNotes: TWideStringField;
    QrSrchArchFolderPlace: TWideStringField;
    Panel5: TPanel;
    ReportRelatedLetter: TAction;
    Panel7: TPanel;
    ImageList2: TImageList;
    ActPhone: TAction;
    Email: TAction;
    ConvertEmailToLetter: TAction;
    GetList3KeyValue: TIntegerField;
    GetList3Title: TWideStringField;
    GetList3Notes: TWideStringField;
    Act_WorkGroup: TAction;
    SBFollowLetter: TBitBtn;
    TrConvertEmails: TTimer;
    AddSysEmail: TAction;
    QrLetterData: TADOQuery;
    QrLetterDataLetterDataID: TAutoIncField;
    QrLetterDataLetterID: TIntegerField;
    DSLetterData: TDataSource;
    QrLetterDataImage: TBlobField;
    SBExpand: TSpeedButton;
    SBCollapse: TSpeedButton;
    TabSheet1: TTabSheet;
    GroupBox3: TGroupBox;
    Label2: TLabel;
    Label5: TLabel;
    DestinationComputer: TButton;
    Edit1: TEdit;
    GroupBox4: TGroupBox;
    Memo1: TMemo;
    GroupBox5: TGroupBox;
    btbSend: TButton;
    Memo2: TMemo;
    CheckBox1: TCheckBox;
    acRepMohlateEghdam: TAction;
    acDefineUserGroup: TAction;
    Panel10: TPanel;
    YRotateLabel1: TYRotateLabel;
    Image1: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Image2: TImage;
    Label8: TLabel;
    Image3: TImage;
    acShowWorkSheetBase: TAction;
    acWorkSheetAllRep: TAction;
    acShowWorkSheetResult: TAction;
    QGetSecondOrgID: TADOQuery;
    QGetSecondOrgIDSecondOrgID: TIntegerField;
    QTemp: TADOQuery;
    tmRefereshQuery: TTimer;
    ASigners: TAction;
    APrintWord: TAction;
    Image4: TImage;
    Label9: TLabel;
    ALetterDataTextSearch: TAction;
    word2: TAction;
    AReceiveFax: TAction;
    CustomizeActionBars1: TCustomizeActionBars;
    AServices: TAction;
    ASendFax: TAction;
    AShowFaxes: TAction;
    ASendEmail: TAction;
    qryAllAttachmentsWithoutWord: TADOQuery;
    qryAllAttachmentsWithoutWordLetterDataID: TAutoIncField;
    qryAllAttachmentsWithoutWordImage: TBlobField;
    qryAllAttachmentsWithoutWordExtention: TStringField;
    AConnectToArchive: TAction;
    AppTerminate: TTimer;
    Label10: TLabel;
    Label11: TLabel;
    MainMenu1: TMainMenu;
    m11: TMenuItem;
    m21: TMenuItem;
    m31: TMenuItem;
    m41: TMenuItem;
    m51: TMenuItem;
    m61: TMenuItem;
    m71: TMenuItem;
    m81: TMenuItem;
    m91: TMenuItem;
    m101: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    N31: TMenuItem;
    N41: TMenuItem;
    N51: TMenuItem;
    N61: TMenuItem;
    N71: TMenuItem;
    N81: TMenuItem;
    N91: TMenuItem;
    N101: TMenuItem;
    N111: TMenuItem;
    N4: TMenuItem;
    N12: TMenuItem;
    N22: TMenuItem;
    N32: TMenuItem;
    N42: TMenuItem;
    N52: TMenuItem;
    N62: TMenuItem;
    N72: TMenuItem;
    N5: TMenuItem;
    N13: TMenuItem;
    N23: TMenuItem;
    N33: TMenuItem;
    N6: TMenuItem;
    N14: TMenuItem;
    N7: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N24: TMenuItem;
    N34: TMenuItem;
    N43: TMenuItem;
    N53: TMenuItem;
    N63: TMenuItem;
    N73: TMenuItem;
    N17: TMenuItem;
    N25: TMenuItem;
    N35: TMenuItem;
    N44: TMenuItem;
    N54: TMenuItem;
    N64: TMenuItem;
    N8: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N26: TMenuItem;
    N36: TMenuItem;
    N45: TMenuItem;
    N55: TMenuItem;
    N9: TMenuItem;
    N110: TMenuItem;
    N27: TMenuItem;
    N10: TMenuItem;
    N112: TMenuItem;
    N28: TMenuItem;
    N37: TMenuItem;
    N46: TMenuItem;
    N113: TMenuItem;
    N29: TMenuItem;
    N38: TMenuItem;
    N47: TMenuItem;
    N56: TMenuItem;
    N65: TMenuItem;
    N74: TMenuItem;
    N20: TMenuItem;
    N114: TMenuItem;
    N210: TMenuItem;
    N30: TMenuItem;
    N115: TMenuItem;
    N211: TMenuItem;
    N39: TMenuItem;
    N116: TMenuItem;
    N212: TMenuItem;
    N310: TMenuItem;
    N40: TMenuItem;
    N117: TMenuItem;
    N213: TMenuItem;
    N311: TMenuItem;
    N48: TMenuItem;
    N57: TMenuItem;
    N49: TMenuItem;
    N118: TMenuItem;
    N214: TMenuItem;
    N312: TMenuItem;
    N410: TMenuItem;
    N58: TMenuItem;
    N50: TMenuItem;
    N119: TMenuItem;
    N215: TMenuItem;
    N313: TMenuItem;
    N411: TMenuItem;
    N59: TMenuItem;
    N66: TMenuItem;
    N60: TMenuItem;
    N120: TMenuItem;
    N216: TMenuItem;
    N412: TMenuItem;
    N121: TMenuItem;
    N217: TMenuItem;
    N314: TMenuItem;
    N122: TMenuItem;
    N218: TMenuItem;
    N315: TMenuItem;
    N123: TMenuItem;
    N219: TMenuItem;
    N316: TMenuItem;
    N124: TMenuItem;
    N220: TMenuItem;
    N317: TMenuItem;
    N413: TMenuItem;
    N510: TMenuItem;
    N67: TMenuItem;
    N75: TMenuItem;
    N125: TMenuItem;
    N221: TMenuItem;
    N318: TMenuItem;
    N68: TMenuItem;
    N414: TMenuItem;
    ASaveAttachments: TAction;
    N69: TMenuItem;
    ImportExcel: TAction;
    Word3: TMenuItem;
    ALetterNoSettingForWord: TAction;
    RadioGroup1: TRadioGroup;
    advAlert: TAdvAlertWindow;
    TimerAlert: TTimer;
    PrintWordWithParaph: TAction;
    spSelect_recommites_byLetterID: TADOStoredProc;
    spSelect_recommites_byLetterIDDSDesigner: TWideStringField;
    ADOQuery1: TADOQuery;
    N70: TMenuItem;
    N76: TMenuItem;
    Action1: TAction;
    DF1: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    ImageList3: TImageList;
    N79: TMenuItem;
    N80: TMenuItem;
    N82: TMenuItem;
    Action2: TAction;
    N83: TMenuItem;
    ado_IsShow: TADOStoredProc;
    ado_IsShowIsShow: TBooleanField;
    Action4: TAction;
    N85: TMenuItem;
    GetList3ListItemsID: TAutoIncField;
    GetList3ListID: TWordField;
    GetList3UsersID: TIntegerField;
    GetList3KeyValue_1: TIntegerField;
    GetList3Title_1: TWideStringField;
    GetList3Notes_1: TWideStringField;
    WordApplication: TWordApplication;
    ImageEnDBView1: TImageEnDBView;
    Action12: TAction;
    tmrGetEmail: TTimer;
    mmoLogReplace: TMemo;
    Timer: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure ReceiveInsertExecute(Sender: TObject);
    procedure SendInsertExecute(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure RefreshQuery;
    procedure ShowFixTables;
    procedure AChangeColorExecute(Sender: TObject);
    procedure AAnswerExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AFromOrganizeExecute(Sender: TObject);
    procedure AfixExecute(Sender: TObject);
    procedure MainActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
    procedure ABackupExecute(Sender: TObject);
    procedure AShrinckExecute(Sender: TObject);
    procedure accessExecute(Sender: TObject);
    procedure AUsersExecute(Sender: TObject);
    procedure AUserSettingExecute(Sender: TObject);
    procedure ArecommiteExecute(Sender: TObject);
    procedure AARCHIVEExecute(Sender: TObject);
    procedure AretroActionExecute(Sender: TObject);
    procedure AShowFollowLetterExecute(Sender: TObject);
    procedure AviewAllletterExecute(Sender: TObject);
    Procedure SetLetterFormat(value:byte);
    Procedure SetarchiveFolderID(value:integer);
    Procedure SetLetter_Type(value:byte);
    Procedure SetWhere(Value:String);
    procedure GetExactCopy(id:byte);
    procedure ApictureExecute(Sender: TObject);
    Function  GetSearch:boolean;
    function  DataSetPost:boolean;
    procedure ArecommiteStatisticsExecute(Sender: TObject);
    procedure ChangeYearExecute(Sender: TObject);
    procedure ATemplateExecute(Sender: TObject);
    procedure AExpotToWordExecute(Sender: TObject);
    procedure AWordMainExecute(Sender: TObject);
    procedure ADarftInsExecute(Sender: TObject);
    procedure ADraftToLetterExecute(Sender: TObject);
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure ALetterReportExecute(Sender: TObject);
    procedure ASentenseExecute(Sender: TObject);
    procedure AFulltextExecute(Sender: TObject);
    procedure AsecChangeExecute(Sender: TObject);
    procedure AEditSecsExecute(Sender: TObject);
    procedure AErrorMsgExecute(Sender: TObject);
    procedure ASystemSettingExecute(Sender: TObject);
    procedure AstatisticExecute(Sender: TObject);
    procedure AdailyrepExecute(Sender: TObject);
    procedure N27Click(Sender: TObject);
    procedure AfillLetterDataExecute(Sender: TObject);
    procedure ATExactCopyExecute(Sender: TObject);
    procedure QueryRefresherTimer(Sender: TObject);
    procedure AOtherReceiversExecute(Sender: TObject);
    procedure AshortCutExecute(Sender: TObject);
    procedure Adeleted_toLetterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AchangePasswordExecute(Sender: TObject);
    procedure CBFormatChange(Sender: TObject);
    procedure ViewReceivedLetter(LetterID:integer);
    procedure ViewInnerLetter(LetterID:integer);
    procedure ViewDocument(LetterID:integer);
    procedure ViewSentLetter(LetterID:integer);
    procedure ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
    procedure SpeedButton9Click(Sender: TObject);
    procedure lettersDbGridNeedColorCondition(Column: TColumn;
      State: TGridDrawState; var Color: TColor);
    procedure alockExecute(Sender: TObject);
    procedure AarchivecExecute(Sender: TObject);
    procedure SetDisplayMode(value:DisplayModes);
    procedure ANotAnyExecute(Sender: TObject);
    procedure AHomeExecute(Sender: TObject);
    procedure ASearchExecute(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure AArchiveFoldersExecute(Sender: TObject);
    procedure UserTimerTimer(Sender: TObject);
    procedure CBReceiveClick(Sender: TObject);
    procedure SBArchiveClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure AloadImagesExecute(Sender: TObject);
    procedure LoginLogoutReportExecute(Sender: TObject);
    procedure AexportDataExecute(Sender: TObject);
    procedure FromOrgOrganize;
    procedure DBTreeArchiveClick(Sender: TObject);
    procedure ArestorLtterDataExecute(Sender: TObject);
    procedure lettersDbGridNeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure Get_All_LetterAfterScroll(DataSet: TDataSet);
    procedure AActiveUserExecute(Sender: TObject);
    procedure Only_CurrentClick(Sender: TObject);
    procedure ArecDraftInsExecute(Sender: TObject);
    procedure adeleteWordExecute(Sender: TObject);
    Procedure MakeSelectedRecommites ;
    procedure ARecommiteGroupExecute(Sender: TObject);
    procedure AGroupRecommiteExecute(Sender: TObject);
    procedure AchangeLetterPropertiesExecute(Sender: TObject);
    procedure AAboutExecute(Sender: TObject);
    procedure ATemplateGroupExecute(Sender: TObject);
    procedure AAddExtentionExecute(Sender: TObject);
    procedure AaddLetterDataExecute(Sender: TObject);
    procedure lettersDbGridDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure lettersDbGridNeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure AloadPDFExecute(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure Excel1Click(Sender: TObject);
    procedure Word1Click(Sender: TObject);
    procedure AinnerLetterExecute(Sender: TObject);
    procedure ASendToOtherSecExecute(Sender: TObject);
    procedure ARelatedSecretariatExecute(Sender: TObject);

    procedure AimportExecute(Sender: TObject);
    procedure AmonitorTablesExecute(Sender: TObject);
    procedure SetStatisticMode(value: boolean);
    procedure lettersDbGridMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure ARecommiteListExecute(Sender: TObject);
    procedure ALetterNoSettingExecute(Sender: TObject);
    procedure AUserTableExecute(Sender: TObject);
    procedure AInputRefferenceTableExecute(Sender: TObject);
    procedure aReportUserTableExecute(Sender: TObject);
    procedure AARchiveLetterExecute(Sender: TObject);
    procedure aSENDMessageExecute(Sender: TObject);
    procedure AgetMessageExecute(Sender: TObject);
    procedure AEditSubjectExecute(Sender: TObject);
    procedure ABrowsArchiveExecute(Sender: TObject);
    procedure ADeleteExecute(Sender: TObject);
    procedure ASwitchUserExecute(Sender: TObject);
    procedure ALetterHistoryExecute(Sender: TObject);
    {Ranjbar 87.12.10}
    procedure SlowMessage;

    procedure AArchiveCenterExecute(Sender: TObject);
    procedure ARecommiteReportExecute(Sender: TObject);
    procedure ARecommiteStatExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure RefreshFollowUP;
    procedure Button2Click(Sender: TObject);
    procedure YDBGrid2DblClick(Sender: TObject);
    procedure YDBGrid2NeedFontCondition(Column: TColumn;
      State: TGridDrawState; var F: TFont);
    procedure YDBGrid2NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    Procedure SetShowFollowUp(Value: boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure CloseBtnClick(Sender: TObject);
    procedure ALetterChainFollowExecute(Sender: TObject);
    procedure AddFollowExecute(Sender: TObject);
    procedure AShowFollowExecute(Sender: TObject);
    procedure AddLetterSubjectExecute(Sender: TObject);
    procedure AddDocumentExecute(Sender: TObject);
    procedure ScanLExecute(Sender: TObject);
    procedure CharsetTimer(Sender: TObject);
    procedure ASaveWordExecute(Sender: TObject);
    procedure ExactCopyExecute(Sender: TObject);
    procedure AAccessFieldExecute(Sender: TObject);
    procedure UpdateFax;
    procedure FaxRefresherTimer(Sender: TObject);
    procedure AUpdateFaxExecute(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure AloadFileExecute(Sender: TObject);
    procedure ACustomizeGridExecute(Sender: TObject);
    procedure CBArchiveStatusClick(Sender: TObject);
    procedure Areport_userLogExecute(Sender: TObject);
    procedure APrintFishExecute(Sender: TObject);
    procedure AddGroupNewsExecute(Sender: TObject);
    procedure AddNewsExecute(Sender: TObject);
    procedure NewsListExecute(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure PDJRotoLabel1Click(Sender: TObject);
    procedure BBNewsOKClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure ReportRelatedLetterExecute(Sender: TObject);
    procedure SBFollowLetterClick(Sender: TObject);
    procedure ActPhoneExecute(Sender: TObject);
    procedure EmailExecute(Sender: TObject);
    procedure ConvertEmailToLetterExecute(Sender: TObject);
    procedure Act_WorkGroupExecute(Sender: TObject);
    procedure AddSysEmailExecute(Sender: TObject);
    procedure TrConvertEmailsTimer(Sender: TObject);
    procedure lettersDbGridMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SBExpandClick(Sender: TObject);
    procedure SBCollapseClick(Sender: TObject);
    procedure DBTreeArchiveKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DestinationComputerClick(Sender: TObject);
    procedure btbSendClick(Sender: TObject);
    procedure Memo2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PageControl1Enter(Sender: TObject);
    procedure acRepMohlateEghdamExecute(Sender: TObject);
    procedure acDefineUserGroupExecute(Sender: TObject);
    procedure YRotateLabel1Click(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure acShowWorkSheetBaseExecute(Sender: TObject);
    procedure acWorkSheetAllRepExecute(Sender: TObject);
    procedure acReciveLetterWithECEExecute(Sender: TObject);
    procedure acShowWorkSheetResultExecute(Sender: TObject);
    procedure tmRefereshQueryTimer(Sender: TObject);
    procedure ASignersExecute(Sender: TObject);
    procedure APrintWordExecute(Sender: TObject);
    procedure DeleteSignLog(LetterID: Integer);
    procedure ALetterDataTextSearchExecute(Sender: TObject);
    procedure word2Execute(Sender: TObject);
    procedure AReceiveFaxExecute(Sender: TObject);
    function RunAsAdminAndWaitForCompletion(hWnd: HWND; filename: string; Parameters: string): Boolean;
    procedure AShowFaxesExecute(Sender: TObject);
    procedure ASendFaxExecute(Sender: TObject);
    procedure ASendEmailExecute(Sender: TObject);
    procedure AppTerminateTimer(Sender: TObject);
    procedure ASaveAttachmentsExecute(Sender: TObject);
    procedure ImportExcelExecute(Sender: TObject);
    procedure ALetterNoSettingForWordExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure TimerAlertTimer(Sender: TObject);
    procedure PrintWordWithParaphExecute(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure N78Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure FormKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Action12Execute(Sender: TObject);
    procedure tmrGetEmailTimer(Sender: TObject);
    procedure GetEmailProcessDone(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    blnDisableRefresh : Boolean;
    FDisplayMode  :DisplayModes;
    FWhere: String;
    FLetter_Type  :byte;
    FLetterFormat:byte;
    FarchiveFolderID : integer;
    FStatisticMode: boolean;
    FShowFollowUp: boolean;
    {Ranjbar}
    OldLetterID : Integer;
    FShamsiDate: String;
    Activated: Boolean;
    FChatActivated: Boolean;
    FSecondOrgID: Integer;
    DBG_Sorted : boolean;
    isRunQuery : Boolean;
    MainWordApplicationConnect :  Boolean;

    //---
    {Ranjbar 87.12.10}
    procedure UDPException(Sender: TObject);
    procedure ShowFmNewsUsers(aLocateID:integer=0);
    procedure SetShamsiDate(const Value: String);
    procedure SetChatActivated(const Value: Boolean);
    procedure PrepareForChat;
    procedure PrepareSet;
    procedure SetSecondOrgID(const Value: Integer);

  public
     flag : Integer;
     VERSION_INFO_FRM : TVERSION_INFO_FRM;
     TypeNoa : Integer;
     DoRefresh : Boolean;
     _DefultSecyurityHKH : Integer;

     Property StatisticMode : boolean read FStatisticMode write SetStatisticMode;
     Property DisplayMode : DisplayModes read FDisplayMode write SetDisplayMode;
     Property Letter_Type : byte read FLetter_Type write SetLetter_Type;
     Property LetterFormat : byte read FLetterFormat write SetLetterFormat;
     Property Where : string read Fwhere write SetWhere;
     Property archiveFolderID : integer read FarchiveFolderID write SetarchiveFolderID;
     Property ShowFollowing: Boolean read FShowFollowUp write SetShowFollowUp;

     property ShamsiDate:String read FShamsiDate write SetShamsiDate;

     {Ranjbar}
     Function FillBlobField(aForm:TForm;aDBMemoText:WideString;aEditoCaption:String):WideString;
     Procedure Message_News;
     Procedure Draft;//ÅÌ‘ ‰ÊÌ”
     //---

     function GetSecondOrgID:Integer;

     procedure SendLetter_To_Other_Sec(aLetterID:Integer);
     procedure ShowInnerLetter(aLetterID:Integer);
     procedure SearchEvent(ResultIP, ResultName: String);
     procedure UDPRead(Sender: TObject; AData: TStream;ABinding: TIdSocketHandle);

     property ChatActivated:Boolean read FChatActivated write SetChatActivated;
     property SecondOrgID:Integer read FSecondOrgID write SetSecondOrgID;
     function GetUserOrgID:Integer; // Amin 1391/07/15

  end;

var
  MainForm: TMainForm;
  IsDraft : Boolean; //Add Sanaye 950121

implementation

uses Dmu , FixedTableF, EnteredLetterInputF, ExitedLetterInputF,
     FromOrgU , QuickSearch,  backupF,
     AccessInput, userDefine, Settingsu, ReCommiteU, ExactCopy,
     LogOn , UInputTemplate, ExportToWord,
     LetterReportU, CreateTextU,   EditSentense, FullTextSearch,
     Fsecretariats,  USecChange, addUserSecs, ErrorMsg, SystemSetting,ustatistic,
     Udailyrep, UFillLetterData, HelpU,  FUserShortCut,
     UchangePassword, businessLayer, ArchiveOrganize, LetterArchive,
     UImportFax, UserLoginLogoutReportU, YArchiveLetterData, RestorLetterData,
     FActiveUsers, UTotalRecommite, UTotalExactCopy, UchangeCricitalFields,
     about, UTemplateGroup, uAddExtention, UEditUserExtention, UaddLetterData,
     UloadPDF, UinnerLetter, UsearchShortCut, UselectSec, URelatedSecretariat,
     MakeInputData, MakeReport, GroupExport, Import, UTableMonitoring,
     uRecommiteList, ULetterNoSetting, UInputUserTable, UinputRefferenceTable,
     UReportUserTable, UReportUserTableLetter, UMakeUserTableRep,
     UGetMessage, USendMessage, USubject, UEditSubject, UBrowsArchive,
     UAddDocument, UArchiveCenter, URecommiteReport, URecommitestat,
     UFollowUp, DateUtils, FrReport_scan, FieldAccessU, Report_userLog,
     ReceiptFm, WorkGroupFm, NewsFm, NewsGroupFm, NewsUsersFm, ShowMessageFm,
     SearchFM, LetterRalationFm, ScanImageFm, PhoneFm, EmailsFm,
     EmailUserPassFm , ShowWaitFm, SyncObjs, ReceiptDM, RecommiteReportDM,
     UserDefineDM, NewsDM, NewsGroupDM, NewsUsersDM, ScanImageDM,
     PhoneGroupDM, PhoneDM, EmailsDM, WorkGroupDM, EmailAddressesFm,
     WaitPleaseFM, AssignLetterIndicatorFm, UDP, RepMohlateEghdamUnit,
     DefineUserGroupUnit, UMyMessage, WorkSheetBaseUnit, WorkSheetAllRepUnit,
     WorkSheetBaseResultsUnit, ReciveLetterWithECEUnit, TextSearch,
     ULetterImport, ULetterNoSettingForWord, U_SHOW_ATF_PEYRO_FRM, frmMain, UDbName;

{$R *.DFM}

var
  DblclickAction:TDblclickAction;
  LowOrange, LowTurquoise, Lowpink : Integer;
  terminationDownCounter : Integer;

Procedure TMainForm.SetWhere(Value:String);
begin
   FWhere:=Value;
   // Amin 1391/10/24 RefreshQuery;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

Procedure TMainForm.SetShowFollowUp(Value: boolean);
begin
  FShowFollowUp:=value;
  if value then
  begin
    CloseBtn.show;
    openBtn.hide;
    FollowupPanel.Width:=300;
    TaskPanel.Show;
    MinimizedPanel.Hide;
    RefreshFollowUP;
  end
  else
  begin
    CloseBtn.hide;
    openBtn.show;
    FollowupPanel.Width:=25;
    TaskPanel.Hide;
    MinimizedPanel.Show;
  end;

end;

Procedure TMainForm.SetarchiveFolderID(value:integer);
begin
  FarchiveFolderID := value;
  // Amin 1391/10/24 RefreshQuery;
  tmRefereshQuery.Enabled := True; // Amin 1391/10/24
end;

Procedure TMainForm.SetLetterFormat(value:byte);
begin
  FLetterFormat:=value;
  // Amin 1391/10/24 RefreshQuery;
  tmRefereshQuery.Enabled := True; // Amin 1391/10/24
end;

Procedure TMainForm.SetStatisticMode(value:boolean);
begin
  FStatisticMode := value;
  ActionPanel.Visible := not value;
end;

Procedure TMainForm.SetLetter_Type(value:byte);
var
  i: byte;
begin
  FLetter_Type:=value;
  with lettersDbGrid,Columns do
    for i:=0 to Count-1 do
      if UpperCase(Columns[i].FieldName)='USERMEMO'  then
        Columns[i].Title.Caption:=dm.UserMemoDisplay else

  if UpperCase(Columns[i].FieldName)='SENDERTITLE'  then
    case value of
      1:Columns[i].Title.Caption:='›—” ‰œÂ';
      2,3:Columns[i].Title.Caption:='êÌ—‰œÂ';
    end
  else
  if UpperCase(Columns[i].FieldName)='DELIVERTITLE' then
    case value of
      1:Columns[i].Title.Caption:='êÌ—‰œÂ';
      2,3:Columns[i].Title.Caption:='›—” ‰œÂ';
    end;

  // Amin 1391/10/24 RefreshQuery;
  tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited;
  isRunQuery:=False;
  blnDisableRefresh := False;

  terminationDownCounter := 60;
  LowOrange := Rgb(255,95,0);
  LowTurquoise := Rgb(0,175,240); //›Ì—Ê“Â «Ì
  Lowpink := Rgb(240,90,160); //’Ê— Ì

  DMReceipt := TDMReceipt.Create(self);
  DMRecommiteReport := TDMRecommiteReport.Create(self);
  DMUserDefine := TDMUserDefine.Create(self);
  DMNews := TDMNews.Create(self);
  DMNewsGroup := TDMNewsGroup.Create(self);
  DMNewsUsers := TDMNewsUsers.Create(self);
  DMScanImage := TDMScanImage.Create(self);
  DMPhoneGroup := TDMPhoneGroup.Create(self);
  DMPhone := TDMPhone.Create(self);
  DMEmails := TDMEmails.Create(self);
  DMWorkGroup := TDMWorkGroup.Create(self) ;

   //›⁄«· ‘œ‰ ›ﬂ”
  if _FaxUpdatePriod > 0 then
    FaxRefresher.Interval := 60000 * _FaxUpdatePriod;

  CBArchiveStatus.KeyValue := 0;
  Status0.Caption := '‰«„ ò«—»—: ' + _userName;

  {Ranjbar}
  //Status1.Caption:=_Today;
  Status1.Caption := Time_GetTime(Dm.YeganehConnection,False) + '  ' + _Today;
  //---
  Status6.Caption := Dm.Orgname;
  //_DefaultSec := Dm.UsersDefualtSecretariatID.AsInteger;
  //_DefaultSec := LoginForm._DefultSecyurityHKH;
  dm.Secretariats.Locate('SecID',_DefaultSec,[]);
  status4.Caption := Dm.SecretariatsSecTitle.AsString;
  GetList3.Open;
  GetList7.Open;
  GetList4.Open;
  QueryRefresher.Interval := Dm.RefreshPriodTime*1000;
  Dm.Get_All_Letter.AfterScroll := Get_All_LetterAfterScroll;
  _SelectedLettersID := TStringList.Create;
  StatisticMode := False;
  ABrowsArchive.Caption := '»——”Ì ”«»ﬁÂ »— «”«” '+dm.UserMemoDisplay;
  {Ranjbar 87.12.10}
  //MessagePanel.Height:=0;
  //---
  ShowFollowing := false;

  if _FaxUpdate then//›⁄«· »Êœ‰ ›ﬂ”
    FaxRefresher.Enabled:=true;

  YEGANEH.Caption := '‰—„ «›“«—Ì '+_Yeganeh;
  {Ranjbar}
  BidiModeToRight(DBTreeArchive);

  //SkinName := GetUserSetting('SkinfileName');

  if Trim(SkinName)='' then
    SkinName := 'mxskin66.skn';

  //SkinData1.LoadFromFile(ExtractFilePath(Application.ExeName)+ 'Skins\'+SkinName);
  //if not SkinData1.Active then
  //  SkinData1.Active := True;

  SecondOrgID:=GetSecondOrgID;

 // ShowMessage(IntToStr(SecondOrgID));
  if Dm.AskMonoSelect then
    lettersDbGrid.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgAlwaysShowSelection,dgMultiSelect]
  else
    lettersDbGrid.Options := [dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowSelect,dgAlwaysShowSelection,dgMultiSelect];
  ChatActivated:=False;

  //add Sanaye 950209
  //—«”  çÌ‰ Ì« çÅ çÌ‰ ò—œ‰ ÃœÊ· «’·Ì ‰«„Â Â«
  if Dm.ckBidiModeLetterGrid then
    lettersDbGrid.BiDiMode := bdLeftToRight
  else
    lettersDbGrid.BiDiMode:= bdRightToLeft;
  //end Sanaye

  {$IFDEF LIGHT}
      acDefineUserGroup.Visible := false;
      ActionMainMenuBar1.ActionControls[7].Visible := false;
      ActionMainMenuBar1.ActionControls[8].Visible := false;
      ActionMainMenuBar1.ActionControls[9].Visible := false;

      ARecommiteReport.Visible := false;
      acRepMohlateEghdam.Visible := false;
      ARecommiteStat.Visible := false;
      ABrowsArchive.Visible := false;
      AEditSubject.Visible := false;
      TshFollowUp.TabVisible := false;
      FollowupPanel.Visible := false;
      labell.Visible := false;
      PDJRotoLabel1.Visible := false;
      ASigners.Visible := false;
      APrintWord.Visible := false;
      {$IFDEF SINGLE}
         ALetterHistory.Visible := false;
         ASendToOtherSec.Visible := false;
         ARecommiteList.Visible := false;
         NewsList.Visible := false;
         Arecommite.Visible := false;
         AchangeLetterProperties.Visible := false;
         ActionMainMenuBar1.ActionControls[10].Visible := false;
         Email.Visible := false;
         FollowupPanel.Visible := false;
         AgetMessage.Visible := false;
         aSENDMessage.Visible := false;
         LoginLogoutReport.Visible := false;
         ARecommiteReport.Visible := false;
         acRepMohlateEghdam.Visible := false;
         AActiveUser.Visible := false;
         AEditSecs.Visible := false;
         AsecChange.Visible := false;

         AddSysEmail.Visible := false;
         ConvertEmailToLetter.Visible := false;
         AArchiveCenter.Visible := false;
         AddNews.Visible := false;
         Act_WorkGroup.Visible := false;
         AddGroupNews.Visible := false;
         AexportData.Visible := false;
         ArestorLtterData.Visible := false;

         AEditSubject.Visible := false;
         ABrowsArchive.Visible := false;
      {$ENDIF}
  {$ENDIF}
end;

procedure TMainForm.ReceiveInsertExecute(Sender: TObject);
begin
  inherited;
  with ReceivedLetterInputForm do
  begin
    ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
    GetLetter(0);
    //Ranjbar
    //»—«Ì  €ÌÌ— ”«· ﬂÂ œ— ¬‰ ‰«„Â Â« ›ﬁÿ ŒÊ«‰œ‰Ì Â” ‰œ
    if (_Year = Dm.CurrentMyear)or Not(MainForm.LockOldYear.Enabled) then //‰«„Â Â«Ì ”«·Â«Ì ﬁ»·
    //---
    //DBNavigator1.BtnClick(nbInsert);
       DataSetInsert.Execute;
    ShowModal;
  end;

  if Letter_Type in [1,0] then
    // Amin 1391/10/24 RefreshQuery
    tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

// «»⁄ «—”«· ‰«„Â »Â œÌê— œ»Ì—Œ«‰Â Â«
//„Ê—œ «” ›«œÂ œ— ‰«„Â Â«Ì Ê«—œÂ Ê ’«œ—Â
{Ranjbar 89.10.29 ID=269}
procedure TMainForm.SendLetter_To_Other_Sec(aLetterID:Integer);
begin
   FselectSec := TFselectSec.Create(Application);//‰„«Ì‘ ›—„ «‰ Œ«» œ»Ì—Œ«‰Â
   FselectSec.ShowModal;

   if (FselectSec.SelectedSecID <> Dm.SecID) And (FselectSec.SelectedSecID <> -1) then
   begin
      Exec_SendLetter_To_Other_Sec(FselectSec.SelectedSecID, aLetterID, FselectSec.intChboxSendLetterWithoutChange);
      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‰«„Â «‰ Œ«» ‘œÂ »« ›—„   ÅÌ‘ ‰ÊÌ” Ê«—œÂ »Â œ»Ì—Œ«‰Â ÃœÌœ ﬂÅÌ ‘œ',[mbok],mtInformation);
   end
      else
         ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ‘„« œ»Ì—Œ«‰Â Ã«—Ì —« «‰ Œ«» ‰„ÊœÂ «Ìœ',[mbok],mtInformation);
end;
//---

procedure TMainForm.SendInsertExecute(Sender: TObject);
begin
  inherited;
  with SentLetterInputForm do
  begin
    SentLetterInputForm := TSentLetterInputForm.Create(Application);
    GetLetter(0);
    //»—«Ì  €ÌÌ— ”«· ﬂÂ œ— ¬‰ ‰«„Â Â« ›ﬁÿ ŒÊ«‰œ‰Ì Â” ‰œ
    if (_Year = dm.CurrentMyear)or Not(MainForm.LockOldYear.Enabled) then //‰«„Â Â«Ì ”«·Â«Ì ﬁ»·
      DataSetInsert.Execute;
    ShowModal;
  end;

  if Letter_Type in [2,0] then
    // Amin 1391/10/24 RefreshQuery
    tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.AcloseExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TMainForm.RefreshQuery;
var
   receivedNum,SentNum,recommitesNum:integer;
   current_index:integer;
   srt,w: string;
   SearchI_All_Year_and_Sec: boolean;
begin
   inherited;
   ActionMainMenuBar1.Font.Charset:=178;
   if not DoRefresh then
      exit;
   SearchI_All_Year_and_Sec:=False;
   SecondOrgID:=GetSecondOrgID;
   try current_index:=dm.Get_All_LetterLetterID.AsInteger; except end;
   try
         SearchI_All_Year_and_Sec := QuickSearchF.cmbSearch_In_All_Secs.Checked;
   except
   end;
   w := FWhere;
  //Edit By Sanaye 950717
  //Õ· „‘ò· œ” —”Ì “Ê‰ò‰ Â«
  if DisplayMode = Archive then
  begin
      w:=    '       Letter.LetterID IN ( SELECT LAF.LetterID '+
             '       From UserAccArchive UAA ,Secretariats Sec ,Users U, dbo.ArchiveFolder AF , dbo.LetterArchiveFolder LAF '+
             '       Where   (UAA.SecID = ' + IntToStr(Dm.SecID) + ')'+
             '            And (UAA.UserID = ' + IntToStr(_UserID) + ')'+
             '            And (UAA.SecID = Sec.SecID) '+
             '            And (UAA.UserID = U.ID) '+
             '            AND (UAA.ArchiveFolderID = af.FolderID) '+
             '            AND (AF.FolderID = LAF.ArchiveFolderID) '+
             '            AND (af.FolderID = ' + IntToStr(archiveFolderID) +')) ';

  end;


   if not _AccessToClassifieldLetter then
     if w<>'' then
       w := w +' and  (letter.ClassificationID=1)'
     else
       w := ' (letter.ClassificationID=1) ' ;



   srt:=dm.Get_All_Letter.Sort;

   if SearchI_All_Year_and_Sec then //œ— ò·ÌÂ ”«·Â« Ê œ»Ì—Œ«‰Â Â«
   begin
      if w <> '' then
         w := w + ' and  letter.SecretariatID in (select distinct SecId from dbo.UserSecretariats where UserId='+IntToStr(_UserId)+')'
      else
         w := ' letter.SecretariatID in (select distinct SecId from dbo.UserSecretariats where UserId='+IntToStr(_UserId)+') ' ;
   end;
//--------------------------------------------------------------------------------------------------------------
   if (QuickSearchF.cmbSearch_In_All_Secs.Checked)and(QuickSearchF.cmbSearch_In_All_Years.Checked)then
      Dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,0,0,strtoint(SpinEdit.Text),w)
   else if (QuickSearchF.cmbSearch_In_All_Secs.Checked) then
      Dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,dm.CurrentMYear,0,strtoint(SpinEdit.Text),w)
   else if (QuickSearchF.cmbSearch_In_All_Years.Checked) then
      Dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,0,dm.SecID,strtoint(SpinEdit.Text),w)
   else
      Dm.ExecGet_All_Letter(CBArchiveStatus.keyValue, archiveFolderID,Letter_Type,LetterFormat,dm.CurrentMYear,dm.SecID,strtoint(SpinEdit.Text),w);
//--------------------------------------------------------------------------------------------------------------

   Dm.Get_All_Letter.Sort := Srt;
   Dm.Get_All_Letter.Locate('LetterID',current_index,[]);

   status3.Caption:=' ⁄œ«œ:'+IntToStr(dm.Get_All_Letter.RecordCount);
   //ATAIE 1400
   //lblYear.Caption:=' ”«· : '+IntToStr(1300+dm.CurrentMYear);
   lblYear.Caption:=' ”«· : '+IntToStr(dm.CurrentMYear);

   DoRefresh:=false;
   CBReceive.KeyValue:=Letter_Type;
   CBFormat.KeyValue:=LetterFormat;
  // CBArchiveStatus.KeyValue:=Dm.InitialArchiveMode; // Commented By Saeedi On 1390/06/05

   //⁄·  : “„«‰ÌﬂÂ ›—„ œ»Ì—Œ«‰Â »«“ «”  «Ì‰  «»⁄ »«⁄À »Â„ —ÌŒ ‰ «ÿ·«⁄«  ›—„  ⁄—Ì› œ»Ì—Œ«‰Â „Ì ‘Êœ
   if not Assigned(FEditSecs) then //›—„  ⁄—Ì› œ»Ì—Œ«‰Â
      dm.Secretariats.Locate('secid',dm.SecID,[]);

   status4.Caption:=dm.SecretariatsSecTitle.AsString;

   DoRefresh := True;
//   Exec_sp_Letter_Numbers(_Today,_Today,dm.secid,receivedNum,SentNum,recommitesNum);
//   Status2.Caption := ' ⁄œ«œ ‰«„Â Ê«—œÂ ='+IntToStr(receivedNum) + '   ' +
//                      ' ⁄œ«œ ‰«„Â ’«œ—Â ='+IntToStr(SentNum) + '   ' +
//                      ' ⁄œ«œ  «—Ã«⁄«  ='  +IntToStr(recommitesNum);
   AAnswer.Visible:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.Name,tag);
   AAnswer.Enabled:=AAnswer.Visible;

   Case LetterFormat of
      1: begin
            Adeleted_toLetter.Visible:=False;
            Adeleted_toLetter.Enabled:=False;
            ADraftToLetter.Visible:=false;
            ADraftToLetter.Enabled:=false;
        end;
      2:begin
           Adeleted_toLetter.Visible:=False;
           Adeleted_toLetter.Enabled:=False;
           ADraftToLetter.Visible:=dm.GetActionAccess(ADraftToLetter.name,tag);
           ADraftToLetter.Enabled:=ADraftToLetter.Visible;
        end;
      3:begin
           Adeleted_toLetter.Visible:=true;
           Adeleted_toLetter.Enabled:=true;
           ADraftToLetter.Visible:=false;
           ADraftToLetter.Enabled:=false;
        end;
    end;

   if StatisticMode then
      statisticForm.RefreshQuery
   else
      if DisplayMode = Search then
         lettersDbGrid.SetFocus;
   Dm.Get_All_Letter.EnableControls;
end;

procedure TMainForm.ShowFixTables;
begin
  inherited;
  FixedForm:=TFixedForm.Create(Application);
  FixedForm.ShowModal;
end;

procedure TMainForm.ViewReceivedLetter(LetterID:integer);
begin
  inherited;
  with ReceivedLetterInputForm do
  begin
    ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
    GetLetter(LetterID);
    ShowModal;
  end;
end;

procedure TMainForm.ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
begin
  inherited;
  if LetterType = 1 then
  begin
    with ReceivedLetterInputForm do
    begin
      ReceivedLetterInputForm := TReceivedLetterInputForm.Create(Application);
      LetterDataID := LetDataID;
      GetLetter(LetterID);
      ShowModal;
    end;
  end
  else if LetterType = 2 then
  begin
    with sentLetterInputForm do
    begin
      SentLetterInputForm:=TSentLetterInputForm.Create(Application);
      LetterDataID := LetDataID;
      GetLetter(LetterID);
      ShowModal;
    end;
  end
  else if LetterType = 3 then
  begin
    with FinnerLetter do
    begin
      FinnerLetter:=TFinnerLetter.Create(Application);
      LetterDataID := LetDataID;
      GetLetter(LetterID);
      ShowModal;
    end;
  end
  else if LetterType = 4 then
  begin
    with FrAddDocument do
    begin
      FrAddDocument:=TFrAddDocument.Create(Application);
      LetterDataID := LetDataID;
      GetLetter(LetterID);
      ShowModal;
    end;
  end;
end;

procedure TMainForm.ViewSentLetter(LetterID:integer);
begin
  inherited;
with sentLetterInputForm do
  begin
     SentLetterInputForm:=TSentLetterInputForm.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;

procedure TMainForm.ViewInnerLetter(LetterID:integer);
begin
  inherited;
with FinnerLetter do
  begin
     FinnerLetter:=TFinnerLetter.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;

procedure TMainForm.ViewDocument(LetterID:integer);
begin
  inherited;
  with FrAddDocument do
  begin
     FrAddDocument:=TFrAddDocument.Create(Application);
     GetLetter(LetterID);
     ShowModal;
   end
end;

procedure TMainForm.AChangeColorExecute(Sender: TObject);
begin
   inherited;
  Settings := TSettings.Create(Application);
  PageControl_SetTabSheet(Settings.PageControl1,'TShGraphic');
  Settings.ShowModal;
end;

procedure TMainForm.AAnswerExecute(Sender: TObject);
var
   NewIndicator,NewMyear:string;

   procedure insertletter;
   begin
      with SentLetterInputForm do
      begin
         if dm.EqualAnswerIndicator then
           begin
             NewIndicator:=dm.Get_All_Letter.FieldByName('IndicatorID').AsString;
             NewMyear:=dm.Get_All_Letter.FieldByName('myear').AsString;
           end
          else
           begin
            NewIndicator:=IntToStr(dm.LastIndicatorID(2,LetterFormat));
            NewMyear:=IntToStr(dm.CurrentMYear);
           end;

          GetLetter(0);
          LetterFormat:=1;
          DataSetInsert.Execute;

          if Select_letter.State<>dsInsert then Select_letter.Insert;
          Select_letterIndicatorID.AsString:=NewIndicator;
          Select_letterMYear.AsString:=NewMyear;
          Select_letterFromOrgID.AsInteger:=dm.Get_All_Letter.FieldByName('FromOrgID').AsInteger;
          Select_letterToOrgID.AsInteger:=dm.Get_All_Letter.FieldByName('ToOrgID').AsInteger;
          Select_letterMemo.AsString:=dm.Get_All_Letter.FieldByName('Memo').AsString;
          Select_letterToStaffer.AsString:=dm.Get_All_Letter.FieldByName('ToStaffer').AsString;
          ToOrgTitleEdit.Text:=dm.Get_All_LetterSenderTitle.AsString;
          //Select_letterRetroactionNO.AsString:=dm.Get_All_Letter.FieldByName('incommingNo').AsString;          
          ShowModal;
      end;
   end;

begin
   inherited;
   if Not DataSetPost then exit;

   SentLetterInputForm := TSentLetterInputForm.Create(Application);
   SentLetterInputForm.IsAnswer:=true;

   with SentLetterInputForm,dm.Get_All_Letter do
     if GetLetter(FieldByName('SentLetterID').AsInteger)  then
      begin
         ShowModal;
         Exit;
      end{if}
         else
            insertletter;

     if Letter_Type in [2,0] then
        // Amin 1391/10/24 RefreshQuery 
         tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   inherited;
   if not Dm.YeganehConnection.Connected then
    begin
     Application.Terminate;
     Exit;
    End; 
   QrLetterData.Close;

   if (Sender is TMainForm) then //»Œ«ÿ— œﬂ„Â Ê—Êœ ﬂ«—»— œÌê—
      if not messageShow(25,True) then
         Abort;

   //Ranjbar
   DBGrid_SaveColumns('Dabir_'+Self.Name , lettersDbGrid );
//   ShowMessage(lettersDbGrid.SortedFieldName);
   DBGrid_SaveSort('Dabir_'+Self.Name,lettersDbGrid);
   //---
   try
      with dm.Users do
      begin
         {lettersDbGrid.columns.savetoFile(_TempPath+'\yeganeh.txt');
         if not Active then
            Open;
         Locate('userid',_userid,[]);
         Edit;
         dm.UsersDabirGridInfo.LoadFromFile(_TempPath+'\yeganeh.txt');
         Post;
         DeleteFile(pchar( _TempPath+'\yeganeh.txt')); }

         if (Dm.DayInWeekForBackup=8) OR (Dm.DayInWeek = Dm.DayInWeekForBackup) then
            {Ranjbar 89.09.06 ID=238}
            //‰„Ì ‘Êœ False »œ·Ì· «Ì‰ﬂÂ ÂÌç Êﬁ  
            //if not GetSystemSetting('BackupMade') then
            //---
               if MessageShowString(Get_sysAppMessage(31)+' '+  farsiDay[dm.DayInWeek]+' '+Get_sysAppMessage(32),true) then
                  ABackup.Execute;
         Exec_update_UserLoginLogout(_UserLoginLogoutID,true,false);
         SysUtils.FileSetReadOnly(_TempPath+'temp.tif', false);
         DeleteFile(_TempPath+'temp.tif');
         { TODO -oparsa : 14030605-bug349 }
         ///if Dm.processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
         if FileExists(pchar(_TempPath+_WordFileName)) then
         begin
           SysUtils.FileSetReadOnly(pchar(_TempPath+_WordFileName), false);
           DeleteFile(pchar(_TempPath+_WordFileName));
         end;
         if Dm.processExists('WINWORD.EXE') then Dm.KillTask('WINWORD.EXE');
         { TODO -oparsa : 14030605-bug349 }
      end;
   except
   end;
end;

procedure TMainForm.AFromOrganizeExecute(Sender: TObject);
begin
  inherited;
  flag := 1;
  FromOrgForm := TFromOrgForm.Create(Application);
  MainForm.TypeNoa:= 1;
  FromOrgForm.OrganizeMode := True;
  FromOrgForm.ShowModal;
  MainForm.TypeNoa:= 0;
  flag := 0;
end;

procedure TMainForm.UpdateFax;
begin
   inherited;
   FaxRefresher.Enabled := False;
   Cursor := crHourGlass;
   With FImportFax do
   begin
      FImportFax := TFImportFax.Create(Application);
      EFolder.Text := _FaxDirectory;

      if Trim(UpperCase(_FaxExtention)) = 'JPG' then
         {Ranjbar 89.09.20 ID=247}
         //Extention.ItemIndex:=1
         Extention.ItemIndex := 0
         //---
      else
         if UpperCase(_FaxExtention) = 'TIF' then
            Extention.ItemIndex := 1;

      Extention.Text := _FaxExtention;
      MoveAfter := True;
      DoBtn.OnClick(DoBtn);
      DoBtn.Enabled := False;
      Close;
   end;
   Cursor := crDefault;
   FaxRefresher.Enabled := True;
end;

procedure TMainForm.AfixExecute(Sender: TObject);
begin
   inherited;
   ShowFixTables;
end;

procedure TMainForm.MainActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
begin
  inherited;

  if not Dm.GetActionAccess(Action.name,tag) then
    Abort;

  if Dm.Get_All_Letter.Active then
  begin
    Exec_insert_UserLog(Self.Tag, Action.name, dm.Get_All_LetterLetterID.AsInteger);
  end
end;

procedure TMainForm.ABackupExecute(Sender: TObject);
begin
  inherited;
  BackupRestore:=TBackupRestore.Create(Application);
  BackupRestore.Mode:=backup;
  BackupRestore.ShowModal;
end;

procedure TMainForm.AShrinckExecute(Sender: TObject);
begin
  inherited;
 BackupRestore:=TBackupRestore.Create(Application);
 BackupRestore.Mode:=shrink;
 BackupRestore.ShowModal;
end;

procedure TMainForm.accessExecute(Sender: TObject);
begin
   inherited;
   AccessForm := TAccessForm.Create(Application);
   AccessForm.showmodal;
end;

procedure TMainForm.AUsersExecute(Sender: TObject);
begin
   inherited;
   UserDefineF := TUserDefineF.Create(Application);
   UserDefineF.ShowModal;

   {Ranjbar 88.05.28}//Refresh ÃÂ 
   if DisplayMode = Archive then //„œ »«Ìê«‰Ì
      DSForm.DataSet := Exec_Get_ArchiveFolder_ByAccess(RadioGroup1.ItemIndex);
   //---
end;

procedure TMainForm.AUserSettingExecute(Sender: TObject);
begin
   inherited;
   Settings:=TSettings.Create(Application);
   Settings.ShowModal;
end;

procedure TMainForm.ArecommiteExecute(Sender: TObject);
begin
  inherited;
  with Dm.Get_All_Letter do
  begin
    if not DataSetPost then
      Exit;

    ReCommite := TReCommite.Create(Application);
    try
      ReCommite.LetterID := Dm.Get_All_LetterLetterID.AsInteger;
      ReCommite.ShowModal;
    finally
      ReCommite.Free;
    end;
  end;
end;

procedure TMainForm.AARCHIVEExecute(Sender: TObject);
begin
   inherited;
  //Ã·ÊêÌ—Ì «“  »«Ìê«‰Ì  ﬂ—«—Ì
   MakeSelectedRecommites;
   //---
   with Dm.Get_All_Letter do
   begin
      if Not DataSetPost then
         Exit;
      MakeSelectedRecommites;
      LetterArchiveform := TLetterArchiveform.Create(Application);
      LetterArchiveform.LetterID := dm.Get_All_LetterLetterID.AsInteger;
      LetterArchiveform.ShowModal;
      // Amin 1391/10/24 RefreshQuery;
      tmRefereshQuery.Enabled := true; // Amin 1391/10/24
   end;
end;

procedure TMainForm.AretroActionExecute(Sender: TObject);
var
  SHOW_ATF_PEYRO_FRM : TSHOW_ATF_PEYRO_FRM;
begin
  inherited;

  with TADOQuery.Create(Nil) do
  begin
    try
      Connection := Dm.YeganehConnection;
      Close;
      SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Get_All_LetterLetterID.AsString + ' and FR_Kind = 1 ';
      Open;
      if RecordCount = 0  then
      begin
        MessageShowString('«Ì‰ ‰«„Â ⁄ÿ› ‰œ«—œ', False);
        Abort;
      end
      else
      begin
        SHOW_ATF_PEYRO_FRM := TSHOW_ATF_PEYRO_FRM.Create(Application);
        SHOW_ATF_PEYRO_FRM.KIND     := 1;
        SHOW_ATF_PEYRO_FRM.LetterID := Dm.Get_All_LetterLetterID.AsString;
        SHOW_ATF_PEYRO_FRM.Caption  := '·Ì”  ‰«„ Â«Ì ⁄ÿ› ‘œÂ »Â ‰«„Â »« ‘„«—Â «‰œÌò« Ê— : ' + Dm.Get_All_LetterIndicatorID.AsString;
        SHOW_ATF_PEYRO_FRM.ShowModal;
        SHOW_ATF_PEYRO_FRM.Free;
      end;
    finally
      Free;
    end;
  end;


  {
  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â
   with TADOQuery.Create(Nil) do
   begin
     try
       Connection := Dm.YeganehConnection;
       Close;
       SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Get_All_LetterLetterID.AsString + ' and FR_Kind = 1 ';
       Open;
       if RecordCount = 0  then
       begin
        ShowMessage('«Ì‰ ‰«„Â ⁄ÿ› ‰œ«—œ');
        Abort;
       end;

       FR_LetterID := Fields[0].AsInteger;
       Close;
       SQL.Text := 'select Letter_Type from Letter where LetterID = ' + IntToStr(FR_LetterID);
       Open;
       if RecordCount > 0  then
       begin
          Case Fields[0].AsInteger of
            1: MainForm.ViewReceivedLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
            2: MainForm.ViewSentLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
            3: MainForm.ViewInnerLetter(FR_LetterID);
            4: MainForm.ViewDocument(FR_LetterID);
          end;
       end;
     finally
       Free;
     end;
   end;
   //end Sanaye...
   }
end;

procedure TMainForm.AShowFollowLetterExecute(Sender: TObject);
var
  SHOW_ATF_PEYRO_FRM : TSHOW_ATF_PEYRO_FRM;
begin
  inherited;

  with TADOQuery.Create(Nil) do
  begin
    try
      Connection := Dm.YeganehConnection;
      Close;
      SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Get_All_LetterLetterID.AsString + ' and FR_Kind = 0 ';
      Open;
      if RecordCount = 0  then
      begin
        MessageShowString('«Ì‰ ‰«„Â ÅÌ—Ê ‰œ«—œ', False);
        Abort;
      end
      else
      begin
        try
          SHOW_ATF_PEYRO_FRM := TSHOW_ATF_PEYRO_FRM.Create(Application);
          SHOW_ATF_PEYRO_FRM.KIND     := 0;
          SHOW_ATF_PEYRO_FRM.LetterID := Dm.Get_All_LetterLetterID.AsString;
          SHOW_ATF_PEYRO_FRM.Caption  := '·Ì”  ‰«„Â Â«Ì ÅÌ—Ê ‰«„Â »« ‘„«—Â «‰œÌò« Ê— : ' + Dm.Get_All_LetterIndicatorID.AsString;
          SHOW_ATF_PEYRO_FRM.ShowModal;
        finally
          SHOW_ATF_PEYRO_FRM.Free;
        end;
      end;
    finally
      Free;
    end;
  end;

  {
   //Add Sanaye 950306
   //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â
   with TADOQuery.Create(Nil) do
   begin
     try
       Connection := Dm.YeganehConnection;
       Close;
       SQL.Text := 'select FR_LetterId from Follow_Retroaction_Letter where LetterID = ' + Dm.Get_All_LetterLetterID.AsString + ' and FR_Kind = 0 ';
       Open;
       if RecordCount = 0  then
       begin
        ShowMessage('«Ì‰ ‰«„Â ÅÌ—Ê ‰œ«—œ');
        Abort;
       end;

       FR_LetterID := Fields[0].AsInteger;
       Close;
       SQL.Text := 'select Letter_Type from Letter where LetterID = ' + IntToStr(FR_LetterID);
       Open;
       if RecordCount > 0  then
       begin
          Case Fields[0].AsInteger of
            1: MainForm.ViewReceivedLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì Ê«—œÂ
            2: MainForm.ViewSentLetter(FR_LetterID);//»—«Ì ‰«„Â Â«Ì ’«œ—Â
            3: MainForm.ViewInnerLetter(FR_LetterID);
            4: MainForm.ViewDocument(FR_LetterID);
          end;
       end;
     finally
       Free;
     end;
   end;
   //end Sanaye...
   }
end;

procedure TMainForm.AviewAllletterExecute(Sender: TObject);

   procedure ViewDetail;
   begin
      Case dm.Get_All_LetterLetter_Type.AsInteger of
         1: ViewReceivedLetter(dm.Get_All_LetterLetterID.AsInteger);
         2: ViewSentLetter    (dm.Get_All_LetterLetterID.AsInteger);
         3: ViewInnerLetter   (dm.Get_All_LetterLetterID.AsInteger);
         4: ViewDocument      (dm.Get_All_LetterLetterID.AsInteger);
      end;
   end;

begin
  inherited;
  ado_IsShow.Close;
  ado_IsShow.Parameters.ParamByName('@letterID').Value := dm.Get_All_Letterletterid.AsInteger;
  ado_IsShow.Parameters.ParamByName('@UserID').Value := _UserID;
  ado_IsShow.Open;
  if ado_IsShowIsShow.Value = False then
  begin
    ShowMessage('‘„« „Ã«“ »Â ‰„«Ì‘ «Ì‰ ‰«„Â ‰„Ì »«‘Ìœ ');
    Abort;
    Exit;
  end;

  ImageEnDBView1.Visible := False;
  QrLetterData.Close;

  if (DblclickAction = ViewJpg ) and  dm.Get_All_Letterhas_Page.AsBoolean then
    Apicture.Execute   //RefreshQuery œ«—«Ì œ” Ê—
  else
    if (DblclickAction = ViewWord) and  dm.Get_All_Letterhas_WordPage.AsBoolean then
      AExpotToWordExecute(self)  //RefreshQuery œ«—«Ì œ” Ê—
    else
      if (DblclickAction = viewPdf ) and  dm.Get_All_Letterhas_file.AsBoolean then
      begin
        if GetNumberOfLetterAttach(dm.Get_All_LetterLetterID.AsInteger)=1 then
        begin
//               if has_pdf(dm.Get_All_LetterLetterID.AsInteger) then
//                  AloadPDF.Execute   //RefreshQuery œ«—«Ì œ” Ê—
//               else
          AloadFile.Execute
        end
        else
          AaddLetterData.Execute;
      end
      else
      begin
        ViewDetail;
                  // Amin 1391/10/24 RefreshQuery;
        tmRefereshQuery.Enabled := true; // Amin 1391/10/24
      end;

  if dm.Get_All_Letter.Active   then
    Exec_insert_UserLog(Self.Tag,'AviewAllletter',dm.Get_All_LetterLetterID.AsInteger);
end;

procedure TMainForm.GetExactCopy(id:byte);
begin
  inherited;
  if not DataSetPost then
    Exit;

  ExactCopyF:=TExactCopyF.Create(Application);
  with ExactCopyF do
  begin
    ExactCopyF.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
    ExactCopyF.TypeId:=id;
    ShowModal;
  end;
end;

procedure TMainForm.ApictureExecute(Sender: TObject);
// var extiontion : byte;
begin
   inherited;

{   if Not DataSetPost then
      Exit;}
   FmScanImage := TFmScanImage.Create(Application);
   Application.ProcessMessages;
   FmScanImage.LetterID := dm.Get_All_LetterLetterID.AsInteger;
   FmScanImage.ReceiveTypeID := dm.Get_All_LetterReceiveTypeID.AsInteger;
   FmScanImage.ShowModal;

   // Amin 1391/10/24 RefreshQuery;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

Function TMainForm.GetSearch:boolean;
begin
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.ShowModal;
   Result:=FromOrgForm.done;
end;

function TMainForm.DataSetPost:boolean;
begin
  inherited;

  Result:=false;

  with dm.Get_All_Letter do
  begin
    if not Active then
      exit
    else
      if RecordCount=0 then
        exit;

    if State in [dsEdit,dsInsert] then
    begin
      if messageShow(26,true) then
        try
          Post;
          Result:=true;
        except
          exit
        end
      else
        exit;
    end
    else
      Result:=True ;
  end;
end;

procedure TMainForm.ArecommiteStatisticsExecute(Sender: TObject);
begin
   inherited;
   ShowMsg(47);
end;

procedure TMainForm.ChangeYearExecute(Sender: TObject);
var
   s: string;
   dbname:string;
   R: TRegistry;
   intS : Integer;
begin
  inherited;

  if dm.Y_InputQuery('”«· Ã«—Ì',IntToStr(dm.CurrentMyear),s,' €ÌÌ— ”«· Ã«—Ì') then
  begin
    {
     if StrToInt(s)<1300 then
        dm.CurrentMyear := StrToInt(s)
     else
        dm.CurrentMyear := StrToInt(Copy(s,1,4));
     }
    try
      intS := StrToInt(S);
      if (intS < 1500) and (intS > 1300) then
      begin
        S := IntToStr(intS);
        Dm.CurrentMyear := intS;
      end
      else
        raise Exception.Create('ERROR');
      //ATAIE 1400
      //Dm.CurrentMyear := StrToInt(Copy(S,3,2));
    except on E : Exception do
      begin
        ShowMsgString('”«· „Ê—œ ‰Ÿ— —« œ—”  Ê«—œ ‰„«ÌÌœ');
        Exit;
      end;
    end;

   if not dm.GetActionAccess(LockOldYear.Name,tag) then
    dbname := 'NOTHING'
   else
    dbname := UpperCase(Get_DatabaseName_By_Year(dm.CurrentMyear));
   if dbname = 'NOTHING' then
      Exit;
   if dbname <> UpperCase(_DatabaseName) then
      if messageShowString(' »—«Ì œ” Ì«»Ì »Â ‰«„Â Â«Ì «Ì‰ ”«· »«Ìœ  ‰—„ «›“«— œÊ»«—Â «Ã—« ‘Êœ ¬Ì« „«Ì·Ìœø', True) then
      begin
         r:=TRegistry.Create;
         with R do
         begin
            RootKey:=HKEY_CURRENT_USER;
            OpenKey(RegistryKey, True);
            WriteString('tmpDataBaseName', dbname);
            WriteString('tmpYear', IntToStr(dm.CurrentMyear));
         end;
         WinExec(PChar( Application.ExeName),0);

         halt;
      end;
   end;
end;

procedure TMainForm.ATemplateExecute(Sender: TObject);
begin
  inherited;
  EditTemplates := TEditTemplates.Create(Application);
  EditTemplates.ShowModal;
  { TODO -oparsa : 14030505-bug349 }
  freeandnil(EditTemplates);
  { TODO -oparsa : 14030505-bug349 }
end;

procedure TMainForm.AExpotToWordExecute(Sender: TObject);
var
  otherUserID : Integer;
begin
  inherited;

  _AllowToEditWordFiles := True;

  if not DataSetPost then
    Exit;

  { TODO -oparsa : 14030119 }
  //if _Word_Is_Opened then
  if _Word_Is_Opened and Application_Is_Run('winword.exe') then
  { TODO -oparsa : 14030119 }
  begin
    messageShow(86,False);
    Exit;
  end;

  Dm.qtemp.Close;
  Dm.qtemp.SQL.Clear;
  Dm.qtemp.SQL.Add('  SELECT IsCopy FROM dbo.ReCommites with(nolock) WHERE LetterID='+IntToStr(dm.Get_All_LetterLetterID.AsInteger));
  Dm.qtemp.Open;
  Dm.qtemp.Last ;
  if Dm.qtemp.FieldByName('IsCopy').AsString <> '' then
    _AllowToEditWordFiles:= not Dm.qtemp.FieldByName('IsCopy').AsBoolean;

  with dm.Get_All_Letter do
  begin
    otherUserID := dm.OpendByAnotherUser(FieldByName('Letterid').AsInteger);
    if otherUserID > 0 then
    begin
      MessageShowString('«Ì‰ ‰«„Â  Ê”ÿ '+''''+ get_UserName(otherUserID) +''''+' œ— Õ«· ÊÌ—«Ì‘ «” °  €ÌÌ—«  ‘„« «⁄„«· ‰ŒÊ«Âœ ‘œ.',False);
      _Dont_save_Word := True;
    end
    else
      _Dont_save_Word := False;

    if not _AllowToEditWordFiles then
    begin
      MessageShowString('«Ì‰ ‰«„Â ›ﬁÿ ŒÊ«‰œ‰Ì «”  Ê  €ÌÌ—«  œ— ¬‰ «⁄„«· ‰ŒÊ«Âœ ‘œ',False);
      _Dont_save_Word := True;
    end
    else
      _Dont_save_Word := False;

      //»«“ ﬂ—œ‰ ›«Ì· Ê—œ
    if not dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger, not(_AllowToEditWordFiles),
                            True, Exec_has_WordExcel(FieldByName('Letterid').AsInteger)) then
    begin
      //«ê— ›«Ì· Ê—œÌ «Œ ’«’ œ«œÂ ‰‘œÂ »Êœ

      FExportToWord := TFExportToWord.Create(Application);
      with FExportToWord do
      begin
        Letterid := FieldByName('Letterid').AsInteger;
        LetterFormat := FieldByName('LetterFormat').AsInteger;
        if not dm.UseTemplate then
        begin
          FExportToWord.FormShow(FExportToWord);
          OpenFileClick(OpenFile);
        end
        else
          ShowModal;
      end;
      { TODO -oparsa : 14030605-bug349 }
      if Assigned(FExportToWord) then
        FreeAndNil(FExportToWord);
     { TODO -oparsa : 14030605-bug349 }
    end;
  end;
  // Amin 1391/10/24 RefreshQuery;
  tmRefereshQuery.Enabled := true; // Amin 1391/10/24

end;


procedure TMainForm.AWordMainExecute(Sender: TObject);
begin
   inherited;
   { TODO -oparsa : 14030411 }
    Dm.qtemp.Close;
    Dm.qtemp.SQL.Clear;
    Dm.qtemp.SQL.Add('SELECT IsCopy FROM dbo.ReCommites with(nolock) WHERE LetterID='+IntToStr(dm.Get_All_LetterLetterID.AsInteger));
    Dm.qtemp.Open;
    Dm.qtemp.Last ;
    if Dm.qtemp.FieldByName('IsCopy').AsString <> '' then
      _AllowToEditWordFiles:= not Dm.qtemp.FieldByName('IsCopy').AsBoolean;
   { TODO -oparsa : 14030411 }

   With Dm.Get_All_Letter do
    if not Dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,not _AllowToEditWordFiles) then
     ShowMsg(53);
end;


procedure TMainForm.ADarftInsExecute(Sender: TObject);
begin
   inherited;
   //‰«„Â ÅÌ‘ ‰ÊÌ” ’«œ—Â
   with SentLetterInputForm do
   begin
      SentLetterInputForm := TSentLetterInputForm.Create(Application);
      GetLetter(0);
      LetterFormat:=2; //‰«„Â ÅÌ‘ ‰ÊÌ”
      IsDraft := True; //Add Sanaye 950121 Õ· „‘ò· Å—«‰ “ œ— ÊÊ—œ ‰«„Â«Ì ÅÌ‘‰ÊÌ”
      DataSetInsert.Execute;
      Properties.Hide;
      ShowModal;
   end;
   IsDraft := False;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24 RefreshQuery;
end;

procedure TMainForm.ADraftToLetterExecute(Sender: TObject);
Var
   l, NewID, oldIndicatorID, intOldLetterId, intOldLetterTypeId : Integer;
   IndicatorId : string;
   OReadOnly, olv, emp, f, fals, tru: OleVariant;
   HNDL:THandle;
   lIsCopy, lProceed, lIsCopy_In_Dabir, blnHas_WordPage : Boolean;
   fmAssignLetterIndicator : TfmAssignLetterIndicator;
   Wordtxt : widestring;

   function SetWordLetterNo : boolean;
   Var
      No : String;
   begin
      result := false;
      No := IntToStr(NewID);
      Dm.spGetInnerNo.Close;
      Dm.spGetInnerNo.Parameters.ParamByName('@LetterID').Value:=Dm.Get_All_LetterLetterID.AsInteger;
      Dm.spGetInnerNo.Parameters.ParamByName('@SecID').Value:=Dm.Get_All_LetterSecretariatID.AsInteger;
      Dm.spGetInnerNo.Open;
      if not Dm.ExecGet_LetterWordFile(dm.Get_All_LetterLetterID.AsInteger,false,True) then
         Exit;
      with dm.WordApplication do
      begin
         if ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
            ActiveWindow.ActivePane.View.Type_:= wdPrintView;
         //ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
         ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader; //«‰ ﬁ«· „ò«‰ ‰„« »Â Âœ— ’›ÕÂ ÊÊ—œ
      end;
   end;
begin
  inherited;
  blnDisableRefresh := True;
  { TODO -oparsa : 14030411 }
  _Dont_save_Word := False;
  { TODO -oparsa : 14030411 }

  if not DataSetPost then
  begin
    blnDisableRefresh := False;
    Exit;
  end;

  oldIndicatorID := dm.Get_All_LetterIndicatorID.AsInteger;
  intOldLetterId := dm.Get_All_LetterLetterID.AsInteger;
  intOldLetterTypeId := Dm.Get_All_LetterLetter_Type.AsInteger;
  blnHas_WordPage := dm.Get_All_Letterhas_WordPage.AsBoolean;

  if (blnHas_WordPage) then
  begin
    { TODO -oparsa : 14030119 }
    //if not Dm.ExecGet_LetterWordFile(intOldLetterId, False, False) or (_Word_Is_Opened) then
    if not Dm.ExecGet_LetterWordFile(intOldLetterId, False, False) or ((_Word_Is_Opened) and Application_Is_Run('winword.exe')) then
    { TODO -oparsa : 14030119 }
    begin
      messageShow(86,False);
      blnDisableRefresh := False;
      Exit;
    end;
  end;

  /////////////////////

  fmAssignLetterIndicator := TfmAssignLetterIndicator.Create(Application);
  fmAssignLetterIndicator.lblMessage.Caption := Get_sysAppMessage(34) + ' ' +
                                                Trim(IntToStr(oldIndicatorID)) + ' ' +
                                                Get_sysAppMessage(35);
  try
    if fmAssignLetterIndicator.ShowModal = mrOK then
    begin
     lIsCopy := fmAssignLetterIndicator.IsCopy.Checked;
     lProceed := fmAssignLetterIndicator.Proceed.Checked;
     lIsCopy_In_Dabir := fmAssignLetterIndicator.IsCopy_In_Dabir.Checked;
    end
    else
    begin
      blnDisableRefresh := False;
      Exit;
    end;
  finally
    fmAssignLetterIndicator.Free;
  end;

  //////////////////////
  {
  fmAssignLetterIndicator := TfmAssignLetterIndicator.Create(self);
  fmAssignLetterIndicator.lblMessage.Caption := Get_sysAppMessage(34)+' '+
                                                Trim(dm.Get_All_LetterIndicatorID.AsString)+' '+
                                                Get_sysAppMessage(35);

  oldID := dm.Get_All_LetterIndicatorID.AsInteger;

  fmAssignLetterIndicator.ShowModal;
  if fmAssignLetterIndicator.ModalResult=mrCancel then
    Exit;
  }

  //NewID := Dm.LastIndicatorID(Dm.Get_All_LetterLetter_Type.AsInteger, 1);
  NewID := Dm.LastIndicatorID(intOldLetterTypeId, 1);
  if dm.EqualAnswerIndicator then // ‰ŸÌ„«  ”Ì” „Ì : ‘„«—Â ‰«„Â ÃÊ«» ‰«„Â Ê«—œÂ »« ‘„«—Â ‰«„Â Ê«—œÂ ÌﬂÌ »«‘œ.
  begin
    //L := Exec_Get_indicatorID_BySentLetterID(dm.Get_All_LetterLetterID.AsInteger);
    L := Exec_Get_indicatorID_BySentLetterID(intOldLetterId);
    if L > 0 then
      NewID := L;
  end;

  // »œÌ· ‰«„Â ÅÌ‘ ‰ÊÌ” »Â ‰«„Â Ê«—œÂ
  {With fmAssignLetterIndicator do
    Draft_to_SentLetter(Dm.Get_All_LetterLetterID.AsInteger,NewID,IsCopy.Checked,Proceed.Checked,IsCopy_In_Dabir.Checked);
  }
  Draft_to_SentLetter(intOldLetterId, NewID, lIsCopy, lProceed, lIsCopy_In_Dabir);

  ShowMsgString(Get_sysAppMessage(54)+'  '+IntToStr(NewID)+'  '+ Get_sysAppMessage(55));
  //SetWordLetterNo;
  {Ranjbar}
  //LetterFormat := 1; //1:„⁄„Ê·Ì   //RefreshQuery

  // Amin 1391/10/24 RefreshQuery;
  /////////////////////////////////////
  //    if dm.LetterTemplate.IsEmpty

  if blnHas_WordPage then
  begin
    with TADOQuery.Create(self) do
    begin
      try
        Connection := Dm.YeganehConnection;
        //sql.Text := 'select IndicatorId from Letter where LetterId = '+Dm.Get_All_LetterLetterID.AsString;
        sql.Text := 'select IndicatorId From Letter where LetterId = '+IntToStr(intOldLetterId);
        Open;
        if not IsEmpty then
          IndicatorId := Fields[0].asString;
      finally
        Free;
      end;
    end;

    IsDraft := False;
    with dm.Get_LetterWordFile, Parameters do
    begin
      Close;
      //ParamByName('@Ext').Value := Exec_has_WordExcel(Dm.Get_All_LetterLetterID.AsInteger);
      //ParamByName('@LetterID').Value := Dm.Get_All_LetterLetterID.AsInteger;
      ParamByName('@Ext').Value := Exec_has_WordExcel(intOldLetterId);
      ParamByName('@LetterID').Value := intOldLetterId;
      Open;
      if RecordCount = 0 then
      begin
        blnDisableRefresh := False;
        Exit;
      end;
      TBlobField(FieldByName('Image')).SaveToFile(_TempPath+_WordFileName);
    end;
    {
    ShowMessage('lIsCopy :' + BoolToStr(lIsCopy) + '  -IndicatorId :' + IndicatorId + '  -oldIndicatorID:' + IntToStr(oldIndicatorID) +
            '  -intOldLetterId:'+IntToStr(intOldLetterId) + '  -intOldLetterTypeId:'+IntToStr(intOldLetterTypeId));
    }
    emp := '';
    fals := false;
    tru := true;
    olv := wdOpenFormatAuto;
    OReadOnly := False;
    { TODO -oparsa : 14030626 }
    {
    WordApplication.Connect;
    WordApplication.Disconnect;
    }

    if  MainWordApplicationConnect then
    begin
      // Disconnect from Word
      WordApplication.Disconnect;
      MainWordApplicationConnect := False;
    end;

    if not Dm.IsWordRunning then   // for error RPC   The RPC server is unavailable   Remote Procedure Call
    begin
      Dm.ActiveWord ;
    end;

    // Connect to Word
    WordApplication.Connect;
    MainWordApplicationConnect := True ;

    { TODO -oparsa : 14030626 }
    { TODO -oparsa : 14030107 }
    //WordApplication.Visible := True;
    { TODO -oparsa : 14030107 }
    WordApplication.Caption:='Yeganeh';
    HNDL := FindWindow('OpusApp', PAnsiChar('Yeganeh'));
    SetForegroundWindow(HNDL);
    f := _TempPath+_WordFileName;
    WordApplication.Documents.Open(f, EmptyParam, OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    if WordApplication.ActiveWindow.ActivePane.View.Type_ in [wdNormalView, wdOutlineView] then
      WordApplication.ActiveWindow.ActivePane.View.Type_:= wdPrintView;

    Application.ProcessMessages;
    WordApplication.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader; //«‰ ﬁ«· „ò«‰ ‰„« »Â Âœ— ’›ÕÂ ÊÊ—œ
    Application.ProcessMessages;
    ReplaceInWord(WordApplication, '(('+IntToStr(oldIndicatorID)+'))', IndicatorId);
    Application.ProcessMessages;
    WordApplication.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;// «‰ ﬁ«· „ò«‰ ‰„« »Â ’›ÕÂ «’·Ì ÊÊ—œ
    Application.ProcessMessages;
    
    { TODO -oparsa : 14030107 }
    ReplaceInWord(WordApplication, '(('+IntToStr(oldIndicatorID)+'))', IndicatorId);
    Application.ProcessMessages;

    WordApplication.ActiveWindow.ActivePane.View.SeekView := wdSeekCurrentPageHeader;
    Application.ProcessMessages;

    WordApplication.Selection.WholeStory;
    Wordtxt := WordApplication.Selection.Text;

    if pos('(('+IntToStr(oldIndicatorID)+'))',Wordtxt) >0 then
    begin
      ReplaceInWord(WordApplication, '(('+IntToStr(oldIndicatorID)+'))', IndicatorId);
    end;
    Application.ProcessMessages;

    WordApplication.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
    Application.ProcessMessages;
    
    Wordtxt := '' ;
    WordApplication.Selection.WholeStory;
    Wordtxt := WordApplication.Selection.Text;

    if pos('(('+IntToStr(oldIndicatorID)+'))',Wordtxt) >0 then
    begin
      ReplaceInWord(WordApplication, '(('+IntToStr(oldIndicatorID)+'))', IndicatorId);
    end;
    Application.ProcessMessages;

    if Dm.FullTextSearch then
      Dm.InsertTextIntoLetter(WordApplication,dm.Get_All_Letterletterid.AsInteger);

    WordApplication.Visible := True;
    Application.ProcessMessages;
    { TODO -oparsa : 14030107 }


 //   ReplaceInWord(WordApplication, '(('+IntToStr(oldIndicatorID)+'))', IndicatorId);
    (*
    SaveChange := wdSaveChanges;
    Sleep(1000);
    WordApplication.Connect;
    WordApplication.Visible := True;
    WordApplication.Caption:='Yeganeh';
    HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
    SetForegroundWindow(HNDL);
    f := _TempPath+_WordFileName;
    WordApplication.Documents.Open(f, EmptyParam, EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    WordDocument.Disconnect;
    WordApplication.Disconnect;
    *)
   (*
    with dm.Get_LetterWordFile , Parameters do
     begin
      Edit;
      TBlobField(FieldByName('Image')).LoadFromFile(_TempPath+_WordFileName);
      Post;
     end;
*)
    //FExportToWord.Close;
    //End Sanaye...
  end;
  blnDisableRefresh := False;
  QuickSearchF.SearchClick(Sender);
end;

procedure TMainForm.ReplaceInWord(w:twordapplication;old,new:widestring);
var
  r, Wap, txt, reptxt, fals, tru : OleVariant;
  tmpNew : WideString;
  Tmp, Tmp2: TStringList;
begin
  //Add Sanaye 940921
  //Õ· „‘ò· ‰„«Ì‘ ‘„«—Â ÊÊ—œ ÃœÌœ »—œ«‘ ‰ Å—«‰ “Â«
//  mmoLogReplace.Lines.BeginUpdate;
//  try
//    mmoLogReplace.Lines.Clear;
//    Tmp := TStringList.Create;
//    try
//      Tmp.LoadFromFile('.\LogReplace.txt');
//      mmoLogReplace.Lines.AddStrings(Tmp);
//    finally
//      Tmp.Free;
//    end;
//  finally
//    mmoLogReplace.Lines.EndUpdate;
//  end;
   with w.Selection.Find do
   begin
      ClearFormatting;
      Replacement.ClearFormatting;
      Wap := wdFindContinue;
      r := wdReplaceAll;
      Txt := old;
      tmpNew := New;
      if Not IsDraft then
      begin
        tmpNew := StringReplace(tmpNew, '(', '', [rfReplaceAll, rfIgnoreCase]);
        tmpNew := StringReplace(tmpNew, ')', '', [rfReplaceAll, rfIgnoreCase]);
      end;
      RepTxt := tmpNew;
      w.Selection.Find.Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
//      mmoLogReplace.Lines.Add(DateTimeToStr(Now)+ ' Replaced : '+txt+' With '+reptxt);
//      try
//        Tmp2 := TStringList.Create;
//        try
//          Tmp2.AddStrings(mmoLogReplace.Lines);
//          Tmp2.SaveToFile('.\LogReplace.txt');
//        finally
//          Tmp2.Free;
//        end;
//      finally
//
//      end;
   end;
   //end  sanaye...
end;{proc}

procedure TMainForm.ALetterReportExecute(Sender: TObject);
begin
   inherited;
   LetterReport := TLetterReport.Create(Self);
   LetterReport.ShowModal;
end;

procedure TMainForm.ASentenseExecute(Sender: TObject);
begin
  inherited;
 FEditSentense:=TFEditSentense.Create(self);
 FEditSentense.ShowModal;
end;

procedure TMainForm.AFulltextExecute(Sender: TObject);
begin
  inherited;
  FullTextSearchF:=TFullTextSearchF.Create(Application);
  FullTextSearchF.ShowModal;
end;

procedure TMainForm.AsecChangeExecute(Sender: TObject);
begin
  inherited;
  SecChange := TSecChange.Create(Application);
  SecChange.ShowModal;
  status4.Caption:=dm.SecretariatsSecTitle.AsString;
  {Ranjbar}
  if DisplayMode = Archive then
     SetDisplayMode(Archive);
  //---
end;

procedure TMainForm.AEditSecsExecute(Sender: TObject);
begin
   inherited;
   FEditSecs := TFEditSecs.Create(Application);
   FEditSecs.ShowModal;
end;

procedure TMainForm.AErrorMsgExecute(Sender: TObject);
begin
  inherited;
  FErrorMsg := TFErrorMsg.Create(Application);
  FErrorMsg.ShowModal;
end;

procedure TMainForm.ASystemSettingExecute(Sender: TObject);
begin
   inherited;
   SystemSettings := TSystemSettings.Create(Application);
   SystemSettings.ShowModal;
end;

procedure TMainForm.AstatisticExecute(Sender: TObject);
begin
  inherited;
  StatisticForm := TStatisticForm.Create(self);
  list.Hide;
  StatisticForm.Show;
  StatisticMode := True;
end;

procedure TMainForm.AdailyrepExecute(Sender: TObject);
begin
  inherited;
  Fdailyrep:=tFdailyrep.create(Application);
  Fdailyrep.ShowModal;
end;

procedure TMainForm.AFillLetterDataExecute(Sender: TObject);
begin
  inherited;
  FillLetterData :=TFillLetterData.Create(Application);
  FillLetterData.ShowModal;
end;

procedure TMainForm.N27Click(Sender: TObject);
begin
  inherited;
  FHelp:=TFHelp.Create(Application);
  FHelp.ShowModal;
end;


procedure TMainForm.ATExactCopyExecute(Sender: TObject);
begin
  inherited;
  GetExactCopy(1);
end;

procedure TMainForm.QueryRefresherTimer(Sender: TObject);
Var
   ActCtl:TWinControl;
begin
   inherited;
  if blnDisableRefresh then
    Exit;

   {Ranjbar 89.10.26 ID=287}
   //«ê— Å‰Ã—Â ›⁄«· ›—„ «’·Ì ‰»Êœ ¬‰ê«Â
   if GetActiveWindow <> MainForm.Handle then
      Exit;
   //---

   if lettersDbGrid.SelectedRows.Count>1 then
      exit;
   try
     {Ranjbar}
     //‘œ‰ ›ÊﬂÊ” «“ —ÊÌ ﬂ‰ —·Â« Œ«—Ã „Ì‘Êœ Refresh »«
     if DisplayMode = Search then
        with QuickSearchF do
           if (Indicator.Focused) or (Memo.Focused) or (MERegFromDate.Focused) or (MERegToDate.Focused)
                 or ( ToStaffer.Focused) or ( UserMemo.Focused) or ( CenterNo.Focused) or ( RBIncommingDate.Focused)
                 or (EdtIncommingNO.Focused) or (RecommiteOrgEdt.Focused) or (SubItems.Focused) or ( OrgEdit.Focused)
                 or ( SubRec.Focused) or (cmbSearch_In_All_Secs.Focused) or (cmbSearch_In_All_Years.Focused) or ( RetroactionNo.Focused) or (FollowEdit.Focused)  then
              Exit;
     ActCtl := ActiveControl;
     //---
     // Amin 1391/10/24 RefreshQuery;
     tmRefereshQuery.Enabled := true; // Amin 1391/10/24

     {Ranjbar}
     if (Self.Active)And(ActCtl.Visible)And(ActCtl.Enabled)then
         ActCtl.SetFocus;
     //---
   except on e:exception do
      ShowMessage('YEGANEH ERROR 3: ' + e.Message);
   end;
end;

procedure TMainForm.AOtherReceiversExecute(Sender: TObject);
begin
  inherited;
  GetExactCopy(2);
end;

procedure TMainForm.AshortCutExecute(Sender: TObject);
begin
  inherited;
  UserShortCutF := TUserShortCutF.Create(Application);
  UserShortCutF.ShowModal;
end;

procedure TMainForm.Adeleted_toLetterExecute(Sender: TObject);
var
  newId:integer;
begin
  inherited;
  with dm.Get_All_Letter do
  begin
    if Not DataSetPost then
      exit;

    if not messageShowString(Get_sysAppMessage(77)+dm.Get_All_Letter.FieldByName('Indicatorid').AsString+
                 Get_sysAppMessage(35),true) then
      exit;

    with dm do
    begin
      newId:=LastIndicatorID(Get_All_LetterLetter_Type.AsInteger,1);
      Exec_Deleted_to_Letter(Get_All_LetterLetterID.AsInteger,newId);
      LetterFormat:=1;
      ShowMsgString(Get_sysAppMessage(54)+IntToStr(newId)+Get_sysAppMessage(55));
      // Amin 1391/10/24 RefreshQuery;
      tmRefereshQuery.Enabled := true; // Amin 1391/10/24
    end;
  end;
end;

procedure TMainForm.AchangePasswordExecute(Sender: TObject);
begin
  inherited;
  FchangePassword := TFchangePassword.Create(Application);
  FchangePassword.showmodal;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  inherited;
//  tmRefereshQuery.Enabled := False;
  //Dm.ISMessageShow := GetUserSetting('cbAlarmMessage');
  dm.SecID:=_DefaultSec;
  //AHome.Execute;
  if not _IsSecretariatStaffer then
    try
      QuickSearchF.Refresh;
    except
    end;
//   ShowMessage('11'+lettersDbGrid.SortedFieldName);
   DBGrid_LoadColumns('Dabir_'+Self.Name , lettersDbGrid );
   {$IFDEF ADA}
      Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â Ê « Ê„«”ÌÊ‰ «œ«—Ì ¬œ« ';
   {$ELSE}
      Caption := '‰—„ «›“«— œ»Ì—Œ«‰Â ‘—ò  ›‰«Ê—Ì «ÿ·«⁄«  Ìê«‰Â' + ' : ‰”ŒÂ ' + _SoftVersion;
   {$ENDIF}
//   ShowMessage('12'+lettersDbGrid.SortedFieldName);
   RefreshFollowUP;

   ShamsiDate:=yShamsiDate.ShamsiString(Now);
   CBArchiveStatus.KeyValue:=Dm.InitialArchiveMode;// Added By Saeedi on 1390/06/05


   if not(acWorkSheetAllRep.Visible or acShowWorkSheetBase.Visible or acShowWorkSheetResult.Visible)  then
      ActionMainMenuBar1.ActionControls[8].Visible := false;

   if not(ASendFax.Visible or AReceiveFax.Visible or AShowFollowLetter.Visible or ASendEmail.Visible)  then
      AServices.Visible := false;

   if not(Aimport.Visible or ARelatedSecretariat.Visible or AmonitorTables.Visible or AUserTable.Visible
          or AInputRefferenceTable.Visible or aReportUserTable.Visible or AAccessField.Visible)  then
      ActionMainMenuBar1.ActionControls[9].Visible := false;

   if not(ALetterChainFollow.Visible or AddFollow.Visible or AShowFollow.Visible)  then
      ActionMainMenuBar1.ActionControls[7].Visible := false;

   if not(AAbout.Visible or ABackup.Visible or AShrinck.Visible or AEditSecs.Visible
          or ALetterNoSetting.Visible or ASystemSetting.Visible or AsecChange.Visible or ChangeYear.Visible
          or AddNews.Visible or AddGroupNews.Visible or Act_WorkGroup.Visible or AfillLetterData.Visible
          or AloadImages.Visible or AAddExtention.Visible or AArchiveCenter.Visible
          or AErrorMsg.Visible or ArestorLtterData.Visible or AexportData.Visible
          or AUpdateFax.Visible or AddSysEmail.Visible or ConvertEmailToLetter.Visible
          or Afix.Visible or AFromOrganize.Visible or acDefineUserGroup.Visible)  then
      ActionMainMenuBar1.ActionControls[6].Visible := false;

   if not(ALetterReport.Visible or AFulltext.Visible or ALetterDataTextSearch.Visible
          or ARecommiteReport.Visible or ScanL.Visible or acRepMohlateEghdam.Visible
          or Adailyrep.Visible or Astatistic.Visible or ARecommiteStat.Visible
          or LoginLogoutReport.Visible or AActiveUser.Visible or Areport_userLog.Visible)  then
      ActionMainMenuBar1.ActionControls[5].Visible := false;

   if not(AchangePassword.Visible or AshortCut.Visible or AChangeColor.Visible
          or ACustomizeGrid.Visible or AUserSetting.Visible or AUsers.Visible
          or access.Visible or AgetMessage.Visible or aSENDMessage.Visible
          or Email.Visible or ActPhone.Visible )  then
      ActionMainMenuBar1.ActionControls[4].Visible := false;

   if not(ATemplate.Visible or word2.Visible or AWordMain.Visible
          or ASaveWord.Visible or adeleteWord.Visible or ATemplateGroup.Visible)  then
      ActionMainMenuBar1.ActionControls[3].Visible := false;

   if not(AARCHIVE.Visible or AArchiveFolders.Visible or AARchiveLetter.Visible
          or AEditSubject.Visible or ABrowsArchive.Visible or AddLetterSubject.Visible or AddDocument.Visible)  then
      ActionMainMenuBar1.ActionControls[2].Visible := false;

     AHome.Execute;

   TimerAlert.Enabled:=true;
   lettersDbGrid.Font:= Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Font:= Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[0].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[1].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[2].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[3].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[4].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[5].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[6].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[7].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[8].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[9].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[10].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[11].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[12].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[13].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[14].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[15].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[16].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[17].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[18].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[19].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[20].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[21].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[22].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[23].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[24].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[25].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[26].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[27].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
   lettersDbGrid.Columns.Items[28].Font := Dm.MemoFont;//StrToFont(GetUserSetting('MemoFont'));
//   lettersDbGrid.Font:=StrToFont(GetUserSetting('MemoFont'));

  //ShowMessage(IntToStr(dm.InitialDisplyMode));
  if dm.InitialDisplyMode = 2 then
  begin
    GroupingPanel.Visible := True;
    SpeedButton9Click(Self);
  end;

  if dm.InitialDisplyMode = 1 then
  begin
    GroupingPanel.Visible := True;
    SpeedButton11Click(Self);
  end;

  if dm.InitialDisplyMode = 0 then
  begin
    GroupingPanel.Visible := false;
  end;

  ActionToolBar1.Enabled := True;
  Keyboard_Farsi;
  tmRefereshQueryTimer(self);

//  if isRunQuery=False then
//  begin
//     RefreshQuery;
//     isRunQuery:=True;
//  end;
end;

Procedure TMainForm.Message_News;
begin
  PDJRotoLabel1Click(Nil);
  PageControl_SetTabSheet(PageControl1,'TshMessage');
end;

Procedure TMainForm.Draft;
begin
  //¬Ê—œ‰ ‰«„Â Â«Ì ÅÌ‘ ‰ÊÌ” Ê«—œÂ
  if CBFormat.KeyValue <> 2 then
  begin
    CBFormat.KeyValue := 2;  //LetterFormat=2 , Letter_Type = 1;
    CBFormatChange(Nil);
    Application.ProcessMessages;
  end;
end;

procedure TMainForm.CBFormatChange(Sender: TObject);
begin
  inherited;
  IsDraft := False;
  LetterFormat := CBFormat.KeyValue;
  if GetList3ListItemsID.AsInteger = 8 then
    IsDraft := True;
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  AHome.Execute;
end;

procedure TMainForm.lettersDbGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
var
  C1,C2,C3:Tcolor;
begin
  inherited;
  C1 := lettersDbGrid.Color;
  C2 := lettersDbGrid.NearColor(C1,30);
  C3 := lettersDbGrid.NearColor(C2,30);
  if MainForm.Letter_Type = 0 then
    Case Dm.Get_All_LetterLetter_Type.AsInteger of
        1: Color := C1;
        2: Color := C2;
        3: Color := C3;
    end
  else
    if Column.Grid.DataSource.DataSet.RecNo mod 2=0 then
      Color := C1
    else
      Color := C2;

  if Dm.Get_All_Letter.FieldByName('ClassificationId').asinteger>1 then
    Color := LowOrange;
end;

procedure TMainForm.alockExecute(Sender: TObject);
begin
  inherited;
  PSearch.Hide;
  LoginForm := TLoginForm.Create(Application);
  LoginForm.IsLock := True;
  LoginForm.ShowModal;
  PSearch.Show;
end;

type code=^integer;

procedure TMainForm.SetDisplayMode(value:DisplayModes);
begin
  if FDisplayMode=Search then
    QuickSearchF.Visible := false;
  FDisplayMode:=value;
  PArchive.Hide;

  GroupingPanel.Visible:=value<>Notany;
  Splitter2.Visible:=value<>Notany;

  Case Value of
      //»—êÂ »«Ìê«‰Ì
      Archive:begin
                 PArchive.Show;
                 DSForm.DataSet := Exec_Get_ArchiveFolder_ByAccess(RadioGroup1.ItemIndex);
                 CBArchiveStatus.KeyValue:=3; //Â„Â ‰«„Â Â«
                 //---
              end;
      //»—êÂ Ã” ÃÊ
      Search: with QuickSearchF do
              begin
                 //Ranjbar
                 CBArchiveStatus.KeyValue:=0; //‰«„Â Â«Ì Ã«—Ì
                 //----
                 QuickSearchF := TQuickSearchF.Create(Application);
                 ManualDock(GroupingPanel,nil,alClient);
                 Align:=alClient;
                 Show;
                 archiveFolderID:=0;
              end;
   end;
end;

procedure TMainForm.AarchivecExecute(Sender: TObject);
begin
  inherited;
  DisplayMode := Archive;
end;

procedure TMainForm.ANotAnyExecute(Sender: TObject);
begin
  inherited;
  DisplayMode := Notany;
end;

procedure TMainForm.AHomeExecute(Sender: TObject);
begin
  inherited;
  DoRefresh := False;

  //DisplayMode := DisplayModes(Dm.InitialDisplyMode);
  DisplayMode := DisplayModes(2);
  with MainForm do
  begin
    Letter_Type := Dm.InitialReceivedMode;
    LetterFormat := 1;
    CBArchiveStatus.KeyValue := Dm.InitialArchiveMode; // Added By Saeedi On 1390/06/05

    DoRefresh := True;
    SpinEdit.Text := IntToStr(Dm.MaxLetterInDabir);
    //---
    try
      QuickSearchF.ANewSearch.Execute;
      QuickSearchF.Refresh;
    except
      Where := '';
      tmRefereshQuery.Enabled := true;
    end;
  end;

  //ShowFollowing := False;
end;

procedure TMainForm.ASearchExecute(Sender: TObject);
begin
  inherited;
  if DisplayMode<>Search then
    DisplayMode:=Search;
end;

procedure TMainForm.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  AFromOrganize.Execute;
end;

procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  if DisplayMode = Archive then
    Ahome.Execute
  else
    DisplayMode := Archive;
end;

procedure TMainForm.AArchiveFoldersExecute(Sender: TObject);
begin
  inherited;
  ArchiveOrganizeForm := TArchiveOrganizeForm.Create(Application);
  ArchiveOrganizeForm.OrganizeMode:=true;
  ArchiveOrganizeForm.ShowModal;
  DSForm.DataSet := Exec_Get_ArchiveFolder_ByAccess(RadioGroup1.ItemIndex);
  //---
end;

procedure TMainForm.UserTimerTimer(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.09.02 ID=236}
  //«ê— Å‰Ã—Â ›⁄«· ›—„ «’·Ì ‰»Êœ ¬‰ê«Â
  if GetActiveWindow <> MainForm.Handle then
     Exit;
  //---

  {try
     if ISMessageShow then
        SlowMessage
     else
        FmShowMessage.Close;
  except on e:exception do
    ShowMessage('YEGANEH ERROR 1: ' + e.Message);
  end;}
  {Ranjbar}
  Status1.Caption := Time_GetTime(Dm.YeganehConnection,False) + '  ' + _Today;
  //---
end;

procedure TMainForm.CBReceiveClick(Sender: TObject);
begin
   inherited;
   Letter_Type := CBReceive.KeyValue;
end;

procedure TMainForm.SBArchiveClick(Sender: TObject);
begin
  inherited;
if AArchiveFolders.Enabled then
AArchiveFolders.Execute;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
  inherited;
DisplayMode:=Search;
end;

procedure TMainForm.AloadImagesExecute(Sender: TObject);
begin
  inherited;
 fimportfax:=TFImportFax.Create(Application);
 FImportFax.ShowModal;
end;

procedure TMainForm.LoginLogoutReportExecute(Sender: TObject);
begin
  inherited;
FUserLoginLogoutReport:=TFUserLoginLogoutReport.Create(Application);
FUserLoginLogoutReport.ShowModal;

end;

procedure TMainForm.AexportDataExecute(Sender: TObject);
begin
   inherited;
   FArchiveLetterData := TFArchiveLetterData.Create(Application);
   FArchiveLetterData.ShowModal;
end;

procedure TMainForm.FromOrgOrganize;
begin
  inherited;
  FromOrgForm:=TFromOrgForm.Create(Application);
  FromOrgForm.ShowModal;
end;

procedure TMainForm.DBTreeArchiveClick(Sender: TObject);
begin
  inherited;
  archiveFolderID := dsform.DataSet.fieldbyname('folderid').AsInteger;
end;

procedure TMainForm.ArestorLtterDataExecute(Sender: TObject);
begin
   inherited;
   FRestorLetterData:=TFRestorLetterData.Create(Application);
   FRestorLetterData.ShowModal;
end;

procedure TMainForm.lettersDbGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
      case dm.Get_All_LetterLetter_Type.AsInteger of
        1:f.color:=clNavy;
        2:F.Color:=clMaroon;
        3:f.Color:=clblue;
       end; 
end;

procedure TMainForm.Get_All_LetterAfterScroll(DataSet: TDataSet);
var
  i:BYTE;
begin
  AAnswer.Visible:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.name,tag);
  AAnswer.Enabled:=(dm.Get_All_LetterLetter_Type.AsInteger=1) and dm.GetActionAccess(AAnswer.name,tag);
  with lettersDbGrid,Columns do
    for i:=0 to Count-1 do
      if UpperCase(Columns[i].FieldName)='SENDERTITLE'  then
       case dm.Get_All_LetterLetter_Type.AsInteger of
         1:Columns[i].Title.Caption:='›—” ‰œÂ';
         2,3:Columns[i].Title.Caption:='êÌ—‰œÂ';
       end
      else
        if UpperCase(Columns[i].FieldName)='DELIVERTITLE' then
        case dm.Get_All_LetterLetter_Type.AsInteger of
         1:Columns[i].Title.Caption:='êÌ—‰œÂ';
         2,3:Columns[i].Title.Caption:='›—” ‰œÂ';
        end;

  if dm.Get_All_LetterArchived.AsBoolean then
    AARchiveLetter.Caption:='›⁄«· ò—œ‰ ‰«„Â'
  else
    AARchiveLetter.Caption:='¬—‘ÌÊ ‰«„Â';

  ArchiveFolders.Text:=Exec_sp_ArchivePlaces(dm.Get_All_LetterLetterID.AsInteger,_ArchiveCenterID);
  ArchiveFolders.Visible:=ArchiveFolders.Text<>'';

  APrintWord.Enabled := (dm.Get_All_Letterhas_WordPage.AsBoolean)and(dm.Get_All_LetterLetter_Type.AsInteger <>1) and(dm.Get_All_Letterhas_sign.AsBoolean);
  ASigners.Enabled := (dm.Get_All_Letterhas_WordPage.AsBoolean)and(dm.Get_All_LetterLetter_Type.AsInteger <>1)and(dm.Get_All_Letterhas_sign.AsBoolean);
  ASaveWord.Enabled := (Dm.Get_All_Letterhas_WordPage.AsBoolean);
end;

procedure TMainForm.AActiveUserExecute(Sender: TObject);
begin
  inherited;
  ActiveUsers:=TActiveUsers.Create(Application);
  ActiveUsers.ShowModal;
end;

procedure TMainForm.Only_CurrentClick(Sender: TObject);
begin
   inherited;
   // Amin 1391/10/24 RefreshQuery;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.ArecDraftInsExecute(Sender: TObject);
begin
   inherited;
   with ReceivedLetterInputForm do
   begin
      ReceivedLetterInputForm:=TReceivedLetterInputForm.Create(Application);
      GetLetter(0);
      LetterFormat:=2;
      IsDraft := True; //Add Sanaye 950121 Õ· „‘ò· Å—«‰ “ œ— ÊÊ—œ ‰«„Â«Ì ÅÌ‘‰ÊÌ”
      //DBNavigator1.BtnClick(nbInsert);
      DataSetInsert.Execute;
      {Ranjbar
      Properties.Hide;
      attachs.Hide;}
      ShowModal;
   end;

   IsDraft := False;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24 RefreshQuery;
end;

procedure TMainForm.adeleteWordExecute(Sender: TObject);
begin
   inherited;
   if Dm.Get_All_Letterhas_WordPage.AsBoolean then
      if MessageShow(39,true) then
      begin
//         if Dm.Get_All_LetterIsCopy.AsBoolean then
//         begin
//            MBaseForm.MessageShowString('«Ì‰ ‰«„Â ›ﬁÿ ﬁ«»· ŒÊ«‰œ‰ „Ì»«‘œ Ê €Ì—ﬁ«»·  €ÌÌ— «” ', False);
//            Exit;
//         end;
         Exec_Delete_LetterWord(Dm.Get_All_LetterLetterID.AsInteger);
         DeleteSignLog(Dm.Get_All_LetterLetterID.AsInteger);
         // Amin 1391/10/24 RefreshQuery;
         tmRefereshQuery.Enabled := true; // Amin 1391/10/24
      end;
end;

procedure TMainForm.ARecommiteGroupExecute(Sender: TObject);
begin
   inherited;
   QueryRefresher.Enabled:=false;
   MakeSelectedRecommites;
   if _selectedLettersID.Count=0 then
      Exit;
   RecommiteGroup:=TRecommiteGroup.Create(Application);
   Exec_Select_LetterReCommite(0,3);
   dm.Select_LetterReCommite.Insert;
   RecommiteGroup.ShowModal;
   QueryRefresher.Enabled:=True;
end;

procedure TMainForm.AGroupRecommiteExecute(Sender: TObject);
begin
   inherited;
   QueryRefresher.Enabled:=false;
   MakeSelectedRecommites;
   if _selectedLettersID.Count=0 then
      exit;

   FExactGroup:=TFExactGroup.Create(Application);
   Exec_Select_LetterReCommite(0,1);
   dm.Select_LetterReCommite.Insert;
   FExactGroup.ShowModal;
   QueryRefresher.Enabled:=True;
end;

procedure TMainForm.AchangeLetterPropertiesExecute(Sender: TObject);
begin
   inherited;
   FchangeCricitalFields:=TFchangeCricitalFields.Create(Application);
   FchangeCricitalFields.ShowModal;
end;

procedure TMainForm.AAboutExecute(Sender: TObject);
begin
  inherited;
  AboutBox:=TAboutBox.Create(Application);
  AboutBox.ShowModal;
end;

procedure TMainForm.ATemplateGroupExecute(Sender: TObject);
begin
   inherited;
   FrUTemplateGroup := TFrUTemplateGroup.Create(Application);
   FrUTemplateGroup.ShowModal;
end;

procedure TMainForm.AAddExtentionExecute(Sender: TObject);
begin
   inherited;
   FrAddExtention:=TFrAddExtention.create(application);
   FrAddExtention.ShowModal;
end;

procedure TMainForm.AaddLetterDataExecute(Sender: TObject);
begin
  inherited;
  FraddLetterData := TFraddLetterData.Create(Application);
  FrAddLetterData.Letter_Or_Erja:='Letter';
  FrAddLetterData.DSForm.DataSet:=Dm.Get_LetterData_by_LetterID;
  FrAddLetterData.RecommitID:=0;
  FraddLetterData.LetterID := Dm.Get_All_LetterLetterID.AsInteger;
  FraddLetterData.ShowModal;
  //Amin 1391/10/24 RefreshQuery;
  tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.lettersDbGridDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
//////// Commented By Saeedi on 1390/05/12
//   Icon:=TBitmap.Create;
//   if (Column.FieldName='IndicatorID' ) then
//      with  lettersDbGrid.Canvas do
//      begin
//         Brush.Color:=clWhite;
//         Font.Color := clBlack;
//         FillRect(Rect);
//         if (Dm.Get_All_Letter.FieldByName('IndicatorID').Value>200)  then
//            Dm.LetterImages.GetBitmap(1,Icon)
//         else
//            Dm.LetterImages.GetBitmap(0,Icon);
//         Draw(round((Rect.Left+Rect.Right-Icon.Width)/2),Rect.Top,Icon);
//      end;
//////// end of Commented By Saeedi on 1390/05/12
 /////////// Added And Commented By Saeedi on 1390/05/12
//    if (Column.FieldName='DeadLineDate' ) then
//      with  lettersDbGrid.Canvas do
//      begin
//         if (ShamsiDate>Dm.Get_All_LetterDeadLineDate.AsString) then Brush.Color:=clRed;
//         FillRect(Rect);
//         Draw(round((Rect.Left+Rect.Right-Icon.Width)/2),Rect.Top,Icon);
//      end;

end;

procedure TMainForm.lettersDbGridNeedImageIndex(Column: TColumn;
var
  ImageIndex: Integer);
begin
  inherited;
  if Column.FieldName = 'has_Page' then
    if Dm.Get_All_Letterhas_Page.AsBoolean then
      ImageIndex := 3
    else
      ImageIndex := 0;

  if Exec_has_WordExcel(dm.Get_All_Letter.FieldByName('Letterid').AsInteger) = 3 then
  begin
    if Column.FieldName = 'has_WordPage' then
      if Dm.Get_All_Letterhas_WordPage.AsBoolean then
      begin
        if Dm.Get_All_Letterhas_Sign.AsBoolean then
          ImageIndex := 4
        else
          ImageIndex := 2;
      end
      else
        ImageIndex := 0;
  end
  else
  begin
    if Column.FieldName = 'has_WordPage' then
      if Dm.Get_All_Letterhas_WordPage.AsBoolean then
      begin
        if Dm.Get_All_Letterhas_Sign.AsBoolean then
          ImageIndex := 6
        else
          ImageIndex := 5;
      end
      else
        ImageIndex := 0;
  end;

  if Column.FieldName = 'has_file' then
    if Dm.Get_All_Letterhas_file.AsBoolean then
      ImageIndex := 1
    else
      ImageIndex := 0;
end;

procedure TMainForm.AloadPDFExecute(Sender: TObject);
begin
   inherited;
   //TO DO PDF
   {if Not DataSetPost then exit;
      FLoadPDF := TFLoadPDF.Create(Application);
   with FLoadPDF do
   begin
      LetterID := Dm.Get_All_LetterLetterID.AsInteger;
      ShowModal;
   end; }
   // Amin 1391/10/24 RefreshQuery;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.N2Click(Sender: TObject);
Var
   I:integer;
   j :String;
begin
   inherited;
  if QuickSearchF.CheckBox1.Checked then
    lettersDbGrid.Print
  else
  begin
   j := '';

   if lettersDbGrid.SelectedRows.Count > 0 then
      with Dm.Get_All_Letter do
         for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
         begin
            GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
            if j= '' then
            begin
             j := 'LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end
            else
            begin
              j:= j + ' OR LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end

         end;

    Dm.Get_All_Letter.Filter := j;//'LetterID IN('+j+')';
    Dm.Get_All_Letter.Filtered := True;
    lettersDbGrid.Print;
    Dm.Get_All_Letter.Filtered := False;
  end;
end;

procedure TMainForm.Excel1Click(Sender: TObject);
Var
   I:integer;
   j :String;
begin
   inherited;
  if QuickSearchF.CheckBox1.Checked then
    lettersDbGrid.ExportToExcel
  else
  begin
   j := '';

   if lettersDbGrid.SelectedRows.Count > 0 then
      with Dm.Get_All_Letter do
         for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
         begin
            GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
            if j= '' then
            begin
             j := 'LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end
            else
            begin
              j:= j + ' OR LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end

         end;

    Dm.Get_All_Letter.Filter := j;//'LetterID IN('+j+')';
    Dm.Get_All_Letter.Filtered := True;

    lettersDbGrid.ExportToExcel;
    Dm.Get_All_Letter.Filtered := False;
  end;
end;

procedure TMainForm.Word1Click(Sender: TObject);
Var
   I:integer;
   j :String;
begin
   inherited;
  if QuickSearchF.CheckBox1.Checked then
    lettersDbGrid.ExportToWord
  else
  begin
   j := '';

   if lettersDbGrid.SelectedRows.Count > 0 then
      with Dm.Get_All_Letter do
         for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
         begin
            GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
            if j= '' then
            begin
             j := 'LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end
            else
            begin
              j:= j + ' OR LetterID=' + Dm.Get_All_LetterLetterID.AsString;
            end

         end;

    Dm.Get_All_Letter.Filter := j;//'LetterID IN('+j+')';
    Dm.Get_All_Letter.Filtered := True;
    lettersDbGrid.ExportToWord;
    Dm.Get_All_Letter.Filtered := False;
  end;
end;

procedure TMainForm.AinnerLetterExecute(Sender: TObject);
begin
   inherited;
   with FinnerLetter do
   begin
      FinnerLetter := TFinnerLetter.Create(Application);
      GetLetter(0);
      SecID:=dm.SecID;
      DataSetInsert.Execute;
      ShowModal;
   end;
   if Letter_Type in [3,0] then
      // Amin 1391/10/24 RefreshQuery;  
      tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.ASendToOtherSecExecute(Sender:TObject);
Var
   I: Integer;
begin
   inherited;
   MakeSelectedRecommites;//»œ”  ¬Ê—œ‰ —ﬂÊ—œÂ«Ì «‰ Œ«» ‘œÂ
   if _SelectedLettersID.Count > 0 then
      with FselectSec do
      begin
         FselectSec := TFselectSec.Create(Application);//‰„«Ì‘ ›—„ «‰ Œ«» œ»Ì—Œ«‰Â
         ShowModal;

         if (SelectedSecID <> Dm.SecID) and (SelectedSecID <> -1) then
         begin
            for I:=0 to _SelectedLettersID.Count-1 do
            begin
               Exec_SendLetter_To_Other_Sec(SelectedSecID, StrToInt(_SelectedLettersID[i]), intChboxSendLetterWithoutChange);
            end;   
            ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ‰«„Â Â«Ì «‰ Œ«» ‘œÂ »« ›—„   ÅÌ‘ ‰ÊÌ” Ê«—œÂ »Â œ»Ì—Œ«‰Â ÃœÌœ ﬂÅÌ ‘œ‰œ',[mbok],mtInformation);
         end
            else
               ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ° ‘„« œ»Ì—Œ«‰Â Ã«—Ì —« «‰ Œ«» ‰„ÊœÂ «Ìœ',[mbok],mtInformation);
      end;
   // Amin 1391/10/24 RefreshQuery;
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.ARelatedSecretariatExecute(Sender: TObject);
begin
   inherited;
   FrRelatedSecretariat:=TFrRelatedSecretariat.Create(Application);
   FrRelatedSecretariat.ShowModal;
end;

procedure TMainForm.AimportExecute(Sender: TObject);
begin
   inherited;
   FrImport := TFrImport.Create(Application);
   FrImport.ShowModal;
end;

procedure TMainForm.AmonitorTablesExecute(Sender: TObject);
begin
   inherited;
   FrMonitorTables := TFrMonitorTables.Create(Application);
   FrMonitorTables.ShowModal;
end;

procedure TMainForm.lettersDbGridMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
var pt: TGridcoord;
    r,j,i: byte;
    aPt: TPoint;
    Coord: TGridCoord;
    afieldname: String;

begin
   DblclickAction := viewLetter;

  { TODO -oparsa : 14030107 }
   {
   pt:= lettersDbGrid.MouseCoord(x, y);
   j:=0;
   for i:=1 to 3 do
      if  lettersDbGrid.Columns[i-1].Visible then
      begin
         inc(j);
         if j=pt.x then
            r:=i;
      end;

   if r=1 then
      DblclickAction := ViewJpg
   else
      if r=2 then
         DblclickAction:=ViewWord
      else
         if r=3 then
            DblclickAction:=ViewPdf
         else
            DblclickAction:=viewLetter;

   if R <> 1 then
      ImageEnDBView1.Visible := False;
   }
   aPt := lettersDbGrid.ScreenToClient(Mouse.CursorPos);
   Coord := lettersDbGrid.MouseCoord(aPt.X, aPt.Y);
   { TODO -oparsa : 14030413 }
   if (Coord.X) > 0 then
   { TODO -oparsa : 14030413 }
     afieldname := lettersDbGrid.Columns[(Coord.X)-1].FieldName;
   {
   if (afieldname ='has_Page') or
     (afieldname ='has_WordPage' ) or
     (afieldname ='has_file' ) then
       ShowMessage('You clicked column ' + IntToStr(Coord.X) +' '+afieldname );
   }
   if afieldname = 'has_Page' then
      DblclickAction := ViewJpg
   else
      if afieldname = 'has_WordPage'  then
         DblclickAction:= ViewWord
      else
         if afieldname = 'has_file'  then
            DblclickAction:= ViewPdf
         else
            DblclickAction:= viewLetter;

   if afieldname <> 'has_WordPage'  then
      ImageEnDBView1.Visible := False;
   { TODO -oparsa : 14030107 }
end;

procedure TMainForm.ARecommiteListExecute(Sender: TObject);
begin
   inherited;
   FrRecommiteList := TFrRecommiteList.Create(Application);
   FrRecommiteList.LetterID := Dm.Get_All_LetterLetterID.AsInteger;
   FrRecommiteList.ShowModal;
end;

procedure TMainForm.ALetterNoSettingExecute(Sender: TObject);
begin
   inherited;
   FrLetterNoSetting := TFrLetterNoSetting.Create(Application);
   FrLetterNoSetting.ShowModal;
end;

procedure TMainForm.AUserTableExecute(Sender: TObject);
begin
   inherited;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.showmodal;
end;

procedure TMainForm.AInputRefferenceTableExecute(Sender: TObject);
begin
   inherited;
   FrInputRefferenceTable:=TFrInputRefferenceTable.Create(Application);
   FrInputRefferenceTable.ShowModal;
end;

procedure TMainForm.aReportUserTableExecute(Sender: TObject);
begin
   inherited;
   //ê“«—‘ «“ ›—„ Â«Ì «œ«—Ì
   FrMakeUserTableRep := TFrMakeUserTableRep.Create(Application);
   FrMakeUserTableRep.ShowModal;
end;


//»—œ«‘ ‰ —ﬂÊ—œÂ«Ì «‰ Œ«» ‘œÂ
procedure TMainForm.MakeSelectedRecommites;
Var
  i : Integer;
begin
  _SelectedLettersID.Clear;

  if lettersDbGrid.SelectedRows.Count > 0 then
    with Dm.Get_All_Letter do
      for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
      begin
        GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
        _SelectedLettersID.Add(Dm.Get_All_LetterLetterID.AsString);
      end
  else
    _SelectedLettersID.Add(dm.Get_All_LetterLetterID.AsString);
end;

procedure TMainForm.AARchiveLetterExecute(Sender: TObject);
Var I: Integer;
    LetterID : Integer;
begin
   inherited;
   MakeSelectedRecommites;
   if dm.Get_All_LetterArchived.AsBoolean then //›⁄«· ﬂ—œ‰ ‰«„Â
   begin
      if not messageShowString('¬Ì« «“  «‰ ﬁ«· ‰«„Â »Â ÅÊ‘Â ‰«„Â Â«Ì Ã«—Ì „ÿ„∆‰ Â” Ìœ',True) then
         exit;

      if _selectedLettersID.Count>0  then
         for i:=0 to _selectedLettersID.Count-1 do
             //Ranjbar
             //Exec_Update_Archived_letter(dm.Get_All_LetterLetterID.AsInteger,false) ;
             Exec_Update_Archived_letter(strtoint(_selectedLettersID[i]),false) ;
             //---
      // Amin 1391/10/24 RefreshQuery;
      tmRefereshQuery.Enabled := true; // Amin 1391/10/24
   end
      else  //¬—‘ÌÊ ﬂ—œ‰ ‰«„Â
      begin

         if NOT MessageShowString('¬Ì« «“ ¬—‘ÌÊ ‰«„Â „ÿ„∆‰ Â” Ìœø',True)  then
            Exit;
         if _SelectedLettersID.Count > 0  then
            for i:=0 to _selectedLettersID.Count-1 do
               Exec_Update_Archived_letter(StrToInt(_SelectedLettersID[i]),True)
         else
            Exec_Update_Archived_letter(Dm.Get_All_LetterLetterID.AsInteger,true);

         // Amin 1391/10/24 RefreshQuery;  
         tmRefereshQuery.Enabled := true; // Amin 1391/10/24

         {Ranjbar 89.08.03 ID=164}
         //«‰ Œ«» œÊ»«—Â —ﬂÊ—œÂ« ÃÂ  ¬—‘ÌÊ ﬂ—œ‰ ‰«„Â Â« Å” «“ “Ê‰ﬂ‰ ﬂ—œ‰ ¬‰Â«
         For I:=0 to _SelectedLettersID.Count-1 do
         begin
            LetterID := StrToIntDef(_SelectedLettersID.Strings[I],0);
            if Dm.Get_All_Letter.Locate('LetterID',LetterID,[]) then
               lettersDbGrid.SelectedRows.CurrentRowSelected := True;
         end;
         //---
      end;
end;

procedure TMainForm.aSENDMessageExecute(Sender: TObject);
begin
   inherited;
   FrSendMessage:=TFrSendMessage.Create(Application);
   FrSendMessage.ShowModal;
end;

procedure TMainForm.AgetMessageExecute(Sender: TObject);
begin
   inherited;
   FrGetMessage:=TFrGetMessage.Create(Application);
   FrGetMessage.ShowModal;
end;

procedure TMainForm.AEditSubjectExecute(Sender: TObject);
begin
   inherited;
   with FrEditSubject do
   begin
      FrEditSubject:=TFrEditSubject.Create(Application);
      GetLetter(dm.Get_All_LetterLetterID.AsInteger);
      ShowModal;
   end
end;

procedure TMainForm.ABrowsArchiveExecute(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   if Dm.SecId = 0 then
   begin
      MBaseForm.MessageShowString('·ÿ›« «» œ« œ»Ì—Œ«‰Â ŒÊœ —« «‰ Œ«» ‰„«ÌÌœ', False);
      SecChange := TSecChange.Create(Application);
      SecChange.ShowModal;
      Status4.Caption := dm.SecretariatsSecTitle.AsString;
      if Dm.SecId = 0 then
         Exit;
   end;
   //---
   frBrowsArchive:=TFrBrowsArchive.Create(Application);
   FrBrowsArchive.ShowModal;
end;

procedure TMainForm.ADeleteExecute(Sender: TObject);
Var
   I:integer;
begin
   inherited;
   if not dm.GetActionAccess(TAction(SENDER).name,TAG) then
      Exit;

   if MessageShow(38,True) then
   begin
      //Ranjbar
      //Exec_delete_Letter(dm.Get_All_LetterLetterID.AsInteger , dm.LastIndicatorID(dm.Get_All_LetterLetter_Type.AsInteger,3));
      MakeSelectedRecommites; //»—œ«‘ ‰ —ﬂÊ—œÂ«Ì «‰ Œ«» ‘œÂ
      if _SelectedLettersID.Count > 0  then
         for i:=0 to _SelectedLettersID.Count-1 do
            // »œÌ· ›—„  ‰«„Â «“ „⁄„Ê·Ì »Â Õ–› ‘œÂ Ì« Õ–› ﬁÿ⁄Ì ‰«„Â œ«—«Ì ›—„  Õ–›Ì
            Exec_Delete_Letter(StrToInt(_SelectedLettersID[i]) , dm.LastIndicatorID(dm.Get_All_LetterLetter_Type.AsInteger,3));
      //---
      // Amin 1391/10/24 RefreshQuery;
      tmRefereshQuery.Enabled := true; // Amin 1391/10/24
   end;
end;

procedure TMainForm.ASwitchUserExecute(Sender: TObject);
Var
   Action : TCloseAction;
begin
  inherited;
  FormClose(Sender,Action);
  //WinExec('Yeganeh_Dabir.exe',0);
  WinExec(Pchar(ExtractFileName(Application.ExeName)),0);
  Application.Terminate;
end;

procedure TMainForm.ALetterHistoryExecute(Sender: TObject);
begin
   inherited;
   FrLetterHistory:=TFrLetterHistory.Create(Application);
   FrLetterHistory.LetterId:=dm.Get_All_LetterLetterID.AsInteger;
   FrLetterHistory.ShowModal;
end;

procedure TMainForm.SLowMessage;
Var
   DraftCount,  MessageCount , NewsCount,OldNewsID : Integer;
begin
   inherited;
   if _Word_Is_Opened then
      Exit;

   DraftCount := Get_DraftLetter_count(dm.CurrentMyear, dm.SecID);
   MessageCount := Exec_Get_UserMessageCount;
   MessageLabel.Caption := '‘„«  '+IntToStr(MessageCount)+'   ÅÌ«„ ŒÊ«‰œÂ ‰‘œÂ œ«—Ìœ ¬Ì« „«Ì· »Â ŒÊ«‰œ‰ ¬‰Â« Â” Ìœ';

   OldNewsID := QrNewsNewsID.AsInteger;
   QrNews.Close; //Œ»—Â«Ì ŒÊ«‰œÂ ‰‘œÂ
   QrNews.Parameters.ParamByName('Pa_UsersID').Value := _UserID;
   QrNews.Open;
   QrNews.Locate('NewsID',OldNewsID,[]);
   NewsCount := QrNews.RecordCount;

   {if ShowFollowing then
       Exit;}

   if (DraftCount=0) And (MessageCount=0) And (NewsCount=0) then
   Begin
      try
        FmShowMessage.Close;
      except
      end;
      Exit;
   end;

   { if (Old_DraftCount = DraftCount)And(Old_MessageCount = MessageCount)And(Old_NewsCount = NewsCount) Then
     Exit;}

   With FmShowMessage do
   begin
      try
         FmShowMessage.Free;
      except

      end;
      FmShowMessage := TFmShowMessage.Create(Application);
      LblDraft.Caption := IntToStr(DraftCount);  //' ⁄œ«œ ‰«„Â Â«Ì ÅÌ‘ ‰ÊÌ” ÃÂ  À»  : '
      LblMessage.Caption := IntToStr(MessageCount); //'  ⁄œ«œ ÅÌ€«„Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
      LblNews2.Caption := IntToStr(NewsCount); //'  ⁄œ«œ Œ»—Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
      Left := MainForm.Width  - (Width+20);
      Top  := MainForm.Height - (Height+20);
      Show;

      {if ShowAlarm then
      Begin
        LblDraft.Caption := IntToStr(DraftCount);  //' ⁄œ«œ ‰«„Â Â«Ì ÅÌ‘ ‰ÊÌ” ÃÂ  À»  : '
        LblMessage.Caption := IntToStr(MessageCount); //'  ⁄œ«œ ÅÌ€«„Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
        LblNews2.Caption := IntToStr(NewsCount); //'  ⁄œ«œ Œ»—Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
        Show;
      End;

      except
        FmShowMessage := TFmShowMessage.Create(Application);
      end;

        LblDraft.Caption := IntToStr(DraftCount);  //' ⁄œ«œ ‰«„Â Â«Ì ÅÌ‘ ‰ÊÌ” ÃÂ  À»  : '
        LblMessage.Caption := IntToStr(MessageCount); //'  ⁄œ«œ ÅÌ€«„Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
        LblNews2.Caption := IntToStr(NewsCount); //'  ⁄œ«œ Œ»—Â«Ì ŒÊ«‰œÂ ‰‘œÂ : '
        Left := MainForm.Width  - (Width+20);
        Top  := MainForm.Height - (Height+20);
        Show;}
   end;
end;

procedure TMainForm.AArchiveCenterExecute(Sender: TObject);
begin
   inherited;
   FrArchiveCenter:=TFrArchiveCenter.Create(Application);
   FrArchiveCenter.ShowModal;
end;

procedure TMainForm.ARecommiteReportExecute(Sender: TObject);
begin
   inherited;
   FrRecommiteReport := TFrRecommiteReport.Create(Application);
   FrRecommiteReport.ShowModal;
end;

procedure TMainForm.ARecommiteStatExecute(Sender: TObject);
begin
   inherited;
   FrRecommiteStat:=TFrRecommiteStat.Create(Application);
   FrRecommiteStat.ShowModal;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
   FrFollowUp := TFrFollowUp.Create(Self);
   FrFollowUp.StartFollowUpID:=0;
   FrFollowUp.refreshData;
   FrFollowUp.Select_FollowUp_ByStart.Insert;

   FrFollowUp.ShowModal;
   RefreshFollowUP;
end;

procedure TMainForm.RefreshFollowUP;
var i,j: integer;
begin
   inherited;
   i:=0;
   Try
      i:=dm.Select_FollowUP_By_DateFollowUPID.AsInteger;
   Except
   End;
   dm.Exec_Select_FollowUP_By_Date(ShamsiIncDate(_Today,0,-2,0),ShamsiIncDate(_Today,0,1,0),1);
   dm.Select_FollowUP_By_Date.Locate('FollowUPID',i,[]);
   j:=Exec_Get_FollowUP_Count(_userid,ShamsiIncDate(_Today,0,-2,0),ShamsiIncDate(_Today,0,1,0),1);
   if j>0 then
      labell.Caption:=Bill(j)+  '  ÅÌêÌ—Ì »—«Ì «‰Ã«„ ÊÃÊœ œ«—œ '
   else
      labell.Caption:='„Ê—œÌ »—«Ì ÅÌêÌ—Ì  ÊÃÊœ ‰œ«—œ';

   {Ranjbar 87.12.10}
   QrNews.Close; //Œ»—Â«Ì ŒÊ«‰œÂ ‰‘œÂ
   QrNews.Parameters.ParamByName('Pa_UsersID').Value := _userid;
   QrNews.Open;
end;

procedure TMainForm.Button3Click(Sender: TObject);
Var
   i: integer;
begin
   inherited;
   with dm ,Select_FollowUP_By_Date,FrFollowUp do
   begin
      if Recordcount=0 then
         Exit;
      i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
      FrFollowUp:=TFrFollowUp.Create(Application);
      StartFollowUpID:=Select_FollowUP_By_DateStartFollowUpID.AsInteger;
      refreshData;
      Select_FollowUp_ByStart.Locate('FollowUPID',i,[]);
      Select_FollowUp_ByStart.edit;
      ShowModal;
      RefreshFollowUP;
   end;
end;

procedure TMainForm.Button2Click(Sender: TObject);
var i: integer;
begin
   inherited;
   with dm,Select_FollowUP_By_Date do
   begin
      if Recordcount=0 then
         Exit;

      if not Eof then
      begin
         next;
         i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
         Prior;
      end
         else
         begin
           Prior;
           i:=Select_FollowUP_By_DateFollowUPID.AsInteger;
           Next;
         end;

      Edit;
      Select_FollowUP_By_DateDoneStatusID.AsInteger:=2;
      post;
      RefreshFollowUP;
      Locate('FollowUPID',i,[]);
   end;
end;

procedure TMainForm.YDBGrid2DblClick(Sender: TObject);
var Lt: integer;
begin
   inherited;
   if dm.Select_FollowUP_By_DateLetterid.AsInteger>0 then
   begin
       Lt := Dm.YeganehConnection.Execute('select Letter_Type from letter where letterid='+dm.Select_FollowUP_By_DateLetterid.AsString).Fields[0].Value;
       with MainForm do
          case Lt of
             1: ViewReceivedLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger);
             2: ViewSentLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger);
             3: ViewInnerLetter(dm.Select_FollowUP_By_DateLetterid.AsInteger);
          end;
   end
      else
         Button3.OnClick(Button3);
end;

procedure TMainForm.YDBGrid2NeedFontCondition(Column: TColumn;State: TGridDrawState; var F: TFont);
begin
   inherited;
   case dm.Select_FollowUP_By_DateDelayStatus.AsInteger of
     -1: begin
            F.Color:=clRed;
            F.Style:=Font.Style+[fsBold];
         end;
     0: begin
           F.Color:=clBlack;
           F.Style:=Font.Style-[fsBold];
        end;
     1: begin
           F.Color:=clBlue;
           F.Style:=Font.Style-[fsBold];
        end;
    end;
end;

procedure TMainForm.YDBGrid2NeedImageIndex(Column: TColumn;var ImageIndex: Integer);
begin
   inherited;
   if Column.Index=2 then
      ImageIndex := Dm.Select_FollowUP_By_DateFollowUPTypeID.AsInteger-1;
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   FollowupPanel.Hide;
end;

procedure TMainForm.CloseBtnClick(Sender: TObject);
begin
   inherited;
   ShowFollowing := not ShowFollowing;
end;

procedure TMainForm.ALetterChainFollowExecute(Sender: TObject);
var sf: integer;
begin
   inherited;
   sf := Exec_Select_FolllowUp_ByLetterID(dm.Get_All_LetterLetterID.AsInteger,_userid);
   FrFollowUp:=TFrFollowUp.Create(Application);
   FrFollowUp.StartFollowUpID:=sf;
   FrFollowUp.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   FrFollowUp.refreshData;
   if sf=0 then
      FrFollowUp.Select_FollowUp_ByStart.Insert;
   FrFollowUp.ShowModal;
   RefreshFollowUP;
end;

procedure TMainForm.AddFollowExecute(Sender: TObject);
begin
   inherited;
   Button1.OnClick(nil)
end;

procedure TMainForm.AShowFollowExecute(Sender: TObject);
begin
   inherited;
   ShowFollowing := true;
   FollowupPanel.Show;
end;

procedure TMainForm.AddLetterSubjectExecute(Sender: TObject);
begin
   inherited;
   FrSubject := TFrSubject.Create(Application);
   FrSubject.ShowModal;
end;

procedure TMainForm.AddDocumentExecute(Sender: TObject);
begin
   inherited;
   with FrAddDocument do
   begin
      FrAddDocument := TFrAddDocument.Create(Application);
      GetLetter(0);
      SecID := dm.SecID;
      acSBDataSetInsert.Execute;
      ShowModal;
       tmRefereshQuery.Enabled := true;
   end
end;

procedure TMainForm.ScanLExecute(Sender: TObject);
begin
   inherited;
   ScanReport:=TScanReport.Create(Application);
   ScanReport.ShowModal;
end;

procedure TMainForm.CharsetTimer(Sender: TObject);
begin
   inherited;
   if ActionMainMenuBar1.Font.Charset <> 178 then
      ActionMainMenuBar1.Font.Charset := 178;
   try
     Exec_update_UserLoginLogout(_UserLoginLogoutID, False, False);
     { TODO -oparsa : 14030413 }
     AppTerminate.Enabled := False;
     { TODO -oparsa : 14030413 }
     if ForceToClose then
         AppTerminate.Enabled := true;
   except on e:exception do
     { TODO -oparsa : 14030413 }
    // ShowMessage('YEGANEH ERROR 2: ' + e.Message);
     { TODO -oparsa : 14030413 }
   end;
end;

procedure TMainForm.ASaveWordExecute(Sender: TObject);
begin
   inherited;
   if dm.Get_All_Letterhas_WordPage.AsBoolean then
      if SaveDialog.Execute then
         if pos('.doc',SaveDialog.FileName) <> 0 then
            SaveWordFile(dm.Get_All_LetterLetterID.AsInteger,SaveDialog.FileName)
         else
            SaveWordFile(dm.Get_All_LetterLetterID.AsInteger,SaveDialog.FileName+'.doc');
end;

procedure TMainForm.ExactCopyExecute(Sender: TObject);
begin
   inherited;
   ExactCopyF:=TExactCopyF.Create(Application);
   ExactCopyF.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   ExactCopyF.TypeId:=1;
   ExactCopyF.ShowModal;
end;

procedure TMainForm.AAccessFieldExecute(Sender: TObject);
begin
   inherited;
   FrFieldAccess := TFrFieldAccess.Create(Application);
   FrFieldAccess.ShowModal;
end;

procedure TMainForm.FaxRefresherTimer(Sender: TObject);
begin
   inherited;
   try
      if AUpdateFax.Visible then
         AUpdateFax.Execute;
   except on e:exception do
      ShowMessage('YEGANEH ERROR 4: ' + e.Message);
   end;
end;

procedure TMainForm.AUpdateFaxExecute(Sender: TObject);
begin
   inherited;
   {Ranjbar}
   try
      try
         Screen.Cursor := crHourGlass;
         UpdateFax;
         if GetList3KeyValue.AsInteger = 2 {ÅÌ‘ ‰ÊÌ”} then //For CBFormat
            // Amin 1391/10/24 RefreshQuery;
            tmRefereshQuery.Enabled := true; // Amin 1391/10/24
      finally
         Screen.Cursor := crDefault;
      end;
   except
   end;
end;

procedure TMainForm.N1Click(Sender: TObject);
begin
   inherited;
   lettersDbGrid.CustomizePrint;

{
S := '';
for I := 1 to lettersDbGrid.Columns.Count-1 do
   BEGIN
   S := S + lettersDbGrid.Columns.Items[I].FieldName + '---' + lettersDbGrid.Columns.Items[I].Title.Caption + CHR(13);
   END;

   ShowMessage(S);
}

end;

procedure TMainForm.AloadFileExecute(Sender: TObject);
var
   //Hamed_Ansari_990701_S
   //fileName : pchar;
   fileName : String;
   //Hamed_Ansari_990701_E
begin
   inherited;
   //TO DO
   fileName := loadLetterdata(dm.Get_All_LetterLetterID.AsInteger);
   if FileExists(fileName) then
   //Hamed_Ansari_990701_S
      //ShellExecute(Handle, 'open',fileName,nil,nil,SW_SHOWNORMAL);
      ShellExecute(Handle, 'open',PChar(fileName),nil,nil,SW_SHOWNORMAL);
   //Hamed_Ansari_990701_E
end;

procedure TMainForm.ACustomizeGridExecute(Sender: TObject);
begin
   inherited;
   lettersDbGrid.CustomizePrint;
end;

procedure TMainForm.CBArchiveStatusClick(Sender: TObject);
begin
   inherited;
   // Amin 1391/10/24 RefreshQuery;  
   tmRefereshQuery.Enabled := true; // Amin 1391/10/24
end;

procedure TMainForm.Areport_userLogExecute(Sender: TObject);
begin
   inherited;
   FrReport_userLog := TFrReport_userLog.Create(Application);
   FrReport_userLog.ShowModal;
end;

procedure TMainForm.APrintFishExecute(Sender: TObject);
begin
   inherited;
   FmReceipt := TFmReceipt.Create(Application);
   FmReceipt.ShowModal;
end;

{Ranjbar}
//Example =>  Select_LetterMemo.AsString := FillBlobField(Self,DBMemo2.Text,'„ ‰ „÷„Ê‰ ‰«„Â');
Function TMainForm.FillBlobField(aForm:TForm;aDBMemoText:WideString;aEditoCaption:String):WideString;
var
   DBRE : TwwDBRichEdit;
   SpFillBlob : TADOStoredProc;
   DSFillBlob : TDataSource;
begin
   SpFillBlob := TADOStoredProc.Create(Nil);
   SpFillBlob.Connection := dm.YeganehConnection;
   SpFillBlob.ProcedureName := 'Sp_FillBlob;1';
   DSFillBlob := TDataSource.Create(Nil);
   DSFillBlob.DataSet := SpFillBlob;
   SpFillBlob.Close;
   SpFillBlob.Open;
   SpFillBlob.Insert;
   SpFillBlob.FieldByName('MyBlobField').AsString := aDBMemoText;

   DBRE := TwwDBRichEdit.Create(Nil);
   DBRE.Parent := aForm;
   DBRE.EditorOptions := [reoShowLoad,reoShowSaveAs,reoShowSaveExit,reoShowPrint,
                          reoShowPageSetup,reoShowToolBar,reoShowStatusBar,reoShowHints,
                          reoShowRuler,reoCloseOnEscape,reoFlatButtons,reoShowJustifyButton];

   DBRE.SendToBack;
   DBRE.EditorCaption := aEditoCaption;
   DBRE.DataSource := DSFillBlob;
   DBRE.DataField := 'MyBlobField';
   DBRE.Execute;

   Result := DBRE.Text;

   SpFillBlob.Cancel;
   SpFillBlob.Close;
end;

// Amin 1391/07/15 Start
function TMainForm.GetUserOrgID: Integer;
begin
  Result:=0;
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT FromOrgID FROM Users WHERE Id='+IntToStr(_UserID));
  QTemp.Open;
  if not QTemp.IsEmpty then Result:=QTemp.FieldValues['FromOrgID'];
end;
// Amin 1391/07/15 End

procedure TMainForm.AddGroupNewsExecute(Sender: TObject);
begin
   inherited;
   FmNewsGroup := TFmNewsGroup.Create(Application);
   FmNewsGroup.ShowModal;
end;

procedure TMainForm.AddNewsExecute(Sender: TObject);
begin
   inherited;
   FmNews := TFmNews.Create(Application);
   FmNews.ShowModal;
end;

procedure TMainForm.ShowFmNewsUsers(aLocateID:integer=0);
begin
   //‰„«Ì‘ ›—„ ·Ì”  Œ»—Â«
   FmNewsUsers := TFmNewsUsers.Create(Application);
   FmNewsUsers.LocateID := aLocateID;
   FmNewsUsers.ShowModal;
end;

procedure TMainForm.NewsListExecute(Sender: TObject);
begin
   inherited;
   ShowFmNewsUsers(0);
end;

procedure TMainForm.BBOKClick(Sender: TObject);
begin
   inherited;
   FrGetMessage := TFrGetMessage.Create(Application);
   //userTimer.Enabled := false;
   FrGetMessage.ShowModal;
end;

procedure TMainForm.PDJRotoLabel1Click(Sender: TObject);
begin
   inherited;
   ShowFollowing := True;
end;

procedure TMainForm.BBNewsOKClick(Sender: TObject);
begin
   inherited;
   //‰„«Ì‘ ›—„ ·Ì”  Œ»—Â«
   ShowFmNewsUsers( QrNewsNewsID.AsInteger );
   RefreshFollowUP;
end;

procedure TMainForm.DBGrid1DblClick(Sender: TObject);
begin
   inherited;
   BBNewsOK.Click;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
Var
   I:integer;
begin
   inherited;

   With QrSrchArchFolder do
   begin
      Close;
      Parameters.ParamByName('Pa_SecID').Value := Dm.SecretariatsSecID.AsInteger;
      Parameters.ParamByName('Pa_userID').Value := _UserID;
      Parameters.ParamByName('Pa_ArchiveCenterID').Value := _ArchiveCenterID;
      Open;
      if FmSearch.GetSearchValue(QrSrchArchFolder,'FolderID','Title',' ',400,400)<>'0' then
      begin
         DBTreeArchive.SetFocus;
         For I:=0 to DBTreeArchive.Items.Count-1 do
             if Integer(DBTreeArchive.Items.Item[I].Data) = (QrSrchArchFolderFolderID.AsInteger) then
             begin
                DBTreeArchive.Items.Item[I].Selected := True;
                Break;
             end
         //Exec_Get_ArchiveFolder_ByAccess.Locate('FolderID',QrSrchArchFolderFolderID.AsInteger,[]);
      end;
   end;
end;

{Ranjbar 87.12.17}
procedure TMainForm.ReportRelatedLetterExecute(Sender: TObject);
begin
   Inherited;
   if Dm.Get_All_Letter.RecordCount = 0 then
   begin
      MBaseForm.messageShowString('ÂÌç ‰«„Â «Ì Ì«›  ‰‘œ', False);
      Exit;
   end;

   FmLetterRalation := TFmLetterRalation.create(Application);
   FmLetterRalation.LetterID := dm.Get_All_LetterLetterID.AsInteger;
   FmLetterRalation.ShowModal;
end;
//---

procedure TMainForm.SBFollowLetterClick(Sender: TObject);

begin
  inherited;

  With Dm do
  begin
     Sel_FollowUp_ByStart.Close;
     Sel_FollowUp_ByStart.Parameters.ParamByName('@StartFollowUpID').Value := 0;
     Sel_FollowUp_ByStart.Open;
     Sel_FollowUp_ByStart.Insert;
     Sel_FollowUp_ByStartStartFollowUpID.AsInteger := 0;
     Sel_FollowUp_ByStartFollowUPTypeID.AsInteger := 11; //ÅÌêÌ—Ì ÃÊ«» ‰«„Â
     Sel_FollowUp_ByStartDoneStatusID.AsInteger := 1; //«‰Ã«„ ‰‘œÂ
     Sel_FollowUp_ByStartToDoDate.AsString := ShamsiIncDate(_Today,0,0,3);
     Sel_FollowUp_ByStartComment.AsString := ' ·ÿ›« Å«”Œ ‰«„Â «Ì »« ‘„«—Â «‰œÌò« Ê— '+ Trim(dm.Get_All_LetterIndicatorID.AsString) +' ÅÌêÌ—Ì ‘Êœ ';
     Sel_FollowUp_ByStartUserID.AsInteger := _userid;
     Sel_FollowUp_ByStart.Post;
     MessageShowString('ÅÌêÌ—Ì ÃœÌœ »« „Ê›ﬁÌ  À»  ‘œ', False);
     Sel_FollowUp_ByStart.Close;
  end;

  RefreshFollowUP;
  PDJRotoLabel1Click(Nil);
end;

procedure TMainForm.ActPhoneExecute(Sender: TObject);
begin
   inherited;
   FmPhone := TFmPhone.Create(Application);
   FmPhone.ShowModal;
end;

procedure TMainForm.EmailExecute(Sender: TObject);
begin
   inherited;
   FmEmails := TFmEmails.Create(Application);
   FmEmails.ShowModal;
end;

procedure TMainForm.ConvertEmailToLetterExecute(Sender: TObject);
begin
   inherited;
   trConvertEmails.Enabled:=True;
   trConvertEmails.OnTimer(trConvertEmails);
end;

procedure TMainForm.Act_WorkGroupExecute(Sender: TObject);
begin
   inherited;
 Form_WorkGroupFM:= TForm_WorkGroupFM.Create(Application);
 Form_WorkGroupFM.ShowModal;
//   FMWorkGroup := TFMWorkGroup.Create(Application);
//   FMWorkGroup.ShowModal;
end;

procedure TMainForm.AddSysEmailExecute(Sender: TObject);
begin
   inherited;
   FmEmailAddresses := TFmEmailAddresses.Create(Application);
   FmEmailAddresses.ShowModal;
end;

procedure TMainForm.TrConvertEmailsTimer(Sender: TObject);
Var
   s: string;
   e1,e2,e3,e4, e5: boolean;
begin
   inherited;
  try
    e1 := FaxRefresher.Enabled;
    e2 := QueryRefresher.Enabled;
    e3 := userTimer.Enabled;
    e4 := trConvertEmails.Enabled;
    e5 := tmrGetEmail.Enabled;

    FaxRefresher.Enabled:=False;
    QueryRefresher.Enabled:=False;
    userTimer.Enabled:=False;
    trConvertEmails.Enabled:=False;
    tmrGetEmail.Enabled := False;

    //Charset.Enabled := False;
    //tmRefereshQuery.Enabled := False;
    //AppTerminate.Enabled := False;

    s:=YEGANEH.Caption;
    YEGANEH.Caption:='... ”Ì” „ œ— Õ«· œ—Ì«›  «Ì„Ì·';

    Enabled:=False;
    FmGetEmails := TFmGetEmails.Create(Application);
    FmGetEmails.ConvertAllEmailsToLetter;

    Enabled:=True;
    YEGANEH.Caption:=s;
    FmGetEmails.Close;

    FaxRefresher.Enabled:=e1;
    QueryRefresher.Enabled:=e2;
    userTimer.Enabled:=e3;
    trConvertEmails.Enabled:=e4;
    tmrGetEmail.Enabled := e5;
  except on e:exception do
    ShowMessage('YEGANEH ERROR 5: ' + e.Message);
  end;
end;

procedure TMainForm.lettersDbGridMouseUp(Sender: TObject;
          Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
   inherited;
   if not(ssAlt in Shift) then
      Exit;

   {Ranjbar}
   if DblclickAction <> ViewJpg then
      Exit;

   if not(Dm.Get_All_Letterhas_Page.AsBoolean)And(ImageEnDBView1.Visible) then
      ImageEnDBView1.Visible := False;
   if (Dm.Get_All_Letterhas_Page.AsBoolean)And(OldLetterID=Dm.Get_All_LetterLetterID.AsInteger)
       And (ImageEnDBView1.Visible = False) then
      ImageEnDBView1.Visible := True;
   if (Dm.Get_All_Letterhas_Page.AsBoolean)And(OldLetterID<>Dm.Get_All_LetterLetterID.AsInteger) then
   begin
      QrLetterData.Close;
      QrLetterData.Parameters.ParamByName('LetterID').Value := Dm.Get_All_LetterLetterID.AsInteger;
      QrLetterData.Open;

      ImageEnDBView1.Height := lettersDbGrid.Height;
      ImageEnDBView1.Width := (lettersDbGrid.Width Div 2)+(lettersDbGrid.Width Div 4);
      ImageEnDBView1.Left := lettersDbGrid.Left;
      ImageEnDBView1.Top := lettersDbGrid.Top;
      AnimateWindow(ImageEnDBView1.Handle,100,AW_HOR_POSITIVE or AW_HOR_NEGATIVE or AW_CENTER);
      ImageEnDBView1.Visible := True;
      ImageEnDBView1.Refresh;
      ImageEnDBView1.FitToWidth;
      OldLetterID := Dm.Get_All_LetterLetterID.AsInteger;
   end;
   //---
end;

procedure TMainForm.SBExpandClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.09 ID=313}
   DBTreeArchive.FullCollapse;
   //---
end;

procedure TMainForm.SBCollapseClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.11.09 ID=313}
   DBTreeArchive.FullExpand;
   //---
end;

procedure TMainForm.DBTreeArchiveKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   inherited;
   {Ranjbar 89.11.09 ID=313}
   if Key in [Vk_Up,Vk_Down] then
      DBTreeArchiveClick(Sender);
   //---
end;

procedure TMainForm.ShowInnerLetter(aLetterID:Integer);
begin
   inherited;
   FinnerLetter := TFinnerLetter.Create(Application);
   FinnerLetter.SecID := Dm.Get_All_LetterSecretariatID.AsInteger;
   FinnerLetter.GetLetter(aLetterID);
   FinnerLetter.ShowModal;
end;

procedure TMainForm.SetShamsiDate(const Value: String);
begin
  FShamsiDate := Value;
end;

procedure TMainForm.DestinationComputerClick(Sender: TObject);
begin
  if not ChatActivated then PrepareForChat;
  UDPSearchForm.SearchEvent := SearchEvent;
  UDPSearchForm.Left := Left;
  UDPSearchForm.Top := Top;
  UDPSearchForm.AktIP := Edit1.Text;
  UDPSearchForm.SearchPartner;
end;

procedure TMainForm.btbSendClick(Sender: TObject);
var
  x: Array[0..10000] of Byte;
  i: Integer;
begin
  if not ChatActivated then PrepareForChat;
  UDPSearchForm.Host := Edit1.Text;
  UDPSearchForm.Active := true;
  x[0] := $10; // Text
  x[1] := 0;   // Type 0
//  for i := 1 to Length(Edit2.Text) do begin
  for i := 1 to Length(Memo2.Text) do begin
    x[i+3] := Byte(Memo2.Text[i]);
  end;
  UDPSearchForm.DoSend(x, 4+Length(Memo2.Text), length(x));
  Memo2.Clear;
  Memo2.SelStart:=0;
end;

procedure TMainForm.Memo2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) and (Shift=[ssShift]) and (Memo2.Focused) then
  begin
     Key:=0;
     if (Length(Edit1.Text)>5) and (Length(Trim(Memo2.Text))>0) then
         Button2Click(Application);
  end;
end;

procedure TMainForm.SearchEvent(ResultIP, ResultName: String);
begin
  Edit1.Text := ResultIP;
  Label2.Caption := ResultName;
  if pos('Myself',Label2.Caption) <> 0 then
    Label2.Caption:='ŒÊœ„';
end;

procedure TMainForm.UDPRead(Sender: TObject; AData: TStream;
  ABinding: TIdSocketHandle);
var
  Buffer: Array [0..2047] of Byte;
  count: Integer;
  PeerIP: String;
  PeerPort: Integer;
  s, ss: String;
  i: Integer;
begin
  PeerIP := ABinding.PeerIP;
  PeerPort:= ABinding.PeerPort;
  count := AData.Size;
  if count > Length(Buffer) then begin
    exit;
  end;
  AData.Read(Buffer, count);
  if (Buffer[0] <> $00) and  (Buffer[0] <> $01) then begin  // not search
    Edit1.Text:= PeerIP;
  end;
  case Buffer[0] of
   $00: begin   // search request
    case count of
     4: begin
      case Buffer[1] of
       0: begin
        Buffer[0] := $01;
        UDPSearchForm.Host := PeerIP;
        UDPSearchForm.DoSend(Buffer, 4, Length(Buffer));
        //Memo1.Lines.Add('Inquiry [' + UDPSearchForm.WSGetHostByAddr(PeerIP) + ' ' + PeerIP + ' ' +          ' Port: ' + IntToStr(PeerPort) +
        //  ']');
       end;
      end;
     end;
    end;
    
   end;
   $01: begin // Search Reply
    case count of
     4: begin
      case Buffer[1] of
       0: begin
       // ss := UDPSearchForm.WSGetHostByAddr(PeerIP);
        s := ' ' + ss + ' ' + PeerIP + ' ' +
          ' Client Port: ' + IntToStr(PeerPort) +
          ' ';
        //Memo1.Lines.Add('Inquiry Reply ' + s);
        if PeerIp = UDPSearchForm.LocalAddress then begin
          ss := '<Myself>' + ss;
        end;
        UDPSearchForm.Add(PeerIP, ss);
       end;
      end;
     end;
    end;
   end;
   $10: begin // Text
    case Buffer[1] of
     0: begin
      s := '';
      for i := 4 to count-1 do begin
        s := s + char(Buffer[i]);
      end;
      Memo1.Lines.Add(PeerIP+'   >>' + s);
      if CheckBox1.Checked then Beep;
     end;
    end;
   end;
  end;
end;

procedure TMainForm.PageControl1Enter(Sender: TObject);
begin
  if Activated then exit;
end;

procedure TMainForm.UDPException(Sender: TObject);
begin
//
end;

procedure TMainForm.SetChatActivated(const Value: Boolean);
begin
  FChatActivated := Value;
end;

procedure TMainForm.PrepareForChat;
begin
//  if Activated then exit;
//  Memo1.Clear;
//  Activated := true;
//  UDPSearchForm.OnUDPRead := UDPRead;
//  UDPSearchForm.OnException := UDPException;
//  UDPSearchForm.Active := true;
//  s := UDPSearchForm.LocalAddress;
////  s2 := UDPSearchForm.WSGetHostByAddr(s);
////  Memo1.Lines.Add(s+'            Ê ¬œ—” „‰            '+s2+'    '+'‰«„ ò«„ÅÌÊ — „‰');
//  Memo1.Lines.Add(s+'   >> ŒÊœ„ Â” „');
//  ChatActivated:=True;
end;

procedure TMainForm.acRepMohlateEghdamExecute(Sender: TObject);
begin
  FRepMohlateEghdam:=TFRepMohlateEghdam.Create(Application);
  FRepMohlateEghdam.ShowModal;
end;

procedure TMainForm.acDefineUserGroupExecute(Sender: TObject);
begin
  DefineUserGroup:=TDefineUserGroup.Create(Application);
  DefineUserGroup.QChartWorkGroup.Close;
  DefineUserGroup.QChartWorkGroup.Open;
  DefineUserGroup.ShowModal;
end;

procedure TMainForm.YRotateLabel1Click(Sender: TObject);
begin
   if Panel10.Visible=False then
   begin
       Panel10.Visible:=True;
       YRotateLabel1.Caption:='<';
   end
   else
   begin
       Panel10.Visible:=False;
       YRotateLabel1.Caption:='>';
   end;
end;

procedure TMainForm.TabSheet1Show(Sender: TObject);
begin
  inherited;
//  if UDPSearchForm=nil then
//     UDPSearchForm:=TUDPSearchForm.Create(Self);
//
//  PrepareSet;

end;

procedure TMainForm.PrepareSet;
begin
//  Memo1.Clear;
//  Activated := true;
//  UDPSearchForm.OnUDPRead := UDPRead;
//  UDPSearchForm.OnException := UDPException;
//  UDPSearchForm.Active := true;
//  s := UDPSearchForm.LocalAddress;
//  Memo1.Lines.Add(s+'   >> ŒÊœ„ Â” „');
end;

procedure TMainForm.acShowWorkSheetBaseExecute(Sender: TObject);
begin
  inherited;
  FWorkSheetBase := TFWorkSheetBase.Create(Application);
  FWorkSheetBase.ShowModal;
end;

procedure TMainForm.acWorkSheetAllRepExecute(Sender: TObject);
begin
  inherited;
   FWorkSheetAllRep:=TFWorkSheetAllRep.Create(Application);
   FWorkSheetAllRep.ShowModal;
end;

procedure TMainForm.acReciveLetterWithECEExecute(Sender: TObject);
begin
  inherited;
   FReciveLetterWithECE:=TFReciveLetterWithECE.Create(Application);
   FReciveLetterWithECE.ShowModal;
end;

procedure TMainForm.acShowWorkSheetResultExecute(Sender: TObject);
begin
  inherited;
   FWorkSheetBaseResults:=TFWorkSheetBaseResults.Create(Application);
   FWorkSheetBaseResults.ShowModal;
end;

function TMainForm.GetSecondOrgID: Integer;
begin
  Result:=0;
  QGetSecondOrgID.Close;
  QGetSecondOrgID.SQL.Clear;
  QGetSecondOrgID.SQL.Add('SELECT SecondOrgID FROM Users WHERE Id='+IntToStr(_UserID));
  QGetSecondOrgID.Open;
  if not QGetSecondOrgID.IsEmpty then
      if not QGetSecondOrgIDSecondOrgID.IsNull then
            Result:=QGetSecondOrgIDSecondOrgID.AsInteger;
end;

procedure TMainForm.SetSecondOrgID(const Value: Integer);
begin
  FSecondOrgID := Value;
end;

procedure TMainForm.tmRefereshQueryTimer(Sender: TObject);
begin
  inherited;
  if blnDisableRefresh then
    Exit;

   // Amin 1391/10/24 Start
   application.ProcessMessages;

   try
     if strtoint(SpinEdit.Text) > 32000 then
     begin
      tmRefereshQuery.Enabled := false;
      ShowMessage('.‘„« Õœ«òÀ— „Ì  Ê«‰Ìœ 32000 —òÊ—œ —« ÃÂ  ‰„«Ì‘ «‰ Œ«» ò‰Ìœ');
       if SpinEdit.CanFocus then SpinEdit.SetFocus;
        exit;
     end;

     RefreshQuery;
     if not DBG_Sorted then
        DBG_Sorted := DBGrid_LoadSort('Dabir_'+Self.Name,lettersDbGrid);
     tmRefereshQuery.Enabled := false;
   except on e:exception do
   begin
      tmRefereshQuery.Enabled := false;
      ShowMessage('YEGANEH ERROR 6: ' + e.Message);
   end;
   end;
   // Amin 1391/10/24 End
end;

procedure TMainForm.ASignersExecute(Sender: TObject);
begin
  inherited;
  if (dm.Get_All_Letterhas_WordPage.AsBoolean)and(dm.Get_All_LetterLetter_Type.AsInteger <>1) then
     dm.ShowSigners(dm.Get_All_LetterLetterID.AsInteger,true);
end;

procedure TMainForm.APrintWordExecute(Sender: TObject);
var
//   AcroPDF1 : TAcroPDF;
   s: string;
begin
  inherited;
  s := SignedDoc(dm.Get_All_LetterLetterID.AsInteger);
  if s<>'' then
     ShellExecute(handle, 'open', pchar(s), nil, nil, SW_SHOWNORMAL);
end;

procedure TMainForm.DeleteSignLog(LetterID: Integer);
begin
   with TADOQuery.Create(nil)do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'DELETE FROM LetterSign WHERE LetterID='+IntToStr(LetterID);
      ExecSQL;
   end;
end;

procedure TMainForm.ALetterDataTextSearchExecute(Sender: TObject);
begin
  inherited;
  TextSearchF:=TTextSearchF.Create(Application);
  TextSearchF.ShowModal;
end;

procedure TMainForm.word2Execute(Sender: TObject);
begin
  inherited;
   _Word_Is_Opened := False;
   AExpotToWordExecute(self);
end;

procedure TMainForm.AReceiveFaxExecute(Sender: TObject);
var
   TiffAddress, TxtAddress, FaxFolder : string;
   ReceiverApp, parameters : pAnsiChar;
begin
  inherited;
   ReceiverApp := pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe');
   TiffAddress := ExtractFilePath(Application.ExeName)+'Fax_tmp.tif';
   TxtAddress :=  ExtractFilePath(Application.ExeName)+'Fax_tmp.txt';
   FaxFolder :=   ExtractFilePath(Application.ExeName)+'Fax';
   if not DirectoryExists(FaxFolder) then
      CreateDir(FaxFolder);
   parameters := pchar('"Receive Fax" "'+TiffAddress+'"  "'+TxtAddress+'"  "'+FaxFolder+'"');

   if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe') then
   begin
      RunAsAdminAndWaitForCompletion(handle,ReceiverApp, parameters);
      FaxRefresher.Enabled := False;
      Cursor := crHourGlass;
      With FImportFax do
      begin
         FImportFax := TFImportFax.Create(Application);
         EFolder.Text := FaxFolder;

         if Trim(UpperCase(_FaxExtention)) = 'JPG' then
            Extention.ItemIndex := 0
         else if UpperCase(_FaxExtention) = 'TIF' then
            Extention.ItemIndex := 1;

         Extention.Text := _FaxExtention;
         MoveAfter := True;
         DoBtn.OnClick(DoBtn);
         DoBtn.Enabled := False;
         Close;
      end;
      Cursor := crDefault;
      FaxRefresher.Enabled := True;

      if GetList3KeyValue.AsInteger = 2 {ÅÌ‘ ‰ÊÌ”} then //For CBFormat
         tmRefereshQuery.Enabled := true;
    end;
end;

function TMainForm.RunAsAdminAndWaitForCompletion(hWnd: HWND; filename: string; Parameters: string): Boolean;
var
    sei: TShellExecuteInfo;
    ExitCode: DWORD;
begin
    ZeroMemory(@sei, SizeOf(sei));
    sei.cbSize := SizeOf(TShellExecuteInfo);
    sei.Wnd := hwnd;
    sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI or SEE_MASK_NOCLOSEPROCESS;
    sei.lpVerb := PChar('open');
    sei.lpFile := PChar(Filename); // PAnsiChar;
    if parameters <> '' then
        sei.lpParameters := PChar(parameters); // PAnsiChar;
    sei.nShow := SW_SHOWNORMAL; //Integer;
   if ShellExecuteEx(@sei) then begin
     repeat
       Application.ProcessMessages;
       GetExitCodeProcess(sei.hProcess, ExitCode) ;
     until (ExitCode <> STILL_ACTIVE) or  Application.Terminated;
   end;
end;

procedure TMainForm.AShowFaxesExecute(Sender: TObject);
begin
  inherited;
   if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')then
      ShellExecute(handle, 'open', pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe'), '"Show Fax"', nil, SW_SHOWNORMAL);
end;

procedure TMainForm.ASendFaxExecute(Sender: TObject);
var
   DocName, Subject, SenderName, FileName : string;
   senderApp, parameters : pAnsiChar;
begin
  inherited;

   if dm.Get_All_Letterhas_WordPage.AsBoolean then
   begin
      senderApp := pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe');
      DocName := dm.Get_All_LetterInnerNo.AsString;
      Subject := dm.Get_All_LetterMemo.AsString;
      SenderName := dm.Get_All_LetterSenderTitle.AsString;
      FileName := SignedDoc(dm.Get_All_LetterLetterID.AsInteger);
      if FileName = '' then
      begin
         fileName := SaveDoc(dm.Get_All_LetterLetterID.AsInteger, ExtractFileDir(Application.ExeName));
         if FileName = '' then
         begin
            ShowMessage('„ ‰ ‰«„Â ﬁ«»· ç«Å ‰Ì” ');
            exit;
         end;
      end;
      parameters := pchar('"Send Fax" "'+DocName+'"  "'+Subject+'"  "'+FileName+'"  "'+SenderName+'" ');
      if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')and (FileExists(FileName))then
         ShellExecute(handle, 'open', senderApp, parameters, nil, SW_SHOWNORMAL);
   end
   else
       ShowMessage('‰«„Â œ«—«Ì „ ‰ ‰Ì” ');
end;

procedure TMainForm.ASendEmailExecute(Sender: TObject);
var
  SenderName, Subject, body, toList, ccList, bccList, FileName : string;
  attachments : TStrings;
  senderApp, parameters : pAnsiChar;
  i : integer;
begin
  inherited;
  if not dm.Get_All_Letter.IsEmpty then
  begin
    //  if dm.Get_All_LetterLetter_Type.AsInteger = 2 then
    begin
      senderApp := pchar(ExtractFilePath(Application.ExeName)+'ServiceApp.exe');

      SenderName := dm.Get_All_LetterSenderTitle.AsString;
      Subject := dm.Get_All_LetterMemo.AsString;
      body := dm.Get_All_LetterMemo.AsString;

      if Trim(Subject)= '' then
        Subject := dm.Get_All_LetterInnerNo.AsString;

      attachments := TStringList.Create;

      if dm.Get_All_Letterhas_WordPage.AsBoolean then
      begin
        FileName := SignedDoc(dm.Get_All_LetterLetterID.AsInteger);
        if FileName = '' then
          fileName := SaveDoc(dm.Get_All_LetterLetterID.AsInteger, ExtractFileDir(Application.ExeName));
        if Trim(FileName)<>'' then
          attachments.Add(FileName);
      end;
      qryAllAttachmentsWithoutWord.Close;
      qryAllAttachmentsWithoutWord.Parameters[0].Value := dm.Get_All_LetterLetterID.AsInteger;
      qryAllAttachmentsWithoutWord.Open;
      if not qryAllAttachmentsWithoutWord.IsEmpty then
      begin
        qryAllAttachmentsWithoutWord.First;
        while not qryAllAttachmentsWithoutWord.Eof do
        begin
          FileName := ExtractFileDir(Application.ExeName)+'\'+qryAllAttachmentsWithoutWordLetterDataID.AsString+'.'+qryAllAttachmentsWithoutWordExtention.AsString;
          qryAllAttachmentsWithoutWordImage.SaveToFile(FileName);
          attachments.Add(FileName);
          qryAllAttachmentsWithoutWord.Next;
        end;
      end;
      //if dm.Get_All_Letterhas_Page.AsBoolean then
      //begin
      //end;
      //if dm.Get_All_Letterhas_file.AsBoolean then
      //begin
      //end;

      //Dm.Ins_Email(Subject, SenderName, toList, '', '', '', 2, _Today, TimeToStr(Now), 0, 0, _UserID, 0, 0, 0, 0, '');
      parameters := pchar('"Send Email" "'+SenderName+'"  "'+Subject+'"  "'+body+'"  "'+toList+'"  "'+ccList+'"  "'+bccList+'"');
      for i := 0 to attachments.Count -1 do
      begin
        parameters := pchar(parameters + ' "'+attachments.Strings[i]+'"');
      end;
      if FileExists(ExtractFilePath(Application.ExeName)+'ServiceApp.exe')then
        ShellExecute(handle, 'open', senderApp, parameters, nil, SW_SHOWNORMAL);
    end;
  end;
end;

procedure TMainForm.AppTerminateTimer(Sender: TObject);
begin
  inherited;
  dec(terminationDownCounter);
  if terminationDownCounter = 0 then
  begin
    Application.Terminate;
    Abort;
  end;
  Label11.Caption := IntToStr(terminationDownCounter);
  Label11.Visible := true;
  if terminationDownCounter = 59 then
    MessageShowString('»—‰«„Â Å” «“ Ìò œﬁÌﬁÂ »” Â ŒÊ«Âœ ‘œ° ·ÿ›«  €ÌÌ—«  ŒÊœ —« Â—çÂ ”—Ì⁄ — –ŒÌ—Â ò‰Ìœ',False);
end;


function BrowseDialogCallBack (Wnd: HWND; uMsg: UINT; lParam, lpData: LPARAM):integer stdcall;
var
  wa, rect : TRect;
  dialogPT : TPoint;
begin
  //center in work area
  if uMsg = BFFM_INITIALIZED then
  begin
    wa := Screen.WorkAreaRect;
    GetWindowRect(Wnd, Rect);
    dialogPT.X := ((wa.Right-wa.Left) div 2) - ((rect.Right-rect.Left) div 2);
    dialogPT.Y := ((wa.Bottom-wa.Top) div 2) - ((rect.Bottom-rect.Top) div 2);
    MoveWindow(Wnd,dialogPT.X,dialogPT.Y,Rect.Right - Rect.Left,Rect.Bottom - Rect.Top,True);
  end;
  Result := 0;
end;

function BrowseDialog(const Title: string; const Flag: integer): string;
var
  lpItemID : PItemIDList;
  BrowseInfo : TBrowseInfo;
  DisplayName : array[0..MAX_PATH] of char;
  TempPath : array[0..MAX_PATH] of char;
begin
  Result:='';
  FillChar(BrowseInfo, sizeof(TBrowseInfo), #0);
  with BrowseInfo do
  begin
    hwndOwner := Application.Handle;
    pszDisplayName := @DisplayName;
    lpszTitle := PChar(Title);
    ulFlags := Flag;
    lpfn := BrowseDialogCallBack;
  end;
  lpItemID := SHBrowseForFolder(BrowseInfo);
  if lpItemId <> nil then
  begin
    SHGetPathFromIDList(lpItemID, TempPath);
    Result := TempPath;
    GlobalFreePtr(lpItemID);
  end;
end;

procedure TMainForm.ASaveAttachmentsExecute(Sender: TObject);
var
  dir,fName,Path: String;
  LetterID,i,j:integer;
begin
  inherited;
  if lettersDbGrid.SelectedRows.Count<2 then
  begin
    if (dm.Get_All_Letterhas_WordPage.AsBoolean)or(dm.Get_All_Letterhas_file.AsBoolean)or(dm.Get_All_Letterhas_Page.AsBoolean) then
    begin
      dir := BrowseDialog('Select a folder', BIF_RETURNONLYFSDIRS)+'\Letter'+Dm.Get_All_LetterIndicatorID.AsString;
      if CreateDir(dir)then
        with dm.Get_All_LetterData do
        begin
          close;
          Parameters.ParamByName('@LetterID').Value := dm.Get_All_LetterLetterID.AsInteger;
          Open;
          First;
          while not eof do
          begin
            fName := 'Attachment'+IntToStr(recNo)+'.'+dm.Get_All_LetterDataExtention.AsString;
            dm.Get_All_LetterDataImage.SaveToFile(dir+'\'+fName);
            next;
          end;
        end;
    end;
  end
  else
  begin
    LetterID:= Dm.Get_All_LetterLetterID.AsInteger;
    if SelectDirectory(' ⁄ÌÌ‰ „”Ì— ÃÂ  «—”«· ›«Ì· Â«','',Path) then
    begin
      Dm.Get_All_Letter.DisableControls;

      for i := 0 to lettersDbGrid.SelectedRows.Count-1 do
      begin
        j:=1;

        Dm.Get_All_Letter.GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));

        //add sanaye 940916 (ÅÊ‘Â »‰œÌ ›«Ì·Â«Ì ÅÌÊ” Ì òÂ —ÊÌ Â«—œ –ŒÌ—Â „Ì‘Ê‰œ)
        Dir := '';
        Dir := Path + '\Letter' + Dm.Get_All_LetterIndicatorID.AsString;
        if CreateDir(Dir) then
        begin
          with dm.Get_All_LetterData do
          begin
            close;
            Parameters.ParamByName('@LetterID').Value := dm.Get_All_LetterLetterID.AsInteger;
            Open;
            First;
            while not eof do
            begin
               fName := 'Attachment'+IntToStr(Dm.Get_All_LetterIndicatorID.AsInteger)+'_'+Inttostr(j)
                          +'.'+dm.Get_All_LetterDataExtention.AsString;
               dm.Get_All_LetterDataImage.SaveToFile(Dir+'\'+fName);
               next;
               inc(j);
            end;
          end;
        end;
        //end sanaye
      end;
      Dm.Get_All_Letter.EnableControls;

    end;
  end;
end;

procedure TMainForm.ImportExcelExecute(Sender: TObject);
begin
  inherited;
  FmLetterImport := TFmLetterImport.Create(Application);
  FmLetterImport.ShowModal;
end;

procedure TMainForm.ALetterNoSettingForWordExecute(Sender: TObject);
begin
  inherited;
   FrLetterNoSettingForWord := TFrLetterNoSettingForWord.Create(Application);
   FrLetterNoSettingForWord.ShowModal;
end;

procedure TMainForm.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  DisplayMode := Archive;
end;

procedure TMainForm.TimerAlertTimer(Sender: TObject);
begin
  inherited;
  try
    advAlert.Hide;
    while not(dm.Select_FollowUP_By_Date.eof) do
    begin
      advAlert.AlertMessages.Add.Text.Text:=dm.Select_FollowUP_By_DateToDoDate.AsString+'   '+dm.Select_FollowUP_By_DateComment.AsString;
      dm.Select_FollowUP_By_Date.Next;
    end;
    advAlert.Show;
  except on e:exception do
      ShowMessage('YEGANEH ERROR 22: ' + e.Message);
  end;
end;

procedure TMainForm.PrintWordWithParaphExecute(Sender: TObject);
begin
  inherited;
  spSelect_recommites_byLetterID.close;
  spSelect_recommites_byLetterID.Parameters.ParamByName('@letterid').Value := dm.Get_All_LetterLetterID.Value;
  spSelect_recommites_byLetterID.Open;
  spSelect_recommites_byLetterID.First;
  while Not(spSelect_recommites_byLetterID.Eof) do
  begin
    dm.ParaphText := dm.ParaphText+#13#10+spSelect_recommites_byLetterIDDSDesigner.Value;
    spSelect_recommites_byLetterID.Next;
  end;
  spSelect_recommites_byLetterID.Close;
  word2.Execute;
end;

procedure TMainForm.Action1Execute(Sender: TObject);
begin
  VERSION_INFO_FRM := TVERSION_INFO_FRM.Create(SELF);
  VERSION_INFO_FRM.VERSION_LIST.Text := _SoftVersion;
  //VERSION_INFO_FRM.ADOQuery1.Filtered := False;
  //VERSION_INFO_FRM.ADOQuery1.Filter   := 'VERSION_ = ' + _SoftVersion;
  //VERSION_INFO_FRM.ADOQuery1.Filtered := True;
  VERSION_INFO_FRM.refresh;
  VERSION_INFO_FRM.ShowModal;
  VERSION_INFO_FRM.Free;
end;

procedure TMainForm.N78Click(Sender: TObject);
var
  FRM : TSETTING_ATF_PEY_FRM;
begin
  FRM := TSETTING_ATF_PEY_FRM.Create(Self);
  FRM.ShowModal;
  FRM.Free;

  try
    QuickSearchF.Refresh;
  except
  end;
end;

procedure TMainForm.Action2Execute(Sender: TObject);
var
  FRM : TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM;
begin
  FRM := TCONNECT_DABIR_TO_ARCHIVE_SETTING_FRM.Create(Application);
  FRM.ShowModal;
  FRM.Free;
end;

procedure TMainForm.Button4Click(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  lettersDbGrid.SelectedRows.Clear;
  lettersDbGrid.DataSource.DataSet.First;
  for i := 0 to lettersDbGrid.DataSource.DataSet.RecordCount-1 do
  begin
    lettersDbGrid.SelectedRows.CurrentRowSelected := true;
    lettersDbGrid.DataSource.DataSet.Next;
  end;
end;

procedure TMainForm.Action3Execute(Sender: TObject);
begin
  inherited;
  Dm.Get_All_Letter.First;
  repeat
    Application.ProcessMessages;
    lettersDbGrid.SelectedRows.CurrentRowSelected := true;
    Dm.Get_All_Letter.next;
  Until Dm.Get_All_Letter.Eof;
end;

procedure TMainForm.Action4Execute(Sender: TObject);
begin
  inherited;
  //ShowMessage('test');
  Application.CreateForm(TfDbName, fDbName);
  fDbName.ShowModal;
  fDbName.Free;
end;

procedure TMainForm.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
var
  ver : Integer;
  SaveChanges : OleVariant;
begin
  try

    SaveChanges := True;
    if TWordApplication(ASender).ActiveDocument.ReadOnly then
    begin
      ShowMessage('WORD ERROR B: ');

      _Word_Is_Opened := False;
      WordApplication.disconnect;
      { TODO -oparsa : 14030626 }
      MainWordApplicationConnect := False;
      { TODO -oparsa : 14030626 }
      Exit;
    end;

    ver := StrToint(copy(WordApplication.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver < 12 then
    begin
      ShowMessage('WORD ERROR C: ');

      _Word_Is_Opened := False;
      WordApplication.disconnect;
      Exit;
    end;

    if Dm.FullTextSearch then
      Dm.InsertTextIntoLetter(TWordApplication(ASender),dm.Get_All_Letterletterid.AsInteger);
    _Word_Is_Opened := False;
    //WordApplication.disconnect;

    // close one word                   or special one document close
    WordApplication.ActiveDocument.Close(SaveChanges,EmptyParam,EmptyParam);

    // close all word application        or close word
    WordApplication.Quit;

    //_Dont_save_Word := not SaveChanges;
    dm.Timer_SaveWord.Enabled:=True; //–ŒÌ—Â ›«Ì· Ê—œ œ— »«‰ﬂ «ÿ·«⁄« 
    // Timer_SaveWordTimer(self);

  except on e:exception do
      ShowMessage('WORD ERROR A: ' + e.Message);
  end;
end;

procedure TMainForm.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  AQry : TADOQuery;
begin
  inherited;
  if (Key = 85) and (Shift = [ssCtrl]) then
  begin
    try
      AQry := TADOQuery.Create(Nil);
      AQry.Connection := Dm.YeganehConnection;
      AQry.Close;
      AQry.SQL.Text := 'Delete DBUpdate';
      AQry.ExecSQL;
    finally
      FreeAndNil(AQry);
      ShowMessage('ÃÂ  «⁄„«· ‘œ‰  €ÌÌ—«  ° ·ÿ›« ‰—„ «›“«— —« „Ãœœ« «Ã—« ‰„«ÌÌœ');
    end;
  end;
end;

procedure TMainForm.Action12Execute(Sender: TObject);
begin
  inherited;
  lettersDbGrid.SelectedRows.Clear;
  Dm.Get_All_Letter.First;
  repeat
    Application.ProcessMessages;
    lettersDbGrid.SelectedRows.CurrentRowSelected := true;
    Dm.Get_All_Letter.Next;
  until Dm.Get_All_Letter.Eof;
end;

procedure TMainForm.tmrGetEmailTimer(Sender: TObject);
var
  Thread: TGetEmailThread;
begin
  inherited;
  Exit;
  //ATAIE_FAM

  //  ShowMessage('GetActiveWindow:' + GetActiveWindow);
  try
    if GetActiveWindow <> MainForm.Handle then
      Exit;

    if lettersDbGrid.SelectedRows.Count > 1 then
      Exit;

    tmrGetEmail.Enabled := False;
    Thread := TGetEmailThread.Create('Get Email Thread ....');
    Thread.OnTerminate := GetEmailProcessDone;
    Thread.Resume;
  except on e:exception do
    ShowMessage('YEGANEH ERROR 9: ' + e.Message)
  end;
end;

procedure TMainForm.GetEmailProcessDone(Sender: TObject);
begin
  if CBFormat.KeyValue = 2 then
    QuickSearchF.SearchClick(Sender);

  tmrGetEmail.Enabled := True;
end;

{ TDBLookupComboBox }

procedure TMainForm.TimerTimer(Sender: TObject);
begin
  inherited;
  { TODO -oparsa : 1402-12-19 }
  // if FileExists(pchar(_TempPath+_WordFileName)) then
  //   DeleteFile(pchar(_TempPath+_WordFileName));
  { TODO -oparsa : 1402-12-19 }
end;
end.

