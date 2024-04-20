unit Dmu;

interface

uses
  SysUtils, Classes, DB,ShellAPI, ADODB, ImgList, Controls,Registry,windows,word2000,Graphics,YwhereEdit,
  Yeganeh_Word, OleServer, AppEvnts,Dialogs, WordXP, YINtegerField,{}DBGrids,Forms;

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
    Marketer: TADOTable;
    MarketerMarketerID: TAutoIncField;
    MarketerMarketerNo: TStringField;
    MarketerMarketerTitle: TWideStringField;
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
    MarketerPPercent: TWordField;
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
    MarketerTag: TBooleanField;
    MarketerOrgID: TIntegerField;
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
    Report_ContractAmount: TIntegerField;
    Report_ContractAttachment: TWideStringField;
    Report_ContractComment: TWideStringField;
    Report_ContractMarketerID: TIntegerField;
    Report_ContractContractTypeID: TWordField;
    Report_ContractComission: TIntegerField;
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
    CustomerFinishedContractProducts: TWideStringField;
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
    Select_FollowUP_By_CustomerIDExcellAttachment: TBlobField;
    Function  SearchTable(Ads1:TDataSet;CodeField,TitleField:string):integer;
    function GetSql(s:string):Variant;
    function GetNewCode:string;
    procedure ReplaceInWord(w:twordapplication;old,new:widestring);
    procedure Connect;
    function  GetServerTime:string;
    function  GetServerDate:tdatetime;
    procedure ExecCommand(s:string);
    procedure OpenURL(Url: string);
    procedure DataModuleCreate(Sender: TObject);
    procedure OpenWordFile(Filename:string);
    procedure MakeLetter(Dataset:Tdataset);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    function  GetSystemValue(I:integer):variant;
    Procedure SetSystemValue(VariableId:word;value:variant);
    procedure Insert_Products(ProductId:integer);
    function HasProduct(Productid,CustomerID: integer):boolean;
    procedure Select_FollowUP_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure Select_Contract_By_CustomerIDAfterInsert(DataSet: TDataSet);
    Procedure  Open_Report_Contract(where:widestring);
    Procedure  Open_Contract_By_Date(FromDate:string;ToDate:string);
    procedure WordApplicationDocumentBeforeClose(ASender: TObject;
      const Doc: _Document; var Cancel: WordBool);
    function Get_Sum_Contract_Amount(FromDate:string;ToDate:string):integer;
    Procedure Open_TimeSheet;
    function get_Time(minute:integer):string;
    Procedure Open_Customer(CustomerID: integer);
    procedure GroupsAfterInsert(DataSet: TDataSet);
    procedure GroupsBeforePost(DataSet: TDataSet);
    procedure Select_Customer_By_CustomerIDAfterInsert(DataSet: TDataSet);
    procedure Select_Contract_By_CustomerIDBeforePost(DataSet: TDataSet);
    procedure DStateDataChange(Sender: TObject; Field: TField);
    procedure Select_FollowUP_By_CustomerIDBeforePost(DataSet: TDataSet);
    procedure CustomerCalcFields(DataSet: TDataSet);
    procedure GroupsPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    Procedure RunCRMScripts(aADOConnection:TADOConnection);

  private
    Function MakeFilterResult :Boolean;
    Procedure Scripts_Run(aADOConnection:TADOConnection ; aVariableName:String='ScriptsNumber';aServername:String='');

    function Is_ActivityCode_Tekrari(GroupsNo:String):Boolean;

  public
    SearchResult:integer;
    FocusedColor:Tcolor;

    function  Search(Y:TYwhereEdit):integer;

    procedure SaveTemplateToFile;
    procedure RefreshTemplate;
    procedure Replace(var main:widestring;old,new:widestring);
    procedure RefreshFollowUP(Bdate,Edate:String;Ds:integer;
        ActionTypeID,BSuccess,ESuccess:byte;Comment_like,DoneComment_like: string;MarketerID:integer);
    procedure RefreshFollowUP_bydate(Bdate,Edate:String;Ds:integer;MarketerID:integer);
    procedure GetOneDayFollowUP(date:String);
    Procedure  Followup_cancel(Customerid:integer);
    Procedure  Do_task(TaskId:integer;DoneComment:widestring);
    Procedure  Postpone_task(TaskId:integer;days:integer);
    Procedure  Update_CustomerNo(CustomerID:integer;CustomerNo:string);

    procedure ShowAttachments(ADOSP:TADOStoredProc;Add:boolean);
    function Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
    {Ranjbar}
    {Function Qry_GetMaxNu(aAdoConnection:TAdoConnection;aTblName,aFldName:String):Integer;
    Procedure Qry_IFFieldIsEmpty(aFieldName:TField;aFieldDisPlayLabel:String);
    Procedure Qry_CloseAllQry(aDM:TDataModule);
    Procedure Win_RunCalculate;
    Function Three(number:int64):string;
    Function AdadBeHorof(number:int64):string;
    Function Qry_DeleteWhere(MyQry:TAdoQuery) : Boolean;
    Function Txt_Count(aFindText,aText:String):Integer;
    Function Qry_AddWhere(MyQry:TAdoQuery ; MyAddWhereSt:string) : Boolean;
    Procedure DBG_SelectNextCol(aDBGrid:TDBGrid;AppendORNext:Boolean=True;DBGFirstColIndex:Integer=0;Key:Word=Vk_Return;Shift:TShiftState=[]);
    //---}

  end;

Var
   Dm: TDm;
   RecNo :Integer;
   _gCustomerID :Integer;
   _ShowContract,_ExportCustomerList,_EditContract,_ShowAllCustomer,_ExportFollow,_ShowMyAction,_BtnAllContract,_BtnAllAct  :Boolean;
   gsrcContactNumberm,gsrcWhere,gsrcEmail,_ToDoDate,_DoneDate :String;
   gsrcCustomerStatusId,gsrcProductId,gsrcGroupId,gsrcStateId,gsrcCityId :Integer;
   gsrchOnlyMe : Boolean;
    Directory :String;
   SpDbgridContract :TADOStoredProc;
   gCustomerID :integer;
   _UserTypeID :integer;
   _UserID:integer;
   _ProductID:integer;
   _UserName:String;
   _CurrentMarketerID,
   _MarketerID:integer;
   _OpenedWordFile:String;
   _OrgID: integer;
   _AccessID:integer;
   _TempPath:String;
   _Word_Is_Opened : boolean;
   _ExcelFileName,
   _WordFileName:String;
   _Today :String;
   _SoftTitle:String;
   _ApplicationPath:String;
   {Ranjbar}
   _IsServer : Boolean;
   _insertMode: Boolean;
   _SoftVersionDB:String;
   //---
//1    gContractPath :String;
Const
     ProductID = 'Y_Crm';
     _SoftVersion = '1.1.';
    procedure SetQueryDataSet(var DataSourceQry :TDataSource;var ReturnQry :TADOQuery;SQLText :String;QryConnection:TADOConnection;Field0Alignment :Boolean = False);
    Function AddImageField(Field:TField;Dlgfilter:String):String;

implementation

Uses RegForm, USearchTitle, Uconnect, LogOn, YShamsiDate, UCalenderView,
     MainU, YInputQuery,UserTableContentFm, BusinessLayer, StrUtils;



//uses  DiskInfoUnit;

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
Var
   DongleProductCode,DongleErrorCode : Integer;
begin
          ShowMessage('0');
   if Trim(YeganehConnection.ConnectionString) <> '' then
      ShowMessage('·ÿ›« »—œ«‘ Â ‘Êœ : ConnectionString');
   Qry_CloseAllQry(Dm);
   ShowMessage('1');

   FocusedColor := $00FFEFDF;
   Connect; //Fconnect ›—„
   RunSetting.ExecSQL;
   ShowMessage('2');
////////////////////////////
   RunCRMScripts(dm.YeganehConnection);

   ShowMessage('3');
////////////////////////////
   {Ranjbar}
   _IsServer := ( UpperCase(Win_GetComputerName) = UpperCase(Srv_GetSrvCumputerName(YeganehConnection)) );
   //---
   _Today := ShamsiString(GetServerDate);

   //çﬂ ﬂ—œ‰ ﬁ›· ”Œ  «›“«—Ì
   //ShowMessage('ﬁ›· ”Œ  «›“«—Ì ﬁ—«— œ«œÂ ‘Êœ');
   ShowMessage('4');
{  DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today,80,_SoftTitle,False,DongleProductCode);
  DongleErrorCode:=0;
   if DongleErrorCode > 0 then
   begin
      ShowMessage(DongleErrorMessage(DongleErrorCode));
      ExitProcess(0);
      Application.Terminate;
      Halt;
   end;
 }
   //Settings »Â Setting  »œÌ· ‰«„ ÃœÊ·
   Qry_SetResult('if Exists(Select Name from SysObjects Where xType = ''U'' And Name = ''Setting'') ' +
                 ' EXEC sp_rename N''[dbo].[Setting]'', N''Settings'', N''object'' ',dm.YeganehConnection);



     ShowMessage('5');
 DM.Scripts_Run(Dm.YeganehConnection,'ScriptsNumber',ServerName); // «»⁄ «Ì‰ ÌÊ‰Ì 


   SystemSettings.Open;
      ShowMessage('6');

   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
   TRY
     _SoftVersionDB :='00';
     _SoftVersionDB :=Qry_GetResult(' SELECT Value FROM Settings WHERE VariableName =''ScriptsNumber'' AND UserID=-1',dm.YeganehConnection);
   EXCEPT
   END;
      ShowMessage('7');
   LoginForm:=TLoginForm.Create(Self);
      ShowMessage('8');

   LoginForm.ShowModal;

   Citys.Open;
   Product.Open;
   ActionType.Open;

   Groups.Open;
   Marketer.Open;
   Accesses.Open;

   _WordFileName:='Yeganeh_WORD_FILE.YGN'; //TTT
   _ExcelFileName:='Yeganeh_Excel_FILE.XLS';
   _TempPath:=GetTempDirectory;
   _insertMode:=false;

   {Ranjbar} //ﬁ—«—œ«œ‰ „”Ì— ›«Ì· «Ã—«ÌÌ œ— —ÃÌ” —Ì
   _ApplicationPath := ExtractFilePath(Application.ExeName);
   if _ApplicationPath <> Reg_GetValue('Software\Yeganeh\CRM','CRMPath',dtString,HKEY_CURRENT_USER) then
      Reg_SetValue('Software\Yeganeh\CRM','CRMPath',_ApplicationPath,dtString,HKEY_CURRENT_USER);
   //---
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
   i:=GetSql('select isnull(max(Customerno),''0'')+1 from Customer where isactive=1 ');
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
      Value := Qry_GetResult('Select Value from Settings where userid= -1 And VariableName = '+ QuotedStr(aVariableName) ,aADOConnection);
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
              ActionTypeID,BSuccess,ESuccess:byte;Comment_like,DoneComment_like: string;MarketerID:integer);
begin
  with Select_FollowUP_By_Date do
   begin
     Close;
     Parameters.ParamByName('@BDate').Value:=BDate;
     Parameters.ParamByName('@EDate').Value:=EDate;
     Parameters.ParamByName('@MarketerID').Value:=MarketerID;
     Parameters.ParamByName('@DonStatusID').Value:=DS;
     Parameters.ParamByName('@ActionTypeID').Value:=ActionTypeID;
     Parameters.ParamByName('@BSuccess')        .Value:=BSuccess;
     Parameters.ParamByName('@ESuccess')        .Value:=ESuccess;
     Parameters.ParamByName('@Comment_like')    .Value:=Comment_like;
     Parameters.ParamByName('@DoneComment_like').Value:=DoneComment_like;
     Open;
//     try FrViewByCalender.calender; except end;
//     MainForm.StatusBar1.Panels[2].Text:=' ⁄œ«œ : '+IntToStr(RecordCount)
   end;
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
   RefreshFollowUP(Bdate,Edate,Ds,0,0,100,'','',MarketerID);
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
     Documents.Open(f,fals,fals,fals,emp,emp,fals,emp,emp,olv,emp,tru,tru,tru,tru);
     If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
     ;
     If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
     Visible:=true;
     _OpenedWordFile:=ActiveDocument.Name;
    end;
 end;


procedure TDm.ApplicationEventsException(Sender: TObject; E: Exception);
begin
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
if OpenDialog.Execute then
  with Yeganeh_Word do
   begin
    DocumetTemplateFile:=ExtractFileName(OpenDialog.Filename);
    WordFilePath:=ExtractFilePath(OpenDialog.Filename);
    Ydataset:=Dataset;
    PasteRecords;
   end;
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
   DM.Select_Customer_By_CustomerIDGroupId.AsInteger := 1;
   DM.Select_Customer_By_CustomerIDCustomerStatusID.AsInteger := 1;
   DM.Select_Customer_By_CustomerIDMarketerID.AsInteger := _MarketerID;
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
begin
  with TOpenDialog.Create(nil) do
  begin
      Filter:=Dlgfilter;
      if Execute then
      begin
        if not(Field.DataSet.State in [dsinsert,dsedit]) then
              Field.DataSet.Edit;
        CopyFile(PAnsiChar(AnsiString(FileName)),PAnsiChar(AnsiString('C:\YeganehContractTemp'+ExtractFileExt(FileName))),false);
        TBlobField(Field).LoadFromFile('C:\YeganehContractTemp'+ExtractFileExt(PAnsiChar(AnsiString(FileName))));
        DeleteFile(PAnsiChar(AnsiString('C:\YeganehContractTemp'+ExtractFileExt(FileName))));
        Result := ExtractFileExt(FileName);
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
  Select_FollowUP_By_CustomerIDToDoDate.Value :=  _ToDoDate;
  Select_FollowUP_By_CustomerIDDoneDate.Value :=  _DoneDate;
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
      FreeAndNil(ScrText);
      FreeAndNil(ScrTextFile);
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

end.


//Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=Y_CRM;Data Source=.



