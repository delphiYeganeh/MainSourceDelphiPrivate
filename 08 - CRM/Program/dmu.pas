unit Dmu;

interface

uses
  SysUtils, Classes, DB,ShellAPI, ADODB, ImgList, Controls,Registry,windows,word2000,Graphics,YwhereEdit,
  OleServer, AppEvnts,Dialogs, WordXP, YINtegerField,DBGrids,Forms,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,TlHelp32,
  Yeganeh_Word, ComObj, ActiveX, TntDialogs, MssCalendarPro;

type
  TDm = class(TDataModule)
    YeganehConnection: TADOConnection;
    ImageList1: TImageList;
    DCustomer: TDataSource;
    Citys: TADOTable;
    CitysCItyId: TAutoIncField;
    CitysCityTitle: TWideStringField;
    CitysStateId: TIntegerField;
    CitysStateNum: TStringField;
    DGroups: TDataSource;
    Command: TADODataSet;
    WordTemplate: TADODataSet;
    WordTemplateDoc: TADODataSet;
    DWordTemplate: TDataSource;
    DWordTemplateDoc: TDataSource;
    DFields: TDataSource;
    User: TADOTable;
    UserId: TIntegerField;
    UserTitle: TWideStringField;
    UserUserName: TWideStringField;
    UserPassWord: TWideStringField;
    UserMarketerID: TWordField;
    UserDefaultProductID: TWordField;
    ADOCommand: TADOCommand;
    ErrorMessage: TADODataSet;
    ErrorMessageErrorid: TLargeintField;
    ErrorMessageErrorMessage: TWideStringField;
    ErrorMessageErrorDate: TWideStringField;
    ErrorMessageUserCode: TIntegerField;
    ErrorMessageFarsiMessage: TWideStringField;
    ErrorMessageShowMessage: TBooleanField;
    ApplicationEvents: TApplicationEvents;
    WordDocument: TWordDocument;
    WordApplication: TWordApplication;
    DMarketer: TDataSource;
    OpenDialog: TOpenDialog;
    DuplicateAddress: TADOStoredProc;
    DuplicateCustomerNo: TADOStoredProc;
    Customer: TADOStoredProc;
    SystemSettings: TADODataSet;
    DProduct: TDataSource;
    insert_ProductCustomer: TADOStoredProc;
    Exist_ProductCustomer: TADOStoredProc;
    Compagin: TADOTable;
    DCompagin: TDataSource;
    CompaginCompaginID: TWordField;
    CompaginCompaginTitle: TWideStringField;
    DActionType: TDataSource;
    ActionType: TADOTable;
    DDoneStatus: TDataSource;
    DoneStatus: TADOTable;
    DoneStatusDoneStatusID: TWordField;
    DoneStatusDoneStatustitle: TWideStringField;
    ActionTypeActionTypeID: TAutoIncField;
    ActionTypeActionTypeTitle: TWideStringField;
    Select_FollowUP_By_CustomerID: TADOStoredProc;
    DSelect_FollowUP_By_CustomerID: TDataSource;
    Select_FollowUP_By_CustomerIDFollowUPID: TAutoIncField;
    Select_FollowUP_By_CustomerIDCustomerID: TIntegerField;
    Select_FollowUP_By_CustomerIDActionTypeID: TIntegerField;
    Select_FollowUP_By_CustomerIDDoneStatusID: TWordField;
    Select_FollowUP_By_CustomerIDMarketerID: TIntegerField;
    Select_FollowUP_By_CustomerIDComment: TWideStringField;
    Select_FollowUP_By_CustomerIDToDoDate: TStringField;
    Select_FollowUP_By_CustomerIDDoneDate: TStringField;
    Select_FollowUP_By_CustomerIDAttachment1: TWideStringField;
    Select_FollowUP_By_CustomerIDAttachment2: TWideStringField;
    Select_FollowUP_By_CustomerIDToDoTime: TStringField;
    Select_FollowUP_By_CustomerIDActionTypeTitle: TStringField;
    Select_FollowUP_By_CustomerIDDoneStatusTitle: TStringField;
    Select_FollowUP_By_CustomerIDMarketerTilte: TStringField;
    Select_FollowUP_By_Date: TADOStoredProc;
    DSelect_FollowUP_By_Date: TDataSource;
    Select_FollowUP_By_CustomerIDSuccessChance: TWordField;
    Select_FollowUP_By_CustomerIDDoneComment: TWideStringField;
    Select_FollowUP_By_DateFollowUPID: TAutoIncField;
    Select_FollowUP_By_DateCustomerID: TIntegerField;
    Select_FollowUP_By_DateDoneStatusID: TWordField;
    Select_FollowUP_By_DateMarketerID: TIntegerField;
    Select_FollowUP_By_DateComment: TWideStringField;
    Select_FollowUP_By_DateToDoDate: TStringField;
    Select_FollowUP_By_DateDoneDate: TStringField;
    Select_FollowUP_By_DateToDoTime: TStringField;
    Select_FollowUP_By_DateSuccessChance: TWordField;
    Select_FollowUP_By_DateCompanyName: TWideStringField;
    Select_FollowUP_By_DatePersonTitle: TWideStringField;
    Select_FollowUP_By_DateCustomerNo: TStringField;
    Select_FollowUP_By_DateActionTypeTitle: TWideStringField;
    Select_FollowUP_By_DateDoneStatustitle: TWideStringField;
    Select_FollowUP_By_DateMarketerTitle: TWideStringField;
    Select_Contract_By_CustomerID: TADOStoredProc;
    StringField5: TStringField;
    DSelect_Contract_By_CustomerID: TDataSource;
    Select_Contract_By_CustomerIDContractID: TAutoIncField;
    Select_Contract_By_CustomerIDCustomerID: TIntegerField;
    Select_Contract_By_CustomerIDBeginDate: TStringField;
    Select_Contract_By_CustomerIDEndDate: TStringField;
    Select_Contract_By_CustomerIDAmount: TIntegerField;
    Select_Contract_By_CustomerIDAttachment: TWideStringField;
    Select_Contract_By_CustomerIDComment: TWideStringField;
    Select_Contract_By_CustomerIDMarketerID: TIntegerField;
    OneDayFollowup: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    IntegerField1: TIntegerField;
    WordField1: TWordField;
    IntegerField2: TIntegerField;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    WordField2: TWordField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    StringField4: TStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    Select_Contract_By_Date: TADOStoredProc;
    DSelect_Contract_By_Date: TDataSource;
    Select_Contract_By_DatePersonTitle: TWideStringField;
    Select_Contract_By_DateCompanyName: TWideStringField;
    Select_Contract_By_DateContractID: TAutoIncField;
    Select_Contract_By_DateCustomerID: TIntegerField;
    Select_Contract_By_DateBeginDate: TStringField;
    Select_Contract_By_DateEndDate: TStringField;
    Select_Contract_By_DateAmount: TYIntegerField;
    Select_Contract_By_DateMarketerTitle: TWideStringField;
    Select_Contract_By_DateCustomerNo: TStringField;
    Select_Contract_By_DateProduct: TWideStringField;
    CancelReason: TADOTable;
    CustomerStatus: TADOTable;
    DCustomerStatus: TDataSource;
    DCancelReason: TDataSource;
    DSelect_Customer_By_CustomerID: TDataSource;
    Select_Customer_By_CustomerID: TADOStoredProc;
    Select_Customer_By_CustomerIDGroupTitle: TStringField;
    Select_Customer_By_CustomerIDMarketerTilte: TStringField;
    Select_Customer_By_CustomerIDCustomerID: TAutoIncField;
    Select_Customer_By_CustomerIDPersonTitle: TWideStringField;
    Select_Customer_By_CustomerIDPhone: TWideStringField;
    Select_Customer_By_CustomerIDNotes: TWideStringField;
    Select_Customer_By_CustomerIDCompanyName: TWideStringField;
    Select_Customer_By_CustomerIDCityId: TSmallintField;
    Select_Customer_By_CustomerIDGroupId: TIntegerField;
    Select_Customer_By_CustomerIDCompaginTilte: TStringField;
    Select_Customer_By_CustomerIDIsActive: TBooleanField;
    Select_Customer_By_CustomerIDCustomerNo: TStringField;
    Select_Customer_By_CustomerIDTreater: TWideStringField;
    Select_Customer_By_CustomerIDAddress: TWideStringField;
    Select_Customer_By_CustomerIDSenderType: TWordField;
    Select_Customer_By_CustomerIDPriority: TIntegerField;
    Select_Customer_By_CustomerIDCompaginID: TWordField;
    Select_Customer_By_CustomerIDPostalCode: TWideStringField;
    Select_Customer_By_CustomerIDEmailAddress: TWideStringField;
    Select_Customer_By_CustomerIDWorkPhone1: TWideStringField;
    Select_Customer_By_CustomerIDWebSite: TWideStringField;
    Select_Customer_By_CustomerIDMobilePhone: TWideStringField;
    Select_Customer_By_CustomerIDFaxNumber: TWideStringField;
    Select_Customer_By_CustomerIDcompetitiveNote: TWideStringField;
    Select_Customer_By_CustomerIDCustomerStatusID: TWordField;
    Select_Customer_By_CustomerIDCancelReasonID: TWordField;
    Select_Customer_By_CustomerIDCancelComment: TWideStringField;
    Select_Customer_By_CustomerIDCancelDate: TStringField;
    Select_Customer_By_CustomerIDCustomerStatusTitle: TStringField;
    Select_Customer_By_CustomerIDCancelReasonTitle: TStringField;
    Customernickname: TWideStringField;
    CustomerCustomerID: TAutoIncField;
    CustomerCustomerNo: TStringField;
    CustomerPersonTitle: TWideStringField;
    CustomerAddress: TWideStringField;
    CustomerPhone: TWideStringField;
    CustomerNotes: TWideStringField;
    CustomerCompanyName: TWideStringField;
    CustomerCityId: TSmallintField;
    CustomerGroupId: TIntegerField;
    CustomerMarketerID: TIntegerField;
    CustomerIsActive: TBooleanField;
    CustomerSenderType: TWordField;
    CustomerPriority: TIntegerField;
    CustomerTreater: TWideStringField;
    CustomerCompaginID: TWordField;
    CustomerPostalCode: TWideStringField;
    CustomerEmailAddress: TWideStringField;
    CustomerWorkPhone1: TWideStringField;
    CustomerWebsite: TStringField;
    CustomerMobilePhone: TWideStringField;
    CustomerFaxNumber: TWideStringField;
    CustomercompetitiveNote: TWideStringField;
    CustomerCustomerStatusID: TWordField;
    CustomerCancelReasonID: TWordField;
    CustomerCancelComment: TWideStringField;
    CustomerCancelDate: TStringField;
    CustomerlatestFollowup: TStringField;
    CustomerCityTitle: TWideStringField;
    CustomerGroupTitle: TWideStringField;
    CustomerMarketerTitle: TWideStringField;
    CustomerCustomerStatusTitle: TWideStringField;
    Select_Customer_By_CustomerIDInsertdate: TStringField;
    Select_Customer_By_CustomerIDLastUpdate: TStringField;
    Select_Customer_By_CustomerIDProducts: TWideStringField;
    CustomerInsertdate: TStringField;
    CustomerLastUpdate: TStringField;
    Report_Contract: TADOStoredProc;
    DReport_Contract: TDataSource;
    CustomernextFollowup: TStringField;
    Select_FollowUP_By_DatePhone: TWideStringField;
    Select_FollowUP_By_DateWorkPhone1: TWideStringField;
    Select_TimeSheet: TADOStoredProc;
    Dselect_TimeSheet: TDataSource;
    Select_TimeSheetTimeSheetID: TAutoIncField;
    Select_TimeSheetUserID: TIntegerField;
    Select_TimeSheetWorkDate: TStringField;
    Select_TimeSheetEnterTime: TStringField;
    Select_TimeSheetExitTime: TStringField;
    Select_TimeSheetWorkTypeID: TWordField;
    Select_TimeSheetComment: TWideStringField;
    Select_Contract_By_DateComission: TIntegerField;
    Select_FollowUP_By_DateAddress: TWideStringField;
    Select_FollowUP_By_DateNotes: TWideStringField;
    Select_FollowUP_By_DateCityId: TSmallintField;
    Select_FollowUP_By_DateGroupId: TIntegerField;
    Select_FollowUP_By_DateIsActive: TBooleanField;
    Select_FollowUP_By_DateSenderType: TWordField;
    Select_FollowUP_By_DatePriority: TIntegerField;
    Select_FollowUP_By_DateTreater: TWideStringField;
    Select_FollowUP_By_DateCompaginID: TWordField;
    Select_FollowUP_By_DatePostalCode: TWideStringField;
    Select_FollowUP_By_DateEmailAddress: TWideStringField;
    Select_FollowUP_By_DateWebsite: TStringField;
    Select_FollowUP_By_DateMobilePhone: TWideStringField;
    Select_FollowUP_By_DateFaxNumber: TWideStringField;
    Select_FollowUP_By_DatecompetitiveNote: TWideStringField;
    Select_FollowUP_By_DateInsertdate: TStringField;
    Select_FollowUP_By_DateLastUpdate: TStringField;
    Select_FollowUP_By_DateCustomerStatusID: TWordField;
    Select_FollowUP_By_DateCancelReasonID: TWordField;
    Select_FollowUP_By_DateCancelComment: TWideStringField;
    Select_FollowUP_By_DateCancelDate: TStringField;
    Select_task_by_UserID: TADOStoredProc;
    DSelect_task_by_UserID: TDataSource;
    UserEmail: TStringField;
    UserAccountNo: TStringField;
    Get_UserTable: TADOStoredProc;
    Get_UserTableTableId: TWordField;
    Get_UserTableTableName: TWideStringField;
    Get_UserTableDescription: TWideStringField;
    Get_UserTableTableType: TWordField;
    Get_UserTableTableCode: TStringField;
    Get_UserTableUserField1: TWideStringField;
    Get_UserTableUserField2: TWideStringField;
    Tables: TADOTable;
    TablesTableId: TWordField;
    TablesTableName: TWideStringField;
    TablesDescription: TWideStringField;
    TablesTableType: TWordField;
    TablesTableCode: TStringField;
    TablesUserField1: TWideStringField;
    TablesUserField2: TWideStringField;
    DTables: TDataSource;
    Get_ReferenceTableData_By_TableID: TADOStoredProc;
    Get_ReferenceTableData_By_TableIDReferenceTableDataID: TAutoIncField;
    Get_ReferenceTableData_By_TableIDTableID: TIntegerField;
    Get_ReferenceTableData_By_TableIDDataID: TWordField;
    Get_ReferenceTableData_By_TableIDDataTitle: TWideStringField;
    Fields: TADOTable;
    ReferenceTables: TADOTable;
    WordField3: TWordField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    DReferenceTables: TDataSource;
    FieldType: TADOTable;
    FieldTypeFieldTypeID: TWordField;
    FieldTypeFieldTypeTitle: TWideStringField;
    DFieldType: TDataSource;
    CustomerUserTableLinkedID: TIntegerField;
    Select_Customer_By_CustomerIDUserTableLinkedID: TIntegerField;
    WordTemplateWordTemplateID: TIntegerField;
    WordTemplateDocWordTemplateID: TIntegerField;
    WordTemplateDocWordTemplate: TBlobField;
    WordTemplateDocTemplateTitle: TWideStringField;
    WordTemplateTemplateTitle: TWideStringField;
    Accesses: TADOTable;
    AccessesID: TWordField;
    AccessesTitle: TWideStringField;
    DAccesses: TDataSource;
    UserAccessID: TIntegerField;
    UserIsActive: TBooleanField;
    SystemSettingsVariableId: TIntegerField;
    SystemSettingsValue: TStringField;
    CustomerStatusCustomerStatusID: TWordField;
    CustomerStatusCustomerStatusTitle: TWideStringField;
    CancelReasonCancelReasonID: TWordField;
    CancelReasonCancelReasonTitle: TWideStringField;
    Report_ContractCustomerNo: TStringField;
    Report_ContractPersonTitle: TWideStringField;
    Report_ContractContactMarketerTitle: TWideStringField;
    Report_ContractAddress: TWideStringField;
    Report_ContractPhone: TWideStringField;
    Report_ContractNotes: TWideStringField;
    Report_ContractCompanyName: TWideStringField;
    Report_ContractEmailAddress: TWideStringField;
    Report_ContractPostalCode: TWideStringField;
    Report_ContractTreater: TWideStringField;
    Report_ContractWorkPhone1: TWideStringField;
    Report_ContractWebsite: TStringField;
    Report_ContractMobilePhone: TWideStringField;
    Report_ContractFaxNumber: TWideStringField;
    Report_ContractCompetitiveNote: TWideStringField;
    Report_ContractInsertdate: TStringField;
    Report_ContractGroupTitle: TWideStringField;
    Report_ContractCustomerStatusTitle: TWideStringField;
    Report_ContractCityTitle: TWideStringField;
    Report_ContractCompaginTitle: TWideStringField;
    Report_ContractStateTitle: TWideStringField;
    Report_ContractCustomerMarketerTitle: TWideStringField;
    Report_ContractProducts: TWideStringField;
    Report_ContractContractID: TIntegerField;
    Report_ContractCustomerID: TIntegerField;
    Report_ContractBeginDate: TStringField;
    Report_ContractEndDate: TStringField;
    Report_ContractAttachment: TWideStringField;
    Report_ContractComment: TWideStringField;
    Report_ContractMarketerID: TIntegerField;
    Report_ContractContractTypeID: TWordField;
    VWCities: TADOQuery;
    Groups: TADOQuery;
    GroupsGroupID: TAutoIncField;
    GroupsGroupTitle: TWideStringField;
    GroupsGroupNo: TStringField;
    Groupseffect: TWordField;
    VWCitiesStateCityTitle: TWideStringField;
    VWCitiesStateTitle: TWideStringField;
    VWCitiesCityID: TAutoIncField;
    VWCitiesCityTitle: TWideStringField;
    VWCitiesStateId: TIntegerField;
    VWCitiesStateNum: TStringField;
    Select_Customer_By_CustomerIDStateCityTitle_LK: TStringField;
    Product: TADOQuery;
    ProductProductID: TWordField;
    ProductProductTitle: TWideStringField;
    ProductComment: TWideStringField;
    ProductProductCategoryID: TWordField;
    ProductCommisionPercent: TWordField;
    ProductCode: TStringField;
    ProductLastVertion: TStringField;
    ProductIsNetwork: TBooleanField;
    ProductavgFollouwup: TIntegerField;
    Select_Customer_By_CustomerIDMarketerID: TIntegerField;
    Select_Customer_By_CustomerIDFreeField01: TWideStringField;
    Select_Customer_By_CustomerIDFreeField02: TWideStringField;
    Select_Customer_By_CustomerIDFreeField03: TWideStringField;
    Select_Customer_By_CustomerIDFreeField04: TWideStringField;
    Select_Customer_By_CustomerIDFreeField05: TWideStringField;
    Select_Customer_By_CustomerIDFreeField06: TWideStringField;
    Select_Customer_By_CustomerIDFreeField07: TWideStringField;
    Select_Customer_By_CustomerIDFreeField08: TWideStringField;
    Select_Customer_By_CustomerIDFreeField09: TWideStringField;
    Select_Customer_By_CustomerIDFreeField10: TWideStringField;
    Select_Customer_By_CustomerIDFreeField11: TWideStringField;
    Select_Customer_By_CustomerIDFreeField12: TWideStringField;
    Select_Customer_By_CustomerIDFreeField13: TWideStringField;
    Select_Customer_By_CustomerIDFreeField14: TWideStringField;
    Select_Customer_By_CustomerIDFreeField15: TWideStringField;
    Select_Customer_By_CustomerIDFreeField16: TWideStringField;
    Select_Customer_By_CustomerIDFreeField17: TWideStringField;
    Select_Customer_By_CustomerIDFreeField18: TWideStringField;
    Select_Contract_By_CustomerIDProcductID: TWordField;
    Select_Contract_By_CustomerIDContractTypID: TWordField;
    Select_Contract_By_CustomerIDContractImage: TBlobField;
    UserIsAdmin: TBooleanField;
    Select_Contract_By_CustomerIDContractTypeTitle: TWideStringField;
    UserUserTypeId: TWordField;
    Select_Contract_By_CustomerIDContractSubTypeID2: TWordField;
    Select_Contract_By_CustomerIDContractSubTypeTitle: TWideStringField;
    Select_Contract_By_CustomerIDProductTitle: TWideStringField;
    ContractType: TADODataSet;
    ContractTypeContractTypeID: TWordField;
    ContractTypeContractTypeCode: TWideStringField;
    ContractTypeContractTypeTitle: TWideStringField;
    Select_Contract_By_DateContractTypeTitle: TWideStringField;
    Select_Customer_By_CustomerIDStateID: TWordField;
    State: TADOTable;
    StateStateID: TWordField;
    StateStateTitle: TWideStringField;
    DState: TDataSource;
    CitysFilterByState: TADOQuery;
    CitysFilterByStateCityTitle: TWideStringField;
    CitysFilterByStateCityId: TAutoIncField;
    DCitys: TDataSource;
    CustomerFreeField01: TWideStringField;
    CustomerFreeField02: TWideStringField;
    CustomerFreeField03: TWideStringField;
    CustomerFreeField04: TWideStringField;
    CustomerFreeField05: TWideStringField;
    CustomerFreeField06: TWideStringField;
    CustomerFreeField07: TWideStringField;
    CustomerFreeField08: TWideStringField;
    CustomerFreeField09: TWideStringField;
    CustomerFreeField10: TWideStringField;
    CustomerFreeField11: TWideStringField;
    CustomerFreeField12: TWideStringField;
    CustomerFreeField13: TWideStringField;
    CustomerFreeField14: TWideStringField;
    CustomerFreeField15: TWideStringField;
    CustomerFreeField16: TWideStringField;
    CustomerFreeField18: TWideStringField;
    CustomerFreeField17: TWideStringField;
    CustomerProducts: TWideStringField;
    CustomerRowNo: TLargeintField;
    DUser: TDataSource;
    UserShowContract: TBooleanField;
    UserEditContract: TBooleanField;
    UserShowAllCustomer: TBooleanField;
    UserExportCustomerList: TBooleanField;
    CustomerInnerPhone: TWideStringField;
    Select_Customer_By_CustomerIDInnerPhone: TWideStringField;
    Select_FollowUP_By_CustomerIDWordAttachment: TBlobField;
    Select_FollowUP_By_CustomerIDPicAttachment: TBlobField;
    ActionTypeByUserType: TADOQuery;
    ActionTypeByUserTypeActionTypeID: TAutoIncField;
    ActionTypeByUserTypeActionTypeTitle: TWideStringField;
    ActionTypeByUserTypeUserTypeId: TIntegerField;
    Select_FollowUP_By_CustomerIDActionTypeTitleAll: TWideStringField;
    UserExportFollow: TBooleanField;
    DataSource1: TDataSource;
    SpYCRM_Select_Letter_By_CustomerID: TADOStoredProc;
    DsYCRM_Select_Letter_By_CustomerID: TDataSource;
    SpYCRM_Select_Letter_By_CustomerIDSecretariatID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDSecretariatDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDLetterID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDMYear: TWordField;
    SpYCRM_Select_Letter_By_CustomerIDLetter_Type: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDLetter_TypeDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDletterformat: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDletterformatDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDIncommingNO: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDIncommingdate: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDCenterNo: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDCenterDate: TStringField;
    SpYCRM_Select_Letter_By_CustomerIDFromOrgID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDFromOrgDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDToOrgID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDSignerid: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDClassificationID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDClassificationDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDUrgencyID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDUrgencyDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDMemo: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDAttachTitle: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDNumberOfAttachPages: TSmallintField;
    SpYCRM_Select_Letter_By_CustomerIDNumberOfPage: TWordField;
    SpYCRM_Select_Letter_By_CustomerIDReceiveTypeID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDReceiveTypeDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDUserName: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDRetroactionNo: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDRegistrationDate: TStringField;
    SpYCRM_Select_Letter_By_CustomerIDRegistrationTime: TStringField;
    SpYCRM_Select_Letter_By_CustomerIDFollowLetterNo: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDToStaffer: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDSentLetterID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDTemplateID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDHeaderID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDLetterRecommites: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDPreCode: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDfromstaffer: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDFinalized: TBooleanField;
    SpYCRM_Select_Letter_By_CustomerIDSendStatusID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDSendStatusDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDLatestActionTypeID: TIntegerField;
    SpYCRM_Select_Letter_By_CustomerIDlatestActionTypeDesc: TWideStringField;
    SpYCRM_Select_Letter_By_CustomerIDToOrgIDDesc: TWideStringField;
    Report_ContractProductTitle: TWideStringField;
    Report_ContractContractTypeTitle: TWideStringField;
    CustomerProductsID: TWideStringField;
    Select_FollowUP_By_DateInnerPhone: TWideStringField;
    CustomerSearchStr: TWideStringField;
    CustomerSearchInt: TWideStringField;
    CustomerRecordNumber: TIntegerField;
    Customerstateid: TIntegerField;
    tblCaseType: TADOTable;
    DsCaseType: TDataSource;
    tblCasePriority: TADOTable;
    dsCasePriority: TDataSource;
    DsCaseOriginal: TDataSource;
    tblCaseOriginal: TADOTable;
    tblCaseTypeCaseTypeID: TWordField;
    tblCaseTypeCaseTypeTitle: TWideStringField;
    tblCaseTypeManagerUserID: TIntegerField;
    tblCasePriorityCasePriorityID: TWordField;
    tblCasePriorityCasePriorityTitle: TWideStringField;
    tblCaseOriginalCaseOriginalId: TWordField;
    tblCaseOriginalCaseOriginalTitle: TWideStringField;
    SpSelect_Task: TADOStoredProc;
    SpSelect_TaskTaskID: TAutoIncField;
    SpSelect_TaskCaseId: TIntegerField;
    SpSelect_TaskTitle: TWideStringField;
    SpSelect_TaskDescription: TWideStringField;
    SpSelect_TaskTodoDate: TWideStringField;
    SpSelect_TaskRegisterDate: TWideStringField;
    SpSelect_TaskRegisterUserId: TIntegerField;
    DsTaskStatus: TDataSource;
    tblTaskStatus: TADOTable;
    tblCaseTypeManagerUserName: TStringField;
    tblTaskStatusTaskStatusID: TWordField;
    tblTaskStatusTaskStatusTitle: TWideStringField;
    dsUserByCaseFilter: TDataSource;
    UserByCaseFilter: TADOQuery;
    UserByCaseFilterId: TAutoIncField;
    UserByCaseFilterTitle: TWideStringField;
    UserByCaseFilterUserName: TWideStringField;
    Report_ContractTaxPercentage: TFloatField;
    Report_ContractGoodJobPercentage: TFloatField;
    Report_ContractInsuranceAccount: TFloatField;
    Report_ContractSakeTitle: TStringField;
    qtemp: TADOQuery;
    UserShowMyAction: TBooleanField;
    UserBtnAllContract: TBooleanField;
    UserBtnAllAct: TBooleanField;
    RunSetting: TADOQuery;
    Report_Cancles: TADOStoredProc;
    DReport_Cancles: TDataSource;
    Report_CanclesCustomerID: TAutoIncField;
    Report_CanclesCustomerNo: TStringField;
    Report_CanclesPersonTitle: TWideStringField;
    Report_CanclesCancelReasonTitle: TWideStringField;
    Report_CanclesCancelComment: TWideStringField;
    Report_CanclesInsertdate: TStringField;
    Report_CanclesCancelDate: TStringField;
    Report_CanclesCustomerStatusTitle: TWideStringField;
    Report_CanclesCompanyName: TWideStringField;
    Report_CanclesNotes: TWideStringField;
    Report_CanclesMarketerNo: TStringField;
    Report_CanclesMarketerTitle: TWideStringField;
    Report_CanclesProducts: TWideStringField;
    Report_CanclesProductTitle: TWideStringField;
    Report_CanclesProductID: TWordField;
    Report_CanclesTotalNoOfPeygiri: TIntegerField;
    Report_CanclesNoOfPeygiriByMarketer: TIntegerField;
    MarketerInsertRate: TADOStoredProc;
    DMarketerInsertRate: TDataSource;
    MarketerInsertRateMarketerID: TIntegerField;
    MarketerInsertRateMarketerTitle: TWideStringField;
    MarketerInsertRatePPercent: TWordField;
    MarketerInsertRateCustomerCount: TBCDField;
    MarketerInsertRatedays: TBCDField;
    MarketerInsertRaterate: TFloatField;
    MarketerInsertRateExceptedCount: TIntegerField;
    Marketer: TADOQuery;
    DMarketerALL: TDataSource;
    MarketerALL: TADOTable;
    MarketerALLMarketerID: TAutoIncField;
    MarketerALLMarketerNo: TStringField;
    MarketerALLMarketerTitle: TWideStringField;
    MarketerALLPPercent: TWordField;
    MarketerALLTag: TBooleanField;
    MarketerALLOrgID: TIntegerField;
    UserISWinServer: TBooleanField;
    QIsUserInSequenceList: TADOQuery;
    QGetUserSeqID: TADOQuery;
    QGetCurrentSeq: TADOQuery;
    QUpdUsersSeqTable: TADOQuery;
    QGetActiveUser: TADOQuery;
    QGetActiveUserTitle: TWideStringField;
    Select_Customer_By_CustomerIDCustomerBirthDate: TStringField;
    QGetOldValue: TADOQuery;
    QTMP: TADOQuery;
    qryGetAutoText: TADOQuery;
    qryGetAutoTextID: TAutoIncField;
    qryGetAutoTextAutoText: TStringField;
    MarketerMarketerID: TAutoIncField;
    MarketerMarketerNo: TStringField;
    MarketerMarketerTitle: TWideStringField;
    MarketerTag: TBooleanField;
    MarketerPPercent: TWordField;
    MarketerOrgID: TIntegerField;
    MarketerIsActive_: TBooleanField;
    QCheckMarketerCode: TADOQuery;
    Select_FollowUP_By_CustomerIDParentFollowUpID: TIntegerField;
    Select_FollowUP_By_CustomerIDStatusSaveDate: TStringField;
    Select_FollowUP_By_CustomerIDFollowUpInsertDate: TStringField;
    Select_Customer_By_CustomerIDUserAccessMode: TIntegerField;
    Select_FollowUP_By_CustomerIDFullActionTitle: TStringField;
    Select_FollowUP_By_CustomerID2: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WordField4: TWordField;
    IntegerField5: TIntegerField;
    WideStringField9: TWideStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    WordField5: TWordField;
    WideStringField12: TWideStringField;
    BlobField1: TBlobField;
    BlobField2: TBlobField;
    WideStringField13: TWideStringField;
    IntegerField6: TIntegerField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    DSelect_FollowUP_By_CustomerID2: TDataSource;
    Select_FollowUP_By_DateProductTitle: TStringField;
    DabirConnection: TADOConnection;
    CustomerContractExpDate: TStringField;
    Select_FollowUP_By_DateDoneComment: TStringField;
    Select_FollowUP_By_DategroupTitle: TStringField;
    CustomerCompaginTitle: TStringField;
    tbCategories: TADOTable;
    tbSubCategories: TADOTable;
    tbCompanyTypes: TADOTable;
    tbCompanySizes: TADOTable;
    dCategories: TDataSource;
    dSubCategories: TDataSource;
    dCompanyTypes: TDataSource;
    dCompanySizes: TDataSource;
    CustomerCategoryId: TIntegerField;
    CustomerSubCategoryId: TIntegerField;
    CustomerCompanyTypeId: TIntegerField;
    CustomerCompanySizeId: TIntegerField;
    CustomerFreeField19: TStringField;
    CustomerFreeField20: TStringField;
    CustomerFreeField21: TStringField;
    CustomerFreeField22: TStringField;
    CustomerFreeField23: TStringField;
    CustomerFreeField24: TStringField;
    CustomerFreeField25: TStringField;
    CustomerFreeField26: TStringField;
    CustomerFreeField27: TStringField;
    CustomerFreeField28: TStringField;
    CustomerCategoryTitle: TStringField;
    CustomerSubCategoryTitle: TStringField;
    CustomerCompanyTypeTitle: TStringField;
    CustomerCompanySizeTitle: TStringField;
    Select_Customer_By_CustomerIDCategoryId: TIntegerField;
    Select_Customer_By_CustomerIDSubCategoryId: TIntegerField;
    Select_Customer_By_CustomerIDCompanyTypeId: TIntegerField;
    Select_Customer_By_CustomerIDCompanySizeId: TIntegerField;
    Select_Customer_By_CustomerIDFreeField19: TStringField;
    Select_Customer_By_CustomerIDFreeField20: TStringField;
    Select_Customer_By_CustomerIDFreeField21: TStringField;
    Select_Customer_By_CustomerIDFreeField22: TStringField;
    Select_Customer_By_CustomerIDFreeField23: TStringField;
    Select_Customer_By_CustomerIDFreeField24: TStringField;
    Select_Customer_By_CustomerIDFreeField25: TStringField;
    Select_Customer_By_CustomerIDFreeField26: TStringField;
    Select_Customer_By_CustomerIDFreeField27: TStringField;
    Select_Customer_By_CustomerIDFreeField28: TStringField;
    dCompanyStructures: TDataSource;
    CustomerCompanyStructureId: TIntegerField;
    Select_Customer_By_CustomerIDCompanyStructureId: TIntegerField;
    tbCompanyStructures: TADOTable;
    Report_ContractSignUpDate: TStringField;
    Select_FollowUP_By_CustomerIDExcellAttachment: TBlobField;
    Report_ContractComission: TCurrencyField;
    CustomerFinishedContractProducts: TStringField;
    Report_ContractAmount: TFloatField;
    Select_FollowUP_By_CustomerIDPdfAttachment: TBlobField;
    CustomerTemp: TADOStoredProc;
    WideStringField14: TWideStringField;
    AutoIncField3: TAutoIncField;
    StringField15: TStringField;
    WideStringField15: TWideStringField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    WideStringField19: TWideStringField;
    SmallintField1: TSmallintField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    BooleanField1: TBooleanField;
    WordField6: TWordField;
    IntegerField9: TIntegerField;
    WideStringField20: TWideStringField;
    WordField7: TWordField;
    WideStringField21: TWideStringField;
    WideStringField22: TWideStringField;
    WideStringField23: TWideStringField;
    StringField16: TStringField;
    WideStringField24: TWideStringField;
    WideStringField25: TWideStringField;
    WideStringField26: TWideStringField;
    WordField8: TWordField;
    WordField9: TWordField;
    WideStringField27: TWideStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    WideStringField28: TWideStringField;
    WideStringField29: TWideStringField;
    WideStringField30: TWideStringField;
    WideStringField31: TWideStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    IntegerField10: TIntegerField;
    WideStringField32: TWideStringField;
    WideStringField33: TWideStringField;
    WideStringField34: TWideStringField;
    WideStringField35: TWideStringField;
    WideStringField36: TWideStringField;
    WideStringField37: TWideStringField;
    WideStringField38: TWideStringField;
    WideStringField39: TWideStringField;
    WideStringField40: TWideStringField;
    WideStringField41: TWideStringField;
    WideStringField42: TWideStringField;
    WideStringField43: TWideStringField;
    WideStringField44: TWideStringField;
    WideStringField45: TWideStringField;
    WideStringField46: TWideStringField;
    WideStringField47: TWideStringField;
    WideStringField48: TWideStringField;
    WideStringField49: TWideStringField;
    WideStringField50: TWideStringField;
    LargeintField1: TLargeintField;
    StringField22: TStringField;
    WideStringField51: TWideStringField;
    WideStringField52: TWideStringField;
    WideStringField53: TWideStringField;
    WideStringField54: TWideStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    IntegerField13: TIntegerField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    IntegerField17: TIntegerField;
    UserPinFollowUp: TBooleanField;
    DSelect_FollowUP_Pin: TDataSource;
    Select_FollowUP_Pin: TADOStoredProc;
    Select_FollowUP_PinCustomerId: TIntegerField;
    Select_FollowUP_PinCompanyName: TStringField;
    Select_Customer_By_CustomerIDCustomerMiscalculationDesc: TStringField;
    Select_Customer_By_CustomerIDCustomerMiscalculation: TBooleanField;
    UserThemTypeColor: TIntegerField;
    UserColor1: TStringField;
    UserColor2: TStringField;
    UserColor3: TStringField;
    UserColor4: TStringField;
    ADOState: TADOQuery;
    ADOStateStateID: TIntegerField;
    ADOStateStateTitle: TStringField;
    DState2: TDataSource;
    UserAccAcess: TBooleanField;
    CustomerOtherPerson: TBooleanField;
    UserCallAccess: TBooleanField;
    UserAssesstAcess: TBooleanField;
    CitysCountyTitle: TStringField;
    Select_FollowUP_By_CustomerIDIsFactor: TBooleanField;
    Select_FollowUP_By_CustomerIDIsPreFactor: TBooleanField;
    Select_FollowUP_By_CustomerIDFactorId: TIntegerField;
    UserFactorAccess: TBooleanField;
    UserEditVersion: TBooleanField;
    Select_FollowUP_By_DateWorkPhoneOther: TStringField;
    OpenDialogFile: TTntOpenDialog;
    Select_FollowUP_By_CustomerIDPicAttachmentType: TStringField;
    Select_FollowUP_By_DateIsHoliday: TIntegerField;
    DSelect_Holiday_date: TDataSource;
    Select_Holiday_date: TADOStoredProc;
    Select_Holiday_dateYear: TStringField;
    Select_Holiday_dateDate: TStringField;
    Select_Holiday_dateMounth: TStringField;
    Select_Holiday_dateHolidayDate: TStringField;
    Select_Holiday_dateDescription: TStringField;
    UserManagerSale: TBooleanField;
    UserManagerProduction: TBooleanField;
    UserManagerSupport: TBooleanField;
    UserManagerOfficial: TBooleanField;
    tblTaskReferral: TADOTable;
    DSTaskReferral: TDataSource;
    tblTaskReferralUserTypeId: TIntegerField;
    tblTaskReferralCaseTypeID: TIntegerField;
    tblTaskReferralProductID: TIntegerField;
    tblTaskReferralUserID: TIntegerField;
    tblTaskReferralUserTypeTitle: TStringField;
    tblTaskReferralcaseTypeTitle: TStringField;
    tblTaskReferralProductTitle: TStringField;
    tblTaskReferralUserTitle: TStringField;
    DSUserType: TDataSource;
    tblUserType: TADOTable;
    tblUserTypeUserTypeId: TIntegerField;
    tblUserTypeUserTypeTitle: TStringField;
    MssCalendarPro1: TMssCalendarPro;
    tblMessages: TADOTable;
    DSMessages: TDataSource;
    tblMessagesUserID: TIntegerField;
    tblMessagesMessageType: TIntegerField;
    tblMessagesDescription: TStringField;
    tblMessagesIsRead: TBooleanField;
    tblMessagesCurrentDate: TDateField;
    tblMessagesInserteadUserId: TIntegerField;
    tblMessagesIsActive: TBooleanField;
    tblMessagesExpireDateShow: TStringField;
    tblMessagesReadDate: TDateField;
    tblMessagesSubject: TStringField;
    tblMessagesicon: TStringField;
    tblMessagesID: TIntegerField;
    tblMessagesShamsidate: TStringField;
    Select_FollowUP_By_CustomerIDIsAuto: TBooleanField;
    UserLastVertionLogin: TStringField;
    UserNewPassWord: TStringField;
    tblReferralUser: TADOTable;
    DSReferralUser: TDataSource;
    tblReferralUserid: TIntegerField;
    tblReferralUserParentID: TIntegerField;
    tblReferralUserChildID: TIntegerField;
    tblReferralUserParentTitle: TStringField;
    tblReferralUserChildTitle: TStringField;
    DSTaskLog: TDataSource;
    tblTaskLog: TADOTable;
    tblTaskLogid: TIntegerField;
    tblTaskLogCaseId: TIntegerField;
    tblTaskLogTaskId: TIntegerField;
    tblTaskLogStartTime: TDateTimeField;
    tblTaskLogEndTime: TDateTimeField;
    tblTaskLogUserId: TIntegerField;
    tblTaskLogLongTime: TStringField;
    Select_MediaMessage: TADOStoredProc;
    Select_MediaMessageID: TIntegerField;
    Select_MediaMessageMessage: TStringField;
    Select_MediaMessageDescription: TStringField;
    Select_MediaMessageType: TIntegerField;
    Select_MediaMessageMedia: TStringField;
    Select_MediaMessageCurrentDate: TDateTimeField;
    Select_MediaMessagePhoneNumber: TStringField;
    Select_MediaMessageIsSend: TBooleanField;
    Select_MediaMessageTrySend: TIntegerField;
    Select_MediaMessageResultSend: TBooleanField;
    Select_MediaMessageCustomerId: TIntegerField;
    DsSelect_MediaMessage: TDataSource;
    Select_MediaMessageSenderUserId: TIntegerField;
    Select_Customer_By_CustomerIDCountMeet: TIntegerField;
    Select_Customer_By_CustomerIDCountCancelMeet: TIntegerField;
    Select_Customer_By_CustomerIDCountHumanInterface: TIntegerField;
    DSActionTypeByUserType: TDataSource;
    Select_FollowUP_By_CustomerIDFTPSpace: TBooleanField;
    tblMessagesCustomerId: TIntegerField;
    Select_Customer_By_CustomerIDCustomerSuccessChance: TSmallintField;
    qryActionType_Level: TADOQuery;
    DSActionType_Level: TDataSource;
    qryActionType_LevelID: TIntegerField;
    qryActionType_LevelParentID: TIntegerField;
    qryActionType_LevelChildID: TIntegerField;
    qryActionType_LevelOrderId: TIntegerField;
    qryActionType_LevelDescription: TStringField;
    qryActionType_LevelLevel: TIntegerField;
    qryActionType_LevelType: TIntegerField;
    DDoneStatusShow: TDataSource;
    DoneStatusShow: TADOQuery;
    DoneStatusShowDoneStatusID: TIntegerField;
    DoneStatusShowDoneStatustitle: TStringField;
    Select_FollowUP_By_CustomerIDDoneStatusTitleAll: TStringField;
    Select_FollowUP_By_CustomerIDParentMarketerID: TIntegerField;
    ProductShowInSale: TBooleanField;
    ProductOrderId: TIntegerField;
    Select_Customer_By_CustomerIDComputerName: TStringField;
    Select_Customer_By_CustomerIDIPAddress: TStringField;
    Select_FollowUP_By_CustomerIDComputerName: TStringField;
    Select_FollowUP_By_CustomerIDIPAddress: TStringField;
    CustomerComputerName: TStringField;
    CustomerIPAddress: TStringField;
    Select_FollowUP_By_CustomerIDMarketerTitleAll: TStringField;
    MarketerMarketerIsDone: TBooleanField;
    MarketerALLMarketerIsDone: TBooleanField;
    MarketerALLIsActive_: TBooleanField;
    Select_Customer_By_CustomerIDMarketerTitleAll: TStringField;
    MarketerALLOrderByID: TIntegerField;
    MarketerOrderByID: TIntegerField;
    Select_FollowUP_By_DateRowID: TLargeintField;
    Select_Customer_By_CustomerIDLeadQuality: TIntegerField;
    Select_FollowUP_By_CustomerIDStatusSaveDateTime: TDateTimeField;
    Select_FollowUP_By_DateStatusSaveDate: TStringField;
    Select_FollowUP_By_DateStatusSaveDateTime: TTimeField;
    Select_FollowUP_By_DateISPlusTime: TBooleanField;
    Select_FollowUP_By_DateTimeInterval: TStringField;
    Select_FollowUP_By_date1_CountCustomer: TADOStoredProc;
    DSSelect_FollowUP_By_date1_CountCustomer: TDataSource;
    Select_FollowUP_By_date1_CountCustomerCustomerID: TIntegerField;
    QrFixAsset: TADOQuery;
    QrFixAssetFixID: TAutoIncField;
    QrFixAssetName: TWideStringField;
    DSFixAsset: TDataSource;
    QrFixAssetDescription: TStringField;
    QrFixAssetFixNumber: TStringField;
    QrFixAssetCount: TIntegerField;
    QrFixAssetUserId: TIntegerField;
    QrFixAssetDate: TDateTimeField;
    Select_FollowUP_By_DateparentMarketerTitle: TStringField;
    Select_FollowUP_By_CustomerIDparentMarketerTitle: TStringField;
    Function  SearchTable(Ads1:TDataSet;CodeField,TitleField:string):integer;
    function  GetSql(s:string):Variant;
    function  GetNewCode:string;
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure Connect;
    function  GetServerTime:string;
    function  GetServerDate:tdatetime;
    procedure ExecCommand(s:string);
    procedure OpenURL(Url: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure OpenWordFile(Filename:string);
    procedure OpenExcelFile(Filename:string);
    procedure MakeLetter(Dataset:Tdataset);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    function  GetSystemValue(I:integer):variant;
    Procedure SetSystemValue(VariableId:word;value:variant);
    procedure Insert_Products(ProductId:integer);
    function  HasProduct(Productid,CustomerID: integer):boolean;
    procedure Select_FollowUP_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure Select_Contract_By_CustomerIDAfterInsert(DataSet: TDataSet);
    Procedure Open_Report_Contract(where:widestring);
    Procedure Open_Contract_By_Date(FromDate:string;ToDate:string);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;  const Doc: _Document; var Cancel: WordBool);
    function  Get_Sum_Contract_Amount(FromDate:string;ToDate:string):integer;
    Procedure Open_TimeSheet;
    function  get_Time(minute:integer):string;
    Procedure Open_Customer(CustomerID: integer);
    procedure GroupsAfterInsert(DataSet: TDataSet);
    procedure GroupsBeforePost(DataSet: TDataSet);
    procedure Select_Customer_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure Select_Contract_By_CustomerIDBeforePost(DataSet: TDataSet);
    procedure DStateDataChange(Sender: TObject; Field: TField);
    procedure Select_FollowUP_By_CustomerIDBeforePost(DataSet: TDataSet);
    procedure CustomerCalcFields(DataSet: TDataSet);
    procedure GroupsPostError(DataSet: TDataSet; E: EDatabaseError;var Action: TDataAction);
    Procedure RunCRMScripts(aADOConnection:TADOConnection);
    procedure Select_Customer_By_CustomerIDBeforePost(DataSet: TDataSet);
    procedure MarketerBeforePost(DataSet: TDataSet);
    procedure Select_FollowUP_By_CustomerIDAfterOpen(DataSet: TDataSet);
    procedure DSelect_FollowUP_By_CustomerIDDataChange(Sender: TObject; Field: TField);
    { TODO -oparsa : 14030204 }
    procedure SendSmsToOutBox (	SmsNumber,SmsText :String);
    function  Post(param1:string): string;
    procedure tblMessagesCalcFields(DataSet: TDataSet);
    function  processExists(exeFileName: string): Boolean;    
    function  KillTask(ExeFileName: string): Integer;
    { TODO -oparsa : 14030204 }

  private
    Function  MakeFilterResult :Boolean;
    Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableName:String='ScriptsNumber';aServername:String='');

    function  Is_ActivityCode_Tekrari(GroupsNo:String):Boolean;
    function  Is_User_In_SequenceList:Boolean;
    function  GetUserSequenceID:Integer;
    function  GetCurrentSeq:Integer;
    function  QGetOldValue2:String;
    procedure InsertLog;
    procedure SendSMS;
    procedure ResulutionGet ;

  public
    SearchResult:integer;
    FocusedColor:Tcolor;
    CanDataChange : boolean; // Amin 1391/10/18
    HolidayArray : array[1..12, 1..31] of integer;
    HolidayStr : string;
    function  Search(Y:TYwhereEdit):integer;

    procedure SaveTemplateToFile;
    procedure RefreshTemplate;
    procedure Replace(var main:widestring;old,new:widestring);
    procedure RefreshFollowUP(Bdate,Edate:String;Ds:integer; ActionTypeID,BSuccess,ESuccess:byte;Comment_like,DoneComment_like: string;MarketerID:integer; CommentTypeOr: boolean; GroupID: integer = 0;CustomerName:String='';CustomerID:String = '0'; TimeInterval : Integer = 0 ; CompaginID : Integer = 0 ; StateID : Integer = 0); // Amin 1391/08/25
    //Edited
    procedure RefreshFollowUP_bydate(Bdate,Edate:String;Ds:integer;MarketerID:integer);
    procedure GetOneDayFollowUP(date:String);
    Procedure Followup_cancel(Customerid:integer);
    Procedure Do_task(TaskId:integer;DoneComment:widestring);
    Procedure Postpone_task(TaskId:integer;days:integer);
    Procedure Update_CustomerNo(CustomerID:integer;CustomerNo:string);
    procedure ShowAttachments(ADOSP:TADOStoredProc;Add:boolean);
    function  Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;

    function GetComputerNetName: string;
    Function GetUserWindowsUser: string;

    function SmsSettingIsCorrect:Boolean;
    function DMCommaSeperated(s:string):string;
    function replacePWC(input: Pwidechar): Pwidechar;
    function StringToPWide(  sStr: string;  var iNewSize: integer): PWideChar;
  //  function ReadTiffIntoBitmap(const Filename: string): TBitmap;
    procedure RefreshHoliday(Bdate:String ='1403');
    function  getDelphiVer:String;
    procedure ActiveWord;
    function  IsWordRunning: Boolean;
    function IntToY(L:byte):string ;
    function CommaSeperated(s:string):string;
  end;

type
  TSmsDetails = record
    Id        : Integer;
    SmsText   : string;
    SmsPhone  : string;
    SendDate  : string;
  end;

Var
   Dm: TDm;
   RecNo :Integer;
   _gCustomerID :Integer;
   _ShowContract,_IsWinServer,_ExportCustomerList,_EditContract,_ShowAllCustomer,_ExportFollow,_ShowMyAction,_BtnAllContract,_BtnAllAct  :Boolean;
   gsrcContactNumberm,gsrcWhere,gsrcEmail,_ToDoDate,_DoneDate :String;
   gsrcCustomerStatusId,gsrcProductId,gsrcGroupId,gsrcStateId,gsrcCityId :Integer;
   gsrchOnlyMe : Boolean;
   Directory :String;
   SpDbgridContract :TADOStoredProc;
   gCustomerID :integer;
   _UserTypeID :integer;
   _isAdmin : boolean;
   _UserID:integer;
   _WorkSationName:String;
   _WinOrDomainUserName:String;   
   _ProductID:integer;
   _UserName:String;
   _TerminalID:String;
   _SmsPassWord:String;
   _SendSMS:Boolean;
   _CurrentMarketerID,
   _MarketerID:integer;
   _OpenedWordFile:String;
   _OpenedExcelFile:String;
   _OrgID: integer;
   _AccessID:integer;
   _TempPath:String;
   _EXEDIR: string;
   _Word_Is_Opened : boolean;
   _ExcelFileName,
   _WordFileName:String;
   _Today :String;
   _SoftTitle:String;
   _ApplicationPath:String;
   {Ranjbar}
   _IsServer : Boolean;
   _CanConnectToDabirDB : Boolean;
   _insertMode: Boolean;
   _AreYouYeganeh: string;
   _SoftVersionDB:String;
   _ActiveUserRefreshTime:Integer;
   _ProjectIsLoaded:boolean; // Amin 1391/12/26
  { TODO -oparsa : 14030204 }
  _SmsPassWordType2:String;
  _SmsUser : string;
  _SendSMSType2 : Boolean ;
  _SmsTimer :string;
  _SMSCenterNumber : string ;
   arrSmsDetails: array of TSmsDetails;
  _UserPinFollowUp : Boolean ;
  _ThemTypeColor : Integer ;
  _Color1: Tcolor ;
  _Color2: Tcolor ;
  _Color3: Tcolor ;
  _Color4: Tcolor ;  
  _ColorThem : string ;
  _UserAccAcess : Boolean ;
  _UserFactorAccess : Boolean ;
  _UserAssesstAcess : Boolean ;
  _UserCallAccess : Boolean ;
  _UserEditVersion : Boolean ;
  _PercentScale : Integer ;
  _ManagerSale : Boolean ;
  _ManagerProduction : Boolean ;
  _ManagerSupport : Boolean ;
  _ManagerOfficial : Boolean ;
  _IsSystemUserID : Integer;
  _SoftVersion : string;
  _ComputerName : string;
  _IpAddress : string;

   SF_Bdate        : String;
   SF_EDate        : String;
   SF_Marketerid   : Integer;
   SF_DS           : Integer;
   SF_ActionTypeID : byte;
   SF_BSuccess     : byte;
   SF_ESuccess     : byte;
   SF_Comment_like : string;
   SF_DoneComment_like : string;
   SF_CommentTypeOr    : boolean;
   SF_UserID           : Integer;
   SF_GroupID          : Integer ;
   SF_CustomerID       : String;
   SF_CustomerName     : String;
   SF_TimeInterval     : Integer;
   SF_CompaginID     : Integer;
   SF_StateID     : Integer;

  { TODO -oparsa : 14030204 }
   //---
//1    gContractPath :String;
Const
     ProductID = 'Y_Crm';
    // _SoftVersion = '4.0.0.0' ;//'2.4.';
    _LastUpdate = '1403/07/16'; //'1393/08/20';
    CrmRegistryKey = 'Software\Yeganeh\CRM' ; 
    procedure SetQueryDataSet(var DataSourceQry :TDataSource;var ReturnQry :TADOQuery;SQLText :String;QryConnection:TADOConnection;Field0Alignment :Boolean = False);
    Function  AddImageField(Field:TField;Dlgfilter:String):String;

Type
  SmsThread = Class(TThread)
  private
  protected
  procedure Execute; override;
  procedure UpdateOutBox;
end;

implementation

Uses RegForm, USearchTitle, Uconnect, LogOn, YShamsiDate, UCalenderView,
     MainU, YInputQuery,UserTableContentFm, BusinessLayer, StrUtils,
  Telinputunit, SmsCenter1, Variants;


{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
Var
   DongleProductCode,DongleErrorCode : Integer;
begin

   _SoftVersion := getDelphiVer;
   _PercentScale := 100 ;
   _EXEDIR := ExtractFilePath(Application.ExeName);
   if Trim(YeganehConnection.ConnectionString) <> '' then
      ShowMessage('·ÿ›« »—œ«‘ Â ‘Êœ : ConnectionString');
   Qry_CloseAllQry(Dm);


   FocusedColor := $00FFEFDF;
   Connect; //Fconnect ›—„
   RunSetting.ExecSQL;

////////////////////////////
   RunCRMScripts(dm.YeganehConnection);


////////////////////////////
   {Ranjbar}
   _IsServer := ( UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)) );
   //---
   _Today := ShamsiString(GetServerDate);

//   ShowMessage(_Today);

   //çﬂ ﬂ—œ‰ ﬁ›· ”Œ  «›“«—Ì
   //ShowMessage('ﬁ›· ”Œ  «›“«—Ì ﬁ—«— œ«œÂ ‘Êœ');

  //DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,80,_SoftTitle,False,DongleProductCode);
  _AreYouYeganeh :=Qry_GetResult(' Select Isnull((SELECT Value FROM dbo.Settings  WITH(NOLOCK)  WHERE VariableName =''Yeganeh'' AND UserID=-1),''False'') ',dm.YeganehConnection);

   // DongleErrorCode:=0;
   IF UpperCase(_AreYouYeganeh) =UpperCase('True') Then DongleErrorCode:=0;
   if DongleErrorCode > 0 then
   begin
      ShowMessage(DongleErrorMessage(DongleErrorCode));
      ExitProcess(0);
      Application.Terminate;
      Halt;
   end;

   //Settings »Â Setting  »œÌ· ‰«„ ÃœÊ·
   Qry_SetResult('if Exists(Select Name from SysObjects Where xType = ''U'' And Name = ''Setting'') ' +
                 ' EXEC sp_rename N''[dbo].[Setting]'', N''Settings'', N''object'' ',dm.YeganehConnection);



    
   DM.Scripts_Run(Dm.YeganehConnection,'ScriptsNumber',ServerName); // «»⁄ «Ì‰ ÌÊ‰Ì 


   SystemSettings.Open;

   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   TRY
     _SoftVersionDB :='00';
     _SoftVersionDB := Qry_GetResult(' SELECT Value FROM dbo.Settings  WITH(NOLOCK) WHERE VariableName =''ScriptsNumber'' AND UserID=-1',dm.YeganehConnection);
   EXCEPT
   END;

   { TODO -oparsa : 14030126 }
   Qry_SetResult(' Declare @Date Char(10)   '+
     ' set @Date = dbo.Shamsi(GETDATE())  '+
     ' Update CustomerProduct set ContractFinished = 0 , DateUpDateFinishedContractProducts = @Date  WHERE DateUpDateFinishedContractProducts <> @Date '+
     ' Update CustomerProduct set ContractFinished = 1  , DateUpDateFinishedContractProducts = @Date  FROM CustomerProduct '+
     ' INNER JOIN (       '+
     ' SELECT ProductID,CustomerID FROM dbo.[CONTRACT] WITH(NOLOCK)  GROUP BY ProductID,CustomerID   '+
     ' HAVING max(CONTRACT.EndDate) < @Date   '+
     '  AND not ProductID IS NULL) t  '+
     '  ON (t.ProductID = CustomerProduct.ProductID AND t.CustomerID = CustomerProduct.CustomerID ) '+
     ' WHERE DateUpDateFinishedContractProducts <> @Date ',dm.YeganehConnection);

   Qry_SetResult('UPDATE dbo.Customer   '+
                 ' SET FinishedContractProducts =  dbo.fn_FinishedContractBycustomerId(customerid) ,   '+
                 ' ProductsSTR = dbo.fn_ProductByCustomerID(customerid) ,  '+
                 ' ProductsIdSTR = dbo.fn_ProductIdByCustomerID(customerid)  ',dm.YeganehConnection);


   { TODO -oparsa : 14030126 }


   ResulutionGet;

   LoginForm := TLoginForm.Create(Self);

   LoginForm.ShowModal;

   Citys.Open;

   if _accessID in [4,7,19] then //  ò«—»— ›—Ê‘
   begin
     Product.sql.Text := ' Select * From  dbo.Product  WITH(NOLOCK)  where ISNULL(ShowInSale,0) >0  order by OrderId ' ;

   end
   else
   if _accessID in [10,11] then //  ò«—»— Ê«Õœ «œ«—Ì
   begin
     //

   end;


   Product.Open;
   ActionType.Open;

   Groups.Open;
   Marketer.Open;
   Accesses.Open;
   MarketerAll.Open;

   _WordFileName:='Yeganeh_WORD_FILE.YGN'; //TTT
   _ExcelFileName:='Yeganeh_Excel_FILE.XLS';
   _TempPath:=GetTempDirectory;
   _insertMode:=false;

  _ActiveUserRefreshTime:=GetSystemSetting('EdtSequenceTime');

   {Ranjbar} //ﬁ—«—œ«œ‰ „”Ì— ›«Ì· «Ã—«ÌÌ œ— —ÃÌ” —Ì
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\Yeganeh\CRM','CRMPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\Yeganeh\CRM','CRMPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   //---
  if _ThemTypeColor = 0 then
  begin
    _Color1:=  $00DAF3EC ;
    _Color2:=  $00FDD0E7 ;
    _Color3:=  $00E4AFCA ;
    _Color4:=  $00F9ECF2 ;
  end;
end;

function Tdm.Search(Y:TYwhereEdit):integer;
begin
   SearchAdoDataSet:=TSearchAdoDataSet.Create(nil);
   with SearchAdoDataSet do
   begin
      SearchDataSet:=false;
      TableName:=Y.ListTable;
      CodeField:=y.CodeField;
      TitleField:=y.TitleField;
      SearchF.Connection:=Dm.YeganehConnection;
      ShowModal;
      Result:=SearchResult;
   end;
end;

function ReplaceSpace(param1: widestring): WideString;
var
  I:integer;
begin
  for I:=1 to LENGTH(param1) do
    if (param1[I] = ' ') then
      Result:=Result + '%20'
    else
      Result:=Result + param1[I];
end;

function StrConvertToUTF8Encode(const Str: WideString): UTF8String;
var
  L: Integer;
  Temp: UTF8String;
  TempString:WideString;
begin
  Result     := '';
  TempString := '';

  if STR = '' then
    Exit;

  TempString := ReplaceSpace(str);
  SetLength(Temp, Length(TempString) * 3); // SetLength includes space for null terminator
  L := UnicodeToUtf8(PAnsiChar(Temp), Length(Temp)+1, PWideChar(TempString), Length(TempString));
  if L > 0 then
    SetLength(Temp, L-1)
  else
    Temp := '';
  Result := Temp;
end;

procedure Tdm.Connect;
begin
   Fconnect:=TFconnect.Create(Self);
end;

procedure Tdm.ExecCommand(s:string);
begin
   with ADOCommand do
   begin
      CommandText:=s;
      Execute;
   end;
end;

function Tdm.GetSql(s:String):variant;
begin
   with Command do
   begin
      Close;
      CommandText:=s;
      Open;
      Result := Fields[0].AsVariant;
   end;
end;

function Tdm.GetNewCode:string;
 var i: integer;       s: string;
begin
   i:=GetSql('select isnull(max(Customerno),''0'')+1 from dbo.Customer  WITH(NOLOCK)  where isactive=1 ');
   s:=IntToStr(i);

   if i<1000 then s:='0'+s;
   if i<100  then s:='0'+s;
   if i<10   then s:='0'+s;
 Result:=s;
end;

procedure Tdm.RefreshTemplate;
begin
  with WordTemplateDoc do
   begin
    close;
    Parameters[0].Value:=WordTemplate.Fields[0].Value;
    open;
   end;
end;

procedure Tdm.ReplaceInWord(w:twordapplication;old,new:widestring);
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

procedure tdm.SaveTemplateToFile;
begin
   inherited;
   with WordTemplateDoc,Parameters do
   begin
      Close;
      ParamByName('id').Value := WordTemplateWordTemplateID.AsInteger;
      Open;
      WordTemplateDocWordTemplate.SaveToFile(_TempPath+_WordFileName);
   end;
end;

function Tdm.GetServerTime:string;
begin
   Result:=GetSql('select (convert(char(2),datepart(hour,getdate())) + '':'' + convert(char(2),datepart(minute,getdate())))');
end;

function Tdm.GetServerDate:tdateTime;
begin
  Result:=GetSql('select Getdate()')
end;

procedure tdm.openURL(Url: string);
Var
   TS : string;
begin
   With TRegistry.Create do
      try
         Rootkey := HKEY_CLASSES_ROOT;
         OpenKey('\htmlfile\shell\open\command', False);
         try
            TS := ReadString('');
         except
            TS := '';
         end;
         CloseKey;
      finally
         Free;
      end;
   if TS = '' then
      Exit;
   TS := Copy(TS,Pos('"', TS) + 1, Length(ts));
   TS := Copy(TS,1,Pos('"', TS) - 1);
   ShellExecute(0,'open',PChar(TS),PChar(url),nil,SW_SHOW);
end;


Procedure TDm.Scripts_Run(aADOConnection:TADOConnection;aVariableName:String='ScriptsNumber';aServername:String='');
Var
   P1 , P2:Integer;
   QryText , FileText : string;
   LastScrNum , DataNum , I , J :integer;
   ScrText , ScrTextFile , SubCommand :TStrings;
   TF : TextFile;
   S , TmpScrPath:String;
   Value , ScrFileName :String;
   ADOCommand : TADOCommand;
   HaveError : Boolean;
   ZipFilePath:String;
   ScriptServerName : String;
begin
   //«Ã—«Ì «”ﬂ—ÌÅ  ›ﬁÿ »— —ÊÌ ”—Ê—
   ScriptServerName := Trim(aServername);
   if Pos('\',ScriptServerName) <> 0 then  //Instance œ«—«Ì
      ScriptServerName := Copy(ScriptServerName,1,Pos('\',ScriptServerName)-1);
   if ScriptServerName <> '.' then
      Exit;
   //---

   ScrFileName := ExtractFilePath(Application.ExeName) +'Scripts\Scripts.TXT';
   if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));

   ZipFilePath := ExtractFilePath(Application.ExeName) +'Scripts';
   File_ZipOrUnZip(ZipFilePath,ZipFilePath+'\Scripts.Zip',dtUnZip,'*.*','Yeganeh123');
   Application.ProcessMessages;

   ADOCommand := TADOCommand.Create(Nil);
   ADOCommand.Connection := aADOConnection;
   ADOCommand.CommandTimeout:=1200; //20 œﬁÌﬁÂ

   if FileExists(ScrFileName) then
   begin
      Qry_SetResult('if not Exists(Select * from Syscolumns Where(Name = ''VariableName'')And(iD = Object_ID(''Settings'')) ) '+
                    ' ALTER TABLE dbo.Settings ADD VariableName nvarchar(50) NULL ',aADOConnection);

      //Value := Qry_GetResult('Select Value from Settings where userid= -1 And variableId = '+ IntToStr(aVariableId) ,aADOConnection);
      Value := Qry_GetResult('Select Value from dbo.Settings  WITH(NOLOCK)  where userid= -1 And VariableName = '+ QuotedStr(aVariableName) ,aADOConnection);
{      if Value = '' then
      begin


            Qry_SetResult('Insert into Settings(UserID,VariableName,Value) Values(-1 , ' + QuotedStr(aVariableName) + ',0)'  ,aADOConnection);//”Ì” „Ì
        Value := '0';
      end;      }

      DataNum := StrToIntDef(Value,0);

      ScrText := TStringList.Create;
      ScrTextFile := TStringList.Create;
      SubCommand := TStringList.Create;

      AssignFile(TF , ScrFileName);
      Reset(TF);
      While not Eof(TF) do
      begin
         Readln(TF,S);
         ScrText.Add(S);
      end;
      CloseFile(TF);

      P1 := Pos('[LastNum]=',ScrText.Text);
      LastScrNum := StrToIntDef(Trim( Copy(ScrText.Text ,P1 + Length('[LastNum]='),3 )),0);
      if DataNum = LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         Exit;
      end;

      if DataNum > LastScrNum then
      begin
         if FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         ShowMessage('‘„«—Â «”ﬂ—ÌÅ  œ«Œ· œÌ «»Ì” «“ ‘„«—Â œ«Œ· ›«Ì· „—»ÊÿÂ »Ì‘ — «” . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
         Exit;
      end;

      if DataNum < LastScrNum then
      begin
         For I:=DataNum+1 to LastScrNum do
         begin
            P1 := 0;
            P2 := 0;
            P1 := Pos('[Num]='+IntToStr(I)   , ScrText.Text);
            if p1=0 then Continue;
            if I < LastScrNum then
               P2 := Pos('[Num]='+IntToStr(I+1) , ScrText.Text)-1
            else
               P2 := Length(ScrText.Text)+1;

            ScrTextFile.Text := Trim(Copy(ScrText.Text ,P1 + Length('[Num]='+IntToStr(I)),P2-(P1 + Length('[Num]='+IntToStr(I)))));

            HaveError := True;
            //«Ã—«Ì œ” Ê—« 
            for J:=0 to ScrTextFile.Count-1 do
            begin
               if Trim(UpperCase( ScrTextFile.Strings[J] ))='GO' then
               Begin
                   ADOCommand.CommandText := SubCommand.Text;
                   Try
                      ADOCommand.Execute;
                      Application.ProcessMessages;
                      HaveError := False;
                   Except

                      On E:Exception do
                      begin
                         ShowMessage(E.Message+#13#13+'Œÿ« œ— «Ã—«Ì œ” Ê—«  “Ì— : '+ #13#10 + SubCommand.Text);
                         HaveError := True;
                         Break;
                      end;
                   End;
                   SubCommand.Clear;
               end
                  else
                     SubCommand.Add(ScrTextFile.Strings[J]);
            end;

            if HaveError then
               Break
            else
              ScrTextFile.Clear;
         end;
      end;
            if (value = '0')or(value='') then
                Qry_SetResult('Insert into Settings(UserID,VariableName,Value) Values(-1 , ' + QuotedStr(aVariableName) + ','+IntToStr(LastScrNum)+')'  ,aADOConnection)//”Ì” „Ì
               else
               Qry_SetResult('Update Settings Set Value = '+ IntToStr(LastScrNum){IntToStr(I)} + ' Where VariableName =  ' +
                             QuotedStr(aVariableName) + ' And UserID = -1 ', aADOConnection ) ;//”Ì” „Ì


      if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));
      Application.ProcessMessages;
      if HaveError then
      begin
         ExitProcess(0);
      end
         else
         begin
            WinExec(Pchar(Application.ExeName),0);
            ExitProcess(0);
         end;

   end;
end;


procedure Tdm.RefreshFollowUP(Bdate,Edate:String;Ds:integer;
              ActionTypeID,BSuccess,ESuccess:byte;Comment_like,DoneComment_like: string;MarketerID:integer; CommentTypeOr: boolean; GroupID: integer = 0;CustomerName:String='';CustomerID:String = '0'; TimeInterval : Integer = 0 ; CompaginID : Integer = 0 ; StateID : Integer = 0); // Amin 1391/08/25 Edited
begin

     SF_Bdate        := BDate;
     SF_EDate        := EDate;
     SF_Marketerid   := MarketerID;
     SF_DS           := DS;
     SF_ActionTypeID := ActionTypeID;
     SF_BSuccess     := BSuccess;
     SF_ESuccess     := ESuccess;
     SF_Comment_like := Comment_like;
     SF_DoneComment_like := DoneComment_like;
     SF_CommentTypeOr    := CommentTypeOr;
     SF_UserID           := _UserID;
     SF_GroupID          := GroupID;
     SF_CustomerID       := CustomerID;
     SF_CustomerName     := CustomerName;
     SF_TimeInterval     := TimeInterval;
     SF_CompaginID       := CompaginID ;
     SF_StateID          := StateID ;

  with Select_FollowUP_By_Date do
   begin
     Close;
     Parameters.ParamByName('@BDate').Value           := BDate;
     Parameters.ParamByName('@EDate').Value           := EDate;
     Parameters.ParamByName('@MarketerID').Value      := MarketerID;
     Parameters.ParamByName('@DonStatusID').Value     := DS;
     Parameters.ParamByName('@ActionTypeID').Value    := ActionTypeID;
     Parameters.ParamByName('@BSuccess')        .Value:= BSuccess;
     Parameters.ParamByName('@ESuccess')        .Value:= ESuccess;
     Parameters.ParamByName('@Comment_like')    .Value:= Comment_like;
     Parameters.ParamByName('@DoneComment_like').Value:= DoneComment_like;
     Parameters.ParamByName('@CommentTypeOr').Value   := CommentTypeOr;
     Parameters.ParamByName('@UserID').Value          := _UserID;
     Parameters.ParamByName('@GroupID').Value         := GroupID;
     Parameters.ParamByName('@CustomerID').Value      := StrToInt(CustomerID);
     Parameters.ParamByName('@CustomerName').Value    := CustomerName;
     Parameters.ParamByName('@TimeInterval').Value    := TimeInterval;
     Parameters.ParamByName('@CompaginID').Value      := CompaginID;
     Parameters.ParamByName('@StateID').Value         := StateID;
     Open;
//     try FrViewByCalender.calender; except end;
//     MainForm.StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(RecordCount)
  //   MainForm.StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(Parameters.ParamByName('@CountUniqCustomer').Value) ;
   end;

   {
  with Select_FollowUP_By_date1_CountCustomer do
   begin
     Close;
     Parameters.ParamByName('@BDate').Value           := BDate;
     Parameters.ParamByName('@EDate').Value           := EDate;
     Parameters.ParamByName('@MarketerID').Value      := MarketerID;
     Parameters.ParamByName('@DonStatusID').Value     := DS;
     Parameters.ParamByName('@ActionTypeID').Value    := ActionTypeID;
     Parameters.ParamByName('@BSuccess')        .Value:= BSuccess;
     Parameters.ParamByName('@ESuccess')        .Value:= ESuccess;
     Parameters.ParamByName('@Comment_like')    .Value:= Comment_like;
     Parameters.ParamByName('@DoneComment_like').Value:= DoneComment_like;
     Parameters.ParamByName('@CommentTypeOr').Value   := CommentTypeOr;
     Parameters.ParamByName('@UserID').Value          := _UserID;
     Parameters.ParamByName('@GroupID').Value         := GroupID;
     Parameters.ParamByName('@CustomerID').Value      := StrToInt(CustomerID);
     Parameters.ParamByName('@CustomerName').Value    := CustomerName;
     Parameters.ParamByName('@TimeInterval').Value    := TimeInterval;
     Open;

   end;
   }
end;

procedure Tdm.GetOneDayFollowUP(date:String);
begin
  with OneDayFollowup,Parameters do
   begin

     Close;
     ParamByName('@BDate').Value:=Date;
     ParamByName('@EDate').Value:=Date;
     ParamByName('@MarketerID').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@MarketerID').Value;
     ParamByName('@DonStatusID').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@DonStatusID').Value;
     ParamByName('@ActionTypeID').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@ActionTypeID').Value;
     ParamByName('@BSuccess').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@BSuccess').Value;
     ParamByName('@ESuccess').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@ESuccess').Value;
     ParamByName('@Comment_like').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@Comment_like').Value;
     ParamByName('@DoneComment_like').Value:=Select_FollowUP_By_Date.Parameters.ParamByName('@DoneComment_like').Value;
     Open;

   end;
end;


procedure Tdm.RefreshFollowUP_bydate(Bdate,Edate:String;Ds:integer;MarketerID:integer);
begin
   if _ProjectIsLoaded then    // Amin 1391/12/26
      RefreshFollowUP(Bdate,Edate,Ds,0,0,100,'','',MarketerID, false);  // Amin 1391/08/25
   //MainForm.StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(Select_FollowUP_By_Date.RecordCount)
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

procedure Tdm.OpenWordFile(Filename:string);
var  olv,emp,f,fals,tru:OleVariant;
begin
    emp:='';
    fals:=false;
    tru:=true;
    olv:=wdOpenFormatAuto;

   with WordApplication,Selection do
    begin
     ChangeFileOpenDirectory(ExtractFilePath(Filename));
     f:=ExtractFileName(Filename);;
//     Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
//     Documents.Open(f,fals,tru,tru,emp,emp,tru,emp,emp,olv,emp,tru,tru,tru,tru);
     Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,fals,tru,tru);
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     Visible:=true;
     _OpenedWordFile:=ActiveDocument.Name;
    end;
 end;

procedure Tdm.OpenExcelFile(Filename:string);
var
oE:Variant;
begin
try
    oE := GetActiveOleObject('Excel.Application');
  except
    oE := CreateOleObject('Excel.Application');
  end;
  oE.Workbooks.Open(Filename, false, false);
  oE.Visible := True;
end;


procedure TDm.ApplicationEventsException(Sender: TObject; E: Exception);
var
  AList : TStringList;

begin
  { TODO -o14030617 : parsa }
  AList := TStringList.Create;
  try
     if FileExists(ExtractFilePath(Application.ExeName) + 'CRMErrorLog.txt') then
      AList.LoadFromFile(ExtractFilePath(Application.ExeName) + 'CRMErrorLog.txt');
     AList.Add(_Today + ' ' + TimeToStr(Now) + ' ' + Sender.ClassName + ' ' + Name + ' ' + E.Message);
     AList.SaveToFile(ExtractFilePath(Application.ExeName) + 'CRMErrorLog.txt');
  finally
    FreeAndNil(AList);
  end;

  if (pos('Connection failure',e.Message)<>0 ) or (pos('General network error',e.Message)<>0) then
  begin
    Sleep(10000); //10 second
    try
        if  dm.YeganehConnection.Connected = False then
        begin
          dm.YeganehConnection.Open('yeganehCompany_CRM', IntToY(61));
          dm.YeganehConnection.Connected := True;
        end;
    except
      if MessageDlg(' œ— «— »«ÿ »« ”—Ê— „‘ò· ÊÃÊœ œ«—œ ¬Ì« „«Ì·Ìœ œÊ »«—Â ‰—„ «›“«— —« «Ã—« ‰„«ÌÌœ.',mtConfirmation,[mbyes,mbno],0)=mryes then
      begin
        WinExec(pchar(ExtractFilePath(Application.ExeName) + ExtractFileName(Application.ExeName)),0);
        Application.Terminate;
      end
      else
      begin
        try
          if  dm.YeganehConnection.Connected = False then
          begin
            dm.YeganehConnection.Open('yeganehCompany_CRM', IntToY(61));
            dm.YeganehConnection.Connected := True;
          end;
        except

        end;
      end;

    end;

  end  ;
  { TODO -o14030617 : parsa }

   with ErrorMessage do
    begin
       Close;
       Parameters.ParamByName('@like').Value:=e.Message;
       Open;
        if Recordcount>0 then
        begin
          if ErrorMessageShowMessage.AsBoolean then
            if trim(ErrorMessageFarsiMessage.AsString)='' then
              ShowMessage(e.Message)
             else
             ShowMessage(ErrorMessageFarsiMessage.AsString);
        end
        else
        begin
           ShowMessage(e.Message);
           insert;
           ErrorMessageErrorMessage.AsString:=e.Message;
           ErrorMessageUserCode.AsInteger:=_userid;
           ErrorMessageErrorDate.AsString:=_today;
           post;
        end;
    end;
end;

procedure TDm.MakeLetter(Dataset:Tdataset);
begin
        {
  if (OpenDialog.Execute) then
  begin
   // with Yeganeh_Word do
   // begin
     // Yeganeh_Word.DocumetTemplateFile := ExtractFileName(OpenDialog.Filename);
     // Yeganeh_Word.WordFilePath := ExtractFilePath(OpenDialog.Filename);
     // Yeganeh_Word.Ydataset := Dataset;
    //  Yeganeh_Word.PasteRecords;
   // end;
  end;
       }
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
   FieldByName('variableId').AsInteger:=VariableId;
   FieldByName('value').AsVariant:=value;
   Post;
  end;
 end;
function tdm.GetSystemValue(I:integer):Variant;
begin
 if SystemSettings.Locate('variableId',i,[]) then
 result:=SystemSettings.fieldbyname('value').AsVariant
end;

procedure TDm.Insert_Products(ProductId:integer);
begin
  with insert_ProductCustomer do
   begin
     Parameters.ParamByName('@ProductID').Value:=ProductId;
     Parameters.ParamByName('@CustomerID').Value:=Select_Customer_By_CustomerIDCustomerID.AsInteger;
     ExecProc;
   end;

end;



function TDm.HasProduct(Productid,CustomerID: integer):boolean;
begin
  with Exist_ProductCustomer do
   begin
     Parameters.ParamByName('@ProductID').Value:=Productid;
     Parameters.ParamByName('@CustomerID').Value:=CustomerID;
     ExecProc;
     Result:=Parameters.ParamByName('@Exist').Value;
   end;

end;

procedure TDm.Select_FollowUP_By_CustomerIDAfterInsert(DataSet: TDataSet);
begin
  Select_FollowUP_By_CustomerIDMarketerID.AsInteger:=_MarketerID;
  Select_FollowUP_By_CustomerIDToDoDate.AsString:= _today;//ShamsiIncDate(_today,0,0,1);
  //Select_FollowUP_By_CustomerIDDoneDate.AsString:= _today;
end;

procedure TDm.Select_Contract_By_CustomerIDAfterInsert(DataSet: TDataSet);
begin
Select_Contract_By_CustomerIDMarketerID.AsInteger:=_MarketerID;
end;

procedure WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
begin
end;

Procedure  TDm.Open_Contract_By_Date(FromDate:string;ToDate:string);
begin
   with Dm.Select_Contract_By_Date,parameters do
   begin
      Close;
      ParamByName('@FromDate').value := FromDate;
      ParamByName('@ToDate').value := ToDate;
//      ParamByName('@MarketerID').value := _CurrentMarketerID
      ParamByName('@MarketerID').value:= 0;
      Open;
   end;
end;

procedure TDm.WordApplicationDocumentBeforeClose(ASender: TObject;
  const Doc: _Document; var Cancel: WordBool);
begin
   WordApplication.Disconnect;
end;

function tdm.Get_Sum_Contract_Amount(FromDate:string;ToDate:string):integer;
var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Sum_Contract_Amount';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@FromDate';
      size:= 10;
      Value :=FromDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ToDate';
      size:= 10;
      Value :=ToDate;

    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@MarketerID';
      Value :=_MarketerID

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@amount';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@amount').value;
end;

Procedure  TDm.Open_Report_Contract(where:widestring);
begin
  with Dm.Report_Contract,parameters do
   begin
    Close;
    ParamByName('@where').value:=where;
    Open;
   end;
end;

Procedure  TDM.Open_TimeSheet;
  begin
  with select_TimeSheet,parameters do
   begin
    Close;
    ParamByName('@userID').value:=_userid;
    Open;
   end;
end;

function Tdm.get_Time(minute:integer):string;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_Time';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@minute';
      Value :=minute;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;;
      Direction := pdoutput;
      Name:='@time';
      size:= 5;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@time').value;
end;

Procedure  TDM.Open_Customer(CustomerID: integer);
begin
   with dm.Select_customer_By_CustomerID do
   begin
      Close;
      Parameters.ParamByName('@customerid').Value := CustomerID;
      Open;
   end;
end;

Procedure  tdm.Followup_cancel(Customerid:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Followup_cancel';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@Customerid';
      Value :=Customerid;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Procedure  TDM.Do_task(TaskId:integer;DoneComment:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Do_task';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@TaskId';
      Value :=TaskId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;;
      Direction := pdInput;
      Name:='@DoneComment';
      size:= 2000;
      Value :=DoneComment;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  TDm.Postpone_task(TaskId:integer;days:integer);
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Postpone_task';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@TaskId';
      Value :=TaskId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@days';
      Value :=days;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure  TDM.Update_CustomerNo(CustomerID:integer;CustomerNo:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Update_CustomerNo';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@CustomerID';
      Value :=CustomerID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;;
      Direction := pdInput;
      Name:='@CustomerNo';
      size:= 50;
      Value :=CustomerNo;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

function tDm.Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
begin
YInputQueryF:=TYInputQueryF.Create(self);
  with YInputQueryF do
   begin
     Label1.Caption:=ACaption;
     output.Text:=Adefault;
     Caption:='';
     Color := _Color1 ;
     ShowModal;
     Result:=done;
     Value:=output.Text;
   end;

end;

procedure TDM.ShowAttachments(ADOSP:TADOStoredProc;Add:boolean);
begin
   inherited;
   With ADOSP,FmUserTableContent do
   begin
      if FieldByName('UserTableLinkedID').IsNull then
         if Add then
         begin
            if not(State in [dsedit,dsinsert]) then
               Edit;

            FieldByName('UserTableLinkedID').AsInteger := GetNewUserTableLinkedID;

            if State in [dsedit,dsinsert] then
               Post;
         end
            else
               Exit;

      FmUserTableContent := TFmUserTableContent.Create(Self);
      UserTableLinkedID := FieldByName('UserTableLinkedID').AsInteger;
      ShowModal;
   end;
end;


procedure TDm.GroupsAfterInsert(DataSet: TDataSet);
begin
   GroupsGroupNo.AsString := Qry_GetResult('Select IsNull(Max(GroupNo),0)+1 From Groups ',YeganehConnection);
end;

procedure TDm.GroupsBeforePost(DataSet: TDataSet);
begin
   IFFieldIsEmpty(GroupsGroupNo,'ﬂœ ›⁄«·Ì ');
//   if Is_ActivityCode_Tekrari(GroupsGroupNo.AsString) then
//   begin
//       if Groups.State=dsInsert then
//       begin
//           ShowMessage('ﬂœ Ê«—œ ‘œÂ  ﬂ—«—Ì «” ');
//           Abort;
//           Exit;
//       end;
//   end;
end;

procedure TDm.Select_Customer_By_CustomerIDAfterInsert(DataSet: TDataSet);
begin
   {Ranjbar}
   DM.Select_Customer_By_CustomerIDIsActive.AsBoolean := True;
   DM.Select_Customer_By_CustomerIDGroupId.AsInteger := 5; // 1;
   DM.Select_Customer_By_CustomerIDCustomerStatusID.AsInteger := 1;
   DM.Select_Customer_By_CustomerIDMarketerID.AsInteger := _MarketerID;
   DM.Select_Customer_By_CustomerIDComputerName.AsString := UpperCase(_ComputerName) ;
   DM.Select_Customer_By_CustomerIDIPAddress.AsString    := _IpAddress ;
   //---
end;

procedure TDm.Select_Contract_By_CustomerIDBeforePost(DataSet: TDataSet);
begin
//      Dm.Select_Contract_By_CustomerIDContractImage.LoadFromFile(gContractPath);
end;

procedure SetQueryDataSet(var DataSourceQry :TDataSource;var ReturnQry :TADOQuery;SQLText: String;
  QryConnection: TADOConnection;Field0Alignment :Boolean);

begin
  ReturnQry       := TADOQuery.Create(nil);
  with ReturnQry do
  begin
    CommandTimeout := 1200;
     Close;
     Connection := QryConnection;
     SQL.Text   :=  SQLText;
     Open;
if (Field0Alignment =true)and (RecordCount > 0) then
      Fields[0].Alignment := taRightJustify; 
  end;

      DataSourceQry   := TDataSource.Create(nil);
      DataSourceQry.DataSet := ReturnQry;

end;

Function AddImageField(Field:TField;Dlgfilter:String):String;
var
   i : integer;
   PathText : string;
begin

 // with TOpenDialog.Create(nil) do
  with TOpenDialog.Create(nil) do
  begin
      Filter:= Dlgfilter;
      if Execute then
      begin
          if not(Field.DataSet.State in [dsinsert,dsedit]) then
                Field.DataSet.Edit;
        try
          try

             if FileExists(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename))then
             begin
               SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)), false);
               DeleteFile(pchar(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)));
             end;

             if CopyFileW(dm.replacePWC(dm.StringToPWide(filename,i)), dm.StringToPWide(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename),i), False) then
                PathText :=_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)
             else
             if CopyFileW(dm.StringToPWide(filename,i), dm.StringToPWide(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename),i), False) then
                PathText := _ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)
             else
                ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
                             (*
              //ShowMessage('before copy');
              //CopyFile(PAnsiChar(AnsiString(FileName)),PAnsiChar(AnsiString('D:\YeganehContractTemp'+ExtractFileExt(FileName))),false);
              //ShowMessage('after copy');
              TBlobField(Field).LoadFromFile(FileName);
              //ShowMessage('after load');
              //ShowMessage('before delete');
              //DeleteFile(PAnsiChar(AnsiString('D:\YeganehContractTemp'+ExtractFileExt(FileName))));
              //ShowMessage('after delete');
              Result := ExtractFileExt(FileName);
                         *)
              TBlobField(Field).LoadFromFile(PathText);
              Result := ExtractFileExt(PathText);

          except on e:exception do
              //ShowMessage(e.Message);
              ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
          end;
        finally
         if FileExists(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename))then
         begin
           SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)), false);
           DeleteFile(pchar(_ApplicationPath+'tmpAttachCRMFile'+ExtractFileExt(filename)));
         end;
        end;
      end;
  end;
end;

procedure TDm.DStateDataChange(Sender: TObject; Field: TField);
begin
  with CitysFilterByState do
  begin
    Close;
    Parameters.ParamByName('StateID').Value :=  StateStateID.Value;
    open;
  end;
end;

Function TDm.MakeFilterResult :Boolean;
var rtn:Boolean;

begin
rtn := True;
if Trim(gsrcContactNumberm) <> '' then
     rtn:= (pos(gsrcContactNumberm,CustomerPhone.AsString) > 0 )
                         or (pos(gsrcContactNumberm,CustomerWorkPhone1.AsString) > 0 )
                             or (pos(gsrcContactNumberm,CustomerFaxNumber.AsString) > 0 )
                               or (pos(gsrcContactNumberm,CustomerMobilePhone.AsString) > 0 );
if (Trim(gsrcWhere) <> '')and(rtn)  then
  if Is_Integer(Trim(gsrcWhere)) then
            rtn := (pos(gsrcWhere,CustomerCustomerID.AsString) > 0)
                  or (pos(gsrcWhere,CustomerPostalCode.AsString) > 0)
                      or (pos(gsrcWhere,CustomerCustomerNo.AsString) > 0)
 else
     rtn := (pos(gsrcWhere,CustomerPersonTitle.AsString) > 0)
              or (pos(gsrcWhere,CustomerCompanyname.AsString) > 0)
              or (pos(gsrcWhere,CustomerTreater.AsString) > 0)
              or (pos(gsrcWhere,CustomerAddress.AsString) > 0)
              or (pos(gsrcWhere,CustomerNotes.AsString) > 0);

if (Trim(gsrcEmail) <> '')and(rtn)  then
     rtn := (pos(gsrcEmail,CustomerEmailAddress.AsString) > 0);
if (gsrcCustomerStatusId <> 0)and(rtn)  then
     rtn := gsrcCustomerStatusId =  CustomerCustomerStatusID.Value;

if (gsrcProductId <> 0)and(rtn)  then
 begin

//      Connection := dm.YeganehConnection;
//      SQL.Text := 'SELECT CustomerID FROM  CustomerProduct WHERE ProductID = '+IntToStr(gsrcProductId);
//      Open;
//      rtn := qryCustomerProduct.Locate('CustomerId',CustomerCustomerID.Value,[]);
        rtn := pos(','+IntToStr(gsrcProductId)+',',CustomerProductsID.AsString+',') > 0;// qryCustomerProduct.Locate('CustomerId',CustomerCustomerID.Value,[]);
//        Close;
 end;

if (gsrcGroupId <> 0)and(rtn)  then
     rtn := gsrcGroupId =  CustomerGroupId.Value;

if (gsrcStateId <> 0)and(rtn)  then
       rtn := CitysFilterByState.Locate('CityId',CustomerCityId.value,[]);

if (gsrcCityId <> 0)and(rtn)  then
     rtn := gsrcCityId =  CustomerCityId.Value;



if  gsrchOnlyMe then
    rtn := (CustomerMarketerID.Value = _MarketerID);

   Result :=rtn;
end;
procedure TDm.Select_FollowUP_By_CustomerIDBeforePost(DataSet: TDataSet);
begin
  Select_FollowUP_By_CustomerID.FieldByName('CustomerId').AsInteger := _gCustomerID;
//  Select_FollowUP_By_CustomerIDToDoDate.Value :=  _ToDoDate;
//  Select_FollowUP_By_CustomerIDDoneDate.Value :=  _DoneDate;
end;

procedure TDm.CustomerCalcFields(DataSet: TDataSet);
begin
      CustomerRecordNumber.Value := abs(Customer.RecNo);

   if DataSet.Eof then
       CustomerRecordNumber.Value := DataSet.RecordCount;

end;

function TDm.Is_ActivityCode_Tekrari(GroupsNo: String): Boolean;
begin
  Result:=False;
  qtemp.Close;
  qtemp.SQL.Clear;
  qtemp.SQL.Add('SELECT COUNT(GroupID) AS Tedad FROM Groups WHERE LTRIM(RTRIM(GroupNo))='+QuotedStr(Trim(GroupsNo)));
  qtemp.Open;
  if not qtemp.IsEmpty then
     if qtemp.FieldByName('Tedad').AsInteger>1 then Result:=True;
end;

procedure TDm.GroupsPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  if PosEx('ﬂœ  ﬂ—«—Ì',E.Message)>0 then
    Groups.Cancel;
end;

Function TDm.SearchTable(Ads1:TDataSet;
CodeField,TitleField:string):integer;
Begin
  SearchAdoDataSet:=TSearchAdoDataSet.Create(self);
  SearchAdoDataSet.CodeField:=CodeField;
  SearchAdoDataSet.TitleField:=TitleField;
  With SearchAdoDataSet do
   Begin
    SearchDataSet:=TRUE;
    DSForm.DataSet:=Ads1;
    ShowModal;
    Result:=SearchResult;
   End;
End;

Procedure TDm.RunCRMScripts(aADOConnection:TADOConnection);
Var
   P1 , P2:Integer;
   QryText , FileText : string;
   LastScrNum , DataNum , I , J :integer;
   ScrText , ScrTextFile , SubCommand :TStrings;
   TF : TextFile;
   S , TmpScrPath:String;
   Value , ScrFileName :String;
   ADOCommand : TADOCommand;
   HaveError : Boolean;
   ZipFilePath:String;
begin
   ScrFileName := ExtractFilePath(Application.ExeName) +'Scripts\Scripts.TXT';
   if FileExists(ScrFileName) then
      DeleteFile(pchar(ScrFileName));

   ZipFilePath := ExtractFilePath(Application.ExeName) +'Scripts';
   File_ZipOrUnZip(ZipFilePath,ZipFilePath+'\Scripts.Zip',dtUnZip,'*.*','Yeganeh123');
   Application.ProcessMessages;

   ADOCommand:=TADOCommand.Create(Nil);
   ADOCommand.Connection := aADOConnection;
   ADOCommand.CommandTimeout:=1200; //20 I????

   if FileExists(ScrFileName) then
   begin
      Value := Qry_GetResult('Select Value from Settings where userid= -1 And variableName = ''ScriptsNumber''', aADOConnection);//???E??
      if Value = '' then
      begin
         Qry_SetResult('Insert InTo Settings(UserID,VariableName,Value) Values(-1,''ScriptsNumber'',0 )'  ,aADOConnection);//???E??
         Value := '0';
      end;
      DataNum := StrToIntDef(Value,0);
      ScrText := TStringList.Create;
      ScrTextFile := TStringList.Create;
      SubCommand := TStringList.Create;
      AssignFile(TF , ScrFileName);
      Reset(TF);
      While not Eof(TF) do
      begin
         Readln(TF,S);
         ScrText.Add(S);
      end;
      CloseFile(TF);

      P1 := Pos('[LastNum]=',ScrText.Text);
      LastScrNum := StrToIntDef(Trim( Copy(ScrText.Text ,P1 + Length('[LastNum]='),3 )),0);

      //if DataNum=LastScrNum then
      //Exit;

      IF DataNum = LastScrNum then
      Begin
         IF FileExists(ScrFileName) then
            DeleteFile(pchar(ScrFileName));
         Exit;
      End;

      IF DataNum > LastScrNum Then
      Begin
         if FileExists(ScrFileName) Then
            DeleteFile(pchar(ScrFileName));
         ShowMessage('‘„«—Â «”ﬂ—ÌÅ  œ«Œ· »«‰ﬂ «ÿ·«⁄« Ì «“ ‘„«—Â «”ﬂ—ÌÅ  œ«Œ· ›«Ì· „—»ÊÿÂ »Ì‘ — «” .·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');
         Exit;
      End;
      SubCommand.Clear;
      IF DataNum < LastScrNum Then
      Begin
         For I:=DataNum+1 to LastScrNum do
         Begin
            P1 := 0;
            P2 := 0;
            P1 := Pos('[Num]='+IntToStr(I)   , ScrText.Text);
            IF I < LastScrNum then
               P2 := Pos('[Num]='+IntToStr(I+1) , ScrText.Text)-1
            Else
               P2 := Length(ScrText.Text)+1;

            ScrTextFile.Text := Trim(Copy(ScrText.Text ,P1 + Length('[Num]='+IntToStr(I)),P2-(P1 + Length('[Num]='+IntToStr(I)))));

            HaveError := False;
            //C??C? I?E??CE
            for J:=0 to ScrTextFile.Count-1 do
            begin
               if Trim(UpperCase( ScrTextFile.Strings[J] ))='GO' then
               Begin
                   ADOCommand.CommandText := SubCommand.Text;
                   Try
                      ADOCommand.Execute;
                      Application.ProcessMessages;
                   Except
                      On E:Exception do
                      begin
                         ShowMessage(E.Message+#13#13+'Œÿ« œ— «Ã—«Ì œ” Ê—«  “Ì—: '+ #13#10 + SubCommand.Text);
                         InputBox('','',SubCommand.Text);
                         HaveError := True;
                         Break;
                      end;
                   End;
                   SubCommand.Clear;
               end
                  else
                     SubCommand.Add(ScrTextFile.Strings[J] );
            end;
            if HaveError then
               Break
            else
               Qry_SetResult('Update Settings Set Value = '+ IntToStr(I) + ' Where VariableName = ''ScriptsNumber'' And UserID = -1 ', aADOConnection ); //???E??
            ScrTextFile.Clear;
         end;
      end;
      if Assigned(ScrText) then
        FreeAndNil(ScrText);
      if Assigned(ScrTextFile) then
        FreeAndNil(ScrTextFile);
      if Assigned(ADOCommand) then
        FreeAndNil(ADOCommand);

      DeleteFile(pchar(ScrFileName));
      Application.ProcessMessages;
      if HaveError then
      begin
         ExitProcess(0);
      end
         else
         begin
            WinExec(Pchar(Application.ExeName),0);
            ExitProcess(0);
         end;
   end
//     else
//        ShowMyMessage('Â‘œ«—','›«Ì·' +'  Scripts.txt  '+'Ì«›  ‰‘œ',[mbOK],mtWarning);
end;


procedure TDm.Select_Customer_By_CustomerIDBeforePost(DataSet: TDataSet);
var
  i:Integer;
begin
  //ShowMessage(QGetOldValue2);
  if Select_Customer_By_CustomerID.State=dsEdit then
      if (QGetOldValue2<>'„‘ —Ì ﬁÿ⁄Ì') then
         if (Select_Customer_By_CustomerIDCustomerStatusTitle.AsString='„‘ —Ì ﬁÿ⁄Ì') then
             SendSMS;


  if Select_Customer_By_CustomerID.State=dsInsert then
      if (Select_Customer_By_CustomerIDCustomerStatusTitle.AsString='„‘ —Ì ﬁÿ⁄Ì') then
            SendSMS;


  for i:=0 to PropertiesForm.YchecklistBox1.Count-1 do
     if PropertiesForm.YchecklistBox1.Checked[i] then
         if (PropertiesForm.YchecklistBox1.codes[i] in [2,6,10,17])  then
              Exit;
  if (DataSet.State=dsInsert) and (
                                    (Select_Customer_By_CustomerIDGroupTitle.AsString='„‘ —Ì')
                                      or
                                    (Select_Customer_By_CustomerIDGroupTitle.AsString='‰„«Ì‰œêÌ')
                                      or
                                    (Select_Customer_By_CustomerIDGroupTitle.AsString='Â„ò«—«‰')
                                      or
                                    (Select_Customer_By_CustomerIDGroupTitle.AsString='œ«‰‘ê«Â Â«Ì ⁄·Ê„ Å“‘')
                                      or
                                    (Select_Customer_By_CustomerIDGroupTitle.AsString='œ«‰‘ê«Â Â«Ì Ê“«—  ⁄·')
                                    )

  then
  begin
      if Is_User_In_SequenceList then
      begin
           QUpdUsersSeqTable.Close;
           QUpdUsersSeqTable.SQL.Clear;
           QUpdUsersSeqTable.SQL.Add('UPDATE UsersSequence');
           QUpdUsersSeqTable.SQL.Add('SET Active = 0');
           QUpdUsersSeqTable.ExecSQL;

           QUpdUsersSeqTable.Close;
           QUpdUsersSeqTable.SQL.Clear;
           QUpdUsersSeqTable.SQL.Add('UPDATE UsersSequence');
           QUpdUsersSeqTable.SQL.Add('SET Active = 1');
           QUpdUsersSeqTable.SQL.Add('WHERE ID='+IntToStr(GetUserSequenceID));
           QUpdUsersSeqTable.ExecSQL;
           Dm.QGetActiveUser.Close;
           Dm.QGetActiveUser.Open;
           MainForm.StatusBar1.Panels[3].Text:='‰Ê» :'+QGetActiveUserTitle.AsString;
      end;
  end;
end;

function TDm.GetComputerNetName: string;
var
  buffer: array[0..255] of char;
  size: dword;
begin
  size := 256;
  if GetComputerName(buffer, size) then
    Result := buffer
  else
    Result := ''

end;

function TDm.GetUserWindowsUser: string;
Var
   UserName : string;
   UserNameLen : Dword;
Begin
   UserNameLen := 255;
   SetLength(userName, UserNameLen) ;
   If GetUserName(PChar(UserName), UserNameLen) Then
     Result := Copy(UserName,1,UserNameLen - 1)
   Else
     Result := 'Unknown';

end;

function TDm.Is_User_In_SequenceList: Boolean;
begin
  Result:=False;
  QIsUserInSequenceList.Close;
  QIsUserInSequenceList.SQL.Clear;
  QIsUserInSequenceList.SQL.Add('SELECT ID FROM UsersSequence WHERE UsersID='+IntToStr(_UserID));
  QIsUserInSequenceList.Open;
  if not QIsUserInSequenceList.IsEmpty then Result:=True;
end;

function TDm.GetUserSequenceID: Integer;
begin
  QGetUserSeqID.Close;
  QGetUserSeqID.SQL.Clear;
  QGetUserSeqID.SQL.Add('SELECT UsersID FROM UsersSequence WHERE ACTIVE=1');
  QGetUserSeqID.Open;

  if QGetUserSeqID.IsEmpty then
  begin
      QGetUserSeqID.Close;
      QGetUserSeqID.SQL.Clear;
      QGetUserSeqID.SQL.Add('SELECT ID FROM UsersSequence');
      QGetUserSeqID.SQL.Add('WHERE sequence in (SELECT MIN(sequence) FROM UsersSequence WHERE UsersID<>'+IntToStr(_UserID)+')');
      QGetUserSeqID.Open;
      if QGetUserSeqID.IsEmpty then Result:=0 else Result:=QGetUserSeqID.FieldValues['ID'];
  end
  else
  begin
     if QGetUserSeqID.FieldValues['UsersID']=_UserID then
     begin
          QGetUserSeqID.Close;
          QGetUserSeqID.SQL.Clear;
          QGetUserSeqID.SQL.Add('SELECT ID FROM UsersSequence');
          QGetUserSeqID.SQL.Add('WHERE sequence in (SELECT MIN(sequence) FROM UsersSequence WHERE UsersID<>'+IntToStr(_UserID)+' AND (sequence>'+IntToStr(GetCurrentSeq)+'))');
          QGetUserSeqID.Open;
          if not QGetUserSeqID.IsEmpty then
          begin
             Result:=QGetUserSeqID.FieldValues['ID'];
          end
          else
          begin
              QGetUserSeqID.Close;
              QGetUserSeqID.SQL.Clear;
              QGetUserSeqID.SQL.Add('SELECT ID FROM UsersSequence');
              QGetUserSeqID.SQL.Add('WHERE sequence in (SELECT MIN(sequence) FROM UsersSequence WHERE UsersID<>'+IntToStr(_UserID)+')');              
              QGetUserSeqID.Open;
              if not QGetUserSeqID.IsEmpty then Result:=QGetUserSeqID.FieldValues['ID'] else Result:=0;
          end;
     end
     else
     begin
         // ÂÌç « ›«ﬁÌ ‰»«Ìœ »Ì«› œ çÊ‰ ò«—»— ›⁄«· ‘Œ’ œÌê—Ì «”  Ê·Ì Ìò ‘Œ’ œÌê— ÃÊ«» œ«œÂ «” 
     end;
  end;
end;

function TDm.GetCurrentSeq: Integer;
begin
  Result:=0;
  QGetCurrentSeq.Close;
  QGetCurrentSeq.SQL.Clear;
  QGetCurrentSeq.SQL.Add('SELECT sequence FROM UsersSequence WHERE UsersID='+IntToStr(_UserID));
  QGetCurrentSeq.Open;
  if not QGetCurrentSeq.IsEmpty then Result:=QGetCurrentSeq.FieldValues['sequence'];
end;

function TDm.SmsSettingIsCorrect: Boolean;
begin
  Result:=False;
  if (Length(Trim(_TerminalID))>0) and (Length(Trim(_SmsPassWord))>0) then
      Result:=True;
end;

function TDm.QGetOldValue2: String;
begin
  Result:='';
  QGetOldValue.Close;
  QGetOldValue.SQL.Clear;
  QGetOldValue.SQL.Add('SELECT cs.CustomerStatusTitle FROM dbo.Customer c  WITH(NOLOCK) ');
  QGetOldValue.SQL.Add('INNER JOIN dbo.CustomerStatus cs  WITH(NOLOCK)  ON cs.CustomerStatusID = c.CustomerStatusID');
  QGetOldValue.SQL.Add('WHERE c.CustomerID='+IntToStr(Select_Customer_By_CustomerIDCustomerID.AsInteger));
  QGetOldValue.Open;

//  ShowMessage(QGetOldValue.SQL.Text);
//  ShowMessage(Select_Customer_By_CustomerIDCustomerStatusTitle.AsString);


  if not QGetOldValue.IsEmpty then Result:=QGetOldValue.FieldValues['CustomerStatusTitle'];

end;

procedure TDm.InsertLog;
begin
  QTMP.Close;
  QTMP.SQL.Clear;
  QTMP.SQL.Add('INSERT INTO SMSLogs');
  QTMP.SQL.Add('(SentDate,SentTime,CustomerID,SMSGroupSID,SMSSubGroupsID,Message,');
  QTMP.SQL.Add('SenderUserID,SenderWorkStationName,SenderWinorDomainUserName,');
  QTMP.SQL.Add('MobileNo,Comment)');
  QTMP.SQL.Add('VALUES');
  QTMP.SQL.Add('(');
  QTMP.SQL.Add(QuotedStr(_Today));
  //QTMP.SQL.Add(QuotedStr(TimeToStr(Time)));
  QTMP.SQL.Add(','+'''12:12''');
  QTMP.SQL.Add(','+IntToStr(Select_Customer_By_CustomerIDCustomerID.AsInteger));
  QTMP.SQL.Add(','+'0');
  QTMP.SQL.Add(','+'0');
  QTMP.SQL.Add(','''+qryGetAutoTextAutoText.AsString+'''');
  QTMP.SQL.Add(','+IntToStr(_UserID));
  QTMP.SQL.Add(','+QuotedStr(_WorkSationName));
  QTMP.SQL.Add(','+QuotedStr(_WinOrDomainUserName));
  QTMP.SQL.Add(','+Select_Customer_By_CustomerIDMobilePhone.AsString);
  QTMP.SQL.Add(','+'''»«»  „‘ —Ì ﬁÿ⁄Ì ‘œ‰''');
  QTMP.SQL.Add(')');

 // ShowMessage(QTMP.SQL.Text);

  QTMP.ExecSQL;

end;

procedure TDm.SendSMS;
var
  Rio:SmsCenter;
begin
      if (Select_Customer_By_CustomerIDGroupTitle.AsString='„‘ —Ì')
                    or
         (Select_Customer_By_CustomerIDGroupTitle.AsString='‰„«Ì‰œêÌ')
                    or
         (Select_Customer_By_CustomerIDGroupTitle.AsString='Â„ò«—«‰')
                    or
         (Select_Customer_By_CustomerIDGroupTitle.AsString='œ«‰‘ê«Â Â«Ì ⁄·Ê„ Å“‘')
                    or
         (Select_Customer_By_CustomerIDGroupTitle.AsString='œ«‰‘ê«Â Â«Ì Ê“«—  ⁄·')
      then
      begin
         qryGetAutoText.Close;
         qryGetAutoText.Open;
         if not qryGetAutoText.IsEmpty then
         begin
             if _SendSMS then
             begin
                 try
                   Rio:=GetSmsCenter(True,'',nil);
                   Rio.snedOneSms(_TerminalID,_SmsPassWord,Select_Customer_By_CustomerIDMobilePhone.AsString,qryGetAutoTextAutoText.AsString);
                 except
                     ShowMessage('Œÿ« œ— «—”«· ÅÌ«„ò');
                 end;
                 InsertLog;
             end;
         end
         else
                ShowMessage('«» œ« „ ‰ « Ê„« Ìò —«  ‰ŸÌ„ ‰„«ÌÌœ');
      end;
end;

procedure TDm.MarketerBeforePost(DataSet: TDataSet);
begin
        IF Marketer.State=dsInsert THEN
        begin
            QCheckMarketerCode.Close;
            QCheckMarketerCode.SQL.Clear;
            QCheckMarketerCode.SQL.Add('SELECT MarketerNo FROM dbo.Marketer  WITH(NOLOCK) ');
            QCheckMarketerCode.SQL.Add('WHERE MarketerNo='+MarketerMarketerNo.AsString);
            QCheckMarketerCode.Open;
            if not QCheckMarketerCode.IsEmpty then
            begin
               ShowMessage('òœ »«“«—Ì«» ﬁ»·«  ⁄—Ì› ‘œÂ «” ');
               Abort;
            end;
        end;

        IF Marketer.State=dsEdit THEN
        begin
            if MarketerMarketerNo.OldValue<>MarketerMarketerNo.NewValue then
            begin
                QCheckMarketerCode.Close;
                QCheckMarketerCode.SQL.Clear;
                QCheckMarketerCode.SQL.Add('SELECT MarketerNo FROM dbo.Marketer  WITH(NOLOCK) ');
                QCheckMarketerCode.SQL.Add('WHERE MarketerNo='+MarketerMarketerNo.AsString);
                QCheckMarketerCode.Open;
                if not QCheckMarketerCode.IsEmpty then
                begin
                   ShowMessage('òœ »«“«—Ì«» ﬁ»·«  ⁄—Ì› ‘œÂ «” ');
                   Abort;
                end;
            end;
        end;
end;

procedure TDm.Select_FollowUP_By_CustomerIDAfterOpen(DataSet: TDataSet);
begin
   // Amin 1391/10/18 Start
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@CustomerID').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@CustomerID'];
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@OrgID').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@OrgID'];
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@DoneDate').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@DoneDate'];
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@ToDoDate').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@ToDoDate'];
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@MarketerID').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@MarketerID'];
   Select_FollowUP_By_CustomerID2.Parameters.ParamByName('@DoneStatusID').Value := Select_FollowUP_By_CustomerID.Parameters.ParamValues['@DoneStatusID'];
   // Amin 1391/10/18 End
end;

procedure TDm.DSelect_FollowUP_By_CustomerIDDataChange(Sender: TObject;
  Field: TField);
begin
   // Amin 1391/10/18 Start
   if CanDataChange then
   begin
      Select_FollowUP_By_CustomerID2.Close;
      if Select_FollowUP_By_CustomerID2.Filtered then
         Select_FollowUP_By_CustomerID2.Filtered:= false;

      if (Select_FollowUP_By_CustomerID.Active)and(Select_FollowUP_By_CustomerIDFollowUpID.Value <> Null) and
         (Select_FollowUP_By_CustomerID.RecNo >= 0)then
      begin
         Select_FollowUP_By_CustomerID2.Filter := 'ParentFollowUpID = ' + Dm.Select_FollowUP_By_CustomerIDFollowUPID.AsString;
         Select_FollowUP_By_CustomerID2.Open;
         Select_FollowUP_By_CustomerID2.Filtered := true;
      end;
   end;
   // Amin 1391/10/18 End
end;

function Tdm.Post(param1:string): string;
var
  lHTTP: TIdHTTP;
  lParamList: TStringList;
begin
  try
    if (param1 <> Null) and (Trim(param1)<>'') and (Pos('&',param1) > 0) then
    begin
      lParamList := TStringList.Create;
      lParamList.Add('id=2');
      lHTTP := TIdHTTP.Create(nil);
      lHTTP.MaxLineLength:=16384;
      Result := lHTTP.Post(param1,lParamList);
      lHTTP.Free;
      lParamList.Free;
    end;
  except on e:Exception do
    ShowMessage('Error POST :' + e.Message);
  end;
end;

procedure Tdm.SendSmsToOutBox(SmsNumber, SmsText: String);
Var
  qry :TADOQuery;
begin
  if not (_SendSMSType2) then
    abort;
  qry:= TADOQuery.Create(self);
  qry.Connection:=YeganehConnection;
  qry.CommandTimeout := 1200;
  qry.SQL.Text:='insert into Outbox (SmsNumber,SmsText) values( '+QuotedStr( SmsNumber)+ ','+QuotedStr( SmsText)+')';
  qry.ExecSQL;
  qry.Free;
end;

{ SmsThread }

procedure SmsThread.Execute;
Var
  i:integer;
  qry:TADOQuery;
  IsSend,res,url:String;
begin
  qry:=TADOQuery.Create(nil);
  qry.Connection:=dm.YeganehConnection;
  qry.CommandTimeout := 1200;

  if _SmsUser = '' then
   Terminate;
  if _SmsPassWord = '' then
   Terminate;
  if _SMSCenterNumber = '' then
   Terminate;

  for i :=0 to Length(arrSmsDetails)-1 do
  begin

    res:='';
    url :='http://parsasms.com//tools/urlservice/send/?username='+dmu._SmsUser+'&password='+dmu._SmsPassWordType2
          +'&from='+dmu._SMSCenterNumber+'&to='+arrSmsDetails[i].SmsPhone+'&message='+StrConvertToUTF8Encode(arrSmsDetails[i].SmsText);
    try
      res:=dm.POST(url);
    except
      res:='Œÿ« œ— »—ﬁ—«—Ì «— »«ÿ';
    end;

    if StrToIntDef( res,0)>1000 then
      IsSend:='1'
    else
      IsSend:='0';
    qry.SQL.Text:='update OutBox set InProcess=0 ,IsSend='+IsSend+ ' ,SmsStatus='+QuotedStr(res)+' where outboxid= '+vartostr(arrSmsDetails[i].id);
    qry.ExecSQL;
  end;
  Terminate;

end;

procedure SmsThread.UpdateOutBox;
//var
  //qry:TADOQuery;
begin
//  qry:=TADOQuery.Create(nil);
//  qry.Connection:=dm.YeganehConnection;
//  qry.SQL.Text:='update OutBox set InProcess=0 , ErrorMessage='+VarToStr(res)+' where outboxid= '+vartostr(arrSmsDetails[i].id);
//  qry.ExecSQL;
end;

function TDm.DMCommaSeperated(s: string): string;
var     i: integer;
begin
   i:=length(s) mod 3;
   if i<>0 then
    result:=copy(s,1,i)
   else
    result:='';

   while i<length(s) do
    begin
     if result<>'' then
      result:=result+','+copy(s,i+1,3)
     else
      result:=copy(s,i+1,3);
     i:=i+3
    end;
end;

procedure TDm.ResulutionGet;
var
  MonId: integer;
  Mon: TMonitor;
  AllMonitorsWidth, AllMonitorsHeight: integer;
begin
(*
  for MonId := 0 to Screen.MonitorCount - 1 do
  begin
    Mon := Screen.Monitors[MonId];

    With Memo1.Lines do
    begin

      Append(Format('Resolution: %dpx x %dpx', [Mon.Width, Mon.Height]));
      Append(Format('X-offset: %dpx', [Mon.Left]));
      Append(Format('Y-offset: %dpx', [Mon.Top]));
    end;
  end;
  *)

  AllMonitorsWidth  := GetSystemMetrics(SM_CXVIRTUALSCREEN);
  AllMonitorsHeight := GetSystemMetrics(SM_CYVIRTUALSCREEN);


  if  (AllMonitorsWidth >1680) and (Screen.PixelsPerInch> 96)  then
  begin
    //if (Screen.Width <>  AllMonitorsWidth) and (Screen.Width  > AllMonitorsWidth) then
       _PercentScale := 125
  end
  else _PercentScale := 100 ;

  // _PercentScale := 100 ;

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

function ReadTiffIntoBitmap(const Filename: string): TBitmap;
var
 // OpenTiff: PTIFF;
  FirstPageWidth, FirstPageHeight: Cardinal;
begin
  (*
  Result:= nil;  //in case you want to tweak code to not raise exceptions.
  OpenTiff:= TIFFOpen(Filename,'r');
  if OpenTiff = nil then raise Exception.Create(
           'Unable to open file '''+Filename+'''');
  try 
    TIFFGetField(OpenTiff, TIFFTAG_IMAGEWIDTH, @FirstPageWidth);
    TIFFGetField(OpenTiff, TIFFTAG_IMAGELENGTH, @FirstPageHeight);
    Result:= TBitmap.Create;
    try 
      Result.PixelFormat:= pf32bit;
      Result.Width:= FirstPageWidth;
      Result.Height:= FirstPageHeight;
    except
      FreeAndNil(Result);
      raise Exception.Create('Unable to create TBitmap buffer');
    end;
    TIFFReadRGBAImage(OpenTiff, FirstPageWidth, FirstPageHeight,
                 Result.Scanline[FirstPageHeight-1],0);
    TIFFReadRGBAImageSwapRB(FirstPageWidth, FirstPageheight,
                 Result.Scanline[FirstPageHeight-1]);
  finally
    TIFFClose(OpenTiff);
  end;
  *)
end;

procedure TDm.RefreshHoliday(Bdate: String);
var i, j : integer;
   strM ,strD: string ;
begin
  with Select_Holiday_date do
   begin
     Close;
     Parameters.ParamByName('@Year').Value:=BDate;
     Open;
   end;

  for i := 1 to 12 do
    for j := 1 to 31 do
    begin
      if  i < 10 then
        strM := '0'+inttostr(i)
      else strM := inttostr(i);
      
      if j < 10 then
        strD :=  '0'+inttostr(j)
      else strD := inttostr(j);

      Select_Holiday_date.Filtered := False;
      Select_Holiday_date.filter   :='HolidayDate='''+BDate+'/'+strM+'/'+strD+'''';
      Select_Holiday_date.Filtered := True;

      if Select_Holiday_date.Recordcount>0 then
      begin
        HolidayArray[i, j] := 1  ;

        if (i>6) and (j=31) then
          HolidayStr := HolidayStr
        else
        HolidayStr := HolidayStr + '1';
      end
      else
      begin
        HolidayArray[i, j] := 0 ;
        if (i>6) and (j=31) then
          HolidayStr := HolidayStr
        else
        HolidayStr := HolidayStr + '0';
      end
    end;

  Select_Holiday_date.Filtered := False;
  Select_Holiday_date.filter   := '';
  Select_Holiday_date.Filtered := True;
end;

procedure TDm.tblMessagesCalcFields(DataSet: TDataSet);
begin
  tblMessagesShamsidate.AsString :=  ShamsiString(tblMessagesCurrentDate.AsDateTime);
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

function TDm.IntToY(L: byte): string;
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


function TDm.CommaSeperated(s: string): string;
var     i: integer;
begin
   i:=length(s) mod 3;
   if i<>0 then
    result:=copy(s,1,i)
   else
    result:='';

   while i<length(s) do
    begin
     if result<>'' then
      result:=result+','+copy(s,i+1,3)
     else
      result:=copy(s,i+1,3);
     i:=i+3
    end;
end;

end.


