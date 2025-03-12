unit Dmu;

interface


uses
   Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList,YdbGrid, officeXP,
   uCiaTrayIcon, Math, TINYLib_TLB, uUpdateDbScripts, ShellApi, ExcelXP,TlHelp32,ComObj,ActiveX;
   //U_LOCK_ERROR_FRM,U_ENTER_IP_ADDRESS_FRM,
   //ARM LOCK
   //----------------------------------------------
   //ARM_TLB{, untARMDongle, ARMDongleCore }, Unit3;
   //----------------------------------------------
type
   TReplaceWordTypes = (rwtLetter, rwtDraft, rwtDraftToLetter);
  TDm = class(TDataModule)
    ReceiveTypes: TADOTable;
    Signers: TADOStoredProc;
    DToOrganizations: TDataSource;
    DSigner: TDataSource;
    Urgenceis: TADOTable;
    Classifications: TADOTable;
    Accesses: TADOTable;
    LetterImages: TImageList;
    Actions: TADOTable;
    ApplicationForms: TADOTable;
    DActions: TDataSource;
    DApplicationForms: TDataSource;
    UserSettings1: TADODataSet;
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
    LetterFormats: TADOTable;
    LetterFormatsCode: TIntegerField;
    LetterFormatsTitle: TWideStringField;
    Tables: TADOTable;
    TablesTableId: TWordField;
    TablesTableName: TWideStringField;
    TablesDescription: TWideStringField;
    DTables: TDataSource;
    Get_LetterWordFile: TADOStoredProc;
    WordApplicationDM: TWordApplication;
    Timer_SaveWord: TTimer;
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
    DGet_All_Letter: TDataSource;
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
    ToorganizationsCode: TWideStringField;
    SignersCode: TWideStringField;
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
    Get_LetterData_by_LetterIDExt: TStringField;
    UserShortCutUserID: TIntegerField;
    UserShortCutkeyText: TWideStringField;
    UserShortCutKeytitle: TWideStringField;
    UserShortCutaltKey: TStringField;
    UserShortCutuserShortCutID: TAutoIncField;
    SecretariatsPreCode: TWideStringField;
    UserSecretariat: TADODataSet;
    UserSecretariatUserId: TIntegerField;
    UserSecretariatSecId: TIntegerField;
    UserSecretariatSecTitle: TWideStringField;
    RelatedSecretariats: TADOTable;
    ToorganizationsisSecretariat: TBooleanField;
    ReferenceTables: TADOTable;
    WordField1: TWordField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    DReferenceTables: TDataSource;
    FieldType: TADOTable;
    DFieldType: TDataSource;
    FieldTypeFieldTypeID: TWordField;
    FieldTypeFieldTypeTitle: TWideStringField;
    Get_ReferenceTableData_By_TableID: TADOStoredProc;
    Get_ReferenceTableData_By_TableIDReferenceTableDataID: TAutoIncField;
    Get_ReferenceTableData_By_TableIDTableID: TIntegerField;
    Get_ReferenceTableData_By_TableIDDataID: TWordField;
    Get_ReferenceTableData_By_TableIDDataTitle: TWideStringField;
    SecretariatsServerID: TIntegerField;
    Server: TADOTable;
    DServer: TDataSource;
    ServerServerID: TIntegerField;
    ServerServerTitle: TWideStringField;
    ServerServerIP: TStringField;
    ServerDbName: TStringField;
    Get_LetterWordFileDescription: TWideStringField;
    Get_LetterWordFileLastUpdate: TDateTimeField;
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
    Select_ParaphTemplate: TADOStoredProc;
    Select_ParaphTemplateParaphTemplateID: TAutoIncField;
    Select_ParaphTemplateUserID: TIntegerField;
    Select_ParaphTemplateOrderID: TWordField;
    Select_ParaphTemplateTitle: TWideStringField;
    Select_ParaphTemplateParaph: TWideStringField;
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
    Get_userTable: TADOStoredProc;
    Get_userTableTableId: TWordField;
    Get_userTableTableName: TWideStringField;
    Get_userTableDescription: TWideStringField;
    Get_userTableTableType: TWordField;
    Get_userTableTableCode: TStringField;
    Get_userTableUserField1: TWideStringField;
    Get_userTableUserField2: TWideStringField;
    Select_UserSign: TADOStoredProc;
    DSelect_UserSign: TDataSource;
    Select_UserSignUserID: TIntegerField;
    Select_UserSignUserSign: TBlobField;
    DFromOrganizations: TDataSource;
    UrgenceisID: TSmallintField;
    UrgenceisTitle: TWideStringField;
    Sel_FollowUp_ByStart: TADOStoredProc;
    Sel_FollowUp_ByStartFollowUPID: TAutoIncField;
    Sel_FollowUp_ByStartFollowUPTypeID: TIntegerField;
    Sel_FollowUp_ByStartDoneStatusID: TWordField;
    Sel_FollowUp_ByStartUserID: TIntegerField;
    Sel_FollowUp_ByStartComment: TWideStringField;
    Sel_FollowUp_ByStartToDoDate: TStringField;
    Sel_FollowUp_ByStartToDoTime: TStringField;
    Sel_FollowUp_ByStartDoneComment: TWideStringField;
    Sel_FollowUp_ByStartHasAlarm: TBooleanField;
    Sel_FollowUp_ByStartDoneStatusTitle: TStringField;
    Sel_FollowUp_ByStartFollowupTypeTitle: TStringField;
    Sel_FollowUp_ByStartStartFollowUpID: TIntegerField;
    Sel_FollowUp_ByStartLetterid: TIntegerField;
    QrLetter: TADOQuery;
    QrLetterLetterID: TAutoIncField;
    QrLetterIndicatorID: TIntegerField;
    QrLetterMYear: TWordField;
    QrLetterSecretariatID: TWordField;
    QrLetterLetter_Type: TWordField;
    QrLetterletterformat: TWordField;
    QrLetterIncommingNO: TWideStringField;
    QrLetterIncommingdate: TWideStringField;
    QrLetterCenterNo: TWideStringField;
    QrLetterCenterDate: TStringField;
    QrLetterFromOrgID: TIntegerField;
    QrLetterToOrgID: TIntegerField;
    QrLetterSignerid: TWideStringField;
    QrLetterClassificationID: TWordField;
    QrLetterUrgencyID: TSmallintField;
    QrLetterMemo: TWideStringField;
    QrLetterAttachTitle: TWideStringField;
    QrLetterNumberOfAttachPages: TSmallintField;
    QrLetterNumberOfPage: TWordField;
    QrLetterReceiveTypeID: TWordField;
    QrLetterUserID: TIntegerField;
    QrLetterRetroactionNo: TWideStringField;
    QrLetterUserMemo: TWideStringField;
    QrLetterRegistrationDate: TStringField;
    QrLetterRegistrationTime: TStringField;
    QrLetterFollowLetterNo: TWideStringField;
    QrLetterToStaffer: TWideStringField;
    QrLetterSentLetterID: TIntegerField;
    QrLetterTemplateID: TIntegerField;
    QrLetterHeaderID: TIntegerField;
    QrLetterLetterRecommites: TWideStringField;
    QrLetterPreCode: TWideStringField;
    QrLetterfromstaffer: TWideStringField;
    QrLetterFinalized: TBooleanField;
    QrLetterSendStatusID: TWordField;
    QrLetterLastUpdate: TDateTimeField;
    QrLetterUserTableID: TIntegerField;
    QrLetterUniqueID: TLargeintField;
    QrLetterArchived: TBooleanField;
    QrLetterLatestActionTypeID: TWordField;
    QrLetterLatestActionReason: TWideStringField;
    QrLetterSubjectDescription: TWideStringField;
    QrLetterSubjectID: TIntegerField;
    QrLetterDeadLineDate: TStringField;
    QrLetterActionTypeID: TWordField;
    QrLetterUserTableID2: TIntegerField;
    DSLetter: TDataSource;
    QrLetterEmailNuFromDate: TWideStringField;
    QrLetterData: TADOQuery;
    UserSettings: TADOQuery;
    SpAddFileToDB: TADOStoredProc;
    ActionsAccessActionID: TWideStringField;
    GetfieldValueByLetterID: TADOStoredProc;
    DGetfieldValueByLetterID: TDataSource;
    Timer_WordMessage: TTimer;
    ClassificationsID: TIntegerField;
    ClassificationsTitle: TWideStringField;
    ReceiveTypesID: TIntegerField;
    ReceiveTypesTitle: TWideStringField;
    SignersUniqueID: TLargeintField;
    Users: TADOQuery;
    UsersId: TAutoIncField;
    UsersTitle: TWideStringField;
    UsersUserName: TWideStringField;
    UsersAccessID: TWordField;
    UsersDefualtSecretariatID: TWordField;
    UsersIsSecretariantStaffer: TBooleanField;
    UsersFromOrgTitle: TWideStringField;
    UsersDefaultSec: TStringField;
    UsersFromOrgID: TIntegerField;
    UsersKartableGridInfo: TBlobField;
    UsersDabirGridInfo: TBlobField;
    UsersBeginActiveDate: TStringField;
    UsersEndActiveDate: TStringField;
    UsersAlternativeUserID: TIntegerField;
    UsersSecondOrgTitle: TWideStringField;
    UsersSecondOrgID: TIntegerField;
    UsersAlternativebeginDate: TStringField;
    UsersAlternativeEndDate: TStringField;
    UsersHasSecureLetterAccess: TBooleanField;
    UsersEmail: TWideStringField;
    UsersPassword: TWideStringField;
    qtemp: TADOQuery;
    QWord_Must_Readonly: TADOQuery;
    Select_LetterReCommite: TADOStoredProc;
    Select_LetterReCommiteResponsibleStaffertitle: TWideStringField;
    Select_LetterReCommitefromorgtitle: TWideStringField;
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
    Select_LetterReCommiteOrgStaff: TWideStringField;
    Select_LetterReCommiteDeadLineDate: TStringField;
    Select_LetterReCommiteLastUpdate: TDateTimeField;
    Select_LetterReCommiteActionTypeID: TWordField;
    Select_LetterReCommiteDeadLineToint: TIntegerField;
    insert_ReCommites: TADOStoredProc;
    qGetID: TADOQuery;
    UsersActive: TBooleanField;
    qDeactivateUsers: TADOQuery;
    qDeactivateUsersId: TAutoIncField;
    qDeactivateUsersUserName: TWideStringField;
    qDeactivateUsersActive: TBooleanField;
    qRepMohlateEghdam: TADOQuery;
    qRepMohlateEghdamLetterID: TAutoIncField;
    qRepMohlateEghdamIndicatorID: TIntegerField;
    qRepMohlateEghdamMYear: TWordField;
    qRepMohlateEghdamLetter_Type: TIntegerField;
    qRepMohlateEghdamIncommingNO: TWideStringField;
    qRepMohlateEghdamIncommingdate: TWideStringField;
    qRepMohlateEghdamFromOrgID: TIntegerField;
    qRepMohlateEghdamToOrgID: TIntegerField;
    qRepMohlateEghdamLetterRecommites: TWideStringField;
    qRepMohlateEghdamParaph: TWideStringField;
    qRepMohlateEghdamDeadLineDate: TStringField;
    qRepMohlateEghdamviewdate: TStringField;
    QOrganization: TADOQuery;
    QLetterTypes: TADOQuery;
    QLetterTypesID: TIntegerField;
    QLetterTypesTitle: TWideStringField;
    QOrganizationID: TAutoIncField;
    QOrganizationTitle: TWideStringField;
    qRepMohlateEghdamlkLetterType: TStringField;
    qRepMohlateEghdamlkfromorganization: TStringField;
    qRepMohlateEghdamlktoorganization: TStringField;
    qRepMohlateEghdamMemo: TWideStringField;
    YDabir_Select_Contract_By_CustomerID: TADOStoredProc;
    YDabir_Select_customer_By_CustomerID: TADOStoredProc;
    YDabir_Select_FollowUP_By_CustomerID: TADOStoredProc;
    YDabir_Select_List_Customers: TADOStoredProc;
    YDabir_Select_customer_By_CustomerIDCustomerID: TAutoIncField;
    YDabir_Select_customer_By_CustomerIDCustomerNo: TStringField;
    YDabir_Select_customer_By_CustomerIDPersonTitle: TWideStringField;
    YDabir_Select_customer_By_CustomerIDAddress: TWideStringField;
    YDabir_Select_customer_By_CustomerIDPhone: TWideStringField;
    YDabir_Select_customer_By_CustomerIDNotes: TWideStringField;
    YDabir_Select_customer_By_CustomerIDCompanyName: TWideStringField;
    YDabir_Select_customer_By_CustomerIDCityId: TSmallintField;
    YDabir_Select_customer_By_CustomerIDGroupId: TIntegerField;
    YDabir_Select_customer_By_CustomerIDMarketerID: TIntegerField;
    YDabir_Select_customer_By_CustomerIDIsActive: TBooleanField;
    YDabir_Select_customer_By_CustomerIDSenderType: TWordField;
    YDabir_Select_customer_By_CustomerIDPriority: TIntegerField;
    YDabir_Select_customer_By_CustomerIDTreater: TWideStringField;
    YDabir_Select_customer_By_CustomerIDCompaginID: TWordField;
    YDabir_Select_customer_By_CustomerIDPostalCode: TWideStringField;
    YDabir_Select_customer_By_CustomerIDEmailAddress: TWideStringField;
    YDabir_Select_customer_By_CustomerIDWorkPhone1: TWideStringField;
    YDabir_Select_customer_By_CustomerIDWebsite: TStringField;
    YDabir_Select_customer_By_CustomerIDMobilePhone: TWideStringField;
    YDabir_Select_customer_By_CustomerIDFaxNumber: TWideStringField;
    YDabir_Select_customer_By_CustomerIDcompetitiveNote: TWideStringField;
    YDabir_Select_customer_By_CustomerIDInsertdate: TStringField;
    YDabir_Select_customer_By_CustomerIDLastUpdate: TStringField;
    YDabir_Select_customer_By_CustomerIDCustomerStatusID: TWordField;
    YDabir_Select_customer_By_CustomerIDCancelReasonID: TWordField;
    YDabir_Select_customer_By_CustomerIDCancelComment: TWideStringField;
    YDabir_Select_customer_By_CustomerIDCancelDate: TStringField;
    YDabir_Select_customer_By_CustomerIDUserTableLinkedID: TIntegerField;
    YDabir_Select_List_CustomersCustomerID: TStringField;
    YDabir_Select_List_CustomersPersonTitle: TWideStringField;
    YDabir_Select_customer_By_CustomerIDStateID: TWordField;
    YDabir_Select_customer_By_CustomerIDInnerPhone: TWideStringField;
    YDabir_Select_customer_By_CustomerIDProducts: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDContractID: TAutoIncField;
    YDabir_Select_Contract_By_CustomerIDCustomerID: TIntegerField;
    YDabir_Select_Contract_By_CustomerIDBeginDate: TStringField;
    YDabir_Select_Contract_By_CustomerIDEndDate: TStringField;
    YDabir_Select_Contract_By_CustomerIDAmount: TIntegerField;
    YDabir_Select_Contract_By_CustomerIDAttachment: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDComment: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDMarketerID: TIntegerField;
    YDabir_Select_Contract_By_CustomerIDContractTypeID: TWordField;
    YDabir_Select_Contract_By_CustomerIDProductID: TWordField;
    YDabir_Select_Contract_By_CustomerIDContractSubTypeID: TWordField;
    YDabir_Select_Contract_By_CustomerIDContractText: TBlobField;
    YDabir_Select_Contract_By_CustomerIDTaxPercentage: TFloatField;
    YDabir_Select_Contract_By_CustomerIDGoodJobPercentage: TFloatField;
    YDabir_Select_Contract_By_CustomerIDByCashAmount: TFloatField;
    YDabir_Select_Contract_By_CustomerIDByCashFishNo: TFloatField;
    YDabir_Select_Contract_By_CustomerIDInsuranceAccount: TFloatField;
    YDabir_Select_Contract_By_CustomerIDTaxFish: TBlobField;
    YDabir_Select_Contract_By_CustomerIDContractTypeTitle: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDContractSubTypeTitle: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDProductTitle: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDMarketerTitle: TWideStringField;
    YDabir_Select_Contract_By_CustomerIDTotalAmount: TFloatField;
    YDabir_Select_FollowUP_By_CustomerIDFollowUPID: TAutoIncField;
    YDabir_Select_FollowUP_By_CustomerIDCustomerID: TIntegerField;
    YDabir_Select_FollowUP_By_CustomerIDActionTypeID: TIntegerField;
    YDabir_Select_FollowUP_By_CustomerIDDoneStatusID: TWordField;
    YDabir_Select_FollowUP_By_CustomerIDMarketerID: TIntegerField;
    YDabir_Select_FollowUP_By_CustomerIDComment: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDToDoDate: TStringField;
    YDabir_Select_FollowUP_By_CustomerIDDoneDate: TStringField;
    YDabir_Select_FollowUP_By_CustomerIDAttachment1: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDAttachment2: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDToDoTime: TStringField;
    YDabir_Select_FollowUP_By_CustomerIDSuccessChance: TWordField;
    YDabir_Select_FollowUP_By_CustomerIDDoneComment: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDinsertdate: TDateTimeField;
    YDabir_Select_FollowUP_By_CustomerIDLastupdate: TDateTimeField;
    YDabir_Select_FollowUP_By_CustomerIDUserTableLinkedID: TIntegerField;
    YDabir_Select_FollowUP_By_CustomerIDWordAttachment: TBlobField;
    YDabir_Select_FollowUP_By_CustomerIDPicAttachment: TBlobField;
    YDabir_Select_FollowUP_By_CustomerIDMarketerTitle: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDActionTypeTitle: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerIDDoneStatusTitle: TWideStringField;
    YDabir_Select_List_CustomersCustomerNO: TStringField;
    qRepMohlateEghdamSecTitle: TWideStringField;
    qDeactivateUsersTitle: TWideStringField;
    spShowRounevesht: TADOStoredProc;
    spShowRouneveshtTMP_ID: TAutoIncField;
    spShowRouneveshtRecommiteID: TIntegerField;
    spShowRouneveshtLetterID: TIntegerField;
    spShowRouneveshtID: TIntegerField;
    spShowRouneveshtTYPE: TIntegerField;
    spShowRouneveshtParentId: TIntegerField;
    spShowRouneveshtOrgID: TIntegerField;
    spShowRouneveshtParaph: TWideStringField;
    spShowRouneveshtRecommiteDate: TWideStringField;
    spShowRouneveshtUserID: TIntegerField;
    spShowRouneveshtIsCopy: TBooleanField;
    spShowRouneveshtProceeded: TBooleanField;
    spShowRouneveshtProceedDate: TWideStringField;
    spShowRouneveshtstaffmemo: TWideStringField;
    spShowRouneveshtviewdate: TWideStringField;
    spShowRouneveshtOrgStaff: TWideStringField;
    spShowRouneveshtDeadLineDate: TWideStringField;
    spShowRouneveshtLastUpdate: TDateTimeField;
    spShowRouneveshtUniqueID: TLargeintField;
    spShowRouneveshtActionTypeID: TIntegerField;
    spShowRouneveshtDeadLineToint: TIntegerField;
    spShowRouneveshtIsAnswer: TBooleanField;
    spShowRouneveshtISFollowup: TBooleanField;
    spShowRouneveshtFinallized: TBooleanField;
    spShowRouneveshtorgtitle: TWideStringField;
    spShowRouneveshtIsInnerOrg: TBooleanField;
    spShowRouneveshtUserName: TWideStringField;
    FromOrganizationsName_Semat: TWideStringField;
    Get_RecommitePayvast_by_RecommiteID: TADOStoredProc;
    Get_RecommitePayvast_by_RecommitePayvastID: TADOStoredProc;
    Get_RecommitePayvast_by_RecommiteIDRecommiteID: TIntegerField;
    Get_RecommitePayvast_by_RecommiteIDID: TAutoIncField;
    Get_RecommitePayvast_by_RecommiteIDExtention: TWordField;
    Get_RecommitePayvast_by_RecommiteIDdescription: TWideStringField;
    Get_RecommitePayvast_by_RecommitePayvastIDID: TAutoIncField;
    Get_RecommitePayvast_by_RecommitePayvastIDImage: TBlobField;
    Get_RecommitePayvast_by_RecommiteIDExtentionTitle: TStringField;
    Get_RecommitePayvast_by_RecommiteIDExt: TStringField;
    Get_RecommitePayvast_by_RecommiteIDLetterID: TIntegerField;
    Select_LetterReCommiteIsAnswer: TBooleanField;
    Select_LetterReCommiteISFollowup: TBooleanField;
    Select_LetterReCommiteFinallized: TBooleanField;
    Select_LetterReCommiteIsCopy_In_Dabir: TBooleanField;
    Select_LetterReCommiteSentToDabir: TBooleanField;
    UserseCartableGridInfo: TStringField;
    UserseCartableTheme: TStringField;
    UsersCanViewSecureRecommite: TBooleanField;
    ChartWorkGroup: TADOQuery;
    ChartWorkGroupGroupID: TAutoIncField;
    ChartWorkGroupGroupName: TStringField;
    UsersGroupID: TIntegerField;
    dsChartWorkGroup: TDataSource;
    Select_LetterReCommiteUniqueID: TLargeintField;
    Select_LetterReCommiteHasPayvast: TBooleanField;
    Select_LetterReCommiteErja_Or_Answer_Date: TStringField;
    Select_LetterReCommiteIsSecure: TBooleanField;
    Select_LetterReCommiteGroupFlag: TIntegerField;
    spGetInnerNo: TADOStoredProc;
    spGetInnerNoLetterID: TAutoIncField;
    spGetInnerNoInnerNo: TWideStringField;
    QUserForLookup: TADOQuery;
    QUserForLookupId: TAutoIncField;
    QUserForLookupTitle: TWideStringField;
    QUserForLookupUserName: TWideStringField;
    QUserForLookupPassWord: TWideStringField;
    QUserForLookupAccessID: TWordField;
    QUserForLookupFromOrgID: TIntegerField;
    QUserForLookupDefualtSecretariatID: TWordField;
    QUserForLookupIsSecretariantStaffer: TBooleanField;
    QUserForLookupKartableGridInfo: TBlobField;
    QUserForLookupDabirGridInfo: TBlobField;
    QUserForLookupEndActiveDate: TStringField;
    QUserForLookupBeginActiveDate: TStringField;
    QUserForLookupAlternativeUserID: TIntegerField;
    QUserForLookupAlternativeEndDate: TStringField;
    QUserForLookupAlternativebeginDate: TStringField;
    QUserForLookupHasSecureLetterAccess: TBooleanField;
    QUserForLookupSecondOrgID: TIntegerField;
    QUserForLookupeCartableGridInfo: TStringField;
    QUserForLookupeCartableTheme: TStringField;
    QUserForLookupEmail: TWideStringField;
    QUserForLookupActive: TBooleanField;
    QUserForLookupCanViewSecureRecommite: TBooleanField;
    QUserForLookupGroupID: TIntegerField;
    ImgUDI: TImageList;
    QWorkSheetBaseType: TADOQuery;
    QWorkSheetBaseTypeID: TAutoIncField;
    QWorkSheetBaseTypeMean: TStringField;
    QWorkSheetBaseImportantLevel: TADOQuery;
    QWorkSheetBaseStatus: TADOQuery;
    QWorkSheetSessionsMustCome: TADOQuery;
    QWorkSheetSessionsUserResponse: TADOQuery;
    QWorkSheetTasksStatus: TADOQuery;
    QWorkSheetTasksUserResponse: TADOQuery;
    QWorkSheetTasksWithAlarm: TADOQuery;
    QWorkSheetVisitsUserResponse: TADOQuery;
    QWorkSheetBaseImportantLevelID: TAutoIncField;
    QWorkSheetBaseImportantLevelMean: TStringField;
    QWorkSheetBaseStatusID: TAutoIncField;
    QWorkSheetBaseStatusMean: TStringField;
    QWorkSheetSessionsMustComeID: TAutoIncField;
    QWorkSheetSessionsMustComeMean: TStringField;
    QWorkSheetSessionsUserResponseID: TAutoIncField;
    QWorkSheetSessionsUserResponseMean: TStringField;
    QWorkSheetTasksStatusID: TAutoIncField;
    QWorkSheetTasksStatusMean: TStringField;
    QWorkSheetTasksUserResponseID: TAutoIncField;
    QWorkSheetTasksUserResponseMean: TStringField;
    QWorkSheetTasksWithAlarmID: TAutoIncField;
    QWorkSheetTasksWithAlarmMean: TStringField;
    QWorkSheetVisitsUserResponseID: TAutoIncField;
    QWorkSheetVisitsUserResponseMean: TStringField;
    QWorkSheetUsers: TADOQuery;
    QWorkSheetUsersID: TAutoIncField;
    QWorkSheetUsersTitle: TWideStringField;
    QWorkSheetBaseTypeCode: TIntegerField;
    QWorkSheetBaseImportantLevelCode: TIntegerField;
    QWorkSheetBaseStatusCode: TIntegerField;
    QWorkSheetSessionsMustComeCode: TIntegerField;
    QWorkSheetSessionsUserResponseCode: TIntegerField;
    QWorkSheetTasksStatusCode: TIntegerField;
    QWorkSheetTasksUserResponseCode: TIntegerField;
    QWorkSheetTasksWithAlarmCode: TIntegerField;
    QWorkSheetVisitsUserResponseCode: TIntegerField;
    QCheckTadakhol: TADOQuery;
    UsersCanRecommiteWithOtherOrg: TBooleanField;
    Get_LetterData_by_LetterIDVersionNo: TStringField;
    Get_LetterData_by_LetterIDVersionDate: TStringField;
    Get_LetterData_by_LetterDataIDVersionNo: TStringField;
    Get_LetterData_by_LetterDataIDVersionDate: TStringField;
    Get_RecommitePayvast_by_RecommiteIDVersionNo: TStringField;
    Get_RecommitePayvast_by_RecommiteIDVersionDate: TStringField;
    Get_RecommitePayvast_by_RecommitePayvastIDVersionNo: TStringField;
    Get_RecommitePayvast_by_RecommitePayvastIDVersionDate: TStringField;
    Select_LetterReCommiteRecommiteTime: TStringField;
    CRMConnection: TADOConnection;
    qDefineColors: TADOQuery;
    qDefineColorsID: TAutoIncField;
    qDefineColorsColor: TStringField;
    qDefineColorsDescriptions: TStringField;
    qDefineColorsAccessDesc: TStringField;
    qSelectedColor: TADOQuery;
    qSelectedColorColorID: TIntegerField;
    qSelectedColorColor: TStringField;
    qSelectedColorDescriptions: TStringField;
    DFollowType: TDataSource;
    FollowType: TADOTable;
    quLetterSigners: TADOQuery;
    quLetterSignersUserID: TIntegerField;
    QrUserSign: TADOQuery;
    QrUserSignUserID: TIntegerField;
    QrUserSignUserSign: TBlobField;
    QrUserSignTitle: TWideStringField;
    QrUserSignUserName: TWideStringField;
    QrUserSignPassword: TWideStringField;
    WordApplication2: TWordApplication;
    qLetterSign: TADOQuery;
    ArchiveConnection: TADOConnection;
    qryArchiveAttachment: TADOQuery;
    qryArchiveAttachmentIMAGE: TBlobField;
    qryArchiveAttachmentLetterDataID: TAutoIncField;
    qryArchiveAttachmentextention: TStringField;
    Get_LetterData_by_LetterIDarchiveID: TIntegerField;
    Get_LetterData_by_LetterIDisDocument: TBooleanField;
    UserscanViewClassifiedArchiveDocs: TBooleanField;
    WordDocument: TWordDocument;
    sp_inbox: TADOStoredProc;
    sp_inboxletterformat: TIntegerField;
    Get_LetterData_by_LetterIDisECE: TBooleanField;
    Get_All_LetterData: TADOStoredProc;
    Get_All_LetterDataletterid: TIntegerField;
    Get_All_LetterDataLetterDataID: TAutoIncField;
    Get_All_LetterDataExtention: TStringField;
    Get_All_LetterDataDESCRIPTION: TWideStringField;
    Get_All_LetterDataImage: TBlobField;
    adoFollow_Retroaction_Letter: TADODataSet;
    adoFollow_Retroaction_LetterFR_ID: TAutoIncField;
    adoFollow_Retroaction_LetterLetterID: TIntegerField;
    adoFollow_Retroaction_LetterFR_LetterID: TIntegerField;
    adoFollow_Retroaction_LetterFRIndicatorID: TIntegerField;
    adoFollow_Retroaction_LetterFRKindTitle: TStringField;
    adoFollow_Retroaction_LetterFR_Kind: TIntegerField;
    adoFollow_Retroaction_LetterFRLetterNO: TStringField;
    Get_All_Letter: TADOStoredProc;
    Get_All_LetterLetterID: TIntegerField;
    Get_All_LetterCenterNo: TWideStringField;
    Get_All_LetterIndicatorID: TIntegerField;
    Get_All_LetterMYear: TIntegerField;
    Get_All_LetterSecretariatID: TIntegerField;
    Get_All_LetterLetter_Type: TIntegerField;
    Get_All_Letterletterformat: TIntegerField;
    Get_All_LetterIncommingNO: TWideStringField;
    Get_All_LetterFromOrgID: TIntegerField;
    Get_All_LetterIncommingDate: TWideStringField;
    Get_All_LetterToOrgID: TIntegerField;
    Get_All_LetterUrgencyID: TIntegerField;
    Get_All_LetterMemo: TWideStringField;
    Get_All_LetterRetroactionNo: TWideStringField;
    Get_All_LetterRegistrationDate: TStringField;
    Get_All_LetterFollowLetterNo: TWideStringField;
    Get_All_LetterToStaffer: TWideStringField;
    Get_All_LetterSentLetterID: TIntegerField;
    Get_All_LetterTemplateID: TIntegerField;
    Get_All_LetterUserMemo: TWideStringField;
    Get_All_LetterDeadLineDate: TStringField;
    Get_All_LetterSenderTitle: TWideStringField;
    Get_All_LetterDeliverTitle: TWideStringField;
    Get_All_Letterhas_Page: TBooleanField;
    Get_All_Letterhas_WordPage: TBooleanField;
    Get_All_Letterhas_file: TBooleanField;
    Get_All_LetterSubjectID: TIntegerField;
    Get_All_LetterLetterTypeTitle: TWideStringField;
    Get_All_LetterLetterRecommites: TWideStringField;
    Get_All_LettersendstatusTitle: TWideStringField;
    Get_All_LetterInnerNo: TStringField;
    Get_All_LetterArchived: TBooleanField;
    Get_All_LetterActionTypeTitle: TWideStringField;
    Get_All_LetterSignerID: TWideStringField;
    Get_All_LetterSignerTitle: TWideStringField;
    Get_All_LetterReceiveTypeID: TIntegerField;
    Get_All_Letterhas_HasLetterForms: TBooleanField;
    Get_All_LetterClassificationID: TIntegerField;
    Get_All_LetterArchivePlace: TWideStringField;
    Get_All_LetterSubjectDescription: TWideStringField;
    Get_All_Letterhas_sign: TBooleanField;
    Get_All_LetterInnerNoForWord: TStringField;
    Get_All_LetterSubjectTitle: TStringField;
    Get_All_LetterATF: TWideStringField;
    Get_All_LetterPEY: TWideStringField;
    Get_All_LetterATF2: TWideStringField;
    Get_All_LetterPEY2: TWideStringField;
    Usersiscartableuser: TBooleanField;
    UsersTreeOrgID: TIntegerField;
    UsersFourOrgID: TIntegerField;
    UsersFiveOrgID: TIntegerField;
    UsersTreeOrgTitle: TStringField;
    UsersFourOrgTitle: TStringField;
    UsersFiveOrgTitle: TStringField;
    qry_FromOrganizations: TADOQuery;
    qry_FromOrganizationsID: TIntegerField;
    qry_FromOrganizationsFromOrgID: TIntegerField;
    qry_FromOrganizationsGroupName1: TStringField;
    qry_FromOrganizationsSecondOrgID: TIntegerField;
    qry_FromOrganizationsGroupName2: TStringField;
    qry_FromOrganizationsTreeOrgID: TIntegerField;
    qry_FromOrganizationsGroupName3: TStringField;
    qry_FromOrganizationsFourOrgID: TIntegerField;
    qry_FromOrganizationsGroupName4: TStringField;
    qry_FromOrganizationsFiveOrgID: TIntegerField;
    qry_FromOrganizationsGroupName5: TStringField;
    UsersGroupName1: TStringField;
    UsersGroupName2: TStringField;
    UsersGroupName3: TStringField;
    UsersGroupName4: TStringField;
    UsersGroupName5: TStringField;
    ADOStoredProc1: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    WordField2: TWordField;
    IntegerField3: TIntegerField;
    WideStringField3: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    StringField3: TStringField;
    WordField3: TWordField;
    WideStringField6: TWideStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    IntegerField4: TIntegerField;
    BlobField1: TBlobField;
    BlobField2: TBlobField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    Get_All_LetterSecretariatTitle: TStringField;
    Get_All_LetterEmailFromDateTime: TWideStringField;
    QrLetterEmailFromDateTime: TWideStringField;
    qryGetIdFromOrganizations: TADOQuery;
    QrLetterEmailFrom: TWideStringField;
    QrLetterEmailSubject: TWideStringField;
    Get_All_LetterEmailFrom: TWideStringField;
    Get_All_LetterEmailSubject: TWideStringField;
    qryGetDbVer: TADOQuery;
    Sp_Ins_Emails: TADOStoredProc;
    IntegerField5: TIntegerField;
    AutoIncField2: TAutoIncField;
    StringField4: TStringField;
    WideStringField10: TWideStringField;
    BlobField3: TBlobField;
    LetterTemplateDocTemplateGroupID: TIntegerField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    Timer_SaveExcel: TTimer;
    qryGetUserSettings: TADOQuery;
    qrySystemSetting: TADOQuery;
    Get_LetterWordFileIsTemplate: TBooleanField;
    Timer1: TTimer;
    Get_LetterWordFileFILENAME: TStringField;
    Get_LetterWordFileFileType: TStringField;
    qryAutoRunScript: TADOQuery;
    Get_All_LetterIsNetWork: TBooleanField;
    Get_LetterData_by_LetterDataIDIsTemplate: TBooleanField;
    Get_LetterData_by_LetterIDIsTemplate: TBooleanField;
    Get_All_LetterDataIsTemplate: TBooleanField;
    ImageList_MainNew: TImageList;
    LetterImages_New: TImageList;

    function  GetActionAccess(ActionTag:String;FormTag:word):boolean;

    procedure GetUserSettings;
    function  LastIndicatorID(Letter_type:integer;LetterFormat:byte;IsForFax:Boolean=False):integer;
    procedure Connect;
    Function  GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;Follow_Retroaction:widestring;Follow_RetroactionYear:integer;var LetterID: integer;var ResultReceiveMode:boolean):boolean; // Amin 1391/12/05 Edited

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
    procedure OpenExcelFile(Filename:string;Readonly:boolean);
    procedure Timer_SaveWordTimer(Sender: TObject);
    procedure WordApplicationDMDocumentBeforeClose(ASender: TObject;
                      const Doc: _Document; var Cancel: WordBool);
    function Y_InputQuery (const ACaption, Adefault: string; var Value: string; FormCaption:string): Boolean;


    Procedure ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;top:integer;where:widestring);
    procedure InsertTextIntoLetter(w:twordapplication;LetterID:integer);
    procedure Select_LetterReCommiteBeforePost(DataSet: TDataSet);
    procedure UserTemplateGroupAfterInsert(DataSet: TDataSet);
    procedure UserShortCutCalcFields(DataSet: TDataSet);
    procedure UserSecretariatAfterInsert(DataSet: TDataSet);
    procedure ExecCommand(s:string);
    procedure Refresh_ReferenceTableData(TableID:integer);
    Procedure Exec_Select_FollowUP_By_Date(BDate:string;Edate:string;DonStatusID:integer);
    function GetUserTableID:integer;
    procedure ChangePassword;
    Procedure Open_GetfieldValueByLetterID(letterId:integer;FormOrder:integer);
    Procedure ExportLetterField(letterId:integer;FormOrder:integer;ExportType:byte);
    procedure UrgenceisTitleGetText(Sender: TField; var Text: String;DisplayText: Boolean);
    procedure Timer_WordMessageTimer(Sender: TObject);
    procedure UsersAfterInsert(DataSet: TDataSet);
    procedure UsersAfterScroll(DataSet: TDataSet);
    procedure UsersPasswordGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure UsersPasswordSetText(Sender: TField; const Text: String);
    procedure ShowSigners(LID: integer; ShowFool: boolean);
    procedure WordApplication2DocumentOpen(ASender: TObject; const Doc: _Document);
    procedure WordApplicationDMDocumentOpen(ASender: TObject; const Doc: _Document);
    procedure Get_LetterData_by_LetterIDAfterScroll(DataSet: TDataSet);
    procedure adoFollow_Retroaction_LetterCalcFields(DataSet: TDataSet);
    procedure adoFollow_Retroaction_LetterAfterPost(DataSet: TDataSet);
    procedure ExcelApplicationWorkbookBeforeClose(ASender: TObject;
      const Wb: _Workbook; var Cancel: WordBool);
    procedure Timer_SaveExcelTimer(Sender: TObject);
    procedure YeganehConnectionBeforeDisconnect(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function  processExists(exeFileName: string): Boolean;
    function  KillTask(ExeFileName: string): Integer;
    { TODO -oparsa : Task443-14031012 }
    function  UnlockAndDeleteFile(const FileName: string): Boolean;
    function  GetServerTime:string;
    { TODO -oparsa : Task443-14031012 }
  private
    FCurrentMyear:Integer;
    FSecID:byte;
    ActDocName : String;
    FWord_Must_Readonly: Integer;
    procedure SetWord_Must_Readonly(const Value: Integer);
    function WordMustReadonly(FormTag:Integer;AccessID:Integer;UserID:Integer):Integer;
    procedure OpenWorkSheetTablesForLoukup;
    //Add Sanaye 950828
    // €ÌÌ—«  ﬁ›· »—‰«„Â
    //ARM LOCK
    //----------------------------------------------
    function ByteArrayToVariant( const A: array of byte ): Variant;
    //----------------------------------------------
    //End Sanaye...

    //ARM LOCK
    //----------------------------------------------
//    FUNCTION GET_ARM_INFO_01(IP,KEY1,KEY2 : String) : String;
//    FUNCTION GET_ARM_INFO_02(IP,KEY1,KEY2 : String) : String;
    //----------------------------------------------
    function GetLockIP:string;
    function IsArmOk:Integer;
    function GetIntValue1:Integer;
    function GetExpireDate:string;

    function IsTinyOk:Boolean;

  public
//    unt:AESClass;
//    ARMClass1:TARMClass;
    _MyUserID:Integer;
    ParaphText:String;
    ReceiveSelect,
    SentSelect,
    BothSelect,
    SearchStResult,
    OrgName,UserMemoDisplay,
    RelatedTableName,RelatedIDField,RelatedDisplayField,PathOfECE:string;
    DefaultSClassificationID,
    DefaultSUrgencyID,
    DefaultSNumberOfAttachPages,
    DefaultSNumberOfPage ,
    DefaultSReceiveTypeID,
    DefaultSFromOrgId  ,
    DefualtSSigner     ,//»œ”  ¬„œÂ «“ ›—„  ‰ŸÌ„«  /‰«„Â ’«œ—Â/«„÷«Ì ﬂ‰‰œÂ
    DefaultRClassificationID,
    DefaultRUrgencyID    ,
    DefaultRNumberOfAttachPages,
    DefaultRFromOrgId  ,
    DefaultRNumberOfPage ,

    DefaultRReceiveTypeID,
    BeginIndicator, LetterIDOpened      :integer;

    DayInWeek ,
    InitialReceivedMode,
    InitialArchiveMode,
    DayInWeekForBackup ,
    InitialDisplyMode  :byte;
    SearchStringResult : string;

    AskMonoSelect : Boolean;
    ckBidiModeLetterGrid : Boolean;
    ISMessageShow : Boolean;

    SearchResult ,
    {Ranjbar 89.09.28 ID=212}
    //MaxLetterToShow ,
    MaxLetterInDabir, //‰„«Ì‘  ⁄œ«œ ‰«„Â œ— œ»Ì—Œ«‰Â
    //---
    _LetterID:integer;
    RefreshPriodTime:integer;

    ShowFarsiCaption,
    InsertLog,
    ShowOriginalErrorMessage,
    AutomaticSendForECE,
    UniqeIndicator,
    EqualAnswerIndicator,
    version,
    FullTextSearch,
    RecommiteCopy,
    UseTemplate,
    LetterHasArchiveCopy,
    //HasJpg,
    AllowMultiUser,
    ChartorderbyTitle,
    ListFromorg,
    DefaultProceed,

    DefaultIsCopy, //œ— œ»Ì—Œ«‰Â  ⁄ÌÌ‰ «—Ã«⁄ ‰«„Â »’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì - „Ê—œ «” ›«œÂ ›ﬁÿ œ— ﬁ—„ «—Ã«⁄
    ReciveIsCopy,  //œ— ﬂ«— «»· ÅÌÊ” Â«Ì ‰«„Â Â«Ì Ê«—œÂ »Â ’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì «—Ã«⁄ ‘Ê‰œ .
    DefaultInnerCopy : Boolean;

    FocusedColor:Tcolor;
    MemoFont:TFont;
    MainFont:TFont;
    DefaultOrgPreCode,keytext:String;
    procedure RefreshTemplate;
    procedure SearchTitle(YW:TYWhereEdit);
    Function  FileName(secid,myear:Integer;indicatorid:integer):string;
    function  Cdate(S:string):string;

    property  CurrentMyear :Integer read fCurrentMyear write SetCurrentMyear;
    property  SecID :byte read fSecID write SetSecID;
    property  Word_Must_Readonly:Integer read FWord_Must_Readonly write SetWord_Must_Readonly;

    function  Search(Y:TYwhereEdit):integer;

    function GetOldSecretariatID(LetterID:Integer):Integer;
    function GetSecretariatName(SecretariatID:Integer):String;

    procedure SaveTemplateToFile(ty : String = 'w');
    procedure Replace(var main:widestring;old,new:widestring);
    procedure updateAddedInfoRecord(PrimaryCode,Fieldname,FieldValue,letterWhere:string);
    function ExecGet_LetterWordFile(LetterID:integer;ReadOnly:boolean;aOpenFile:Boolean=True;ext:Integer=3):boolean;
    function IsLetterRead(LetterID:Integer):Boolean;
    procedure UpdateRecommite(LetterID:Integer);
    procedure DeactivateUser;
    function GetValueFromRegistry(RootKeyPath:String;KeyName:String):String;
    function Check_CRM_Exists:Boolean;
    function UserHasRecords:Boolean;
    function ReplaceCharacter( s : widestring;old,new:Char):widestring;

    function CheckTadakhol(Year:Integer;Month:String;Day:Integer;BeginTimeToMinute:Integer;EndTimeToMinute:Integer;UserID:Integer;WorkSheetBaseID:Integer):Boolean;
    function GetMonthShamsiName(ind:Integer):String;
    function GetMonthShamsiIndex(S:String):string;
    procedure OpenqSelectedColor(LetterID: Integer);
    function GetArchiveSetting(VariableID:Integer):String;
    procedure SetWordOpen(LetterID ,UserID:integer);
    function OpendByAnotherUser(LetterID:integer):integer;
    procedure SetWordClosed(LetterID, UserID: integer);
    function StringToPWide(  sStr: string;  var iNewSize: integer): PWideChar;
    function replacePWC(input: Pwidechar): Pwidechar;
    function getIdFromOrganizations(strTitle : String):Integer;
    function getDelphiVer:String;
    function getDBVer:String;
    { TODO -oparsa : 14030108 }
    procedure AutoUpdateDatabase;
    { TODO -oparsa : 14030108 }
    procedure Ins_Email(Subject, SendAddress, ReciveAddress, Memo, AttachFile, AttachFileName:String;
                      Status:Smallint; DateEmail, TimeEmail:String; IsAnswer, IsReciveEmail:Byte; UsersID:Integer; IsRead, IsPersonal, IsImportant, IsSecret:Byte; EmailNuFromDate:String);
    { TODO -oparsa : 14030626 }
    procedure ActiveWord;
    function IsWordRunning: Boolean;
    { TODO -oparsa : 14030626 }
  end;

Var
   Dm:TDm;
   _UserID:integer;
   _UserEmail ,
   _UserName:String;
   _UserFolder : String;
   _AccessID:byte;
   _DefaultSec:integer;
   _UserFromOrgID:integer;
   _ResultOrgID:integer;       //œ——›—„ ç«—  ”«“„«‰Ì ° ¬ÌœÌ ç«—  «‰ Œ«» ‘œÂ œ— «Ì‰ „ €Ì— ﬁ—«— „Ì êÌ—œ
   _ResultOrgTitle:WideString;
   _ResultOrgCode:WideString;
   _ResultOrgRespon:WideString;
   _UserLoginLogoutID:integer;
   _Word_Is_Opened : boolean;
   _Excel_Is_Opened : boolean;
   _WordFileName:string;
   _ExcelFileName:string;
   _PasswordMustChange:boolean;
   _TempPath:string;
   _ResultFolderID:integer;
   _AccessToClassifieldLetter:boolean;
   _AllowToEditWordFiles:boolean;
   _HasReplicate :boolean;     //ÃÂ  «‰ ﬁ«· ‰«„Â «“  Õ  ÊÌ‰œÊ“Ì »Â  Õ  Ê»Ì
   _SoftTitle : String;
   _DatabaseName: string;
   _CRMDatabaseName: string;
   _ServerID : integer;
   _Dont_save_Word : Boolean;
   _Has_Excel_Template : Boolean;
   _IsSecretariatStaffer: Boolean; // ⁄ÌÌ‰ «Ì‰ﬂÂ ﬂ«—»— ﬂ«—„‰œ œ»Ì—Œ«‰Â «”  Ì« ‰Â
   _ArchiveCenterID: Integer;
   _Year : Integer;
   _Today :String;
   _SelectedRecommitesID,
   _SelectedLettersID:TStrings;
   _CanViewSecureRecommite ,     _CanAttachColor, _CanViewAllAttachPages: Boolean;
   _GroupID:Integer;
   _CanRecommiteWithOtherOrg : boolean; // Amin 1391/12/07
   _CanConnectToCRM : boolean; // 920308  Hadi Mohamed
   _OpendWordLetterID : integer;
   //›«ﬂ”
   _FaxUpdate : Boolean;
   _FaxUpdatePriod : Byte;
   _FaxExtention : String;
   _FaxDirectory : String;
   _FaxCartableOrgID : Integer;
   _FaxSecID : Integer;
   SkinName : String;

   /////////////////////////////////////
   _ConnectedToArchive : boolean;
   ArchiveServerName,ArchiveDBName : string;
   _Arch_Documnt_Caption : string;
   _Arch_Subject_Caption : string;
   _Arch_Summery_Caption : string;
   _Arch_UsrFld1_Caption : string;
   _Arch_UsrFld2_Caption : string;
   _Arch_UsrFld3_Caption : string;
   _Arch_UserID : integer;
   _Can_View_Classified_Archive_Docs : boolean;
   DisableTimer : boolean;
   _EXEDIR : string;
   ////////////////////////////////////////
   //
   _ApplicationPath : String;  //„”Ì— ›«Ì· «Ã—«ÌÌ
   _IsServer : Boolean;
   _eyeganeh:string = 'yeganeh';
   _yeganeh:string = 'Ìê«‰Â';
   Project : string = 'Dabir'; // Amin 1391/07/15
   _SoftVersion, _DbVersion : String;
   _CountError : Integer;
   _Color1 : TColor ;
   _Color2 : TColor ;
   _Color3 : TColor ;
   _Color4 : TColor ;
   _Color5 : TColor ;
   _MainFont: String ;
   _ColorSetting : Integer;
    //Add Sanaye 950828
    // €ÌÌ—«  ﬁ›· »—‰«„Â
    //ARM LOCK
    //----------------------------------------------
//   _ARM_CoName, _ARM_IPServer, _ARM_AUSKey, _ARM_ReadKey, _ARM_WriteKey, _ARM_SafeKey1, _ARM_SafeKey2 : String;
//   _ARM_DongleCore_AESClass : AESClass;
    //----------------------------------------------
   //end sanaye
Const
   _Kartable = False;
   _ShowLogo = True;
// _Yeganeh='Ìê«‰Â';
// _EYeganeh='yeganeh';
   _SoftLastUpdate = '1403/08/21';//'1396/02/16';
   //_SoftVersion    = '11.0.0.0';//'6.5.0.0';
    LCID: DWORD = LOCALE_SYSTEM_DEFAULT;


{$R *.dfm}

implementation

uses yShamsiDate, Uconnect, LogOn, Settingsu, UMain, Registry,
     USearchTitle, YeganehDemo, YInputQuery, businessLayer, ShowmessageU,
     BaseUnit, StrUtils, UchangePassword, OfficeCommandbarButton,
     LetterSigners, UaddLetterData,userDefine, untScript;

type
   code=^integer;
   Letter_Format = (Letters,Drafts,deleted);

//Add Sanaye 950828
// €ÌÌ—«  ﬁ›· »—‰«„Â
//ARM LOCK
//----------------------------------------------
function TDm.ByteArrayToVariant( const A: array of byte ): Variant;
var
  p: Pointer;
begin
  Result := VarArrayCreate([0,Length(A)-1 ], varByte);
  p:= varArrayLock(Result);
  try
    Move(A[0], p^, Length(A));
  finally
    VarArrayUnlock( Result );
  end;
end;
//end sanaye
//----------------------------------------------

procedure TDm.SearchTitle(YW:TYWhereEdit);
var
  i: Integer;
begin
  inherited;
  i:=(DM.Search(YW));
  if i>-1 then
    if trim(YW.Text)<>'' then
      YW.Text:=YW.Text+','+IntToStr(i)
    else
      YW.Text:=IntToStr(i);
end;

function TDm.Search(Y:TYwhereEdit):integer;
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
    Result:= dm.SearchResult;
   end;
end;

procedure TDm.Connect;
begin
  Fconnect := TFconnect.Create(Application);
end;

function TDm.GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
var
  LetterID : Integer;
  rr : Boolean;
begin
  Result:='';

  if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow, _Year, LetterID,rr) then // Amin 1391/12/05 Edited
    Result:=Exec_get_LetterMemo_ByID(LetterID)
  else
    if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro, _Year, Letterid,rr) then // Amin 1391/12/05 Edited
      Result:=Exec_get_LetterMemo_ByID(LetterID)
end;

function TDm.GetDateFollow(ReceiveMode:boolean;Follow,Retro:String):string;
var
  LetterID : Integer;
  rr       : Boolean;
begin
  Result:='';

  if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow,_Year, LetterID,rr) then // Amin 1391/12/05 Edited
    Result:=Exec_get_LetterDate_ByID(LetterID)
  else
  if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro,_Year, Letterid,rr) then  // Amin 1391/12/05 Edited
    Result:=Exec_get_LetterDate_ByID(LetterID)
end;

function  TDm.GetActionAccess(ActionTag:String;FormTag:word):boolean;
begin
  Result:=true;
  if ActionsAccess.Locate('ActionID;FormTag',VarArrayOf([ActionTag,FormTag]),[]) then
    if not ActionsAccessHasAccess.AsBoolean then
      Result := False
end;

function TDm.GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;
  Follow_Retroaction:widestring;Follow_RetroactionYear:integer;var LetterID:integer;var ResultReceiveMode:boolean):boolean;  // Amin 1391/12/05 Edited
begin
  Result := False;
  Follow_Retroaction := yeganehtrim(Follow_Retroaction);

  if Follow_Retroaction = '' then
    Exit;

  ResultReceiveMode := not(ReceiveMode xor isFollow);

  if ResultReceiveMode then
  begin
    // Amin 1391/12/05 Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,CurrentMyear,SecID);
    Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,Follow_RetroactionYear,SecID); // Amin 1391/12/05
    Result:=LetterID>0;
  end
  else
  begin
    try
      // Amin 1391/12/05 LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,CurrentMyear,SecID);
      LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,Follow_RetroactionYear,SecID); // Amin 1391/12/05
    except
      Result:=false;
    end;
    Result:=LetterID>0;
  end;
end;

procedure TDm.GetUserSettings;
Var
  S:string;
begin
  qryGetUserSettings.Close;
  qryGetUserSettings.Parameters.ParamByName('UserID').Value := _Userid;
  qryGetUserSettings.Open;

  qrySystemSetting.Close;
  qrySystemSetting.Open;

  MemoFont := Nil;
  if qryGetUserSettings.Locate('VariableName', 'MemoFont', [loCaseInsensitive]) then
  begin
    if Pos('_',qryGetUserSettings.FieldValues['Value']) <> 0 then
      MemoFont := StrToFont(qryGetUserSettings.FieldValues['Value']);
  end;


{   S := GetUserSetting('MemoFont');
   if Pos('_',S) <> 0 then
      MemoFont := StrToFont(S)
   else
      MemoFont := Nil;
}
   DayInWeek := Exec_Get_DayID_InWeek;//»œ”  ¬Ê—œ‰ ‘„«—Â —Ê“ Â› Â

   //FocusedColor := GetUserSetting('FocusedColor');
   FocusedColor := StringToColor('0');
   if qryGetUserSettings.Locate('VariableName', 'FocusedColor', [loCaseInsensitive]) then
     FocusedColor := qryGetUserSettings.FieldValues['Value'];


   //ShowOriginalErrorMessage:=GetUserSetting('ShowOriginalErrorMessage');
   ShowOriginalErrorMessage:= False;
   if qryGetUserSettings.Locate('VariableName', 'ShowOriginalErrorMessage', [loCaseInsensitive]) then
     ShowOriginalErrorMessage := qryGetUserSettings.FieldValues['Value'];


   //InitialReceivedMode:= GetUserSetting('InitialReceivedMode');
   InitialReceivedMode:= 0;
   if qryGetUserSettings.Locate('VariableName', 'InitialReceivedMode', [loCaseInsensitive]) then
     InitialReceivedMode:= qryGetUserSettings.FieldValues['Value'];


//   InitialArchiveMode := GetUserSetting('InitialArchiveMode');
   InitialArchiveMode := 0;
   if qryGetUserSettings.Locate('VariableName', 'InitialArchiveMode', [loCaseInsensitive]) then
     InitialArchiveMode := qryGetUserSettings.FieldValues['Value'];

   //InitialDisplyMode  := GetUserSetting('InitialDisplyMode');
   InitialDisplyMode := 0;
   if qryGetUserSettings.Locate('VariableName', 'InitialDisplyMode', [loCaseInsensitive]) then
     InitialDisplyMode := qryGetUserSettings.FieldValues['Value'];

   //DefaultProceed := GetUserSetting('DefaultProceed');
   DefaultProceed := False;
   if qryGetUserSettings.Locate('VariableName', 'DefaultProceed', [loCaseInsensitive]) then
     DefaultProceed := qryGetUserSettings.FieldValues['Value'];

   // ÊÃÂ :  œ— ﬂ«— «»· ‰«„Â Â«Ì Ê«—œÂ Ê ’«œ—Â  Õ  ÂÌç ‘—«ÌÿÌ ﬁ«»· ÊÌ—«Ì‘ ‰Ì” ‰œ
   //„ê—  Ê”ÿ ŒÊœ ﬂ«—»—«‰  Ê·Ìœ ﬂ‰‰œÂ ‰«„Â Ê ‰Ì“  Õ  Â— ‘—«ÌÿÌ ÅÌ‘ ‰ÊÌ” Â« ﬁ«»· ÊÌ—«Ì‘ Â” ‰œ

   //DefaultIsCopy := GetUserSetting('DefaultisCopy'); //‰«„Â »’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì «—Ã«⁄ ‘Êœ . ›ﬁÿ »—«Ì œ»Ì—Œ«‰Â
   DefaultIsCopy := False;
   if qryGetUserSettings.Locate('VariableName', 'DefaultisCopy', [loCaseInsensitive]) then
     DefaultIsCopy := qryGetUserSettings.FieldValues['Value'];

   //ReciveIsCopy := GetUserSetting('ReciveIsCopy');//œ— ﬂ«— «»· ÅÌÊ” Â«Ì ‰«„Â Â«Ì Ê«—œÂ »Â ’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì «—Ã«⁄ ‘Ê‰œ .
   ReciveIsCopy := False;
   if qryGetUserSettings.Locate('VariableName', 'ReciveIsCopy', [loCaseInsensitive]) then
     ReciveIsCopy := qryGetUserSettings.FieldValues['Value'];

//   DefaultInnerCopy := GetUserSetting('DefaultInnerCopy');//‰«„Â Â«Ì œ«Œ·Ì »Â ’Ê—  ›ﬁÿ ŒÊ«‰œ‰Ì «—Ã«⁄ ‘Ê‰œ .
   DefaultInnerCopy := False;
   if qryGetUserSettings.Locate('VariableName', 'DefaultInnerCopy', [loCaseInsensitive]) then
     DefaultInnerCopy := qryGetUserSettings.FieldValues['Value'];

   //DefaultSClassificationID:=GetUserSetting('DefaultSClassificationID');
   DefaultSClassificationID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSClassificationID', [loCaseInsensitive]) then
     DefaultSClassificationID := qryGetUserSettings.FieldValues['Value'];

   //DefaultSUrgencyID := GetUserSetting('DefaultSUrgencyID');
   DefaultSUrgencyID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSUrgencyID', [loCaseInsensitive]) then
     DefaultSUrgencyID :=qryGetUserSettings.FieldValues['Value'];

   //DefaultSNumberOfAttachPages := GetUserSetting('DefaultSNumberOfAttachPages');
   DefaultSNumberOfAttachPages := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSNumberOfAttachPages', [loCaseInsensitive]) then
     DefaultSNumberOfAttachPages := qryGetUserSettings.FieldValues['Value'];

   //DefaultSNumberOfPage := GetUserSetting('DefaultSNumberOfPage');
   DefaultSNumberOfPage := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSNumberOfPage', [loCaseInsensitive]) then
     DefaultSNumberOfPage := qryGetUserSettings.FieldValues['Value'];

   //DefaultSReceiveTypeID := GetUserSetting('DefaultSReceiveTypeID');
   DefaultSReceiveTypeID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSReceiveTypeID', [loCaseInsensitive]) then
     DefaultSReceiveTypeID := qryGetUserSettings.FieldValues['Value'];

   //DefaultSFromOrgId := GetUserSetting('DefaultSFromOrgId');
   DefaultSFromOrgId := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultSFromOrgId', [loCaseInsensitive]) then
     DefaultSFromOrgId := qryGetUserSettings.FieldValues['Value'];

   //DefualtSSigner := GetUserSetting('DefualtSSigner');
   DefualtSSigner := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefualtSSigner', [loCaseInsensitive]) then
     DefualtSSigner := qryGetUserSettings.FieldValues['Value'];

   //DefaultRClassificationID := GetUserSetting('DefaultRClassificationID');
   DefaultRClassificationID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRClassificationID', [loCaseInsensitive]) then
     DefaultRClassificationID:= qryGetUserSettings.FieldValues['Value'];

   //DefaultRUrgencyID :=GetUserSetting('DefaultRUrgencyID');
   DefaultRUrgencyID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRUrgencyID', [loCaseInsensitive]) then
     DefaultRUrgencyID := qryGetUserSettings.FieldValues['Value'];

   //DefaultRNumberOfAttachPages := GetUserSetting('DefaultRNumberOfAttachPages');
   DefaultRNumberOfAttachPages := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRNumberOfAttachPages', [loCaseInsensitive]) then
     DefaultRNumberOfAttachPages:= qryGetUserSettings.FieldValues['Value'];

   //DefaultRNumberOfPage := GetUserSetting('DefaultRNumberOfPage');
   DefaultRNumberOfPage := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRNumberOfPage', [loCaseInsensitive]) then
     DefaultRNumberOfPage := qryGetUserSettings.FieldValues['Value'];

   //DefaultRReceiveTypeID := GetUserSetting('DefaultRReceiveTypeID');
   DefaultRReceiveTypeID := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRReceiveTypeID', [loCaseInsensitive]) then
     DefaultRReceiveTypeID := qryGetUserSettings.FieldValues['Value'];

   //DefaultRFromOrgId := GetUserSetting('DefaultRFromOrgId');
   DefaultRFromOrgId := 0;
   if qryGetUserSettings.Locate('VariableName', 'DefaultRFromOrgId', [loCaseInsensitive]) then
     DefaultRFromOrgId := qryGetUserSettings.FieldValues['Value'];

   //ListFromorg := GetUserSetting('ListFromorg');
   ListFromorg := False;
   if qryGetUserSettings.Locate('VariableName', 'ListFromorg', [loCaseInsensitive]) then
     ListFromorg := qryGetUserSettings.FieldValues['Value'];

   //ChartorderbyTitle := GetUserSetting('ChartorderbyTitle');
   ChartorderbyTitle := False;
   if qryGetUserSettings.Locate('VariableName', 'ChartorderbyTitle', [loCaseInsensitive]) then
     ChartorderbyTitle := qryGetUserSettings.FieldValues['Value'];

   //MaxLetterInDabir := GetUserSetting('MaxLetterInDabir');
   MaxLetterInDabir := 0;
   if qryGetUserSettings.Locate('VariableName', 'MaxLetterInDabir', [loCaseInsensitive]) then
     MaxLetterInDabir := qryGetUserSettings.FieldValues['Value'];

   if MaxLetterInDabir = 0 then
      MaxLetterInDabir := 100;

   //BeginIndicator := GetSystemSetting('BeginIndicator');
   BeginIndicator := 0;
   if qrySystemSetting.Locate('VariableName', 'BeginIndicator', [loCaseInsensitive]) then
     BeginIndicator := qrySystemSetting.FieldValues['Value'];

   //EqualAnswerIndicator := GetSystemSetting('EqualAnswerIndicator');
   EqualAnswerIndicator := False;
   if qrySystemSetting.Locate('VariableName', 'EqualAnswerIndicator', [loCaseInsensitive]) then
     EqualAnswerIndicator := qrySystemSetting.FieldValues['Value'];

   //UniqeIndicator := GetSystemSetting('UniqeIndicator');
   UniqeIndicator := False;
   if qrySystemSetting.Locate('VariableName', 'UniqeIndicator', [loCaseInsensitive]) then
     UniqeIndicator := qrySystemSetting.FieldValues['Value'];

   //Version := GetSystemSetting('Version');
   Version := False;

   if qrySystemSetting.Locate('VariableName', 'Version', [loCaseInsensitive]) then
     Version := qrySystemSetting.FieldValues['Value'];

   // »œ”  ¬Ê—œ‰ „”Ì— –ŒÌ—Â › Ì· Â«Ì ECE
   //PathOfECE := GetSystemSetting('PathOfECE');
   PathOfECE := '0';
   if qrySystemSetting.Locate('VariableName', 'PathOfECE', [loCaseInsensitive]) then
     PathOfECE := qrySystemSetting.FieldValues['Value'];

   //AutomaticSendForECE := GetSystemSetting('AutomaticSendForECE');
   AutomaticSendForECE := False;
   if qrySystemSetting.Locate('VariableName', 'AutomaticSendForECE', [loCaseInsensitive]) then
     AutomaticSendForECE := qrySystemSetting.FieldValues['Value'];

   //»œ”  ¬Ê—œ‰ ‘„«—Â —Ê“ Â› Â ÃÂ  Å‘ Ì»«‰ êÌ—Ì
   {Ranjbar 89.09.06 ID=238}
   //„Ì ‘œ Settings »«⁄À ’›— ‘œ‰ œ— ÃœÊ·
   {if DayInWeek<>DayInWeekForBackup then
      SetSystemSetting('DayInWeekForBackup',false);}
   //---
   //DayInWeekForBackup := GetSystemSetting('DayInWeekForBackup');
   DayInWeekForBackup := 0;
   if qrySystemSetting.Locate('VariableName', 'DayInWeekForBackup', [loCaseInsensitive]) then
     DayInWeekForBackup := qrySystemSetting.FieldValues['Value'];

   //UserMemoDisplay := GetSystemSetting('UserMemoDisplay');//„·«ÕŸ«  Ì« ﬂœ Å—ÊéÂ
   UserMemoDisplay := '0';
   if qrySystemSetting.Locate('VariableName', 'UserMemoDisplay', [loCaseInsensitive]) then
     UserMemoDisplay := qrySystemSetting.FieldValues['Value'];

   //Orgname := GetSystemSetting('OrgName');
   Orgname := '0';
   if qrySystemSetting.Locate('VariableName', 'OrgName', [loCaseInsensitive]) then
     Orgname := qrySystemSetting.FieldValues['Value'];

   //FullTextSearch := GetSystemSetting('FullTextSearch');
   FullTextSearch := False;
   if qrySystemSetting.Locate('VariableName', 'FullTextSearch', [loCaseInsensitive]) then
     FullTextSearch := qrySystemSetting.FieldValues['Value'];

   //LetterHasArchiveCopy := GetSystemSetting('LetterHasArchiveCopy');
   LetterHasArchiveCopy := False;
   if qrySystemSetting.Locate('VariableName', 'LetterHasArchiveCopy', [loCaseInsensitive]) then
     LetterHasArchiveCopy := qrySystemSetting.FieldValues['Value'];

   //RelatedTableName := GetSystemSetting('RelatedTableName');
   RelatedTableName := '0';
   if qrySystemSetting.Locate('VariableName', 'RelatedTableName', [loCaseInsensitive]) then
     RelatedTableName := qrySystemSetting.FieldValues['Value'];

   //RelatedDisplayField := GetSystemSetting('RelatedDisplayField');
   RelatedDisplayField := '0';
   if qrySystemSetting.Locate('VariableName', 'RelatedDisplayField', [loCaseInsensitive]) then
     RelatedDisplayField := qrySystemSetting.FieldValues['Value'];

   //RelatedIDField := GetSystemSetting('RelatedIDField');
   RelatedIDField := '0';
   if qrySystemSetting.Locate('VariableName', 'RelatedIDField', [loCaseInsensitive]) then
     RelatedIDField := qrySystemSetting.FieldValues['Value'];

   //RefreshPriodTime:=GetSystemSetting('RefreshPriodTime');
   RefreshPriodTime := 0;
   if qrySystemSetting.Locate('VariableName', 'RefreshPriodTime', [loCaseInsensitive]) then
     RefreshPriodTime := qrySystemSetting.FieldValues['Value'];

   //AllowMultiUser := GetSystemSetting('AllowMultiUser');
   AllowMultiUser := False;
   if qrySystemSetting.Locate('VariableName', 'AllowMultiUser', [loCaseInsensitive]) then
     AllowMultiUser := qrySystemSetting.FieldValues['Value'];

   //RecommiteCopy := GetSystemSetting('RecommiteCopy');
   RecommiteCopy := False;
   if qrySystemSetting.Locate('VariableName', 'RecommiteCopy', [loCaseInsensitive]) then
     RecommiteCopy := qrySystemSetting.FieldValues['Value'];

   //UseTemplate := GetSystemSetting('UseTemplate');
   UseTemplate := False;
   if qrySystemSetting.Locate('VariableName', 'UseTemplate', []) then
     UseTemplate := qrySystemSetting.FieldValues['Value'];

   //InsertLog := GetSystemSetting('InsertLog');
   InsertLog := False;
   if qrySystemSetting.Locate('VariableName', 'InsertLog', [loCaseInsensitive]) then
     InsertLog := qrySystemSetting.FieldValues['Value'];

   //ShowFarsiCaption := GetSystemSetting('ShowFarsiCaption');
   ShowFarsiCaption := False;
   if qrySystemSetting.Locate('VariableName', 'ShowFarsiCaption', [loCaseInsensitive]) then
     ShowFarsiCaption := qrySystemSetting.FieldValues['Value'];

   //DefaultOrgPreCode := GetSystemSetting('DefaultOrgPreCode');
   DefaultOrgPreCode := '0';
   if qrySystemSetting.Locate('VariableName', 'DefaultOrgPreCode', [loCaseInsensitive]) then
     DefaultOrgPreCode := qrySystemSetting.FieldValues['Value'];

   //_ServerID := GetSystemSetting('ServerID');
   _ServerID := 0;
   if qrySystemSetting.Locate('VariableName', 'ServerID', [loCaseInsensitive]) then
     _ServerID := qrySystemSetting.FieldValues['Value'];

   //_HasReplicate := GetSystemSetting('HasReplicate'); //ÃÂ  «‰ ﬁ«· ‰«„Â «“  Õ  ÊÌ‰œÊ“Ì »Â  Õ  Ê»Ì
   _HasReplicate := False;
   if qrySystemSetting.Locate('VariableName', 'HasReplicate', [loCaseInsensitive]) then
     _HasReplicate := qrySystemSetting.FieldValues['Value'];

   //_FaxUpdatePriod := GetUserSetting('FaxUpdatePriod'); //„œ  “„«‰ »—Ê“ —”«‰Ì ›«ﬂ” »—«Ì Â— ﬂ«—»—
   _FaxUpdatePriod := 0;
   if qryGetUserSettings.Locate('VariableName', 'FaxUpdatePriod', [loCaseInsensitive]) then
     if qryGetUserSettings.FieldValues['Value'] <> null then
      _FaxUpdatePriod := qryGetUserSettings.FieldValues['Value'];

   //_FaxExtention := GetUserSetting('FaxExtention'); //JPG=0 , TIF=1
   _FaxExtention := '0';
   if qryGetUserSettings.Locate('VariableName', 'FaxExtention', [loCaseInsensitive]) then
     if qryGetUserSettings.FieldValues['Value'] <> null then
       _FaxExtention := qryGetUserSettings.FieldValues['Value'];

   //_FaxDirectory := GetUserSetting('FaxDirectory'); //„”Ì— ›«Ì·Â«Ì ›«ﬂ”
   _FaxDirectory := '0';
   if qryGetUserSettings.Locate('VariableName', 'FaxDirectory', [loCaseInsensitive]) then
     if qryGetUserSettings.FieldValues['Value'] <> null then
       _FaxDirectory := qryGetUserSettings.FieldValues['Value'];

   //_FaxUpdate := GetUserSetting('FaxUpdate'); //›⁄«· ﬂ—œ‰ ›«ﬂ”
   _FaxUpdate := False;
   if qryGetUserSettings.Locate('VariableName', 'FaxUpdate', [loCaseInsensitive]) then
     if qryGetUserSettings.FieldValues['Value'] <> null then
       _FaxUpdate := qryGetUserSettings.FieldValues['Value'];

   //_FaxCartableOrgID := GetUserSetting('FaxCartableOrgID'); //ﬂ«— «»· ›«ﬂ”
   _FaxCartableOrgID := 0;
   if qryGetUserSettings.Locate('VariableName', 'FaxCartableOrgID', [loCaseInsensitive]) then
     if qryGetUserSettings.FieldValues['Value'] <> null then
       _FaxCartableOrgID := qryGetUserSettings.FieldValues['Value'];

   //_FaxSecID := GetUserSetting('FaxSecID'); //œ»Ì—Œ«‰Â ›«ﬂ”
   _FaxSecID := 0;
   if qryGetUserSettings.Locate('VariableName', 'FaxSecID', [loCaseInsensitive]) then
     _FaxSecID := qryGetUserSettings.FieldValues['Value'];

   //SkinName := GetUserSetting('SkinfileName');
   SkinName := '';
   if qryGetUserSettings.Locate('VariableName', 'SkinfileName', [loCaseInsensitive]) then
     SkinName := qryGetUserSettings.FieldValues['Value'];

   //GetUserSetting('AskMonoSelect') = True
   AskMonoSelect := False;
   if qryGetUserSettings.Locate('VariableName', 'AskMonoSelect', [loCaseInsensitive]) then
     AskMonoSelect := qryGetUserSettings.FieldValues['Value'];

   ckBidiModeLetterGrid := False;
   if qryGetUserSettings.Locate('VariableName', 'ckBidiModeLetterGrid', [loCaseInsensitive]) then
     ckBidiModeLetterGrid := qryGetUserSettings.FieldValues['Value'];

   ISMessageShow := False;
   if qryGetUserSettings.Locate('VariableName', 'cbAlarmMessage', [loCaseInsensitive]) then
     ISMessageShow := qryGetUserSettings.FieldValues['Value'];

  if RefreshPriodTime = 0 then
    RefreshPriodTime := 300;

  qryGetUserSettings.Close;
  qrySystemSetting.Close;
end;

function TDm.LastIndicatorID(Letter_type:integer;LetterFormat:byte;IsForFax:Boolean=False):Integer;
begin
  {Ranjbar 89.09.20 ID=249}
  //Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Secid);
  if (SecID = Get_All_LetterSecretariatID.AsInteger)or(Get_All_LetterSecretariatID.IsNull)or(Get_All_LetterSecretariatID.AsInteger=0) then
  begin
    if not(IsForFax)then //‘„«—Â «‰œÌﬂ« Ê— »—«Ì ›«ﬂ”
      Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Secid) //œ»Ì—Œ«‰Â ›⁄«·
    else
      Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,_FaxSecID); //»—«Ì œ»Ì—Œ«‰Â «‰ Œ«» ‘œÂ »—«Ì ›«ﬂ”
  end
  else
    Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Get_All_LetterSecretariatID.AsInteger);//œ»Ì—Œ«‰Â ŒÊœ ‰«„Â
   //---
end;

function TDm.isIndicator(s:string;var FromIndicator,ToIndicator:integer):boolean;
var
  p:byte;
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

function TDm.isNo(s:string;var No:string):boolean;
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

function TDm.MemoCondition(MemoText:string;FieldName:string):String;
var
  memoItems:TStrings;
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

  if Result<>'' then
    result:='('+result+')';
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
              if GetUserSetting('ShowSubjectCodeInTree') then
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
      FieldByName('Title').AsString := Title;
      FieldByName('email').AsString := Title;
      FieldByName('ResponsibleStaffer').AsString := Responsible;
      FieldByName('IsInnerOrg').AsBoolean := False;
      FieldByName('Parentid').AsInteger := 4;
      FieldByName('code').AsString := IntToStr(Exec_get_NewOrgID(false));
      Post;
    end
    else
    begin
      close;
      CommandText := 'Select *,cast(0 as bit) isSecretariat from Fromorganizations where id=' + IntToStr(i);
      Open;
      if not ToorganizationsIsInnerOrg.AsBoolean and (FieldByName('ResponsibleStaffer').AsString <> Responsible) then
      begin
        Edit;
        FieldByName('ResponsibleStaffer').AsString := Responsible;
        Post;
      end;
    end;

  Result:=ToorganizationsID.AsInteger;
  FromOrganizations.close;
  FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
  FromOrganizations .Open;
end;

procedure TDm.SetCurrentMyear(value:Integer);
begin
  FCurrentMyear:=value;
  try
    MainForm.RefreshQuery;
  except
  end;
end;

procedure TDm.SetSecID (value:byte);
begin
  FSecID:=value;
  dm.Secretariats.Locate('secid', SecID, []);
  _ArchiveCenterID := dm.SecretariatsArchiveCenterID.AsInteger;
  MainForm.RefreshQuery;
end;

function IsWrongIP(Ip: string): Boolean;
const
  Z = ['0'..'9', '.'];
var
  I, J, P: Integer;
  W: string;
begin
  Result := False;
  if (Length(Ip) > 15) or (Ip[1] = '.') then Exit;
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
        if (StrToInt(W) > 255) or (Length(W) > 3) then Exit;
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
Var
   D : TDateTime;
   DongleProductCode, dongleErrorCode:integer;
   frmUpdateDbScripts : TfmUpdateDbScripts;
   qry : TADOQuery;
   I : Integer;
   StrFontName : string ;
//   ERR_FRM     : TLOCK_ERROR_FRM;
//   CHNG_IP_FRM : TENTER_IP_ADDRESS_FRM;
begin
(*
  for I := 0 to Dm.ComponentCount - 1 do
   begin
    if Components[I] is TADODataSet then
     TADODataSet(Components[I]).CommandTimeout := 0;
   end;
*)

  //fonts
  StrFontName := 'Fonts\BYekan+ Bold.ttf' ;
  if FileExists(pchar(GetCurrentDir +'\'+ StrFontName)) and (not FileExists(pchar('C:\Windows\'+ StrFontName))) then
  begin
    CopyFile( PChar(GetCurrentDir +'\'+ StrFontName), PChar('C:\Windows\'+StrFontName) , False);
    //AddFontResource('c:\FONTS\MyFont.TTF') ;
  end;


  StrFontName := 'Fonts\BYekan+.ttf' ;
  if FileExists(pchar(GetCurrentDir +'\'+ StrFontName)) and (not FileExists(pchar('C:\Windows\'+ StrFontName))) then
  begin
   CopyFile( PChar(GetCurrentDir +'\'+ StrFontName) , PChar('C:\Windows\'+StrFontName) , False);
    //AddFontResource('c:\FONTS\MyFont.TTF') ;
  end;

  if (FileExists(pchar('C:\Windows\'+ StrFontName))) and (FileExists(pchar('C:\Windows\'+ StrFontName))) then
    _MainFont := 'B YeKan'
  else
    _MainFont := 'Tahoma';
    _MainFont := 'Tahoma';


  _SoftVersion := getDelphiVer;

   //ÃÂ  ‰‘«‰ œ«œ‰ Õ—Ê› ⁄œœ œ— regional language Â«Ì »€Ì—«“ ›«—”Ì
  if (GetThreadLocale <> 1065 ) then // force locale settings if different
    if SetThreadLocale(1065) then
      GetFormatSettings;

  _Has_Excel_Template := False;
  Word_Must_Readonly := 0;
  _yeganeh := 'Ìê«‰Â';
  _eyeganeh := 'Yeganeh';

  if Trim(YeganehConnection.ConnectionString) <> '' then
    MBaseForm.MessageShowString('·ÿ›« »—œ«‘ Â ‘Êœ : ConnectionString', False);

  _WordFileName := UpperCase(_EYeganeh) + '_WORD_FILE.DOCX';
  _ExcelFileName := UpperCase(_EYeganeh) + '_Excel_FILE.XLSX';
  _TempPath := GetTempDirectory;

   //Ranjbar
  _UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder\';
  if Pos('\\',_UserFolder) = 0 then
    if Not DirectoryExists(_UserFolder) then
      CreateDir(_UserFolder);
   //---


  if _ShowLogo then
  begin
    yeganeh := TYeganeh.Create(Application);
    Yeganeh.Show;
    Yeganeh.Repaint;
    D := Now;
  end;
  Connect; //Fconnect ›—„
  Yeganeh.Repaint;
  _Today := ShamsiString(Exec_Get_NowDate);

   //Ranjbar
  _IsServer := (UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)));
   //---

  Yeganeh.Repaint;
   //Ataie

   
  if GetSystemSetting('DongleType') = '0' then // Old Dongle
  begin
    DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,106070,_SoftTitle,False,DongleProductCode);
    if (DongleErrorCode > 0) then
    begin
      ShowMessage(DongleErrorMessage(dongleErrorCode)+'(ﬁ›· ﬁœÌ„Ì)');
      ExitProcess(0);
      Application.Terminate;
      Halt;
    end;
  end
  else
  if GetSystemSetting('DongleType') = '1' then // Tiny Plus
  begin
   if not IsTinyOk then
     Application.Terminate;
  end;


  _Has_Excel_Template := (GetSystemSetting('HasExcelTemplate') <> '0');

  SPAddFileToDB.Close;
  SPAddFileToDB.Parameters.ParamByName('@DBName').Value := _DataBaseName;
  SPAddFileToDB.ExecProc;

   _DbVersion := getDBVer;
{
   if not processExists('ServiceHost.exe') then
   begin
     ShellExecute(0, 'open',Pchar(ExtractFilePath(Application.ExeName)+'ServiceHost 1.8.0.2/ServiceHost.exe'), nil, nil, SW_SHOWNORMAL) ;
   end;
}

/////////////////////////////////////////
  //if (_SoftVersion = '13.0.0.0')  then   //»⁄œ Ê—é‰ 13 œÌêÂ ·«“„ ‰Ì”  «Ã— ‘Êœ
  //begin
    if Trim(_DbVersion) = '' then
    begin
      //Run All Scripts
      frmUpdateDbScripts:=TfmUpdateDbScripts.Create(Application, _DbVersion, _SoftVersion, 1);
      try
        frmUpdateDbScripts.ShowModal;
      finally
        frmUpdateDbScripts.Free;
      end;
    end;
  //end;

  { TODO -oparsa : 14030108 }
  AutoUpdateDatabase;
  { TODO -oparsa : 14030108 }

  (*
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
  *)

////////////////////////////////////////

//  if (GetSystemSetting('SW_CODE') <> '1') THEN
//  BEGIN
//    if (GetSystemSetting('SW_CODE') <> '3') then
//    BEGIN
//      ShowMyMessage('ÅÌ€«„','ò«—»— ê—«„Ì ﬁ›· ”Œ  «›“«—Ì »—«Ì ”Ì” „ ‘„« „⁄ »— ‰„Ì »«‘œ',[mbok],mtInformation);
//      Application.Terminate;
//    END;
//  END;

//  if GetSystemSetting('ARM_DongleType') = '0' then
//  begin
//    DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,106070,_SoftTitle,False,DongleProductCode);
//    if (DongleErrorCode > 0) then
//    begin
//      ShowMessage(DongleErrorMessage(dongleErrorCode));
//      ExitProcess(0);
//      Application.Terminate;
//      Halt;
//    end;
//  end
//  else
//  begin
    // saeedi
   // ARMClass1:=TARMClass.Create(nil);
//    ArmRes:=IsArmOk;
//    case ArmRes of
//      100:
//        begin
//          if ShamsiString(Now)>GetExpireDate then
//          begin
//            ShowMessage('ﬁ›· ”Œ  «›“«—Ì »«ÿ· ‘œÂ «” ');
//            Application.Terminate;
//          end;
//          if GetIntValue1<>10 then
//          begin
//            ShowMessage('ﬁ›· ”Œ  «›“«—Ì „⁄ »— ‰Ì” ');
//            Application.Terminate;
//          end;
//        end;
//      102:
//        begin
//          ShowMessage('ò·Ìœ «—”«· ‘œÂ »—«Ì ‘‰«”«ÌÌ ﬁ›· ’ÕÌÕ ‰Ì” ');
//          Application.Terminate;
//        end;
//      101:
//        begin
//          ShowMessage('⁄„·Ì«  «—”«· Ê œ—Ì«›  »« Œÿ« „Ê«ÃÂ ‘œÂ «” ');
//          Application.Terminate;
//        end;
//      104:
//        begin
//          ShowMessage('strkey1 Ì« strkey2 ’ÕÌÕ ‰Ì” ');
//          Application.Terminate;
//        end;
//      105:
//        begin
//          ShowMessage('„‘ò· ÃœÌ «ÌÃ«œ ‘œÂ ·ÿ›« ﬁ›· —« »Â ‘—ò  »«“ê—œ«‰Ìœ');
//          Application.Terminate;
//        end;
//      106:
//        begin
//          ShowMessage('⁄œ„ «— »«ÿ ”—Ê— ﬁ›· Ê ò·«Ì‰  ÅÊ—  9051 Ê 9151 çò ‘Êœ ¬‰ Ì ÊÌ—Ê” çò ‘Êœ Ê÷⁄Ì  ”—ÊÌ” çò ‘Êœ');
//          Application.Terminate;
//        end;
//      107:
//        begin
//          ShowMessage(' ⁄œ«œ ò«—»—«‰ „Ã«“  ‰ŸÌ„ ‰‘œÂ «” ');
//          Application.Terminate;
//        end;
//      111:
//        begin
//          ShowMessage('«” ›«œÂ €Ì—«” «‰œ«—œ');
//          Application.Terminate;
//        end;
//      113:
//        begin
//          ShowMessage('»« ‘—ò   „«” »êÌ—Ìœ');
//          Application.Terminate;
//        end;
//      200:
//        begin
//          ShowMessage('AES Ì« ReadKey Ì« WriteKey «‘ »«Â «” ');
//          Application.Terminate;
//        end;
//    else
//        begin
//          ShowMessage('ﬁ›· ’ÕÌÕ ‰„Ì »«‘œ');
//          Application.Terminate;
//        end;
//    end;
//    if Assigned(ARMClass1) then
//    begin
//      ARMClass1.Free;
//      ARMClass1:=nil;
//    end;
//  end;


   //----------------------------------------------
 {  qry_FromOrganizations.Close;
   qry_FromOrganizations.Parameters.ParamByName('Userid').Value :=_UserID;
   qry_FromOrganizations.Open;
  }

  LoginForm := TLoginForm.Create(Application);
{
   //Hamed_Ansari_990312_S
   Application.CreateForm(TfrmScript,frmScript);
   frmScript.DatabaseVersion;
   frmScript.Free;
   //Hamed_Ansari_990312_E
}
{   Yeganeh.LblProssess.Visible := True;
   Yeganeh.Repaint;

   //Ranjbar 88.03.23
   //«Ã—« ﬂ—œ‰ œ” Ê—«  «”ﬂ—ÌÅ 
   Scripts_Run(DM.YeganehConnection,50,ServerName);  //'ScriptsNumber'

   Yeganeh.LblProssess.Visible := False;
   Yeganeh.Repaint;
}
   //ChangePassword;

   //ÃœÌœ ”«Œ Â „Ì‘Êœ Ndf »Ì‘ — «“ 4 êÌê«»«Ì  »Êœ Ìﬂ ›«Ì· Mdf «ê— ÕÃ„ ›«Ì·
   SPAddFileToDB.Close;
   SPAddFileToDB.Parameters.ParamByName('@DBName').Value := _DataBaseName;
   //SPAddFileToDB.ExecProc;
   //---

   TemplateGroup.Open;

   Tables.Open;

   if _ShowLogo then
   begin
      while milliSecondsBetween(d,now)<1 do
      begin
         d:=d;
         Application.ProcessMessages;
      end;
      Yeganeh.Close;
   end;

   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   LoginForm.ShowModal;

   GetUserSettings;
//   ShowMessage('This is');
   with ActionsAccess do
   begin
      Close;
      Parameters[0].Value := _AccessID;
      Open;
   end;

   _Year := strtoint(Copy(_Today,1,4));

   if TmpYear<>0 then
      CurrentMyear := tmpYear
   else
      CurrentMyear := _Year;

   _AllowToEditWordFiles := dm.GetActionAccess('Action15',1);

   Extention.Open;
   Secretariats.Open;
   Toorganizations.Open;
   Urgenceis.Open;
   ReceiveTypes.Open;
   Classifications.Open;
   FieldType.Open;
   ReferenceTables.Open;
   Subject.Open;

   if not _AccessToClassifieldLetter then
   begin
      Classifications.Filter := 'id=1';
      Classifications.Filtered := True;
   end;

   if _PasswordMustChange then
   begin
     ShowMessage('ò·„Â ⁄»Ê— »«Ìœ  —òÌ»Ì «“ Õ—Ê› Ê «⁄œ«œ »«‘œ Ê Õœ «ﬁ· œ«—«Ì 6 Õ—› Ì« ⁄œœ »«‘œ . ·ÿ›« ò·„Â ⁄»Ê— ŒÊœ —«  €ÌÌ— œÂÌœ');
     FchangePassword:=TFchangePassword.Create(Application);
     FchangePassword.showmodal;
   end;

   {$IFDEF ADA}
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\ADA\Dabir','DabirPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\ADA\Dabir','DabirPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   {$ELSE}
   //Ranjbar //ﬁ—«—œ«œ‰ „”Ì— ›«Ì· «Ã—«ÌÌ œ— —ÃÌ” —Ì
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\Yeganeh\Dabir','DabirPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\Yeganeh\Dabir','DabirPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   //---
   {$ENDIF}

   //Ranjbar 89.10.29 ID=285
   //‰œ«—œ Ê Regional Language Ê Control Panel  €ÌÌ—«  “Ì— —ÊÌ
//   «Ì‰  €ÌÌ— ›ﬁÿ œ— «Ì‰ ‰—„ «›“«— «⁄„«· „Ì ‘Êœ
   Sysutils.DateSeparator := '/';
   Sysutils.ShortDateFormat := 'yyyy/MM/dd';
   //---

   Word_Must_Readonly:=WordMustReadonly(2,_AccessID,_UserID);// Added By Saeedi On 1390/05/16
   QOrganization.Close;
   QOrganization.Open;
   QLetterTypes.Close;
   QLetterTypes.Open;

   QUserForLookup.Close;
   QUserForLookup.Open;

   OpenWorkSheetTablesForLoukup;
   qry := TADOQuery.Create(Self);
   qry.Connection:=YeganehConnection;
   qry.Close;
   qry.SQL.Text := 'select Value from Settings where VariableName=''WordFormat''';
   qry.Open;
   if qry.FieldByName('Value').AsString='1' then
     _WordFileName := UpperCase(_EYeganeh) + '_WORD_FILE.DOC';
   qry.Free;

  { TODO -oparsa : 14030119 }
  if FileExists(pchar(_TempPath+_WordFileName)) then
  begin
    //DeleteFile(pchar(_TempPath+_WordFileName));
    SysUtils.FileSetReadOnly(_TempPath+_WordFileName, false);
    SysUtils.DeleteFile(_TempPath+_WordFileName);
  end;
  _Word_Is_Opened := false ;
  { TODO -oparsa : 14030119 }
end;

procedure TDm.updateAddedInfoRecord(PrimaryCode,Fieldname,FieldValue,LetterWhere:string);
begin

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

procedure TDm.ApplicationEventsException(Sender: TObject; E: Exception);
var
 AList : TStringList;
 //I : Integer;

  function IntToY(l:byte):string ;
  var i,j,k,n:integer;
  begin
     Result:='';
     i:=60+3+1+1;
     j:=2*60+2*3+1;
     k:=15*11+3+1;
     for n:=1 to l do
     begin
        if (i>=28+1-1) and (i<=128+1-1) then
           Result:=Result+char(i);
        i := k*i mod j;
     end;
  end;

begin
  AList := TStringList.Create;
  try
   if FileExists(ExtractFilePath(Application.ExeName) + 'ErrorLog.txt') then
    AList.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ErrorLog.txt');
   AList.Add(_Today + ' ' + TimeToStr(Now) + ' ' + Sender.ClassName + ' ' + Name + ' ' + E.Message);
   AList.SaveToFile(ExtractFilePath(Application.ExeName) + 'ErrorLog.txt');
  finally
   FreeAndNil(AList);
  end;
  //ApplicationEvents.OnException:=nil;
  //with ErrorMessage do
  //begin
    if (pos('Connection failure',e.Message)<>0 ) or (pos('General network error',e.Message)<>0) then
    begin
      if MessageDlg(' œ— «— »«ÿ »« ”—Ê— „‘ò· ÊÃÊœ œ«—œ ¬Ì« „«Ì·Ìœ œÊ »«—Â ‰—„ «›“«— —« «Ã—« ‰„«ÌÌœ.',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        //WinExec('Yeganeh_Dabir.exe',0);
        WinExec(pchar(ExtractFilePath(Application.ExeName) + ExtractFileName(Application.ExeName)),0);
        Application.Terminate;
      end
      { TODO -oparsa : 14030413 }
      else
      begin
        try
          dm.YeganehConnection.Open(_eyeganeh+'Corporate_Dabir', IntToY(66));
          dm.YeganehConnection.Connected := True;
        except

        end;
      end;
      { TODO -oparsa : 14030413 }
    end
    else
    if (pos('Cannot create file',e.Message)<>0 ) and (pos('The process cannot access the file because it is being used by another process',e.Message)<>0)
        and (pos('YEGANEH_WORD_FILE.DOCX',e.Message)<>0 )  then
    begin
      // ShowMessage('›«Ì·  „Å Ê—œ œ— ”Ì” „ »«“ Â” ');
      {
       ShowMessage('›«Ì· YEGANEH_WORD_FILE.DOCX œ— ›Ê·œ—  „Å »«ﬁÌ „«‰œÂ Ê Å«ò ‰„Ì ‘Êœ ');
       if UnlockAndDeleteFile(_TempPath+_WordFileName) then
         ShowMessage('File deleted successfully')
       else
         ShowMessage('Failed to delete file');
         }
       UnlockAndDeleteFile(_TempPath+_WordFileName);
    end;    
    (*
    else
    begin
       ShowMessage(e.Message);
    end;
    *)
    (*
    Close;
    Parameters.ParamByName('@like').Value:=e.Message;
    try
      Open;
    except
      exit
    end;

    if Recordcount>0 then
    begin
      if FieldByName('ShowMessage').AsBoolean then
        ShowMessage(e.Message);
//        if ErrorMessageShowMessage.AsBoolean then
//             MBaseForm.ShowMsgString(ErrorMessageFarsiMessage.AsString);
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
  //ApplicationEvents.OnException:=ApplicationEventsException;
  *)
end;

function TDm.FileName(secid,myear:Integer;indicatorid:integer):string;
begin
  Result:=IntToStr(IndicatorID);
  case Length(Result) of
     1: Result:='0000'+Result;
     2: Result:='000'+Result;
     3: Result:='00'+Result;
     4: Result:='0'+Result;
  end;
  Result := IntToStr(myear) + '_' + IntToStr(SecID) + '_' + Result;
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
      f := copy(s,1,p-1);
      Delete(s,1,p);
    end
    else
      f := s;

    if Result = '' then
      Result := f
    else
      Result := f + '/' + Result;
  end;
end;

procedure tDm.SaveTemplateToFile(ty : String = 'w');
var
  strFileName : OleVariant;
begin
  inherited;
  if ty = 'w' then
    strFileName := _TempPath + _WordFileName
  else
    strFileName := _TempPath + _ExcelFileName;

  with LetterTemplateDoc,Parameters do
  begin
    Close;
    ParamByName('id').Value:=LetterTemplateID.AsInteger;
    Open;
    { TODO -oparsa : 14030717 }
    if FileExists(strFileName) then
    begin
      SysUtils.FileSetReadOnly(strFileName, false);
      SysUtils.DeleteFile(strFileName);
    end;
    { TODO -oparsa : 14030717 }
    LetterTemplateDocDocument.SaveToFile(strFileName);
  end;
end;

procedure TDm.Replace(var main:widestring;old,new:widestring);
var
  i : Integer;
begin
  i := Pos(old,main);
  While i <> 0 do
  begin
    Main := copy(main, 1, i - 1) + new + copy(main,i + length(old), length(main) - i - length(old) + 1);
    i := Pos(old,main);
  end;
end;

procedure TDm.OpenWordFile(Filename:string;Readonly:boolean);
var
   OReadOnly,olv,emp,f,f1,fals,tru : OleVariant;
   en : integer;
   Handle :THandle;
begin
  emp := '';
  fals := false;
  tru := true;
  olv := wdOpenFormatAuto;
  f1 := Filename;
  OReadOnly := ReadOnly;
  if Word_Must_Readonly=0 then
    OReadOnly :=True;

  { TODO -oparsa : 14030626 } // for error RPC   The RPC server is unavailable   Remote Procedure Call
  if not IsWordRunning then
  begin
    ActiveWord ;
  end;
  { TODO -oparsa : 14030626 }

   { TODO -oparsa : 14030501 }
  WordApplicationDM.connect;
  (*
  try
     WordApplication.connect;
    except  on e:exception do
     begin
       ShowMessage('WORD ERROR  '+Char(10) + e.Message);
     end
  end;       *)
  { TODO -oparsa : 14030501 }

  with WordApplicationDM do
  begin
       {Ranjbar 89.08.18 ID=206}
    disconnect;
    //btn := WordApplication.CommandBars.FindControl(emptyparam, 748, emptyparam, false) ;
    //btn := WordApplication.cmd.FindControl(emptyparam, 748, emptyparam, false);
    //btn.Set_Enabled(false);
    //---
    DisplayAlerts := tru;
    Visible := True;
    ChangeFileOpenDirectory(ExtractFilePath(Filename));

    Caption:='Yeganeh';
    Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
    SetForegroundWindow(Handle);

    f := ExtractFileName(Filename);
    _Word_Is_Opened := true;
    //Documents.Open(f,fals,OReadOnly,fals,emp,emp,fals,emp,emp,olv,emp,tru,fals,tru,tru);
    try
      Documents.Open(f,EmptyParam,OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
    except  on e:exception do
       begin
         ShowMessage('WORD ERROR  '+Char(10) + e.Message);
       end
    end;

    if ParaphText<>'' then
    begin
      Selection.WholeStory();
      Selection.InsertAfter(ParaphText);
      ParaphText:='';
    end;

    if ActiveWindow.View.SplitSpecial <> wdPaneNone Then
      ActiveWindow.Panes.Item(2).Close;

    if ActiveWindow.ActivePane.View.Type_ in [wdNormalView,wdOutlineView] then
      ActiveWindow.ActivePane.View.Type_ := wdPrintView;
    en := WordApplicationDM.Selection.End_ - 1;
    if en = 0 then
      WordApplicationDM.Selection.TypeText(' ');
  end;
end;

function TDm.ExecGet_LetterWordFile(LetterID:Integer;readonly:boolean;aOpenFile:Boolean=True;ext:Integer=3):boolean;
begin
  Result := False;
  with Get_LetterWordFile, Parameters do
  begin
    Close;
    ParamByName('@Ext').Value := ext;
    ParamByName('@LetterID').Value := LetterID;
    Open;
    if RecordCount = 0 then
      Exit;

    Result := True;

    if ext = 3 then
    begin
      try
       Get_LetterWordFileImage.SaveToFile(_TempPath + _WordFileName);
       _OpendWordLetterID := LetterID;
      except
        MainForm.messageShow(86, False);
        Result := False;
        Abort;
      end;

      _LetterID := Letterid;
      LetterIDOpened := LetterID;
      if aOpenFile then
      begin
        if not ReadOnly then
          SetWordOpen(LetterID, _UserID);
        try
          OpenWordFile(_TempPath + _WordFileName, readonly);
          { TODO -oparsa : 14030501 }
          except
            OpenWordFile(_TempPath + _WordFileName, readonly);
          end;
          (*
         except  on e:exception do

            //OpenWordFile(_TempPath + _WordFileName, readonly);
            MBaseForm.MessageShowString('»«“ ‘œ‰ ›«Ì· Ê—œ »« Œÿ« „Ê«ÃÂ ‘œ' +Char(10) + e.Message ,False);
         end;    *)
         { TODO -oparsa : 14030501 }
      end;
    end
    else if ext = Exec_GetExcelId() then
    begin
      try
        Get_LetterWordFileImage.SaveToFile(_TempPath + _ExcelFileName);
        _OpendWordLetterID := LetterID;
      except
        MainForm.messageShow(86, False);
        Result := False;
        Abort;
      end;
      _LetterID := Letterid;
      if aOpenFile then
      begin
        if not ReadOnly then
          SetWordOpen(LetterID,_UserID);
        OpenExcelFile(_TempPath+_ExcelFileName, readonly);
      end;
    end;
  end;
end;

procedure TDm.InsertTextIntoLetter(w:TWordApplication;LetterID:Integer);
begin
  With w.Selection do
  begin
    WholeStory;
    Exec_Insert_LetterText(LetterID,Text);
  end;
end;

procedure TDm.WordApplicationDMDocumentBeforeClose(ASender: TObject;
  const Doc:_Document; var Cancel: WordBool);
var
   ver : Integer;
   SaveChanges : OleVariant;
begin
  { TODO -oparsa : 14030605-bug349 }
  //Cancel := True;
  inherited;
  { TODO -oparsa : 14030605-bug349 }
   SaveChanges := True;

   if TWordApplication(ASender).ActiveDocument.ReadOnly then
   begin
      _Word_Is_Opened := False;
      WordApplicationDM.Quit;
      WordApplicationDM.disconnect;
      Exit;
   end;

    ver := StrToint(copy(WordApplicationDM.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver < 12 then
    begin
        _Word_Is_Opened := False;
        WordApplicationDM.Quit;
        WordApplicationDM.disconnect;
        Exit;
    end;

   // €ÌÌ— ﬂ‰œ ¬‰ê«Â œ«—Ì„ Save As «ê— ‰«„ ›«Ì· Ê—œ  Ê”ÿ
   //«” ›«œÂ ﬂ‰œ Ê «“ Ìﬂ ‰«„ ÃœÌœ «” ›«œÂ ﬂ‰œ ›«Ì· Ê—œ œ— œÌ «»Ì” –ŒÌ—Â ‰„Ì ‘Êœ Save As  ÊÃÂ : «ê— ﬂ«—»— Å” «“ «⁄„«·  €ÌÌ—«  «“
   ActDocName := UpperCase(WordApplicationDM.ActiveDocument.Name);
   {if (ActDocName <> UpperCase(_WordFileName)) And
      (ActDocName <> UpperCase(_WordFileName+'X')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOCX')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOCX')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOC')) then}
   if (ActDocName <> UpperCase(_WordFileName)) then
   begin
      _Word_Is_Opened := False;
      WordApplicationDM.Disconnect;
      Timer_WordMessage.Enabled := True; //‰„«Ì‘ ÅÌ€«„
      Exit;
   end;

   //Comment By Sanaye 950602
   //‰„«Ì‘ ÅÌ€«„ –ŒÌ—Â ÊÊ—œ
   //WordApplication.ActiveDocument.Save;
   //end Sanaye

   {FilePathName := _TempPath+_WordFileName;
   WordApplication.ActiveDocument.SaveAs2000(FilePathName,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam);}
   if Dm.FullTextSearch then
      Dm.InsertTextIntoLetter(TWordApplication(ASender),_LetterID);
   _Word_Is_Opened := False;
   //WordApplication.disconnect;

   WordApplicationDM.Disconnect;
   WordApplicationDM.ActiveDocument.Close(SaveChanges,EmptyParam,EmptyParam);
   WordApplicationDM.Quit;

   Timer_SaveWord.Enabled := True; //–ŒÌ—Â ›«Ì· Ê—œ œ— »«‰ﬂ «ÿ·«⁄« 

   { TODO -oparsa : 14030605-bug349 }
   ////if processExists('WINWORD.EXE') then  KillTask('WINWORD.EXE');
   { TODO -oparsa : 14030605-bug349 }
  // Timer_SaveWordTimer(self);

end;

procedure TDm.Timer_SaveWordTimer(Sender: TObject);
var
   i : integer;
begin
  //Ranjbar Å” «“ »” Â ‘œ‰ ›«Ì· Ê—œ «Ì‰  «Ì„— ›⁄«· „Ì ‘Êœ
  Timer_SaveWord.Enabled := false;
  try
    if not _Dont_save_Word then
    With dm,Get_LetterWordFile do
    begin
      Close;
      Parameters.ParamByName('@Ext').Value := 3;
      Parameters.ParamByName('@LetterID').Value := LetterIDOpened;
      Open;
      Edit;
      //Get_LetterWordFileImage.LoadFromFile(_TempPath + _WordFileName);
      Get_LetterWordFileLastUpdate.Value := Now;
      i:= 0;
      while i<1000 do
      begin
        try
          Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
          Get_LetterWordFileLastUpdate.Value := Now;
          Post;
          LetterIDOpened := 0;
          i:= 1000;
        except
          inc(i);
          Sleep(30);
        end;
      end;
      _Word_Is_Opened := False;
    end;
    SetWordClosed(Get_LetterWordFileLetterID.AsInteger, _UserID);
  except on e:exception do
  begin
    ShowMessage('WORD ERROR D: ' + e.Message);
    { TODO -oparsa : 14030119 }
    SetWordClosed(Get_LetterWordFileLetterID.AsInteger, _UserID);
    { TODO -oparsa : 14030119 }
        //Timer_SaveWord.Enabled := true;
        //ShowMessage('–ŒÌ—Â ›«Ì· Ê—œ «‰Ã«„ ‰‘œ° ›«Ì·  Ê”ÿ Å—Ê”” œÌê—Ì œ— Õ«· «” ›«œÂ «” ');
  end;
  end;

  end;

function tDm.Y_InputQuery (const ACaption, Adefault: string; var Value: string; FormCaption:string): Boolean;
begin
  YInputQueryF:=TYInputQueryF.Create(Application);
  with YInputQueryF do
  begin
    Label1.Caption:=ACaption;
    output.Text:=Adefault;
    Caption:= FormCaption;
    ShowModal;
    Result:=done;
    Value:=output.Text;
  end;
end;

Procedure  TDm.ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:Integer;Secretariatid:integer;top:integer;where:widestring);
begin
  With Get_All_Letter , Parameters do
  begin
    Close;
    ParamByName('@archiveFolderID').value := ArchiveFolderID;
    ParamByName('@Letter_Type').value := Letter_Type;
    ParamByName('@LetterFormat').value := LetterFormat;
    ParamByName('@myear').value := myear;
    ParamByName('@Secretariatid').value := Secretariatid;
    ParamByName('@top').value := Top;
    ParamByName('@where').value := where;
    ParamByName('@ArchiveStatus').value := ArchiveStatus;
    ParamByName('@UserID').value := _Userid;
    Open;
  end;
end;

procedure TDm.Select_LetterReCommiteBeforePost(DataSet: TDataSet);
begin
  Select_LetterReCommiteLastUpdate.Value:=now;
  if Select_LetterReCommiteOrgID.IsNull then
    Select_LetterReCommite.Cancel;
  if length(Select_LetterReCommiteDeadLineDate.AsString)=10 then
    Select_LetterReCommiteDeadLineToint.AsInteger:=ShamsiDateToInt(Select_LetterReCommiteDeadLineDate.AsString);
end;

procedure TDm.UserTemplateGroupAfterInsert(DataSet: TDataSet);
begin
  UserTemplateGroupUserID.AsInteger:=UsersId.AsInteger;
end;

procedure TDm.UserShortCutCalcFields(DataSet: TDataSet);
begin
  UserShortCutKeytitle.Value := 'Alt + '+UserShortCutaltKey.AsString;
end;

procedure TDm.UserSecretariatAfterInsert(DataSet: TDataSet);
begin
  UserSecretariatUserId.Value:=UsersId.Value;
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

Procedure  tDm.Exec_Select_FollowUP_By_Date(BDate:string;Edate:string;DonStatusID:integer);
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

function  tDm.GetUserTableID:integer;
begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(Application);
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

procedure TDm.UrgenceisTitleGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   {Ranjbar}
   Text := Trim(UrgenceisTitle.AsString);
   //---
end;

procedure TDm.ChangePassword;
begin
  users.Close;
  users.Open;
  users.First;

  with users do
    while not eof do
    begin
      if length(usersPassWord.AsString)<50 then
      begin
        edit;
        usersPassWord.AsString:=Locked(usersPassWord.AsString,True);
        post;
      end;
      next;
    end;
end;

Procedure  TDm.Open_GetfieldValueByLetterID(letterId:integer;FormOrder:integer);
begin
  with Dm.GetfieldValueByLetterID,parameters do
  begin
    Close;
    ParamByName('@FormOrder').value:=FormOrder;
    ParamByName('@letterId').value:=letterId;
    Open;
  end;
end;

Procedure  TDm.ExportLetterField(letterId:integer;FormOrder:integer;ExportType:byte);
Var
  y:TydbGrid;
begin
  y := TYDBGrid.create(Application);
  Open_GetfieldValueByLetterID(letterId,FormOrder);
  y.DataSource := DGetfieldValueByLetterID;
  y.Columns[0].Title.Caption := '‰«„ ›Ì·œ';
  y.Columns[1].Title.Caption := '„ﬁœ«—';
  case ExportType of
    1: y.ExportToWord;
    2: y.ExportToExcel;
    3: y.ExportToText;
    4: y.ExportToAccess;
  end;
end;

{Ranjbar 89.09.28 ID=262}
procedure TDm.Timer_WordMessageTimer(Sender: TObject);
begin
  Timer_WordMessage.Enabled := False;

  if (ActDocName <> UpperCase(_WordFileName)) then
    if not DisableTimer then
      ShowMessage('ﬂ«—»— ê—«„Ì œ— ’Ê— ÌﬂÂ »ŒÊ«ÂÌœ Å” «“ «⁄„«·  €ÌÌ—«  —ÊÌ ›«Ì· Ê—œ ¬‰ —«'+ #13 +
                  '‰„«ÌÌœ «» œ« »«Ìœ »« »” ‰ ›«Ì· Ê—œ  €ÌÌ—«  —« —ÊÌ œÌ «»Ì” ‰—„ «›“«—'+ ' Save As ' + #13 +
                  ' ﬂ‰Ìœ '+' Save As '+'–ŒÌ—Â ﬂ—œÂ ”Å” œÊ»«—Â ›«Ì· Ê—œ —« »«“ ﬂ—œÂ Ê œ— ‰Â«Ì  ');
end;
//---

procedure TDm.UsersAfterInsert(DataSet: TDataSet);
begin
  dm.UsersBeginActiveDate.AsString:=_Today;
  dm.UsersEndActiveDate.AsString:= IntToStr(StrtoInt(Copy(_Today,0,4)) + 10) + '/12/20';
   {Ranjbar}
  UsersHasSecureLetterAccess.AsBoolean := True;
  UsersIsSecretariantStaffer.AsBoolean := True;
   //---
end;

procedure TDm.UsersAfterScroll(DataSet: TDataSet);
begin
  with dm.UserSecretariat do
  begin
    Close;
    Parameters.ParamByName('UserID').Value:=dm.UsersId.Value;
    Open;
  end;
{   qry_FromOrganizations.Close;
   qry_FromOrganizations.Parameters.ParamByName('UserID').Value :=dm.UsersId.AsInteger;
   qry_FromOrganizations.Open;
 }


  qry_FromOrganizations.Active := False;
  qry_FromOrganizations.Parameters.ParamByName('UserID').Value := UsersId.AsInteger;
  qry_FromOrganizations.Active := True;
// UserDefineF.DBLookupComboBox1.Text := qry_FromOrganizationsGroupName1.AsString;
 //  ShowMessage(qry_FromOrganizationsGroupName1.AsString);

end;

procedure TDm.UsersPasswordGetText(Sender: TField; var Text: String;DisplayText: Boolean);
begin
   {Ranjbar 90.02.07 ID=353}
   Text := Locked(Trim(Dm.UsersPassword.AsString),False);
   //---
end;

procedure TDm.UsersPasswordSetText(Sender: TField; const Text: String);
begin
  {Ranjbar 90.02.07 ID=353}
  Dm.UsersPassword.AsString := Locked(Trim(Text),False);
  //---
end;

procedure TDm.SetWord_Must_Readonly(const Value: Integer);
begin
  FWord_Must_Readonly := Value;
end;

function TDm.WordMustReadonly(FormTag, AccessID, UserID: Integer): Integer;
begin
  Result:=0;
  QWord_Must_Readonly.Close;
  QWord_Must_Readonly.Parameters.ParamByName('FormTag').Value:=FormTag;
  QWord_Must_Readonly.Parameters.ParamByName('AccessID').Value:=AccessID;
  QWord_Must_Readonly.Parameters.ParamByName('UserID').Value:=UserID;
  QWord_Must_Readonly.Open;

  if not QWord_Must_Readonly.IsEmpty then
    Result:=QWord_Must_Readonly.FieldValues['HasAccess'];
end;

function TDm.IsLetterRead(LetterID:Integer): Boolean;
begin
  Result:=False;
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT viewDate FROM ReCommites WHERE LetterID=');
  qtemp.SQL.Add(IntToStr(LetterID));
  qtemp.Open;
  if not qtemp.IsEmpty then
    if not qtemp.FieldByName('viewDate').IsNull then
      Result:=True;
end;

procedure TDm.UpdateRecommite(LetterID: Integer);
begin
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('UPDATE ReCommites ');
  qtemp.SQL.Add('SET OrgID =l.FromOrgID,OrgStaff=l.fromstaffer ');
  qtemp.SQL.Add('FROM ReCommites R INNER JOIN Letter l ON l.LetterID = R.LetterID ');
  qtemp.SQL.Add('WHERE R.LetterID=');
  qtemp.SQL.Add(IntToStr(LetterID));
  qtemp.SQL.Add(' and ParentId=0 and type=3');
  qtemp.ExecSQL;
end;

procedure TDm.DeactivateUser;
begin
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('UPDATE Users ');
  qtemp.SQL.Add('SET [Active] = 0 ');
  qtemp.SQL.Add('WHERE Id=');
  qtemp.SQL.Add(IntToStr(UsersID.AsInteger));
  qtemp.ExecSQL;
end;

function TDm.GetOldSecretariatID(LetterID: Integer): Integer;
begin
  Result:=0;
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT OldSecretariatID FROM Letter WHERE LetterID='+IntToStr(LetterID));
  qtemp.Open;

  if not qtemp.IsEmpty then
    if not qtemp.FieldByName('OldSecretariatID').IsNull then
      Result:=qtemp.FieldValues['OldSecretariatID'];
end;

function TDm.GetSecretariatName(SecretariatID: Integer): String;
begin
  Result:='';
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT SecTitle FROM Secretariats WHERE SecID='+IntToStr(SecretariatID));
  qtemp.Open;

  if not qtemp.IsEmpty then
    Result:=qtemp.FieldValues['SecTitle'];
end;

function TDm.GetValueFromRegistry(RootKeyPath:String;KeyName: String): String;
var
  R: TRegistry;
begin
  Result:='';
  R := TRegistry.Create;
  with R do
  begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RootKeyPath, True);
    Result:=Trim(ReadString(KeyName));
  end;
end;

function TDm.Check_CRM_Exists: Boolean;
begin
  Result:=False;
  if Length(Trim(Dm.GetValueFromRegistry('Software\yeganeh\crm','DataBaseName')))>0 then
    Result:=True;
end;

function TDm.UserHasRecords: Boolean;
begin
  Result:=False;

  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT UserID FROM ReCommites WHERE UserID='+qDeactivateUsersId.AsString);
  qtemp.SQL.Add(' UNION ');
  qtemp.SQL.Add('SELECT UserID FROM Letter WHERE UserID='+qDeactivateUsersId.AsString);
  qtemp.SQL.Add(' UNION ');
  qtemp.SQL.Add('SELECT UsersID as UserID FROM Phone WHERE UsersID='+qDeactivateUsersId.AsString);
  qtemp.Open;

  if not Dm.qtemp.IsEmpty then
    Result:=True;
end;

function TDM.ReplaceCharacter(s: widestring; old, new: Char): widestring;
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

procedure TDm.OpenWorkSheetTablesForLoukup;
begin
  QWorkSheetBaseType.Close;
  QWorkSheetBaseType.Open;

  QWorkSheetBaseImportantLevel.Close;
  QWorkSheetBaseImportantLevel.Open;

  QWorkSheetBaseStatus.Close;
  QWorkSheetBaseStatus.Open;

  QWorkSheetSessionsMustCome.Close;
  QWorkSheetSessionsMustCome.Open;

  QWorkSheetSessionsUserResponse.Close;
  QWorkSheetSessionsUserResponse.Open;

  QWorkSheetTasksStatus.Close;
  QWorkSheetTasksStatus.Open;

  QWorkSheetTasksUserResponse.Close;
  QWorkSheetTasksUserResponse.Open;

  QWorkSheetTasksWithAlarm.Close;
  QWorkSheetTasksWithAlarm.Open;

  QWorkSheetVisitsUserResponse.Close;
  QWorkSheetVisitsUserResponse.Open;

  QWorkSheetUsers.Close;
  QWorkSheetUsers.Open;
end;

function TDm.CheckTadakhol(Year: Integer; Month: String; Day,
  BeginTimeToMinute, EndTimeToMinute, UserID: Integer; WorkSheetBaseID:Integer): Boolean;
begin
  Result:=False;
  QCheckTadakhol.Close;
  QCheckTadakhol.SQL.Clear;
  QCheckTadakhol.SQL.Add('SELECT wsb.ID FROM WorkSheet_Base wsb');
  QCheckTadakhol.SQL.Add(' LEFT JOIN WorkSheet_Sessions wss ON wsb.ID=wss.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add(' LEFT JOIN WorkSheet_Tasks wst ON wsb.ID=wst.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add(' LEFT JOIN WorkSheet_Visits wsv ON wsb.ID=wsv.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add(' WHERE ((wsb.Year_Shamsi='+IntToStr(Year)+') AND (wsb.Month_Shamsi='''+Month+''') AND (wsb.Day_Shamsi='+IntToStr(Day)+'))');
  QCheckTadakhol.SQL.Add(' AND');
  QCheckTadakhol.SQL.Add(' (('+IntToStr(BeginTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(EndTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(BeginTimeToMinute)+'<wsb.BeginTimeToMinute AND '+IntToStr(EndTimeToMinute)+'>wsb.EndTimeToMinute))');
  QCheckTadakhol.SQL.Add(' AND');
  QCheckTadakhol.SQL.Add(' ((wss.UserID='+IntToStr(UserID)+') OR (wst.UserID='+IntToStr(UserID)+') OR (wsv.UserID='+IntToStr(UserID)+'))');
  QCheckTadakhol.SQL.Add(' AND');
  QCheckTadakhol.SQL.Add(' (wsb.Status=1)');

//  ShowMessage(QCheckTadakhol.SQL.Text);

  QCheckTadakhol.Open;

  if QCheckTadakhol.IsEmpty then
    Result:=False
  else if (QCheckTadakhol.RecordCount=1) and (QCheckTadakhol.FieldByName('ID').AsInteger=WorkSheetBaseID) then
    Result:=False
  else
    Result:=True;
end;

function TDm.GetMonthShamsiName(ind: Integer): String;
begin
  if (ind>0) and (ind<13) then
    case ind of
      1:  Result:='›—Ê—œÌ‰';
      2:  Result:='«—œÌ»Â‘ ';
      3:  Result:='Œ—œ«œ';
      4:  Result:=' Ì—';
      5:  Result:='„—œ«œ';
      6:  Result:='‘Â—ÌÊ—';
      7:  Result:='„Â—';
      8:  Result:='¬»«‰';
      9:  Result:='¬–—';
      10: Result:='œÌ';
      11: Result:='»Â„‰';
      12: Result:='«”›‰œ';
    end
  else
    ShowMessage('„«Â ‰«„⁄ »— «” ');
end;

function TDm.GetMonthShamsiIndex(S: String): string;
begin
  if Trim(S)='›—Ê—œÌ‰'        then Result:='01'
  else if Trim(S)='«—œÌ»Â‘ '  then Result:='02'
  else if Trim(S)='Œ—œ«œ'     then Result:='03'
  else if Trim(S)=' Ì—'       then Result:='04'
  else if Trim(S)='„—œ«œ'     then Result:='05'
  else if Trim(S)='‘Â—ÌÊ—'    then Result:='06'
  else if Trim(S)='„Â—'       then Result:='07'
  else if Trim(S)='¬»«‰'      then Result:='08'
  else if Trim(S)='¬–—'       then Result:='09'
  else if Trim(S)='œÌ'        then Result:='10'
  else if Trim(S)='»Â„‰'      then Result:='11'
  else if Trim(S)='«”›‰œ'     then Result:='12'
  else
  begin
    ShowMessage('„«Â ‰«„⁄ »— «” ');
    Result:='';
  end;
end;

procedure TDm.OpenqSelectedColor(LetterID: Integer);
begin
  Dm.qSelectedColor.Close;
  Dm.qSelectedColor.Parameters.ParamByName('LetterID').Value:=LetterID;
  Dm.qSelectedColor.Open;
end;

procedure TDm.ShowSigners(LID: integer; ShowFool: boolean);
begin
  qLetterSign.Close;
  qLetterSign.Parameters[0].Value := LID;
  qLetterSign.Open;
  if (ShowFool) or (not qLetterSign.IsEmpty) then
  begin
    fmLetterSigners := TfmLetterSigners.Create(Application);
    fmLetterSigners.LetterID := LId;
    fmLetterSigners.ShowModal;
  end;
end;

procedure TDm.WordApplication2DocumentOpen(ASender: TObject;
  const Doc: _Document);
var
   ver : integer;
begin
  ver := StrToint(copy(WordApplicationDM.Version,0,length(TWordApplication(ASender).Version)-2));
  if ver<12 then
  begin
    ShowMessage('·ÿ›« «“ ¬›Ì” 2007 »Â »«·« «” ›«œÂ ò‰Ìœ');
    Exit;
  end;
end;

procedure TDm.WordApplicationDMDocumentOpen(ASender: TObject;
  const Doc: _Document);
var
  ver : integer;
begin
  ver := StrToint(copy(WordApplicationDM.Version,0,length(TWordApplication(ASender).Version)-2));
  if ver<12 then
  begin
    ShowMessage('·ÿ›« «“ ¬›Ì” 2007 »Â »«·« «” ›«œÂ ò‰Ìœ');
    Exit;
  end;
end;

function TDm.GetArchiveSetting(VariableID: Integer): String;
begin
  with TADOQuery.Create(nil) do
  begin
    Connection := ArchiveConnection;
    SQL.Text := 'SELECT Value FROM Settings WHERE VariableId = '+IntToStr(VariableID);
    Open;
    if IsEmpty then
      Result :=''
    else
      Result := Fields[0].Value;
  end;

  if Result = '' then
  begin
    case VariableID of
       15 : Result := '›Ì·œ ò«—»—Ì 1';
       45 : Result := '›Ì·œ ò«—»—Ì 2';
       46 : Result := '›Ì·œ ò«—»—Ì 3';
       52 : Result := '”‰œ';
       53 : Result := '„Ê÷Ê⁄';
       54 : Result := 'Œ·«’Â';
    end;
  end;
end;

procedure TDm.SetWordOpen(LetterID, UserID : integer);
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
  { TODO -oparsa : 14030605-bug349 }  //«ê— »Â œ·Ì· »«“ »Êœ‰ ›«Ì· ‰ Ê«‰”Â »«‘Â »»‰œ ‘
  if FileExists(pchar(_TempPath+_WordFileName)) then
    if processExists('WINWORD.EXE') then  KillTask('WINWORD.EXE');

  if FileExists(pchar(_TempPath+_WordFileName)) then
  begin
    SysUtils.FileSetReadOnly(_TempPath+_WordFileName, false);
    SysUtils.DeleteFile(_TempPath+_WordFileName);
  end;
  { TODO -oparsa : 14030605-bug349 }

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

procedure TDm.Get_LetterData_by_LetterIDAfterScroll(DataSet: TDataSet);
begin
  try
    if UpperCase(Get_LetterData_by_LetterIDExt.AsString) = 'XML' then
      FrAddLetterData.btnECE.Visible := true
    else
      FrAddLetterData.btnECE.Visible := false;
  except
  end;
end;

procedure TDm.adoFollow_Retroaction_LetterCalcFields(DataSet: TDataSet);
begin
  //Add Sanaye 950306
  //«÷«›Â ò—œ‰ ç‰œÌ‰ ⁄ÿ› Ê ÅÌ—Ê »Â ‰«„Â
  if not(DataSet.State in [dsInsert, dsEdit]) then
  begin
    with TADOQuery.Create(Nil) do
    begin
      try
        Connection := YeganehConnection;
        Close;
        SQL.Text := 'select IndicatorId, isnull(IncommingNO,'''') IncommingNO From Letter where LetterID = ' + adoFollow_Retroaction_LetterFR_LetterID.AsString;
        Open;
        adoFollow_Retroaction_LetterFRIndicatorID.AsInteger := StrToIntDef(Fields[0].AsString,0);
        adoFollow_Retroaction_LetterFRLetterNO.AsString := Fields[1].AsString;
      finally
        Free;
      end;

      if adoFollow_Retroaction_LetterFR_Kind.AsInteger = 0  then
        adoFollow_Retroaction_LetterFRKindTitle.Value := 'ÅÌ—Ê'
      else if adoFollow_Retroaction_LetterFR_Kind.AsInteger = 1  then
        adoFollow_Retroaction_LetterFRKindTitle.Value := '⁄ÿ›';
    end;
  end;
  //End Sanaye

end;

function TDm.GetLockIP: string;
var
  myFile : TextFile;
  text   : string;
begin
  Result:='';
  // Try to open the Test.txt file for writing to
  AssignFile(myFile, 'LockIP.txt');
  // Reopen the file for reading
  Reset(myFile);

  // Display the file contents
  while not Eof(myFile) do
  begin
    ReadLn(myFile, text);
    Result:=text;
  end;

  // Close the file for the last time
  CloseFile(myFile);
end;

function TDm.GetExpireDate: string;
//var
  //RandProg:Cardinal;
  //OBJ:OleVariant;
begin
//  Randomize;
//  RandProg:=RandomRange(1000,2147483647);
//  OBJ:=ARMClass1.GetARMData(STRING_VAL2,RandProg);
//  Result:=unt.DecodData(OBJ,STRING_VAL2,RandProg);
end;

function TDm.GetIntValue1: Integer;
//var
  //RandProg:Cardinal;
  //OBJ:OleVariant;
  //s : string;
begin
//  Randomize;
//  RandProg:=RandomRange(1000,2147483647);
//  OBJ:=ARMClass1.GetARMData(INT_VAL1,RandProg);
//  s:=unt.DecodData(OBJ,INT_VAL1,RandProg);
//  if s<>'' then Result:=StrToInt(s) else Result:=0;
end;

function TDm.IsArmOk: Integer;
//var
//  Rand1:Cardinal;
//  OBJ,obj1:OleVariant;
//  bteRand:array[0..15] of byte;
//  Res:Byte;
//  i:integer;
//  ARMReadKey:String;
//  ARMstrKey1:String;
//  ARMstrKey2:String;
//  ARMAesKey:String;
begin
//  Result:=0;
//  ARMReadKey:= '0DF2DEB80995AC24CC5F40095CBE2EE7';
//  ARMstrKey1:= '03D77B98F3598A4A030B7BCBFB695E94AAB723789B39322AAAEA23ABB4CC6C45447FBC403501CBF144B2BC7341E847E8';
//  ARMstrKey2:= 'F8B707AAA0838AF9B172443E3E42FA3E5F07037AB36536FB5F2A3A97BC8121BD1E3FAE240995EC6C1E938386D1A70BC2';
//  ARMAesKey:= 'Yegnaeh_299144_96';
//
//  while (Res<>1 )and(Res<>101)and(Res<>106)and(Res<>113)do
//  begin
//     Randomize;
//     Rand1:=RandomRange(1000,2147483647);
//     OBJ:=ARMClass1.NetAuthenticate(GetArmLockIP,Rand1);
//     Res:= unt.CheckAuthenticate(OBJ,Rand1);
//  end;
//  if Res=1 then
//  begin
//    OBJ:=unt.CreateUserKey(ARMReadKey,ARMAesKey);
//    ARMClass1.FindNetARM(OBJ);
//    for i:=0 to 15 do
//      bteRand[i]:=RandomRange(1,255);
//    obj:=ByteArrayToVariant(bterand);
//    obj1:=ARMClass1.GetARMErrorCode(obj);
//    res:=unt.GenerateErrorCode(obj1,bterand);
//    Result:=res;
//  end
//  else
//  begin
//    Result:=res;
//  end;
end;

function TDm.IsTinyOk: Boolean;
var
  Tiny1:TTiny;
  I, J:Integer;
  lockData:String;
begin
  Result := True;

  try
    Tiny1 := TTiny.Create(Self);
    Tiny1.ServerIP := GetLockIP;
    Tiny1.NetWorkINIT := True;
    i:=Tiny1.TinyErrCode;
    if (i>0)  then
    begin
      Result:=False;
      case i of
      1 : ShowMessage('ﬁ›· ”Œ  «›“«—Ì Ì«›  ‰‘œ');
      2 : ShowMessage('ò·Ìœ ŒÊ«‰œ‰ Ì« ‰Ê‘ ‰ «‘ »«Â „Ì »«‘œ');
      3 : ShowMessage('ﬁ›· ⁄Ê÷ ‘œÂ «” ');
      4 : ShowMessage('Œÿ« Â‰ê«„ ‰Ê‘ ‰ «ÿ·«⁄« ');
      5 : ShowMessage('Œÿ« œ— »«—ê“«—Ì «ÿ·«⁄«  «Ê·ÌÂ');
      6 : ShowMessage('Œÿ« œ—Ì«›  Ê «—”«· «ÿ·«⁄« ');
      7 : ShowMessage('Œÿ«Ì  ⁄œ«œ ò«—»—«‰ „Ã«“');
      8 : ShowMessage('Œÿ«Ì «ò ÌÊ«Ìò”');
      9 : ShowMessage('Œÿ«Ì «ÿ·«⁄«  «‘ »«Â —ÊÌ ﬁ›·');
      10: ShowMessage('Œÿ« ﬁ›· ‰«„⁄ »—');
      else ShowMessage(IntToStr(i));
      end
    end
    else
    begin
      Tiny1.UserPassWord := '44F43C10BF4C384BB4A4A8497FB728';
      Tiny1.ShowTinyInfo := True;
      i:=Tiny1.TinyErrCode;
      if (i>0) then
      begin
        Result:=False;
        case i of
          1 : ShowMessage('ﬁ›· ”Œ  «›“«—Ì Ì«›  ‰‘œ');
          2 : ShowMessage('ò·Ìœ ŒÊ«‰œ‰ Ì« ‰Ê‘ ‰ «‘ »«Â „Ì »«‘œ');
          3 : ShowMessage('ﬁ›· ⁄Ê÷ ‘œÂ «” ');
          4 : ShowMessage('Œÿ« Â‰ê«„ ‰Ê‘ ‰ «ÿ·«⁄« ');
          5 : ShowMessage('Œÿ« œ— »«—ê“«—Ì «ÿ·«⁄«  «Ê·ÌÂ');
          6 : ShowMessage('Œÿ« œ—Ì«›  Ê «—”«· «ÿ·«⁄« ');
          7 : ShowMessage('Œÿ«Ì  ⁄œ«œ ò«—»—«‰ „Ã«“');
          8 : ShowMessage('Œÿ«Ì «ò ÌÊ«Ìò”');
          9 : ShowMessage('Œÿ«Ì «ÿ·«⁄«  «‘ »«Â —ÊÌ ﬁ›·');
          10: ShowMessage('Œÿ« ﬁ›· ‰«„⁄ »—');
        else ShowMessage(IntToStr(i));
        end
      end
      else
      begin
        lockData:=Tiny1.DataPartition;
        if (StrToInt(Copy(lockData,1,3))=254) or (StrToInt(Copy(lockData,1,3))=10) or (StrToInt(Copy(lockData,1,3))=60) then
        begin
          if Copy(lockData,4,10)<ShamsiString(Now) then
          begin
            Result:=False;
            ShowMessage(' «—ÌŒ ﬁ›· ”Œ  «›“«—Ì »Â Å«Ì«‰ —”ÌœÂ «”  ‰”»  »Â  „œÌœ ﬁ›· «ﬁœ«„ ‰„«ÌÌœ');
            {
            J := Random(4);
            case J of
             0: Application.MessageBox('SYSTEM_THREAD_EXCEPTION_NOT_HANDLED'+' (Tiny Lock)','Lock error',0);
             1: Application.MessageBox('SYSTEM_SERVICE_EXCEPTION'+' (Tiny lock)','Lock error',0);
             2: Application.MessageBox('System Files are damaged'+' (Tiny lock)','Lock error',0);
             3: Application.MessageBox('SYSTEM_FILES_INVALID'+' (Tiny lock)','Lock error',0);
             4: Application.MessageBox('DPC_WATCHDOG_VIOLATION'+' (Tiny lock)','Lock error',0);
            end;
              }
          end
          else
          begin
            SetSystemSetting('OrgName', Copy(LockData,14,Length(LockData)));
            Orgname:=GetSystemSetting('OrgName');
            {if Trim(GetSystemSetting('CompanyName')) == '' then
            begin
              //ShowMessage(Copy(LockData,14,Length(LockData)));
              SetSystemSetting('CompanyName', Copy(LockData,14,Length(LockData)));
            end;}
          end;
        end
        else
        begin
          Result:=False;
          ShowMessage('ﬁ›· ”Œ  «›“«—Ì »« „Õ’Ê· «‰ÿ»«ﬁ ‰œ«—œ');
        end;
      end;
    end;

  except on e:Exception do
    begin
      Result := False;
      ShowMessage('Error Dongle ::' + e.Message);
    end;
  end;

end;

procedure TDm.adoFollow_Retroaction_LetterAfterPost(DataSet: TDataSet);
begin
  ADOStoredProc1.Close;
  ADOStoredProc1.Parameters.ParamByName('@Letterid').Value := adoFollow_Retroaction_LetterLetterID.AsInteger;
  ADOStoredProc1.ExecProc;
end;

function TDm.getIdFromOrganizations(strTitle: String): Integer;
var
  intId : Integer;
begin
  intId := 0;
  with qryGetIdFromOrganizations do
  begin
    close;
    Parameters.ParamByName('T').Value := strTitle;
    open;

    if RecordCount > 0 then
      intId := FieldByName('ID').AsInteger;
    close;
  end;
  Result := intId;
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

procedure TDm.Ins_Email(Subject, SendAddress, ReciveAddress,
  Memo, AttachFile, AttachFileName: String; Status: Smallint; DateEmail,
  TimeEmail: String; IsAnswer, IsReciveEmail: Byte; UsersID: Integer;
  IsRead, IsPersonal, IsImportant, IsSecret: Byte;
  EmailNuFromDate: String);
begin
  with Sp_Ins_Emails do
  begin
    Parameters.ParamByName('@Code').Value := StrToIntDef(Qry_GetResult('Select IsNull(Max(Code)+1,1)as MaxCode From Emails',dm.YeganehConnection),1);
    Parameters.ParamByName('@Subject').Value := Subject;
    Parameters.ParamByName('@SendAddress').Value := SendAddress;
    Parameters.ParamByName('@ReciveAddress').Value := ReciveAddress;
    Parameters.ParamByName('@Memo').Value := Memo;
    Parameters.ParamByName('@AttachFile').Value := AttachFile;
    Parameters.ParamByName('@AttachFileName').Value := AttachFileName;
    Parameters.ParamByName('@Status').Value := Status;
    Parameters.ParamByName('@DateEmail').Value := DateEmail;
    Parameters.ParamByName('@TimeEmail').Value := TimeEmail;
    Parameters.ParamByName('@IsAnswer').Value := IsAnswer;
    Parameters.ParamByName('@IsReciveEmail').Value := IsReciveEmail;
    Parameters.ParamByName('@UsersID').Value := UsersID;
    Parameters.ParamByName('@IsRead').Value := IsRead;
    Parameters.ParamByName('@IsPersonal').Value := IsPersonal;
    Parameters.ParamByName('@IsImportant').Value := IsImportant;
    Parameters.ParamByName('@IsSecret').Value := IsSecret;
    Prepared := True;
    ExecProc;
  end;
end;

procedure TDm.OpenExcelFile(Filename: string; Readonly: boolean);
begin
  ExcelApplication.DisplayAlerts[LCID] := False;

  ExcelApplication.Visible[LCID] := False;
  ExcelApplication.Connect;
  ExcelApplication.Visible[LCID] := True;
  ExcelApplication.Workbooks.Add(FileName, LCID);
end;

procedure TDm.ExcelApplicationWorkbookBeforeClose(ASender: TObject;
  const Wb: _Workbook; var Cancel: WordBool);
var
  strFileName: OleVariant;
   ver : Integer;
   SaveChanges : OleVariant;
begin
  inherited;
  SaveChanges := True;

  strFileName := _TempPath + _ExcelFileName;

  try
    ExcelApplication.UserControl := False;
    ExcelApplication.DisplayAlerts[LCID] := False;

    ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlNormal, '', '', false, false, xlNoChange,
        xlUserResolution, false, EmptyParam, EmptyParam, LCID);

    ExcelApplication.DisplayAlerts[LCID] := True;
    ExcelApplication.Disconnect;
  except on e:Exception do
    begin
      ShowMessage('Error ::' + e.Message);
    end;
  end;

  _Excel_Is_Opened := False;
  Timer_SaveExcel.Enabled:=true; //–ŒÌ—Â ›«Ì· Ê—œ œ— »«‰ﬂ «ÿ·«⁄« 

end;

procedure TDm.Timer_SaveExcelTimer(Sender: TObject);
var
   i : integer;
begin
  Timer_SaveExcel.Enabled := false;
  try
    if not _Dont_save_Word then
    With dm,Get_LetterWordFile do
    begin
      Edit;
      Get_LetterWordFileLastUpdate.Value := Now;
      i:= 0;
      while i<200 do
      begin
        try
          Get_LetterWordFileImage.LoadFromFile(_TempPath+_ExcelFileName);
          Get_LetterWordFileLastUpdate.Value := Now;
          Post;
          i:= 200;
        except
          inc(i);
          Sleep(30);
        end;
      end;
      Timer_SaveExcel.Enabled := False;
      _Excel_Is_Opened := False;
    end;
    SetWordClosed(Get_LetterWordFileLetterID.AsInteger, _UserID);
  except
  end;
end;

procedure TDm.YeganehConnectionBeforeDisconnect(Sender: TObject);
begin
//  Application.Terminate;
  //ShowMessage('»œ·Ì· ﬁÿ⁄ «— »«ÿ »« ”—Ê— ·ÿ›« «“ »—‰«„Â Œ«—Ã ‘ÊÌœ');
end;

procedure TDm.Timer1Timer(Sender: TObject);
begin
  _Today := ShamsiString(Exec_Get_NowDate);
end;

function TDm.processExists(exeFileName: string): Boolean;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
  Result := False;
  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
    begin
      Result := True;
    end;
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;


function TDm.KillTask(ExeFileName: string): Integer;
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin

  Result := 0;
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) =
      UpperCase(ExeFileName))) then
      Result := Integer(TerminateProcess(
                        OpenProcess(PROCESS_TERMINATE,
                                    BOOL(0),
                                    FProcessEntry32.th32ProcessID),
                                    0));
     ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);

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
  SectionCommandDrop : string ;
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
  SR  : TSearchRec;
  FileAttrs: Integer;
  //qryAutoRunScript :TADOQuery;
  qry :TADOQuery;

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
  // jHAT PAK KARDAN PACH GHADIMI
  {
  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) '+
                    ' UPDATE [dbo].[TBLAPPSETTING] SET Max_TableScriptNumber = 1 ,Last_TableScriptNumber = 1,Max_ViewScriptNumber = 1 ,Last_ViewScriptNumber = 1  '+
                                  ' WHERE (SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE DATE<'+'''2024-06-02'''+' ) >0 AND ISNULL((SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE   DATE>'+'''2024-06-14'''+' ),0) =0   '  ;

  qry.ExecSQL;
  qry.Free;
     }

  qryAutoRunScript.Close;
  qryAutoRunScript.Open;

  LastTaleNo:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  lastViewNo:= qryAutoRunScript.Fields.Fields[1].AsInteger;

  FilePath := ExpandFileName(GetCurrentDir + '\Dabir_AutoScripts\');
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

         SectionCommandDrop := '' ;
         if (Pos('/*',SectionCommand) >0)  AND (Pos('/*',SectionCommand) < 10) then
         begin
           if FileName = 'FuncProceScripts.txt'  then
             SectionCommandDrop :=  Copy (SectionCommand,3, (Pos('*/',SectionCommand)-4))
           else  SectionCommandDrop := '' ;
         end;

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
             try
               if SectionCommandDrop <>'' then
               begin
                 qryAutoRunScript.SQL.Text :=   SectionCommandDrop ;
                 qryAutoRunScript.ExecuteOptions := [eoAsyncFetch];
                 qryAutoRunScript.ExecSQL;
               end;

               qryAutoRunScript.SQL.Text :=   SectionCommand ;
               qryAutoRunScript.ExecuteOptions := [eoAsyncFetch];
               qryAutoRunScript.ExecSQL;
             except
             end;

             if (FistScript = 1 )  then
             begin
               qryAutoRunScript.SQL.Text   :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) ' +
                                               '   INSERT INTO [dbo].[TBLAPPSETTING] (Last_TableScriptNumber,Last_ViewScriptNumber,AppVersion,Date) VALUES ( '+ IntToStr(LastTaleNo)+','+ IntToStr(lastViewNo)+','''+_SoftVersion+''',GETDATE() ) ' ;
               qryAutoRunScript.ExecSQL;

               qryAutoRunScript.SQL.Text  :=  ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[tblAppVer]'') AND TYPE IN (N''U'')) ' +
                                              '   INSERT INTO dbo.tblAppVer (version, changeDate, Descript) VALUES('''+ Trim(_SoftVersion) + ''', GETDATE(), N''»—Ê“ ‘œ'')';

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
                                    ' Begin   UPDATE [dbo].[TBLAPPSETTING] SET [Max_TableScriptNumber] = [Last_TableScriptNumber] WHERE ISNULL(Max_TableScriptNumber,0) < isnull([Last_TableScriptNumber],0)  '+
                                    ' UPDATE [dbo].[TBLAPPSETTING] SET [Max_ViewScriptNumber] = [Last_ViewScriptNumber] WHERE ISNULL([Max_ViewScriptNumber],0) < isnull([Last_ViewScriptNumber],0) '  +
                                    ' SELECT TOP 1 (ISNULL(Max_TableScriptNumber,Last_TableScriptNumber)-ISNULL(Last_TableScriptNumber,0)) + ( ISNULL(Max_ViewScriptNumber,Last_ViewScriptNumber) - ISNULL(Last_ViewScriptNumber ,0)) CountError   '+
                                    ' FROM [dbo].[TBLAPPSETTING] ORDER BY id DESC  end '+
                                    ' ELSE SELECT 0 CountError' ;

    qryAutoRunScript.Close;
    qryAutoRunScript.Open;

    _CountError:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  end;
//

end;
{ TODO -oparsa : 14030108 }

procedure TDm.ActiveWord;
var
  wordApp : Variant;
begin
   try
     wordapp  := Createoleobject('Word.Application');
   except
   end;
end;

function TDm.IsWordRunning: Boolean;
var
  wordApp : Variant;
begin
   Result := False;
   try
     wordapp  := GetActiveOleObject('Word.Application');
     Result   := not varIsEmpty(wordApp);
   except
     Result := False;
   end;
end;

function TDm.UnlockAndDeleteFile(const FileName: string): Boolean;
var
  Handle: THandle;
  hFileRes: HFILE;
  ErrorCode : DWORD;
begin
  Result := False;
  
  if not FileExists(FileName) then
    Exit;

  {
  hFileRes := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE,0,nil,OPEN_EXISTING,FILE_ATTRIBUTE_NORMAL,0);

  Result := (hFileRes = INVALID_HANDLE_VALUE);
  
  if hFileRes = INVALID_HANDLE_VALUE then //›Ì· »«“ ‰„Ì ‘Êœ
  //

  else
  if hFileRes <> INVALID_HANDLE_VALUE then    //  ›«Ì· »«“ „Ì ‘Êœ
  begin
    CloseHandle(hFileRes);
  end;
   }

  // Result := False;
  //Handle := CreateFile(PChar(FileName), GENERIC_WRITE, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  Handle := CreateFile(PChar(FileName), GENERIC_WRITE, FILE_SHARE_WRITE or FILE_SHARE_READ or FILE_SHARE_DELETE, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);

  if Handle = INVALID_HANDLE_VALUE then  //›«Ì· »«“ ‰„Ì ‘Êœ
  begin
    ErrorCode :=GetLastError;
    
    case ErrorCode of
      ERROR_FILE_NOT_FOUND: ShowMessage('File not found');
      ERROR_ACCESS_DENIED: ShowMessage('Access denied');
      ERROR_SHARING_VIOLATION: ShowMessage('Sharing violation');
    else ShowMessage('Unknown error: ' + IntToStr(ErrorCode));
    end;
    
    if FileExists(pchar(FileName)) then
    begin
      if processExists('WINWORD.EXE') then  KillTask('WINWORD.EXE');

      SysUtils.FileSetReadOnly(_TempPath+_WordFileName, false);
      SysUtils.DeleteFile(_TempPath+_WordFileName);
    end;
  end
  else
  if Handle <> INVALID_HANDLE_VALUE then // ›«Ì· »« „Ê›ﬁÌ  »«“ ‘œÂ
  begin
    CloseHandle(Handle);
    Result := DeleteFile(PChar(FileName));

    if FileExists(pchar(FileName)) then
    begin
      //if processExists('WINWORD.EXE') then  KillTask('WINWORD.EXE');

      SysUtils.FileSetReadOnly(_TempPath+_WordFileName, false);
      SysUtils.DeleteFile(_TempPath+_WordFileName);
    end;

  end;
  if not FileExists(pchar(FileName)) then
  begin
    Result := True;
  end;

end;

function TDm.GetServerTime: string;
begin
  Result:=Exec_get_NowTime;
end;

end.

