 unit Dmu;

interface

uses
  Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList,
  uCiaTrayIcon;
type
  Tdm = class(TDataModule)
    ReceiveTypes: TADOTable;
    Signers: TADOStoredProc;
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
    ActionsAccessActionID: TIntegerField;
    ActionsAccessFormTag: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    YeganehConnection: TADOConnection;
    DLetterTemplate: TDataSource;
    LetterTemplate: TADODataSet;
    LetterTemplateDoc: TADODataSet;
    DLetterTemplateDoc: TDataSource;
    RecommiteTypes: TADOTable;
    UsersTitle: TWideStringField;
    UsersUserName: TWideStringField;
    UsersPassWord: TWideStringField;
    UsersAccessID: TWordField;
    UsersDefualtSecretariatID: TWordField;
    UsersIsSecretariantStaffer: TBooleanField;
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
    UsersDefaultSec: TStringField;
    LetterFormats: TADOTable;
    LetterFormatsCode: TIntegerField;
    LetterFormatsTitle: TWideStringField;
    Tables: TADOTable;
    TablesTableId: TWordField;
    TablesTableName: TWideStringField;
    TablesDescription: TWideStringField;
    DTables: TDataSource;
    Get_LetterWordFile: TADOStoredProc;
    WordApplication: TWordApplication;
    Timer: TTimer;
    Toorganizations: TADODataSet;
    ToorganizationsTitle: TWideStringField;
    ToorganizationsPhone: TWideStringField;
    ToorganizationsFax: TWideStringField;
    ToorganizationsEmail: TWideStringField;
    ToorganizationsResponsibleStaffer: TWideStringField;
    ToorganizationsParentID: TIntegerField;
    ToorganizationsIsActive: TBooleanField;
    ToorganizationsPreCode: TWideStringField;
    ToorganizationsIsInnerOrg: TBooleanField;
    ToorganizationsID: TIntegerField;
    FromOrganizations: TADOStoredProc;
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
    Get_All_Letter: TADOStoredProc;
    DGet_All_Letter: TDataSource;
    Get_All_LetterLetterID: TAutoIncField;
    Get_All_LetterIndicatorID: TIntegerField;
    Get_All_LetterMYear: TWordField;
    Get_All_LetterSecretariatID: TWordField;
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
    Get_All_LetterSenderTitle: TWideStringField;
    Get_All_LetterDeliverTitle: TWideStringField;
    Get_All_Letterhas_Page: TBooleanField;
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
    Get_All_LetterLetterTypeTitle: TWideStringField;
    Get_All_LetterLetterRecommites: TWideStringField;
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsCode: TWideStringField;
    ToorganizationsCode: TWideStringField;
    SignersCode: TWideStringField;
    Select_LetterReCommiteOrgStaff: TWideStringField;
    UsersFromOrgID: TIntegerField;
    Get_All_Letterhas_WordPage: TBooleanField;
    TemplateGroup: TADOTable;
    DTemplateGroup: TDataSource;
    TemplateGroupTemplateGroupID: TAutoIncField;
    TemplateGroupTemplateGroupTitle: TWideStringField;
    LetterTemplateTemplateGroupID: TIntegerField;
    LetterTemplateTemplateGroupTitle: TWideStringField;
    UserTemplateGroup: TADODataSet;
    UserTemplateGroupUserTemplateGroupID: TAutoIncField;
    UserTemplateGroupTemplateGroupID: TIntegerField;
    UserTemplateGroupUserID: TIntegerField;
    UserTemplateGroupTemplateGroupTitle: TWideStringField;
    DUserTemplateGroup: TDataSource;
    Select_LetterReCommiteDeadLineDate: TStringField;
    Extention: TADOTable;
    DExtention: TDataSource;
    ExtentionExtentionID: TAutoIncField;
    ExtentionExtentionTitle: TWideStringField;
    ExtentionExtention: TStringField;
    ExtentionIsSystem: TBooleanField;
    Get_LetterData_by_LetterDataID: TADOStoredProc;
    Get_LetterData_by_LetterDataIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterDataIDImage: TBlobField;
    Get_LetterData_by_LetterID: TADOStoredProc;
    Get_LetterData_by_LetterIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterIDdescription: TWideStringField;
    Get_LetterData_by_LetterIDExtentionTitle: TWideStringField;
    Get_LetterData_by_LetterIDExtention: TWordField;
    Get_LetterData_by_LetterIDletterid: TIntegerField;
    Get_All_Letterhas_file: TBooleanField;
    Get_LetterData_by_LetterIDExt: TStringField;
    UserShortCutUserID: TIntegerField;
    UserShortCutkeyText: TWideStringField;
    UserShortCutKeytitle: TWideStringField;
    UserShortCutaltKey: TStringField;
    UserShortCutuserShortCutID: TAutoIncField;
    SecretariatsPreCode: TWideStringField;
    UsersKartableGridInfo: TBlobField;
    UsersDabirGridInfo: TBlobField;
    UserSecretariat: TADODataSet;
    UserSecretariatUserId: TIntegerField;
    UserSecretariatSecId: TIntegerField;
    UserSecretariatSecTitle: TWideStringField;
    Get_All_LettersendstatusTitle: TWideStringField;
    RelatedSecretariats: TADOTable;
    ToorganizationsisSecretariat: TBooleanField;
    Select_LetterReCommiteLastUpdate: TDateTimeField;
    Get_All_LetterIncommingDate: TWideStringField;
    UsersId: TAutoIncField;
    ReferenceTables: TADOTable;
    WordField1: TWordField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DReferenceTables: TDataSource;
    FieldType: TADOTable;
    DFieldType: TDataSource;
    FieldTypeFieldTypeID: TWordField;
    FieldTypeFieldTypeTitle: TWideStringField;
    get_ReferenceTableData_by_tableID: TADOStoredProc;
    get_ReferenceTableData_by_tableIDReferenceTableDataID: TAutoIncField;
    get_ReferenceTableData_by_tableIDTableID: TIntegerField;
    get_ReferenceTableData_by_tableIDDataID: TWordField;
    get_ReferenceTableData_by_tableIDDataTitle: TWideStringField;
    SecretariatsServerID: TIntegerField;
    Server: TADOTable;
    DServer: TDataSource;
    ServerServerID: TIntegerField;
    ServerServerTitle: TWideStringField;
    ServerServerIP: TStringField;
    ServerDbName: TStringField;
    Get_LetterWordFileDescription: TWideStringField;
    Get_LetterWordFileLastUpdate: TDateTimeField;
    Get_All_LetterArchived: TBooleanField;
    Get_All_LetterInnerNo: TWideStringField;
    Subject: TADOTable;
    Dsubject: TDataSource;
    SubjectSubjectID: TAutoIncField;
    SubjectSubjectTitle: TWideStringField;
    SubjectIsActive: TBooleanField;
    ArchiveCenter: TADOTable;
    ArchiveCenterArchiveCenterID: TIntegerField;
    ArchiveCenterArchiveCenterTitle: TWideStringField;
    DArchiveCenter: TDataSource;
    SecretariatsArchiveCenterID: TIntegerField;
    SecretariatsArchiveCenterTitle: TWideStringField;
    Get_LetterAction_By_LetterID: TADOStoredProc;
    Get_LetterAction_By_LetterIDLetterID: TAutoIncField;
    Get_LetterAction_By_LetterIDLatestActionTypeID: TWordField;
    Get_LetterAction_By_LetterIDLatestActionReason: TWideStringField;
    Get_LetterAction_By_LetterIDActionTypeTitle: TWideStringField;
    DGet_LetterAction_By_LetterID: TDataSource;
    ActionType: TADOTable;
    DActionType: TDataSource;
    Get_All_LetterActionTypeTitle: TWideStringField;
    UsersBeginActiveDate: TStringField;
    UsersEndActiveDate: TStringField;
    Select_FollowUP_By_Date: TADOStoredProc;
    Select_FollowUP_By_DateFollowUPID: TAutoIncField;
    Select_FollowUP_By_DateLetterid: TAutoIncField;
    Select_FollowUP_By_DateStartFollowUpID: TIntegerField;
    Select_FollowUP_By_DateFollowUPTypeID: TIntegerField;
    Select_FollowUP_By_DateDoneStatusID: TWordField;
    Select_FollowUP_By_DateToDoDate: TStringField;
    Select_FollowUP_By_DateHasAlarm: TBooleanField;
    Select_FollowUP_By_DateComment: TWideStringField;
    Select_FollowUP_By_DateFollowUPTypeTitle: TWideStringField;
    Select_FollowUP_By_DateDoneStatustitle: TWideStringField;
    Select_FollowUP_By_DateDelayStatus: TIntegerField;
    DSelect_FollowUP_By_Date: TDataSource;
    DoneStatus: TADOTable;
    FollowUpType: TADOTable;
    TablesTableType: TWordField;
    TablesTableCode: TStringField;
    TablesUserField1: TWideStringField;
    TablesUserField2: TWideStringField;
    RelatedSecretariatsRelatedSecretariatID: TAutoIncField;
    RelatedSecretariatsRelatedSecretariatTitle: TWideStringField;
    RelatedSecretariatsDestinationOrgID_inSource: TIntegerField;
    RelatedSecretariatsDestinationSecID: TIntegerField;
    RelatedSecretariatsDestinationServerIP: TStringField;
    RelatedSecretariatsDestinationServerDB: TStringField;
    Select_LetterReCommiteActionTypeID: TWordField;
    SELECT_ParaphTemplate: TADOStoredProc;
    SELECT_ParaphTemplateParaphTemplateID: TAutoIncField;
    SELECT_ParaphTemplateUserID: TIntegerField;
    SELECT_ParaphTemplateOrderID: TWordField;
    SELECT_ParaphTemplateTitle: TWideStringField;
    SELECT_ParaphTemplateParaph: TWideStringField;
    UsersAlternativeUserID: TIntegerField;
    UsersSecondOrgID: TIntegerField;
    UsersAlternativebeginDate: TStringField;
    UsersAlternativeEndDate: TStringField;
    UsersSecondOrgTitle: TWideStringField;
    Select_FieldAccess_by_TableID: TADOStoredProc;
    DSelect_FieldAccess_by_TableID: TDataSource;
    AccessType: TADOTable;
    DAccessType: TDataSource;
    Select_FieldAccess_by_TableIDFieldAccessID: TAutoIncField;
    Select_FieldAccess_by_TableIDFieldID: TIntegerField;
    Select_FieldAccess_by_TableIDUserID: TIntegerField;
    Select_FieldAccess_by_TableIDAccessTypeID: TWordField;
    Select_FieldAccess_by_TableIDAccessTypeTitle: TStringField;
    AccessTypeAccessTypeID: TWordField;
    AccessTypeAccessTypeTitle: TWideStringField;
    Fields: TADOTable;
    Select_FieldAccess_by_TableIDFieldTitle: TStringField;
    get_userTable: TADOStoredProc;
    get_userTableTableId: TWordField;
    get_userTableTableName: TWideStringField;
    get_userTableDescription: TWideStringField;
    get_userTableTableType: TWordField;
    get_userTableTableCode: TStringField;
    get_userTableUserField1: TWideStringField;
    get_userTableUserField2: TWideStringField;
    Select_UserSign: TADOStoredProc;
    DSelect_UserSign: TDataSource;
    Select_UserSignUserID: TIntegerField;
    Select_UserSignUserSign: TBlobField;
    Select_LetterReCommiteDeadLineToint: TIntegerField;
    UsersHasSecureLetterAccess: TBooleanField;
    Get_All_LetterUserMemo: TWideStringField;
    Get_All_LetterDeadLineDate: TStringField;
    DFromOrganizations: TDataSource;
    function  GetValue(variableID:word):variant;
    Procedure SetValue(VariableId:word;value:variant);

    function  GetActionAccess(ActionTag,FormTag:word):boolean;

    procedure GetValues;
    function  LastIndicatorID(Letter_type:integer;LetterFormat:byte):integer;
    procedure Connect;
    Function  GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;Follow_Retroaction:widestring;var LetterID: integer;var ResultReceiveMode:boolean):boolean;

    Function  GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
    Function  GetDateFollow(ReceiveMode:boolean;Follow,Retro:String):string;
    function  MemoCondition(MemoText:string;FieldName:String):String;
    function  isNo(s:string;var No:string):boolean;
    function  isIndicator(s:string;var FromIndicator,ToIndicator:integer):boolean;
    procedure TreeLevel2Expanding(TreeView:ttreeView;Node: TTreeNode;F,s:tadotable);
    function  NewToOrganization(Title,Responsible:wideString):integer;
    procedure DataModuleCreate(Sender: TObject);
    Procedure SetCurrentMyear(value:Integer);
    Procedure SetSecID(value:byte);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure OpenWordFile(Filename:string;Readonly:boolean);
    procedure TimerTimer(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
function   Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;

Procedure  ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;top:integer;where:widestring);
procedure  InsertTextIntoLetter(w:twordapplication;LetterID:integer);
    procedure Select_LetterReCommiteBeforePost(DataSet: TDataSet);
    procedure UserTemplateGroupAfterInsert(DataSet: TDataSet);
    procedure UserShortCutCalcFields(DataSet: TDataSet);
    procedure UsersAfterScroll(DataSet: TDataSet);
    procedure UserSecretariatAfterInsert(DataSet: TDataSet);
    procedure   ExecCommand(s:string);
    procedure Refresh_ReferenceTableData(TableID:integer);
    procedure UsersAfterInsert(DataSet: TDataSet);
    Procedure  Exec_Select_FollowUP_By_Date(BDate:string;Edate:string;DonStatusID:integer);
function  GetUserTableID:integer;

  private
    { Private declarations }
    FCurrentMyear:Integer;
    FSecID:byte;
  public
    ReceiveSelect,
    SentSelect,
    BothSelect,
    today,
    SubjectRoot,
    SearchStResult,
    WordPath ,Orgname,UserMem,
    MainTableName,CodeField,TitleField:string;


    DeadlineForRecommite,
    DefaultSClassificationID,
    DefaultSUrgencyID,
    DefaultSNumberOfAttachPages,
    DefaultSNumberOfPage ,
    DefaultSReceiveTypeID,
    DefaultSFromOrgId  ,
    DefualtSSigner     ,
    DefaultRClassificationID,
    DefaultRUrgencyID    ,
    DefaultRNumberOfAttachPages,
    DefaultRFromOrgId  ,
    DefaultRNumberOfPage ,

    DefaultRReceiveTypeID,
    BeginIndicator,

    RootFromOrg       :integer;

    DayInWeek ,
    InitialReceivedMode,
    InitialArchiveMode,
    DayInWeekForBackup ,
    InitialDisplyMode  :byte;

    SearchResult,
    MaxNumber_Of_Letter ,
    FaxOrgid,
    TypeOrgId,
    SubjectOrder,
    BoardID:integer;
    _LetterID:integer;
    Refresh_PriodTime:integer;


    ShowFarsiCaption,
    Insert_Log,
    ShowOriginalErrorMessage,
    UniqeIndicator,
    EqualAnswerIndicator,
    ShowSubjectCodeInTree,
    version,ArchiveList,
    FullTextSearch,
    Recommite_Copy,
    Use_Template,
    LetterHasArchiveCopy,
    HasJpg,
    AllowMultiUser,
    ChartorderbyTitle,
    ListFromorg,
    DefaultProceed,
    DefaultisCopy,
    DefaultInnerCopy,
    Enterkey            :boolean;

    FocusedColor:Tcolor;
    MemoFont:TFont;
    DefaultPreCode,keytext:string;
    procedure RefreshTemplate;
    function  GetSystemValue(I:integer):variant;
    Procedure SetSystemValue(VariableId:word;value:variant);
    Function  FileName(secid:byte;myear:Integer;indicatorid:integer):string;
    function  Cdate(S:string):string;

    property  CurrentMyear :Integer read fCurrentMyear write SetCurrentMyear;
    property  SecID :byte read fSecID write SetSecID;

    function  Search(Y:TYwhereEdit):integer;
    procedure SaveTemplateToFile;
    procedure Replace(var main:widestring;old,new:widestring);
    procedure updateAddedInfoRecord(PrimaryCode,Fieldname,FieldValue,letterWhere:string);
    function ExecGet_LetterWordFile(Letterid:integer;ReadOnly:boolean):boolean;
  end;

var
  dm: Tdm;
    _userid:integer;
    _AccessID:byte;
    _DefaultSec:integer;
    _userName:String;
    _UserFromOrgID:integer;
    _ResultOrgID:integer;
    _ResultOrgTitle:WideString;
    _ResultOrgCode:WideString;
    _ResultOrgRespon:WideString;
    _UserLoginLogoutID:integer;
    _Word_Is_Opened : boolean;
    _WordFileName:string;
    _ExcelFileName:string;
    _TempPath:string;
    _ResultFolderID:integer;
    _AccessToClassifieldLetter:boolean;
    _AllowToEditWordFiles:boolean;
    _HasReplicate :boolean;
    DatabaseName: string;
    _ServerID: integer;
    _IsSecretariatStaffer: boolean;
    _ArchiveCenterID: integer;
    _year : integer;
    _selectedRecommitesID,
    _selectedLettersID:TStrings;
    FaxExtention:string;
    FaxDirectory:string;
    FaxUpdate: boolean;
   const     _Kartable = false;
   Showlogo=false;
   _Yeganeh='‘—ò  „Â‰œ”Ì ŒÊ‰Â';
   _EYeganeh='khooneh';

{$R *.dfm}
implementation

uses yShamsiDate, Uconnect, LogOn, Settingsu, UMain,
  USearchTitle, YeganehDemo, YInputQuery, businessLayer, ShowmessageU,
  BaseUnit, StrUtils;
type code=^integer;
 Letter_Format =(Letters,Drafts,deleted);



function Tdm.Search(Y:TYwhereEdit):integer;
begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
  with SearchAdoDataSet do
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
procedure Tdm.Connect;
begin
 Fconnect:=TFconnect.Create(Application);
 
end;

Function Tdm.GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
 var LetterID : integer;
     rr          :Boolean;
begin
    Result:='';

   if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow,LetterID,rr) then
     Result:=Exec_get_LetterMemo_ByID(LetterID)
   else
   if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro,Letterid,rr) then
     Result:=Exec_get_LetterMemo_ByID(LetterID)
end;



Function Tdm.GetDateFollow(ReceiveMode:boolean;Follow,Retro:String):string;
 var LetterID : integer;
     rr          :Boolean;
begin
    Result:='';

   if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow,LetterID,rr) then
     Result:=Exec_get_LetterDate_ByID(LetterID)
   else
   if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro,Letterid,rr) then
     Result:=Exec_get_LetterDate_ByID(LetterID)
end;                 

function  Tdm.GetActionAccess(ActionTag,FormTag:word):boolean;
 begin
   Result:=true;                         
  if ActionsAccess.Locate('ActionID;FormTag',VarArrayOf([1000*formtag+ActionTag,FormTag]),[]) then
    IF NOT ActionsAccessHasAccess.AsBoolean THEN
      Result:=FALSE
 end;


Function Tdm.GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;
  Follow_Retroaction:widestring;var LetterID:integer;var ResultReceiveMode:boolean):boolean;
begin
Result:=False;

Follow_Retroaction:=yeganehtrim(Follow_Retroaction);

if Follow_Retroaction='' then
  Exit;

ResultReceiveMode:=not(ReceiveMode xor isFollow);
 if ResultReceiveMode then
    begin
      Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,CurrentMyear,SecID);
      Result:=LetterID>0;
    end
 else
      begin
        try
       LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,CurrentMyear,SecID);
       except  Result:=false;   end;
       Result:=LetterID>0;
      end;
end;

function Tdm.GetValue(VariableId:word):variant;
begin
 if UserSettings.Locate('variableId',VARIABLEID,[]) then
 try
   result:=UserSettings.fieldbyname('value').AsVariant
 except ShowMessage(IntToStr(variableID)); end;
end;

procedure Tdm.GetValues;
var s:string;
 begin

 s:=GetValue(2007);
 if pos('_',s)<>0 then
  MemoFont:=StrToFont(s)
 else
  MemoFont:=nil;
  DayInWeek:=Exec_get_DayID_InWeek;

 FocusedColor:=GetValue(1013);

 RootFromOrg:=GetValue(318);

 SubjectOrder:=GetValue(627);
 ArchiveList:= GetValue(626);

 Enterkey:=GetValue(714);
 ShowSubjectCodeInTree:=GetValue(726);

 ShowOriginalErrorMessage:=GetValue(715);

 InitialReceivedMode:=GetValue(742);
 InitialArchiveMode :=GetValue(743);
 InitialDisplyMode  :=GetValue(744);
     DefaultProceed :=GetValue(1111);
     DefaultisCopy  :=GetValue(1112);
 DefaultInnerCopy:=GetValue(1113);

  DefaultSClassificationID:=GetValue(202);
  DefaultSUrgencyID    :=GetValue(203);
  DefaultSNumberOfAttachPages:=GetValue(204);
  DefaultSNumberOfPage :=GetValue(205);
  DefaultSReceiveTypeID:=GetValue(206);
  DefaultSFromOrgId  :=GetValue(213);
  DefualtSSigner     :=GetValue(210);
  DefaultRClassificationID:=GetValue(102);
  DefaultRUrgencyID    :=GetValue(103);
  DefaultRNumberOfAttachPages:=GetValue(104);
  DefaultRNumberOfPage :=GetValue(105);
  DefaultRReceiveTypeID:=GetValue(106);
  DefaultRFromOrgId  :=GetValue(113);
  ListFromorg:=GetValue(114);
  ChartorderbyTitle:=GetValue(115);

  DeadlineForRecommite:=GetSystemValue(1);
  MaxNumber_Of_Letter:=GetSystemValue(2);
  BeginIndicator:=GetSystemValue(3);
  EqualAnswerIndicator:=GetSystemValue(4);
  UniqeIndicator:=GetSystemValue(5);
  Version:=GetSystemValue(7);
  DayInWeekForBackup :=GetSystemValue(8);
  FaxOrgid:=GetSystemValue(9);
  TypeOrgId   :=GetSystemValue(10);
  WordPath:=GetSystemValue(11);
  SubjectRoot:=GetSystemValue(12);


  if DayInWeek<>DayInWeekForBackup then
     SetSystemValue(13,false);;
  BoardID:=GetSystemValue(14);
  UserMem:=GetSystemValue(15);
  Orgname:=GetSystemValue(16);
  FullTextSearch:=GetSystemValue(17);
  LetterHasArchiveCopy:=GetSystemValue(18);

  FaxExtention:=GetSystemValue(21);
  FaxDirectory:=GetSystemValue(22);
  FaxUpdate:=GetSystemValue(23);

  MainTableName:=GetSystemValue(24);
  TitleField:=GetSystemValue(25);
  CodeField:=GetSystemValue(26);
  HasJpg:=GetValue(25);
  Refresh_PriodTime:=GetSystemValue(28);
  AllowMultiUser:=GetSystemValue(29);
  Recommite_Copy:=GetSystemValue(30);
  Use_template:=GetSystemValue(31);
  Insert_Log:=GetSystemValue(32);
  DefaultPreCode:=GetSystemValue(9);
  ShowFarsiCaption:=GetSystemValue(33);
  _ServerID:=GetSystemValue(34);
  _HasReplicate:=GetSystemValue(45);
  if Refresh_PriodTime=0  then
     Refresh_PriodTime:=300;

end;


Procedure Tdm.SetSystemValue(VariableId:word;value:variant);
begin
with  SystemSettings do
 if Locate('variableId',VARIABLEID,[]) then
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

Procedure Tdm.SetValue(VariableId:word;value:variant);
begin
 with  UserSettings do
  begin
   close;
   Parameters.ParamByName('UID').Value:=_userid;
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
   FieldByName('UserId').AsInteger:=_userid;
   FieldByName('variableId').AsInteger:=VariableId;
   FieldByName('value').AsVariant:=value;
   Post;
  end;
 end;
end;


function Tdm.LastIndicatorID(Letter_type:integer;LetterFormat:byte):integer;
begin
   Result:=Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Secid)
 end;

function Tdm.isIndicator(s:string;var FromIndicator,ToIndicator:integer):boolean;
var p:byte;
f,t : string;
begin
result:=false;
 p:=pos(' «',s) ;
 if p<>0 then
  begin
   F:=trim(Copy(s,1,p-1));
   T:=trim(Copy(s,p+2,length(s)-p));
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




function Tdm.isNo(s:string;var No:string):boolean;
begin
result:=false;
s:=yeganehtrim(s);
if (copy(s,1,2)='‘:') then
 begin
  Result:=true;
  No:=trim(copy(s,3,length(s)-2));
 end;
if (copy(s,1,3)='‘ :') then
 begin
  Result:=true;
  No:=trim(copy(s,4,length(s)-3));
 end;
end;

function Tdm.MemoCondition(MemoText:string;FieldName:string):String;
var  memoItems:TStrings;
i:byte;
begin
MemoText:=yeganehtrim(MemoText);
 if length(MemoText)>2 then
  if (MemoText[1]='"') and (MemoText[length(MemoText)]='"') then
   begin
    Result:='('+FieldName+' like ''%'+copy(MemoText,2,length(MemoText)-2)+'%'')';
    exit;
   end;
 memoItemS:=TStringList.Create;
 Setwords(MemoText,#32,memoItems);
 Result:='';
 if memoItems.Count>0 then
 for i:=0 to memoItems.Count-1 do
   if Result<>'' then
    result:=result+' and ('+FieldName+' like ''%'+memoItems[i]+'%'')'
   else
    result:=' ('+FieldName+' like ''%'+memoItems[i]+'%'')';

if Result<>'' then result:='('+result+')';
end;



procedure TDM.TreeLevel2Expanding(TreeView:ttreeView;Node: TTreeNode;F,s:tadotable);
    var    c:code;
    newnode :TTREENODE;
    TempS:String;
begin
  inherited;
 TreeView.Cursor:=crHourGlass;
 node.DeleteChildren;
 case Node.Level of
    0: with S do
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
           if f.RecordCount<>0 then TreeView.Items.AddChildObject(newnode,'0',nil);
           next;
         end;
       end;
   1:with f do
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

function TDM.NewToOrganization(Title,Responsible:wideString):integer;
 var i: integer;
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
    CommandText:='Select *,cast(0 as bit) isSecretariat from Fromorganizations where id='+IntToStr(i);
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
procedure Tdm.SetCurrentMyear(value:Integer);
 begin
   FCurrentMyear:=value;
   try
     MainForm.RefreshQuery;
   except end;
 end;

procedure Tdm.SetSecID (value:byte);
 begin
   FSecID:=value;
   dm.Secretariats.Locate('secid',SecID,[]);
   _ArchiveCenterID:=10000*dm.SecretariatsArchiveCenterID.AsInteger;
   MainForm.RefreshQuery;
 end;

procedure Tdm.DataModuleCreate(Sender: TObject);
var d : TDateTime;

begin
  _WordFileName:=_EYeganeh+'_WORD_FILE.DOC';
  _ExcelFileName:=_EYeganeh+'_Excel_FILE.DOC';
  _TempPath:=GetTempDirectory;

  if Showlogo then
   begin
    yeganeh:=TYeganeh.Create(Application);
    Yeganeh.Show;
    d:=now;
   end;
  Connect;

  SystemSettings.Open;
  TemplateGroup.Open;
  Tables.Open;
  today:=ShamsiString(Exec_get_NowDate);
  LoginForm:=TLoginForm.Create(Application);

 if showlogo then
  begin
   while milliSecondsBetween(d,now)<4000 do
    begin
     d:=d;
     Application.ProcessMessages;
    end;
    Yeganeh.Close;
   end;
 ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
 LoginForm.ShowModal;


 GetValues;
  with ActionsAccess do
   begin
    close;
    Parameters[0].Value:=_AccessID;
    Open;
   end;

  _year:= strtoint(copy(today,1,4));
 SubjectRoot:='';
 if tmpYear<>0 then
   CurrentMyear:=tmpYear
  else
   CurrentMyear:=_year;


  _AllowToEditWordFiles:=dm.GetActionAccess(64,1);

  Extention.Open;
  Secretariats.Open;
  Toorganizations.Open;
  Urgenceis.Open;
  ReceiveTypes.Open;
  Classifications.Open;
  FieldType.Open;
  ReferenceTables.Open;
  Subject.Open;
  if not  _AccessToClassifieldLetter then
   begin
     Classifications.Filter:='id=1';
     Classifications.Filtered:=true;
   end;

end;
procedure Tdm.updateAddedInfoRecord(PrimaryCode,Fieldname,FieldValue,LetterWhere:string);
begin

end;
procedure Tdm.RefreshTemplate;
begin
  with LetterTemplateDoc do
   begin
    close;
    Parameters[0].Value:=LetterTemplate.Fields[0].Value;
    open;
   end;
end;


function tdm.GetSystemValue(I:integer):Variant;
begin
 if SystemSettings.Locate('variableId',i,[]) then
 try
 result:=SystemSettings.fieldbyname('value').AsVariant
 except ShowMessage(IntToStr(i)); end;
end;



 {
procedure Tdm.ApplicationEventsException(Sender: TObject; E: Exception);
begin
ApplicationEvents.OnException:=nil;
   with ErrorMessage do
    begin
      if (pos('Connection failure',e.Message)<>0 ) or (pos('General network error',e.Message)<>0) then
       if MessageDlg(' œ— «— »«ÿ »« ”—Ê— „‘ò· ÊÃÊœ œ«—œ ¬Ì« „«Ì·Ìœ œÊ »«—Â ‰—„ «›“«— —« «Ã—« ‰„«ÌÌœ.',mtConfirmation,[mbyes,mbno],0)=mryes then
         begin
            WinExec('Yeganeh_Dabir.exe',0);
            Application.Terminate;
         end;

       Close;
       Parameters.ParamByName('@like').Value:=e.Message;
      try  Open; except  exit end;
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
         ErrorMessageErrorDate.AsString:=today;
         post;
        end;
    end;
ApplicationEvents.OnException:=ApplicationEventsException;

end;
  }
function Tdm.FileName(secid:byte;myear:integer;indicatorid:integer):string;
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

function Tdm.Cdate(S:string):string;
 var p:integer;
 f:string;
 begin
 p:=-1;
  while p<>0 do
    begin
     p:=pos('/',s);
     if p>0 then
       begin
         f:=copy(s,1,p-1);
         Delete(s,1,p);
       end
       else
         f:=s;
         if Result='' then Result:=f else Result:=f+'/'+Result;
    end;
 end;

procedure tdm.SaveTemplateToFile;
begin
  inherited;
     with LetterTemplateDoc,Parameters do
       begin
         Close;
         ParamByName('id').Value:=LetterTemplateID.AsInteger;
         Open;
         LetterTemplateDocDocument.SaveToFile(_TempPath+_WordFileName);
      end;
end;



 procedure Tdm.Replace(var main:widestring;old,new:widestring);
  var i: integer;
begin
 i:=pos(old,main);
  while i<>0 do
   begin
     main:=copy(main,1,i-1)+new+copy(main,i+length(old),length(main)-i-length(old)+1);
     i:=pos(old,main);
   end;
end;




procedure Tdm.OpenWordFile(Filename:string;Readonly:boolean);
var  OReadOnly,olv,emp,f,f1,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;
    f1:=Filename;
    OReadOnly:=ReadOnly;

   with WordApplication,Selection do
    begin
     ChangeFileOpenDirectory(ExtractFilePath(Filename));
     f:=ExtractFileName(Filename);;
     _Word_Is_Opened:=true;
     Documents.Open(f,fals,OReadOnly,fals,emp,emp,fals,emp,emp,olv,emp,tru,fals,tru,tru);
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     ;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     Visible:=true;
     WordApplication.Activate;
    end;
 end;



function Tdm.ExecGet_LetterWordFile(Letterid:integer;readonly:boolean):boolean;
begin
       Result:=false;
 with Get_LetterWordFile,Parameters do
  begin
    Close;
    ParamByName('@LetterID').Value:=Letterid;
    Open;
    if recordcount=0 then exit;
    Result:=true;
    Get_LetterWordFileImage.SaveToFile(_TempPath+_WordFileName);
    _LetterID:=Letterid;
    OpenWordFile(_TempPath+_WordFileName,readonly);
  end;
end;




procedure TDm.InsertTextIntoLetter(w:twordapplication;LetterID:integer);
begin
with w.Selection do
 begin
  WholeStory;
  Exec_Insert_LetterText(LetterID,Text);
 end;
end;

procedure Tdm.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
begin
if  TWordApplication(ASender).ActiveDocument.ReadOnly then
  begin
    _Word_Is_Opened:=false;
     WordApplication.disconnect;
     exit;
  end;
if UpperCase(TWordApplication(ASender).ActiveDocument.Name)<>_WordFileName then
 exit;

WordApplication.ActiveDocument.Save;
  if dm.FullTextSearch then
    dm.InsertTextIntoLetter(TWordApplication(ASender),_LetterID);
  timer.Enabled:=true;
  WordApplication.disconnect;
end;

procedure Tdm.TimerTimer(Sender: TObject);
begin
   try
    with dm,Get_LetterWordFile do
   begin
     Edit;
     Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
     Get_LetterWordFileLastUpdate.Value:=now;
     post;  Timer.Enabled:=false;   _Word_Is_Opened:=false;
   end;
 except end;
end;
function tdm.Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
begin
YInputQueryF:=TYInputQueryF.Create(Application);
  with YInputQueryF do
   begin
     Label1.Caption:=ACaption;
     output.Text:=Adefault;
     Caption:='';
     ShowModal;
     Result:=done;
     Value:=output.Text;
   end;

end;

Procedure  TDM.ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;top:integer;where:widestring);
  begin
  with Get_All_Letter,parameters do
     begin
      Close;
      ParamByName('@archiveFolderID').value:=archiveFolderID;
      ParamByName('@Letter_Type').value:=Letter_Type;
      ParamByName('@LetterFormat').value:=LetterFormat;
      ParamByName('@myear').value:=myear;
      ParamByName('@Secretariatid').value:=Secretariatid;
      ParamByName('@top').value:=top;
      ParamByName('@where').value:=where;
      ParamByName('@ArchiveStatus').value:=ArchiveStatus;
      Open;
   end;
end;

procedure Tdm.Select_LetterReCommiteBeforePost(DataSet: TDataSet);
begin
Select_LetterReCommiteLastUpdate.Value:=now;
if Select_LetterReCommiteOrgID.IsNull then
    Select_LetterReCommite.Cancel;
if length(Select_LetterReCommiteDeadLineDate.AsString)=10 then
  Select_LetterReCommiteDeadLineToint.AsInteger:=ShamsiDateToInt(Select_LetterReCommiteDeadLineDate.AsString);

end;

procedure Tdm.UserTemplateGroupAfterInsert(DataSet: TDataSet);
begin
  UserTemplateGroupUserID.AsInteger:=UsersId.AsInteger;
end;

procedure Tdm.UserShortCutCalcFields(DataSet: TDataSet);
begin
  UserShortCutKeytitle.Value:='Alt + '+UserShortCutaltKey.AsString;
end;

procedure Tdm.UsersAfterScroll(DataSet: TDataSet);
begin
        with dm.UserSecretariat do
         begin
          Close;
          Parameters.ParamByName('UserID').Value:=dm.UsersId.Value;
          Open;
         end;
end;

procedure Tdm.UserSecretariatAfterInsert(DataSet: TDataSet);
begin
UserSecretariatUserId.Value:=UsersId.Value;
end;
procedure  Tdm.ExecCommand(s:string);
begin
 YeganehConnection.Execute(s);
end;
procedure tdm.Refresh_ReferenceTableData(TableID:integer);
 begin
with dm.get_ReferenceTableData_by_tableID do
 begin
   close;
   Parameters.ParamByName('@TableID').Value:=TableID;
   open;
 end;
end;
procedure Tdm.UsersAfterInsert(DataSet: TDataSet);
begin
dm.UsersBeginActiveDate.AsString:=dm.today;
dm.UsersEndActiveDate.AsString:='1399/12/30';
end;


Procedure  tdm.Exec_Select_FollowUP_By_Date(BDate:string;Edate:string;DonStatusID:integer);
 begin
  with Select_FollowUP_By_Date,Parameters do
    begin
      Close;
        ParamByName('@UserID').Value:=_userID;
        ParamByName('@BDate').Value:=BDate;
        ParamByName('@Edate').Value:=Edate;
        ParamByName('@DonStatusID').Value:=DonStatusID;
      Open;
    end;
end;
function  tdm.GetUserTableID:integer;
 begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(nil);
  with SearchAdoDataSet do
   begin
    SearchDataSet:=false;
    TableName:=' select * from tables  where tabletype=3';
    CodeField:='tableid';
    TitleField:='description';
    SearchF.Connection:=dm.YeganehConnection;
    ShowModal;
   end;
   Result:=dm.SearchResult;
  end;


end.

