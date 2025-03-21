unit UMain;

interface

uses  Shellapi, forms, BaseUnit, ExtCtrls, Menus, ExtActns, BandActn, Classes, StdCtrls, Dialogs,
      ActnList, ActnMan, ToolWin, ActnCtrls, Controls, ComCtrls, ADODB, Grids, Variants, DB, DBGrids,
      QuickRpt, QRCtrls, OleServer, WordXP, OleCtnrs, XPStyleActnCtrls, Types, messages,
      ImgList, DBCtrls, YDbgrid, DBTreeView, Spin, Buttons, ActnMenus, xpWindow, windows,
      SysUtils, graphics, Mask, UemsVCL, Strutils, FileCtrl, IdBaseComponent,
      IdCoder, IdCoder3to4, IdCoderMIME, RichEdit, BusinessSkinForm, MssDBGrid, U_SORT_SETTING_FRM,
      U_COMPANY_NAME_SETTING_FRM, U_VERSION_INFO_FRM, U_SEARCH_SHARHE_PEYVAST_FRM, U_SEARCH_IN_PDF_FRM,
      FnpNumericEdit, BaseUnits, IdComponent, IdTCPConnection, IdTCPClient, IdFTP,
      IdHTTP, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, AdvAlertWindow,
  AdvGlowButton, dxGDIPlusClasses, CurvyControls, xpPanel;

Type
    TMyRichEdit = Class(TRichEdit)
      public
      property OnDblClick;
    end;

    DisplayModes=(Notany,Archive,Search);
    TDblclickAction=(viewLetter,ViewJpg,ViewWord,ViewPdf,ViewAlarm);
  TMainForm = class(TMBaseForm)
    MainActionManager: TActionManager;
    ReceiveInsert: TAction;
    Afix: TAction;
    Aclose: TAction;
    AARCHIVE: TAction;
    AChangeColor: TAction;
    AFromOrganize: TAction;
    ABackup: TAction;
    AShrinck: TAction;
    access: TAction;
    AviewAllletter: TAction;
    AUsers: TAction;
    AUserSetting: TAction;
    ATExactCopy: TAction;
    Apicture: TAction;
    AAbout: TAction;
    pnlTopHeader: TPanel;
    ATemplate: TAction;
    AExpotToWord: TAction;
    AWordMain: TAction;
    ALetterReport: TAction;
    ASentense: TAction;
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
    PtoolBar: TxpPanel;
    GroupingPanel: TPanel;
    List: TPanel;
    PSearch: TPanel;
    Splitter1: TSplitter;
    Pdata: TPanel;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Splitter2: TSplitter;
    alock: TAction;
    Ahome: TAction;
    Asearch: TAction;
    AArchiveFolders: TAction;
    userTimer: TTimer;
    GetList3: TADOStoredProc;
    GetList4: TADOStoredProc;
    DGetList3: TDataSource;
    DgetList4: TDataSource;
    ArchiveFolders: TMemo;
    Action4: TAction;
    AexportData: TAction;
    ArestorLtterData: TAction;
    AActiveUser: TAction;
    adeleteWord: TAction;
    Action3: TAction;
    ATemplateGroup: TAction;
    AAddExtention: TAction;
    AEditUserExtention: TAction;
    AaddLetterData: TAction;
    ImageList: TImageList;
    ActionToolBar1: TActionToolBar;
    ActInputUserTable: TAction;
    ActInputRefferenceTable: TAction;
    ActMakeUserTableRep: TAction;
    ActEditAddDocument: TAction;
    Action2: TAction;
    AloadFile: TAction;
    PopupLetterDBGrid: TPopupMenu;
    ExporttoWord1: TMenuItem;
    ExporttoExcel1: TMenuItem;
    ChooseColumns1: TMenuItem;
    ARent: TAction;
    ALetterRent: TAction;
    ChangeYear: TAction;
    Areport_userLog: TAction;
    N1: TMenuItem;
    NRed: TMenuItem;
    NBlue: TMenuItem;
    NGreen: TMenuItem;
    NGray: TMenuItem;
    N2: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    QrSrchArchiveFolder: TADOQuery;
    QrSrchArchiveFolderFolderID: TAutoIncField;
    QrSrchArchiveFolderTitle: TWideStringField;
    PageControl1: TPageControl;
    TShAHome: TTabSheet;
    TShArchive: TTabSheet;
    ActionList1: TActionList;
    ANewSearch: TAction;
    Label6: TLabel;
    Label7: TLabel;
    SenderTitle: TLabel;
    Label8: TLabel;
    LUserMemo1: TLabel;
    Image1: TImage;
    TitleLabel: TLabel;
    LUserMemo2: TLabel;
    LUserMemo3: TLabel;
    Label9: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdtIncommingNO: TCurvyEdit;
    SearchBB: TAdvGlowButton;
    Indicator: TCurvyEdit;
    Memo: TEdit;
    BitBtn3: TAdvGlowButton;
    ToStaffer: TCurvyEdit;
    UserMemo1: TCurvyEdit;
    UserMemo2: TCurvyEdit;
    UserMemo3: TCurvyEdit;
    RentStatus: TComboBox;
    Indicator2: TCurvyEdit;
    Panel8: TxpPanel;
    SpeedButton4: TAdvGlowButton;
    SpeedButton3: TAdvGlowButton;
    ArchiveTree: TDBTreeView;
    ASearchBitbtn: TAction;
    Label11: TLabel;
    Label12: TLabel;
    MeSDate: TMaskEdit;
    MeEDate: TMaskEdit;
    Panel3: TPanel;
    SpeedButton9: TAdvGlowButton;
    SpeedButton11: TAdvGlowButton;
    SpeedButton16: TAdvGlowButton;
    Label3: TLabel;
    Label10: TLabel;
    CBReceive: TDBLookupComboBox;
    CBFormat: TDBLookupComboBox;
    Only_Current: TCheckBox;
    Label2: TLabel;
    RBRegistrationDate: TRadioButton;
    RBIncommingdate: TRadioButton;
    SBArchiveFolder: TAdvGlowButton;
    ActLetterData: TAction;
    Action11: TAction;
    searchAll: TCheckBox;
    N3: TMenuItem;
    N8: TMenuItem;
    DataSetDelete: TAction;
    Label5: TLabel;
    EdtAtachTitle: TCurvyEdit;
    GetArchiveFolder: TADOStoredProc;
    AcAlarm: TAction;
    N9: TMenuItem;
    NAlarm: TMenuItem;
    ActFolderToLetter: TAction;
    Action5: TAction;
    ChBoIncommingNO: TCheckBox;
    SBFarsi: TAdvGlowButton;
    SBEnglish: TAdvGlowButton;
    Label4: TLabel;
    SBExpand: TAdvGlowButton;
    SBCollapse: TAdvGlowButton;
    QTemp: TADOQuery;
    N10: TMenuItem;
    acSendAllPayvast: TAction;
    lettersDbGrid: TYDBGrid;
    acDefineColor: TAction;
    acFillUserMemo: TAction;
    QAllPayvast: TADOQuery;
    QAllPayvastletterid: TIntegerField;
    QAllPayvastLetterDataID: TAutoIncField;
    QAllPayvastExtention: TWordField;
    QAllPayvastdescription: TWideStringField;
    QAllPayvastExtentionName: TStringField;
    QAllPayvastImage: TBlobField;
    Action6: TAction;
    ALetterDataTextSearch: TAction;
    MainMenu1: TMainMenu;
    N12: TMenuItem;
    Word1: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N30: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    N33: TMenuItem;
    N34: TMenuItem;
    N35: TMenuItem;
    N36: TMenuItem;
    N37: TMenuItem;
    Label13: TLabel;
    edtWord: TCurvyEdit;
    Label16: TLabel;
    edtAttach: TCurvyEdit;
    REdt: TRichEdit;
    RichEdit1: TRichEdit;
    qryKeyWords: TADOQuery;
    bsSkinMainMenu1: TbsSkinMainMenu;
    N38: TMenuItem;
    N39: TMenuItem;
    N40: TMenuItem;
    N41: TMenuItem;
    N42: TMenuItem;
    N11: TMenuItem;
    N43: TMenuItem;
    N44: TMenuItem;
    N45: TMenuItem;
    N46: TMenuItem;
    N47: TMenuItem;
    N48: TMenuItem;
    N49: TMenuItem;
    N50: TMenuItem;
    N51: TMenuItem;
    N52: TMenuItem;
    Word2: TMenuItem;
    word3: TMenuItem;
    word4: TMenuItem;
    N53: TMenuItem;
    N54: TMenuItem;
    N55: TMenuItem;
    N56: TMenuItem;
    N57: TMenuItem;
    N58: TMenuItem;
    N59: TMenuItem;
    N60: TMenuItem;
    N61: TMenuItem;
    N62: TMenuItem;
    N63: TMenuItem;
    N64: TMenuItem;
    N65: TMenuItem;
    N66: TMenuItem;
    N67: TMenuItem;
    N68: TMenuItem;
    N69: TMenuItem;
    N70: TMenuItem;
    N71: TMenuItem;
    N72: TMenuItem;
    N73: TMenuItem;
    N74: TMenuItem;
    N75: TMenuItem;
    word5: TMenuItem;
    N76: TMenuItem;
    N77: TMenuItem;
    N78: TMenuItem;
    N79: TMenuItem;
    N80: TMenuItem;
    N81: TMenuItem;
    N82: TMenuItem;
    N83: TMenuItem;
    N84: TMenuItem;
    N85: TMenuItem;
    N86: TMenuItem;
    N87: TMenuItem;
    N88: TMenuItem;
    N89: TMenuItem;
    N90: TMenuItem;
    status6: TxpPanel;
    MssDBGrid1: TMssDBGrid;
    AImportDocument: TAction;
    N91: TMenuItem;
    N92: TMenuItem;
    QRY_: TADOQuery;
    Label17: TLabel;
    Action1: TAction;
    Action7: TAction;
    Action8: TAction;
    SHOW_SHORT_CUTS_FRM: TAction;
    TAIL: TAdvGlowButton;
    HEAD: TAdvGlowButton;
    Action9: TAction;
    DBEdit1: TDBEdit;
    SpeedButton1: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpinEdit: TCurvyEdit;
    N93: TMenuItem;
    QAllPayvastpath: TStringField;
    AUpdateSoftware: TAction;
    IdFTP1: TIdFTP;
    advAlert: TAdvAlertWindow;
    GetArchiveFolderFolderId: TIntegerField;
    GetArchiveFolderParentFolderId: TIntegerField;
    GetArchiveFolderTitle: TStringField;
    GetArchiveFolderUserId: TIntegerField;
    GetArchiveFolderNotes: TStringField;
    GetArchiveFolderPlace: TStringField;
    GetArchiveFolderArchiveCenterId: TIntegerField;
    ImageList1: TImageList;
    ImageList_New: TImageList;
    pnlInformation: TPanel;
    LblAttach: TLabel;
    ImageAttach: TImage;
    LblPic: TLabel;
    ImagePic: TImage;
    Image2: TImage;
    Label19: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    UpAndDownBtn2: TAdvGlowButton;
    Image3: TImage;
    Label20: TLabel;
    Label24: TLabel;
    Bevel4: TBevel;
    Image4: TImage;
    Label25: TLabel;
    ImageList_old: TImageList;
    k1: TMenuItem;
    pnlMain: TPanel;
    pnlBeforeMain: TPanel;
    Panel2: TPanel;
    status0: TPanel;
    status1: TPanel;
    status2: TPanel;
    status3: TPanel;
    YEGANEH: TPanel;
    status4: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnlArchive: TxpPanel;
    pnlSearch: TxpPanel;
    pnlTop: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure ReceiveInsertExecute(Sender: TObject);
    procedure AcloseExecute(Sender: TObject);
    procedure RefreshQuery;
    procedure ShowFixTables;
    procedure AChangeColorExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AFromOrganizeExecute(Sender: TObject);
    procedure AfixExecute(Sender: TObject);
    procedure MainActionManagerExecute(Action: TBasicAction;var Handled: Boolean);
    procedure ABackupExecute(Sender: TObject);
    procedure AShrinckExecute(Sender: TObject);
    procedure accessExecute(Sender: TObject);
    procedure AUsersExecute(Sender: TObject);
    procedure AUserSettingExecute(Sender: TObject);
    procedure AARCHIVEExecute(Sender: TObject);
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
    procedure ATemplateExecute(Sender: TObject);
    procedure AExpotToWordExecute(Sender: TObject);
    procedure AWordMainExecute(Sender: TObject);
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
    procedure AshortCutExecute(Sender: TObject);
    procedure Adeleted_toLetterExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AchangePasswordExecute(Sender: TObject);
    procedure CBFormatChange(Sender: TObject);
    procedure ViewDocumnet(LetterID:integer;EditMode: boolean);
    procedure SpeedButton9Click(Sender: TObject);
    procedure lettersDbGridNeedColorCondition(Column: TColumn;State: TGridDrawState; var Color: TColor);
    procedure alockExecute(Sender: TObject);
    procedure SetColors;
    procedure AarchivecExecute(Sender: TObject);
    procedure SetDisplayMode(value:DisplayModes);
    procedure ANotAnyExecute(Sender: TObject);
    procedure AHomeExecute(Sender: TObject);
    procedure ASearchExecute(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure AArchiveFoldersExecute(Sender: TObject);
    procedure ArchiveTreeChange(Sender: TObject; Node: TTreeNode);
    procedure userTimerTimer(Sender: TObject);
    procedure CBReceiveClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure AexportDataExecute(Sender: TObject);
    procedure FromOrgOrganize;
    procedure ArchiveTreeClick(Sender: TObject);
    procedure ArestorLtterDataExecute(Sender: TObject);
    procedure lettersDbGridNeedFontCondition(Column: TColumn; State: TGridDrawState; var F: TFont);
    procedure Get_All_LetterAfterScroll(DataSet: TDataSet);
    procedure AActiveUserExecute(Sender: TObject);
    procedure Only_CurrentClick(Sender: TObject);
    procedure adeleteWordExecute(Sender: TObject);
    Procedure MakeSelectedRecommites ;
    procedure Action1Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure AAboutExecute(Sender: TObject);
    procedure ATemplateGroupExecute(Sender: TObject);
    procedure AAddExtentionExecute(Sender: TObject);
    procedure AEditUserExtentionExecute(Sender: TObject);
    procedure AaddLetterDataExecute(Sender: TObject);
    procedure lettersDbGridDrawColumnCell(Sender: TObject; Const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
    procedure lettersDbGridNeedImageIndex(Column: TColumn;var ImageIndex: Integer);
    procedure ActImportExecute(Sender: TObject);
    procedure ActMonitorTablesExecute(Sender: TObject);
    procedure ActInputUserTableExecute(Sender: TObject);
    procedure ActInputRefferenceTableExecute(Sender: TObject);
    procedure ActMakeUserTableRepExecute(Sender: TObject);
    procedure ActEditAddDocumentExecute(Sender: TObject);
    procedure AloadFileExecute(Sender: TObject);
    procedure lettersDbGridMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure ExporttoWord1Click(Sender: TObject);
    procedure ExporttoExcel1Click(Sender: TObject);
    procedure ChooseColumns1Click(Sender: TObject);
    procedure ARentExecute(Sender: TObject);
    procedure ALetterRentExecute(Sender: TObject);
    procedure ChangeYearExecute(Sender: TObject);
    procedure Areport_userLogExecute(Sender: TObject);
    procedure NRedClick(Sender: TObject);
    procedure NBlueClick(Sender: TObject);
    procedure NGreenClick(Sender: TObject);
    procedure NGrayClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure IndicatorExit(Sender: TObject);
    procedure ANewSearchExecute(Sender: TObject);
    procedure ASearchBitbtnExecute(Sender: TObject);
    procedure MeSDateExit(Sender: TObject);
    procedure MeSDateKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MeSDateEnter(Sender: TObject);
    procedure SBArchiveFolderClick(Sender: TObject);
    procedure ActLetterDataExecute(Sender: TObject);
    procedure Action11Execute(Sender: TObject);
    procedure searchAllClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure DataSetDeleteExecute(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure AcAlarmExecute(Sender: TObject);
    procedure ActFolderToLetterExecute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure EdtIncommingNOKeyPress(Sender: TObject; var Key: Char);
    procedure SBFarsiClick(Sender: TObject);
    procedure SBEnglishClick(Sender: TObject);
    procedure SBExpandClick(Sender: TObject);
    procedure SBCollapseClick(Sender: TObject);
    procedure acSendAllPayvastExecute(Sender: TObject);
    procedure acDefineColorExecute(Sender: TObject);
    procedure acFillUserMemoExecute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure ALetterDataTextSearchExecute(Sender: TObject);
    procedure ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
    procedure Button1Click(Sender: TObject);
    procedure SetTextColor(oRichEdit : TRichEdit; sText : String; rAttributes : TTextAttributes);
    function  CheckKeyWords(line: string): boolean;
    function  CheckStrInLine(str: string; line : string) : boolean;
    procedure RichEdtClick(Sender: TObject);
    Function  NearestIndex(Text: string; Word: string): integer;
    procedure REdtMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure REdtSelectionChange(Sender: TObject);
    procedure MssDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure AImportDocumentExecute(Sender: TObject);
    procedure N92Click(Sender: TObject);
    procedure SHOW_SHORT_CUTS_FRMExecute(Sender: TObject);
    procedure HEADClick(Sender: TObject);
    procedure Action9Execute(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpinEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N93Click(Sender: TObject);
    procedure lettersDbGridCellClick(Column: TColumn);
    procedure AUpdateSoftwareExecute(Sender: TObject);
    procedure UpAndDownBtn2Click(Sender: TObject);
    procedure k1Click(Sender: TObject);
    procedure pnlSearchAfterClose(Sender: TObject);
    procedure pnlArchiveAfterClose(Sender: TObject);
  private
    DateF:string;
    FDisplayMode  : DisplayModes;
    FWhere: String;
    FLetter_Type  :byte;
    FLetterFormat:byte;
    FarchiveFolderID : integer;
    RichEdtLine, RichEditCol, RicheditSelIndex : integer;
    FStatisticMode: boolean;
    procedure ChangeLetterColor(aColor : TColor);
    procedure ItializeDownloadSetting;
    Function DownloadFiles(_URL,_NewFile:String):String;

    {Ranjbar}
    Procedure Refresh;
    procedure Initialize;
    function NoCondition:String;
    function RentCondition:String;
    function IndicatorCondition:String;
    function DateCondition:String;
    function SenderCondition:String;
    {Ranjbar 89.05.31 ID=43}
    function AttachTitleCondition:String;
    function GetUserMemoCaption:String;
    function GetUserMemo1Caption:String;
    function GetUserMemo2Caption:String;
    procedure SetUserMemoCaptions;
    //---

    FUNCTION GET_BTN_VALUE(BTN1,BTN2 : TAdvGlowButton):String;
    procedure SetStatisticMode(const Value: boolean);
  public
      _BaseSQLConnection:TBaseSQLConnection;
          _DownloadSetting:TDownloadSetting;
     //Ranjbar
     Condition :String;
     ValueSecid : Integer;
     //---
     DoRefresh:boolean;
     DelDBGridSettings : Boolean;//�� ���� ��� ������� ������ MainForm_DBGrid.Cfg ��� ��� �������
     blnChangeDbgrid : Boolean;
//     is_zonkan_is_active : Boolean;
     Property DisplayMode  : DisplayModes read FDisplayMode write SetDisplayMode;
     Property Letter_Type  : byte read FLetter_Type write SetLetter_Type;
     Property LetterFormat : byte read FLetterFormat write SetLetterFormat;
     Property Where : string read Fwhere write SetWhere;
     Property archiveFolderID : integer read FarchiveFolderID write SetarchiveFolderID;
     Property StatisticMode : boolean read FStatisticMode write SetStatisticMode;
     procedure check();
  end;
Var
   MainForm: TMainForm;

implementation

uses  Dmu {, QuickSearch} , yShamsiDate , FixedTableF, UAddDocument,
      FromOrgU, backupF,
      AccessInput, userDefine, Settingsu,  ExactCopy,
      LogOn, UInputTemplate, ExportToWord,
      LetterReportU, CreateTextU, EditSentense, FullTextSearch,
      Fsecretariats, USecChange, addUserSecs, ErrorMsg, SystemSetting,ustatistic,
      Udailyrep, UFillLetterData, HelpU,
      FUserShortCut,
      UchangePassword, businessLayer, ArchiveOrganize, LetterArchive,
      UImportFax, UserLoginLogoutReportU, YArchiveLetterData, RestorLetterData,
      FActiveUsers, UchangeCricitalFields,
      about, UTemplateGroup, uAddExtention, UEditUserExtention, UaddLetterData,
      UTotalExactCopy, Import, UTableMonitoring, UInputUserTable,
      UinputRefferenceTable, UMakeUserTableRep, RentU, LetterRentU,
      Report_userLog, SearchFM, ScanImageFm, RepLetterDataFm,
      UArchiveCenter, AlarmFm, FolderToLetterFm, UDefineColor,
      FFillUserMemoUnit, untRecommites, HelpViewerU, TextSearch, ADOInt,
      UDocumentImport, U_SHORT_CUTS_LIST_FRM;

{$R *.DFM}

var
   DblclickAction:TDblclickAction;
   LowOrange,LowTurquoise,Lowpink:integer;

Function TMainForm.GET_BTN_VALUE(BTN1,BTN2 : TAdvGlowButton):String;
begin
  if BTN1.Down then
    Result := 'DATE-AVAL'
  else
    Result := 'DATE-AKHAR';
end;

Procedure TMainForm.SetWhere(Value:String);
begin
  FWhere:=Value;
  RefreshQuery;
end;

Procedure TMainForm.SetarchiveFolderID(value:integer);
begin
  FarchiveFolderID := value;
  RefreshQuery;
end;

Procedure TMainForm.SetLetterFormat(value:byte);
begin
  FLetterFormat:=value;
  RefreshQuery;
end;

Procedure TMainForm.SetLetter_Type(value:byte);
begin
  FLetter_Type:=value;
  RefreshQuery;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  inherited;
  TMyRichEdit(REdt).OnDblClick := RichEdtClick;
  List.Align:=alClient;
  Panel4.Caption := '���� ' + _SoftVersion;
  Panel5.Caption := '����� ���� '  +_SoftLastUpdate;
   //���� : �� ������ �� ��� "����� �� ���" ��� ������� ��� ���
  LowOrange := RGB(255,95,0) ;
  LowTurquoise := RGB(0,175,240) ; //������ ��
  Lowpink := RGB(240,90,160) ; //�����
  //Caption := '��� ����� ������ '+_yeganeh;
  //Caption := '��� ����� ������ '+_yeganeh + ' : ���� ' + _SoftVersion;
  Caption := '��� ����� ������ �ј� ������ ������� ����' + ' : ���� ' + _SoftVersion;

  Status0.Caption:='��� �����: '+_userName;
  //Status1.Caption:=_Today;
  Status1.Caption := Time_GetTime(Dm.YeganehConnection,False) + '  ' + _Today;
  Status6.Caption:= dm.Orgname;
  Status6.Title := dm.Orgname;  
  dm.Secretariats.Locate('secid',_DefaultSec,[]);
  status4.Caption := dm.SecretariatsSecTitle.AsString;
  GetList3.Open;
  GetList4.Open;
  ActionMainMenuBar1.Font.Charset:=178;
  QueryRefresher.Interval:=dm.Refresh_PriodTime*1000;
  dm.Get_All_Letter.AfterScroll:=Get_All_LetterAfterScroll;
  _SelectedRecommitesID := TStringList.Create;


   {Ranjbar Ver5}
  PageControl1.TabHeight := 1;
  PageControl1.TabWidth := 1;
  PageControl1.ActivePage := TShAHome ;
  BidiModeToRight(ArchiveTree);
  DelDBGridSettings := False;
  blnChangeDbgrid := False;
   //---
  SetUserMemoCaptions;


   {$IFDEF GOLD}
      ActionMainMenuBar1.Align := alNone;
      ActionMainMenuBar1.Top := -200;
      MainForm.Menu := MainMenu1;
      MssDBGrid1.Align := alClient;
      lettersDbGrid.Visible := False;
   {$ELSE}
      lettersDbGrid.Align := alClient;
      MssDBGrid1.Visible := False;
   {$ENDIF}
end;

procedure TMainForm.ReceiveInsertExecute(Sender: TObject);
begin
  inherited;
   Dm.EditMode := False;
   with FrAddDocument do
   begin
     FrAddDocument := TFrAddDocument.Create(Application);
     GetLetter(0);
     DataSetInsert.Execute;
     ShowModal;
   end;
   if Letter_Type in [1,0] then
     RefreshQuery;
end;

procedure TMainForm.AcloseExecute(Sender: TObject);
begin
   inherited;
   Close;
end;

Procedure TMainForm.RefreshQuery;
Var
  ReceivedNum , SentNum , RecommitesNum : Integer;
  Current_Index : Integer;
  w, srt : String;
begin
  inherited;
  if not DoRefresh then
    Exit;

  current_index:=0;

  try
    current_index := Dm.Get_All_LetterLetterID.AsInteger;
  except
  end;

  if DisplayMode<>archive then //�ѐ� �����
    if Only_Current.Checked then //��� ������ ������ ����
      FarchiveFolderID := 0
    else
      FarchiveFolderID := -1;  //���� ���

  w := FWhere;
  if not _AccessToClassifieldLetter then
    if w <> '' then
      w := w +' And  (letter.ClassificationID = 1)'
    else
      w := ' (letter.ClassificationID = 1) ' ;

  srt := dm.Get_All_Letter.Sort;
  if searchAll.Checked then
  begin
    if w <> '' then
      w := w +' and  letter.SecretariatID in (select distinct Cast(SecId as varchar(5)) from dbo.UserSecretariats where UserId ='+IntToStr(_UserId)+') '
    else
      w := ' letter.SecretariatID in (select distinct Cast(SecId as varchar(5)) from dbo.UserSecretariats where UserId ='+IntToStr(_UserId)+') ' ;
  end;

//     if is_zonkan_is_active then
//        archiveFolderID := strToInt(DBEdit1.Text);

//     if archiveFolderID < 0 then
//        archiveFolderID := 0;

  if searchAll.Checked then
  begin
        {ShowMessage(IntToStr(archiveFolderID)+ chr(13) +
                    IntToStr(Letter_Type)    + chr(13) +
                    IntToStr(LetterFormat)   + chr(13) +
                    IntToStr(0)              + chr(13) +
                    IntToStr(0)              + chr(13) +
                    IntToStr(SpinEdit.Value) + chr(13) +
                    w                        + chr(13) +
                    trim(edtWord.Text)       + chr(13) +
                    trim(edtAttach.Text)     + chr(13) +
                    GET_BTN_VALUE(HEAD,TAIL) + chr(13) +
                    IntToStr(SpinEdit.Value));   }
    dm.ExecGet_All_Letter(archiveFolderID,Letter_Type,LetterFormat,0,0,STRTOINT(SpinEdit.Text),w,trim(edtWord.Text),trim(edtAttach.Text),GET_BTN_VALUE(HEAD,TAIL),STRTOINT(SpinEdit.Text));
  end
  else
    dm.ExecGet_All_Letter(archiveFolderID,Letter_Type,LetterFormat,dm.CurrentMYear,dm.SecID,STRTOINT(SpinEdit.Text),w,trim(edtWord.Text),trim(edtAttach.Text),GET_BTN_VALUE(HEAD,TAIL),STRTOINT(SpinEdit.Text));

  dm.Get_All_Letter.Sort:=srt;
  dm.Get_All_Letter.Locate('LetterID',current_index,[]);

     //dm.SHOW_ALL_LETTER.Sort:=srt;
     //dm.SHOW_ALL_LETTER.Locate('LetterID',current_index,[]);

  status3.Caption := '����� ����� :'+IntToStr(dm.Get_All_Letter.RecordCount);
  //status3.Caption := '���� ����� :'+IntToStr(dm.SHOW_ALL_LETTER.RecordCount);

  //ATAIE 1400
  //Label2.Caption := ' ��� : '+IntToStr(1300+dm.CurrentMYear);
  Label2.Caption := ' ��� : '+IntToStr(dm.CurrentMYear);

  DoRefresh:=false;
  CBReceive.KeyValue := Letter_Type;
  CBFormat.KeyValue := LetterFormat;

  dm.Secretariats.Locate('secid',dm.SecID,[]);
  status4.Caption := dm.SecretariatsSecTitle.AsString;

  DoRefresh:=true;

  Exec_sp_Letter_Numbers(_Today,_Today,dm.secid,receivedNum,SentNum,recommitesNum);
  //  Status2.Caption := '����� ����� ���� :'+IntToStr(_MyDocs div 3);//IntToStr(receivedNum);
  Status2.Caption := '����� ����� ����� ���� :'+IntToStr(receivedNum);

  Case LetterFormat of
    1:begin
         Adeleted_toLetter.Visible:=False;
         Adeleted_toLetter.Enabled:=False;
      end;
    2:begin
         Adeleted_toLetter.Visible:=False;
         Adeleted_toLetter.Enabled:=False;
      end;
    3:begin
         Adeleted_toLetter.Visible:=true;
         Adeleted_toLetter.Enabled:=true;
      end;
  end;

  try
    //statisticForm.RefreshQuery;
  except
  end;

  ActionMainMenuBar1.Font.Charset := 178;
  check;
end;

procedure TMainForm.ShowFixTables;
begin
  inherited;
  FixedForm:=TFixedForm.Create(Application);
  FixedForm.ShowModal;
end;

procedure TMainForm.ViewDocumnet(LetterID:integer;EditMode: boolean);
begin
   inherited;
   with FrAddDocument do
   begin
      FrAddDocument:=TFrAddDocument.Create(Application);
      GetLetter(LetterID);
      if EditMode then
         DataSetEdit.Execute;
      ShowModal;
   end;
end;

procedure TMainForm.AChangeColorExecute(Sender: TObject);
begin
   inherited;
   //Ranjbar Ver5
   {ColorSettingF:=TColorSettingF.Create(Application);
   ColorSettingF.ShowModal;
   SetColors;}
   Settings := TSettings.Create(nil);
   PageControl_SetTabSheet(Settings.PageControl1,'TShGraphic');
   Settings.ShowModal;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  if not messageShow(25, True) then
    abort
  else
    With dm.Users do
    begin
      DBGrid_SaveColumns(Self.Name, lettersDbGrid);

      if DelDBGridSettings then  //�� ���� ��� ������� ������ MainForm_DBGrid.Cfg ��� ��� �������
      begin
        DeleteFile(ExtractFilePath(Application.ExeName) + 'UserFolder\MainForm_DBGrid.Cfg');
        DeleteFile(ExtractFilePath(Application.ExeName) + 'UserFolder\LetterReport_DBGrid.Cfg');
      end;
      //---
      if dm.DayInWeek = dm.DayInWeekForBackup then
        if not dm.GetSystemValue(13) then
          if messageShowString(Get_sysAppMessage(31) + ' ' + farsiDay[dm.DayInWeekForBackup] + ' ' + Get_sysAppMessage(32), True) then
            ABackup.Execute;

      Exec_update_UserLoginLogout(_UserLoginLogoutID,true);
  end;
end;

procedure TMainForm.AFromOrganizeExecute(Sender: TObject);
begin
   inherited;
   FromOrgOrganize;
end;

procedure TMainForm.AfixExecute(Sender: TObject);
begin
  inherited;
  ShowFixTables;
end;


procedure TMainForm.MainActionManagerExecute(Action: TBasicAction;
var Handled: Boolean);
begin
   inherited;

   if Not Dm.GetActionAccess(Action.Name,Tag) then
      Abort;

   Try
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(1000+Action.Tag,dm.Get_All_LetterLetterID.AsInteger);
      Exec_insert_UserLog(Action.Name,Dm.Get_All_LetterLetterID.AsInteger);
      //---
   Except
   End;
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
end;

procedure TMainForm.AUserSettingExecute(Sender: TObject);
begin
   inherited;
   Settings := TSettings.Create(Application);
   Settings.ShowModal;
end;

procedure TMainForm.AARCHIVEExecute(Sender: TObject);
begin
   inherited;
   with dm.Get_All_Letter do
   begin
      if Not DataSetPost then
         Exit;
      MakeSelectedRecommites;
      LetterArchiveform:=TLetterArchiveform.Create(application);
      LetterArchiveform.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
      LetterArchiveform.ShowModal;
   end;
   RefreshQuery;
end;

procedure TMainForm.AviewAllletterExecute(Sender: TObject);
Var
 LetterDataCount : integer;
begin
   inherited;
   Dm.SelectLetter := Dm.Get_All_LetterLetterID.AsString;
   Dm.EditMode := True;
   if (DblclickAction = ViewJpg ) And  dm.Get_All_Letterhas_Page.AsBoolean then
      Apicture.Execute
   else
      if (DblclickAction = ViewWord) And  dm.Get_All_Letterhas_WordPage.AsBoolean then
         AExpotToWord.Execute
      else
         if (DblclickAction = viewPdf ) And  dm.Get_All_Letterhas_file.AsBoolean then
         {Ranjbar 89.05.20 ID=0}
         //AloadFile.Execute
         begin
            //����� ��� ������
            if Not Dm.GetActionAccess(AaddLetterData.Name,Tag) then
            begin
               ShowMyMessage('�����','����� ����� ��� �� ��� ���� ������ ������',[mbOK],mtInformation);
               Abort;
            end;

            //���� ����� ����� ������� ����� ��� �� ��� ����
            LetterDataCount := Dm.YeganehConnection.execute('Select Count(LetterDataID) From LetterData , Extention ' +
                   ' Where(LetterId = ' + Dm.Get_All_LetterLetterID.AsString +
                   ' ) And(LetterData.extention = Extention.ExtentionID) And(Extention.IsSystem = 0) ').Fields[0].Value;
            if LetterDataCount = 1 then
               AloadFile.Execute
            else
               begin
                  //ǐ� ����� ������� ����� ��� �� ��� ��� ��� ������� ��� ���
                  FraddLetterData := TFraddLetterData.Create(Application);
                  FraddLetterData.LetterID := Dm.Get_All_LetterLetterID.AsInteger;
                  FraddLetterData.ShowModal;
               end;
         end
            else
               //---
               //����� ��� �����
               //0:No Alarm , 1: Have Alarm With No delay , 2:Have Alarm With Delay
               if (DblclickAction = ViewAlarm) And (Dm.Get_All_LetterHasLetterAlerm.AsInteger in [1,2]) then
                  AcAlarmExecute(Sender)
               else
               //---
                  if dm.Get_All_LetterLetter_Type.AsInteger=1 then
                     ViewDocumnet(dm.Get_All_LetterLetterID.AsInteger,False);

   RefreshQuery;

   Try
      {Ranjbar 89.06.06 ID=3}
      //Exec_insert_UserLog(1016,dm.Get_All_LetterLetterID.AsInteger);
      Exec_insert_UserLog(AviewAllletter.Name,dm.Get_All_LetterLetterID.AsInteger);
      //---
   Except
   End;
end;


procedure TMainForm.GetExactCopy(id:byte);
begin
   inherited;
   if Not DataSetPost then
      exit;
   ExactCopyF:=TExactCopyF.Create(Application);
   with ExactCopyF do
   begin
      ExactCopyF.LetterID := dm.Get_All_LetterLetterID.AsInteger;
      ExactCopyF.TypeId := id;
      ShowModal;
   end;                                                           
end;

procedure TMainForm.ApictureExecute(Sender: TObject);
begin
  inherited;
   Dm.SelectLetter := Dm.Get_All_LetterLetterID.AsString;
  {Ranjbar Ver5
  if Not DataSetPost then
     Exit;
   if dm.HasJpg then
   begin
       ScanImageF:=TScanImageF.Create(Application);
       with ScanImageF do
       begin
          LetterID:=dm.Get_All_LetterLetterID.AsInteger;
          ShowModal;
       end;
   end
      else
      begin
          TifImageF:=TTifImageF.Create(Application);
          with TifImageF do
          begin
             LetterID:=dm.Get_All_LetterLetterID.AsInteger;
             ShowModal;
          end;
      end;}

//   Try

      Dm.OpenqSelectedColor(dm.Get_All_LetterLetterID.AsInteger);
      FmScanImage := TFmScanImage.Create(Application);
      FmScanImage._SaveFileType:=_BaseSQLConnection.GetKeyvalue('SaveFileType');
      FmScanImage._IMGDPI:=_BaseSQLConnection.GetKeyvalue('IMGDPI');
      if FmScanImage._SaveFileType='1' then
        try
        FmScanImage.ItializeDownloadSetting;
        FmScanImage.IdFTP1.Host := FmScanImage._DownloadSetting._FtpIP;
        FmScanImage.IdFTP1.Username := FmScanImage._DownloadSetting._FtpUserName;//'turaj'  ;
        FmScanImage.IdFTP1.Password := FmScanImage._DownloadSetting._FtpPassword;//'yeganeh_987' ;
        FmScanImage.IdFTP1.Connect();
        if not FmScanImage.IdFTP1.Connected then
         begin
          ShowMsgString('������ �� ���� �� �� �� ������ ���');
          if Assigned(FmScanImage) then
           FmScanImage.Free;
          Exit;
         end;
        except
          ShowMsgString('������ �� ���� �� �� �� ������ ���');
          if Assigned(FmScanImage) then
           FmScanImage.Free;
          Exit;
        end;

      FmScanImage.LetterID := dm.Get_All_LetterLetterID.AsInteger;
      FmScanImage.letterformat := dm.Get_All_Letterletterformat.AsInteger;
      FmScanImage.ReceiveTypeID := dm.Get_All_LetterReceiveTypeID.AsInteger;
     if Dm.GetValue(2104) = 0 then
       FmScanImage.FitToPageClick(Self);
     if Dm.GetValue(2104) = 1 then
       FmScanImage.btnWidthSizeClick(Self);
     if Dm.GetValue(2104) = 2 then
       FmScanImage.btnActualSizeClick(Self);
       FmScanImage._MyLetterID:=dm.Get_All_LetterLetterID.AsString;
       if FmScanImage._MyLetterID='' then
       begin

//       ShowMessage('����� ��� ���� ���');
       end
       else
        begin
          FmScanImage.ShowModal;
          FmScanImage.Free;
        end;

//   except

//   End;

   RefreshQuery;

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
     if not Active then exit
     else if RecordCount=0 then exit;
     if State in [dsEdit,dsInsert] then
     begin
    if messageShow(26,true) then
        try Post;
        Result:=true;
        except exit end
      else
        exit;
     end else Result:=True ;
   end;
end;

procedure TMainForm.ArecommiteStatisticsExecute(Sender: TObject);
begin
   inherited;
   ShowMsg(47);
end;


procedure TMainForm.ATemplateExecute(Sender: TObject);
begin
   inherited;
   EditTemplates := TEditTemplates.Create(Application);
   EditTemplates.ShowModal;
end;

procedure TMainForm.AExpotToWordExecute(Sender: TObject);
var
  otherUserID : Integer;
begin
   inherited;

   if Not DataSetPost then
      Exit;

  { TODO -oparsa : 14030524-bug340 }
  //if _Word_Is_Opened then
  if _Word_Is_Opened and Application_Is_Run('winword.exe') then
  { TODO -oparsa : 14030524-bug340 }
   begin
      MessageShow(86,False);
      Exit;
   end;

    { TODO -oparsa : 14030524-bug340 }
    (*
    _AllowToEditWordFiles := True;
    Dm.qtemp.Close;
    Dm.qtemp.SQL.Clear;
    Dm.qtemp.SQL.Add('SELECT IsCopy FROM ReCommites WHERE LetterID='+IntToStr(dm.Get_All_LetterLetterID.AsInteger));
    Dm.qtemp.Open;
    if Dm.qtemp.FieldByName('IsCopy').AsString <> '' then
      _AllowToEditWordFiles:= not Dm.qtemp.FieldByName('IsCopy').AsBoolean;
               *)
    { TODO -oparsa : 14030524-bug340 }

   with Dm.Get_All_Letter do
   begin
      { TODO -oparsa : 14030524-bug340 }
      (*
      otherUserID := dm.OpendByAnotherUser(FieldByName('Letterid').AsInteger);
      if otherUserID > 0 then
      begin
        MessageShowString('��� ���� ���� '+''''+ get_UserName(otherUserID) +''''+' �� ��� ������ ��ʡ ������� ��� ����� ������ ��.',False);
        _Dont_save_Word := True;
      end
      else
        _Dont_save_Word := False;

      if not _AllowToEditWordFiles then
      begin
        MessageShowString('��� ���� ��� ������� ��� � ������� �� �� ����� ������ ��',False);
        _Dont_save_Word := True;
      end
      else
        _Dont_save_Word := False;  *)
      { TODO -oparsa : 14030524-bug340 }

      if not Dm.ExecGet_LetterWordFile(FieldByName('Letterid').AsInteger,false) then
      begin
         FExportToWord := TFExportToWord.Create(Application);
         with FExportToWord do
         begin
            Letterid := FieldByName('Letterid').AsInteger;
            LetterFormat := FieldByName('LetterFormat').AsInteger;
            if not Dm.Use_Template then
            begin
               FExportToWord.FormShow(FExportToWord);
               OpenFileClick(OpenFile);
            end {use template}
               else
                  ShowModal;
         end;{with}
      end;
   end;
    RefreshQuery;
end;

procedure TMainForm.AWordMainExecute(Sender: TObject);
begin
   inherited;
   With Dm.Get_All_Letter do
      if not Dm.ExecGet_LetterWordFile(FieldByName('LetterID').AsInteger,false) then
         ShowMsg(53);
end;


procedure TMainForm.ReplaceInWord(w:twordapplication;old,new:widestring);
var r,Wap,txt,reptxt,fals,tru:OleVariant;
begin
    with w.Selection.Find do
     begin
       ClearFormatting;
       Replacement.ClearFormatting;
       Wap := wdFindContinue;
       r:=wdReplaceAll;
       Txt :=old;
       RepTxt := new;
       Execute(txt,fals,fals,fals,fals,fals,tru,wap,fals,reptxt,r,fals,fals,fals,fals);
     end;
end;{proc}

procedure TMainForm.ALetterReportExecute(Sender: TObject);
begin
   inherited;
   //����� ���� �� �����
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
   FullTextSearchF := TFullTextSearchF.Create(Application);
   FullTextSearchF.ShowModal;
end;

procedure TMainForm.AsecChangeExecute(Sender: TObject);
begin
   inherited;
   SecChange:=TSecChange.Create(Application);
   SecChange.ShowModal;
   status4.Caption:=dm.SecretariatsSecTitle.AsString;

   {Ranjbar 89.06.30 ID=23}
   //������� ������ ����� ��
   if DisplayMode = Archive then
      DisplayMode:=Archive;
   //---
end;

procedure TMainForm.AEditSecsExecute(Sender: TObject);
begin
   inherited;
   FEditSecs:=TFEditSecs.Create(Application);
   FEditSecs.ShowModal;
end;

procedure TMainForm.AErrorMsgExecute(Sender: TObject);
begin
   inherited;
   FErrorMsg:=TFErrorMsg.Create(Application);
   FErrorMsg.ShowModal;
end;

procedure TMainForm.ASystemSettingExecute(Sender: TObject);
var
  i : Integer;
begin
   inherited;
  SystemSettings := TSystemSettings.Create(Application);
  SystemSettings.ShowModal;

  if blnChangeDbgrid then
  begin
    for i :=0 to lettersDbGrid.Columns.Count - 1 do
      if lettersDbGrid.Columns.Items[I].FieldName = 'UserMemo' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(15)) = '', '���� ������ 1', Trim(Dm.GetSystemValue(15)));
        lettersDbGrid.Columns.Items[I].Width := 120;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'UserMemo1' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(45)) = '', '���� ������ 2', Trim(Dm.GetSystemValue(45)));
        lettersDbGrid.Columns.Items[I].Width := 120;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'UserMemo2' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(46)) = '', '���� ������ 3', Trim(Dm.GetSystemValue(46)));
        lettersDbGrid.Columns.Items[I].Width := 120;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'IncommingNO' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(52)) = '', '����� ���', '����� ' + Trim(Dm.GetSystemValue(52)));
        lettersDbGrid.Columns.Items[I].Width := 80;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'IncommingDate' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(52)) = '', '����� ���', '����� ' + Trim(Dm.GetSystemValue(52)));
        lettersDbGrid.Columns.Items[I].Width := 80;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'IncommingMiladiDate_Calc' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(52)) = '', '����� ��� �� ������', '����� ' + Trim(Dm.GetSystemValue(52)) + ' �� ������');
        lettersDbGrid.Columns.Items[I].Width := 90;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'VersionNumber' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(52)) = '', '����� ������ ���', '����� ������ ' + Trim(Dm.GetSystemValue(52)));
        lettersDbGrid.Columns.Items[I].Width := 100;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'VersionDate' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(52)) = '', '����� ������ ���', '����� ������ ' + Trim(Dm.GetSystemValue(52)));
        lettersDbGrid.Columns.Items[I].Width := 100;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'Subject' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(53)) = '', '�����', Trim(Dm.GetSystemValue(53)));
        lettersDbGrid.Columns.Items[I].Width := 100;
      end
      else if lettersDbGrid.Columns.Items[I].FieldName = 'Memo' then
      begin
        lettersDbGrid.Columns.Items[I].Title.Caption := IfThen(Trim(Dm.GetSystemValue(54)) = '', '�����', Trim(Dm.GetSystemValue(54)));
        lettersDbGrid.Columns.Items[I].Width := 100;
      end;
  end;
end;

procedure TMainForm.AstatisticExecute(Sender: TObject);
begin
  inherited;

 // PSearch.Hide;

  with StatisticForm do
  begin

     StatisticForm  := TStatisticForm.Create(self);

     ManualDock(list,nil,alClient);

    // Align :=  alClient;
     Show;
     Align :=  alClient;
  end;
  StatisticMode := True;


end;

procedure TMainForm.AdailyrepExecute(Sender: TObject);
begin
   inherited;
   Fdailyrep := TFdailyrep.Create(Application);
   Fdailyrep.ShowModal;
end;

procedure TMainForm.AFillLetterDataExecute(Sender: TObject);
begin
   inherited;
   FillLetterData := TFillLetterData.Create(Application);
   FillLetterData.LetterID := dm.Get_All_LetterLetterID.AsInteger;
   FillLetterData.ShowModal;
   //Ranjbar
   RefreshQuery;
   //---
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
begin
   inherited;
   {Ranjbar 89.11.25 ID=95}
   exit;
   //ǐ� ����� ���� ��� ���� ���� ����
   if GetActiveWindow <> MainForm.Handle then
      Exit;
   //---
   RefreshQuery;
end;

procedure TMainForm.AshortCutExecute(Sender: TObject);
begin
   inherited;
   UserShortCutF := TUserShortCutF.Create(Application);
   UserShortCutF.ShowModal;
end;

procedure TMainForm.Adeleted_toLetterExecute(Sender: TObject);
var
   NewId:integer;
begin
   inherited;
   with dm.Get_All_Letter do
   begin
      if Not DataSetPost then
         Exit;
      if not messageShowString(Get_sysAppMessage(77)+dm.Get_All_Letter.FieldByName('Indicatorid').AsString+
                     Get_sysAppMessage(35),true) then
         Exit;

      with dm do
      begin
         newId:=LastIndicatorID(Get_All_LetterLetter_Type.AsInteger,1);
         Exec_Deleted_to_Letter(Get_All_LetterLetterID.AsInteger,newId);
         LetterFormat:=1;
         ShowMsgString(Get_sysAppMessage(54)+IntToStr(newId)+Get_sysAppMessage(55));
         RefreshQuery;
      end;
   end;
end;

procedure TMainForm.AchangePasswordExecute(Sender: TObject);
begin
   inherited;
   FchangePassword:=TFchangePassword.Create(Application);
   FchangePassword.showmodal;
end;

procedure TMainForm.FormShow(Sender: TObject);
Var
   I:integer;
   SkinPathName,SkinName : String;
   strDarya : String;
begin
   inherited;

   {Ranjbar 89.05.19 ID=16}
   MainForm.Align := alClient;
   //---
   SetColors;
   dm.SecID:=_DefaultSec;
   AHome.Execute;

   {Ranjbar 88.03.25}
   {dm.UsersDabirGridInfo.SaveToFile(_TempPath+'\yeganeh.txt');
   Try lettersDbGrid.columns.LoadFromFile(_TempPath+'\yeganeh.txt'); Except End;
   DeleteFile(_TempPath+'\yeganeh.txt');}

   strDarya := GetSystemSetting('DARYA');

   for I:=0 to lettersDbGrid.Columns.Count-1 do
   begin
     {
      if (lettersDbGrid.Columns.Items[I].FieldName = 'has_Page') or
                    (lettersDbGrid.Columns.Items[I].FieldName = 'has_WordPage') or
                    (lettersDbGrid.Columns.Items[I].FieldName = 'has_file') then
         lettersDbGrid.Columns.Items[I].Title.Caption := ' ';
       }
     if Trim(strDarya) <> '0' then
     begin
       Label5.Caption := strDarya;
       if (lettersDbGrid.Columns.Items[I].FieldName = 'AttachTitle') then
         lettersDbGrid.Columns.Items[I].Title.Caption := strDarya;
     end;

   end;

//   ShowMessage(VarToStr(DisplayMode));
   if PageControl1.ActivePageIndex = 0 then
   begin
      //ANewSearch.Execute;Hamed_Ansari_981216
      Initialize;
      if dm.UserMemo1 <> '' then
        LUserMemo1.Caption:=dm.UserMemo1;
      if dm.UserMemo2 <> '' then
        LUserMemo2.Caption:=dm.UserMemo2;
      if dm.UserMemo3 <> '' then
        LUserMemo3.Caption:=dm.UserMemo3;
      Indicator.SetFocus;
   end
   else
   begin
      if PageControl1.ActivePageIndex = 1 then
      begin
          if dm.UserMemo1 <> '' then
            LUserMemo1.Caption:=dm.UserMemo1;
          if dm.UserMemo2 <> '' then
            LUserMemo2.Caption:=dm.UserMemo2;
          if dm.UserMemo3 <> '' then
            LUserMemo3.Caption:=dm.UserMemo3;
      end;
   end;

   list.Align := alClient;
   //----
   DBGrid_SaveColumns(Self.Name+'_Temp',lettersDbGrid);//������ ��� ��� ������
   DBGrid_LoadColumns(Self.Name,lettersDbGrid);

   {Ranjbar} //Skin ��ѐ����
   if not DirectoryExists(ExtractFilePath(Application.ExeName)+ 'Skins') then
    //  ShowMessage(' ���� ��� ' + ' Skins ' + '����� ����� � ���� ')
   else
      begin
         SkinName := Trim(Dm.GetValue(2008))+'.Skn';
         if UpperCase(Trim(SkinName)) = UpperCase('.Skn') then
            SkinName := 'Skin01.Skn';
         SkinPathName := ExtractFilePath(Application.ExeName)+ 'Skins\' +SkinName ;
         if FileExists(SkinPathName) then
//            MainForm.SkinData1.LoadFromFile(SkinPathName)
         else
            ShowMessage('  ���� ���  ' + SkinPathName + '  ����� ����� � ���� �������  ');
      end;
   //--
   if dm.UsersChangeByAdmin.Value then
   begin
     showmessage('����� ����� ���� ����� ��� �� ����� ����');
     dm.ChangePassword:=False;
     FchangePassword := TFchangePassword.create(self);
     FchangePassword.ShowModal;
     if not(dm.ChangePassword) then
     begin
      Application.Terminate;
     end;

   end;


  QRY_.ExecSQL;
  StatisticMode := False;
end;

procedure TMainForm.Initialize;
begin
  {Ranjbar}
  //DateF := 'RegistrationDate';
  if RBRegistrationDate.Checked then
    DateF := 'RegistrationDate'
  else
    if RBIncommingdate.Checked then
      DateF := 'Incommingdate';
  //---
end;

procedure TMainForm.CBFormatChange(Sender: TObject);
begin
  inherited;
  LetterFormat := CBFormat.KeyValue;
end;

procedure TMainForm.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  edtWord.Text := '';
  edtAttach.Text := '';
  AHome.Execute;
end;

procedure TMainForm.lettersDbGridNeedColorCondition(Column: TColumn;
  State: TGridDrawState; var Color: TColor);
Var
  c1,c2:Tcolor;
begin
  inherited;
  c1 := lettersDbGrid.Color;
  c2 := lettersDbGrid.NearColor(c1,30);
            {
  if MainForm.Letter_Type = 0 then
    if dm.Get_All_LetterLetter_Type.AsInteger = 1 then
       Color := C1
    else
       Color := C2
  else
  if Column.Grid.DataSource.DataSet.RecNo Mod 2 = 0 then
    Color := C1
  else
    Color := C2;

    }
  //Ranjbar Ver5
  if dm.Get_All_LetterColor.AsInteger > 0 then
    Color := TColor(dm.Get_All_LetterColor.AsInteger);
end;

procedure TMainForm.alockExecute(Sender: TObject);
begin
  inherited;
  PSearch.Hide;
  LoginForm:=TLoginForm.Create(Application);
  LoginForm.IsLock:=true;
  LoginForm.ShowModal;
  PSearch.Show;
end;

procedure  TMainForm.SetColors;
begin
  With Dm do
  begin
   // lettersDbGrid.Color := GetValue(1009);
   // ArchiveTree.Color   := GetValue(1014);
  end;
end;

procedure TMainForm.SetDisplayMode(value:DisplayModes);
begin
   //Ranjbar
   //if FDisplayMode = Search then
      //QuickSearchF.Close;
  if value=Notany then
    value:=Search;

  FDisplayMode := value;
//PArchive.Hide;

  if value in [Archive,Search] then
  begin
    GroupingPanel.Visible:= value <> Notany;
    Splitter2.Visible    := value <> Notany;
  end ;

  case value of
    Archive:
      begin
        //Ranjbar
        //PArchive.Show;
        PageControl1.ActivePageIndex := 1;
        //---
        {Ranjbar 89.06.23 ID=}
        //DSForm.DataSet := Get_ArchiveFolder_byArchiveCenterID(_ArchiveCenterId);
        GetArchiveFolder.Close;
        GetArchiveFolder.Parameters.ParamByName('@ArchiveCenterID').Value := _ArchiveCenterId;
        {Ranjbar 89.06.30 ID=23}
        GetArchiveFolder.Parameters.ParamByName('@SecID').Value := Dm.SecID; //Or Dm.SecretariatsSecID.AsInteger
        GetArchiveFolder.Parameters.ParamByName('@userID').Value := _UserId;
        //---
        GetArchiveFolder.Open;
        //---

        Only_Current.Enabled := False;
      end;
    Search: //with QuickSearchF do
      begin
        //Ranjbar
        {QuickSearchF:=TQuickSearchF.Create(Application);
        ManualDock(GroupingPanel,nil,alClient);
        Align:=alClient;
        Show;}
        PageControl1.ActivePageIndex := 0;
        archiveFolderID := 0;
        Only_Current.Enabled:=True;
      end;
  end;
end;

procedure TMainForm.AarchivecExecute(Sender: TObject);
begin
  inherited;
   DisplayMode:=Archive;
end;

procedure TMainForm.ANotAnyExecute(Sender: TObject);
begin
  inherited;
  DisplayMode:=Notany;
end;

procedure TMainForm.AHomeExecute(Sender: TObject);
begin
   inherited;
   DoRefresh:=false;
   DisplayMode := DisplayModes(dm.InitialDisplyMode);
   with MainForm do
   begin
      Letter_Type:=dm.InitialReceivedMode;
      LetterFormat:=1;
      Where:='';
      DoRefresh:=true;
      //SpinEdit.Value:= dm.MaxNumber_Of_Letter;
      SpinEdit.Text:= IntToStr(dm.MaxNumber_Of_Letter);
     // edtWord.Text := '';
//      edtAttach.Text := '';
      RefreshQuery;
   end;
end;


procedure TMainForm.ASearchExecute(Sender: TObject);
begin
  inherited;
  if DisplayMode <> Search then
    DisplayMode := Search;
end;

procedure TMainForm.SpeedButton16Click(Sender: TObject);
begin
  inherited;
  DisplayMode := Search;
  if (GroupingPanel.Width <190) or (GroupingPanel.Width>1100) then
    GroupingPanel.Width := 190 ;
  pnlSearch.Show;
  GroupingPanel.Show ;
  Splitter2 .Show ;
end;

procedure TMainForm.SpeedButton11Click(Sender: TObject);
begin
   inherited;
   edtWord.Text := '';
   edtAttach.Text := '';
   if DisplayMode <> Archive then
      DisplayMode := Archive;
      
  if (GroupingPanel.Width <190) or (GroupingPanel.Width>1100) then
    GroupingPanel.Width := 190 ;
   pnlArchive.Show;
   GroupingPanel.Show ;
   Splitter2 .Show ;
  { Ahome.Execute;   }
//  is_zonkan_is_active := True;
end;

procedure TMainForm.AArchiveFoldersExecute(Sender: TObject);
begin
   inherited;
   ArchiveOrganizeForm := TArchiveOrganizeForm.Create(Application);
   ArchiveOrganizeForm.OrganizeMode:=true;
   ArchiveOrganizeForm.ShowModal;
end;

procedure TMainForm.ArchiveTreeChange(Sender: TObject; Node: TTreeNode);
begin
   inherited;
   ArchiveFolderID := DSForm.DataSet.fieldbyname('folderid').AsInteger;
//  ArchiveFolderID := StrToInt(DBEdit1.Text);
end;

procedure TMainForm.userTimerTimer(Sender: TObject);
begin
  inherited;
  ActionMainMenuBar1.Font.Charset:=178;
  Exec_update_UserLoginLogout(_UserLoginLogoutID,false);
end;

procedure TMainForm.CBReceiveClick(Sender: TObject);
begin
  inherited;
  Letter_Type:=CBReceive.KeyValue;
end;

procedure TMainForm.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  AArchiveFolders.Execute;
end;

procedure TMainForm.Action2Execute(Sender: TObject);
begin
  inherited;
  lettersDbGrid.CustomizePrint;
  //fimportfax:=TFImportFax.Create(Application);
  //FImportFax.ShowModal;
end;

procedure TMainForm.Action4Execute(Sender: TObject);
begin
   inherited;
   FUserLoginLogoutReport := TFUserLoginLogoutReport.Create(Application);
   FUserLoginLogoutReport.ShowModal;
end;

procedure TMainForm.AexportDataExecute(Sender: TObject);
begin
   inherited;
   FArchiveLetterData:=TFArchiveLetterData.Create(Application);
   FArchiveLetterData.ShowModal;
end;

procedure TMainForm.FromOrgOrganize;
begin
   inherited;
   FromOrgForm:=TFromOrgForm.Create(Application);
   FromOrgForm.OrganizeMode:=true;
   FromOrgForm.ShowModal;
end;

procedure TMainForm.ArchiveTreeClick(Sender: TObject);
begin
  inherited;
  if DisplayMode <> archive then
    DisplayMode := Archive;
  ArchiveFolderID := DSForm.DataSet.fieldbyname('folderid').AsInteger;
//  ArchiveFolderID := StrToInt(DBEdit1.Text);
end;

procedure TMainForm.ArestorLtterDataExecute(Sender: TObject);
begin
   inherited;
   FRestorLetterData := TFRestorLetterData.Create(Application);
   FRestorLetterData.ShowModal;
end;

procedure TMainForm.lettersDbGridNeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
   inherited;
   //����� �� ���� ����� ������
   Case dm.Get_All_LetterRentStatus.AsInteger of
      1:F.Color := clNavy; //��� �� ��
      2:begin
           {Ranjbar 89.05.19 ID=12}
           //F.Color := clMaroon;
           F.Color := $00007700; //���
           F.Style := [fsBold];
           //---
        end;
      3:F.Color := clRed;

      {1: ��Ґ����� ����� ����� �� ����� ��Ґ��
       2: ����� ��� ���
       3: ����� ����� ����� ���  }
   end;
end;

procedure TMainForm.Get_All_LetterAfterScroll(DataSet: TDataSet);
Var
   Document:String;
begin
   ArchiveFolders.Text := Archive_ParentFolders(dm.Get_All_LetterLetterID.AsInteger);
   ArchiveFolders.Visible:=ArchiveFolders.Text<>'';

   {Ranjbar 88.04.02}
   if Dm.GetSystemValue(51) then //����� ����� ���
      Document := Trim(Dm.GetSystemValue(52))
   else
      Document := '���';
   if dm.Get_All_LetterRentStatus.AsInteger=1 then
      //ARent.Caption := '����� ��� ���'
      ARent.Caption := '����� ��� ' + Document
   else
      Arent.Caption := '��Ґ��  ' + Document + ' �����';
   check;
end;

procedure TMainForm.AActiveUserExecute(Sender: TObject);
begin
   inherited;
   ActiveUsers := TActiveUsers.Create(Application);
   ActiveUsers.ShowModal;
end;

procedure TMainForm.Only_CurrentClick(Sender: TObject);
begin
   inherited;
   RefreshQuery;
end;

procedure TMainForm.adeleteWordExecute(Sender: TObject);
var
 AQry : TADOQuery;
begin
   inherited;
   {Ranjbar 89.06.23 ID=63}
   if not Dm.Get_All_Letterhas_WordPage.AsBoolean then
      Exit;
   //---

   if messageShow(39,true) then
   begin
      Exec_delete_LetterWord(dm.Get_All_LetterLetterID.AsInteger);
      AQry := TADOQuery.Create(nil);
      try
       AQry.Connection := Dm.YeganehConnection;
       AQry.CommandTimeout := 300 ;
       AQry.Close;
       AQry.SQL.Text := ' update letter set Has_Page = dbo.has_Page(letterid), ' +
                        ' Has_WordPage = dbo.has_WordPage(letterid), ' +
                        ' Has_File = dbo.has_file(letterid) from Letter Where LetterID = ' + IntToStr(dm.Get_All_LetterLetterID.AsInteger);
       AQry.ExecSQL;
      finally
       FreeAndNil(AQry);
      end;
      RefreshQuery;
   end;
end;

procedure TMainForm.MakeSelectedRecommites;
var
  i: integer;
begin
   _selectedRecommitesID.Clear;

  if lettersDbGrid.SelectedRows.Count>0 then
    with dm.Get_All_Letter do
      for i:=0 to lettersDbGrid.SelectedRows.Count-1 do
      begin
         GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
         _selectedRecommitesID.Add(dm.Get_All_LetterLetterID.AsString);
      end;
end;

procedure TMainForm.Action1Execute(Sender: TObject);
begin
   inherited;
   QueryRefresher.Enabled:=false;
   MakeSelectedRecommites;
   if _selectedRecommitesID.Count=0 then
     exit;
   FExactGroup:=TFExactGroup.Create(Application);
   Exec_Select_LetterReCommite(0,1);
   dm.Select_LetterReCommite.Insert;
   FExactGroup.ShowModal;
   QueryRefresher.Enabled:=True;
end;

procedure TMainForm.Action3Execute(Sender: TObject);
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
   FrUTemplateGroup:=TFrUTemplateGroup.Create(Application);
   FrUTemplateGroup.ShowModal;
end;

procedure TMainForm.AAddExtentionExecute(Sender: TObject);
begin
   inherited;
   FrAddExtention:=TFrAddExtention.create(application);
   FrAddExtention.ShowModal;
end;

procedure TMainForm.AEditUserExtentionExecute(Sender: TObject);
begin
   inherited;
   FrEditUserExtention:=TFrEditUserExtention.create(application);
   FrEditUserExtention.ShowModal;
end;

procedure TMainForm.AaddLetterDataExecute(Sender: TObject);
begin
   inherited;
   Dm.SelectLetter := Dm.Get_All_LetterLetterID.AsString;
   FraddLetterData := TFraddLetterData.Create(Application);
   FraddLetterData.LetterID:=dm.Get_All_LetterLetterID.AsInteger;
   FraddLetterData.ShowModal;
   {Ranjbar 88.05.25 ID=26}
   RefreshQuery;
   //---
end;

procedure TMainForm.ViewLetterAttachment(LetterID, LetterType, LetDataID:integer);
begin
   inherited;
   with FrAddDocument do
   begin
      FrAddDocument:=TFrAddDocument.Create(Application);
      LetterDataID := LetDataID;
      GetLetter(LetterID);
      ShowModal;
   end;
end;

procedure TMainForm.lettersDbGridDrawColumnCell(Sender: TObject;
          const Rect: TRect; DataCol: Integer; Column: TColumn;State: TGridDrawState);
begin
   Dm.SelectLetter := Dm.Get_All_LetterLetterID.AsString;
(*
   Icon:=TBitmap.Create;
   if (Column.FieldName = 'IndicatorID' ) then
      with  lettersDbGrid.Canvas do
      begin
         Brush.Color:=clWhite;
         FillRect(Rect);
         if (dm.Get_All_Letter.FieldByName('IndicatorID').Value>200)  then
            dm.LetterImages.GetBitmap(1,Icon)
         else
            dm.LetterImages.GetBitmap(0,Icon);
         Draw(round((Rect.Left+Rect.Right-Icon.Width)/2),Rect.Top,Icon);
      end;
*)      
end;

procedure TMainForm.lettersDbGridNeedImageIndex(Column: TColumn;var ImageIndex: Integer);
begin
  inherited;
  //������



  if Column.FieldName='has_Page' then
     if dm.Get_All_Letterhas_Page.AsBoolean then
        ImageIndex:=3
     else
        ImageIndex:=0;

  if Column.FieldName='has_WordPage' then
     if dm.Get_All_Letterhas_WordPage.AsBoolean then
        ImageIndex:=2
     else
        ImageIndex:=0;

  if Column.FieldName='has_file' then
     if dm.Get_All_Letterhas_file.AsBoolean then
        ImageIndex:=1
     else
        ImageIndex:=0;

  //0: No Alarm ,  1: Has Alarm With No Delay  ,  2: Has Alarm With Delay
  if Uppercase(Column.FieldName)=Uppercase('HasLetterAlerm') then
     Case dm.Get_All_LetterHasLetterAlerm.AsInteger of
        0: ImageIndex:=0;  //��� ���� ����� ���
        1: ImageIndex:=15; //��� ����� ����� ��� ���� �����
        2: ImageIndex:=16; //��� ����� ����� ��� �� �����
     end;   

end;

procedure TMainForm.ActImportExecute(Sender: TObject);
begin
  inherited;
  FrImport:=TFrImport.Create(Application);
  FrImport.ShowModal;
end;

procedure TMainForm.ActMonitorTablesExecute(Sender: TObject);
begin
  inherited;
  FrMonitorTables:=TFrMonitorTables.Create(Application);
  FrMonitorTables.ShowModal;
end;

procedure TMainForm.ActInputUserTableExecute(Sender: TObject);
begin
   inherited;
   FrInputUserTable := TFrInputUserTable.Create(Application);
   FrInputUserTable.showmodal;
end;

procedure TMainForm.ActInputRefferenceTableExecute(Sender: TObject);
begin
  inherited;
  FrInputRefferenceTable:=TFrInputRefferenceTable.Create(Application);
  FrInputRefferenceTable.ShowModal;
end;

procedure TMainForm.ActMakeUserTableRepExecute(Sender: TObject);
begin
   inherited;
   FrMakeUserTableRep := TFrMakeUserTableRep.Create(Application);
   FrMakeUserTableRep.ShowModal;
end;

procedure TMainForm.ActEditAddDocumentExecute(Sender: TObject);
begin
  inherited;
  Dm.EditMode := True;
 (*
 if not Dm.UsersShowAllDoc.AsBoolean then
   if Dm.UsersId.AsInteger <> UserIdCreator then
    begin
     ShowMyMessage('�����','����� ����� � ��� ����� ����� ��� ��� �� ������',[mbOK],mtInformation);
     Abort;
    end;
 *)
 if dm.Get_All_LetterLetter_Type.AsInteger=1 then
  ViewDocumnet(dm.Get_All_LetterLetterID.AsInteger,True);

 RefreshQuery;
end;

procedure TMainForm.AloadFileExecute(Sender: TObject);
begin
   inherited;
   ShellExecute(Handle, 'open',loadLetterdata(dm.Get_All_LetterLetterID.AsInteger),nil,nil,SW_SHOWNORMAL);
end;

procedure TMainForm.lettersDbGridMouseMove(Sender: TObject;Shift: TShiftState; X, Y: Integer);
Var
   pt: TGridcoord;
   r,j,i: byte;

   aPt: TPoint;
   Coord: TGridCoord;
   afieldname: String;
begin
   DblclickAction :=viewLetter;

  { TODO -oparsa : 14030107 }
   (*
   pt:= lettersDbGrid.MouseCoord(x, y);
   j:=0;
   r:=0;

  {Ranjbar 89.07.14 ID=20}
  //for i:=1 to 3 do
  for i:=1 to 4 do
  //---
    if  lettersDbGrid.Columns[i-1].Visible then
     begin
        inc(j);
        if j=pt.x then
           r:=i
     end;

  if r = 1 then
     DblclickAction := ViewJpg
  else
     if r = 2 then
        DblclickAction := ViewWord
     else
        if r = 3 then
           DblclickAction := ViewPdf
        else
           {Ranjbar 89.07.14 ID=20}
           if r = 4 then
              DblclickAction := ViewAlarm ; //����� ��� �����
           //---

   *)

   aPt := lettersDbGrid.ScreenToClient(Mouse.CursorPos);
   Coord := lettersDbGrid.MouseCoord(aPt.X, aPt.Y);
   if (Coord.X) -1 >= 0 then
     afieldname := lettersDbGrid.Columns[(Coord.X)-1].FieldName;

   if afieldname = 'has_Page' then
      DblclickAction := ViewJpg
   else
      if afieldname = 'has_WordPage'  then
         DblclickAction:= ViewWord
      else
         if afieldname = 'has_file'  then
            DblclickAction:= ViewPdf
         else
           if afieldname = 'HasLetterAlerm'  then
              DblclickAction:= ViewAlarm
            else
              DblclickAction:= viewLetter;

   { TODO -oparsa : 14030107 }
end;

procedure TMainForm.ExporttoWord1Click(Sender: TObject);
begin
   inherited;
   lettersDbGrid.ExportToWord;
end;

procedure TMainForm.ExporttoExcel1Click(Sender: TObject);
begin
   inherited;
   lettersDbGrid.ExportToExcel;
end;

procedure TMainForm.ChooseColumns1Click(Sender: TObject);
begin
   inherited;
   lettersDbGrid.CustomizePrint;
end;

procedure TMainForm.ARentExecute(Sender: TObject);
begin
   inherited;
   {LetterID := Dm.Get_All_LetterLetterID.AsInteger;
   RentID := Get_RentID_ByLetterID(LetterID);

   FrAddRent := TFrAddRent.Create(Application);
   with FrAddRent do
   begin
      GetRent(RentID);
      if rentid<0 then
         Insert(LetterID)
      else
         Edit;
      ShowModal;
   end;}

   FrAddRent := TFrAddRent.Create(Application);
   with FrAddRent do
   begin
      LetterID := Dm.Get_All_LetterLetterID.AsInteger;
      RentID := Get_RentID_ByLetterID(LetterID);
      ShowModal;
   end;

   {Ranjbar 89.05.27 ID=35}
   RefreshQuery;
   //---
end;

procedure TMainForm.ALetterRentExecute(Sender: TObject);
begin
   inherited;
   FrLetterRent := TFrLetterRent.Create(Application);
   FrLetterRent.Open_Rent_byLetterID(dm.Get_All_LetterLetterID.AsInteger);
   FrLetterRent.ShowModal;
end;

procedure TMainForm.ChangeYearExecute(Sender: TObject);
var
  S : String;
  intS : Integer;
begin
  inherited;
  if Dm.Y_InputQuery('��� ����',IntToStr(Dm.CurrentMyear),S) then
  begin
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
      ShowMsgString('��� ���� ��� �� ���� ���� ������');
    end;
  end;
end;

procedure TMainForm.Areport_userLogExecute(Sender: TObject);
begin
  inherited;
  FrReport_userLog := TFrReport_userLog.Create(Application);
  FrReport_userLog.ShowModal;
end;

procedure TMainForm.ChangeLetterColor(aColor : TColor);
var
  I:integer;
  OldColor : Longint;
begin
  if lettersDbGrid.SelectedRows.Count = 0 then
    lettersDbGrid.SelectedRows.CurrentRowSelected := True;

  {Ranjbar}
  for I:=0 to lettersDbGrid.SelectedRows.Count-1 do
  begin
    Dm.Get_All_Letter.GotoBookmark(Pointer(lettersDbGrid.SelectedRows.Items[i]));
    if aColor <> -1 then
    begin
      with TADOQuery.Create(nil) do
      begin
        Connection := Dm.YeganehConnection;
        CommandTimeout := 300 ;
        SQL.Text := 'SELECT IsNull(ColorID,-1) FROM LetterColor WHERE LetterID='+Dm.Get_All_LetterLetterID.AsString +' AND USERID='+IntToStr(_UserId);
        open;
        if not isempty then
        begin
          OldColor := Fields[0].AsInteger;
          Qry_SetResult('Update LetterColor Set ColorID='+IntToStr(aColor)+' Where LetterID = '+
                   Dm.Get_All_LetterLetterID.AsString +' AND USERID='+IntToStr(_UserId),Dm.YeganehConnection);
        end
        else
        begin
          Qry_SetResult('INSERT INTO LetterColor(ColorID,LetterID,UserID) VALUES('+IntToStr(aColor)+','+
                   Dm.Get_All_LetterLetterID.AsString +','+IntToStr(_UserId)+')',Dm.YeganehConnection);
        end;
      end;

      if OldColor<0 then
      begin // ����� ��
        Exec_insert_UserLog('SetLetterColor',Dm.Get_All_LetterLetterID.AsInteger);
        Dm.Insert_LetterEdit(Dm.Get_All_LetterLetterID.AsInteger,'������ �� �� ���');
      end
      else
      begin // ������ ��
        Exec_insert_UserLog('ChangeLetterColor',Dm.Get_All_LetterLetterID.AsInteger);
        Dm.Insert_LetterEdit(Dm.Get_All_LetterLetterID.AsInteger,'������ �� ���');
      end;
    end
    else
    begin
       //��� ����
       Qry_SetResult('DELETE FROM LetterCOLOR Where LetterID = '+
                 Dm.Get_All_LetterLetterID.AsString+' AND USERID='+IntToStr(_UserId),Dm.YeganehConnection);
       Exec_insert_UserLog('RemoveLetterColor',Dm.Get_All_LetterLetterID.AsInteger);
       Dm.Insert_LetterEdit(Dm.Get_All_LetterLetterID.AsInteger,'��� �� ���');
     end;
  end;
  RefreshQuery;
end;

procedure TMainForm.NRedClick(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(clred);
end;

procedure TMainForm.NBlueClick(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(clBlue); //$00FFA4A4
end;

procedure TMainForm.NGreenClick(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(clGreen);
end;

procedure TMainForm.NGrayClick(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(clGray);
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(-1);
end;

procedure TMainForm.N4Click(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(clPurple);
end;

procedure TMainForm.N5Click(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(LowOrange);
end;

procedure TMainForm.N6Click(Sender: TObject);
begin
  inherited;
   ChangeLetterColor(LowTurquoise);
end;

procedure TMainForm.N7Click(Sender: TObject);
begin
   inherited;
   ChangeLetterColor(LowPink);
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
Var
   I:integer;
begin
  inherited;
  With QrSrchArchiveFolder do
  begin
     Try
        {Ranjbar 90.03.17 ID=103}
        Close;
        SQL.Text := 'Select Distinct AF.FolderID, AF.Title From ArchiveFolder AF, UserAccArchive UAA ' +
                        'Where (1=1) And (UAA.UserID = :UserID) And (UAA.ArchiveCenterID = :ArchiveCenterID) ' +
                        'And(UAA.IsAccess = 1) And (UAA.ArchiveFolderID = AF.FolderID)';
        Parameters.ParamByName('UserID').Value := _UserId;
        Parameters.ParamByName('ArchiveCenterID').Value := _ArchiveCenterId;
        Open;

        //---

        if FmSearch.GetSearchValue(QrSrchArchiveFolder,'FolderID','Title',' ',400,400)<>'0' then
        begin
           ArchiveTree.SetFocus;
           For I:=0 to ArchiveTree.Items.Count-1 do
               if Integer(ArchiveTree.Items.Item[I].Data) = (QrSrchArchiveFolderFolderID.AsInteger) then
               begin
                  ArchiveTree.Items.Item[I].Selected := True;
                  Break;
               end;
        end;
     Finally
        Close;
     End;
  end;
end;

procedure TMainForm.IndicatorExit(Sender: TObject);
begin
  inherited;
  //Ranjbar Var6
  MBaseForm.TEditExit(Sender);
  if (Trim(Indicator2.Text) = '') or ( StrToIntDef(Indicator2.Text,0) < StrToIntDef(Indicator.Text,0) ) then
     Indicator2.Text := Trim(Indicator.Text)
  //---  
end;

procedure TMainForm.ANewSearchExecute(Sender: TObject);
begin
  inherited;
  Indicator.Text:='';
  //Ranjbar Var5
  Indicator2.Text:='';
  //---
  ChBoIncommingNO.Checked := False;
  EdtIncommingNO.Text:='';
  {Ranjbar}
  //date.Text:='';
  MeSDate.Text := #254 + '    /  /  ';  //'�13  /  /  '
  MeEDate.Text := #254 + '    /  /  ';
  RBIncommingdate.Checked := True;
  //---
  ToStaffer.Text:='';
  Memo.Text:='';
  dm.FromOrganizations.Locate('id',dm.DefaultRFromOrgId,[]);
  UserMemo1.Text:='';
  UserMemo2.Text:='';
  UserMemo3.Text:='';
  RentStatus.ItemIndex:=0;
  //Ranjbar Var5
  Indicator.SetFocus;
  //---

  {Ranjbar 89.05.31 ID=43}
  EdtAtachTitle.Text := '';
  edtWord.Text := '';
  edtAttach.Text := '';
  Refresh;
  //---
end;

function TMainForm.NoCondition:String;
var
  s: string;
begin
  Result:='';
  s:=ReplaceKaf(trim(EdtIncommingNO.text));
  if copy(s,1,2)='�:' then
    Delete(s,1,2);
  if s<>'' then
    Result := '(RTRIM(LTRIM(REPLACE(REPLACE(REPLACE(incommingno,'' '',''''), NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
                replace(s,' ','') + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))';
  //ShowMessage(Result);
   //result:='(replace(incommingno,'' '','''') like ''%'+replace(s,' ','')+'%'')'
end;

function TMainForm.RentCondition:String;
begin
  Result := '';

  {Ranjbar 89.07.15 ID=54}
  {if RentStatus.ItemIndex>0 then
  Result:='(dbo.RentStatus(Letter.LetterID,' + QuotedStr(_Today)+')='+IntToStr(RentStatus.ItemIndex)+' )';}
  if RentStatus.ItemIndex in [1,2,3] then
    Result := '(dbo.RentStatus(Letter.LetterID,' + QuotedStr(_Today)+') = '+IntToStr(RentStatus.ItemIndex)+' )'
  else
    if RentStatus.ItemIndex in [4] then
      Result := '(dbo.RentStatus(Letter.LetterID,' + QuotedStr(_Today)+') in (2,3) )';
   //---
end;

function TMainForm.IndicatorCondition:String;
var
   S1,S2 :String;
begin
   Result:='';
   S1 := Trim(Indicator.Text);
   {Ranjbar Ver5}
   {if dm.isIndicator(s1,FI,Ti) then
      Result:='(IndicatorID>='+inttostr(FI)+' and IndicatorID<='+IntToStr(TI)+')';}
   S2 := Trim(Indicator2.Text);
   if S1 = '' then
      Exit;

   if Trim(S2) = '' then
   begin
      S2 := Trim(S1);
      Indicator2.Text := S2
   end;
   Result:='(IndicatorID Between '+ S1 +' And '+ S2 +')';
   //---
end;

{Ranjbar 89.05.31 ID=43}
function TMainForm.AttachTitleCondition:String;
Var
   s:String;
begin
  Result:='';
  s := Trim(EdtAtachTitle.Text);
  if s = '' then
    Exit;

  { TODO -oparsa : 14030708 }
  //Result := '(RTRIM(LTRIM(REPLACE(REPLACE(AttachTitle, NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
  //            s + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))';
  Result := ' ( Letter.LetterID IN (SELECT LETTERID FROM dbo.LetterData LD WHERE  RTRIM(LTRIM(REPLACE(REPLACE(LD.Description , NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
              s + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))  )';
  { TODO -oparsa : 14030708 }


  //Result:=' (AttachTitle Like ''%'+ S1 +'%'') ';
end;
//---

function TMainForm.DateCondition:String;
var
   //FDate,TDate:string;
   //s:string;
   StartDate, EndDate:String;
   FaFormat, EnFormat : String;
begin
   //Ranjbar
   {s:=trim(date.Text);
   Result:='';
   if isDate(_Today,s,FDate,TDate) then
   Result:='('+DateF+'<='''+TDate+''') and  ('+DateF+'>='''+FDate+''')';
   if Result<>'' then
      Result:='('+Result+')';}
   if Pos('/', MeSDate.Text)>0 then
   begin
      FaFormat := '�    /  /  ';
      EnFormat := '    /  /  ';
   end;
   {if Pos('-', MeSDate.Text)>0 then
   begin
      FaFormat := '�13  -  -  ';
      EnFormat := '13  -  -  ';
   end;}

   if (MeSDate.Text <> FaFormat) And (MeEDate.Text = FaFormat) then   //Alt+0254 + MeEDate.Text
      MeEDate.Text := MeSDate.Text;

   if (MeSDate.Text = FaFormat) And (MeEDate.Text <> FaFormat) then   //Alt+0254 + MeEDate.Text
      MeEDate.Text := FaFormat;

   Result := '';
   StartDate := Copy(MeSDate.Text,2,Length(MeSDate.Text)); //#254 + 1388/01/01
   EndDate   := Copy(MeEDate.Text,2,Length(MeEDate.Text));
   if (StartDate = EnFormat) And (EndDate = EnFormat) then
   begin
      Result:='';
      Exit;
   end;

   if Not isValidDate(StartDate) or not isValidDate(EndDate) then
   begin
      MBaseForm.MessageShowString('����� ��� ������ �� ����. ���� ����� ������', False);
      MeSDate.SetFocus;
      Abort;
   end;

   Result:='( '+ DateF +' Between '+ QuotedStr(StartDate) + ' And ' + QuotedStr(EndDate) +' )';
   if Result<>'' then
      Result:='('+Result+')';
end;


function TMainForm.SenderCondition:String;
var
   s: string;
begin
  //Add Sanaye 950919
  //����� �� ���� ����� �� ��� ����
  Result:='';
  s := ReplaceKaf(YeganehTrim(ToStaffer.Text));
  if s <> '' then
    Result := '(RTRIM(LTRIM(REPLACE(REPLACE(Subject, NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
              s + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))';
end;

Procedure TMainForm.Refresh;
var
  items: TStrings;
  i : byte;
begin
  Initialize;
  items := TStringList.Create;
  condition:='';
  with items do
  begin
    clear;
    Add(NoCondition);
    Add(RentCondition);
    Add(IndicatorCondition);
    Add(DateCondition);
    Add(SenderCondition);
    {Ranjbar 89.05.31 ID=43}
    Add(AttachTitleCondition);
     //---
    Add(dm.MemoCondition(ReplaceKaf(memo.Text),'Memo'));
    Add(dm.MemoCondition(ReplaceKaf(UserMemo1.Text),'UserMemo'));
    Add(dm.MemoCondition(ReplaceKaf(UserMemo2.Text),'UserMemo1'));
    Add(dm.MemoCondition(ReplaceKaf(UserMemo3.Text),'UserMemo2'));
    Add(dm.MemoCondition(ReplaceKaf(UserMemo3.Text),'UserMemo2'));

    for i:=0 to Count-1 do
      if items[i]<>'' then
        if Condition = '' then
          Condition:=items[i]
        else
          condition := condition +' and '+ items[i];
  end;
  MainForm.Where:= Condition;
  //ShowMessage(MainForm.Condition);
end;

procedure TMainForm.ASearchBitbtnExecute(Sender: TObject);
begin
  inherited;
  Refresh;
end;

procedure TMainForm.MeSDateExit(Sender: TObject);
begin
  inherited;
  if (MeSDate.Text <> '�    /  /  ')And(MeEDate.Text = '�    /  /  ') then   //#254 + MeEDate.Text
    MeEDate.Text := MeSDate.Text;
end;

procedure TMainForm.MeSDateKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key =13 then
    Refresh;

  if (Key = vk_Delete)or (Key = Vk_back) then
  begin
    TMaskEdit(Sender).Text := '�    /  /  ';
    TMaskEdit(Sender).SelStart := 1;
  end;
end;

procedure TMainForm.MeSDateEnter(Sender: TObject);
begin
  inherited;
  TMaskEdit(Sender).SelStart := 1;
end;

procedure TMainForm.SBArchiveFolderClick(Sender: TObject);
begin
  inherited;
   {Ranjbar 88.03.27}//��� ��� �� ����� ���� ���
  ArchiveTree.SetFocus;
  with FrAddDocument do
  begin
    FrAddDocument := TFrAddDocument.Create(Application);
    GetLetter(0);
    ArchiveFolderID := MainForm.DSForm.DataSet.fieldbyname('FolderId').AsInteger;
    DataSetInsert.Execute;
    ShowModal;
  end;

  if Letter_Type in [1,0] then
    RefreshQuery;
   //---
end;

procedure TMainForm.ActLetterDataExecute(Sender: TObject);
begin
  inherited;
  FmRepLetterData := TFmRepLetterData.Create(Nil);
  FmRepLetterData.ShowModal;
end;

procedure TMainForm.Action11Execute(Sender: TObject);
begin
  inherited;
  FrArchiveCenter := TFrArchiveCenter.Create(Application);
  FrArchiveCenter.ShowModal;
end;

procedure TMainForm.searchAllClick(Sender: TObject);
begin
  inherited;
  RefreshQuery;
end;

procedure TMainForm.N3Click(Sender: TObject);
begin
  inherited;
  DBGrid_LoadColumns(Self.Name+'_Temp',lettersDbGrid);//������ ��� ��� ������
  ShowMessage('������� ����� ��' );
end;

procedure TMainForm.DataSetDeleteExecute(Sender: TObject);
var
  i : integer; // Amin 1391/10/30
begin
  inherited;
   // Amin 1391/10/30 Start
  if MessageDlg('��� ���� �� ��� ��� ј���(��) ����� �', mtWarning, mbOKCancel, 0) = mrOK then
  begin
    MakeSelectedRecommites;
    if _selectedRecommitesID.Count > 0  then
      for i:=0 to _selectedRecommitesID.Count-1 do
            //����� ���� ���� �� ������ �� ��� ��� �� ��� ���� ���� ����� ���� ����
        Exec_Delete_Letter(StrToInt(_selectedRecommitesID[i]) , dm.LastIndicatorID(dm.Get_All_LetterLetter_Type.AsInteger,3));
    RefreshQuery;
  end;
   // Amin 1391/10/30 End
   // Amin 1391/10/30 Dm.Get_All_Letter.Delete;
end;

procedure TMainForm.Label4Click(Sender: TObject);
begin
  inherited;
  Only_CurrentClick(Sender);
end;

procedure TMainForm.AcAlarmExecute(Sender: TObject);
begin
  inherited;
  {Ranjbar 89.07.14 ID=20}
  FmAlarm := TFmAlarm.Create(Self);
  FmAlarm.LetterID := Dm.Get_All_LetterLetterID.AsInteger;
  FmAlarm.ShowModal;
  RefreshQuery;
   //---
end;

procedure TMainForm.ActFolderToLetterExecute(Sender: TObject);
begin
  inherited;
   //��� ����� ���� �� ���
  FMFolderToLetter := TFMFolderToLetter.Create(Self);
  FMFolderToLetter.ShowModal;
  RefreshQuery;
end;

procedure TMainForm.Action5Execute(Sender: TObject);
Var
  Action : TCloseAction;
begin
  inherited;
  FormClose(Sender,Action);
  WinExec(Pchar(ExtractFileName(Application.ExeName)),0);
  Application.Terminate;
end;

procedure TMainForm.EdtIncommingNOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
   {Ranjbar 89.09.02 ID=230}
   //����� ��� ����� ���     � . 55 - 12_125 . � / � / ���
   //TEdit(Sender).Text := Keyboard_TypeWithDivider(TEdit(Sender).Text , Key);
  if not ChBoIncommingNO.Checked then
  begin
    if EdtIncommingNO.BiDiMode = bdLeftToRight then
      EdtIncommingNO.BiDiMode := bdRightToLeft;
    EdtIncommingNO.Text := Keyboard_TypeWithDivider(EdtIncommingNO.Text,Key);
  end;
   //---
end;

procedure TMainForm.SBFarsiClick(Sender: TObject);
begin
  inherited;
   {Ranjbar 89.11.26 ID=90}
  EdtIncommingNO.SetFocus;
  EdtIncommingNO.SelectAll;
  Keyboard_Farsi;
  EdtIncommingNO.OnKeyPress := EdtIncommingNOKeyPress;
  EdtIncommingNO.BiDiMode := bdRightToLeft;
   //---
end;

procedure TMainForm.SBEnglishClick(Sender: TObject);
begin
  inherited;
   {Ranjbar 89.11.26 ID=90}
  EdtIncommingNO.SetFocus;
  EdtIncommingNO.SelectAll;
  Keyboard_English;
  EdtIncommingNO.OnKeyPress := Nil;
  EdtIncommingNO.BiDiMode := bdLeftToRight;
   //---
end;

procedure TMainForm.SBExpandClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 90.03.17 ID=103}
  ArchiveTree.FullCollapse;
  //---
end;

procedure TMainForm.SBCollapseClick(Sender: TObject);
begin
  inherited;
  {Ranjbar 90.03.17 ID=103}
  ArchiveTree.FullExpand;
  //---
end;

function TMainForm.GetUserMemoCaption: String;
begin
  Result:='������� ������ 1';
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT VALUE FROM Settings WHERE VariableId=15 AND UserID=-1');
  QTemp.Open;
  if not QTemp.IsEmpty then
    Result:=QTemp.FieldValues['VALUE'];
end;

function TMainForm.GetUserMemo1Caption: String;
begin
  Result:='������� ������ 2';
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT VALUE FROM Settings WHERE VariableId=45 AND UserID=-1');
  QTemp.Open;
  if not QTemp.IsEmpty then
    Result:=QTemp.FieldValues['VALUE'];
end;

function TMainForm.GetUserMemo2Caption: String;
begin
  Result:='������� ������ 3';
  QTemp.Close;
  QTemp.SQL.Clear;
  QTemp.SQL.Add('SELECT VALUE FROM Settings WHERE VariableId=46 AND UserID=-1');
  QTemp.Open;
  if not QTemp.IsEmpty then
    Result:=QTemp.FieldValues['VALUE'];
end;

procedure TMainForm.SetUserMemoCaptions;
var
  i : Integer;
begin
  for i:=0 to lettersDbGrid.Columns.Count-1 do
  begin
    if UpperCase(lettersDbGrid.Columns.Items[i].Title.Caption)=UpperCase('UserMemo') then
    begin
      if GetUserMemoCaption <> '' then
        lettersDbGrid.Columns.Items[i].Title.Caption:= GetUserMemoCaption
      else  lettersDbGrid.Columns.Items[i].Title.Caption:= '������� ������ 1';
    end;
    if UpperCase(lettersDbGrid.Columns.Items[i].Title.Caption)=UpperCase('UserMemo1') then
    begin
      if GetUserMemo1Caption <> '' then
        lettersDbGrid.Columns.Items[i].Title.Caption:= GetUserMemo1Caption
      else  lettersDbGrid.Columns.Items[i].Title.Caption:= '������� ������ 2' ;
    end;
    if UpperCase(lettersDbGrid.Columns.Items[i].Title.Caption)=UpperCase('UserMemo2') then
    begin
      if GetUserMemo2Caption <> ''  then
        lettersDbGrid.Columns.Items[i].Title.Caption:= GetUserMemo2Caption
      else lettersDbGrid.Columns.Items[i].Title.Caption:= '������� ������ 3';
    end;
  end;
end;

procedure TMainForm.acSendAllPayvastExecute(Sender: TObject);
var
  LetterID ,i: Integer;
  Path,FileName,Extention,FilePatch :string;
begin
  ItializeDownloadSetting;
  if lettersDbGrid.SelectedRows.Count<2 then
  begin
    LetterID:= Dm.Get_All_LetterLetterID.AsInteger;
    if SelectDirectory('����� ���� ��� ����� ���� ��','',Path) then
    begin
        //Hamed_Ansari_981205
        //Dm.Get_All_Letter.DisableControls;
        //Dm.Get_All_Letter.First;
        //while not Dm.Get_All_Letter.Eof do
        //begin
      with QAllPayvast do
      begin
        Close;
        Parameters.ParamByName('LetterID').Value:=LetterID;
        Open;
        if not QAllPayvast.IsEmpty then
        begin
          while not QAllPayvast.Eof do
          begin
            Extention := Trim(QAllPayvastExtentionName.AsString);
            if Trim(Extention)<>'' then
            begin
              if UpperCase(Extention)='TXT' then
                Extention := 'DOC';
                FilePatch:=QAllPayvast.fieldbyname('path').AsString;
                FileName:='Archive_'+IntToStr(Dm.Get_All_LetterIndicatorID.AsInteger)+'_'+Dm.Get_All_LetterLetterID.AsString+'_P'+IntToStr(QAllPayvast.RecNo)+'.'+Extention;
                DownloadFiles(FilePatch,Path+'\'+FileName);
                QAllPayvastImage.SaveToFile(Path+'\'+FileName);
              end;
              QAllPayvast.Next;
            end;// end of while not dm.Get_LetterData_by_LetterID.Eof  do
          end;// end of if not dm.Get_LetterData_by_LetterID.IsEmpty then
        end;
//Commented By Hamed_Ansari_981205_Start
//            Dm.Get_All_Letter.Next;
//        end;
//        Dm.Get_All_Letter.Locate('LetterID',LetterID,[]);
//        Dm.Get_All_Letter.EnableControls;
//Commented By Hamed_Ansari_981205_End
        ShowMsgString('������ ����� ��');
      end;// end of if SelectDirectory('����� ���� ��� ����� ���� ��','',Path) then
    end
    else     // ���� ���� ��� �������
    begin
      LetterID:= Dm.Get_All_LetterLetterID.AsInteger;
      if SelectDirectory('����� ���� ��� ����� ���� ��','',Path) then
      begin
        Dm.Get_All_Letter.DisableControls;
        with QAllPayvast do
        begin
          for i := 0 to lettersDbGrid.SelectedRows.Count-1 do
          begin
            Dm.Get_All_Letter.GotoBookmark(pointer(lettersDbGrid.SelectedRows.Items[i]));
            Close;
            Parameters.ParamByName('LetterID').Value:=Dm.Get_All_LetterLetterID.AsInteger;
            Open;
            if not QAllPayvast.IsEmpty then
            begin
              while not QAllPayvast.Eof do
              begin
                Extention := Trim(QAllPayvastExtentionName.AsString);
                if Trim(Extention)<>'' then
                begin
                  if UpperCase(Extention)='TXT' then
                    Extention := 'DOC';
                    FileName:='Andi'+IntToStr(Dm.Get_All_LetterIndicatorID.AsInteger)+'_P'+IntToStr(QAllPayvast.RecNo)+'.'+Extention;
                    QAllPayvastImage.SaveToFile(Path+'\'+FileName);
                  end;
                  QAllPayvast.Next;
                end;// end of while not dm.Get_LetterData_by_LetterID.Eof  do
              end; // end of if not dm.Get_LetterData_by_LetterID.IsEmpty then
            end; //End of For i:= 0 to...
          end;

          Dm.Get_All_Letter.Locate('LetterID',LetterID,[]);
          Dm.Get_All_Letter.EnableControls;
          ShowMsgString('������ ����� ��');
        end;
    end;
end;

procedure TMainForm.acDefineColorExecute(Sender: TObject);
begin
  FDefineColor := TFDefineColor.Create(Application);
  FDefineColor.ShowModal;
end;

procedure TMainForm.acFillUserMemoExecute(Sender: TObject);
begin
  inherited;
  FFillUserMemo:=TFFillUserMemo.Create(Application);
  FFillUserMemo.ShowModal;
end;

procedure TMainForm.Action6Execute(Sender: TObject);
begin
  inherited;
  Application.CreateForm(TfrmRecommites, frmRecommites);
  frmRecommites.ShowModal;
  frmRecommites.Free;
end;

procedure TMainForm.Action7Execute(Sender: TObject);
begin
  inherited;
//   HelpViewer := THelpViewer.Create(Application);
//   HelpViewer.Show;
end;

procedure TMainForm.ALetterDataTextSearchExecute(Sender: TObject);
begin
  inherited;
  TextSearchF:=TTextSearchF.Create(Application);
  TextSearchF.ShowModal;
end;

procedure TMainForm.Button1Click(Sender: TObject);
begin
  inherited;
  // if ALetterDataTextSearch.Visible then ShowMessage('true') else ShowMessage('false');
//ShellExecute(Handle, 'open','\\192.168.88.39\d\Archive\DataFile\FS\003e7ad6-178a-43be-b179-fe608546c803\afad8837-77f7-4fc8-ba1d-97c49b4a8e9f\00002aba-0000012a-0003', nil, nil, SW_SHOWNORMAL) ;
//ShellExecute(Handle, 'open','\\Desktop-ookhqdn\mssqlserver\datafile\DocumentStore\1.jpg', nil, nil, SW_SHOWNORMAL) ;
//                             \\Desktop-ookhqdn\mssqlserver\datafile\DocumentStore\1.jpg
end;

procedure TMainForm.check;
var
   rAttrib : TTextAttributes;
   lines   : tstrings;
   i : integer;
begin
  if (StrLen(pchar(trim(edtWord.Text)))>0)and(dm.Get_All_Letter.RecordCount>0) then
  begin
    Redt.Visible := true;
    redt.Align := alClient;
    DBMemo1.Visible := false;
    REdt.Lines.Clear;
    lines := TStringList.create();
    lines.Text := dm.YeganehConnection.execute('SELECT TypeText  FROM LetterText WHERE LetterID='+dm.Get_All_LetterLetterID.AsString).Fields[0].Value;
 {  qryKeyWords.Close;
   qryKeyWords.Open;     }
    for i := 0 to lines.Count-1 do
      if CheckKeyWords(lines[i]) then
        redt.Lines.Add(lines[i]);
    rAttrib := TTextAttributes.Create(RichEdit1,atDefaultText);
    rAttrib.Color := clBlue;
    rAttrib.Size := 10;
    rAttrib.Style := [fsBold,fsItalic];
    SetTextColor(redt,trim(edtWord.Text),rAttrib);
  end
  else
  begin
    DBMemo1.Visible := true;
    DBMemo1.Align := alClient;
    redt.Visible := false;
  end;
end;

function TMainForm.CheckKeyWords(line: string): boolean;
begin
  Result := false;
  if CheckStrInLine(edtWord.Text,line) then
    result := true
end;

function TMainForm.CheckStrInLine(str: string; line : string) : boolean;
begin
  if pos(str,line)>0 then
    result := true
  else
    result := false;
end;

procedure TMainForm.SetTextColor(oRichEdit : TRichEdit; sText : String; rAttributes : TTextAttributes);
var
   iPos : Integer;
   iLen : Integer;
   Format: CHARFORMAT2;
begin
  FillChar(Format, SizeOf(Format), 0);
  Format.cbSize := SizeOf(Format);
  Format.dwMask := CFM_BACKCOLOR;
  Format.crBackColor := clYellow;
  iPos := 0;
  iLen := Length(oRichEdit.Lines.Text) ;
  iPos := oRichEdit.FindText(sText, iPos, iLen, []);

  while iPos <> -1 do
  begin
    oRichEdit.SelStart := iPos;
    oRichEdit.SelLength := Length(sText) ;
    oRichEdit.SelAttributes.Color := rAttributes.Color;
    oRichEdit.SelAttributes.Size := rAttributes.Size;
    oRichEdit.SelAttributes.Style := rAttributes.Style;
    oRichEdit.SelAttributes.Name := rAttributes.Name;
    //oRichEdit.SelText := sText;
    oRichEdit.Perform(EM_SETCHARFORMAT, SCF_SELECTION, Longint(@Format));
    iPos := oRichEdit.FindText(sText,iPos + Length(sText),iLen, []) ;
  end;
end;

procedure TMainForm.RichEdtClick(Sender: TObject);
var
   _Wrap,_Text,_False,_True,_wdWord:OleVariant;
   i : integer;
begin
  if not _Word_Is_Opened then
    Dm.ExecGet_LetterWordFile(Dm.Get_All_Letter.FieldByName('Letterid').AsInteger,true)
  else
  begin
    dm.WordApplication.Activate();
    dm.WordApplication.Visible := true;
    dm.WordApplication.WindowState := 1;
  end;
  _False := false;
  _True := true;
  _Wrap := wdFindContinue;
  _Text := edtWord.Text;
  _wdWord := wdWord;
  dm.WordApplication.Selection.SetRange(0,0);
  dm.WordApplication.Selection.Range.HighlightColorIndex := wdYellow;

  for i := 1 to RicheditSelIndex do
    dm.WordApplication.Selection.Find.Execute({FindText}_Text
              ,{MatchCase}_False
              ,{MatchWholeWord}_False
              ,{MatchWildcards}_True
              ,{MatchSoundsLike}_False
              ,{MatchAllWordForms}_False
              ,{Forward}_True
              ,{Wrap}_Wrap
              ,{Format}_True
              ,{ReplaceWith}_Text
              ,{Replace}_False
              ,{MatchKashida}_False
              ,{MatchDiacritics}_False
              ,{MatchAlefHamza}_False
              ,{MatchControl}_False);

  dm.WordApplication.Options.DefaultHighlightColorIndex := wdYellow;
  dm.WordApplication.Selection.Find.Replacement.Highlight := _True;
  dm.WordApplication.Selection.Find.Execute({FindText}_Text
              ,{MatchCase}_False
              ,{MatchWholeWord}_False
              ,{MatchWildcards}_True
              ,{MatchSoundsLike}_False
              ,{MatchAllWordForms}_False
              ,{Forward}_True
              ,{Wrap}_Wrap
              ,{Format}_True
              ,{ReplaceWith}_Text
              ,{Replace}_True
              ,{MatchKashida}_False
              ,{MatchDiacritics}_False
              ,{MatchAlefHamza}_False
              ,{MatchControl}_False);
  dm.WordApplication.Selection.setRange(0,0);
end;

Function TMainForm.NearestIndex(Text: string; Word: string): integer;
var
   i ,c: integer;
begin
  c := 0;
  i:= 1;
  while (i<>0)do
  begin
    i := Pos(Word,Text);
    Text := copy(text,i+length(Word),length(text)-i-length(word)+1);
    inc(c);
    i := Pos(Word,Text);
  end;
  result := c;
end;

procedure TMainForm.REdtMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
   ci, //Character Index
   lix, //Line Index
   co, //Character Offset
   k, j: Integer;
   Pt: TPoint;
   s: string;
begin
  with TRichEdit(Sender) do
  begin
    Pt := Point(X, Y) ;
    ci := Perform(Messages.EM_CHARFROMPOS, 0, Integer(@Pt)) ;

    if ci < 0 then
      Exit;

    lix := Perform(EM_EXLINEFROMCHAR, 0, ci) ;
    co := ci - Perform(EM_LINEINDEX, lix, 0) ;

    if -1 + Lines.Count < lix then
      Exit;

    s := Lines[lix];
    Inc(co) ;
    k := co;
    while (k > 0) and (s[k] <> ' ') do
      k:=k-1;

    Inc(co) ;
    j := co;
    while (j <= Length(s)) and (s[j] <> ' ') do
      Inc(j) ;

    s := Copy(s, k, j - k) ;
  end;
  RichEditCol := ci+k;
  RichEdtLine := lix;
end;

procedure TMainForm.REdtSelectionChange(Sender: TObject);
var
  selst ,sellen,len :integer;
  pos,count,start, selnum: integer;
begin
  selst :=TRichEdit(sender).SelStart;
  sellen := TRichEdit(sender).SelLength;
  len := length(TRichEdit(sender).Text);
  pos :=0;
  start :=0;
  count:=0;
  selnum:=0;
  if sellen <> 0 then
  begin
    repeat
      pos := TRichEdit(sender).FindText(Trim(TRichEdit(sender).SelText),start,len - pos,[stWholeWord]);
      if pos = -1 then
        break ;
      count:=count + 1 ;
      if selst = pos then
        selnum:= count;
      start := pos + sellen ;
    until false ;
    RicheditSelIndex := selnum;
  end;
end;

procedure TMainForm.MssDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  MyRect:TRect;
begin

  MssDBGrid1.DefaultRowHeight:=22;
  if (UpperCase(Column.FieldName)=UpperCase('Tasvir')) then
    if Dm.Get_All_Letterhas_Page.AsBoolean then
      MssDBGrid1.DrawImgInCell(Rect,DataCol,Column,State,0);

  if (UpperCase(Column.FieldName)=UpperCase('Word')) then
    if Dm.Get_All_Letterhas_WordPage.AsBoolean then
      MssDBGrid1.DrawImgInCell(Rect,DataCol,Column,State,1);

  if (UpperCase(Column.FieldName)=UpperCase('Other')) then
    if Dm.Get_All_Letterhas_file.AsBoolean then
      MssDBGrid1.DrawImgInCell(Rect,DataCol,Column,State,2);

  if (UpperCase(Column.FieldName)=UpperCase('Alarm')) then
    if Dm.Get_All_LetterHasLetterAlerm.AsInteger=1 then
    begin
      MssDBGrid1.DrawImgInCell(Rect,DataCol,Column,State,3);
    end
    else
      if Dm.Get_All_LetterHasLetterAlerm.AsInteger=2 then
      begin
        MssDBGrid1.DrawImgInCell(Rect,DataCol,Column,State,4);
      end;

  if (UpperCase(Column.FieldName)=UpperCase('meanAlarm')) then
  begin
    if Dm.Get_All_LetterHasLetterAlerm.AsInteger=2 then
      Column.Font.Color:=clMaroon
    else if Dm.Get_All_LetterHasLetterAlerm.AsInteger=1 then
      Column.Font.Color:=clGreen
    else
      Column.Font.Color:=clBlack;
 end;

  if (UpperCase(Column.FieldName)=UpperCase('RowColor')) then
    if dm.Get_All_LetterColor.AsInteger > 0 then
    begin
      MyRect.Left:= Rect.Left+2;
      MyRect.Right:= Rect.Right-2;
      MyRect.Top:= Rect.Top+2;
      MyRect.Bottom:= Rect.Bottom-2;
      MssDBGrid1.Canvas.Brush.Color:=TColor(dm.Get_All_LetterColor.AsInteger);
      MssDBGrid1.Canvas.FillRect(MyRect);
    end;
end;

procedure TMainForm.AImportDocumentExecute(Sender: TObject);
begin
  inherited;
  FmDocumentImport := TFmDocumentImport.Create(Application);
  FmDocumentImport.ShowModal;
end;

procedure TMainForm.N92Click(Sender: TObject);
VAR
  SORTSETINGFRM : TSORT_SETTING_FRM;
begin
  inherited;
  SORTSETINGFRM := TSORT_SETTING_FRM.Create(Self);
  SORTSETINGFRM.ShowModal;
  SORTSETINGFRM.Free;
end;

procedure TMainForm.SHOW_SHORT_CUTS_FRMExecute(Sender: TObject);
VAR
  FRM : TSHORT_CUTS_LIST_FRM;
begin
  FRM := TSHORT_CUTS_LIST_FRM.Create(Application);
  FRM.ShowModal;
  FRM.Free;
end;

procedure TMainForm.HEADClick(Sender: TObject);
begin
  RefreshQuery;
end;

procedure TMainForm.Action9Execute(Sender: TObject);
VAR
  FRM : TVERSION_INFO_FRM;
begin
  FRM := TVERSION_INFO_FRM.Create(NIL);
  FRM.VERSION_LIST.Text := _SoftVersion ;
  FRM.REFRESH_VERSION_INFO(_SoftVersion);
  FRM.ShowModal;
  FRM.Close;
end;

procedure TMainForm.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if DBEdit1.Text <> '' then
     ArchiveFolderID := StrToInt(DBEdit1.Text);
    // if archiveFolderID < 0 then
   //     archiveFolderID := 0;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
VAR
  SRCH_FRM : TSEARCH_SHARHE_PEYVAST_FRM;
begin
  SRCH_FRM := TSEARCH_SHARHE_PEYVAST_FRM.Create(Self);
  SRCH_FRM.ShowModal;
  FreeAndNil(SRCH_FRM);
end;

procedure TMainForm.SpeedButton2Click(Sender: TObject);
VAR
  SRCH : TSEARCH_IN_PDF_FRM;
begin
  inherited;
  SRCH := TSEARCH_IN_PDF_FRM.Create(Self);
  SRCH.ShowModal;
  FreeAndNil(SRCH);
end;

procedure TMainForm.SpinEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_Return then
    RefreshQuery;
end;

procedure TMainForm.N93Click(Sender: TObject);
begin
  inherited;
  ValueSecid := 1;
  SecChange:=TSecChange.Create(Application);
  SecChange.ShowModal;
end;

function TMainForm.DownloadFiles(_URL,_NewFile: String): String;
var
  FileName:string;
begin

// if not  DirectoryExists('C:\Temp\') then CreateDir('C:\Temp\');

  FileName:='C:\Temp\'+FormatDateTime('HHMMSS',now)+ExtractFileExt(_URL);
  with IdFTP1 do
  begin
    Host:=_DownloadSetting._FtpIP;
    Username:=_DownloadSetting._FtpUserName;
    Password:=_DownloadSetting._FtpPassword;
    try
      Connect;
      if Connected then
        Get(_URL,_NewFile);
    except

    end;
    Disconnect;
  end;
end;

procedure TMainForm.ItializeDownloadSetting;
begin
  _BaseSQLConnection:=TBaseSQLConnection.Create;
  _DownloadSetting._HttpUrl:=_BaseSQLConnection.GetKeyvalue('HttpUrl');
  _DownloadSetting._FtpIP:=_BaseSQLConnection.GetKeyvalue('FtpIP');
  _DownloadSetting._FtpUserName:=_BaseSQLConnection.GetKeyvalue('FtpUserName');
  _DownloadSetting._FtpPassword:=_BaseSQLConnection.GetKeyvalue('FtpPassword');
end;

procedure TMainForm.lettersDbGridCellClick(Column: TColumn);
begin
  inherited;
  Dm.SelectLetter := Dm.Get_All_LetterLetterID.AsString;
end;

procedure TMainForm.AUpdateSoftwareExecute(Sender: TObject);
begin
  inherited;
  Dm.OnlineUpdate(Dm.SoftwareLockNumber,Dm.SoftwareVersion);
end;

procedure TMainForm.UpAndDownBtn2Click(Sender: TObject);
begin
  inherited;
  pnlInformation.Visible := False ;
end;

procedure TMainForm.k1Click(Sender: TObject);
begin
  inherited;
  pnlInformation.Visible := True ;
end;

procedure TMainForm.pnlSearchAfterClose(Sender: TObject);
begin
  inherited;
  GroupingPanel.Hide ;
  Splitter2 .Hide ;
end;

procedure TMainForm.pnlArchiveAfterClose(Sender: TObject);
begin
  inherited;
  GroupingPanel.Hide ;
  Splitter2 .Hide ;
end;

procedure TMainForm.SetStatisticMode(const Value: boolean);
begin
  FStatisticMode := Value;
  if FStatisticMode then
    PSearch.Hide
  else  PSearch.Show;
end;

end.
