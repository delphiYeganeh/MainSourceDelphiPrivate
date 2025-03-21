unit Dmu;

interface

uses
  Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList, ComObj,
   imageenview, imageen, imageenio, iemview, YDbgrid,
   //ARM LOCK
   // ��� ��� ������ ����
   Math, ARM_TLB, {untARMDongle, ARMDongleCore , Unit3 ,} businessLayer, ShowmessageU ,
   U_ENTER_IP_ADDRESS_FRM ,U_LOCK_ERROR_FRM, TINYLib_TLB,ShellApi, BaseUnits, uUpdateDbScripts, IdHTTP, IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL;
   //----------------------------------------------

type
  TDm = class(TDataModule)
    ReceiveTypes: TADOTable;
    Signers: TADODataSet;
    DToOrganizations: TDataSource;
    DSigner: TDataSource;
    Urgenceis: TADOTable;
    Classifications: TADOTable;
    Select_LetterReCommite: TADOStoredProc;
    Accesses: TADOTable;
    Users: TADOTable;
    LetterImages: TImageList;
    Actions: TADOTable;
    ApplicationForms: TADOTable;
    DActions: TDataSource;
    DApplicationForms: TDataSource;
    UserSettings: TADODataSet;
    AccessesID: TWordField;
    AccessesTitle: TWideStringField;
    DAccesses: TDataSource;
    DActionsAccess: TDataSource;
    Dusers: TDataSource;
    ApplicationFormsID: TWordField;
    ApplicationFormsTitle: TWideStringField;
    ActionsAccess: TADODataSet;
    ActionsAccessFormTag: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    YeganehConnection: TADOConnection;
    DLetterTemplate: TDataSource;
    LetterTemplate: TADODataSet;
    LetterTemplateDoc: TADODataSet;
    DLetterTemplateDoc: TDataSource;
    RecommiteTypes: TADOTable;
    RecommiteTypesID: TWordField;
    RecommiteTypesTitle: TWideStringField;
    RecommiteTypesReceiveMode: TBooleanField;
    RecommiteTypesInnerOrganize: TBooleanField;
    UsersFromOrgTitle: TWideStringField;
    ErrorMessage: TADODataSet;
    ApplicationEvents: TApplicationEvents;
    ErrorMessageErrorid: TLargeintField;
    ErrorMessageErrorMessage: TWideStringField;
    ErrorMessageErrorDate: TWideStringField;
    ErrorMessageUserCode: TIntegerField;
    ErrorMessageFarsiMessage: TWideStringField;
    ErrorMessageShowMessage: TBooleanField;
    LetterTemplateDocID: TAutoIncField;
    LetterTemplateDocDocument: TBlobField;
    LetterTemplateDocTitle: TWideStringField;
    Sentenses: TADOTable;
    DSentenses: TDataSource;
    SentensesID: TAutoIncField;
    SentensesSentenseName: TWideStringField;
    SentensesSentensValue: TWideStringField;
    LetterTemplateID: TAutoIncField;
    LetterTemplateTitle: TWideStringField;
    Secretariats: TADOTable;
    SecretariatsSecID: TIntegerField;
    SecretariatsSecTitle: TWideStringField;
    UserSecs: TADODataSet;
    UserSecsUserId: TIntegerField;
    UserSecsSecId: TIntegerField;
    UserSecsSecTitle: TWideStringField;
    SystemSettings: TADODataSet;
    LetterFormats: TADOTable;
    LetterFormatsCode: TIntegerField;
    LetterFormatsTitle: TWideStringField;
    Tables: TADOTable;
    TablesTableId: TWordField;
    TablesTableName: TWideStringField;
    TablesDescription: TWideStringField;
    DTables: TDataSource;
    Get_LetterWordFile: TADOStoredProc;
    Timer: TTimer;
    ToOrganizations: TADODataSet;
    ToOrganizationsTitle: TWideStringField;
    ToOrganizationsPhone: TWideStringField;
    ToOrganizationsFax: TWideStringField;
    ToOrganizationsEmail: TWideStringField;
    ToOrganizationsResponsibleStaffer: TWideStringField;
    ToOrganizationsParentID: TIntegerField;
    ToOrganizationsIsActive: TBooleanField;
    ToOrganizationsPreCode: TWideStringField;
    ToOrganizationsIsInnerOrg: TBooleanField;
    ToOrganizationsID: TIntegerField;
    FromOrganizations: TADODataSet;
    FromOrganizationsTitle: TWideStringField;
    FromOrganizationsParentID: TIntegerField;
    FromOrganizationsPhone: TWideStringField;
    FromOrganizationsFax: TWideStringField;
    FromOrganizationsEmail: TWideStringField;
    FromOrganizationsResponsibleStaffer: TWideStringField;
    FromOrganizationsIsActive: TBooleanField;
    FromOrganizationsPreCode: TWideStringField;
    FromOrganizationsIsInnerOrg: TBooleanField;
    SignersID: TIntegerField;
    SignersTitle: TWideStringField;
    SignersParentID: TIntegerField;
    SignersPhone: TWideStringField;
    SignersFax: TWideStringField;
    SignersEmail: TWideStringField;
    SignersResponsibleStaffer: TWideStringField;
    SignersIsActive: TBooleanField;
    SignersPreCode: TWideStringField;
    SignersIsInnerOrg: TBooleanField;
    UserShortCut: TADODataSet;
    Select_LetterReCommitefromorgtitle: TWideStringField;
    Select_LetterReCommiteResponsibleStaffertitle: TWideStringField;
    DGet_All_Letter: TDataSource;
    Select_LetterReCommiteRecommiteID: TAutoIncField;
    Select_LetterReCommiteLetterID: TIntegerField;
    Select_LetterReCommiteID: TSmallintField;
    Select_LetterReCommiteType: TWordField;
    Select_LetterReCommiteParentId: TSmallintField;
    Select_LetterReCommiteOrgID: TIntegerField;
    Select_LetterReCommiteParaph: TWideStringField;
    Select_LetterReCommiteRecommiteDate: TStringField;
    Select_LetterReCommiteUserID: TWordField;
    Select_LetterReCommiteIsCopy: TBooleanField;
    Select_LetterReCommiteProceeded: TBooleanField;
    Select_LetterReCommiteProceedDate: TStringField;
    Select_LetterReCommitestaffmemo: TWideStringField;
    Select_LetterReCommiteviewdate: TStringField;
    Select_LetterReCommiteorgtitle: TWideStringField;
    Select_LetterReCommiteIsInnerOrg: TBooleanField;
    Get_LetterWordFileLetterDataID: TAutoIncField;
    Get_LetterWordFileLetterID: TIntegerField;
    Get_LetterWordFilePageNumber: TWordField;
    Get_LetterWordFileImage: TBlobField;
    Get_LetterWordFileextention: TWordField;
    DUrgenceis: TDataSource;
    DClassifications: TDataSource;
    DReceiveTypes: TDataSource;
    LetterTypes: TADOTable;
    DLetterTypes: TDataSource;
    DLetterFormats: TDataSource;
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsCode: TWideStringField;
    ToOrganizationsCode: TWideStringField;
    SignersCode: TWideStringField;
    Select_LetterReCommiteOrgStaff: TWideStringField;
    TemplateGroup: TADOTable;
    DTemplateGroup: TDataSource;
    TemplateGroupTemplateGroupID: TAutoIncField;
    TemplateGroupTemplateGroupTitle: TWideStringField;
    LetterTemplateTemplateGroupID: TIntegerField;
    LetterTemplateTemplateGroupTitle: TStringField;
    UserTemplateGroup: TADODataSet;
    UserTemplateGroupUserTemplateGroupID: TAutoIncField;
    UserTemplateGroupTemplateGroupID: TIntegerField;
    UserTemplateGroupUserID: TIntegerField;
    UserTemplateGroupTemplateGroupTitle: TStringField;
    DUserTemplateGroup: TDataSource;
    Select_LetterReCommiteDeadLineDate: TStringField;
    Extention: TADOTable;
    DExtention: TDataSource;
    ExtentionExtentionID: TAutoIncField;
    ExtentionExtentionTitle: TWideStringField;
    ExtentionExtention: TStringField;
    ExtentionIsSystem: TBooleanField;
    Get_UserExtention_by_UserID: TADOStoredProc;
    Get_UserExtention_by_UserIDUserExtentionID: TAutoIncField;
    Get_UserExtention_by_UserIDUserId: TIntegerField;
    Get_UserExtention_by_UserIDExtentionID: TIntegerField;
    Get_UserExtention_by_UserIDReaderApplication: TWideStringField;
    Get_UserExtention_by_UserIDextentionTitle: TStringField;
    Get_LetterData_by_LetterDataID: TADOStoredProc;
    Get_LetterData_by_LetterDataIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterDataIDImage: TBlobField;
    Get_LetterData_by_LetterID: TADOStoredProc;
    Get_LetterData_by_LetterIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterIDdescription: TWideStringField;
    Get_LetterData_by_LetterIDExtentionTitle: TWideStringField;
    Get_LetterData_by_LetterIDExtention: TWordField;
    Get_UserExtention_by_UserIDextention: TStringField;
    Get_LetterData_by_LetterIDletterid: TIntegerField;
    Get_LetterData_by_LetterIDReaderApplication: TStringField;
    Get_LetterData_by_LetterIDExt: TStringField;
    UserShortCutUserID: TIntegerField;
    UserShortCutkeyText: TWideStringField;
    UserShortCutKeytitle: TStringField;
    UserShortCutaltKey: TStringField;
    UserShortCutuserShortCutID: TAutoIncField;
    Get_ReferenceTableData_By_TableID: TADOStoredProc;
    Get_ReferenceTableData_By_TableIDReferenceTableDataID: TAutoIncField;
    Get_ReferenceTableData_By_TableIDTableID: TIntegerField;
    Get_ReferenceTableData_By_TableIDDataID: TWordField;
    Get_ReferenceTableData_By_TableIDDataTitle: TWideStringField;
    ReferenceTables: TADOTable;
    WordField1: TWordField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DReferenceTables: TDataSource;
    FieldType: TADOTable;
    FieldTypeFieldTypeID: TWordField;
    FieldTypeFieldTypeTitle: TWideStringField;
    DFieldType: TDataSource;
    Renter: TADODataSet;
    DRenter: TDataSource;
    RenterRenterID: TAutoIncField;
    RenterRenterTitle: TWideStringField;
    RenterRenterComment: TWideStringField;
    SPAddFileToDB: TADOStoredProc;
    SecretariatsPreCode: TWideStringField;
    SecretariatsArchiveCenterID: TIntegerField;
    ArchiveCenter: TADOTable;
    ArchiveCenterArchiveCenterID: TIntegerField;
    ArchiveCenterArchiveCenterTitle: TWideStringField;
    SecretariatsArchiveCenterTitle: TStringField;
    Get_LetterData_by_LetterIDExtentionName: TStringField;
    ActionsFormTag: TWordField;
    ActionsActionName: TWideStringField;
    ActionsTitle: TWideStringField;
    ActionsAccessActionName: TWideStringField;
    ClassificationsID: TWordField;
    ClassificationsTitle: TWideStringField;
    Get_All_Letter: TADOStoredProc;
    Get_All_LetterLetterID: TAutoIncField;
    Get_All_LetterIndicatorID: TIntegerField;
    Get_All_LetterMYear: TWordField;
    Get_All_LetterLetter_Type: TWordField;
    Get_All_Letterletterformat: TWordField;
    Get_All_LetterIncommingNO: TWideStringField;
    Get_All_LetterFromOrgID: TIntegerField;
    Get_All_LetterToOrgID: TIntegerField;
    Get_All_LetterUrgencyID: TSmallintField;
    Get_All_LetterMemo: TWideStringField;
    Get_All_LetterRetroactionNo: TWideStringField;
    Get_All_LetterRegistrationDate: TStringField;
    Get_All_LetterFollowLetterNo: TWideStringField;
    Get_All_LetterToStaffer: TWideStringField;
    Get_All_LetterSentLetterID: TIntegerField;
    Get_All_LetterTemplateID: TIntegerField;
    Get_All_LetterHeaderID: TIntegerField;
    Get_All_LetterSenderTitle: TWideStringField;
    Get_All_LetterDeliverTitle: TWideStringField;
    Get_All_LetterLetterTypeTitle: TWideStringField;
    Get_All_LetterLetterRecommites: TWideStringField;
    Get_All_Letterhas_WordPage: TBooleanField;
    Get_All_LetterArchiveFolders: TWideStringField;
    Get_All_Letterhas_file: TBooleanField;
    Get_All_LetterRentStatus: TWordField;
    Get_All_LetterIncommingDate: TWideStringField;
    Get_All_LetterArchivePlaces: TWideStringField;
    Get_All_LettersendstatusTitle: TWideStringField;
    Get_All_LetterInnerNo: TWideStringField;
    Get_All_Letterhas_Page: TBooleanField;
    Get_All_LetterReceiveTypeID: TWordField;
    Get_All_LetterSecTitle: TWideStringField;
    Get_All_LetterIncommingMiladiDate_Calc: TStringField;
    Get_All_LetterClassificationsTitle: TWideStringField;
    Get_All_LetterAttachTitle: TWideStringField;
    Get_All_LetterVersionNumber: TStringField;
    Get_All_LetterVersionDate: TStringField;
    Get_All_LetterUserTitle: TWideStringField;
    Get_All_LetterArchiveFolderTitle: TWideStringField;
    Get_All_LetterHasLetterAlerm: TIntegerField;
    Get_All_LetterColor: TIntegerField;
    UsersId: TAutoIncField;
    UsersTitle: TWideStringField;
    UsersUserName: TWideStringField;
    UsersPassWord: TWideStringField;
    UsersFromOrgID: TIntegerField;
    UsersIsSecretariantStaffer: TBooleanField;
    UsersKartableGridInfo: TBlobField;
    UsersDabirGridInfo: TBlobField;
    UsersHasSecureLetterAccess: TBooleanField;
    qtemp: TADOQuery;
    Get_All_LetterUserMemo: TWideStringField;
    Get_All_LetterUserMemo1: TWideStringField;
    Get_All_LetterUserMemo2: TWideStringField;
    qDefineColors: TADOQuery;
    qDefineColorsID: TAutoIncField;
    qDefineColorsColor: TStringField;
    qDefineColorsDescriptions: TStringField;
    qSelectedColor: TADOQuery;
    qSelectedColorColorID: TIntegerField;
    qSelectedColorColor: TStringField;
    QAllSecretariat: TADOQuery;
    QAllSecretariatSecID: TAutoIncField;
    QAllSecretariatSecTitle: TWideStringField;
    dsQAllSecretariat: TDataSource;
    qDefineColorsAccessDesc: TStringField;
    qSelectedColorDescriptions: TStringField;
    UsersCanAttachColor: TBooleanField;
    UsersCanViewAllAttachPages: TBooleanField;
    Get_LetterData_by_LetterIDVersionNo: TStringField;
    Get_LetterData_by_LetterIDVersionDate: TStringField;
    QUserMemo: TADOQuery;
    QUserMemo1: TADOQuery;
    QUserMemo2: TADOQuery;
    QUserMemoID: TAutoIncField;
    QUserMemoUserMemo: TStringField;
    QUserMemo1ID: TAutoIncField;
    QUserMemo1UserMemo1: TStringField;
    QUserMemo2ID: TAutoIncField;
    QUserMemo2UserMemo2: TStringField;
    quAttach: TADOQuery;
    quAttachLetterDataID: TAutoIncField;
    quAttachLetterID: TIntegerField;
    quAttachPageNumber: TIntegerField;
    quAttachImage: TBlobField;
    quAttachextention: TWordField;
    quAttachDescription: TWideStringField;
    quAttachLastUpdate: TDateTimeField;
    quAttachListItemsID: TIntegerField;
    quAttachIsCorrectedImage: TBooleanField;
    quAttachColorID: TIntegerField;
    quAttachVersionNo: TStringField;
    quAttachVersionDate: TStringField;
    GetfieldValueByLetterID: TADOStoredProc;
    GetfieldValueByLetterIDLetterFieldValueID: TAutoIncField;
    GetfieldValueByLetterIDLetterID: TIntegerField;
    GetfieldValueByLetterIDFieldID: TIntegerField;
    GetfieldValueByLetterIDorder: TIntegerField;
    GetfieldValueByLetterIDDescription: TStringField;
    GetfieldValueByLetterIDFieldTypeID: TWordField;
    GetfieldValueByLetterIDReferenceTableID: TIntegerField;
    DGetfieldValueByLetterID: TDataSource;
    Get_All_LetterLUID: TIntegerField;
    qDC: TADOQuery;
    dDC: TDataSource;
    UsersCanViewAllRecommites: TBooleanField;
    UsersChangeByAdmin: TBooleanField;
    UsersBeginActiveDate: TStringField;
    UsersEndActiveDate: TStringField;
    UserSecsAccessId: TIntegerField;
    Get_All_LetterSubject: TWideStringField;
    SHOW_ALL_LETTER: TADOQuery;
    DSHOW_ALL_LETTER: TDataSource;
    Get_All_LetterRenterTitle: TStringField;
    Get_All_LetterBeginDate: TStringField;
    Get_All_LetterEndDate: TStringField;
    Get_LetterData_by_LetterDataIDPageNumber: TIntegerField;
    ADOQuery1: TADOQuery;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    BlobField1: TBlobField;
    WordField2: TWordField;
    WideStringField3: TWideStringField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    BooleanField1: TBooleanField;
    IntegerField4: TIntegerField;
    StringField2: TStringField;
    ADOQuery2: TADOQuery;
    Get_LetterData_by_LetterDataIDPath: TStringField;
    File_Address: TADOQuery;
    File_AddressID: TIntegerField;
    File_AddressAddress: TStringField;
    qSelectedColorParent: TIntegerField;
    qSelectedColorParentName: TStringField;
    qDefineColorsParentName: TStringField;
    qDefineColorsParent: TIntegerField;
    UsersShowAllDoc: TBooleanField;
    qryGetDbVer: TADOQuery;
    GetfieldValueByLetterIDFieldValue: TMemoField;
    WordApplication: TWordApplication;
    spIns_laterdata: TADOStoredProc;
    qryAutoRunScript: TADOQuery;
    UsersDefualtSecretariatID: TIntegerField;
    UsersAccessID: TIntegerField;
    UsersDefaultSec: TStringField;
    Get_All_LetterSecretariatID: TIntegerField;
    ImageList_MainNew: TImageList;
    LetterImages_New: TImageList;

    function  GetValue(variableID:word):variant;
    Procedure SetValue(VariableId:word;value:variant);
    function  GetActionAccess(ActionName:String;FormTag:word):Boolean;
    procedure GetValues;
    function  LastIndicatorID(Letter_type:integer;LetterFormat:byte):Integer;
    procedure Connect;
    function  GetServerTime:string;
    function  GetServerDate:tdatetime;
    function  MemoCondition(MemoText:string;FieldName:String):String;
    function  isNo(s:string;var No:string):boolean;
    function  isIndicator(s:string;var FromIndicator,ToIndicator:word):boolean;
    procedure TreeLevel2Expanding(TreeView:ttreeView;Node: TTreeNode;F,s:tadotable);
    function  NewToOrganization(Title,Responsible:wideString):integer;
    function  NewRenter(Title:wideString):integer;
    procedure DataModuleCreate(Sender: TObject);
    Procedure SetSecID(value:Integer);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure UserSecsAfterInsert(DataSet: TDataSet);

    procedure OpenWordFile(Filename:string;ReadOnly : boolean);
    procedure OpenWordFile_2(Filename:string;ReadOnly : boolean);

    procedure TimerTimer(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    function   Y_InputQuery (const ACaption,Adefault: string; var Value: string): Boolean;
    function StringInArray(Value: string; Strings: array of string): Boolean;
    function PasswordPolicy(StrPass :String): Boolean;
    Procedure  ExecGet_All_Letter(archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;
    top:integer;where:widestring; WordText : widestring; AttachText : widestring; TYP : String ; TOP_ : Integer);
    procedure  InsertTextIntoLetter(w:twordapplication;LetterID:integer);
    procedure Select_LetterReCommiteBeforePost(DataSet: TDataSet);
    procedure UserTemplateGroupAfterInsert(DataSet: TDataSet);
    procedure UserShortCutCalcFields(DataSet: TDataSet);
    procedure ExecCommand(s:string);
    procedure Refresh_ReferenceTableData(TableID:integer);
    Procedure SetCurrentMyear(value:Integer);
    procedure UsersBeforeDelete(DataSet: TDataSet);
    Procedure Insert_LetterEdit(aLetterID:Integer;aStatement:String);
    procedure Get_All_LetterIncommingNOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qDefineColorsBeforePost(DataSet: TDataSet);
    procedure Get_All_LetterCalcFields(DataSet: TDataSet);
    procedure Get_All_LetterBeforeOpen(DataSet: TDataSet);
    procedure UsersAfterInsert(DataSet: TDataSet);

  private
    { Private declarations }
    FSecID:Integer;
    function InsertToLetData(aFile, Desc: string; ext,  LetID: integer): boolean;

   //ARM LOCK
   // ��� ��� ������ ����
    function ByteArrayToVariant( const A: array of byte ): Variant;
   //----------------------------------------------

    function IsTinyOk:Boolean;
    function GetLockIP:string;
  public
    ServerName:string;
    SoftwareLockNumber, SoftwareVersion : String;
    VersionFileList : TStringList;
    SelectLetter : String;
    ChangePassword:Boolean;
    CanChangeDoc:boolean;
    ReceiveSelect,
    SentSelect,
    BothSelect,

    SubjectRoot,
    SearchStResult,
    WordPath ,Orgname,

    UserMemo1,UserMemo2,UserMemo3,
    UserSubject,UserMainMemo,UserDocCaption,
    MainTableName,CodeField,TitleField:string;

    DeadlineForRecommite,
    DefaultRClassificationID,
    DefaultRUrgencyID    ,
    DefaultRFromOrgId  ,
    DefaultNumberOfPage ,

    DefaultRReceiveTypeID,
    BeginIndicator  :Word;

    DayInWeek ,
    InitialReceivedMode,
    InitialArchiveMode,
    DayInWeekForBackup ,
    InitialDisplyMode  :byte;

    SearchResult,
    MaxNumber_Of_Letter ,
    ArchiveOrgid,
    DefaultRentDays,
    SubjectOrder,
    BoardID:integer;
    _LetterID:integer;
    Refresh_PriodTime:integer;
    //Today : String;
    Insert_Log,
    ShowOriginalErrorMessage,
    UniqeIndicator,
    EqualAnswerIndicator,
    ShowSubjectCodeInTree,
    version,
    ArchiveList,
    FullTextSearch,
    Recommite_Copy,
    Use_Template,
    LetterHasArchiveCopy,
    HasJpg,
    AllowMultiUser,
    ChartorderbyTitle,
    ListFromorg,
    Enterkey :boolean;

    FocusedColor:Tcolor;
    MemoFont:TFont;
    keytext:string;
    fCurrentMyear:Integer;
    EditMode : Boolean;
    RgSizeImage_Value : Integer;
    _BaseSQLConnection:TBaseSQLConnection;
    UpdateSoftwareAvailable : Boolean;
    procedure OnlineUpdate(LockCode, Version : String);
    procedure RefreshTemplate;
    function GetSystemValue(I:integer):variant;
    Procedure SetSystemValue(VariableId:word;value:variant);
    Function FileName(secid:Integer;myear:Integer;indicatorid:integer):string;
    function Cdate(S:string):string;
    property SecID :Integer read fSecID write SetSecID;
    property CurrentMyear :Integer read  FCurrentMyear   write SetCurrentMyear;
    function  Search(Y:TYwhereEdit):integer;
    procedure SaveTemplateToFile;
    procedure Replace(var main:widestring;old,new:widestring);
    function  ExecGet_LetterWordFile(Letterid:integer;ReadOnly:boolean):boolean;
    procedure MakeSentRecommite(Letterformat,LetterID,FromorgID:integer);
    function  GetMaxLetterDataID : Integer;
    procedure OpenqSelectedColor(LetterID:Integer);
    Function  GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;Follow_Retroaction:widestring;var LetterID: integer;var ResultReceiveMode:boolean; SecreTariatID:Integer):boolean;
    function  ReplaceCharacter( s : widestring;old,new:Char):widestring;
    Procedure Open_GetfieldValueByLetterID(letterId:integer);
    Procedure ExportLetterField(letterId:integer;ExportType:byte);
    procedure OpenUserMemoQueries;
    procedure RefreshUserMemo;
    procedure RefreshUserMemo1;
    procedure RefreshUserMemo2;
    function  InsertToLetterData(FileNames : Tstrings; LetterID : Integer):integer;  overload;
    function  InsertToLetterData(aFileName: string; LetterID: Integer): integer;     overload;
    function  UpdateLetterData(FileNames : Tstrings; LetterDataID : Integer):integer;overload;
    function  UpdateLetterData(aFileName : string; LetterDataID : Integer):integer;  overload;
    function  UpdatePageNumbers(LetterID : Integer):boolean;
    function StringToPWide(  sStr: string;  var iNewSize: integer  ): PWideChar;
    function replacePWC(input: Pwidechar): Pwidechar;
    function getDelphiVer:String;
    function getDBVer:String;
    function HTTPGet(Url, Parameters:String):TStringList;
    { TODO -oparsa : 14030108 }
    procedure AutoUpdateDatabase;
    { TODO -oparsa : 14030108 }
    { TODO -oparsa : 14030524-bug340 }
    procedure SetWordOpen(LetterID ,UserID:integer);
    function OpendByAnotherUser(LetterID:integer):integer;
    procedure SetWordClosed(LetterID, UserID: integer);
    { TODO -oparsa : 14030524-bug340 }
  end;

Var
   Dm: TDm;
   _ArchiveCenterId:integer;
   _UserId, _MyDocs:integer;
   _CanAttachColor:Boolean;
   _CanViewAllAttachPages:Boolean;
   _CanViewAllRecommites:Boolean;
   _AccessID:byte;
   _AccessToClassifieldLetter:boolean;
   _DefaultSec:integer;
   _UserName:String;
   _DocumentCaption : string;
   _UserFromOrgID:integer;
   _ResultOrgID:integer;
   _ResultRenterID:integer;
   _ResultOrgTitle:WideString;
   _ResultOrgCode:WideString;
   _ResultOrgRespon:WideString;
   _UserLoginLogoutID:integer;
   _Word_Is_Opened : boolean;
   _Yeganeh,
   _Eyeganeh,
   _WordFileName:string;
   _year : integer;
   _ReadOnly : boolean;
   _TempPath:string;
   _ResultFolderID:integer;
   _DataBaseName:string;
   _Today:string;
   _SoftTitle:string;
   _SelectedRecommitesID : TStrings;
   _AppPath : String;
   _IniFilePathName : String;
   _DBName : String;
   _ApplicationPath : String;
   _IsServer : Boolean;
   _EXEDIR : string;
   _SoftVersion, _DbVersion : String;
   _SoftVersion1      :string;
   _CountError : Integer;
   { TODO -oparsa : 14030524-bug340 }
   _AllowToEditWordFiles:boolean;
   _Dont_save_Word  :boolean;
   { TODO -oparsa : 14030524-bug340 }
   _Color1 : TColor ;
   _Color2 : TColor ;
   _Color3 : TColor ;
   _Color4 : TColor ;
   _Color5 : TColor ;
   _MainFont: String ;
   _ColorSetting : Integer;
   //ARM LOCK
   // ��� ��� ������ ����
//   _ARM_CoName, _ARM_IPServer, _ARM_AUSKey, _ARM_ReadKey, _ARM_WriteKey, _ARM_SafeKey1, _ARM_SafeKey2 : String;
//   _ARM_DongleCore_AESClass : AESClass;
   //----------------------------------------------

Const
  // _SoftVersion    = '7.0.0.6';
  //_SoftLastUpdate = '1396/06/29';
  //  _SoftVersion1    = '11.2.12.1';
    _SoftLastUpdate = '1403/10/02'; //by MRM.moghadam

   _Kartable = False;
   ShowLogo = True;
  ArrOfString1 : array [1..26] of string=('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
  ArrOfString2 : array [1..26] of string=('A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z');
  ArrOfString3 : array [1..33] of string=('�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�','�');
  ArrOfInteger : array [1..10] of string=('1','2','3','4','5','6','7','8','9','0');
  ArrOfSymbol : array [1..16] of string=('!','@','#','$','%','^','&','*','(',')','[',']','/','-','+','_');

{$R *.dfm}

implementation


uses YShamsiDate, Uconnect, LogOn, Settingsu, UMain,
     USearchTitle, YeganehDemo, YInputQuery,
     BaseUnit, StrUtils, U_ARM_LOCK_MSG_FRM;

Type
    Code = ^integer;
    Letter_Format = (Letters,Drafts,deleted);

function TDm.StringInArray(Value: string; Strings: array of string): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := Low(Strings) to High(Strings) do
  begin
    if (Value = Strings[I]) then
    begin
      Result:=True;
      exit
    end
    else
      Result := false;
  end;
end;

//----------------------------------------------
//ARM LOCK
// ��� ��� ������ ����
function TDm.ByteArrayToVariant( const A: array of byte ): Variant;
var
  p: Pointer;
begin
  Result := VarArrayCreate( [0,Length(A)-1 ], varByte );
  p:= varArrayLock( Result );
  try
    Move( A[0], p^, Length(A) );
  finally
    VarArrayUnlock( Result );
  end;
end;
//----------------------------------------------

function TDm.Search(Y:TYwhereEdit):integer;
begin
   SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
   With SearchAdoDataSet do
   begin
     SearchDataSet:=false;
     TableName:=Y.ListTable;
     CodeField:=y.CodeField;
     TitleField:=y.TitleField;
     SearchF.Connection:=y.Connection;
     ShowModal;
     Result:=SearchResult;
   end;
end;

procedure TDm.Connect;
begin
   Fconnect := TFconnect.Create(Application);
end;

{Ranjbar 89.06.06 ID=3}
{function  TDm.GetActionAccess(ActionTag,FormTag:word):boolean;
begin
   Result:=true;
   if ActionsAccess.Locate('ActionID;FormTag',VarArrayOf([1000*formtag+ActionTag,FormTag]),[]) then
      if not ActionsAccessHasAccess.AsBoolean then
         Result:=FALSE
end;}
function  TDm.GetActionAccess(ActionName:String;FormTag:word):Boolean;
begin
  Result := True;
  if ActionsAccess.Locate('ActionName;FormTag',VarArrayOf([ActionName,FormTag]),[]) then
    if not ActionsAccessHasAccess.AsBoolean then
      Result := False;
end;
//---

function TDm.GetValue(VariableId:word):Variant;
begin
  if UserSettings.Locate('variableId',VARIABLEID,[]) then
    try
      Result := UserSettings.fieldbyname('value').AsVariant
    except
      ShowMessage(IntToStr(variableID));
    end;
end;

Procedure  TDm.ExportLetterField(letterId:Integer;ExportType:Byte);
Var
  y:TydbGrid;
begin
  y := TYDBGrid.create(Application);
  Open_GetfieldValueByLetterID(letterId);
  y.DataSource := DGetfieldValueByLetterID;
  y.Columns[0].Title.Caption := '��� ����';
  y.Columns[1].Title.Caption := '�����';
  case ExportType of
    1: y.ExportToWord;
    2: y.ExportToExcel;
    3: y.ExportToText;
    4: y.ExportToAccess;
  end;
end;

Procedure  TDm.Open_GetfieldValueByLetterID(letterId:integer);
  begin
  with Dm.GetfieldValueByLetterID,parameters do
    begin
      Close;
      ParamByName('@letterId').value:=letterId;
      Open;
    end;
end;

procedure TDm.GetValues;
var
  S:String;
begin
  S := GetValue(2007);
  if Pos('_',s) <> 0 then
    MemoFont := StrToFont(S)
  else
    MemoFont := nil;
  DayInWeek := Exec_get_DayID_InWeek;

  FocusedColor := GetValue(1013);

  SubjectOrder := GetValue(627);
  ArchiveList := GetValue(626);

  Enterkey := GetValue(714);
  ShowSubjectCodeInTree := GetValue(726);

  ShowOriginalErrorMessage := GetValue(715);

  InitialReceivedMode := GetValue(742);
  InitialArchiveMode := GetValue(743);
  InitialDisplyMode := GetValue(744);

  DefaultRClassificationID := GetValue(102);
  DefaultRUrgencyID := GetValue(103);
  DefaultNumberOfPage := GetValue(105);
  DefaultRReceiveTypeID := GetValue(106);
  DefaultRFromOrgId := GetValue(113);
  ListFromorg := GetValue(114);
  ChartorderbyTitle := GetValue(115);

  DeadlineForRecommite := GetSystemValue(1);
  MaxNumber_Of_Letter := GetSystemValue(2);
  BeginIndicator := GetSystemValue(3);
  EqualAnswerIndicator := GetSystemValue(4);
  UniqeIndicator := GetSystemValue(5);
  Version := GetSystemValue(7);
  DayInWeekForBackup := GetSystemValue(8);
  ArchiveOrgid := GetSystemValue(9);
  DefaultRentDays := GetSystemValue(10);
  WordPath := GetSystemValue(11);
  SubjectRoot := GetSystemValue(12);
  if DayInWeek <> DayInWeekForBackup then
    SetSystemValue(13,false);;
  BoardID := GetSystemValue(14);

  UserMemo1 := Trim(GetSystemValue(15));
  UserMemo2 := Trim(GetSystemValue(45));
  UserMemo3 := Trim(GetSystemValue(46));

  CanChangeDoc := GetSystemValue(51);
  if CanChangeDoc then
  begin
    UserDocCaption := Trim(GetSystemValue(52));
    UserSubject := Trim(GetSystemValue(53));
    UserMainMemo := Trim(GetSystemValue(54));
  end;

  Orgname := GetSystemValue(16);
  FullTextSearch := GetSystemValue(17);
  LetterHasArchiveCopy := GetSystemValue(18);
  MainTableName := GetSystemValue(24);
  TitleField := GetSystemValue(25);
  CodeField := GetSystemValue(26);
  //HasJpg:=GetValue(55);
  HasJpg := GetSystemValue(27);

  Refresh_PriodTime := GetSystemValue(28);
  AllowMultiUser := GetSystemValue(29);
  Recommite_Copy := GetSystemValue(30);
  Use_template := GetSystemValue(31);
  Insert_Log := GetSystemValue(32);
//--------------------���� ����� ������ ������----------------

  RgSizeImage_Value := GetSystemValue(2104);
//--------------------����� ����� ������ ������---------------

  if Refresh_PriodTime = 0 then
    Refresh_PriodTime := 300;
end;


Procedure TDm.SetSystemValue(VariableId:word;value:variant);
begin
  with SystemSettings do
    if Locate('variableId',VariableId,[]) then
    begin
      Edit;
      FieldByName('value').AsVariant:=value;
      Post;
    end
    else
    begin
      Insert;
      FieldByName('UserId').AsInteger:=-1;
      FieldByName('variableId').AsInteger:=VariableId;
      FieldByName('value').AsVariant:=value;
      Post;
    end;
end;

Procedure TDm.SetValue(VariableID:word ; value:Variant);
begin
  With UserSettings do
  begin
    Close;
    Parameters.ParamByName('UID').Value := _UserId;
    Open;
    if Locate('variableId',VARIABLEID,[]) then
    begin
      Edit;
      FieldByName('value').AsVariant:=value;
      Post;
    end
    else
    begin
      Insert;
      FieldByName('UserId').AsInteger := _UserId;
      FieldByName('variableId').AsInteger := VariableId;
      FieldByName('value').AsVariant := value;
      Post;
    end;
  end;
end;

function TDm.LastIndicatorID(Letter_type:integer;LetterFormat:byte):Integer;
begin
  Result:=Exec_get_LastIndicatorID(letter_type,LetterFormat,dm.CurrentMyear,Secid);
end;

function TDm.GetServerTime:string;
begin
  Result:=Exec_get_NowTime;
end;

function TDm.GetServerDate:tdateTime;
begin
  Result:=Exec_get_NowDate;
end;

function TDm.isIndicator(s:string;var FromIndicator,ToIndicator:word):boolean;
var
  p : Byte;
  f, t : String;
begin
  result := False;
  p := pos('��', s);
  if p <> 0 then
  begin
    F := Trim(Copy(s, 1, p-1));
    T := Trim(Copy(s, p+2, length(s)-p));
    if (is_integer(f) and is_integer(t)) then
    begin
      FromIndicator:=StrToInt(f);
      ToIndicator:=StrToInt(t);
      result:=true;
    end;
  end
  else
  if is_integer(s) then
  begin
    result:=true;
    FromIndicator:=StrToInt(s);
    ToIndicator:=StrToInt(s);
  end;
end;

function TDm.isNo(s:string;var No:string):boolean;
begin
  result:=false;
  s:=yeganehtrim(s);

  if (copy(s,1,2)='�:') then
  begin
    Result:=true;
    No:=trim(copy(s,3,length(s)-2));
  end;

  if (copy(s,1,3)='� :') then
  begin
    Result:=true;
    No:=trim(copy(s,4,length(s)-3));
  end;
end;

function TDm.MemoCondition(MemoText:string;FieldName:string):String;
var
  memoItems:TStrings;
  i:byte;
begin
  MemoText:=YeganehTrim(MemoText);
  if length(MemoText)>2 then
    if (MemoText[1]='"') and (MemoText[length(MemoText)]='"') then
    begin
      Result:='(RTRIM(LTRIM(REPLACE(REPLACE(' + FieldName + ', NCHAR(1740), NCHAR(1610))), NCHAR(1705), NCHAR(1603))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
              copy(MemoText, 2, length(MemoText)-2) + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))';
      //Result:='('+FieldName+' like ''%'+copy(MemoText,2,length(MemoText)-2)+'%'')';
      exit;
    end;
  memoItemS:=TStringList.Create;
  Setwords(MemoText,#32,memoItems);
  Result:='';
  if memoItems.Count>0 then
    for i:=0 to memoItems.Count-1 do
      if Result<>'' then
        Result := Result + ' and (RTRIM(LTRIM(REPLACE(REPLACE('+FieldName+', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
                  memoItems[i] + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))'
        //result:=result+' and ('+FieldName+' like ''%'+memoItems[i]+'%'')'
      else
        Result:=' (RTRIM(LTRIM(REPLACE(REPLACE('+FieldName+', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603)))) Like (RTRIM(LTRIM(REPLACE(REPLACE(''%' +
                memoItems[i] + '%'', NCHAR(1740), NCHAR(1610)), NCHAR(1705), NCHAR(1603))))))';
        //result:=' ('+FieldName+' like ''%'+memoItems[i]+'%'')';

  if Result <> '' then
    Result := '('+result+')';
end;

procedure TDm.TreeLevel2Expanding(TreeView:ttreeView;Node: TTreeNode;F,s:tadotable);
var
  c:code;
  newnode :TTREENODE;
  TempS:String;
begin
  inherited;
  TreeView.Cursor:=crHourGlass;
  node.DeleteChildren;
  case Node.Level of
    0:  with S do
        begin
          first;
          while not eof do
          begin
            New(c);
            c^:=FieldByName('id').AsInteger;
            TempS:=FieldByName('Title').AsString;
            if f<>Actions then
              if ShowSubjectCodeInTree then
                TempS:=TempS+':'+FieldByName('id').AsString;

            newnode:=TreeView.Items.AddChildObject(node,TempS,c);
            if f.RecordCount<>0 then
              TreeView.Items.AddChildObject(newnode,'0',nil);
            next;
         end;
        end;
   1:   with f do
        begin
          s.Locate('id',code(node.Data)^,[]);
          First;
          while not eof do
          begin
            New(c);
            c^:=FieldByName('id').AsInteger;
            newnode:=TreeView.Items.AddChildObject(node,FieldByName('title').AsString,c);
            next;
          end;
        end;
  end;
  TreeView.Cursor:=crDefault;
end;

function TDm.NewToOrganization(Title,Responsible:wideString):integer;
var
  i: integer;
begin
  Title:=YeganehTrim(Title);
  Responsible:=YeganehTrim(Responsible);
  i:=Exec_hassame_orgtitle(title);
  with Toorganizations do
    if i<0 then
    begin
      Insert;
      Edit;
      FieldByName('Title').AsString:=Title;
      FieldByName('ResponsibleStaffer').AsString:=Responsible;
      FieldByName('IsInnerOrg').AsBoolean:=False;
      FieldByName('Parentid').AsInteger:=4;
      FieldByName('code').AsString:=IntToStr(Exec_get_NewOrgID(false));
      Post;
    end
    else
    begin
      close;
      CommandText:='Select * from Fromorganizations where id='+IntToStr(i);
      Open;
      if not ToorganizationsIsInnerOrg.AsBoolean and ( FieldByName('ResponsibleStaffer').AsString<>Responsible) then
      begin
        Edit;
        FieldByName('ResponsibleStaffer').AsString:=Responsible;
        Post;
      end;
    end;

  Result:=ToorganizationsID.AsInteger;
  FromOrganizations.close;
  FromOrganizations.Open;
end;

function TDm.NewRenter(Title:wideString):integer;
var
  i: integer;
begin
  Title:=YeganehTrim(Title);
  i:=HasSame_Rentertitle(title);
  with Renter do
    if i<0 then
    begin
      Insert;
      Edit;
      FieldByName('RenterTitle').AsString:=Title;
      Post;
    end;
  Result:=RenterRenterID.AsInteger;
end;

procedure TDm.SetSecID (value: Integer);
begin
  FSecID := Value;
  MainForm.RefreshQuery;
  dm.Secretariats.Locate('secid',SecID,[])
end;

function IsWrongIP(Ip: string): Boolean;
const
  Z = ['0'..'9', '.'];
var
  I, J, P: Integer;
  W: string;
begin
  Result := False;
  if (Length(Ip) > 15) or (Ip[1] = '.') then
    Exit;
  I := 1;
  J := 0;
  P := 0;
  W := '';
  repeat
    if (Ip[I] in Z) and (J < 4) then
    begin
      if Ip[I] = '.' then
      begin
        Inc(P);
        J := 0;
        try
          StrToInt(Ip[I + 1]);
        except
          Exit;
        end;
        W := '';
      end
      else
      begin
        W := W + Ip[I];
        if (StrToInt(W) > 255) or (Length(W) > 3) then
          Exit;
        Inc(J);
      end;
    end
    else
      Exit;
    Inc(I);
  until I > Length(Ip);

  if P < 3 then
    Exit;

  Result := True;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
var
  frmUpdateDbScripts : TfmUpdateDbScripts;
  DongleProductCode,DongleErrorCode : Integer;
  dt : String;
   //----------------------------------------------
   //ARM LOCK
   // ��� ��� ������ ����
   F1,F2 : TField;

   ShOp: TSHFileOpStruct;
//   label
//   GotoLabel_1;
//   label
//   GotoLabel_2;
//   label
//   GotoLabel_3;
//   label
//   GotoLabel_4;
   //----------------------------------------------

begin
  SoftwareVersion := getDelphiVer;
  _SoftVersion := getDelphiVer;

  if Trim(YeganehConnection.ConnectionString) <> '' then
    MBaseForm.MessageShowString('���� ������� ��� : ConnectionString', False);

  _EXEDIR :=  _AppPath;
   {$IFDEF ADA}
      _yeganeh:=' ���';
      _Eyeganeh:='Ada';
   {$ELSE}
      _yeganeh:=' ����';
      //_yeganeh:='11111';
      _Eyeganeh:='Yeganeh';
   {$ENDIF}
   {Ranjbar 89.06.02 ID=0}
   _AppPath := ExtractFilePath(Application.ExeName);
   _IniFilePathName := _AppPath + 'SoftInitializ.INI';
   _DBName := 'YArchive';
   //---

   _WordFileName:=UpperCase(_Eyeganeh+'_Word_File.DOCX');//Doc
   _TempPath:=GetTempDirectory;

   {if ShowLogo then
   begin
      Yeganeh := TYeganeh.Create(Application);
      Yeganeh.Show;
      Yeganeh.Repaint;
      D := Now;
   end;   }//930209
   Connect;
   {Ranjbar}
   //������ ��� ������� ���� �� ��� ������� ����
   _IsServer := ( UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)));
   //---
  _Today := ShamsiString(GetServerDate);
  _year := StrToInt(LeftStr(_Today,4));

   //yeganeh.Repaint;   ////930209
   {Ranjbar 88.03.23}
   //���� ���� ������� ������
   //Scripts_Run(Dm.YeganehConnection , 50,ServerName);
   //���� ����� ����� Ndf ����� �� 4 ������� ��� �� ���� Mdf ǐ� ��� ����
   SPAddFileToDB.Close;
   SPAddFileToDB.Parameters.ParamByName('@DBName').Value := _DataBaseName;
   SPAddFileToDB.ExecProc;

   _DbVersion := getDBVer;

   //---
   //yeganeh.Repaint;     ////930209
  try
    SystemSettings.Open;
  except on E : Exception do
    begin
      ShowMessage('Exception message = '+E.Message);
    end;
  end;

   TemplateGroup.Open;
   Tables.Open;

  /////////////////////////////////////////
  if Trim(_DbVersion) = '' then
  begin
    //Run All Scripts
    frmUpdateDbScripts:=TfmUpdateDbScripts.Create(Application, _DbVersion, _SoftVersion, 1);
    try
      frmUpdateDbScripts.ShowModal;
    finally
      frmUpdateDbScripts.Free;
    end;
  end
  else
  if CompareStr(_SoftVersion, _DbVersion)>0 then
  begin
    //Run Scripts From Db Ver. to Delphi Ver.
    frmUpdateDbScripts:=TfmUpdateDbScripts.Create(Application, _DbVersion, _SoftVersion, 2);
    try
      frmUpdateDbScripts.ShowModal;
    finally
      frmUpdateDbScripts.Free;
    end;
  end;

  { TODO -oparsa : 14030108 }
  AutoUpdateDatabase;
  { TODO -oparsa : 14030108 }


  LoginForm := TLoginForm.Create(Application);
  LoginForm.Label1.Caption:= GetSystemSetting('OrgName');

  // -----------------------------------------------
  // ��� �Ԙ� ���� ��� ����� ���� ��� ����
  F2 := TIntegerField.Create(Dm.Get_All_Letter);
  F2.FieldName  := 'SORT_INT';
  F2.Calculated := False;
  F2.DataSet    := Get_All_Letter;

  if GetSystemSetting('SORT_IncommingNO') = '1' then
  begin
    F1 := TLargeintField.Create(Dm.Get_All_Letter);
    F1.FieldName  := 'IncommingNO_INT';
    F1.Calculated := False;
    F1.DataSet    := Get_All_Letter;
  end;
  // -----------------------------------------------

  //Ataie Check Dongle
  dt := GetSystemSetting('DongleType');
  if dt = '0' then // Old Dongle
  begin
    DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today, 20,_SoftTitle,False,DongleProductCode);

    if (DongleErrorCode > 0) then
    begin
      ShowMessage(DongleErrorMessage(dongleErrorCode)+'(��� �����)');
      ExitProcess(0);
      Application.Terminate;
      Halt;
    end;
  end
  else
  if dt = '1' then // Tiny Plus
  begin
    if not IsTinyOk then
      Application.Terminate;
  end
  else Application.Terminate;

  //Hamed_Ansari_990618_S
  if (DirectoryExists('C:\Temp')) and (_BaseSQLConnection.GetKeyvalue('SaveFileType') = '1') then
  begin
    ShOp.wFunc := FO_DELETE;
    ShOp.pFrom := PChar('C:\Temp'#0);
    ShOp.pTo := nil;
    ShOp.fFlags := FOF_NOCONFIRMATION or FOF_SILENT;
    SHFileOperation(ShOp)
  end;

  if _BaseSQLConnection.GetKeyvalue('SaveFileType') = '1' then
    CreateDir('C:\Temp');
  //Hamed_Ansari_990618_S
  ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);

  LoginForm.ShowModal;

  GetValues;

  with ActionsAccess do
  begin
    close;
    Parameters[0].Value:=_AccessID;
    Open;
  end;

  with dm , get_UserExtention_by_UserID do
  begin
    close;
    Parameters.ParamByName('@userID').Value:=_userid;
    Open;
  end;

  SubjectRoot:='';

  Extention.Open;
  Secretariats.Open;
  Toorganizations.Open;
  Urgenceis.Open;
  ReceiveTypes.Open;
  Classifications.Open;
  if not _AccessToClassifieldLetter then
  begin
    Classifications.Filter := 'id=1';
    Classifications.Filtered := True;
  end;

  //ATAIE 1400
  //CurrentMyear:=strtoint(copy(_Today,3,2));
  CurrentMyear:=strtoint(LeftStr(_Today,4));

   {$IFDEF ADA}
      {Ranjbar} //�������� ���� ���� ������ �� �������
      _ApplicationPath := ExtractFilePath(Application.ExeName);
      if _ApplicationPath <> Reg_GetValue('Software\ADA\Archive','ArchivePath',dtString,HKEY_CURRENT_USER) then
         Reg_SetValue('Software\ADA\Archive','ArchivePath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
      //---
   {$ELSE}
      {Ranjbar} //�������� ���� ���� ������ �� �������
      _ApplicationPath := ExtractFilePath(Application.ExeName);
      if _ApplicationPath <> Reg_GetValue('Software\yeganeh\Archive','ArchivePath',dtString,HKEY_CURRENT_USER) then
         Reg_SetValue('Software\yeganeh\Archive','ArchivePath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
      //---
   {$ENDIF}

  QAllSecretariat.Close;
  QAllSecretariat.Open;

   // by Hadi Mohamed 920717
  if Dm.GetSystemValue(51) then
    _DocumentCaption := GetSystemValue(52);

  if trim(_DocumentCaption) = '' then
    _DocumentCaption := '���';
   // end

  OpenUserMemoQueries;
  _Today := ShamsiString(Exec_Get_NowDate);

  File_Address.Close;
  File_Address.Open;

  //_SoftVersion := getDelphiVer;
  //_DbVersion := getDBVer;
  //ShowMessage(getDelphiVer);
  //ShowMessage(getDBVer);

end;

procedure TDm.RefreshTemplate;
begin
  with LetterTemplateDoc do
  begin
    close;
    Parameters[0].Value:=LetterTemplate.Fields[0].Value;
    open;
  end;
end;

function tDm.GetSystemValue(I:integer):Variant;
begin
  if SystemSettings.Locate('variableId',i,[]) then
    Result := SystemSettings.fieldbyname('value').AsVariant;
end;

procedure TDm.ApplicationEventsException(Sender: TObject; E: Exception);
begin
  with ErrorMessage do
  begin
    Close;
    Parameters.ParamByName('@like').Value:=e.Message;

    try
      Open;
    except
      exit
    end;

    if Recordcount>0 then
    begin
      ShowMessage(e.Message);
      if ErrorMessageShowMessage.AsBoolean then
        MBaseForm.ShowMsgString(ErrorMessageFarsiMessage.AsString)
    end
    else
    begin
      ShowMessage(e.Message);
      insert;
      ErrorMessageErrorMessage.AsString:=e.Message;
      ErrorMessageUserCode.AsInteger:=_userid;
      ErrorMessageErrorDate.AsString:=_Today;
      post;
    end;
  end;
end;

function TDm.FileName(secid:Integer;myear:Integer;indicatorid:integer):string;
begin
  Result:=IntToStr(IndicatorID);
  case length(Result) of
    1: Result:='0000'+Result;
    2: Result:='000'+Result;
    3: Result:='00'+Result;
    4: Result:='0'+Result;
  end;
  Result:=IntToStr(myear)+'_'+IntToStr(SecID)+'_'+Result;
end;

function TDm.Cdate(S:string):string;
var
  p:integer;
  f:string;
begin
  p := -1;
  while p <> 0 do
  begin
    p := pos('/',s);

    if p > 0 then
    begin
      f := copy(s, 1, p-1);
      Delete(s, 1, p);
    end
    else
      f:=s;

    if Result = '' then
      Result := f
    else
      Result := f + '/' + Result;
  end;
end;

procedure TDm.SaveTemplateToFile;
begin
  inherited;
  with LetterTemplateDoc,Parameters do
  begin
    Close;
    ParamByName('ID').Value := LetterTemplateID.AsInteger;
    Open;
    LetterTemplateDocDocument.SaveToFile(_TempPath+_WordFileName);
  end;
end;

procedure TDm.Replace(var main:widestring;old,new:widestring);
var
  i: integer;
begin
  i := pos(old,main);
  while i <> 0 do
  begin
    main := copy(main, 1, i-1) + new + copy(main, i + length(old), length(main) - i - length(old) + 1);
    i := pos(old, main);
  end;
end;

procedure TDm.UserSecsAfterInsert(DataSet: TDataSet);
begin
  UserSecsUserId.AsInteger:=UsersId.AsInteger;
end;

procedure TDm.OpenWordFile(Filename:string;ReadOnly : boolean);
var
  olv,emp,f,f1,fals,tru,oleBool:OleVariant;
  en : integer;
begin
  emp:='';
  fals:=false;
  tru:=true;
  olv:=wdOpenFormatAuto;
  f1:=Filename;
  oleBool := ReadOnly;

  { TODO -oparsa : 14030524-bug340 }
  WordApplication.connect;
  { TODO -oparsa : 14030524-bug340 }

  with WordApplication,Selection do
  begin

    WordApplication.Disconnect;

    //---
    ChangeFileOpenDirectory(ExtractFilePath(Filename));
    f:=ExtractFileName(Filename);
    _Word_Is_Opened:=true;
    _ReadOnly := ReadOnly;
    { TODO -oparsa : 14030524-bug340 }
    //Documents.Open(f,fals,oleBool,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
    try
      Documents.Open(f,fals,oleBool,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
      //Documents.Open(f,EmptyParam,oleBool,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    except  on e:exception do
       begin
         ShowMessage('WORD ERROR  '+Char(10) + e.Message);
       end
    end;
    { TODO -oparsa : 14030524-bug340 }
    if ActiveWindow.View.SplitSpecial <> wdPaneNone Then
      ActiveWindow.Panes.Item(2).Close;

    if ActiveWindow.ActivePane.View.Type_ in [wdNormalView ,wdOutlineView] Then
      ActiveWindow.ActivePane.View.Type_:= wdPrintView;
    Visible:=true;
    WordApplication.Activate;
    en := WordApplication.Selection.End_ - 1;
    if en = 0 then
      WordApplication.Selection.TypeText(' ');
  end;

end;

procedure TDm.OpenWordFile_2(Filename:string;ReadOnly : boolean);
var
  WordApp, Doc: Variant;
begin

  WordApp := CreateOleObject('Word.Application');
  WordApp.Visible := True;

  // Doc := WordApp.Documents.Open('d:\01.docx');
 // WordApp.Readonly := true;
  Wordapp.documents.Open(Filename, false, ReadOnly);  //3rd parameter is readonly


end;

function TDm.ExecGet_LetterWordFile(Letterid:integer;ReadOnly:boolean):boolean;
begin
  Result := False;
  with Get_LetterWordFile,Parameters do
  begin
    Close;
    ParamByName('@LetterID').Value := Letterid;
    Open;
    if Recordcount = 0 then
      Exit;
    Result := True;
    Get_LetterWordFileImage.SaveToFile(_TempPath+_WordFileName);
    _LetterID := LetterID;
    //��� ���� ���� ���
    { TODO -oparsa : 14030524-bug340 }
     //OpenWordFile(_TempPath + _WordFileName,ReadOnly);
    try
      OpenWordFile(_TempPath + _WordFileName, readonly);
      { TODO -oparsa : 14030501 }
    except
        OpenWordFile(_TempPath + _WordFileName, readonly);
    end;
    { TODO -oparsa : 14030524-bug340 }
//     OpenWordFile_2(_TempPath + _WordFileName,ReadOnly);

  end;
end;

procedure TDm.MakeSentRecommite(Letterformat,LetterID,FromorgID:integer);
var
  s1,s2:string;
begin
  s1:='''��� ���''';
  s2:='1';
  if Letterformat=2 then
    Exec_insert_ReCommites(1,false,LetterID,_UserFromOrgID,s1,0,Letterformat=1,_Today,3,_userid)
  else
    Exec_insert_ReCommites(1,false,LetterID,FromorgID,s1,0,Letterformat=1,_Today,3,_userid)
end;

procedure TDm.InsertTextIntoLetter(w:twordapplication;LetterID:integer);
begin
  with w.Selection do
  begin
    WholeStory;
    Exec_Insert_LetterText(LetterID,Text);
  end;
end;

procedure TDm.WordApplicationDocumentBeforeClose(ASender: TObject;
          const Doc: _Document; var Cancel: WordBool);
var
  FilePathName : OleVariant;
begin
  if _ReadOnly then //WordApplication.ActiveDocument.ReadOnly then
  begin
    _Word_Is_Opened := False;
    WordApplication.ActiveDocument.Saved := true;
    WordApplication.disconnect;
   // WordApplication.CleanupInstance ;
    Exit;
  end;

  {if UpperCase(WordApplication.ActiveDocument.Name) <> _WordFileName then
      Exit; }

  //WordApplication.ActiveDocument.Save;
  FilePathName := _TempPath + _WordFileName;
  WordApplication.ActiveDocument.SaveAs2000(FilePathName,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam);

  if Dm.FullTextSearch then
    Dm.InsertTextIntoLetter(TWordApplication(ASender),_LetterID);
  Timer.Enabled := True; // ==> _Word_Is_Opened := False;

  WordApplication.Disconnect;
 // WordApplication.CleanupInstance ;
  
end;

procedure TDm.TimerTimer(Sender: TObject);
begin
  try
    with Dm,Get_LetterWordFile do
    begin
      Edit;
      Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
      Post;
      _Word_Is_Opened := False;
      Timer.Enabled := False;
    end;
  except
  end;
end;

function tDm.Y_InputQuery (const ACaption,Adefault: string; var Value: string): Boolean;
begin
   YInputQueryF:=TYInputQueryF.Create(Application);
   YInputQueryF.Label1.Caption:=ACaption;
   YInputQueryF.Caption:=ACaption;
   YInputQueryF.output.Text:=Adefault;
   YInputQueryF.ShowModal;
   Result:=YInputQueryF.done;
   Value:=YInputQueryF.output.Text;
end;

Procedure  TDm.ExecGet_All_Letter(archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;top:Longint;
            where:widestring; WordText : widestring; AttachText : widestring; TYP : String ; TOP_ : Longint);
begin
  try
    with Get_All_Letter,parameters do
    begin
      Close;
      ParamByName('@archiveFolderID').value  := archiveFolderID;
      ParamByName('@Letter_Type').value      := Letter_Type;
      ParamByName('@LetterFormat').value     := LetterFormat;
      ParamByName('@myear').value            := myear;
      ParamByName('@Secretariatid').value    := Secretariatid;
      ParamByName('@top').value              := top;
      ParamByName('@where').value            := where;
      {Ranjbar 89.07.14 ID=20}
      ParamByName('@UsersID').value          := _UserId;
      ParamByName('@WordText').value         := WordText;
      ParamByName('@AttachText').value       := AttachText;
      //----
      ParamByName('@TYP').value              := TYP;
      Open;
    end;
  except on E : Exception do
    begin
      //ShowMyMessage('�����','�Ԙ�� �� �������� �������',[mbOK],mtWarning);
      ShowMessage('Exception message = '+E.Message);
      //Halt;
    end;
  end;

   {
   TRY
   SHOW_ALL_LETTER.Close;
   SHOW_ALL_LETTER.SQL.Clear;
   if TOP > 0 then
      SHOW_ALL_LETTER.SQL.Add('SELECT TOP '+IntToStr(TOP)+' * FROM TTES ORDER BY REGISTRATIONDATE,indicatorid,Memo,IncommingNO')
      ELSE
      SHOW_ALL_LETTER.SQL.Add('SELECT * FROM TTES ORDER BY REGISTRATIONDATE,indicatorid,Memo,IncommingNO');
   SHOW_ALL_LETTER.Open;
   EXCEPT
   END;
   }

end;

procedure TDm.Select_LetterReCommiteBeforePost(DataSet: TDataSet);
begin
  if Select_LetterReCommiteOrgID.IsNull then
    Select_LetterReCommite.Cancel;
end;

procedure TDm.UserTemplateGroupAfterInsert(DataSet: TDataSet);
begin
  UserTemplateGroupUserID.AsInteger:=UsersId.AsInteger;
end;

procedure TDm.UserShortCutCalcFields(DataSet: TDataSet);
begin
  UserShortCutKeytitle.Value:='Alt + '+UserShortCutaltKey.AsString;
end;

procedure  TDm.ExecCommand(s:string);
begin
  YeganehConnection.Execute(s);
end;

procedure tDm.Refresh_ReferenceTableData(TableID:integer);
begin
  with dm.get_ReferenceTableData_by_tableID do
  begin
    close;
    Parameters.ParamByName('@TableID').Value:=TableID;
    open;
  end;
end;

procedure TDm.SetCurrentMyear(value:Integer);
begin
  FCurrentMyear:=value;
  try
    MainForm.RefreshQuery;
  except
  end;
end;

procedure TDm.UsersBeforeDelete(DataSet: TDataSet);
begin
   {Ranjbar 89.07.07 ID=21}
   if ShowMyMessage('�����','��� �� ��� ����� ���� ����� ����Ͽ',mbOKCancel,mtWarning)=mrCancel then
      Abort;
   //---
end;

{Ranjbar 89.07.08 ID=12}
//LetterEdit ���� ���� ���� ������ ��� ����� ��� ��� ����� �� ����
Procedure TDM.Insert_LetterEdit(aLetterID:Integer;aStatement:String);
begin
   YeganehConnection.Execute('Insert into LetterEdit(EditDate, EditTime, LetterID, UsersID, Statement) ' +
                     ' values('+QuotedStr(_Today)+','+QuotedStr(Time_GetTime(Dm.YeganehConnection,False))+
                     ','+inttostr(aLetterID)+','+inttostr(_UserId)+','+QuotedStr(aStatement) +')' );
end;
//---

procedure TDm.Get_All_LetterIncommingNOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   {Ranjbar 88.04.01}
   Text := ' '+Get_All_LetterIncommingNO.AsString;
end;

function TDm.GetMaxLetterDataID: Integer;
begin
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT MAX(LetterDataID) AS LetterDataID FROM LetterData');
  qtemp.Open;
  if qtemp.IsEmpty then
     Result:=0
  else
     Result:=qtemp.FieldValues['LetterDataID'];
end;

procedure TDm.OpenqSelectedColor(LetterID: Integer);
begin
    Dm.qSelectedColor.Close;
    Dm.qSelectedColor.Parameters.ParamByName('LetterID').Value:=LetterID;
    Dm.qSelectedColor.Open;
end;

function TDm.GetFollowAndRetRoAction(IsFollow, ReceiveMode: boolean;
  Follow_Retroaction: widestring; var LetterID: integer;
  var ResultReceiveMode: boolean ; SecreTariatID:Integer): boolean;
begin
  Result := False;
  Follow_Retroaction := yeganehtrim(Follow_Retroaction);

  if Follow_Retroaction = '' then
    Exit;

  ResultReceiveMode := not(ReceiveMode xor isFollow);

  if ResultReceiveMode then
  begin
    if SecreTariatID=0 then
      Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,CurrentMyear,SecID)
    else
      Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,CurrentMyear,SecreTariatID);
    Result:=LetterID>0;
  end
  else
  begin
    Try
      if SecreTariatID=0 then
        LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,CurrentMyear,SecID)
      else
        LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,CurrentMyear,SecreTariatID);
    Except
      Result:=false;
    end;
    Result:=LetterID>0;
  end;
end;

function TDm.ReplaceCharacter(s: widestring; old, new: Char): widestring;
var
  i: integer;
begin
  if Old = New then
  begin
    Result:=s;
    Exit;
  end;

  if old<>' ' then
    s := Trim(s);
  i := pos(old,s);
  while i<>0 do
  begin
    s := copy(s,1,i-1)+new+copy(s,i+length(old),length(s)-i-length(old)+2);
    i := pos(old,s)
  end;
  Result:=s;

end;

procedure TDm.qDefineColorsBeforePost(DataSet: TDataSet);
begin
  if Trim(qDefineColorsAccessDesc.AsString)='' then
  begin
    ShowMessage('����� ���� ��� ������ ��� ����� ���� ����');
    Abort;
  end;
end;

procedure TDm.OpenUserMemoQueries;
begin
  QUserMemo.Close;
  QUserMemo.Open;
  QUserMemo1.Close;
  QUserMemo1.Open;
  QUserMemo2.Close;
  QUserMemo2.Open;
//
//  QUserMemo.Filter:='';
//  QUserMemo.Filtered:=True;
//  QUserMemo1.Filter:='';
//  QUserMemo1.Filtered:=True;
//  QUserMemo2.Filter:='';
//  QUserMemo2.Filtered:=True;

end;

procedure TDm.RefreshUserMemo;
begin
  QUserMemo.Close;
  QUserMemo.Open;
//  QUserMemo.Filter:='';
//  QUserMemo.Filtered:=True;
end;

procedure TDm.RefreshUserMemo1;
begin
  QUserMemo1.Close;
  QUserMemo1.Open;
//  QUserMemo1.Filter:='';
//  QUserMemo1.Filtered:=True;
end;

procedure TDm.RefreshUserMemo2;
begin
  QUserMemo2.Close;
  QUserMemo2.Open;
//  QUserMemo2.Filter:='';
//  QUserMemo2.Filtered:=True;
end;

function TDm.InsertToLetterData(FileNames: Tstrings; LetterID: Integer): integer;  // Out Put if >0 then Number Of
var
   i,j : integer;       // LOOP Cunter
   ext : string;      // Extention of File
   ImgV: TImageEnView;
   ImgMV: TimageenMView;
   res : integer; //ResultImageCount
begin
  res := 0;
  for i:= 0 to FileNames.Count-1 do
  begin
    ext := UpperCase(File_GetFileExt(FileNames.Strings[i]));
    if (ext='JPG')or(ext='JPEG')or(ext='JPE')or(ext='JFIF')then
    begin
      if InsertToLetData(FileNames.Strings[i],ExtractFileName(FileNames.Strings[i]),1,LetterID) then
        Inc(res);
    end
    else if (ext='TIF')or(ext='TIFF')then
    begin
      ImgV := TImageEnView.Create(Self);
      ImgMV:= TImageEnMView.Create(Self);
      ImgMV.MIO.LoadFromFileTIFF(FileNames.Strings[i]);
      for j:=0 to ImgMV.ImageCount-1 do
      begin
        ImgMV.MIO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(j+1)+'.tif');
        ImgV.IO.LoadFromFileTIFF(_TempPath+'\output'+IntToStr(j+1)+'.tif');
        ImgV.IO.SaveToFileTIFF(_TempPath+'\output'+IntToStr(j+1)+'.tif');
        ImgV.IO.SaveToFileJpeg(_TempPath+'\output'+IntToStr(j+1)+'.jpg');
        ImgMV.MoveImage(0,ImgMV.ImageCount-1);
        if Get_File_Size1(_TempPath+'\output'+IntToStr(j+1)+'.tif',true)>Get_File_Size1(_TempPath+'\output'+IntToStr(j+1)+'.jpg',true) then
        begin
          if InsertToLetData(_TempPath+'\output'+IntToStr(j+1)+'.jpg',ExtractFileName(FileNames.Strings[i]),1,LetterID) then
            Inc(res);
        end
        else
          if InsertToLetData(_TempPath+'\output'+IntToStr(j+1)+'.tif',ExtractFileName(FileNames.Strings[i]),2,LetterID) then
            Inc(res);
        DeleteFile(pchar(_TempPath+'\output'+IntToStr(j+1)+'.jpg'));
        DeleteFile(pchar(_TempPath+'\output'+IntToStr(j+1)+'.tif'));
      end;
      ImgV.Free;
      ImgMV.Free;
    end
    else if (ext='BMP')or(ext='DIB')then
    begin
      ImgV := TImageEnView.Create(Self);
      ImgV.IO.LoadFromFileBMP(FileNames.Strings[i]);
      ImgV.IO.SaveToFileJpeg(_TempPath+'\output.jpg');
      if InsertToLetData(_TempPath+'\output.jpg',ExtractFileName(FileNames.Strings[i]),1,LetterID) then
        Inc(res);
      ImgV.Free;
      DeleteFile(pchar(_TempPath+'\output.jpg'));
    end
    else if (ext='GIF')then
    begin
      ImgV := TImageEnView.Create(Self);
      ImgV.IO.LoadFromFileGIF(FileNames.Strings[i]);
      ImgV.IO.SaveToFileJpeg(_TempPath+'\output.jpg');
      if InsertToLetData(_TempPath+'\output.jpg',ExtractFileName(FileNames.Strings[i]),1,LetterID) then
        Inc(res);
      ImgV.Free;
      DeleteFile(pchar(_TempPath+'\output.jpg'));
    end
    else if (ext='PNG')then
    begin
      ImgV := TImageEnView.Create(Self);
      ImgV.IO.LoadFromFilePNG(FileNames.Strings[i]);
      ImgV.IO.SaveToFileJpeg(_TempPath+'\output.jpg');
      if InsertToLetData(_TempPath+'\output.jpg',ExtractFileName(FileNames.Strings[i]),1,LetterID) then
        Inc(res);
      ImgV.Free;
      DeleteFile(pchar(_TempPath+'\output.jpg'));
    end
    else   //Like PDF DOC EXE ...
    begin
      with TADOQuery.Create(nil) do
      begin //find exec code
        Connection := YeganehConnection;
        SQL.Text := 'SELECT *  FROM Extention WHERE Extention='''+ext+'''';
        Open;
        if RecordCount>0 then
          j := FieldByName('ExtentionID').AsInteger
        else
        begin
          Close;
          SQL.Text := 'INSERT INTO Extention(ExtentionTitle,Extention,IsSystem)' +
                      ' VALUES('''+UpperCase(ext)+' Files'','''+ext+''',0)';
          ExecSQL;
          Close;
          SQL.Text := 'SELECT *  FROM Extention WHERE Extention='''+ext+'''';
          Open;
          if RecordCount>0 then
            j := FieldByName('ExtentionID').AsInteger;
        end;
      end;
      if InsertToLetData(FileNames.Strings[i],ExtractFileName(FileNames.Strings[i]),j,LetterID) then
        Inc(res);
    end;
  end;
  Result := res;
end;

function TDm.UpdateLetterData(FileNames: Tstrings; LetterDataID: Integer): integer;
var
  i : integer;       // LOOP Cunter
  res, BeforeCount, LetterID, PageNum, NewAttchsCount, MaxPgNum : integer; //ResultImageCount
begin
  res := 0;
  with TADOQuery.Create(nil) do
  begin
    Connection := YeganehConnection;
    SQL.Text := 'SELECT LetterID,PageNumber FROM LetterData WHERE LetterDataID='+IntToStr(LetterDataID);
    Open;
    LetterID := FieldByName('LetterID').AsInteger;
    PageNum  := FieldByName('PageNumber').AsInteger;
    close;
    SQL.Text := 'SELECT COUNT(LetterID) AS cnt,MAX(PageNumber) AS pnm FROM LetterData WHERE LetterID='+IntToStr(LetterID);
    open;
    BeforeCount := FieldByName('cnt').AsInteger;
    MaxPgNum := FieldByName('pnm').AsInteger;
    Free;
  end;
  NewAttchsCount := InsertToLetterData(FileNames,LetterID);
  if NewAttchsCount>0 then
  begin
    with TADOQuery.Create(nil) do
    begin
      Connection := YeganehConnection;
      SQL.Text := 'DELETE FROM LetterData WHERE LetterDataID='+IntToStr(LetterDataID);
      ExecSQL;
      Free;
    end;
    //   ������� ������ ����
    for i:= PageNum to MaxPgNum do
      with TADOQuery.Create(nil) do
      begin
        Connection := YeganehConnection;
        SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(i+MaxPgNum+NewAttchsCount)+' WHERE LetterID='+IntToStr(LetterID)+' AND PageNumber='+IntToStr(i);
        ExecSQL;
        Free;
      end;
      //   ���� ���� ����� �����
    UpdatePageNumbers(LetterID);
  end;
  Result := NewAttchsCount;
end;

function TDm.InsertToLetData(aFile, Desc: string; ext,  LetID: integer): boolean;
begin
  quAttach.Open;
  quAttach.Insert;
  quAttachLetterID.AsInteger := LetID;
  quAttachPageNumber.AsInteger := YeganehConnection.Execute('Select IsNull(Max(PageNumber),0)+1 As NextPageNumber '+
                           ' from LetterData Where LetterID = '+IntToStr(LetID)).Fields[0].value;
  quAttachImage.LoadFromFile(aFile);
  quAttachextention.AsInteger := ext;
  quAttachDescription.AsString := Desc;
  quAttachLastUpdate.AsDateTime := now;
  try
    quAttach.Post;
    Result := true;
  except
    Result := false;
  end;
  Sleep(1);
end;

function TDm.InsertToLetterData(aFileName: string; LetterID: Integer): integer;
var
  files : TStrings;
begin
  files := TStringList.Create;
  Files.Add(aFileName);
  InsertToLetterData(files,LetterID);
  files.Destroy;
end;

function TDm.UpdateLetterData(aFileName: string; LetterDataID: Integer): integer;
var
  files : TStrings;
begin
  files := TStringList.Create;
  Files.Add(aFileName);
  UpdateLetterData(files,LetterDataID);
  files.Destroy;
end;

function TDm.UpdatePageNumbers(LetterID: Integer): boolean;
var
  i : integer;
  qry1 , qry2 : TADOQuery;
begin
  i := 1;
  qry1 := TADOQuery.Create(nil);
  qry1.Connection := YeganehConnection;
  qry2 := TADOQuery.Create(nil);
  qry2.Connection := YeganehConnection;
  qry1.SQL.Text := 'SELECT LetterDataID,PageNumber FROM LetterData WHERE LetterID='+IntToStr(LetterID)+' ORDER BY PageNumber';
  qry1.Open;
  While not qry1.Eof do
  begin
    qry2.SQL.Text := 'UPDATE LetterData SET PageNumber='+IntToStr(i)+' WHERE LetterDataID='+qry1.Fields.fieldbyname('LetterDataID').AsString;
    qry2.ExecSQL;
    qry1.Next;
    inc(i);
  end;
  qry1.Free;
  qry2.Free;
end;

procedure TDm.Get_All_LetterCalcFields(DataSet: TDataSet);
begin
  if Get_All_LetterLUID.AsInteger = _UserId then
    _MyDocs := _MyDocs+1;
end;

procedure TDm.Get_All_LetterBeforeOpen(DataSet: TDataSet);
begin
  _MyDocs := 0;
end;

function TDm.StringToPWide(sStr: string; var iNewSize: integer): PWideChar;
var
  pw : PWideChar;
  iSize : integer;
begin
  iSize := Length(sStr) + 1;
  iNewSize := iSize * 2;
  pw := AllocMem(iNewSize);
  MultiByteToWideChar(CP_ACP, 0, PChar(sStr), iSize, pw, iNewSize);
  Result := pw;
end;

function TDm.replacePWC(input: Pwidechar): Pwidechar;
var
   ch : WideChar;
   i: integer;
   w : word;
begin
  for i:=0 to length(input) do
  begin
    ch :=   input[i];
    w := word(ch);
    if ch = #1610 then
      input[i] := #1740;
  end;
  result := input;
end;

procedure TDm.UsersAfterInsert(DataSet: TDataSet);
begin
  dm.UsersBeginActiveDate.AsString:=_Today;
  dm.UsersEndActiveDate.AsString:= Copy( _Today,1,4)+'/12/30';
end;

function TDm.PasswordPolicy(StrPass: String): Boolean;
var
  i : integer;
  r1, r2, r3 :Boolean;
begin
  for i := 1 to length(StrPass) do
  begin
    if StringInArray(StrPass[i],ArrOfString1) or StringInArray(StrPass[i],ArrOfString2) or StringInArray(StrPass[i],ArrOfString3) then
      r1 := True;
    if StringInArray(StrPass[i],ArrOfInteger)  then
      r2 := True;
    if StringInArray(StrPass[i],ArrOfSymbol) then
      r3 := True;
  end;

  if R1 and R2 and R3 then
    Result := True
  else
    Result := False;
end;

function TDm.GetLockIP: String;
var
  myFile : TextFile;
  text   : String;
begin
  Result := '';
  // Try to open the Test.txt file for writing to
  AssignFile(myFile, 'LockIP.txt');
  // Reopen the file for reading
  Reset(myFile);

  // Display the file contents
  while not Eof(myFile) do
  begin
    ReadLn(myFile, text);
    Result := text;
  end;

  // Close the file for the last time
  CloseFile(myFile);
end;

function TDm.IsTinyOk: Boolean;
var
  Tiny1:TTiny;
  i, J:Integer;
  lockData:String;
begin
  Result := True;

  try
    Tiny1 := TTiny.Create(Self);
    Tiny1.ServerIP := GetLockIP;
    Tiny1.NetWorkINIT := True;
    i := Tiny1.TinyErrCode;
    if i>0 then
    begin
      Result:=False;
      case i of
      1 : ShowMessage('��� ��� ������ ���� ���');
      2 : ShowMessage('���� ������ �� ����� ������ �� ����');                    
      3 : ShowMessage('��� ��� ��� ���');
      4 : ShowMessage('��� ���� ����� �������');
      5 : ShowMessage('��� �� ��ѐ���� ������� �����');
      6 : ShowMessage('��� ������ � ����� �������');
      7 : ShowMessage('���� ����� ������� ����');
      8 : ShowMessage('���� ǘ������');
      9 : ShowMessage('���� ������� ������ ��� ���');
      10: ShowMessage('��� ��� �������');
      end
    end
    else
    begin
      Tiny1.UserPassWord := '44F43C10BF4C384BB4A4A8497FB728';
      Tiny1.ShowTinyInfo := True;
      i:= Tiny1.TinyErrCode;
      if i>0 then
      begin
        Result:=False;
        case i of
        1 : ShowMessage('��� ��� ������ ���� ���');
        2 : ShowMessage('���� ������ �� ����� ������ �� ����');
        3 : ShowMessage('��� ��� ��� ���');
        4 : ShowMessage('��� ���� ����� �������');
        5 : ShowMessage('��� �� ��ѐ���� ������� �����');
        6 : ShowMessage('��� ������ � ����� �������');
        7 : ShowMessage('���� ����� ������� ����');
        8 : ShowMessage('���� ǘ������');
        9 : ShowMessage('���� ������� ������ ��� ���');
        10: ShowMessage('��� ��� �������');
        end
      end
      else
      begin
        lockData:=Tiny1.DataPartition;
        Dm.SoftwareLockNumber := Tiny1.SerialNumber;
        Dm.SoftwareLockNumber := StringReplace(Dm.SoftwareLockNumber,'-','',[rfReplaceAll]);
        if (StrToInt(Copy(lockData,1,3))=254) or (StrToInt(Copy(lockData,1,3))=20) then
        begin
          if Copy(lockData,4,10)<ShamsiString(Now) then
          begin
            Result:=False;
            J := Random(4);
            case J of
             0: Application.MessageBox('SYSTEM_THREAD_EXCEPTION_NOT_HANDLED','Windows error',0);
             1: Application.MessageBox('SYSTEM_SERVICE_EXCEPTION','Windows error',0);
             2: Application.MessageBox('System Files are damaged','Windows error',0);
             3: Application.MessageBox('SYSTEM_FILES_INVALID','Windows error',0);
             4: Application.MessageBox('DPC_WATCHDOG_VIOLATION','Windows error',0);
            end;
          end
          else
          begin
            SetSystemValue(16, Copy(LockData,14,Length(LockData)));
          end;
        end
        else
        begin
          Result:=False;
          ShowMessage('��� ��� ������ �� ����� ������ �����');
        end;
      end;
    end;

  except on e:Exception do
    begin
      Result:=False;
      ShowMessage(e.Message);
    end;
  end;
end;

function TDm.getDelphiVer: String;
var
  AppVersionString : String;
  verblock : PVSFIXEDFILEINFO;
  versionMS,versionLS : cardinal;
  verlen : cardinal;
  rs : TResourceStream;
  m : TMemoryStream;
  p : pointer;
  s : cardinal;
begin
  AppVersionString := '';

  m := TMemoryStream.Create;
  try
    rs := TResourceStream.CreateFromID(HInstance,1,RT_VERSION);
    try
      m.CopyFrom(rs,rs.Size);
    finally
      rs.Free;
    end;

    m.Position := 0;
    if VerQueryValue(m.Memory,'\',pointer(verblock),verlen) then
    begin
      VersionMS := verblock.dwFileVersionMS;
      VersionLS := verblock.dwFileVersionLS;
      AppVersionString:=//Application.Title+' '+
          IntToStr(versionMS shr 16)+'.'+
          IntToStr(versionMS and $FFFF)+'.'+
          IntToStr(VersionLS shr 16)+'.'+
          IntToStr(VersionLS and $FFFF);
    end;

    if VerQueryValue(m.Memory,PChar('\\StringFileInfo\\'+
      IntToHex(GetThreadLocale,4)+IntToHex(GetACP,4)+'\\FileDescription'),p,s) or
        VerQueryValue(m.Memory,'\\StringFileInfo\\040904E4\\FileDescription',p,s) then //en-us
          AppVersionString:=AppVersionString;
          //AppVersionString:=PChar(p)+' '+AppVersionString;
  finally
    m.Free;
  end;

  Result := AppVersionString;
end;

function TDm.getDBVer: String;
var
  qry :TADOQuery;
begin

  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' IF COL_LENGTH(''[dbo].[tblAppVer]'', ''ver'') IS not  NULL   EXEC sp_rename ''[dbo].[tblAppVer].[ver]'', ''version'', ''COLUMN''; '  ;

  qry.ExecSQL;
  qry.Free;

  qryGetDbVer.Close;
  qryGetDbVer.Open;
  Result := qryGetDbVer.Fields.Fields[0].AsString;
end;

procedure TDm.OnlineUpdate(LockCode, Version: String);
var
 CustomerID, EndContractDate, VersionID : TStringList;
 RestURL : String;
 ContractStatus : Boolean;
begin
 UpdateSoftwareAvailable := False;
 CustomerID := TStringList.Create;
 EndContractDate := TStringList.Create;
 VersionID := TStringList.Create;
 VersionFileList := TStringList.Create;
 RestURL := 'https://localhost:5001/api/';
 CustomerID := HTTPGet(RestURL + 'Customers?','LockCode=' + LockCode);
 if CustomerID.Text = '' then
  Exit
 else
  EndContractDate := HTTPGet(RestURL + 'Contract?','CustId=' + CustomerID.Strings[0]);
 if EndContractDate.Text > _Today then
  ContractStatus := True;
 if ContractStatus then
  VersionID := HTTPGet(RestURL + 'SoftwareVersion?','Version=' + (StringReplace(Version,'.','',[rfReplaceAll])) + '&SoftwareName=' + 'Archive');
 if VersionID.Text <> '' then
  VersionFileList := HTTPGet(RestURL + 'SoftwareVersionFileList?','MasterId=' + VersionID.Strings[0]);
 if VersionFileList.Text <> '' then
  UpdateSoftwareAvailable := True;
end;

function TDm.HTTPGet(Url, Parameters: String): TStringList;
var
  Http: TIdhttp;
  SSLIO: TIdSSLIOHandlerSocket;
  s : String;
  List : TStringList;
begin
  List := TStringList.Create;
  Http := TIdHttp.Create(nil);
  Http.ProtocolVersion := pv1_1;
  Http.HandleRedirects := True;
  SSLIO := TIdSSLIOHandlerSocket.Create(nil);
  SSLIO.SSLOptions.Method:=sslvTLSv1;
  SSLIO.SSLOptions.Mode := sslmClient;
  try
   Http.IOHandler:=SSLIO;
   List.Add(Http.Get(Url + Parameters));
  except
   List.Clear;;
  end;
  Result := List;
  Http.Disconnect;
  FreeAndNil(SSLIO);
  FreeAndNil(Http);
end;

{ TODO -oparsa : 14030108 }
procedure Tdm.AutoUpdateDatabase;
var
  FileName : string ;
  FilePath : string ;
  MainStrFilePath : string ;
  updateOK : Boolean;
  strCommand : WideString ;
  SectionCommand : string ;
  SectionSTR : string ;
  index : Integer ;
  index2 : Integer ;
  lastViewNo : Integer;
  LastTaleNo : Integer;
  MaxSectionNo : Integer;
  MaxSectionTableNo : Integer;
  MaxSectionViewNo : Integer;
  CurrentSectionNo : Integer;
  CntSectionNo  : Integer;
  LengthMax :Integer;
  PosF , PosS , PosE , PosFirstSec , PosFirstLen  , PosLastSec , PosLastLen : Integer ;
  FistScript : Integer;
  //qryAutoRunScript :TADOQuery;

  function GetTxtFileAsString(const fn:String):WideString;
  var
    doc: TextFile;
    character: Char;
    strResult : WideString;
    w : ansistring;
    bomidx : integer;

  const
    utf8bom : array [0..2] of char = (#$EF, #$BB, #$BF);

  begin
    strResult := '';
    AssignFile(doc, fn);
    reset(doc);
    w := '';
    bomidx := 0;
    while not EOF(doc) do
    begin
      read(doc, character);

      if (bomidx < length(utf8bom)) and (utf8bom[bomidx] = character) then
      begin
        inc(bomidx);
        continue;
      end;
      inc(bomidx);

      if character = ' ' then
      begin
        strResult := strResult + Utf8ToAnsi(w) + ' ';
        w := '';
      end
      else
        w := w + character;

    end;
    CloseFile(doc);

    if w <> '' then
      strResult := strResult + Utf8ToAnsi(w);

    Result := strResult;
  end;
begin

  qryAutoRunScript.Close;
  qryAutoRunScript.Open;

  LastTaleNo:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  lastViewNo:= qryAutoRunScript.Fields.Fields[1].AsInteger;

  FilePath := ExpandFileName(GetCurrentDir + '\Archive_AutoScripts\');
  FistScript := 1;

  try

  for index := 1 to 2 do
  begin

    updateOK := True ;

    if  index = 1 then
      FileName := 'TableViewScripts.txt'
    else
      FileName := 'FuncProceScripts.txt';

    MainStrFilePath := FilePath + FileName;

    if not FileExists(MainStrFilePath) then
      updateOK := false ;

     if updateOK then
     begin

       qryAutoRunScript.SQL.Text := '';
       strCommand := GetTxtFileAsString(MainStrFilePath);

       LengthMax  := Length('[SECTION_MAX_NO]=') ;
       PosF := Pos('[SECTION_MAX_NO]=',strCommand) ;
       PosS := Pos('[BEGIN_S_NO]',strCommand) ;
       PosE := Pos('[END_S_NO]',strCommand) ;

     end ;

     if updateOK and (PosF >0) and (PosS >0) and  (PosE >0)  then
     begin
       MaxSectionNo := StrToInt(Trim(StringReplace(StringReplace(Copy(strCommand, PosF + LengthMax, PosS - (LengthMax + 1) ),#13,' ',[rfReplaceAll]),#10,' ',[rfReplaceAll])  )) ;

       if  index = 1 then
       begin
         CurrentSectionNo  := LastTaleNo + 1 ;
         MaxSectionTableNo := MaxSectionNo;

       end
       else
       begin
         CurrentSectionNo := lastViewNo + 1 ;
         MaxSectionViewNo := MaxSectionNo;

       end;

       CntSectionNo := CurrentSectionNo ;
       for  index2 := CurrentSectionNo to MaxSectionNo  do
       begin

         SectionCommand := '' ;
         PosFirstSec := Pos('[BEGIN_S_NO]='+IntTostr(CntSectionNo),strCommand);
         strCommand  := Copy(strCommand ,PosFirstSec-1,Length(strCommand));
         PosFirstSec := Pos('[BEGIN_S_NO]='+IntTostr(CntSectionNo),strCommand);

         PosFirstLen := Length('[BEGIN_S_NO]='+IntTostr(CntSectionNo)) ;

         PosLastSec := Pos('[END_S_NO]',strCommand);
         PosLastLen := Length('[END_S_NO]') ;

         SectionCommand := Trim(Copy(strCommand, (PosFirstSec + PosFirstLen) , (PosLastSec - (PosFirstSec + PosFirstLen  )) )) ;

         if SectionCommand <> '' then
         begin
           try

             if  MaxSectionTableNo>0 then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   UPDATE [dbo].[TBLAPPSETTING] set Max_TableScriptNumber = '+  IntToStr(MaxSectionTableNo) ;
               qryAutoRunScript.ExecSQL;
             end ;

             if  MaxSectionViewNo>0 then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   UPDATE [dbo].[TBLAPPSETTING] set Max_ViewScriptNumber = '+  IntToStr(MaxSectionViewNo) ;
               qryAutoRunScript.ExecSQL;
             end;

             //qryAutoRunScript.SQL.Text :=  ' BEGIN TRANSACTION  '+ #13#10 + SectionCommand + #13#10 +' COMMIT TRANSACTION  GO ';
             //qryAutoRunScript.SQL.Text :=  ' BEGIN TRANSACTION  '+ #13#10 + SectionCommand + #13#10 +' COMMIT TRANSACTION ';
             qryAutoRunScript.SQL.Text :=   SectionCommand ;
             qryAutoRunScript.ExecuteOptions := [eoAsyncFetch];
             qryAutoRunScript.ExecSQL;

             if (FistScript = 1 )  then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   INSERT INTO [dbo].[TBLAPPSETTING] (Last_TableScriptNumber,Last_ViewScriptNumber,AppVersion,Date) VALUES ( '+ IntToStr(LastTaleNo)+','+ IntToStr(lastViewNo)+','''+_SoftVersion+''',GETDATE() ) ' ;
               qryAutoRunScript.ExecSQL;

               if  MaxSectionTableNo>0 then
               begin
                 qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                                 '   UPDATE [dbo].[TBLAPPSETTING] set Max_TableScriptNumber = '+  IntToStr(MaxSectionTableNo) ;
                 qryAutoRunScript.ExecSQL;
               end ;

               if  MaxSectionViewNo>0 then
               begin
                 qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                                 '   UPDATE [dbo].[TBLAPPSETTING] set Max_ViewScriptNumber = '+  IntToStr(MaxSectionViewNo) ;
                 qryAutoRunScript.ExecSQL;
               end;

             end;

             Inc(FistScript);             

             if  index = 1 then
               qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN   UPDATE dbo.TBLAPPSETTING SET Last_TableScriptNumber ='+ IntToStr(CntSectionNo)  + ' END '
             else
               qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN  UPDATE dbo.TBLAPPSETTING SET Last_ViewScriptNumber ='+ IntToStr(CntSectionNo) + ' END ' ;

             qryAutoRunScript.ExecSQL;

           except // on E:Exception do
            // begin
               if  index = 1 then
                 qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN   UPDATE dbo.TBLAPPSETTING SET Error_RunTableScriptNumber ='+ IntToStr(CntSectionNo)  +{ ', Descript ='+E.Message+}' END '
               else
                 qryAutoRunScript.SQL.Text :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                             ' BEGIN  UPDATE dbo.TBLAPPSETTING SET Error_RunViewScriptNumber ='+ IntToStr(CntSectionNo) +{ ', Descript ='+E.Message+}' END ' ;
               qryAutoRunScript.ExecSQL;
            // end ;

              Exit;

           end;
         end ;
         inc(CntSectionNo);

       end;

     end;
  end;
  finally
    qryAutoRunScript.SQL.Text := 'IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U''))'+
                                    ' SELECT TOP 1 (ISNULL(Max_TableScriptNumber,Last_TableScriptNumber)-ISNULL(Last_TableScriptNumber,0)) + ( ISNULL(Max_ViewScriptNumber,Last_ViewScriptNumber) - ISNULL(Last_ViewScriptNumber ,0)) CountError   '+
                                    ' FROM [dbo].[TBLAPPSETTING] ORDER BY id DESC '+
                                    ' ELSE SELECT 0 CountError' ;

    qryAutoRunScript.Close;
    qryAutoRunScript.Open;

    _CountError:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  end;
//

end;
{ TODO -oparsa : 14030108 }

{ TODO -oparsa : 14030524-bug340 }
function TDm.OpendByAnotherUser(LetterID: integer): integer;
var
  ADOSP:TADOStoredProc;
begin
  //Check_Word_is_Open
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Check_Word_is_Open';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdOutput;
    Name:='@UserID';
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result := ADOSP.Parameters.ParamByname('@UserID').value;
end;

procedure TDm.SetWordClosed(LetterID, UserID: integer);
Var
   ADOSP:TADOStoredProc;
begin

  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_Word_Closed';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@LetterID';
    Value :=LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:='@UserID';
    Value :=UserID;
  end;

  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;

   { TODO -oparsa : 1402-12-19 }
  if FileExists(pchar(_TempPath+_WordFileName)) then
  begin
    SysUtils.FileSetReadOnly(_TempPath+_WordFileName, false);
    SysUtils.DeleteFile(_TempPath+_WordFileName);
  end;
  { TODO -oparsa : 1402-12-19 }

end;

procedure TDm.SetWordOpen(LetterID, UserID: integer);
var
  ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_Word_Open';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:= '@LetterID';
    Value := LetterID;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftinteger;
    Direction := pdInput;
    Name:= '@UserID';
    Value := UserID;
  end;

  ADOSP.Connection := dm.YeganehConnection;
  ADOSP.ExecProc;
end;
{ TODO -oparsa : 14030524-bug340 }

end.



