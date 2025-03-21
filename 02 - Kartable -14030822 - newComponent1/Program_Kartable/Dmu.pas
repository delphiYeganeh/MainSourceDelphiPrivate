unit Dmu;

interface

uses
   Forms,DB, AppEvnts, ADODB, ImgList, Controls, Classes,ComCtrls,SysUtils,Graphics,DBCtrls,YwhereEdit, ShellApi,
   variants,dialogs,dateutils,windows,Word2000, OleServer, ExtCtrls, WordXP,ActnList,ydbgrid,Registry, clipbrd,
   TntDB,TlHelp32,
   //ARM LOCK
   //----------------------------------------------
   Math,{ ARM_TLB, untARMDongle, ARMDongleCore , Unit3 ,} U_ENTER_IP_ADDRESS_FRM ,U_LOCK_ERROR_FRM,
  frxClass, TINYLib_TLB, ExcelXP, Uconnect;
   //----------------------------------------------

type
   TReplaceWordTypes = (rwtLetter, rwtDraft, rwtDraftToLetter);
  TDm = class(TDataModule)
    ReceiveTypes: TADOTable;
    FromOrganizations_old: TADODataSet;
    Signers: TADODataSet;
    DToOrganizations: TDataSource;
    DSigner: TDataSource;
    DCommon: TDataSource;
    Urgenceis: TADOTable;
    Classifications: TADOTable;
    Accesses: TADOTable;
    Users: TADOTable;
    DActions: TDataSource;
    DApplicationForms: TDataSource;
    UserSettings: TADODataSet;
    AccessesID: TWordField;
    AccessesTitle: TWideStringField;
    Files: TADOTable;
    FilesCommode: TWideStringField;
    FilesRow: TWideStringField;
    FilesUserID: TWordField;
    FilesSubjectId: TIntegerField;
    FilesTitle: TWideStringField;
    FilesSecretariatID: TWordField;
    FilesID: TWordField;
    DFiles: TDataSource;
    DSubjects: TDataSource;
    DAccesses: TDataSource;
    DActionsAccess: TDataSource;
    Dusers: TDataSource;
    Toorganizations: TADODataSet;
    ActionsAccess: TADODataSet;
    ActionsAccessFormTag: TWordField;
    ActionsAccessHasAccess: TBooleanField;
    YeganehConnection: TADOConnection;
    DLetterHeader: TDataSource;
    Fields: TADODataSet;
    DFields: TDataSource;
    DLetterTemplate: TDataSource;
    LetterTemplateDoc: TADODataSet;
    DLetterTemplateDoc: TDataSource;
    DLetterHeaderImage: TDataSource;
    FieldsID: TAutoIncField;
    FieldsFieldName: TWideStringField;
    FieldsTableID: TIntegerField;
    FieldsDescription: TWideStringField;
    RecommiteTypes: TADOTable;
    UsersId: TWordField;
    UsersTitle: TWideStringField;
    UsersUserName: TWideStringField;
    UsersPassWord: TWideStringField;
    UsersAccessID: TWordField;
    UsersDefualtSecretariatID: TWordField;
    UsersIsSecretariantStaffer: TBooleanField;
    UsersFromOrgTitle: TWideStringField;
    ErrorMessage: TADODataSet;
    ApplicationEvents: TApplicationEvents;
    ErrorMessageErrorid: TLargeintField;
    ErrorMessageErrorMessage: TWideStringField;
    ErrorMessageErrorDate: TStringField;
    ErrorMessageUserCode: TIntegerField;
    ErrorMessageFarsiMessage: TWideStringField;
    ErrorMessageShowMessage: TBooleanField;
    LetterTemplateDocID: TAutoIncField;
    LetterTemplateDocDocument: TBlobField;
    LetterTemplateDocTitle: TWideStringField;
    LetterHeaders: TADODataSet;
    DSentenses: TDataSource;
    LetterHeadersid: TAutoIncField;
    LetterHeaderstitle: TWideStringField;
    LetterHeadersdocument: TBlobField;
    Secretariats: TADOTable;
    SecretariatsSecID: TIntegerField;
    SecretariatsSecTitle: TWideStringField;
    UsersDefaultSec: TWideStringField;
    Sp_Inbox: TADODataSet;
    Sp_InboxToOrgRsponsibleStafferTitle: TWideStringField;
    Sp_InboxFromResponsibleStafferTitle: TWideStringField;
    Sp_InboxToOrgTitle: TWideStringField;
    Sp_InboxUrgencyTitle: TWideStringField;
    Sp_InboxClassificationTitle: TWideStringField;
    Sp_InboxFromOrgTitle: TWideStringField;
    Sentenses: TADOTable;
    SentensesID: TAutoIncField;
    SentensesSentenseName: TWideStringField;
    SentensesSentensValue: TWideStringField;
    UserSecs: TADODataSet;
    UserSecsUserId: TIntegerField;
    UserSecsSecId: TIntegerField;
    UserSecsSecTitle: TWideStringField;
    Actions: TADOTable;
    WordApplication: TWordApplication;
    Timer_SaveWord: TTimer;
    FromOrganizations_oldID: TIntegerField;
    FromOrganizations_oldTitle: TWideStringField;
    FromOrganizations_oldParentID: TIntegerField;
    FromOrganizations_oldPhone: TWideStringField;
    FromOrganizations_oldFax: TWideStringField;
    FromOrganizations_oldEmail: TWideStringField;
    FromOrganizations_oldResponsibleStaffer: TWideStringField;
    FromOrganizations_oldIsActive: TBooleanField;
    FromOrganizations_oldPreCode: TWideStringField;
    FromOrganizations_oldIsInnerOrg: TBooleanField;
    ToorganizationsID: TIntegerField;
    ToorganizationsTitle: TWideStringField;
    ToorganizationsParentID: TIntegerField;
    ToorganizationsPhone: TWideStringField;
    ToorganizationsFax: TWideStringField;
    ToorganizationsEmail: TWideStringField;
    ToorganizationsResponsibleStaffer: TWideStringField;
    ToorganizationsIsActive: TBooleanField;
    ToorganizationsPreCode: TWideStringField;
    ToorganizationsIsInnerOrg: TBooleanField;
    RecommiteTypesID: TWordField;
    RecommiteTypesTitle: TWideStringField;
    RecommiteTypesReceiveMode: TBooleanField;
    RecommiteTypesInnerOrganize: TBooleanField;
    ClassificationsID: TWordField;
    ClassificationsTitle: TWideStringField;
    ReceiveTypesID: TWordField;
    ReceiveTypesTitle: TWideStringField;
    UrgenceisID: TSmallintField;
    UrgenceisTitle: TWideStringField;
    Get_LetterWordFile: TADOStoredProc;
    Get_LetterWordFileLetterDataID: TAutoIncField;
    Get_LetterWordFileLetterID: TIntegerField;
    Get_LetterWordFilePageNumber: TWordField;
    Get_LetterWordFileImage: TBlobField;
    Get_LetterWordFileextention: TWordField;
    UsersFromOrgID: TIntegerField;
    FromOrganizations_oldCode: TWideStringField;
    UserShortCut: TADODataSet;
    UserShortCutUserID: TIntegerField;
    UserShortCutkeyText: TWideStringField;
    UserShortCutKeytitle: TWideStringField;
    UserShortCutaltKey: TStringField;
    UserShortCutuserShortCutID: TAutoIncField;
    LetterTemplate: TADODataSet;
    LetterTemplateID: TAutoIncField;
    LetterTemplateTitle: TWideStringField;
    LetterTemplateTemplateGroupID: TIntegerField;
    LetterTemplateTemplateGroupTitle: TWideStringField;
    TemplateGroup: TADOTable;
    TemplateGroupTemplateGroupID: TAutoIncField;
    TemplateGroupTemplateGroupTitle: TWideStringField;
    DTemplateGroup: TDataSource;
    ToorganizationsCode: TWideStringField;
    UserTemplateGroup: TADODataSet;
    UserTemplateGroupUserTemplateGroupID: TAutoIncField;
    UserTemplateGroupTemplateGroupID: TIntegerField;
    UserTemplateGroupUserID: TIntegerField;
    UserTemplateGroupTemplateGroupTitle: TWideStringField;
    DUserTemplateGroup: TDataSource;
    UsersKartableGridInfo: TBlobField;
    UsersDabirGridInfo: TBlobField;
    SecretariatsPreCode: TWideStringField;
    LetterImages: TImageList;
    Get_ReferenceTableData_By_TableID: TADOStoredProc;
    Get_ReferenceTableData_By_TableIDReferenceTableDataID: TAutoIncField;
    Get_ReferenceTableData_By_TableIDTableID: TIntegerField;
    Get_ReferenceTableData_By_TableIDDataID: TWordField;
    Get_ReferenceTableData_By_TableIDDataTitle: TWideStringField;
    Tables: TADOTable;
    TablesTableId: TWordField;
    TablesTableName: TWideStringField;
    TablesDescription: TWideStringField;
    Subject: TADOTable;
    SubjectSubjectID: TAutoIncField;
    SubjectSubjectTitle: TWideStringField;
    SubjectIsActive: TBooleanField;
    Dsubject: TDataSource;
    UserSettingsUserID: TIntegerField;
    UserSettingsVariableId: TIntegerField;
    UserSettingsValue: TWideStringField;
    Get_LetterData_by_LetterDataID: TADOStoredProc;
    Get_LetterData_by_LetterDataIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterDataIDImage: TBlobField;
    Get_LetterData_by_LetterID: TADOStoredProc;
    Get_LetterData_by_LetterIDLetterDataID: TAutoIncField;
    Get_LetterData_by_LetterIDdescription: TWideStringField;
    Get_LetterData_by_LetterIDExt: TStringField;
    Get_LetterData_by_LetterIDExtentionTitle: TWideStringField;
    Get_LetterData_by_LetterIDExtention: TWordField;
    Get_LetterData_by_LetterIDletterid: TIntegerField;
    Extention: TADOTable;
    ExtentionExtentionID: TAutoIncField;
    ExtentionExtentionTitle: TWideStringField;
    ExtentionExtention: TStringField;
    ExtentionIsSystem: TBooleanField;
    DExtention: TDataSource;
    FollowUpType: TADOTable;
    DoneStatus: TADOTable;
    SecretariatsArchiveCenterID: TIntegerField;
    Select_FollowUP_By_Date: TADOStoredProc;
    DSelect_FollowUP_By_Date: TDataSource;
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
    ActionType: TADOTable;
    Get_LetterAction_By_LetterID: TADOStoredProc;
    Get_LetterAction_By_LetterIDLetterID: TAutoIncField;
    Get_LetterAction_By_LetterIDLatestActionTypeID: TWordField;
    Get_LetterAction_By_LetterIDLatestActionReason: TWideStringField;
    Get_LetterAction_By_LetterIDActionTypeTitle: TWideStringField;
    DGet_LetterAction_By_LetterID: TDataSource;
    UsersBeginActiveDate: TStringField;
    UsersEndActiveDate: TStringField;
    Sp_InboxActionTypeTitle: TWideStringField;
    Select_ParaphTemplate: TADOStoredProc;
    DSELECT_ParaphTemplate: TDataSource;
    Select_ParaphTemplateParaphTemplateID: TAutoIncField;
    Select_ParaphTemplateUserID: TIntegerField;
    Select_ParaphTemplateOrderID: TWordField;
    Select_ParaphTemplateTitle: TWideStringField;
    Select_ParaphTemplateParaph: TWideStringField;
    Select_AlternativeInfo_ByUserID: TADOStoredProc;
    DSelect_AlternativeInfo_ByUserID: TDataSource;
    Select_AlternativeInfo_ByUserIDId: TAutoIncField;
    Select_AlternativeInfo_ByUserIDAlternativeUserID: TIntegerField;
    Select_AlternativeInfo_ByUserIDAlternativebeginDate: TStringField;
    Select_AlternativeInfo_ByUserIDAlternativeEndDate: TStringField;
    Select_AlternativeInfo_ByUserIDAlternativeUserTitle: TWideStringField;
    Select_UserOrgid: TADOStoredProc;
    DSelect_UserOrgid: TDataSource;
    Sp_InboxLetterID: TAutoIncField;
    Sp_InboxIndicatorID: TIntegerField;
    Sp_InboxMYear: TWordField;
    Sp_InboxSecretariatID: TWordField;
    Sp_InboxClassificationID: TWordField;
    Sp_InboxUrgencyID: TSmallintField;
    Sp_InboxReceiveTypeID: TWordField;
    Sp_InboxUserID: TIntegerField;
    Sp_InboxOrgID: TIntegerField;
    Sp_InboxParentId: TSmallintField;
    Sp_InboxProceeded: TBooleanField;
    Sp_Inboxrecommiteid: TAutoIncField;
    Sp_Inboxid: TSmallintField;
    Sp_InboxIsCopy: TBooleanField;
    Sp_Inboxhas_Page: TBooleanField;
    Sp_Inboxhas_WordPage: TBooleanField;
    Sp_Inboxhas_file: TBooleanField;
    Sp_InboxActionTypeID: TWordField;
    Sp_Inboxtoorgid: TIntegerField;
    Sp_Inboxfromorgid: TIntegerField;
    Sp_Inboxfinalized: TBooleanField;
    Select_FieldAccess_by_TableID: TADOStoredProc;
    Select_FieldAccess_by_TableIDFieldAccessID: TAutoIncField;
    Select_FieldAccess_by_TableIDFieldID: TIntegerField;
    Select_FieldAccess_by_TableIDUserID: TIntegerField;
    Select_FieldAccess_by_TableIDAccessTypeID: TWordField;
    DSelect_FieldAccess_by_TableID: TDataSource;
    Get_UserTable: TADOStoredProc;
    Get_UserTableTableId: TWordField;
    Get_UserTableTableName: TWideStringField;
    Get_UserTableDescription: TWideStringField;
    Get_UserTableTableType: TWordField;
    Get_UserTableTableCode: TStringField;
    Get_UserTableUserField1: TWideStringField;
    Get_UserTableUserField2: TWideStringField;
    Select_UserSign: TADOStoredProc;
    Select_UserSignUserID: TIntegerField;
    Select_UserSignUserSign: TBlobField;
    DSelect_UserSign: TDataSource;
    Sp_Inboxsentletterid: TIntegerField;
    DFromOrganizations: TDataSource;
    Sp_InboxSignerID: TWideStringField;
    Sp_InboxtemplateID: TIntegerField;
    Sp_InboxheaderID: TIntegerField;
    Sp_Inboxfromstaffer: TWideStringField;
    Sp_InboxsendStatusID: TWordField;
    Sp_InboxLastUpdate: TDateTimeField;
    Sp_InboxUserTableID: TIntegerField;
    Sp_InboxUserRecomCount: TIntegerField;
    Sp_InboxIsAnswer: TBooleanField;
    Sp_InboxISFollowup: TBooleanField;
    Sp_InboxIsAnswerTitle: TStringField;
    QrUserSign: TADOQuery;
    QrUserSignUserID: TIntegerField;
    QrUserSignUserSign: TBlobField;
    QrUserSignTitle: TWideStringField;
    QrUserSignUserName: TWideStringField;
    QrUserSignPassword: TWideStringField;
    ActionTypeActionTypeID: TWordField;
    ActionTypeActionTypeTitle: TWideStringField;
    DataSource1: TDataSource;
    UsersEmail: TWideStringField;
    ActionsAccessActionID: TWideStringField;
    ProcLetterIsPish: TADOStoredProc;
    Sp_Inboxsubjectid: TIntegerField;
    Sp_InboxSubjectTitle: TStringField;
    GetfieldValueByLetterID: TADOStoredProc;
    DGetfieldValueByLetterID: TDataSource;
    Timer_WordMessage: TTimer;
    QDeleteJaneshin: TADOQuery;
    qGetID: TADOQuery;
    QOrganization: TADOQuery;
    QOrganizationID: TAutoIncField;
    QOrganizationTitle: TWideStringField;
    QLetterTypes: TADOQuery;
    QLetterTypesID: TIntegerField;
    QLetterTypesTitle: TWideStringField;
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
    qRepMohlateEghdamlkLetterType: TStringField;
    qRepMohlateEghdamlkfromorganization: TStringField;
    qRepMohlateEghdamlktoorganization: TStringField;
    qRepMohlateEghdamMemo: TWideStringField;
    YDabir_Select_List_Customers: TADOStoredProc;
    YDabir_Select_List_CustomersCustomerID: TStringField;
    YDabir_Select_List_CustomersPersonTitle: TWideStringField;
    YDabir_Select_FollowUP_By_CustomerID: TADOStoredProc;
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
    YDabir_Select_customer_By_CustomerID: TADOStoredProc;
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
    YDabir_Select_customer_By_CustomerIDStateID: TWordField;
    YDabir_Select_customer_By_CustomerIDInnerPhone: TWideStringField;
    YDabir_Select_customer_By_CustomerIDProducts: TWideStringField;
    YDabir_Select_Contract_By_CustomerID: TADOStoredProc;
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
    YDabir_Select_List_CustomersCustomerNO: TStringField;
    qRepMohlateEghdamSecTitle: TWideStringField;
    qIS_Nameh_In_Cartable: TADOQuery;
    qIS_Nameh_In_CartableRecommiteID: TAutoIncField;
    qIS_Nameh_In_Cartable_Before: TADOQuery;
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
    Select_LetterReCommiteUniqueID: TLargeintField;
    Select_LetterReCommiteIsAnswer: TBooleanField;
    Select_LetterReCommiteISFollowup: TBooleanField;
    Select_LetterReCommiteFinallized: TBooleanField;
    Get_RecommitePayvast_by_RecommitePayvastID: TADOStoredProc;
    Get_RecommitePayvast_by_RecommitePayvastIDID: TAutoIncField;
    Get_RecommitePayvast_by_RecommitePayvastIDImage: TBlobField;
    Get_RecommitePayvast_by_RecommiteID: TADOStoredProc;
    Get_RecommitePayvast_by_RecommiteIDID: TAutoIncField;
    Get_RecommitePayvast_by_RecommiteIDdescription: TWideStringField;
    Get_RecommitePayvast_by_RecommiteIDExt: TStringField;
    Get_RecommitePayvast_by_RecommiteIDExtentionTitle: TStringField;
    Get_RecommitePayvast_by_RecommiteIDExtention: TWordField;
    Get_RecommitePayvast_by_RecommiteIDRecommiteID: TIntegerField;
    Get_RecommitePayvast_by_RecommiteIDLetterID: TIntegerField;
    Select_LetterReCommiteIsCopy_In_Dabir: TBooleanField;
    Select_LetterReCommiteSentToDabir: TBooleanField;
    Sp_InboxMyTmp_ID: TAutoIncField;
    Sp_InboxIsCopy_In_Dabir: TBooleanField;
    Sp_InboxSentToDabir: TBooleanField;
    UsersAlternativeUserID: TIntegerField;
    UsersAlternativeEndDate: TStringField;
    UsersAlternativebeginDate: TStringField;
    UsersHasSecureLetterAccess: TBooleanField;
    UsersSecondOrgID: TIntegerField;
    UserseCartableGridInfo: TStringField;
    UserseCartableTheme: TStringField;
    UsersActive: TBooleanField;
    UsersCanViewSecureRecommite: TBooleanField;
    UsersGroupID: TIntegerField;
    Select_LetterReCommiteHasPayvast: TBooleanField;
    Select_LetterReCommiteErja_Or_Answer_Date: TStringField;
    Select_LetterReCommiteIsSecure: TBooleanField;
    Select_LetterReCommiteGroupFlag: TIntegerField;
    spGetInnerNo: TADOStoredProc;
    spGetInnerNoLetterID: TAutoIncField;
    spGetInnerNoInnerNo: TWideStringField;
    get_ArchiveFolder_byUserID_and_Letterid: TADOStoredProc;
    get_ArchiveFolder_byUserID_and_LetteridPlace: TWideStringField;
    get_ArchiveFolder_byUserID_and_LetteridTitle: TWideStringField;
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
    QWorkSheetUsers: TADOQuery;
    QWorkSheetUsersID: TAutoIncField;
    QWorkSheetUsersTitle: TWideStringField;
    QWorkSheetVisitsUserResponse: TADOQuery;
    QWorkSheetVisitsUserResponseID: TAutoIncField;
    QWorkSheetVisitsUserResponseMean: TStringField;
    QWorkSheetVisitsUserResponseCode: TIntegerField;
    QWorkSheetTasksWithAlarm: TADOQuery;
    QWorkSheetTasksWithAlarmID: TAutoIncField;
    QWorkSheetTasksWithAlarmMean: TStringField;
    QWorkSheetTasksWithAlarmCode: TIntegerField;
    QWorkSheetTasksUserResponse: TADOQuery;
    QWorkSheetTasksUserResponseID: TAutoIncField;
    QWorkSheetTasksUserResponseMean: TStringField;
    QWorkSheetTasksUserResponseCode: TIntegerField;
    QWorkSheetTasksStatus: TADOQuery;
    QWorkSheetTasksStatusID: TAutoIncField;
    QWorkSheetTasksStatusMean: TStringField;
    QWorkSheetTasksStatusCode: TIntegerField;
    QWorkSheetSessionsUserResponse: TADOQuery;
    QWorkSheetSessionsUserResponseID: TAutoIncField;
    QWorkSheetSessionsUserResponseMean: TStringField;
    QWorkSheetSessionsUserResponseCode: TIntegerField;
    QWorkSheetSessionsMustCome: TADOQuery;
    QWorkSheetSessionsMustComeID: TAutoIncField;
    QWorkSheetSessionsMustComeMean: TStringField;
    QWorkSheetSessionsMustComeCode: TIntegerField;
    QWorkSheetBaseStatus: TADOQuery;
    QWorkSheetBaseStatusID: TAutoIncField;
    QWorkSheetBaseStatusMean: TStringField;
    QWorkSheetBaseStatusCode: TIntegerField;
    QWorkSheetBaseImportantLevel: TADOQuery;
    QWorkSheetBaseImportantLevelID: TAutoIncField;
    QWorkSheetBaseImportantLevelMean: TStringField;
    QWorkSheetBaseImportantLevelCode: TIntegerField;
    QWorkSheetBaseType: TADOQuery;
    QWorkSheetBaseTypeID: TAutoIncField;
    QWorkSheetBaseTypeMean: TStringField;
    QWorkSheetBaseTypeCode: TIntegerField;
    QCheckTadakhol: TADOQuery;
    QGetSemat: TADOQuery;
    QGetSematTitle: TWideStringField;
    Select_UserOrgidOrgid: TIntegerField;
    Select_UserOrgidComment: TWideStringField;
    Sp_InboxLetter_Type: TIntegerField;
    Sp_Inboxletterformat: TIntegerField;
    Sp_InboxIncommingNO: TStringField;
    Sp_InboxIncommingdate: TStringField;
    Sp_InboxMemo: TStringField;
    Sp_InboxTostaffer: TStringField;
    Sp_InboxAttachTitle: TStringField;
    Sp_InboxNumberOfAttachPages: TIntegerField;
    Sp_InboxNumberOfPage: TIntegerField;
    Sp_InboxRetroactionNo: TStringField;
    Sp_InboxUserMemo: TStringField;
    Sp_InboxRegistrationDate: TStringField;
    Sp_InboxFollowLetterNo: TStringField;
    Sp_InboxLetterRecommites: TStringField;
    Sp_InboxCenterNo: TStringField;
    Sp_InboxCenterDate: TStringField;
    Sp_InboxregistrationTime: TStringField;
    Sp_InboxInnerNo: TStringField;
    Sp_InboxParaph: TStringField;
    Sp_InboxRecommiteDate: TStringField;
    Sp_InboxProceedDate: TStringField;
    Sp_InboxReType: TSmallintField;
    Sp_InboxRecommitTypeTitle: TStringField;
    Sp_InboxIsInner: TIntegerField;
    Sp_InboxRecommiterTitle: TStringField;
    Sp_Inboxsendertitle: TStringField;
    Sp_InboxStaffMemo: TStringField;
    Sp_InboxYincommingno: TStringField;
    Sp_InboxPreCode: TStringField;
    Sp_InboxDeadLineDays: TIntegerField;
    Sp_InboxViewDate: TStringField;
    Sp_InboxDeadLineDate: TStringField;
    Sp_InboxChildParaph: TStringField;
    Sp_InboxChildOrg: TStringField;
    Sp_InboxErja_Or_Answer_Date: TStringField;
    Sp_InboxColorFlag: TStringField;
    Sp_InboxIsSecure: TBooleanField;
    Sp_InboxMemoAndRecomUserCount: TStringField;
    UsersCanRecommiteWithOtherOrg: TBooleanField;
    Get_LetterData_by_LetterIDVersionDate: TStringField;
    Get_LetterData_by_LetterIDVersionNo: TStringField;
    Get_LetterData_by_LetterDataIDVersionDate: TStringField;
    Get_LetterData_by_LetterDataIDVersionNo: TStringField;
    Get_RecommitePayvast_by_RecommiteIDVersionDate: TStringField;
    Get_RecommitePayvast_by_RecommiteIDVersionNo: TStringField;
    Get_RecommitePayvast_by_RecommitePayvastIDVersionDate: TStringField;
    Get_RecommitePayvast_by_RecommitePayvastIDVersionNo: TStringField;
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
    Insert_LetterData: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    WideStringField1: TWideStringField;
    Insert_File: TADOQuery;
    SelectPDF: TADOQuery;
    ADOStoredProc1: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    IntegerField2: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    WideStringField2: TWideStringField;
    SelectPDFImage: TBlobField;
    qLetterSign: TADOQuery;
    quLetterSigners: TADOQuery;
    quLetterSignersUserID: TIntegerField;
    WordApplication2: TWordApplication;
    Sp_InboxHas_Sign: TBooleanField;
    Sp_InboxSecretariatTitle: TStringField;
    ArchiveConnection: TADOConnection;
    Get_LetterData_by_LetterIDArchiveID: TIntegerField;
    Get_LetterData_by_LetterIDisDocument: TBooleanField;
    qryArchiveAttachment: TADOQuery;
    qryArchiveAttachmentIMAGE: TBlobField;
    qryArchiveAttachmentLetterDataID: TAutoIncField;
    qryArchiveAttachmentextention: TStringField;
    Sp_InboxinnerNo2: TStringField;
    Get_All_Letter: TADOStoredProc;
    Get_All_Letterletterformat: TIntegerField;
    Get_LetterWordFileDescription: TStringField;
    Get_LetterWordFileLastUpdate: TTntDateTimeField;
    Get_All_LetterData: TADOStoredProc;
    Get_All_LetterDataletterid: TIntegerField;
    Get_All_LetterDataLetterDataID: TAutoIncField;
    Get_All_LetterDataExtention: TStringField;
    Get_All_LetterDataDESCRIPTION: TWideStringField;
    Get_All_LetterDataImage: TBlobField;
    spShowRouneveshtRecommiteTime: TStringField;
    Sp_InboxRecommiteTime: TStringField;
    Sp_InboxHasLetterForms: TBooleanField;
    adoFollow_Retroaction_Letter: TADODataSet;
    adoFollow_Retroaction_LetterFR_ID: TAutoIncField;
    adoFollow_Retroaction_LetterLetterID: TIntegerField;
    adoFollow_Retroaction_LetterFR_LetterID: TIntegerField;
    adoFollow_Retroaction_LetterFRIndicatorID: TIntegerField;
    adoFollow_Retroaction_LetterFRKindTitle: TStringField;
    adoFollow_Retroaction_LetterFR_Kind: TIntegerField;
    adoFollow_Retroaction_LetterFRLetterNO: TStringField;
    frxReport1: TfrxReport;
    Sp_Inboxanjam_shod_status: TIntegerField;
    Usersiscartableuser: TBooleanField;
    QryActiveUser: TADOQuery;
    QryActiveUserActive: TBooleanField;
    QryActiveUserIsSecretariantStaffer: TBooleanField;
    QryActiveUseriscartableuser: TBooleanField;
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
    FromOrganizationsID: TAutoIncField;
    FromOrganizationsCode: TWideStringField;
    FromOrganizationsName_Semat: TWideStringField;
    ExcelApplication: TExcelApplication;
    ExcelWorksheet: TExcelWorksheet;
    Timer_SaveExcel: TTimer;
    Timer1: TTimer;
    Get_LetterData_by_LetterDataIDIsTemplate: TBooleanField;
    Get_LetterData_by_LetterIDIsTemplate: TBooleanField;
    Get_LetterWordFileFileName: TStringField;
    Get_LetterWordFileIsTemplate: TBooleanField;
    Get_LetterWordFileFileType: TStringField;
    LetterImages_New: TImageList;
    ImageList_MainNew: TImageList;
    qtemp: TADOQuery;
    qryGetIdFromOrganizations: TADOQuery;
    Get_LetterData_by_LetterIDSignerID: TStringField;

    function  GetActionAccess(ActionTag : String;FormTag:word):boolean;
    procedure GetUserSettings;
    procedure Connect;
    Function GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;Follow_Retroaction:widestring;Follow_retroactionYear : integer;var LetterID: integer;var ResultReceiveMode:boolean):boolean; // Amin 1391/12/05
    Function GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
    function MemoCondition(MemoText:string;FieldName:String):String;
    function IsNo(s:string;var No:string):boolean;
    function isIndicator(s:string;var FromIndicator,ToIndicator:word):boolean;
    function NewToOrganization(Title,Responsible:String):integer;
    procedure SetSecID(value:byte);
    procedure DataModuleCreate(Sender: TObject);
    Procedure SetCurrentMYear(value:Integer);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure UserSecsAfterInsert(DataSet: TDataSet);
    procedure UsersBeforeInsert(DataSet: TDataSet);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    procedure Timer_SaveWordTimer(Sender: TObject);
    procedure OpenWordFile(Filename:string;Readonly:boolean);
    procedure OpenExcelFile(Filename:string;Readonly:boolean);
    Procedure ExecSelect_LetterReCommite(letterID:integer;TypeID: byte);
    procedure InsertTextIntoLetter(w:twordapplication;LetterID:integer);
    // function ExecGet_LetterWordFile(Letterid:integer;ReadOnly:boolean;aOpenFile:Boolean=True):boolean; // Amin 1391/07/15
    function  Y_InputQuery (const ACaption, Adefault: widestring; var Value: string; FormCaption : string): Boolean;
    procedure Select_LetterReCommiteBeforePost(DataSet: TDataSet);
    procedure UserShortCutCalcFields(DataSet: TDataSet);
    procedure Refresh_ReferenceTableData(TableID:integer);
    Procedure Exec_Select_FollowUP_By_Date(BDate:string;Edate:string;DonStatusID:integer);
    Procedure Open_AlternativeInfo_ByUserID;
    Procedure Open_UserOrgid;
    function GetUserTableID:integer;
    procedure Sp_InboxCalcFields(DataSet: TDataSet);
    Function PishLetterID(LetterID : Integer) : Integer;
    Procedure Open_GetfieldValueByLetterID(letterId:integer;FormOrder:integer);
    Procedure ExportLetterField(letterId:integer;FormOrder:integer;ExportType:byte);
    procedure Timer_WordMessageTimer(Sender: TObject);
    procedure Sp_InboxAfterScroll(DataSet: TDataSet);
    procedure WordApplication2DocumentOpen(ASender: TObject;
      const Doc: _Document);
    procedure WordApplicationDocumentOpen(ASender: TObject;
      const Doc: _Document);
    procedure Select_LetterReCommiteAfterPost(DataSet: TDataSet);
    procedure Select_LetterReCommiteAfterOpen(DataSet: TDataSet);
    procedure Select_LetterReCommiteAfterScroll(DataSet: TDataSet);
    procedure adoFollow_Retroaction_LetterCalcFields(DataSet: TDataSet);
    procedure ExcelApplicationWorkbookBeforeClose(ASender: TObject;
      const Wb: _Workbook; var Cancel: WordBool);
    procedure Timer_SaveExcelTimer(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    function processExists(exeFileName: string): Boolean;
    function KillTask(ExeFileName: string): Integer;

  private
    FCurrentMYear:Integer;
    FSecId:byte;
    ActDocName : String;
    FUserID: Integer;
    procedure SetUserID(const Value: Integer);
    procedure OpenWorkSheetTablesForLoukup;


    //ARM LOCK
    //----------------------------------------------
    function ByteArrayToVariant( const A: array of byte ): Variant;
    //----------------------------------------------

    function IsTinyOk:Boolean;
    function GetLockIP:string;
  public
    _MyUserID:Integer;
    ReceiveSelect,
    SentSelect,
    BothSelect:String;
    ChartorderbyTitle,
    DefaultProceed,

    DefaultIsCopy,
    DefaultInnerCopy,
    ReciveIsCopy :boolean;

    DefaultOrgPreCode,
    SearchStringResult:string;
    SearchResult:integer;
    {Ranjbar 89.09.28 ID=212}
    //MaxLetterToShow :string;
    MaxLetterInKartable :Integer;
    //---
    DeadlineForRecommite:word;
    DefaultSClassificationID:word;
    DefaultSUrgencyID    :word;
    DefaultSNumberOfAttachPages:word;
    DefaultSNumberOfPage :word;
    DefaultSReceiveTypeID:word;
    DefaultSFromOrgId  ,
    DefualtSSigner : Integer;
    DefaultRClassificationID,
    DefaultRUrgencyID    ,
    DefaultRNumberOfAttachPages,
    DefaultRFromOrgId  ,
    DefaultRNumberOfPage ,
    DefaultRReceiveTypeID:word;
    InsertLog,
    ShowOriginalErrorMessage :boolean;

    RelatedTableName,RelatedIDField,RelatedDisplayField:string;
    RootFromOrg       :Word;
    FocusedColor:Tcolor;
    UniqeIndicator:boolean;
    EqualAnswerIndicator:boolean;
    version,ArchiveList:boolean;
    SubjectOrder:byte;
    ArchiveOrgid
      :integer;
    InitialReceivedMode,
    InitialArchiveMode,
    InitialDisplyMode  :byte;
    UseTemplate,
    ShowFarsiCaption,
    ShowSubjectCodeInTree:boolean;
    BeginIndicator:word;
    Orgname,
    UserMemoDisplay:string;

    FullTextSearch:boolean;
    ListFromorg:boolean;
    LetterHasArchiveCopy:boolean;
    _indicatorID:integer;
    _letterformat:byte;
    _LetterID:integer;
    HasJpg:boolean;
    keytext:string;
    MemoFont : TFont;
    ISMessageShow : Boolean;
    procedure RefreshTemplate;

    Function  FileName(indicatorID:integer;Myear:Integer):string;
    function  Cdate(S:string):string;
    property  CurrentMYear :Integer read fCurrentMYear write SetCurrentMYear;
    Property  SecID : byte read FSecId write SetSecID;

    Function  SearchSt:String;
    function  Search(Y:TYwhereEdit):integer;
    procedure SaveTemplateToFile(ty : String = 'w');
    procedure SaveHeaderToFile;
    procedure Replace(var main:widestring;old,new:widestring);
    Procedure AddUserSignToWord(aUserID:integer; FileName : string);
    {Ranjbar}
    function LastIndicatorID(Letter_type:integer;LetterFormat:byte;SecretariatID:integer):integer;

    function GetValueFromRegistry(RootKeyPath:String;KeyName:String):String;
    function Check_CRM_Exists:Boolean;
    function ReplaceCharacter(s: widestring; old, new: Char): widestring;

    function IS_Nameh_In_Cartable(LetterID:Integer;UserID:Integer):Boolean;


    function WorkSheetCorrectTime(S:String):String;
    function WorkSheetTimeIsValid(S:String):Boolean;
    function WorkSheetTimeToInt(S:String):Integer;
    function CheckTadakhol(Year:Integer;Month:String;Day:Integer;BeginTimeToMinute:Integer;EndTimeToMinute:Integer;UserID:Integer; WorkSheetBaseID:Integer):Boolean;
    function GetMonthShamsiName(ind:Integer):String;
    function GetMonthShamsiIndex(S:String):string;
    function GetSemat(ActiveOrgID:Integer):String;
    procedure OpenqSelectedColor(LetterID: Integer);
    property UserID:Integer read FUserID write SetUserID;
    function ExecGet_LetterWordFile(LetterID:integer;readonly:boolean;aOpenFile:Boolean=True;ext:Integer=3):boolean; // Amin 1391/07/15
    procedure LoadPDFToDB(pdfName: string; letterID: integer);
    procedure LockWordFile(letterID: integer);
    function GetPDFExtinationID():integer;
    procedure ShowSigners(LID: integer; ShowFool: boolean);
    function GetArchiveSetting(VariableID:Integer):String;
    procedure SetWordOpen(LetterID ,UserID:integer);
    function OpendByAnotherUser(LetterID:integer):integer;
    procedure SetWordClosed(LetterID, UserID: integer);
    function StringToPWide(  sStr: string;  var iNewSize: integer  ): PWideChar;
    function replacePWC(input: Pwidechar): Pwidechar;
    procedure UpdateFinalized(LetterID, RecommID: Integer);
    function getIdFromOrganizations(strTitle : String):Integer;
  end;

Var
   Dm: TDm;
   _UserID:integer;
   _AccessID:byte;
   _DefaultSec:integer;
   _UserName:String;
   _UserFolder:String;
   _UserFromOrgID:Integer;
   _UserSecondOrgID:Integer;
   _ActiveSemat:Integer;
   _TermCode:string[3];
   _CanRecommiteWithOtherOrg : boolean; // Amin 1391/12/07
    _paraph : string;
    _Dont_save_Word : boolean;
   //����� ���� ���� �� ��� ���� �������
   _ResultOrgID:integer;
   _ResultOrgTitle:WideString;
   _ResultOrgCode:WideString;
   _ResultOrgRespon:WideString;
   //---
   _Has_Excel_Template : Boolean;
   _AllowToEditWordFiles:boolean; // Amin 1391/07/15
   _ResultFolderID:integer;
   _UserLoginLogoutID:integer;
   _SelectedRecommitesID:TStrings;
   _SelectedLettersID:TStrings;
   _SelectedRecommiteID:integer;
   _PasswordMustChange:boolean;
   _Word_Is_Opened : boolean;
   _Excel_Is_Opened : boolean;
   _CanViewSecureRecommite, _CanAttachColor , _CanViewAllAttachPages : Boolean;
   _OpenedWordFile:string;
   _WordFileName:string;
   _ExcelFileName:string;
   _TempPath:string;
   _CanConnectToCRM : boolean;
   _DatabaseName:string;
   _CRMDatabaseName:String;
   _ArchiveCenterID: INTEGER;
   _GroupID:Integer;
   _eyeganeh:string;
   _yeganeh:string;
   _UserEmail,_Today :String;
   _Year:Integer;
   _SoftTitle :string;
   {Ranjbar}
   /////////////////////////////////////
   _ConnectedToArchive : boolean;
   ArchiveServerName,ArchiveDBName : string;
   _Arch_Documnt_Caption : string;
   _Arch_Subject_Caption : string;
   _Arch_Summery_Caption : string;
   _Arch_UsrFld1_Caption : string;
   _Arch_UsrFld2_Caption : string;
   _Arch_UsrFld3_Caption : string;
   _Can_View_Classified_Archive_Docs : boolean;
   ////////////////////////////////////////
   _Arch_UserID : integer;
   DisableTimer : boolean;
   _ApplicationPath :String;
   _IsServer : Boolean;
   _OpendWordLetterID : integer;
   _isSigning : boolean;
   Project : string = 'Cartable'; // Amin 1391/07/15
   //---
   Global_LetterID : integer;
   {
   _Color1   : TColor = $00D6E9BC ;// $00708949 ;
   _Color2   : TColor = $00729E36 ;
   _Color3   : TColor = $00587430 ;
   _Color4   : TColor = $00485931 ;
   _Color5   : TColor = clWindow  ;
                                   }
{
   _Color1   : TColor = $00B1D0D1 ;
   _Color2   : TColor = $00BED2D3 ;
   _Color3   : TColor = $0073ADB0 ;
   _Color4   : TColor = $00005D6F ;
   _Color5   : TColor = clCream  ;
 }
   _Color1   : TColor = $00FFF4F4 ;
   _Color2   : TColor = $00FFD9D9 ;
   _Color3   : TColor = clWhite ;
   _Color4   : TColor = $00FFCACA ;
   _Color5   : TColor =  $00F7F7F7 ;

      
   _MainFont : string = 'Tahoma';
   _ColorSetting : Integer;


    //ARM LOCK
    //----------------------------------------------
//   _ARM_CoName, _ARM_IPServer, _ARM_AUSKey, _ARM_ReadKey, _ARM_WriteKey, _ARM_SafeKey1, _ARM_SafeKey2 : String;
//   _ARM_DongleCore_AESClass : AESClass;
    //----------------------------------------------

Const
   _Kartable = True;
   _Showlogo = True;
   _SoftLastUpdate = '1403/09/11';//'1396/06/22';
   _SoftVersion = '13.0.0.0';//'7.0.0.2';
    LCID: DWORD = LOCALE_SYSTEM_DEFAULT;

{$R *.dfm}

implementation

uses yShamsiDate, LogOn, Settingsu, UMain,   UsearchStno, USearchTitle, YeganehDemo,
     businessLayer, YInputQuery, BaseUnit, InputPassU, UchangePassword,
     Inbox, LetterSigners;

type code=^integer;
     Letter_Format =(Letters,Drafts,deleted);

//ARM LOCK
//----------------------------------------------
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
//----------------------------------------------

function TDm.SearchSt:String;
begin
   SearchStno:=TSearchStno.Create(Application);
   with SearchStno do
   begin
      ShowModal;
      Result:=SearchStringResult;
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

function TDm.Search(Y:TYwhereEdit):integer;
begin
   SearchAdoDataSet:=TSearchAdoDataSet.Create(Application);
   with SearchAdoDataSet do
   begin
      SearchDataSet := false;
      TableName := Y.ListTable;
      CodeField := y.CodeField;
      TitleField := y.TitleField;
      SearchF.Connection := y.Connection;
      ShowModal;
      Result := SearchResult;
   end;
end;

procedure TDm.SetSecID (value:byte);
begin
   FSecID:=value;
   dm.Secretariats.Locate('secid',SecID,[]);
   MainForm.RefreshQuery;
   _ArchiveCenterID:=-1;// ���� ������� ���� ����� ���� � ���� ��� ���� ������� �ј� ������ ���� �����
end;

procedure TDm.Connect;
begin
   Fconnect:=TFconnect.Create(Application);
end;

Function TDm.GetMemoFollow(ReceiveMode:boolean;Follow,Retro:String):string;
var LetterID : integer;
     rr :Boolean;
begin
   Result:='';

   if (follow<>'') and GetFollowAndRetRoAction(True,ReceiveMode,Follow,_Year, LetterID,rr) then
     Result:=Exec_get_LetterMemo_ByID(LetterID)
   else
   if (Retro<>'') and GetFollowAndRetRoAction(False,ReceiveMode,Retro,_Year, Letterid,rr) then
     Result:=Exec_get_LetterMemo_ByID(LetterID)
end;

function TDm.GetActionAccess(ActionTag : string;FormTag:word):boolean;
begin
  if ActionsAccess.Locate('ActionID;FormTag',VarArrayOf([ActionTag,FormTag]),[]) then
     Result := ActionsAccessHasAccess.AsBoolean
   else
     Result := true;
end;

Function TDm.GetFollowAndRetRoAction(IsFollow:boolean;ReceiveMode:boolean;
         Follow_Retroaction:widestring; Follow_RetroactionYear : integer;var LetterID:integer;var ResultReceiveMode:boolean):boolean; // Amin 1391/12/05
begin
   Result:=False;

   Follow_Retroaction:=yeganehtrim(Follow_Retroaction);

   if Follow_Retroaction='' then
      Exit;

   ResultReceiveMode:=not(ReceiveMode xor isFollow);
   if ResultReceiveMode then
   begin
     Letterid:=Exec_get_LetterID_ByInCommingNo(Follow_Retroaction,1,Follow_RetroactionYear,SecID);
     Result:=LetterID>0;
   end
      else
      begin
         try
            LetterID:=Exec_get_LetterID_ByIndicatorid(StrToInt(Follow_Retroaction),2,1,Follow_RetroactionYear,SecID);
            Result:=LetterID>0;
         except
            Result:=false;
         end;
      end;
end;

procedure TDm.GetUserSettings;
begin
   FocusedColor := GetUserSetting('FocusedColor');
   ShowOriginalErrorMessage := GetUserSetting('ShowOriginalErrorMessage');
   RootFromOrg := GetUserSetting('RootFromOrg');

   SubjectOrder := GetUserSetting('SubjectOrder');
   ArchiveList := GetUserSetting('ArchiveList');

   ShowSubjectCodeInTree := GetUserSetting('ShowSubjectCodeInTree');

   DeadlineForRecommite := GetSystemSetting('DeadlineForRecommite');

   InitialReceivedMode := GetUserSetting('InitialReceivedMode');
   InitialArchiveMode := GetUserSetting('InitialArchiveMode');
   InitialDisplyMode := GetUserSetting('InitialDisplyMode');
   DefaultProceed := GetUserSetting('DefaultProceed');

   DefaultIsCopy := GetUserSetting('DefaultisCopy'); //�� �������� ����� ����� ���� ����� ��� �������
   DefaultInnerCopy := GetUserSetting('DefaultInnerCopy');
   ReciveIsCopy := GetUserSetting('ReciveIsCopy');//�� ������� �������� ���� ��� ����� �� ���� ��� ������� ����� ���� .

   DefaultSClassificationID := GetUserSetting('DefaultSClassificationID');
   DefaultSUrgencyID := GetUserSetting('DefaultSUrgencyID');
   DefaultSNumberOfAttachPages := GetUserSetting('DefaultSNumberOfAttachPages');
   DefaultSNumberOfPage := GetUserSetting('DefaultSNumberOfPage');
   DefaultSReceiveTypeID := GetUserSetting('DefaultSReceiveTypeID');
   DefaultSFromOrgId := GetUserSetting('DefaultSFromOrgId');

   DefualtSSigner := GetUserSetting('DefualtSSigner');
   DefaultRClassificationID := GetUserSetting('DefaultRClassificationID');
   DefaultRUrgencyID := GetUserSetting('DefaultRUrgencyID');
   DefaultRNumberOfAttachPages := GetUserSetting('DefaultRNumberOfAttachPages');
   DefaultRNumberOfPage := GetUserSetting('DefaultRNumberOfPage');
   DefaultRReceiveTypeID := GetUserSetting('DefaultRReceiveTypeID');
   DefaultRFromOrgId := GetUserSetting('DefaultRFromOrgId');
   ListFromorg := GetUserSetting('ListFromorg');
   ChartorderbyTitle := GetUserSetting('ChartorderbyTitle');

   HasJpg := GetSystemSetting('HasJpg');

   {Ranjbar 89.09.28 ID=212}
   //MaxLetterToShow := GetSystemSetting('MaxLetterToShow');
   MaxLetterInKartable := GetUserSetting('MaxLetterInKartable');
   if MaxLetterInKartable = 0 then
      MaxLetterInKartable := 100;
   //---

   BeginIndicator := GetSystemSetting('BeginIndicator');
   EqualAnswerIndicator := GetSystemSetting('EqualAnswerIndicator');
   UniqeIndicator := GetSystemSetting('UniqeIndicator');
   Version := GetSystemSetting('Version');

   UserMemoDisplay := Trim(GetSystemSetting('UserMemoDisplay'));
   Orgname := GetSystemSetting('OrgName');
   FullTextSearch := GetSystemSetting('FullTextSearch');
   LetterHasArchiveCopy := GetSystemSetting('LetterHasArchiveCopy');

   RelatedTableName := GetSystemSetting('RelatedTableName');
   RelatedDisplayField := GetSystemSetting('RelatedDisplayField');
   RelatedIDField := GetSystemSetting('RelatedIDField');

   UseTemplate := GetSystemSetting('UseTemplate');
   InsertLog := GetSystemSetting('InsertLog');
   ShowFarsiCaption := GetSystemSetting('ShowFarsiCaption');

   DefaultOrgPreCode := GetSystemSetting('DefaultOrgPreCode');
   TemplateGroup.Open;

   with ActionsAccess do
   begin
      Close;
      Parameters[0].Value := _AccessID;
      Open;
   end;
   Secretariats.Open;
   Subject.Open;
   Open_UserOrgid;
end;

function TDm.isIndicator(s:string;var FromIndicator,ToIndicator:word):boolean;
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

   if Result<>'' then
      result:='('+result+')';
end;

function TDm.NewToOrganization(Title,Responsible:String):integer;
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
    FromOrganizations.Parameters.ParamByName('@FromOrgID').Value := IntToStr(_UserFromOrgID);
    FromOrganizations.Open;
end;


procedure TDm.SetCurrentmYear(value:Integer);
begin
   if Value = FCurrentmYear then
      Exit;
   FCurrentmYear := Value;
   try
      MainForm.RefreshQuery;
   except
   end;
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
  if P < 3 then Exit;
  Result := True;
end;

procedure TDm.DataModuleCreate(Sender: TObject);
var
   d : TDateTime;
   DongleProductCode,dongleErrorCode : integer;

   //ARM LOCK
   //----------------------------------------------
//   ARMClass1  : TARMClass;
   Rand1      : Cardinal;
   OBJ,OBJ1   : OleVariant;
   arrRand    : array[0..15] of Byte;
   Res        : Byte;
   i          : integer;
   //end sanaye

   server_ip_address_4_arm_lock : string;

//   unt:AESClass;

   T : TMsgDlgButtons;

   IP_FRM  : TENTER_IP_ADDRESS_FRM;

   ERR_FRM : TLOCK_ERROR_FRM;
   CHNG_IP_FRM : TENTER_IP_ADDRESS_FRM;

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

  {Ranjbar}
  if (GetThreadLocale<>1065 )then // force locale settings if different
    if SetThreadLocale(1065) then
    begin
      GetFormatSettings; //
    end;

  _Has_Excel_Template := False;

  if Trim(YeganehConnection.ConnectionString) <> '' then
    MBaseForm.MessageShowString('���� ������� ��� : ConnectionString', False);
  //---
   {$IFDEF ADA}
      _yeganeh := '���';
      _eyeganeh := 'Ada';
   {$ELSE}
      _yeganeh := '����';
      _eyeganeh := 'Yeganeh';
   {$ENDIF}

  {Ranjbar 89.08.18 ID=206}
  //_WordFileName := 'YEGANEH_WORD_FILE.DOC';
  _WordFileName := 'YEGANEH_WORD_FILE.DOCX';
  _ExcelFileName := UpperCase(_EYeganeh) + '_Excel_FILE.XLS';
  //---

  _TempPath:=GetTempDirectory;
  _selectedRecommitesID:= TStringList.Create;
  _selectedLettersID   := TStringList.Create;

  yeganeh := TYeganeh.Create(Application);

  Yeganeh.Show;
  Yeganeh.Repaint;
  d:=now;
  Connect;
  Yeganeh.Repaint;
  {Ranjbar}
  _IsServer := ( UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)) );
  //---
  _Today := ShamsiString(Exec_get_NowDate);
  _Year  := strtoint(Copy(_Today,1,4));
  Yeganeh.Repaint;
  if GetSystemSetting('DongleType') = '0' then // Old Dongle
  begin
    DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,106070,_SoftTitle,False,DongleProductCode);
    if (DongleErrorCode > 0) then
    begin
      ShowMessage(DongleErrorMessage(dongleErrorCode));
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

// commented by saeedi 960922
//   if GetSystemSetting('ARM_DongleType') = '0' then
//   begin
//
//   dongleErrorCode:= CheckDongle(YeganehConnection,Servername,_today, 6070,_SoftTitle,False,DongleProductCode);
//   Yeganeh.Repaint;
//   if (dongleErrorCode>0)   then
//   begin
//      ShowMessage(DongleErrorMessage(dongleErrorCode));
//      ExitProcess(0);
//      Application.Terminate;
//      Halt;
//   end;
//
//   end;

  Yeganeh.Repaint;
  //����� ������ ��� �� ��� ����
  Scripts_Run(YeganehConnection , 50,Servername);  //Scripts_Run(YeganehConnection , 'ScriptsNumber');
  Yeganeh.Repaint;

  LoginForm := TLoginForm.Create(Application);
  LoginForm.Label1.Caption := GetSystemSetting('OrgName');

//   if (GetSystemSetting('SW_CODE') <> '1') THEN
//      BEGIN
//      if (GetSystemSetting('SW_CODE') <> '3') then
//      BEGIN
//      ShowMyMessage('�����','����� ����� ��� ��� ������ ���� ����� ��� ����� ��� ����',[mbok],mtInformation);
//      Application.Terminate;
//      END;
//      END;

//   if GetSystemSetting('ARM_DongleType') = '0' then
//   begin
//
//   try
//   DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,106070,_SoftTitle,False,DongleProductCode);
//   if (DongleErrorCode > 0) then
//   begin
//      ShowMessage(DongleErrorMessage(dongleErrorCode));
//      ExitProcess(0);
//      Application.Terminate;
//      Halt;
//   end
//   EXCEPT
//    on E : Exception do
//     begin
//     ShowMessage('������� �� ��� ����� ...' + chr(13) + e.Message);
//     end;
//   END;
//
//   end
//   else
//   if GetSystemSetting('ARM_DongleType') = '1' then
//    begin
//
//        TRY
//
//        GotoLabel_1 :
//
//        _ARM_CoName   := '';
//        _ARM_AUSKey   := '123456789Yeganeh';
//        _ARM_ReadKey  := GetSystemSetting('ARM_ReadKey' );
//        _ARM_WriteKey := GetSystemSetting('ARM_WriteKey');
//        _ARM_SafeKey1 := '';
//        _ARM_SafeKey2 := '';
//        _ARM_IPServer := GetSystemSetting('ARM_IPServer');
//
//        if (_ARM_IPServer <> '0') and (_ARM_AUSKey <> '0') and (_ARM_WriteKey <> '0') and (_ARM_SafeKey1 <> '0') and (_ARM_SafeKey2 <> '0') then
//        begin
//         Randomize;
//
//         Rand1 := RandomRange(1000,2147483647);
//
//         ARMClass1 := TARMClass.Create(Self);
//
//         OBJ := ARMClass1.NetAuthenticate(_ARM_IPServer, Rand1);
//
//         Res := _ARM_DongleCore_AESClass.CheckAuthenticate(OBJ,Rand1);
//
//         if Res = 1 then
//         begin
//         OBJ :=_ARM_DongleCore_AESClass.CreateUserKey(_ARM_WriteKey,_ARM_AUSKey);
//
//         ARMClass1.FindNetARM(OBJ);
//
//         for i:= 0 to 15 do
//         arrRand[i] := RandomRange(1,255);
//
//         OBJ  := ByteArrayToVariant(arrRand);
//
//         OBJ1 := ARMClass1.GetARMErrorCode(OBJ);
//
//         Res  :=_ARM_DongleCore_AESClass.GenerateErrorCode(OBJ1,arrRand);
//
//      if Res <> 100 then
//      begin
//      ERR_FRM := TLOCK_ERROR_FRM.Create(NIL);
//      ERR_FRM.MSG.Caption := '���� ��� 1';
//           ERR_FRM.CHNG_IP_BTN.Enabled := False;
//           ERR_FRM.ShowModal;
//           ERR_FRM.Free;
//
//      if RES = 102 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... ������� ��� �������');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 104 then
//         begin
//         ShowMessage('���� ��� 1 : ' + chr(13) + IntToStr(Res ) + ' = ERROR ... ������� ��� ������� ');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 105 then
//         begin
//         ShowMessage('���� ��� 1 : ' + chr(13) + IntToStr(Res ) + ' = ERROR ... �Ԙ�� ��� ������');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 107 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... ����� ������� ���� �� ���� ���');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 111 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... ������� ��� ��������� �� ���');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 105 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... �Ԙ�� ��� ������ �� ��� �� �ј� ������ ��� ���� Ȑ����');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 200 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... ������� ��� �������');
//         Application.Terminate;
//         end;
//      end
//      else
//      BEGIN
//      END
//         end
//         else
//         begin
//
//         ERR_FRM := TLOCK_ERROR_FRM.Create(NIL);
//         ERR_FRM.MSG.Caption := '���� ��� 2';
//         ERR_FRM.ShowModal;
//
//         ShowMyMessage('�����',
//           CHR(13) + '�� ������� �� ��� �����'
//         + CHR(13) + ' LOCK MAKER  '
//         + CHR(13) + '������� ��� �� ����� ������'
//         ,[mbOK],mtError);
//
//         if ERR_FRM.FLG = 'EXIT' then
//           BEGIN
//           ERR_FRM.Free;
//           Application.Terminate;
//           END
//         ELSE
//           BEGIN
//           ERR_FRM.Free;
//           GOTO GotoLabel_3;
//           END;
//         end;
//        END
//        else
//        begin
//        ShowMessage('����� ��� ����� ���� ����� ���');
//        SetSystemSetting('ARM_CoName'    , 'Yeganeh Co');
//        GotoLabel_3 :
//
//        CHNG_IP_FRM := TENTER_IP_ADDRESS_FRM.Create(NIL);
//        CHNG_IP_FRM.ShowModal;
//
//        server_ip_address_4_arm_lock := CHNG_IP_FRM.AdvIPEdit1.IPAddress;
//
//
//          if (CHNG_IP_FRM.FLG = False) then
//          BEGIN
//          Application.Terminate;
//          goto GotoLabel_4;
//          END
//          ELSE
//          if (Trim(server_ip_address_4_arm_lock) <> '')AND(IsWrongIP(Trim(server_ip_address_4_arm_lock)))AND(CHNG_IP_FRM.FLG = True) then
//          SetSystemSetting('ARM_IPServer'  , server_ip_address_4_arm_lock)
//          else
//          BEGIN
//          ShowMessage('���� �������');
//          goto GotoLabel_3;
//          END;
//
//          CHNG_IP_FRM.Free;
//
//          //SetSystemSetting('ARM_AUSKey'    , '');
//          //SetSystemSetting('ARM_ReadKey'   , '');
//          //SetSystemSetting('ARM_WriteKey'  , '');
//          //SetSystemSetting('ARM_SafeKey1'  , '');
//          //SetSystemSetting('ARM_SafeKey2'  , '');
//          //SetSystemSetting('ARM_DongleType', '');
//
//       goto GotoLabel_1;
//       END;
//
//
//   GotoLabel_4 :
//
//    EXCEPT
//    on E : Exception do
//     begin
//     ERR_FRM := TLOCK_ERROR_FRM.Create(NIL);
//     ERR_FRM.CHNG_IP_BTN.Enabled := False;
//     ERR_FRM.MSG.Caption := '���� ��� 3' + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + 'Exception class name = '  + E.ClassName + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + '--------------------------------------------------------------------------------------' + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + 'Exception message = '     + E.Message   + CHR(10) + CHR(13);
//     ERR_FRM.ShowModal;
//     ERR_FRM.Free;
//
//     ShowMyMessage('�����',
//       CHR(13) + '�� ������� �� ��� �����'
//     + CHR(13) + ' LOCK MAKER  '
//     + CHR(13) + '������� ��� �� ����� ������'
//     ,[mbOK],mtError);
//
//     Application.Terminate;
//     end;
//
//   END
//   
//    end
//   else
//    begin
//    ShowMyMessage('�����','��� ��� �� ����� ���',[mbOK],mtError);
//
//    ShowMyMessage('�����',
//      CHR(13) + '�� ������� �� ��� �����'
//    + CHR(13) + ' LOCK MAKER  '
//    + CHR(13) + '������� ��� �� ����� ������'
//    ,[mbOK],mtError);
//
//    Application.Terminate;
//    end;

   Application.ProcessMessages;
   Yeganeh.Close;

   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   LoginForm.ShowModal;
   GetUserSettings;

   //Ranjbar
   _UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder\';
   if Not DirectoryExists(_UserFolder) then
      CreateDir(_UserFolder);
   Qry_SetResult('if not Exists(Select * from Settings Where VariableName = ''DeleteUserFolder'' ' +
                 ' And UserID = ' + IntToStr(_UserID) + ' ) Insert Into Settings(UserID,Value,VariableName) ' +
                 ' Values('+IntToStr(_UserID)+',0,''DeleteUserFolder'') ',Dm.YeganehConnection);
   if GetUserSetting('DeleteUserFolder') = 1 then
   begin
      File_FindAndDelete(_UserFolder,'*.*'); //��� ����� ������� ����� �� ��� ����
      Qry_SetResult('Update Settings Set [Value] = 0 Where VariableName = ''DeleteUserFolder'' And UserID <> -1',Dm.YeganehConnection);
   end;

   _AllowToEditWordFiles := dm.GetActionAccess('Action15',1); // Amin 1391/07/15

   if _PasswordMustChange then
   begin
      ShowMessage('���� ���� ���� �ј��� �� ���� � ����� ���� � �� ��� ����� 6 ��� �� ��� ���� . ���� ���� ���� ��� �� ����� ����');
      FchangePassword:=TFchangePassword.Create(Application);
      FchangePassword.showmodal;
   end;

   {$IFDEF ADA}
      _ApplicationPath := ExtractFilePath(Application.ExeName);
      if _ApplicationPath <> Reg_GetValue('Software\ADA\Dabir','KartablePath',dtString,HKEY_CURRENT_USER) then
         Reg_SetValue('Software\ADA\Dabir','KartablePath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   {$ELSE}
      {Ranjbar} //�������� ���� ���� ������ �� �������
      _ApplicationPath := ExtractFilePath(Application.ExeName);
      if _ApplicationPath <> Reg_GetValue('Software\Yeganeh\Dabir','KartablePath',dtString,HKEY_CURRENT_USER) then
         Reg_SetValue('Software\Yeganeh\Dabir','KartablePath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
      //---
   {$ENDIF}
   UserID:=_UserID;

   QOrganization.Close;
   QOrganization.Open;
   QLetterTypes.Close;
   QLetterTypes.Open;

   QUserForLookup.Close;
   QUserForLookup.Open;

  OpenWorkSheetTablesForLoukup;
  Keyboard_Farsi;
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
begin
  AList := TStringList.Create;
  try
   if FileExists(ExtractFilePath(Application.ExeName) + 'ErrorLogBox.txt') then
    AList.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ErrorLogBox.txt');
   AList.Add(_Today + ' ' + TimeToStr(Now) + ' ' + Sender.ClassName + ' ' + E.Message);
   AList.SaveToFile(ExtractFilePath(Application.ExeName) + 'ErrorLogBox.txt');
  finally
   FreeAndNil(AList);
  end;
  //ApplicationEvents.OnException := nil;
  //with ErrorMessage do
  //begin
    if (pos('Connection failure',e.Message)<>0 ) or (pos('General network error',e.Message)<>0) then
    begin
      MainForm.Timer.Enabled:=False;
      finbox.QueryRefresher.Enabled:=False;
      FInbox.userTimer.Enabled:=False;
      if MessageDlg(' �� ������ �� ���� �Ԙ� ���� ���� ��� ������ �� ���� ��� ����� �� ���� ������.',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        //WinExec('Yeganeh_Dabir.exe',0);
        WinExec(pchar(ExtractFileName(Application.ExeName)),0);
        Application.Terminate;
      end;
    end;
//    Close;
//    Parameters.ParamByName('@like').Value:=e.Message;
(*
    try
      Open;
    except
      Exit;
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
      ErrorMessageErrorDate.AsString:= _Today;
      post;
    end;
  end;
  ApplicationEvents.OnException:=ApplicationEventsException;
*)
end;

function TDm.FileName(indicatorid:integer;myear:Integer):string;
begin
  Result:=IntToStr(IndicatorID);
  case length(Result) of
     1: Result:='0000'+Result;
     2: Result:='000'+Result;
     3: Result:='00'+Result;
     4: Result:='0'+Result;
  end;
  Result:=IntToStr(myear)+'_'+IntToStr(dm.SecID)+'_'+Result;
end;

function TDm.Cdate(S:string):string;
var
  p : Integer;
  f : String;
begin
  p := -1;
  while p <> 0 do
  begin
    p := pos('/', s);
    if p > 0 then
    begin
      f := copy(s, 1, p-1);
      Delete(s, 1, p);
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
    LetterTemplateDocDocument.SaveToFile(strFileName);
  end;
end;

procedure tDm.SaveHeaderToFile;
begin
  inherited;
end;

procedure TDm.Replace(var main:widestring;old,new:widestring);
var
  i: integer;
begin
  i:=pos(old,main);
  while i<>0 do
  begin
    main:=copy(main,1,i-1)+new+copy(main,i+length(old),length(main)-i-length(old)+1);
    i:=pos(old,main);
  end;
end;

procedure TDm.OpenWordFile(Filename:string;Readonly:boolean);
var
  OReadOnly,olv,emp,f,f1,fals,tru:OleVariant;
  en : integer;
  HNDL:THandle;
  IsError : Boolean;
begin
  emp := '';
  fals := false;
  tru := true;
  olv := wdOpenFormatAuto;
  f1 := Filename;
  IsError := False;
  OReadOnly := ReadOnly;

  try
    WordApplication.Disconnect;
    WordApplication.Connect;
  except
      IsError := True;
  end;

  with WordApplication do
  begin
    Disconnect;

    try
      Caption := 'Yeganeh';
    except
      IsError := True;
    end;

    if IsError=False then
    begin
      ChangeFileOpenDirectory(ExtractFilePath(Filename));
      f:=ExtractFileName(Filename);
      _Word_Is_Opened := True;
      HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
      SetForegroundWindow(HNDL);
      Documents.Open(f,EmptyParam,OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
      {Ranjbar}//����� ���� ����� �� ���� ���
      //AddUserSignToWord(_UserID,Filename);     {commented By Hadi Mohamed 92/05/14}

      If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

      If ActiveWindow.ActivePane.View.Type_ in [wdNormalView,wdOutlineView] Then
       ActiveWindow.ActivePane.View.Type_:= wdPrintView;
       Visible := true;
       en := WordApplication.Selection.End_ - 1;
      if en = 0 then
      WordApplication.Selection.TypeText(' ');
     _OpenedWordFile := ActiveDocument.Name;
    end else
    begin
      ChangeFileOpenDirectory(ExtractFilePath(Filename));
      f:=ExtractFileName(Filename);
      _Word_Is_Opened := True;
      Caption := 'Yeganeh';
      HNDL := FindWindow('OpusApp',PAnsiChar('Yeganeh'));
      SetForegroundWindow(HNDL);
      Documents.Open(f,EmptyParam,OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);
      {Ranjbar}//����� ���� ����� �� ���� ���
      //AddUserSignToWord(_UserID,Filename);     {commented By Hadi Mohamed 92/05/14}

      If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;

      If ActiveWindow.ActivePane.View.Type_ in [wdNormalView,wdOutlineView] Then
       ActiveWindow.ActivePane.View.Type_:= wdPrintView;
       Visible := true;
       en := WordApplication.Selection.End_ - 1;
      if en = 0 then
      WordApplication.Selection.TypeText(' ');
     _OpenedWordFile := ActiveDocument.Name;
    end;
  end;
end;

{Ranjbar 87.11.13 ID=10}
Procedure tDm.AddUserSignToWord(aUserID:integer; FileName: string);
Var
   TemPicName:String;
   DwdStory, DwdMove, tru , TempFile:OleVariant;
   r : Range;
   img: TImage;
   s : string;
begin
  if Not  GetUserSetting('InsertSignInWord') then // ���� ���� ���� �� ���
    Exit;

  try
    QrUserSign.Close;
    QrUserSign.Parameters.ParamByName('Pa_UserID').Value := _Userid;
    QrUserSign.Open;

    if MBaseForm.MessageShowString('��� ������ ����� ��� �� �� ���� ��� ���� ����' ,True) then
    begin
      if QrUserSign.RecordCount = 0 then
      begin
        MBaseForm.MessageShowString('����� ����� : ��� ����� ���� ��� �����'+ #13#13+
            '���� : ��� ����� �� ����� ����� ��� �� ��� ����� ����� �� �������� ������ ������', False);
        Exit;
      end;

      FInputPass := TFInputPass.Create(Application);
      FInputPass.UserPassword := Trim(QrUserSignPassword.AsString);
      FInputPass.ShowModal;
      if FInputPass.ModalResult = mrOK then
      begin
        With TADOQuery.Create(nil) do
        begin
          Connection := YeganehConnection;
          SQL.Text := 'UPDATE LetterSign SET IsOld=1 WHERE LetterID='+Sp_InboxLetterID.AsString+' AND UserID='+IntToStr(aUserID);
          ExecSQL;
          Active := false;
          SQL.Text := 'INSERT INTO LetterSign([LetterID],[UserID],[Date],[Time]) VALUES('+Sp_InboxLetterID.AsString+','+IntToStr(aUserID)+','''+_Today+''','''+Exec_Get_NowTime+''')';
          ExecSQL;
        end;
      end;
    end;
  Finally
    QrUserSign.Close;
  end;
end;

procedure TDm.UserSecsAfterInsert(DataSet: TDataSet);
begin
  UserSecsUserId.AsInteger:=UsersId.AsInteger;
end;

procedure TDm.UsersBeforeInsert(DataSet: TDataSet);
begin
  UsersDefualtSecretariatID.AsInteger:=1;
end;

procedure TDm.Timer_SaveWordTimer(Sender: TObject);// ����� �� ���� ��� ���� ��� � ����� �� �� �������
var
   i: integer;
begin
   Timer_SaveWord.Enabled := false;
   if UpperCase(_OpenedWordFile) = _WordFileName then
      try
         if not _Dont_save_Word then
         With Dm,Get_LetterWordFile do
         begin
//            WriteToLog('2');
            Edit;
            i:= 0;
            while i<200 do
            begin
               try
//                  WriteToLog('3');
                  Get_LetterWordFileImage.LoadFromFile(_TempPath+_WordFileName);
                  //Get_LetterWordFileLastUpdate.Value := Now;
//                  WriteToLog('4');
                  Post;
                  i:= 200;
               except
                  inc(i);
                  Sleep(30);
               end;
            end;
//            WriteToLog('Save Word For LetterID = '+ IntToStr(Get_LetterWordFileLetterID.AsInteger) + ' instead of ' + IntToStr(_OpendWordLetterID));
            Timer_SaveWord.Enabled := False;
            _Word_Is_Opened := False;
         end;
         SetWordClosed(Get_LetterWordFileLetterID.AsInteger, _UserID);
      except
         ShowMessage('����� ���� ��� ����� ��ϡ ���� ���� ����� ���� �� ��� ������� ���');
      end;
end;

procedure TDm.WordApplicationDocumentBeforeClose(ASender: TObject;
              const Doc: _Document; var Cancel: WordBool);
var
   ver : integer;
   SaveChanges : OleVariant;
begin
   SaveChanges := True;
   if  TWordApplication(ASender).ActiveDocument.ReadOnly then
   begin
      Doc.Saved := True;
      _Word_Is_Opened := False;
      WordApplication.Disconnect;
//      WordApplication.Quit;
      Exit;
   end;

   ver := StrToint(copy(WordApplication.Version,0,length(TWordApplication(ASender).Version)-2));
    if ver<12 then
    begin
        _Word_Is_Opened := False;
        WordApplication.Disconnect;
        Exit;
    end;

   {Ranjbar 89.09.28 ID=262}
   //����� ��� ���� ����� Save As ǐ� ��� ���� ��� ����
   //������� ��� � �� �� ��� ���� ������� ��� ���� ��� �� ������� ����� ��� ��� Save As ���� : ǐ� ����� �� �� ����� ������� ��
   ActDocName := UpperCase(WordApplication.ActiveDocument.Name);
   {if (UpperCase(WordApplication.ActiveDocument.Name) <> _WordFileName) And
       (UpperCase(WordApplication.ActiveDocument.Name) <> _WordFileName+'X') then
       Exit;  }
   if (ActDocName <> UpperCase(_WordFileName)) then
   begin
      _Word_Is_Opened := False;
      WordApplication.Disconnect;
       Timer_WordMessage.Enabled := True; //����� �����
      Exit;
   end;
   //---

   //Comment By Sanaye 950602
   //����� ����� ����� ����  
   //WordApplication.ActiveDocument.Save;
   //end Sanaye

   if Dm.FullTextSearch then
      Dm.InsertTextIntoLetter(TWordApplication(ASender),_LetterID);
   _Word_Is_Opened := False;
   //WordApplication.Disconnect;
   WordApplication.ActiveDocument.Close(SaveChanges,EmptyParam,EmptyParam);
   WordApplication.Quit;
   Timer_SaveWord.Enabled := True;
//   sleep(100);
//   Timer_SaveWordTimer(self);

end;

function TDm.ExecGet_LetterWordFile(Letterid:Integer; ReadOnly:Boolean; aOpenFile:Boolean=True; ext:Integer=3):boolean;
begin
  Result := False;
  Global_LetterID := Letterid;
  with Get_LetterWordFile,Parameters do
  begin
    Close;
    ParamByName('@Ext').Value := ext;
    ParamByName('@LetterID').Value := Letterid;
    Open;

    if Recordcount = 0 then
      Exit;

    Result := True;

    if ext = 3 then
    begin
      try
        Get_LetterWordFileImage.SaveToFile(_TempPath + _WordFileName);
      except
        MainForm.MessageShow(86, False);
        exit;
      end;
      _LetterID := Letterid;
        {Ranjbar 89.10.28 ID=271}

      if not _isSigning then
        ShowSigners(_LetterID, False);

      if aOpenFile then
      begin
        _OpendWordLetterID := Letterid;
        SetWordOpen(LetterID, _UserID);
        OpenWordFile(_TempPath + _WordFileName, ReadOnly);//��� ���� ����
      end;
    end
    else if ext = Exec_GetExcelId() then
    begin
      try
        Get_LetterWordFileImage.SaveToFile(_TempPath + _ExcelFileName);
      except
        MainForm.MessageShow(86, False);
        exit;
      end;
      _LetterID := Letterid;
        {Ranjbar 89.10.28 ID=271}

      if not _isSigning then
        ShowSigners(_LetterID, False);

      if aOpenFile then
      begin
        _OpendWordLetterID := Letterid;
        SetWordOpen(LetterID, _UserID);
        OpenExcelFile(_TempPath + _ExcelFileName, readonly);
      end;
    end;
  end;
end;

Procedure  tDm.ExecSelect_LetterReCommite(letterID:integer;TypeID: byte);
begin
  with Select_LetterReCommite,parameters do
  begin
    Close;
    ParamByName('@letterID').value:=letterID;
    ParamByName('@Type').value:=TypeID;
    open;
  end;
end;

function tDm.Y_InputQuery (const ACaption, Adefault: widestring; var Value: string; FormCaption : string): Boolean;
begin
   YInputQueryF:=TYInputQueryF.Create(Application);
   YInputQueryF.Label1.Caption:=ACaption;
   YInputQueryF.output.Text:=Adefault;
   YInputQueryF.Caption:= FormCaption;
   YInputQueryF.ShowModal;
   Result:=YInputQueryF.done;
   Value:=YInputQueryF.output.Text;
end;

procedure TDm.Select_LetterReCommiteBeforePost(DataSet: TDataSet);
begin
   Select_LetterReCommiteLastUpdate.Value:=now;
   if Select_LetterReCommiteOrgID.IsNull then
       abort;
   if length(Select_LetterReCommiteDeadLineDate.AsString)=10 then
     Select_LetterReCommiteDeadLineToint.AsInteger:=ShamsiDateToInt(Select_LetterReCommiteDeadLineDate.AsString);
end;

procedure TDm.UserShortCutCalcFields(DataSet: TDataSet);
begin
   UserShortCutKeytitle.Value:='Alt+'+UserShortCutaltKey.AsString
end;


procedure tDm.Refresh_ReferenceTableData(TableID:integer);
begin
 with get_ReferenceTableData_by_tableID do
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

Procedure  TDm.Open_AlternativeInfo_ByUserID;
begin
  with Select_AlternativeInfo_ByUserID,parameters do
   begin
    Close;
    ParamByName('@UserID').value:=_UserID;
    Open;
   end;
end;


Procedure  TDm.Open_UserOrgid;
begin
  with Select_UserOrgid,parameters do
   begin
    Close;
    ParamByName('@today').value:=_Today;
    ParamByName('@UserID').value:=_UserID;
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

procedure TDm.Sp_InboxCalcFields(DataSet: TDataSet);
begin
   // Amin 1391/12/06 Start
   {if sp_inboxUserRecomCount.AsInteger > 1 then
      sp_inboxMemoAndRecomUserCount.AsString := Trim(sp_inboxMemo.AsString)+
      '    ('+sp_inboxUserRecomCount.AsString+')  '
   else
      sp_inboxMemoAndRecomUserCount.AsString := Trim(sp_inboxMemo.AsString);  }
   // Amin 1391/12/06 End

   if sp_inboxIsAnswer.AsBoolean then
      sp_inboxIsAnswerTitle.AsString := '����� ����';

   {if sp_inboxISFollowup.AsBoolean then
      sp_inboxISFollowupTitle.AsString := '����� �����'; }
end;

function TDm.LastIndicatorID(Letter_type:integer;LetterFormat:byte;SecretariatID:integer):integer;
begin
   Result:=Exec_get_LastIndicatorID(letter_type,LetterFormat,CurrentmYear,SecretariatID)
end;


{function Tdm.ISPishLetter(LetterID: Integer): Boolean;
begin
  Result := False;
  with ProcLetterIsPish,parameters do
   begin
    Prepared;
    ParamByName('@LetterID').value:=LetterID;
    ExecProc;
    if ParamByName('@Is').Value <> null then
      Result := ParamByName('@IS').Value;
   end;
end;}

function TDm.PishLetterID(LetterID: Integer): Integer;
begin
   Result := 0;
   with ProcLetterIsPish,parameters do
   begin
      Prepared;
      ParamByName('@LetterID').value:=LetterID;
      ExecProc;
      if ParamByName('@LetterIDIN').Value <> null then
         Result := ParamByName('@LetterIDIN').Value;
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

Procedure TDm.ExportLetterField(letterId:integer;FormOrder:integer;ExportType:byte);
Var
   Y : TYDBGrid;
begin
   Y := TYDBGrid.create(Application);
   Open_GetfieldValueByLetterID(letterId,FormOrder);
   Y.DataSource := DGetfieldValueByLetterID;
   Y.Columns[0].Title.Caption := '��� ����';
   Y.Columns[1].Title.Caption := '�����';
   Case ExportType of
      1: Y.ExportToWord;
      2: Y.ExportToExcel;
      3: Y.ExportToText;
      4: Y.ExportToAccess;
   end;
end;

{Ranjbar 89.09.28 ID=262}
procedure TDm.Timer_WordMessageTimer(Sender: TObject);
begin
   Timer_WordMessage.Enabled := False;

   if ActDocName <> UpperCase(_WordFileName) then
      ShowMessage('����� ����� �� ������� ������� �� �� ����� ������� ��� ���� ��� �� ��'+ #13 +
                  '������ ����� ���� �� ���� ���� ��� ������� �� ��� ������� ��� �����'+ ' Save As ' + #13 +
                  ' ���� '+' Save As '+'����� ���� Ӂ� ������ ���� ��� �� ��� ���� � �� ����� ');
end;
//---


procedure TDm.SetUserID(const Value: Integer);
begin
  FUserID := Value;
end;

function TDm.Check_CRM_Exists: Boolean;
begin
   Result:=False;
   if Length(Trim(Dm.GetValueFromRegistry('Software\yeganeh\crm','DataBaseName')))>0 then
    Result:=True;
end;

function TDm.GetValueFromRegistry(RootKeyPath, KeyName: String): String;
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

function TDm.ReplaceCharacter(s: widestring; old, new: Char): widestring;
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

function TDm.IS_Nameh_In_Cartable(LetterID:Integer;UserID:Integer): Boolean;
begin
  Result:=False;
  qIS_Nameh_In_Cartable_Before.Close;
  qIS_Nameh_In_Cartable_Before.Parameters.ParamByName('LetterID').Value:=LetterID;
  qIS_Nameh_In_Cartable_Before.Parameters.ParamByName('UserID').Value:=UserID;
  qIS_Nameh_In_Cartable_Before.Open;
  if qIS_Nameh_In_Cartable_Before.IsEmpty then
      Result:=True
  else
  begin
      qIS_Nameh_In_Cartable.Close;
      qIS_Nameh_In_Cartable.Parameters.ParamByName('LetterID1').Value:=LetterID;
      qIS_Nameh_In_Cartable.Parameters.ParamByName('LetterID2').Value:=LetterID;
      qIS_Nameh_In_Cartable.Parameters.ParamByName('UserID1').Value:=UserID;
      qIS_Nameh_In_Cartable.Parameters.ParamByName('UserID2').Value:=UserID;
      qIS_Nameh_In_Cartable.Open;
      if not qIS_Nameh_In_Cartable.IsEmpty then Result:=True;
  end;
end;

procedure TDm.Sp_InboxAfterScroll(DataSet: TDataSet);
var
   s : String;
begin
   s:='';
   get_ArchiveFolder_byUserID_and_Letterid.Close;
   get_ArchiveFolder_byUserID_and_Letterid.Parameters.ParamByName('@Letterid').Value:=Sp_Inboxrecommiteid.AsInteger;
   get_ArchiveFolder_byUserID_and_Letterid.Parameters.ParamByName('@userid').Value:=UserID;
   get_ArchiveFolder_byUserID_and_Letterid.Parameters.ParamByName('@ArchiveCenterID').Value:=_ArchiveCenterID;
   get_ArchiveFolder_byUserID_and_Letterid.Open;
   if not get_ArchiveFolder_byUserID_and_Letterid.IsEmpty then
   begin
      while not get_ArchiveFolder_byUserID_and_Letterid.Eof do
      begin
         s:=s+ ',' +get_ArchiveFolder_byUserID_and_LetteridTitle.AsString + '-' +get_ArchiveFolder_byUserID_and_LetteridPlace.AsString;
         get_ArchiveFolder_byUserID_and_Letterid.Next;
      end;
   end;
   FInbox.ArchiveFolders.Text:=s;
   FInbox.ArchiveFolders.Visible:=FInbox.ArchiveFolders.Text<>'';
   MainForm.ASign.Enabled := Sp_Inboxhas_WordPage.AsBoolean and (Sp_InboxLetter_Type.AsInteger <>1) and (Sp_InboxLetter_Type.AsInteger <>4);
   MainForm.APrintWord.Enabled := Sp_Inboxhas_WordPage.AsBoolean and (Sp_InboxLetter_Type.AsInteger <>1)and (Sp_InboxLetter_Type.AsInteger <>4) and Sp_InboxHas_Sign.AsBoolean;
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
  QCheckTadakhol.SQL.Add(' AND ');
  QCheckTadakhol.SQL.Add('(('+IntToStr(BeginTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(EndTimeToMinute)+' BETWEEN wsb.BeginTimeToMinute AND wsb.EndTimeToMinute) OR ('+IntToStr(BeginTimeToMinute)+'<wsb.BeginTimeToMinute AND '+IntToStr(EndTimeToMinute)+'>wsb.EndTimeToMinute))');
  QCheckTadakhol.SQL.Add(' AND ');
  QCheckTadakhol.SQL.Add('((wss.UserID='+IntToStr(UserID)+') OR (wst.UserID='+IntToStr(UserID)+') OR (wsv.UserID='+IntToStr(UserID)+'))');

  //ShowMessage(QCheckTadakhol.SQL.Text);

  QCheckTadakhol.Open;
  if not QCheckTadakhol.IsEmpty then Result:=True else Result:=False;
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

function TDm.WorkSheetCorrectTime(S: String): String;
var
  i:Integer;
  Ch:Char;
  Part1,Part2,TmpTime:String;
begin
  S:=Trim(S);
  if S='' then
  begin
     Result:='00:00';
  end
  else
  begin
      for i:=1 to 5 do
      begin
         Ch:=S[i];
         if not (Ch in [':','0','1','2','3','4','5','6','7','8','9']) then Ch:='0';
         TmpTime:=TmpTime+Ch;
      end;
      S:=TmpTime;
      Result:=S;
  end;
end;

function TDm.WorkSheetTimeIsValid(S: String): Boolean;
var
  Part1,Part2:Integer;
begin
  Result:=True;
  Part1:=StrToInt(Copy(S,1,2));
  Part2:=StrToInt(Copy(S,4,5));
  if (Part1>24) or (Part1<0) then Result:=False;
  if (Part2>59) or (Part2<0) then Result:=False;
end;

function TDm.WorkSheetTimeToInt(S: String): Integer;
var
  Hour,Minute:Integer;
begin
  Result:=-1;
  if WorkSheetTimeIsValid(S) then
  begin
    Hour:=StrToInt(Copy(S,1,2));
    Minute:=StrToInt(Copy(S,4,5));
    Result:= ( Hour * 60 ) + ( Minute );
  end
  else
    ShowMessage('���� ��� ��� ���� ����');
end;

function TDm.GetSemat(ActiveOrgID: Integer): String;
begin
    Result:='';
    QGetSemat.Close;
    QGetSemat.SQL.Clear;
    QGetSemat.SQL.Add('SELECT Title FROM FromOrganizations WHERE ID='+IntToStr(_ActiveSemat));
    QGetSemat.Open;
    if not QGetSemat.IsEmpty then Result:=QGetSematTitle.AsString;
end;

procedure TDm.OpenqSelectedColor(LetterID: Integer);
begin
    Dm.qSelectedColor.Close;
    Dm.qSelectedColor.Parameters.ParamByName('LetterID').Value:=LetterID;
    Dm.qSelectedColor.Open;
end;

procedure TDm.LoadPDFToDB(pdfName: string; letterID: integer);
VAR
   pdfExtId: integer;
begin
   pdfExtId := GetPDFExtinationID;
   Insert_File.Close;
   Insert_File.Parameters.ParamByName('LID').Value := letterID;
   Insert_File.Parameters.ParamByName('PN').Value := 0;
   Insert_File.Parameters.ParamByName('EXT').Value := pdfExtId;
   Insert_File.Parameters.ParamByName('UID').Value := letterID;
   Insert_File.Parameters.ParamByName('IMG').LoadFromFile(pdfName, ftBlob);
   Insert_File.ExecSQL;
end;

function TDm.GetPDFExtinationID: integer;
begin
   with TADOQuery.Create(nil) do
   begin
      Connection := YeganehConnection;
      SQL.Text := 'SELECT ExtentionID FROM Extention WHERE Extention=''pdf''';
      Active := true;
      if not IsEmpty then
         Result:= fields[0].AsInteger
      else
      begin
         Active := false;
         SQL.Text := 'INSERT INTO Extention(ExtentionTitle,Extention,IsSystem)VALUES(	''���� �� �� ��'',''pdf'',0)';
         ExecSQL;
      end;
      SQL.Text := 'SELECT ExtentionID FROM Extention WHERE Extention=''pdf''';
      Active := true;
      Result:= fields[0].AsInteger;
      Destroy;
   end;
end;

procedure TDm.LockWordFile(letterID: integer);
begin
   with TADOQuery.Create(nil) do
   begin
      Connection := YeganehConnection;
      SQL.Text := 'UPDATE LetterData SET IsCorrectedImage = 1 WHERE LetterID='+IntToStr(letterID)+' AND extention=3 ';
      ExecSQL;
   end;
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

procedure TDm.Select_LetterReCommiteAfterPost(DataSet: TDataSet);
begin
 //  ShowMessage('post');
end;

procedure TDm.Select_LetterReCommiteAfterOpen(DataSet: TDataSet);
begin
  // ShowMessage('open');
end;

procedure TDm.Select_LetterReCommiteAfterScroll(DataSet: TDataSet);
begin
 //  ShowMessage('scroll');
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
      i:=Tiny1.TinyErrCode;
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
        if (StrToInt(Copy(lockData,1,3))=254) or (StrToInt(Copy(lockData,1,3))=60) then
        begin
          if Copy(lockData,4,10)<ShamsiString(Now) then
          begin
            Result:=False;
            ShowMessage('����� ��� ��� ������ �� ����� ����� ��� ���� �� ����� ��� ����� ������');
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

    ExcelApplication.ActiveWorkbook._SaveAs(strFileName, xlNormal, '', '', False, False, xlNoChange,
        xlUserResolution, False, EmptyParam, EmptyParam, LCID);

    ExcelApplication.DisplayAlerts[LCID] := True;
    ExcelApplication.Disconnect;
  except on e:Exception do
    begin
      ShowMessage('Error ::' + e.Message);
    end;
  end;

  _Excel_Is_Opened := False;
  Timer_SaveExcel.Enabled := True; //����� ���� ��� �� ���� �������
end;

procedure TDm.Timer_SaveExcelTimer(Sender: TObject);
var
   i : Integer;
begin
  Timer_SaveExcel.Enabled := False;
  try
    if not _Dont_save_Word then
    //with Get_LetterWordFile do
    begin
      //ShowMessage(IntToStr(Get_LetterWordFileLetterID.AsInteger));
      Get_LetterWordFile.Edit;
      Get_LetterWordFileLastUpdate.Value := Now;
      i:= 0;
      while i < 200 do
      begin
        try
          Get_LetterWordFileImage.LoadFromFile(_TempPath + _ExcelFileName);
          Get_LetterWordFileLastUpdate.Value := Now;
          Get_LetterWordFile.Post;
          i := 200;
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

procedure TDm.UpdateFinalized(LetterID, RecommID: Integer);
var
 AQry : TADOQuery;
begin
 AQry := TADOQuery.Create(Nil);
 try
  AQry.Connection := Dm.YeganehConnection;
  AQry.Close;
  AQry.SQL.Text := 'Update Recommites Set ViewDate = ' + QuotedStr(_Today) + ' Where LetterID = ' + IntToStr(LetterID) + ' And RecommiteID = ' + IntToStr(RecommID);
  AQry.ExecSQL;
 finally
  FreeAndNil(AQry);
 end;

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

end.


