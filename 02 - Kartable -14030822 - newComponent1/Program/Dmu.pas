unit Dmu;

interface

uses
   Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList,YdbGrid, officeXP,
   uCiaTrayIcon, Math, ARM_TLB, untARMDongle, ARMDongleCore;
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
    WordApplication: TWordApplication;
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
    Get_All_Letter: TADOStoredProc;
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
    Get_All_LetterClassificationID: TIntegerField;
    Get_All_LetterArchivePlace: TWideStringField;
    Get_All_LetterSubjectDescription: TWideStringField;
    Get_All_Letterhas_sign: TBooleanField;
    Get_All_LetterInnerNoForWord: TStringField;
    Get_All_Letterhas_HasLetterForms: TBooleanField;
    Get_All_LetterSubjectTitle: TStringField;
    adoFollow_Retroaction_Letter: TADODataSet;
    adoFollow_Retroaction_LetterFR_ID: TAutoIncField;
    adoFollow_Retroaction_LetterLetterID: TIntegerField;
    adoFollow_Retroaction_LetterFR_LetterID: TIntegerField;
    adoFollow_Retroaction_LetterFRIndicatorID: TIntegerField;
    adoFollow_Retroaction_LetterFRKindTitle: TStringField;
    adoFollow_Retroaction_LetterFR_Kind: TIntegerField;
    adoFollow_Retroaction_LetterFRLetterNO: TStringField;

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
    Procedure SetCurrentMyear(value:byte);
    Procedure SetSecID(value:byte);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure OpenWordFile(Filename:string;Readonly:boolean);
    procedure Timer_SaveWordTimer(Sender: TObject);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
                      const Doc: _Document; var Cancel: WordBool);
    function Y_InputQuery (const ACaption, Adefault: string; var Value: string; FormCaption:string): Boolean; 


    Procedure ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:byte;Secretariatid:integer;top:integer;where:widestring);
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
    procedure UsersPasswordGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure UsersPasswordSetText(Sender: TField; const Text: String);
    procedure ShowSigners(LID: integer; ShowFool: boolean);
    procedure WordApplication2DocumentOpen(ASender: TObject;
      const Doc: _Document);
    procedure WordApplicationDocumentOpen(ASender: TObject;
      const Doc: _Document);
    procedure Get_LetterData_by_LetterIDAfterScroll(DataSet: TDataSet);
    procedure adoFollow_Retroaction_LetterCalcFields(DataSet: TDataSet);
  private
    FCurrentMyear:byte;
    FSecID:byte;
    ActDocName : String;
    FWord_Must_Readonly: Integer;
    procedure SetWord_Must_Readonly(const Value: Integer);
    function WordMustReadonly(FormTag:Integer;AccessID:Integer;UserID:Integer):Integer;
    procedure OpenWorkSheetTablesForLoukup;
    //Add Sanaye 950828
    //������� ��� ������
    function ByteArrayToVariant( const A: array of byte ): Variant;
    //End Sanaye...
  public
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
    DefualtSSigner     ,//���� ���� �� ��� ������� /���� �����/����� �����
    DefaultRClassificationID,
    DefaultRUrgencyID    ,
    DefaultRNumberOfAttachPages,
    DefaultRFromOrgId  ,
    DefaultRNumberOfPage ,

    DefaultRReceiveTypeID,
    BeginIndicator      :integer;

    DayInWeek ,
    InitialReceivedMode,
    InitialArchiveMode,
    DayInWeekForBackup ,
    InitialDisplyMode  :byte;
    SearchStringResult : string;

    SearchResult ,
    {Ranjbar 89.09.28 ID=212}
    //MaxLetterToShow ,
    MaxLetterInDabir, //����� ����� ���� �� ��������
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

    DefaultIsCopy, //�� �������� ����� ����� ���� ����� ��� ������� - ���� ������� ��� �� ��� �����
    ReciveIsCopy,  //�� ������� �������� ���� ��� ����� �� ���� ��� ������� ����� ���� .
    DefaultInnerCopy : Boolean;

    FocusedColor:Tcolor;
    MemoFont:TFont;
    DefaultOrgPreCode,keytext:string;
    procedure RefreshTemplate;
    procedure SearchTitle(YW:TYWhereEdit);
    Function  FileName(secid,myear:byte;indicatorid:integer):string;
    function  Cdate(S:string):string;

    property  CurrentMyear :byte read fCurrentMyear write SetCurrentMyear;
    property  SecID :byte read fSecID write SetSecID;
    property  Word_Must_Readonly:Integer read FWord_Must_Readonly write SetWord_Must_Readonly;

    function  Search(Y:TYwhereEdit):integer;

    function GetOldSecretariatID(LetterID:Integer):Integer;
    function GetSecretariatName(SecretariatID:Integer):String;

    procedure SaveTemplateToFile;
    procedure Replace(var main:widestring;old,new:widestring);
    procedure updateAddedInfoRecord(PrimaryCode,Fieldname,FieldValue,letterWhere:string);
    function ExecGet_LetterWordFile(LetterID:integer;ReadOnly:boolean;aOpenFile:Boolean=True):boolean;
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
    function StringToPWide(  sStr: string;  var iNewSize: integer  ): PWideChar;
    function replacePWC(input: Pwidechar): Pwidechar;

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
   _ResultOrgID:integer;       //������ ���� ������� � ���� ���� ������ ��� �� ��� ����� ���� �� ����
   _ResultOrgTitle:WideString;
   _ResultOrgCode:WideString;
   _ResultOrgRespon:WideString;
   _UserLoginLogoutID:integer;
   _Word_Is_Opened : boolean;
   _WordFileName:string;
   _ExcelFileName:string;
   _PasswordMustChange:boolean;
   _TempPath:string;
   _ResultFolderID:integer;
   _AccessToClassifieldLetter:boolean;
   _AllowToEditWordFiles:boolean;
   _HasReplicate :boolean;     //��� ������ ���� �� ��� ������� �� ��� ���
   _SoftTitle : String;
   _DatabaseName: string;
   _CRMDatabaseName: string;
   _ServerID : integer;
   _Dont_save_Word : boolean;
   _IsSecretariatStaffer: boolean; //����� ����� ����� ������ �������� ��� �� ��
   _ArchiveCenterID: integer;
   _Year : integer;
   _Today :String;
   _SelectedRecommitesID,
   _SelectedLettersID:TStrings;
   _CanViewSecureRecommite ,     _CanAttachColor, _CanViewAllAttachPages: Boolean;
   _GroupID:Integer;
   _CanRecommiteWithOtherOrg : boolean; // Amin 1391/12/07
   _CanConnectToCRM : boolean; // 920308  Hadi Mohamed
   _OpendWordLetterID : integer;
   //����
   _FaxUpdate : Boolean;
   _FaxUpdatePriod : Byte;
   _FaxExtention : String;
   _FaxDirectory : String;
   _FaxCartableOrgID : Integer;
   _FaxSecID : Integer;
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
   _ApplicationPath : String;  //���� ���� ������
   _IsServer : Boolean;
   _eyeganeh:string = 'yeganeh';
   _yeganeh:string = '����';
   Project : string = 'Dabir'; // Amin 1391/07/15

    //Add Sanaye 950828
    //������� ��� ������
   _ARM_CoName, _ARM_IPServer, _ARM_AUSKey, _ARM_ReadKey, _ARM_WriteKey, _ARM_SafeKey1, _ARM_SafeKey2 : String;
   _ARM_DongleCore_AESClass : AESClass;
   //end sanaye
Const
   _Kartable = False;
   _ShowLogo = True;
//   _Yeganeh='����';
//   _EYeganeh='yeganeh';

   _SoftLastUpdate = '1394/08/29';
   _SoftVersion = '5.8.0.0';


{$R *.dfm}

implementation

uses yShamsiDate, Uconnect, LogOn, Settingsu, UMain, Registry,
     USearchTitle, YeganehDemo, YInputQuery, businessLayer, ShowmessageU,
     BaseUnit, StrUtils, UchangePassword, OfficeCommandbarButton,
     LetterSigners, UaddLetterData;

type
   code=^integer;
   Letter_Format = (Letters,Drafts,deleted);

//Add Sanaye 950828
//������� ��� ������
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
//end sanaye

procedure TDm.SearchTitle(YW:TYWhereEdit);
var i: integer;
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

Function TDm.GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
Var LetterID : integer;
    rr :Boolean;
begin
    Result:='';

   if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow, _Year, LetterID,rr) then // Amin 1391/12/05 Edited
      Result:=Exec_get_LetterMemo_ByID(LetterID)
   else
      if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro, _Year, Letterid,rr) then // Amin 1391/12/05 Edited
         Result:=Exec_get_LetterMemo_ByID(LetterID)
end;



Function TDm.GetDateFollow(ReceiveMode:boolean;Follow,Retro:String):string;
 var LetterID : integer;
     rr          :Boolean;
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
      IF NOT ActionsAccessHasAccess.AsBoolean THEN
         Result:=FALSE
end;


Function TDm.GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;
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
          Try
             // Amin 1391/12/05 LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,CurrentMyear,SecID);
             LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,Follow_RetroactionYear,SecID); // Amin 1391/12/05
          Except
             Result:=false;
          end;
          Result:=LetterID>0;
       end;
end;


procedure TDm.GetUserSettings;
Var S:string;
begin
   S := GetUserSetting('MemoFont');
   if Pos('_',S) <> 0 then
      MemoFont := StrToFont(S)
   else
      MemoFont := Nil;
   DayInWeek := Exec_Get_DayID_InWeek;//���� ����� ����� ��� ����

   FocusedColor := GetUserSetting('FocusedColor');
   ShowOriginalErrorMessage:=GetUserSetting('ShowOriginalErrorMessage');

   InitialReceivedMode:= GetUserSetting('InitialReceivedMode');
   InitialArchiveMode := GetUserSetting('InitialArchiveMode');
   InitialDisplyMode  := GetUserSetting('InitialDisplyMode');
   DefaultProceed := GetUserSetting('DefaultProceed');

   //���� :  �� ������� ���� ��� ����� � ����� ��� �� ������ ���� ������ ������
   //�� ���� ��� ������� ����� ����� ���� � ��� ��� �� ������ ��� ���� �� ���� ������ �����
   DefaultIsCopy := GetUserSetting('DefaultisCopy'); //���� ����� ��� ������� ����� ��� . ��� ���� ��������
   ReciveIsCopy := GetUserSetting('ReciveIsCopy');//�� ������� �������� ���� ��� ����� �� ���� ��� ������� ����� ���� .
   DefaultInnerCopy := GetUserSetting('DefaultInnerCopy');//���� ��� ����� �� ���� ��� ������� ����� ���� .

   DefaultSClassificationID:=GetUserSetting('DefaultSClassificationID');
   DefaultSUrgencyID    :=GetUserSetting('DefaultSUrgencyID');
   DefaultSNumberOfAttachPages:=GetUserSetting('DefaultSNumberOfAttachPages');
   DefaultSNumberOfPage :=GetUserSetting('DefaultSNumberOfPage');
   DefaultSReceiveTypeID:=GetUserSetting('DefaultSReceiveTypeID');
   DefaultSFromOrgId  :=GetUserSetting('DefaultSFromOrgId');

   DefualtSSigner :=GetUserSetting('DefualtSSigner');
   DefaultRClassificationID:=GetUserSetting('DefaultRClassificationID');
   DefaultRUrgencyID :=GetUserSetting('DefaultRUrgencyID');
   DefaultRNumberOfAttachPages:=GetUserSetting('DefaultRNumberOfAttachPages');
   DefaultRNumberOfPage :=GetUserSetting('DefaultRNumberOfPage');
   DefaultRReceiveTypeID:=GetUserSetting('DefaultRReceiveTypeID');
   DefaultRFromOrgId :=GetUserSetting('DefaultRFromOrgId');
   ListFromorg:=GetUserSetting('ListFromorg');
   ChartorderbyTitle:=GetUserSetting('ChartorderbyTitle');
   //HasJpg:=GetUserSetting('HasJpg');

   {Ranjbar 89.09.28 ID=212}
   //MaxLetterToShow := GetSystemSetting('MaxLetterToShow');
   MaxLetterInDabir := GetUserSetting('MaxLetterInDabir');
   if MaxLetterInDabir = 0 then
      MaxLetterInDabir := 100;
   //---
   
   BeginIndicator:=GetSystemSetting('BeginIndicator');
   EqualAnswerIndicator:=GetSystemSetting('EqualAnswerIndicator');
   UniqeIndicator:=GetSystemSetting('UniqeIndicator');
   Version:=GetSystemSetting('Version');

   // ���� ����� ���� ����� ���� ��� ECE
   PathOfECE:=GetSystemSetting('PathOfECE');
   AutomaticSendForECE := GetSystemSetting('AutomaticSendForECE');

   //���� ����� ����� ��� ���� ��� ������� ����
   DayInWeekForBackup := GetSystemSetting('DayInWeekForBackup');
   {Ranjbar 89.09.06 ID=238}
   //�� �� Settings ���� ��� ��� �� ����
   {if DayInWeek<>DayInWeekForBackup then
      SetSystemSetting('DayInWeekForBackup',false);}
   //---

   UserMemoDisplay:=GetSystemSetting('UserMemoDisplay');//������� �� �� ����
   Orgname:=GetSystemSetting('OrgName');
   FullTextSearch:=GetSystemSetting('FullTextSearch');
   LetterHasArchiveCopy:=GetSystemSetting('LetterHasArchiveCopy');

   RelatedTableName:=GetSystemSetting('RelatedTableName');
   RelatedDisplayField:=GetSystemSetting('RelatedDisplayField');
   RelatedIDField:=GetSystemSetting('RelatedIDField');

   RefreshPriodTime:=GetSystemSetting('RefreshPriodTime');
   AllowMultiUser:=GetSystemSetting('AllowMultiUser');
   RecommiteCopy:=GetSystemSetting('RecommiteCopy');
   UseTemplate:=GetSystemSetting('UseTemplate');
   InsertLog:=GetSystemSetting('InsertLog');
   ShowFarsiCaption:=GetSystemSetting('ShowFarsiCaption');

   DefaultOrgPreCode:=GetSystemSetting('DefaultOrgPreCode');
   try
      _ServerID := GetSystemSetting('ServerID');
   except
   end;
   _HasReplicate := GetSystemSetting('HasReplicate'); //��� ������ ���� �� ��� ������� �� ��� ���

   {Ranjbar 89.09.20 ID=247} //������� ������ ����
   {_FaxUpdatePriod := GetSystemSetting('FaxUpdatePriod');
   FaxExtention:=GetSystemSetting('FaxExtention');
   FaxDirectory:=GetSystemSetting('FaxDirectory');
   FaxUpdate:=GetSystemSetting('FaxUpdate');
   FaxCartableOrgID:=GetSystemSetting('FaxCartableOrgID');}
   _FaxUpdatePriod := GetUserSetting('FaxUpdatePriod'); //��� ���� ���� ����� ���� ���� �� �����
   _FaxExtention := GetUserSetting('FaxExtention'); //JPG=0 , TIF=1
   _FaxDirectory := GetUserSetting('FaxDirectory'); //���� ������� ����
   _FaxUpdate := GetUserSetting('FaxUpdate'); //���� ���� ����
   _FaxCartableOrgID := GetUserSetting('FaxCartableOrgID'); //������� ����
   _FaxSecID := GetUserSetting('FaxSecID'); //�������� ����
   //---

   if RefreshPriodTime = 0  then
      RefreshPriodTime := 300;
end;


function TDm.LastIndicatorID(Letter_type:integer;LetterFormat:byte;IsForFax:Boolean=False):Integer;
begin
   {Ranjbar 89.09.20 ID=249}
   //Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Secid);
   if (SecID = Get_All_LetterSecretariatID.AsInteger)or(Get_All_LetterSecretariatID.IsNull)or(Get_All_LetterSecretariatID.AsInteger=0) then
   begin
      if not(IsForFax)then //����� ��������� ���� ����
         Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Secid) //�������� ����
      else
         Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,_FaxSecID); //���� �������� ������ ��� ���� ����
   end
      else
         Result := Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,Get_All_LetterSecretariatID.AsInteger);//�������� ��� ����
   //---
end;


function TDm.isIndicator(s:string;var FromIndicator,ToIndicator:integer):boolean;
var p:byte;
f,t : string;
begin
result:=false;
 p:=pos('��',s) ;
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



procedure TDm.TreeLevel2Expanding(TreeView:ttreeView;Node: TTreeNode;F,s:tadotable);
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
           if GetUserSetting('ShowSubjectCodeInTree') then
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

function TDm.NewToOrganization(Title,Responsible:wideString):integer;
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
   FieldByName('email').AsString:=Title;
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

procedure TDm.SetCurrentMyear(value:byte);
 begin
   FCurrentMyear:=value;
   try
     MainForm.RefreshQuery;
   except end;
 end;

procedure TDm.SetSecID (value:byte);
begin
   FSecID:=value;
   dm.Secretariats.Locate('secid',SecID,[]);
   _ArchiveCenterID:=dm.SecretariatsArchiveCenterID.AsInteger;
   MainForm.RefreshQuery;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
Var
   D : TDateTime;
   DongleProductCode, dongleErrorCode:integer;
   qry : TADOQuery;

   //Add Sanaye 950828
   //������� ��� ������
   Rand1:Cardinal;
   OBJ,OBJ1:OleVariant;
   arrRand:array[0..15] of Byte;
   Res:Byte;
   i:integer;
   //end sanaye
begin
   //��� ���� ���� ���� ��� �� regional language ��� ������ �����
  if (GetThreadLocale<>1065 )then // force locale settings if different
  if SetThreadLocale(1065) then
     begin
       GetFormatSettings; //
     end;
   //end;
   Word_Must_Readonly:=0;
   {$IFDEF ADA}
      _yeganeh := '���';
      _eyeganeh := 'Ada';
   {$ELSE}
      _yeganeh := '����';
      _eyeganeh := 'Yeganeh';
   {$ENDIF}

   if Trim(YeganehConnection.ConnectionString) <> '' then
      MBaseForm.MessageShowString('���� ������� ��� : ConnectionString', False);

   _WordFileName := UpperCase(_EYeganeh) + '_WORD_FILE.DOCX';
   _ExcelFileName := UpperCase(_EYeganeh) + '_Excel_FILE.XLS';
   _TempPath := GetTempDirectory;

   //Ranjbar
   _UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder\';
   if Pos('\\',_UserFolder) = 0  then
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
   Connect; //Fconnect ���
   Yeganeh.Repaint;
   //Ranjbar
   _IsServer := (UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)) );
   //---
   _Today := ShamsiString(Exec_Get_NowDate);
   Yeganeh.Repaint;


   //Add Sanaye 950828
   //������� ��� ������ ��� ����
   //ARM_DongleType = 0 ----> ��� ����
   //ARM_DongleType = 1 ----> ��� ����
   LoginForm := TLoginForm.Create(Application);
   // Commented by saeedi 960922
//   if GetSystemSetting('ARM_DongleType') = '0' then
//   begin
//   DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,106070,_SoftTitle,False,DongleProductCode);
//   if (DongleErrorCode > 0) then
//   begin
//      ShowMessage(DongleErrorMessage(dongleErrorCode));
//      ExitProcess(0);
//      Application.Terminate;
//      Halt;
//   end;
//   end
//   else
//   begin
//     _ARM_CoName := GetSystemSetting('ARM_CoName');
//     _ARM_IPServer :=GetSystemSetting('ARM_IPServer');
//     _ARM_AUSKey := GetSystemSetting('ARM_AUSKey');
//     _ARM_ReadKey := GetSystemSetting('ARM_ReadKey');
//     _ARM_WriteKey := GetSystemSetting('ARM_WriteKey');
//     _ARM_SafeKey1 := GetSystemSetting('ARM_SafeKey1');
//     _ARM_SafeKey2 := GetSystemSetting('ARM_SafeKey2');
//
//     if (_ARM_IPServer <> '0') and (_ARM_AUSKey <> '0') and (_ARM_WriteKey <> '0') and (_ARM_SafeKey1 <> '0') and (_ARM_SafeKey2 <> '0') then
//     begin
//
//       Randomize;
//
//       Rand1 := RandomRange(1000,2147483647);
//
//       LoginForm.ARMClass1 := TARMClass.Create(Self);
//
//       if _ARM_IPServer = '127.0.0.1' then
//         OBJ := LoginForm.ARMClass1.Authenticate(Rand1)
//       else
//         OBJ := LoginForm.ARMClass1.NetAuthenticate(_ARM_IPServer, Rand1);
//
//       Res := _ARM_DongleCore_AESClass.CheckAuthenticate(OBJ,Rand1);
//
//       if Res = 1 then
//       begin
//         OBJ:=_ARM_DongleCore_AESClass.CreateUserKey(_ARM_WriteKey,_ARM_AUSKey);
//
//         if _ARM_IPServer = '127.0.0.1' then
//            LoginForm.ARMClass1.FindFirstARM(OBJ, _ARM_SafeKey1, _ARM_SafeKey2)
//         else
//            LoginForm.ARMClass1.FindNetARM(OBJ);
//
//         for i:= 0 to 15 do
//           arrRand[i] := RandomRange(1,255);
//
//         OBJ := ByteArrayToVariant(arrRand);
//
//         OBJ1 := LoginForm.ARMClass1.GetARMErrorCode(OBJ);
//
//         Res :=_ARM_DongleCore_AESClass.GenerateErrorCode(OBJ1,arrRand);
//
//         //ShowMessage(IntToStr(Res));
//       end
//       else
//       begin
//        ShowMessage('�Ԙ� �� ������� ������ �� ��� ������' +#13#10+ '������� ��� �� ����� ������');
//        frmARMDongle := TfrmARMDongle.Create(Application);
//        frmARMDongle.ShowModal;
//        FreeAndNil(frmARMDongle);
//        Application.Terminate;
//       end;
//     end
//     else
//     begin
//      ShowMessage('�Ԙ� �� ������� ������ �� ��� ������' +#13#10+ '������� ��� �� ����� ������');
//      frmARMDongle := TfrmARMDongle.Create(Application);
//      frmARMDongle.ShowModal;
//      FreeAndNil(frmARMDongle);
//      Application.Terminate;
//     end;
//   end;
   //end sanaye
   //*)

   Yeganeh.LblProssess.Visible := True;
   Yeganeh.Repaint;

   //Ranjbar 88.03.23
   //���� ���� ������� ������
   Scripts_Run(DM.YeganehConnection,50,ServerName);  //'ScriptsNumber'

   Yeganeh.LblProssess.Visible := False;
   Yeganeh.Repaint;

   ChangePassword;

   //���� ����� ����� Ndf ����� �� 4 ������� ��� �� ���� Mdf ǐ� ��� ����
   SPAddFileToDB.Close;
   SPAddFileToDB.Parameters.ParamByName('@DBName').Value := _DataBaseName;
   //SPAddFileToDB.ExecProc;
   //---

   TemplateGroup.Open;
   Tables.Open;

   //LoginForm := TLoginForm.Create(Application);

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
      ShowMessage('���� ���� ���� �ј��� �� ���� � ����� ���� � �� ��� ����� 6 ��� �� ��� ���� . ���� ���� ���� ��� �� ����� ����');
      FchangePassword:=TFchangePassword.Create(Application);
      FchangePassword.showmodal;
   end;


   {$IFDEF ADA}
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\ADA\Dabir','DabirPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\ADA\Dabir','DabirPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   {$ELSE}
   //Ranjbar //�������� ���� ���� ������ �� �������
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\Yeganeh\Dabir','DabirPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\Yeganeh\Dabir','DabirPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   //---
   {$ENDIF}

   //Ranjbar 89.10.29 ID=285
   //����� � Regional Language � Control Panel ������� ��� ���
//   ��� ����� ��� �� ��� ��� ����� ����� �� ���
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
begin
   ApplicationEvents.OnException:=nil;
   with ErrorMessage do
   begin
      if (pos('Connection failure',e.Message)<>0 ) or (pos('General network error',e.Message)<>0) then
       if MessageDlg(' �� ������ �� ���� �Ԙ� ���� ���� ��� ������ �� ���� ��� ����� �� ���� ������.',mtConfirmation,[mbyes,mbno],0)=mryes then
         begin
            //WinExec('Yeganeh_Dabir.exe',0);
            WinExec(pchar(ExtractFileName(Application.ExeName)),0);
            Application.Terminate;
         end;

       Close;
       Parameters.ParamByName('@like').Value:=e.Message;
      try  Open; except  exit end;
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
   ApplicationEvents.OnException:=ApplicationEventsException;

end;

function TDm.FileName(secid,myear:byte;indicatorid:integer):string;
begin
   Result:=IntToStr(IndicatorID);
   case Length(Result) of
      1: Result:='0000'+Result;
      2: Result:='000'+Result;
      3: Result:='00'+Result;
      4: Result:='0'+Result;
   end;
   Result:=IntToStr(myear)+'_'+IntToStr(SecID)+'_'+Result;
end;

function TDm.Cdate(S:string):string;
var p:integer;
    f:string;
begin
   p := -1;
   while p<>0 do
   begin
      p := pos('/',s);
      if p>0 then
      begin
         f := copy(s,1,p-1);
         Delete(s,1,p);
      end
         else
            f := s;
      if Result = '' then
         Result := f
      else
         Result := f+'/'+Result;
    end;
end;

procedure tDm.SaveTemplateToFile;
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

procedure TDm.Replace(var main:widestring;old,new:widestring);
var i : Integer;
begin
   i := Pos(old,main);
   While i <> 0 do
   begin
      Main := copy(main,1,i-1)+new+copy(main,i+length(old),length(main)-i-length(old)+1);
      i := Pos(old,main);
   end;
end;

procedure TDm.OpenWordFile(Filename:string;Readonly:boolean);
Var
   OReadOnly,olv,emp,f,f1,fals,tru,mytext : OleVariant;
   btn: CommandBarControl;
   en : integer;
   Handle :THandle;
begin
    emp := '';
    fals := false;
    tru := true;
    olv := wdOpenFormatAuto;
    f1 := Filename;
    OReadOnly := ReadOnly;
    if Word_Must_Readonly=0 then OReadOnly :=True;

    WordApplication.Connect;
    with WordApplication do
    begin
       {Ranjbar 89.08.18 ID=206}
       Disconnect;
//       btn := WordApplication.CommandBars.FindControl(emptyparam, 748, emptyparam, false) ;
       //btn := WordApplication.cmd.FindControl(emptyparam, 748, emptyparam, false);
//          btn.Set_Enabled(false);
       //---
       DisplayAlerts := tru;
       Visible := True;
       ChangeFileOpenDirectory(ExtractFilePath(Filename));

       Caption:='Yeganeh';
       Handle := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
       SetForegroundWindow(Handle);

       f := ExtractFileName(Filename);
       _Word_Is_Opened := true;
       Documents.Open(f,fals,OReadOnly,fals,emp,emp,fals,emp,emp,olv,emp,tru,fals,tru,tru);
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
       en := WordApplication.Selection.End_ - 1;
       if en = 0 then
         WordApplication.Selection.TypeText(' ');

    end;
end;

function TDm.ExecGet_LetterWordFile(LetterID:integer;readonly:boolean;aOpenFile:Boolean=True):boolean;
begin
   Result := False;
   with Get_LetterWordFile , Parameters do
   begin
      Close;
      ParamByName('@LetterID').Value := LetterID;
      Open;
      if RecordCount = 0 then
         Exit;

      Result := True;
      try
         Get_LetterWordFileImage.SaveToFile(_TempPath+_WordFileName);
         _OpendWordLetterID := LetterID;

//         WriteToLog('Open Word For LetterID = '+ IntToStr(_OpendWordLetterID));
      except
         MainForm.messageShow(86,FALSE);
         Result := False;
         exit;
      end;
      _LetterID := Letterid;
      {Ranjbar 89.10.28 ID=271}
      if aOpenFile then
      begin
         SetWordOpen(LetterID,_UserID);
         OpenWordFile(_TempPath+_WordFileName,readonly);
      end;
   end;
end;



procedure TDm.InsertTextIntoLetter(w:twordapplication;LetterID:integer);
begin
   With w.Selection do
   begin
      WholeStory;
      Exec_Insert_LetterText(LetterID,Text);
   end;
end;

procedure TDm.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc:_Document; var Cancel: WordBool);
var
   ver : integer;
begin
   if  TWordApplication(ASender).ActiveDocument.ReadOnly then
   begin
      _Word_Is_Opened := False;
      WordApplication.disconnect;
      Exit;
   end;

    ver := StrToint(copy(WordApplication.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver<12 then
    begin
        _Word_Is_Opened := False;
        WordApplication.disconnect;
        Exit;
    end;

   //����� ��� ���� ����� Save As ǐ� ��� ���� ��� ����
   //������� ��� � �� �� ��� ���� ������� ��� ���� ��� �� ������� ����� ��� ��� Save As ���� : ǐ� ����� �� �� ����� ������� ��
   ActDocName := UpperCase(WordApplication.ActiveDocument.Name);
   {if (ActDocName <> UpperCase(_WordFileName)) And
      (ActDocName <> UpperCase(_WordFileName+'X')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOCX')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOCX')) And
      (ActDocName <> UpperCase(_WordFileName+'.DOC')) then}
   if (ActDocName <> UpperCase(_WordFileName)) then
   begin
      _Word_Is_Opened := False;
      WordApplication.Disconnect;
      Timer_WordMessage.Enabled := True; //����� �����
      Exit;
   end;  

   //Comment By Sanaye 950602
   //����� ����� ����� ����  
   //WordApplication.ActiveDocument.Save;
   //end Sanaye

   {FilePathName := _TempPath+_WordFileName;
   WordApplication.ActiveDocument.SaveAs2000(FilePathName,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam,
                                             EmptyParam,EmptyParam,EmptyParam,EmptyParam);}
   if Dm.FullTextSearch then
      Dm.InsertTextIntoLetter(TWordApplication(ASender),_LetterID);
   _Word_Is_Opened := False;
   WordApplication.disconnect;
   Timer_SaveWord.Enabled:=true; //����� ���� ��� �� ���� �������
  // Timer_SaveWordTimer(self);

end;

procedure TDm.Timer_SaveWordTimer(Sender: TObject);
var
   i : integer;
begin
   //Ranjbar �� �� ���� ��� ���� ��� ��� ����� ���� �� ���
   Timer_SaveWord.Enabled := false;
   try
      if not _Dont_save_Word then
      With dm,Get_LetterWordFile do
      begin
         Edit;
         //Get_LetterWordFileImage.LoadFromFile(_TempPath + _WordFileName);
         Get_LetterWordFileLastUpdate.Value := Now;
         i:= 0;
         while i<200 do
            begin
               try
    //              WriteToLog('3');
                  Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
                  Get_LetterWordFileLastUpdate.Value := Now;
  //                WriteToLog('4');
                  Post;
                  i:= 200;
               except
                  inc(i);
                  Sleep(30);
               end;
            end;
//         WriteToLog('Save Word For LetterID = '+ IntToStr(Get_LetterWordFileLetterID.AsInteger) + ' instead of ' + IntToStr(_OpendWordLetterID));
         Timer_SaveWord.Enabled := False;
         _Word_Is_Opened := False;
      end;
      SetWordClosed(Get_LetterWordFileLetterID.AsInteger, _UserID);
   except
        //Timer_SaveWord.Enabled := true;
        // ShowMessage('����� ���� ��� ����� ��ϡ ���� ���� ����� ���� �� ��� ������� ���');
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



Procedure  TDm.ExecGet_All_Letter(ArchiveStatus:byte;archiveFolderID:integer;Letter_Type:integer;LetterFormat:integer;myear:byte;Secretariatid:integer;top:integer;where:widestring);
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
   y.Columns[0].Title.Caption := '��� ����';
   y.Columns[1].Title.Caption := '�����';
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
      ShowMessage('����� ����� �� ������� ������� �� �� ����� ������� ��� ���� ��� �� ��'+ #13 +
                  '������ ����� ���� �� ���� ���� ��� ������� �� ��� ������� ��� �����'+ ' Save As ' + #13 +
                  ' ���� '+' Save As '+'����� ���� Ӂ� ������ ���� ��� �� ��� ���� � �� ����� ');
end;
//---

procedure TDm.UsersAfterInsert(DataSet: TDataSet);
begin
   dm.UsersBeginActiveDate.AsString:=_Today;
   dm.UsersEndActiveDate.AsString:='1399/12/30';
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
     if not qtemp.FieldByName('viewDate').IsNull then Result:=True;
end;

procedure TDm.UpdateRecommite(LetterID: Integer);
begin
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('UPDATE ReCommites');
  qtemp.SQL.Add('SET OrgID =l.FromOrgID,OrgStaff=l.fromstaffer');
  qtemp.SQL.Add('FROM ReCommites R INNER JOIN Letter l ON l.LetterID = R.LetterID');
  qtemp.SQL.Add('WHERE R.LetterID=');
  qtemp.SQL.Add(IntToStr(LetterID));
  qtemp.SQL.Add(' and ParentId=0 and type=3');
  qtemp.ExecSQL;
end;

procedure TDm.DeactivateUser;
begin
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('UPDATE Users');
  qtemp.SQL.Add('SET [Active] = 0');
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

  if not qtemp.IsEmpty then Result:=qtemp.FieldValues['SecTitle'];

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
  qtemp.SQL.Add('UNION');
  qtemp.SQL.Add('SELECT UserID FROM Letter WHERE UserID='+qDeactivateUsersId.AsString);
  qtemp.SQL.Add('UNION');
  qtemp.SQL.Add('SELECT UsersID as UserID FROM Phone WHERE UsersID='+qDeactivateUsersId.AsString);
  qtemp.Open;

  if not Dm.qtemp.IsEmpty then Result:=True;

end;

function TDM.ReplaceCharacter(s: widestring; old, new: Char): widestring;
Var i: integer;
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
  QCheckTadakhol.SQL.Add('LEFT JOIN WorkSheet_Sessions wss ON wsb.ID=wss.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add('LEFT JOIN WorkSheet_Tasks wst ON wsb.ID=wst.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add('LEFT JOIN WorkSheet_Visits wsv ON wsb.ID=wsv.WorkSheetBaseID');
  QCheckTadakhol.SQL.Add('WHERE ((wsb.Year_Shamsi='+IntToStr(Year)+') AND (wsb.Month_Shamsi='''+Month+''') AND (wsb.Day_Shamsi='+IntToStr(Day)+'))');
  QCheckTadakhol.SQL.Add('AND');
  QCheckTadakhol.SQL.Add('(('+IntToStr(BeginTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(EndTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(BeginTimeToMinute)+'<wsb.BeginTimeToMinute AND '+IntToStr(EndTimeToMinute)+'>wsb.EndTimeToMinute))');
  QCheckTadakhol.SQL.Add('AND');
  QCheckTadakhol.SQL.Add('((wss.UserID='+IntToStr(UserID)+') OR (wst.UserID='+IntToStr(UserID)+') OR (wsv.UserID='+IntToStr(UserID)+'))');
  QCheckTadakhol.SQL.Add('AND');
  QCheckTadakhol.SQL.Add('(wsb.Status=1)');

//  ShowMessage(QCheckTadakhol.SQL.Text);

  QCheckTadakhol.Open;

  if QCheckTadakhol.IsEmpty then Result:=False
  else if (QCheckTadakhol.RecordCount=1) and (QCheckTadakhol.FieldByName('ID').AsInteger=WorkSheetBaseID) then Result:=False
  else Result:=True;
end;

function TDm.GetMonthShamsiName(ind: Integer): String;
begin
    if (ind>0) and (ind<13) then
      case ind of
        1:  Result:='�������';
        2:  Result:='��������';
        3:  Result:='�����';
        4:  Result:='���';
        5:  Result:='�����';
        6:  Result:='������';
        7:  Result:='���';
        8:  Result:='����';
        9:  Result:='���';
        10: Result:='��';
        11: Result:='����';
        12: Result:='�����';
      end
    else
      ShowMessage('��� ������� ���');
end;

function TDm.GetMonthShamsiIndex(S: String): string;
begin
   if Trim(S)='�������' then Result:='01'
   else if Trim(S)='��������' then Result:='02'
   else if Trim(S)='�����' then Result:='03'
   else if Trim(S)='���' then Result:='04'
   else if Trim(S)='�����' then Result:='05'
   else if Trim(S)='������' then Result:='06'
   else if Trim(S)='���' then Result:='07'
   else if Trim(S)='����' then Result:='08'
   else if Trim(S)='���' then Result:='09'
   else if Trim(S)='��' then Result:='10'
   else if Trim(S)='����' then Result:='11'
   else if Trim(S)='�����' then Result:='12'
   else
   begin
     ShowMessage('��� ������� ���');
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
    ver := StrToint(copy(WordApplication.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver<12 then
    begin
        ShowMessage('���� �� ���� 2007 �� ���� ������� ����');
        Exit;
    end;
end;

procedure TDm.WordApplicationDocumentOpen(ASender: TObject;
  const Doc: _Document);
var
   ver : integer;
begin
    ver := StrToint(copy(WordApplication.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver<12 then
    begin
        ShowMessage('���� �� ���� 2007 �� ���� ������� ����');
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
         15 : Result := '���� ������ 1';
         45 : Result := '���� ������ 2';
         46 : Result := '���� ������ 3';
         52 : Result := '���';
         53 : Result := '�����';
         54 : Result := '�����';
      end;
   end;
end;

procedure TDm.SetWordOpen(LetterID, UserID : integer);
Var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Set_Word_Open';

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
end;

function TDm.OpendByAnotherUser(LetterID: integer): integer;
Var
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
end;


function TDm.StringToPWide(sStr: string; var iNewSize: integer): PWideChar;
var
      pw : PWideChar;
      iSize : integer;
begin
      iSize := Length(  sStr  ) + 1;
      iNewSize := iSize * 2;
      pw := AllocMem(  iNewSize  );
      MultiByteToWideChar(  CP_ACP,  0,  PChar(sStr),  iSize,  pw,  iNewSize  );
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
  //����� ���� ����� ��� � ���� �� ����
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
        adoFollow_Retroaction_LetterFRKindTitle.Value := '����'
      else if adoFollow_Retroaction_LetterFR_Kind.AsInteger = 1  then
        adoFollow_Retroaction_LetterFRKindTitle.Value := '���';
    end;
  end;
  //End Sanaye

end;


end.

