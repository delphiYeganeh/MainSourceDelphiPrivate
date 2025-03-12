unit dmu;

interface

uses
  SysUtils, Classes, DB, ADODB,graphics,DateUtils,Forms,Windows, ImgList,
  Controls, WordXP, Menus,OleServer,Yeganeh_Word,YwhereEdit, AppEvnts,dialogs,
  YINtegerField, YLargeIntField, DBTables,frxClass,frxCross, v2,UnitSMS,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP,
  xmldom, XMLIntf, msxmldom, XMLDoc , Math , U_ENTER_IP_ADDRESS_FRM ,
  U_LOCK_ERROR_FRM, TINYLib_TLB, acAlphaHints, sSkinManager;

type
    Tdm = Class(TDataModule)
    YeganehConnection             : TADOConnection;
    LetterImages                  : TImageList;
    DDSelect_WordTemplateList     : TDataSource;
    DSelect_WordTemplate          : TDataSource;
    Report_Account                : TADOStoredProc;
    DReport_Account               : TDataSource;
    MonthlyType                   : TADOTable;
    ContactType                   : TADOTable;
    Select_Account                : TADOStoredProc;
    Select_Contact                : TADOStoredProc;
    ContactTypeContactTypeID      : TWordField;
    ContactTypeContactTypeTitle   : TWideStringField;
    ContactTypeUserField1Title    : TWideStringField;
    ContactTypeUserField2Title    : TWideStringField;
    ContactTypeHasMonthly         : TBooleanField;
    ContactTypeHasAccount         : TBooleanField;
    Select_AccountAccountID       : TAutoIncField;
    Select_AccountAccountTitle    : TWideStringField;
    Select_AccountContactID       : TYIntegerField;
    Select_AccountMonthlyTypeID   : TYIntegerField;
    Select_AccountMonthlyBeginDate: TStringField;
    Select_AccountFamilyid        : TYIntegerField;
    Select_AccountAccountTypeID   : TWordField;
    Select_AccountBankID          : TWordField;
    Select_ContactContactID       : TAutoIncField;
    Select_ContactPersonalNo      : TWideStringField;
    Select_ContactFirstName       : TWideStringField;
    Select_ContactLastName        : TWideStringField;
    Select_ContactFatherName      : TWideStringField;
    Select_ContactIdno            : TWideStringField;
    Select_ContactBirthPlace      : TWideStringField;
    Select_ContactAddress         : TWideStringField;
    Select_ContactPhones          : TWideStringField;
    Select_ContactJob             : TWideStringField;
    Select_ContactSign            : TBlobField;
    Select_ContactMemo            : TWideStringField;
    Select_ContactUserField1      : TWideStringField;
    Select_ContactUserField2      : TWideStringField;
    Select_Contactpicture         : TBlobField;
    ContactTypeAccountTypeID      : TWordField;
    DSelect_Account               : TDataSource;
    DSelect_Contact               : TDataSource;
    Select_AccountAccountDate     : TStringField;
    Select_AccountMonthlyTypeTitle: TStringField;
    Family                        : TADOTable;
    Select_AccountFamilyTitle     : TStringField;
    Select_ContactCalField        : TYIntegerField;
    Select_ContactContactTypeID   : TWordField;
    Select_Contact_Like           : TADOStoredProc;
    DSelect_Contact_Like          : TDataSource;
    Select_Contact_LikeFullName   : TWideStringField;
    Select_Contact_LikeFatherName : TWideStringField;
    Select_Contact_LikePersonalNo : TWideStringField;
    Select_Contact_LikeAccountNo  : TStringField;
    Select_Contact_LikeContactID  : TAutoIncField;
    Select_Contact_LikeAccountID  : TAutoIncField;
    Select_Account_Details        : TADOStoredProc;
    DSelect_Account_Details: TDataSource;
    Select_Account_DetailsAccountID: TAutoIncField;
    Select_Account_DetailsAccountNo: TStringField;
    Select_Account_DetailsAccountDate: TStringField;
    Select_Account_DetailsPersonalNo: TWideStringField;
    Select_Account_DetailsSign: TBlobField;
    Select_Account_Detailspicture: TBlobField;
    Select_Account_DetailsAccountTitle: TWideStringField;
    Select_Payment: TADOStoredProc;
    DSelect_Payment: TDataSource;
    Select_PaymentPaymentID: TAutoIncField;
    Select_PaymentCreditorAccountID: TYIntegerField;
    Select_PaymentDebtorAccountID: TYIntegerField;
    Select_PaymentTime: TWideStringField;
    Select_PaymentComment: TStringField;
    Select_PaymentInsertUserID: TYIntegerField;
    Select_PaymentLastUserID: TYIntegerField;
    Select_Cash_Accounts: TADOStoredProc;
    DSelect_Cash_Accounts: TDataSource;
    Select_Loan: TADOStoredProc;
    DSelect_Loan: TDataSource;
    Select_LoanLoanID: TYIntegerField;
    Select_LoanLoanNO: TStringField;
    Select_LoanAccountID: TYIntegerField;
    Select_LoanSponsorContactID: TYIntegerField;
    Select_LoanLoanTypeID: TSmallintField;
    Select_LoanLoanDate: TStringField;
    Select_LoanPartsBeginDate: TStringField;
    Select_LoanIsactive: TBooleanField;
    Select_LoanWagePaymentID: TYIntegerField;
    Select_LoanPaymentID: TYIntegerField;
    LoanType: TADOTable;
    DLoanType: TDataSource;
    Select_Loan_Parts: TADOStoredProc;
    DSelect_Loan_Parts: TDataSource;
    Select_LoanGaurantor: TADOStoredProc;
    DSelect_LoanGaurantor: TDataSource;
    Select_LoanAttachment: TADOStoredProc;
    DSelect_LoanAttachment: TDataSource;
    Select_Attachment: TADOStoredProc;
    DSelect_Attachment: TDataSource;
    LoanAmount: TADOTable;
    LoanAmountLoanAmountID: TSmallintField;
    Select_LoanSponsorTitle: TStringField;
    Select_LoanLoanTypeTitle: TStringField;
    LoanTypeLoanTypeID: TSmallintField;
    LoanTypeLoanTypeTitle: TWideStringField;
    LoanTypePartMonths: TFloatField;
    LoanTypeFixWage: TYIntegerField;
    LoanTypeMinAcountExist: TYIntegerField;
    LoanTypeMinLastPartPercent: TWordField;
    Select_Loan_PartsForcePaymentID: TYIntegerField;
    Select_Loan_PartsParentID: TYIntegerField;
    Select_Loan_PartsForceTypeID: TWordField;
    Select_Loan_PartsMatureDate: TStringField;
    Select_Loan_PartsPaymentID: TYIntegerField;
    Select_Loan_PartsComment: TWideStringField;
    Select_Loan_PartsAmountBill: TStringField;
    MonthlyTypeMonthlyTypeID: TSmallintField;
    MonthlyTypeMonthlyTypeTitle: TWideStringField;
    MonthlyTypeMonths: TWordField;
    MonthlyTypeLoanAmountRoof: TYIntegerField;
    MonthlyTypeAmount: TYIntegerField;
    DMonthlyType: TDataSource;
    DFamily: TDataSource;
    AccountType: TADOTable;
    DAccountType: TDataSource;
    Report_AccountMonthlyTypeTitle: TWideStringField;
    Report_AccountBankTitle: TWideStringField;
    Report_AccountAccountID: TAutoIncField;
    Report_AccountAccountTitle: TWideStringField;
    Report_AccountAccountDate: TStringField;
    Report_AccountMonthlyTypeID: TIntegerField;
    Report_AccountMonthlyBeginDate: TStringField;
    Report_AccountFamilyid: TIntegerField;
    Report_AccountAccountTypeID: TWordField;
    Report_AccountContactID: TAutoIncField;
    Report_AccountPersonalNo: TWideStringField;
    Report_AccountFirstName: TWideStringField;
    Report_AccountLastName: TWideStringField;
    Report_AccountFullName: TWideStringField;
    Report_AccountFatherName: TWideStringField;
    Report_AccountIdno: TWideStringField;
    Report_AccountBirthPlace: TWideStringField;
    Report_AccountAddress: TWideStringField;
    Report_AccountPhones: TWideStringField;
    Report_AccountJob: TWideStringField;
    Report_AccountMemo: TWideStringField;
    Report_AccountUserField1: TWideStringField;
    Report_AccountUserField2: TWideStringField;
    Report_AccountContactTypeID: TWordField;
    Report_AccountFamilyTitle: TWideStringField;
    Bank: TADOTable;
    Select_ContactIsActive:     TBooleanField;
    Report_Payment_ByAccountID: TADOStoredProc;
    DReport_Payment_ByAccountID:         TDataSource;
    Select_Account_DetailsDebitstatus:   TStringField;
    Report_AccountIsActive:              TBooleanField;
    Select_AccountIsActive:              TBooleanField;
    Report_Payment_ByAccountIDPaymentID: TAutoIncField;
    Report_Payment_ByAccountIDCreditorAccountID: TIntegerField;
    Report_Payment_ByAccountIDDebtorAccountID: TIntegerField;
    Report_Payment_ByAccountIDDate: TWideStringField;
    Report_Payment_ByAccountIDTime: TWideStringField;
    Report_Payment_ByAccountIDComment: TStringField;
    Report_Payment_ByAccountIDInsertUserID: TIntegerField;
    Report_Payment_ByAccountIDLastUserID: TIntegerField;
    Report_Payment_ByAccountIDFullName: TWideStringField;
    Report_Payment_ByAccountIDAccountTitle: TWideStringField;
    Report_Payment_ByAccountIDDebitStatus: TStringField;
    Report_Payment_ByAccountIDSumAmount: TYLargeIntField;
    Select_AccountAlarmBeginDate: TStringField;
    Select_AccountAlarmEndDate: TStringField;
    Select_AccountAlarmText: TWideStringField;
    Select_WordTemplate: TADOStoredProc;
    Select_WordTemplateList: TADOStoredProc;
    Select_WordTemplateWordTemplateID: TAutoIncField;
    Select_WordTemplateWordTemplate: TBlobField;
    Select_WordTemplateListWordTemplateID: TAutoIncField;
    Select_WordTemplateListTemplateTitle: TWideStringField;
    Select_Fields_byTableName: TADOStoredProc;
    Select_Table: TADOStoredProc;
    DSelect_Fields_byTableName: TDataSource;
    DSelect_Table: TDataSource;
    Select_Fields_byTableNameFieldName: TStringField;
    Select_Fields_byTableNameDescription: TWideStringField;
    Select_TableTableName: TStringField;
    Select_CashLogo: TADOStoredProc;
    Select_CashLogoCashInfoId: TSmallintField;
    Select_CashLogoCashLogo: TBlobField;
    Select_ObjectGroup: TADOStoredProc;
    Select_ObjectAccess_byGroup: TADOStoredProc;
    Select_FinancialNote: TADOStoredProc;
    Select_FinancialNote_deatils: TADOStoredProc;
    Select_FinancialNote_Like: TADOStoredProc;
    DSelect_FinancialNote_deatils: TDataSource;
    DSelect_FinancialNote_Like: TDataSource;
    DAccess: TDataSource;
    DSelect_ObjectAccess_byGroup: TDataSource;
    DSelect_ObjectGroup: TDataSource;
    Access : TADOTable;
    AccessAccessID: TWordField;
    AccessAccessTitle: TWideStringField;
    Select_ObjectGroupGroupTitle: TWideStringField;
    Select_ObjectAccess_byGroupObjectCaption: TWideStringField;
    Select_ObjectAccess_byGroupGroupTitle: TWideStringField;
    Select_ObjectAccess_byGroupAccessObjectId: TAutoIncField;
    Select_ObjectAccess_byGroupAccessId: TWordField;
    Select_ObjectAccess_byGroupObjectName: TStringField;
    Select_ObjectAccess_byGroupAccess: TBooleanField;
    Select_PaymentFinancialNoteID: TIntegerField;
    DSelect_FinancialNote: TDataSource;
    Select_FinancialNoteFinancialNoteID: TAutoIncField;
    Select_FinancialNoteNoteNo: TStringField;
    Select_FinancialNoteMatureDate: TStringField;
    Select_FinancialNoteAmount: TYLargeIntField;
    Select_FinancialNoteOwnerAccountID: TWideStringField;
    Select_FinancialNoteBranch: TWideStringField;
    Select_FinancialNoteBranchCode: TStringField;
    Select_FinancialNoteBankID: TWordField;
    Select_FinancialNoteNoteStatusID: TWordField;
    Select_FinancialNoteFinancialNoteTypeID: TWordField;
    Select_FinancialNoteBankAccountNo: TStringField;
    Select_FinancialNote_deatilsFinancialNoteID: TAutoIncField;
    Select_FinancialNote_deatilsNoteNo: TStringField;
    Select_FinancialNote_deatilsMatureDate: TStringField;
    Select_FinancialNote_deatilsAmount: TYLargeIntField;
    Select_FinancialNote_deatilsOwnerAccountID: TWideStringField;
    Select_FinancialNote_deatilsBranch: TWideStringField;
    Select_FinancialNote_deatilsBranchCode: TStringField;
    Select_FinancialNote_deatilsBankID: TWordField;
    Select_FinancialNote_deatilsNoteStatusID: TWordField;
    Select_FinancialNote_deatilsFinancialNoteTypeID: TWordField;
    Select_FinancialNote_deatilsBankAccountNo: TStringField;
    Select_FinancialNote_deatilsFinancialNoteTypeTitle: TWideStringField;
    Select_FinancialNote_deatilsOwner: TWideStringField;
    Select_FinancialNote_deatilsNoteStatusTitle: TWideStringField;
    Select_FinancialNote_LikeFinancialNoteID: TAutoIncField;
    Select_FinancialNote_LikeNoteNo: TStringField;
    Select_FinancialNote_LikeMatureDate: TStringField;
    Select_FinancialNote_LikeAmount: TYLargeIntField;
    Select_FinancialNote_LikeOwnerAccountID: TWideStringField;
    Select_FinancialNote_LikeBranch: TWideStringField;
    Select_FinancialNote_LikeBranchCode: TStringField;
    Select_FinancialNote_LikeBankID: TWordField;
    Select_FinancialNote_LikeNoteStatusID: TWordField;
    Select_FinancialNote_LikeFinancialNoteTypeID: TWordField;
    Select_FinancialNote_LikeBankAccountNo: TStringField;
    Select_FinancialNote_LikeFinancialNoteTypeTitle: TWideStringField;
    Select_FinancialNote_LikeOwner: TWideStringField;
    Select_FinancialNote_LikeNoteStatusTitle: TWideStringField;
    NoteStatus: TADOTable;
    FinancialNoteType: TADOTable;
    Select_FinancialNoteFinancialNoteType: TStringField;
    Select_FinancialNoteNoteStatusTitle: TStringField;
    Select_FinancialNoteBankTitle: TStringField;
    DFinancialNoteType: TDataSource;
    Users: TADOTable;
    DUsers: TDataSource;
    DSelect_User_like: TDataSource;
    Report_LatestPayment_ByAccountID: TADOStoredProc;
    Select_User_like: TADOStoredProc;
    Select_User_likeUserId: TIntegerField;
    Select_User_likeUserName: TWideStringField;
    Select_User_likeFullName: TWideStringField;
    Select_User_likePassword: TWideStringField;
    Select_User_likeAccessID: TWordField;
    UsersUserId: TIntegerField;
    UsersUserName: TWideStringField;
    UsersFullName: TWideStringField;
    UsersPassword: TWideStringField;
    UsersAccessID: TWordField;
    UsersAccessTitle: TStringField;
    UsersBeginDate: TStringField;
    UsersEndDate: TStringField;
    Select_FinancialNote_deatilsbanktitle: TWideStringField;
    DReport_LatestPayment_ByAccountID: TDataSource;
    Select_Sponsor: TADOStoredProc;
    Select_Loan_ByAccountID: TADOStoredProc;
    DSelect_Loan_ByAccountID: TDataSource;
    Select_Account_DetailsNumberOfNotPaidPart: TIntegerField;
    Select_SponsorContactID: TAutoIncField;
    Select_SponsorContactTypeID: TWordField;
    Select_SponsorFullName: TWideStringField;
    Select_SponsorFatherName: TWideStringField;
    Select_Sponsorbalance: TLargeintField;
    Select_SponsorAccountID: TAutoIncField;
    Select_LoanSponsorAccountID: TIntegerField;
    Select_Contact_LikeContactTypeID: TWordField;
    Select_LoanPriority_BYIsUrgency: TADOStoredProc;
    DSelect_LoanPriority_BYIsUrgency: TDataSource;
    LoanTypeIsUrgency: TBooleanField;
    Select_LoanPriority_BYIsUrgencyLoanPriorityID: TAutoIncField;
    Select_LoanPriority_BYIsUrgencyAccountID: TIntegerField;
    Select_LoanPriority_BYIsUrgencyPriority: TSmallintField;
    Select_LoanPriority_BYIsUrgencyPoint: TIntegerField;
    Select_LoanPriority_BYIsUrgencyIsUrgency: TBooleanField;
    Select_LoanPriority_BYIsUrgencyAccountNo: TStringField;
    Select_LoanPriority_BYIsUrgencyAccountTitle: TWideStringField;
    Select_LoanRequest_ByAccountID: TADOStoredProc;
    DSelect_LoanRequest_ByAccountID: TDataSource;
    Report_LoanRequest: TADOStoredProc;
    DReport_LoanRequest: TDataSource;
    Select_LoanRequest: TADOStoredProc;
    DSelect_LoanRequest: TDataSource;
    Select_LoanRequest_ByAccountIDLoanRequestID: TAutoIncField;
    Select_LoanRequest_ByAccountIDAccountID: TIntegerField;
    Select_LoanRequest_ByAccountIDRequestDate: TStringField;
    Select_LoanRequest_ByAccountIDComment: TWideStringField;
    Select_LoanRequest_ByAccountIDDocumentNo: TWideStringField;
    Select_LoanRequest_ByAccountIDExpireStatus: TStringField;
    Select_LoanRequest_ByAccountIDUrgencyStatus: TStringField;
    Select_LoanRequestLoanRequestID: TAutoIncField;
    Select_LoanRequestAccountID: TIntegerField;
    Select_LoanRequestRequestDate: TStringField;
    Select_LoanRequestComment: TWideStringField;
    Select_LoanRequestDocumentNo: TWideStringField;
    Select_LoanRequestExpired: TBooleanField;
    Select_LoanRequestIsUrgency: TBooleanField;
    Report_LoanRequestAccountTitle: TWideStringField;
    Report_LoanRequestAccountNo: TStringField;
    Report_LoanRequestLoanRequestID: TAutoIncField;
    Report_LoanRequestRequestDate: TStringField;
    Report_LoanRequestComment: TWideStringField;
    Report_LoanRequestDocumentNo: TWideStringField;
    Report_LoanRequestExpireStatus: TStringField;
    Report_LoanRequestUrgencyStatus: TStringField;
    DReport_ForcePayment: TDataSource;
    Report_ForcePayment: TADOStoredProc;
    FamilyFamilyID: TSmallintField;
    FamilyFamilyTitle: TWideStringField;
    Select_Loan_Like: TADOStoredProc;
    Select_Loan_LikeAccountNo: TStringField;
    DSelect_Loan_Like: TDataSource;
    Select_Loan_LikeLoanID: TAutoIncField;
    Select_Loan_LikeLoanNO: TStringField;
    Select_Loan_LikeLoanDate: TStringField;
    Select_Loan_LikePartsBeginDate: TStringField;
    Select_Loan_LikeAccountTitle: TWideStringField;
    Select_Loan_LikeNumberOfPart: TIntegerField;
    Select_Loan_LikeNumberOfPaidPart: TIntegerField;
    Report_Contact: TADOStoredProc;
    DReport_Contact: TDataSource;
    Report_ContactContactID: TAutoIncField;
    Report_ContactFirstName: TWideStringField;
    Report_ContactLastName: TWideStringField;
    Report_ContactFullName: TWideStringField;
    Report_ContactFatherName: TWideStringField;
    Report_ContactAddress: TWideStringField;
    Report_ContactUserField1: TWideStringField;
    Report_ContactUserField2: TWideStringField;
    Report_ContactContactTypeID: TWordField;
    Report_ContactContactTypeTitle: TWideStringField;
    Report_ContactPhones: TWideStringField;
    Report_ContactPersonalNo: TWideStringField;
    Report_ContactBirthPlace: TWideStringField;
    Report_ContactJob: TWideStringField;
    Report_ContactIsActive: TBooleanField;
    Report_ContactMemo: TWideStringField;
    Report_ContactCalField: TIntegerField;
    DContactType: TDataSource;
    Report_Loan: TADOStoredProc;
    DReport_Loan: TDataSource;
    Report_LoanLoanNO: TStringField;
    Report_LoanLoanDate: TStringField;
    Report_LoanPartsBeginDate: TStringField;
    Report_LoanLoanTypeTitle: TWideStringField;
    Report_LoanAccountno: TStringField;
    Report_LoanAccountTitle: TWideStringField;
    Report_LoanSponsorTitle: TWideStringField;
    Report_LoanNumberOfPart: TIntegerField;
    Report_LoanNumberOfPaidPart: TIntegerField;
    Select_LastPart: TADOStoredProc;
    DSelect_LastPart: TDataSource;
    Select_LastPartLoanNO: TStringField;
    Select_LastPartLoanTypeTitle: TWideStringField;
    Select_LastPartLoanDate: TStringField;
    Select_LastPartPartsBeginDate: TStringField;
    Select_LastPartMatureDate: TStringField;
    Select_LastPartComment: TWideStringField;
    Select_LastPartOrderNo: TWordField;
    Select_LastPartForcePaymentID: TAutoIncField;
    Select_LastMonthly: TADOStoredProc;
    DSelect_LastMonthly: TDataSource;
    Select_LastMonthlyForcePaymentID: TAutoIncField;
    Select_LastMonthlyAccountNO: TStringField;
    Select_LastMonthlyMonthlyTypeTitle: TWideStringField;
    Select_LastMonthlyAccountDate: TStringField;
    Select_LastMonthlyMatureDate: TStringField;
    Select_LastMonthlyComment: TWideStringField;
    Select_LastMonthlyOrderNo: TWordField;
    Select_Loan_Parts_Details: TADOStoredProc;
    DSelect_Loan_Parts_Details: TDataSource;
    Select_Loan_Parts_DetailsAccountTitle: TWideStringField;
    Select_Loan_Parts_DetailsAccountNo: TStringField;
    Select_Loan_Parts_DetailsPayDate: TWideStringField;
    Select_Loan_Parts_DetailsLoanNO: TStringField;
    Select_Loan_Parts_DetailsMatureDate: TStringField;
    Select_Loan_Parts_DetailsOrderNo: TWordField;
    Select_Loan_Parts_DetailsamountBill: TStringField;
    Report_LoanLoanID: TAutoIncField;
    Select_Monthly_Details: TADOStoredProc;
    DSelect_Monthly_Details: TDataSource;
    Select_Monthly_DetailsAccountTitle: TWideStringField;
    Select_Monthly_DetailsAccountNo: TStringField;
    Select_Monthly_DetailsPayDate: TWideStringField;
    Select_Monthly_DetailsRemainAmount: TYIntegerField;
    Select_Monthly_DetailsMatureDate: TStringField;
    Select_Monthly_DetailsOrderNo: TWordField;
    Select_Monthly_DetailsamountBill: TStringField;
    DReport_GroupForcePayment: TDataSource;
    Report_GroupForcePayment_old: TADOStoredProc;
    Report_GroupForcePayment_oldAccountID: TIntegerField;
    Report_GroupForcePayment_oldAccountNo: TStringField;
    Report_GroupForcePayment_oldSumPart: TYIntegerField;
    Report_GroupForcePayment_oldSumMonthly: TYIntegerField;
    Report_GroupForcePayment_oldSumAmerce: TYIntegerField;
    Select_Loan_PartsPaid: TBooleanField;
    Select_Loan_PartsOrderNo: TWordField;
    Select_Account_Monthlys: TADOStoredProc;
    DSelect_Account_Monthlys: TDataSource;
    Select_Account_MonthlysForcePaymentID: TAutoIncField;
    Select_Account_MonthlysParentID: TIntegerField;
    Select_Account_MonthlysForceTypeID: TWordField;
    Select_Account_MonthlysMatureDate: TStringField;
    Select_Account_MonthlysPaymentID: TIntegerField;
    Select_Account_MonthlysComment: TWideStringField;
    Select_Account_MonthlysPaid: TBooleanField;
    Select_Account_MonthlysOrderNo: TWordField;
    Select_Account_MonthlysAmountBill: TStringField;
    Report_LoanDelayedParts: TIntegerField;
    ApplicationEvents: TApplicationEvents;
    Select_ContactBirthDate: TStringField;
    Report_ContactBirthDate: TStringField;
    Report_LoanPoint: TADOStoredProc;
    DReport_LoanPoint: TDataSource;
    Report_ForcePaymentAccountID: TIntegerField;
    Report_ForcePaymentForceTypeID: TWordField;
    Report_ForcePaymentForcePaymentID: TIntegerField;
    Report_ForcePaymentParentid: TIntegerField;
    Report_ForcePaymentAccountNo: TStringField;
    Report_ForcePaymentAccountTitle: TWideStringField;
    Report_ForcePaymentLoanNO: TStringField;
    Report_ForcePaymentMatureDate: TStringField;
    Report_ForcePaymentPaid: TBooleanField;
    Report_ForcePaymentOrderNo: TWordField;
    Report_ForcePaymentdelay: TIntegerField;
    Report_ForcePaymentPaymentID: TIntegerField;
    Report_ForcePaymentPayDate: TStringField;
    Report_ForcePaymentFoceTypeTitle: TWideStringField;
    Report_GroupForcePayment_oldSumdelay: TIntegerField;
    Select_LastMonthlyAmerce: TYIntegerField;
    Select_LastMonthlydelay: TIntegerField;
    Select_LastPartdelay: TIntegerField;
    Select_LoanGaurantorLoanGaurantorID: TAutoIncField;
    Select_LoanGaurantorLoanID: TIntegerField;
    Select_LoanGaurantorGaurantorContactID: TIntegerField;
    Select_LoanGaurantorFinancialNoteID: TIntegerField;
    Select_LoanGaurantorPersonalNo: TWideStringField;
    Select_LoanGaurantorFirstName: TWideStringField;
    Select_LoanGaurantorLastName: TWideStringField;
    Select_LoanGaurantorFatherName: TWideStringField;
    Select_LoanGaurantorIdno: TWideStringField;
    Select_LoanGaurantorBirthPlace: TWideStringField;
    Select_LoanGaurantorBirthDate: TStringField;
    Select_LoanGaurantorAddress: TWideStringField;
    Select_LoanGaurantorPhones: TWideStringField;
    Select_LoanGaurantorJob: TWideStringField;
    Select_LoanGaurantorIsActive: TBooleanField;
    Select_LoanGaurantorMemo: TWideStringField;
    Select_LoanGaurantorUserField1: TWideStringField;
    Select_LoanGaurantorUserField2: TWideStringField;
    Select_LoanGaurantorCalField: TIntegerField;
    Select_LoanGaurantorNoteNo: TStringField;
    Select_LoanGaurantorMatureDate: TStringField;
    Select_LoanGaurantorAmount: TYLargeIntField;
    Select_LoanGaurantorBranch: TWideStringField;
    Select_LoanGaurantorBranchCode: TStringField;
    Select_LoanGaurantorBankAccountNo: TStringField;
    Select_Loan_PartsInterestAmount: TYIntegerField;
    Select_LastPartInterestAmount: TYIntegerField;
    Select_Loan_ByAccountIDLoanNO: TStringField;
    Select_Loan_ByAccountIDLoanDate: TStringField;
    Select_Loan_ByAccountIDPartsBeginDate: TStringField;
    Select_Loan_ByAccountIDLoanTypeTitle: TWideStringField;
    Select_Loan_ByAccountIDSponsorTitle: TWideStringField;
    Select_Loan_ByAccountIDNumberOfPart: TIntegerField;
    Select_Loan_ByAccountIDNumberOfPaidPart: TIntegerField;
    Select_Loan_ByAccountIDLoanId: TAutoIncField;
    Report_CashAccount: TADOStoredProc;
    DReport_CashAccount: TDataSource;
    Report_CashAccountBankTitle: TWideStringField;
    Report_CashAccountAccountID: TAutoIncField;
    Report_CashAccountAccountTitle: TWideStringField;
    Report_CashAccountAccountNo: TStringField;
    Report_CashAccountAccountDate: TStringField;
    Report_CashAccountIsActive: TBooleanField;
    Report_CashAccountAccountTypeID: TWordField;
    Report_CashAccountAccountTypeTitle: TWideStringField;
    Select_All_Cash_Accounts: TADOStoredProc;
    DSelect_All_Cash_Accounts: TDataSource;
    Report_SummeryPayment: TADOStoredProc;
    DReport_SummeryPayment: TDataSource;
    Report_SummeryPaymentAccountTypeID: TWordField;
    Report_SummeryPaymentAccountTypeTitle: TWideStringField;
    PayType: TADOTable;
    Report_SummeryPayment2: TADOStoredProc;
    DReport_SummeryPayment2: TDataSource;
    Dbank: TDataSource;
    BankBankID: TWordField;
    BankBankTitle: TWideStringField;
    Get_ActiveUser: TADOStoredProc;
    DGet_ActiveUser: TDataSource;
    Report_Payment_ByAccountIDPayTypeID: TWordField;
    Report_Payment_ByAccountIDPayTypeTitle: TWideStringField;
    Select_PaymentPayTypeID: TWordField;
    Select_PaymentInsertDate: TStringField;
    Select_PaymentLastUpDate: TStringField;
    Report_Payment: TADOStoredProc;
    DReport_Payment: TDataSource;
    Report_Payment_ByAccountIDInsertDate: TStringField;
    Report_Payment_ByAccountIDLastUpDate: TStringField;
    Report_Account2: TADOStoredProc;
    DReport_Account2: TDataSource;
    Report_SummeryPayment2PayTypeID: TWordField;
    Report_SummeryPayment2PayTypeTitle: TWideStringField;
    Report_SummeryPayment2debit: TYLargeIntField;
    Report_SummeryPayment2Credit: TYLargeIntField;
    Report_SummeryPayment2sum: TYLargeIntField;
    Select_PaymentAmount: TYLargeIntField;
    Report_SummeryPaymentdebit: TYLargeIntField;
    Report_SummeryPaymentCredit: TYLargeIntField;
    Report_CashAccountAbs_Balance: TYLargeIntField;
    Report_CashAccountbalance: TYLargeIntField;
    Report_LatestPayment_ByAccountIDPaymentID: TAutoIncField;
    Report_LatestPayment_ByAccountIDCreditorAccountID: TIntegerField;
    Report_LatestPayment_ByAccountIDDebtorAccountID: TIntegerField;
    Report_LatestPayment_ByAccountIDDate: TWideStringField;
    Report_LatestPayment_ByAccountIDTime: TWideStringField;
    Report_LatestPayment_ByAccountIDAmount: TYLargeIntField;
    Report_LatestPayment_ByAccountIDComment: TStringField;
    Report_LatestPayment_ByAccountIDFinancialNoteID: TIntegerField;
    Report_LatestPayment_ByAccountIDInsertUserID: TIntegerField;
    Report_LatestPayment_ByAccountIDInsertDate: TStringField;
    Report_LatestPayment_ByAccountIDLastUpDate: TStringField;
    Report_LatestPayment_ByAccountIDLastUserID: TIntegerField;
    Report_LatestPayment_ByAccountIDPayTypeID: TWordField;
    Report_LatestPayment_ByAccountIDdebit: TYLargeIntField;
    Report_LatestPayment_ByAccountIDCredit: TYLargeIntField;
    Report_LatestPayment_ByAccountIDFullName: TWideStringField;
    Report_LatestPayment_ByAccountIDAccountTitle: TWideStringField;
    Report_Payment_ByAccountIDAmount: TYLargeIntField;
    Report_Payment_ByAccountIDstatus: TIntegerField;
    Report_Payment_ByAccountIDdebit: TYLargeIntField;
    Report_Payment_ByAccountIDCredit: TYLargeIntField;
    Report_CashAccountDebitStatusTitle: TStringField;
    Select_PaymentRelatedId: TIntegerField;
    Report_Payment_ByAccountIDComment2: TStringField;
    Report_Accountexist: TYLargeIntField;
    Balance_Sheet: TADOStoredProc;
    DBalance_Sheet: TDataSource;
    Balance_Sheetid: TAutoIncField;
    Balance_Sheetaccounttitle: TWideStringField;
    Balance_Sheetc1: TYLargeIntField;
    Balance_Sheetc2: TYLargeIntField;
    Balance_Sheetc3: TYLargeIntField;
    Balance_Sheetc4: TYLargeIntField;
    Balance_Sheetc5: TYLargeIntField;
    Balance_Sheetc6: TYLargeIntField;
    AccountTypeAccountTypeID: TIntegerField;
    AccountTypeAccountTypeTitle: TWideStringField;
    AccountTypePreAccountNo: TStringField;
    AccountTypeCreditCuase: TWideStringField;
    AccountTypeDebitCuase: TWideStringField;
    AccountTypeParentID: TIntegerField;
    AccountTree: TADOTable;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    StringField1: TStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    IntegerField2: TIntegerField;
    DaccountTree: TDataSource;
    Select_AccountAccountTypeTitle: TStringField;
    Select_AccountBankTitle: TStringField;
    Report_Daily_Payment: TADOStoredProc;
    DReport_Daily_Payment: TDataSource;
    Report_Daily_PaymentPaymentID: TAutoIncField;
    Report_Daily_PaymentCreditorAccountID: TIntegerField;
    Report_Daily_PaymentDebtorAccountID: TIntegerField;
    Report_Daily_PaymentDate: TWideStringField;
    Report_Daily_PaymentTime: TWideStringField;
    Report_Daily_PaymentAmount: TYLargeIntField;
    Report_Daily_PaymentComment: TStringField;
    Report_Daily_PaymentFinancialNoteID: TIntegerField;
    Report_Daily_PaymentInsertUserID: TIntegerField;
    Report_Daily_PaymentInsertDate: TStringField;
    Report_Daily_PaymentLastUpDate: TStringField;
    Report_Daily_PaymentLastUserID: TIntegerField;
    Report_Daily_PaymentPayTypeID: TWordField;
    Report_Daily_PaymentRelatedID: TIntegerField;
    Report_Daily_PaymentCreditorAccountTitle: TWideStringField;
    Report_Daily_PaymentDebtorAccountTitle: TWideStringField;
    Report_Daily_PaymentPayTypeTitle: TWideStringField;
    Report_Daily_PaymentNoteNo: TStringField;
    Report_Daily_PaymentMatureDate: TStringField;
    Report_Daily_PaymentFinancialNoteAmount: TLargeintField;
    Report_Daily_PaymentFinancialNoteTypeTitle: TWideStringField;
    Report_Daily_PaymentFullName: TWideStringField;
    Report_Daily_PaymentComment2: TStringField;
    Select_PaymentDocumentNo: TStringField;
    Report_Payment_ByDocumentNo: TADOStoredProc;
    DReport_Payment_ByDocumentNo: TDataSource;
    Report_Payment_ByDocumentNoPaymentID: TAutoIncField;
    Report_Payment_ByDocumentNoCreditorAccountID: TIntegerField;
    Report_Payment_ByDocumentNoDebtorAccountID: TIntegerField;
    Report_Payment_ByDocumentNoDate: TWideStringField;
    Report_Payment_ByDocumentNoTime: TWideStringField;
    Report_Payment_ByDocumentNoAmount: TYLargeIntField;
    Report_Payment_ByDocumentNoComment: TStringField;
    Report_Payment_ByDocumentNoFinancialNoteID: TIntegerField;
    Report_Payment_ByDocumentNoInsertUserID: TIntegerField;
    Report_Payment_ByDocumentNoInsertDate: TStringField;
    Report_Payment_ByDocumentNoLastUpDate: TStringField;
    Report_Payment_ByDocumentNoLastUserID: TIntegerField;
    Report_Payment_ByDocumentNoPayTypeID: TWordField;
    Report_Payment_ByDocumentNoRelatedID: TIntegerField;
    Report_Payment_ByDocumentNoDocumentNo: TStringField;
    Report_Payment_ByDocumentNoCreditorAccountTitle: TWideStringField;
    Report_Payment_ByDocumentNoDebtorAccountTitle: TWideStringField;
    Report_Payment_ByDocumentNoPayTypeTitle: TWideStringField;
    Report_Payment_ByDocumentNoNoteNo: TStringField;
    Report_Payment_ByDocumentNoMatureDate: TStringField;
    Report_Payment_ByDocumentNoFinancialNoteAmount: TYLargeIntField;
    Report_Payment_ByDocumentNoFinancialNoteTypeTitle: TWideStringField;
    Report_Payment_ByDocumentNoFullName: TWideStringField;
    Report_Payment_ByDocumentNoComment2: TStringField;
    Report_Daily_PaymentDocumentNo: TStringField;
    Report_Payment_ByAccountIDRelatedID: TIntegerField;
    Report_Account2MonthlyTypeTitle: TWideStringField;
    Report_Account2BankTitle: TWideStringField;
    Report_Account2AccountID: TAutoIncField;
    Report_Account2AccountTitle: TWideStringField;
    Report_Account2AccountNo: TStringField;
    Report_Account2AccountDate: TStringField;
    Report_Account2IsActive: TBooleanField;
    Report_Account2MonthlyTypeID: TIntegerField;
    Report_Account2MonthlyBeginDate: TStringField;
    Report_Account2Familyid: TIntegerField;
    Report_Account2AccountTypeID: TWordField;
    Report_Account2ContactID: TAutoIncField;
    Report_Account2PersonalNo: TWideStringField;
    Report_Account2FirstName: TWideStringField;
    Report_Account2LastName: TWideStringField;
    Report_Account2FullName: TWideStringField;
    Report_Account2FatherName: TWideStringField;
    Report_Account2Idno: TWideStringField;
    Report_Account2BirthPlace: TWideStringField;
    Report_Account2Address: TWideStringField;
    Report_Account2Phones: TWideStringField;
    Report_Account2Job: TWideStringField;
    Report_Account2Memo: TWideStringField;
    Report_Account2UserField1: TWideStringField;
    Report_Account2UserField2: TWideStringField;
    Report_Account2ContactTypeID: TWordField;
    Report_Account2FamilyTitle: TWideStringField;
    Report_Account2exist: TYLargeIntField;
    Report_Account2DebitStatusTitle: TStringField;
    Report_Account2Balance1: TYLargeIntField;
    Report_Account2Balance2: TYLargeIntField;
    Report_Account2Balance3: TYLargeIntField;
    Report_Account2Balance4: TYLargeIntField;
    Report_Account2Balance5: TYLargeIntField;
    Report_Account2Balance6: TYLargeIntField;
    Report_Account2Balance7: TYLargeIntField;
    Report_Account2balance8: TYLargeIntField;
    Select_ForcePayment_byForcePaymentID: TADOStoredProc;
    DSelect_ForcePayment_byForcePaymentID: TDataSource;
    Select_ForcePayment_byForcePaymentIDForcePaymentID: TAutoIncField;
    Select_ForcePayment_byForcePaymentIDParentID: TIntegerField;
    Select_ForcePayment_byForcePaymentIDForceTypeID: TWordField;
    Select_ForcePayment_byForcePaymentIDMatureDate: TStringField;
    Select_ForcePayment_byForcePaymentIDPaymentID: TIntegerField;
    Select_ForcePayment_byForcePaymentIDComment: TWideStringField;
    Select_ForcePayment_byForcePaymentIDPaid: TBooleanField;
    Select_ForcePayment_byForcePaymentIDOrderNo: TWordField;
    Select_ForcePayment_byForcePaymentIDInterestAmount: TYIntegerField;
    Report_ForcePaymentComment: TWideStringField;
    Balance_Sheet_all: TADOStoredProc;
    AutoIncField1: TAutoIncField;
    WideStringField4: TWideStringField;
    YLargeIntField1: TYLargeIntField;
    YLargeIntField2: TYLargeIntField;
    YLargeIntField3: TYLargeIntField;
    YLargeIntField4: TYLargeIntField;
    YLargeIntField5: TYLargeIntField;
    YLargeIntField6: TYLargeIntField;
    DBalance_Sheet_all: TDataSource;
    Report_LoanPointAccountID: TAutoIncField;
    Report_LoanPointAccountNo: TStringField;
    Report_LoanPointAccountTitle: TWideStringField;
    Report_LoanPointAccountDate: TStringField;
    Report_LoanPointLastLoanDate: TStringField;
    Report_LoanPointLastLoanID: TIntegerField;
    Report_LoanPointRequestDate: TStringField;
    Report_LoanPointLastLoanNo: TStringField;
    Report_LoanPointPartDelay: TIntegerField;
    Report_LoanPointmonthlyDelay: TIntegerField;
    Report_LoanPointAvgPoint: TYIntegerField;
    Report_LoanPointPoint: TYIntegerField;
    Report_LoanPointNumberOfPart: TWordField;
    Report_LoanPointLastLoanAmount: TYIntegerField;
    Report_LoanPointRemainOfLoan: TYIntegerField;
    Select_Account_DetailsExist: TYLargeIntField;
    DDebitStatus: TDataSource;
    DebitStatus: TADOTable;
    DebitStatusDebitStatusID: TWordField;
    DebitStatusDebitStatusTitle: TWideStringField;
    AccountTypeDebitStatusID: TWordField;
    AccountTypeDebitStatusTitle: TStringField;
    Report_SumBalance: TADOStoredProc;
    Report_SumBalanceAccountID: TAutoIncField;
    Report_SumBalanceAccountNo: TStringField;
    Report_SumBalanceAccountTitle: TWideStringField;
    Report_SumBalanceAccountDate: TStringField;
    Report_SumBalanceBenefit: TYLargeIntField;
    Report_SumBalanceSumBalance: TLargeintField;
    DReport_SumBalance: TDataSource;
    Report_ForcePaymentInterestAmount: TIntegerField;
    Select_Account_DetailsContactID: TIntegerField;
    Report_Payment_ByAccountIDDocumentNo: TIntegerField;
    Report_GroupForcePayment_oldSumAmount: TLargeintField;
    Report_LoanFamilyID: TIntegerField;
    Select_ContactHaveInterest: TBooleanField;
    Report_SumBalanceContactTypeID: TWordField;
    Report_SumBalanceContactID: TIntegerField;
    Select_Cash_AccountsAccountID: TAutoIncField;
    Select_Cash_AccountsAccountTitle: TWideStringField;
    Select_LoanAttachmentAttachmentID: TAutoIncField;
    Select_LoanAttachmentDocumentID: TIntegerField;
    Select_LoanAttachmentPageNumber: TWordField;
    Select_LoanAttachmentDataDescription: TWideStringField;
    Select_LoanAttachmentData: TBlobField;
    Select_LoanAttachmentDocumentTypeID: TWordField;
    Report_PaymentPaymentid: TAutoIncField;
    Report_PaymentCreditorAccountTitle: TWideStringField;
    Report_PaymentDebtorAccountTitle: TWideStringField;
    Report_PaymentPayTypeTitle: TWideStringField;
    Report_PaymentDate: TWideStringField;
    Report_PaymentTime: TWideStringField;
    Report_PaymentAmount: TLargeintField;
    Report_PaymentComment: TStringField;
    Report_PaymentInsertDate: TStringField;
    Report_PaymentDocumentNo: TIntegerField;
    Report_PaymentNoteNo: TStringField;
    Report_PaymentMatureDate: TStringField;
    Report_PaymentFinancialNoteAmount: TLargeintField;
    Report_PaymentFinancialNoteTypeTitle: TWideStringField;
    Report_PaymentFullName: TWideStringField;
    Report_PaymentComment2: TStringField;
    DPayType: TDataSource;
    PayTypePayTypeID: TWordField;
    PayTypePayTypeTitle: TWideStringField;
    Report_AccountDebitStatusTitle: TStringField;
    Select_Loan_Parts_DetailsInterestAmount: TIntegerField;
    Select_PaymentDate: TWideStringField;
    LoanTypePeriod: TWideStringField;
    Select_LoanLoanComment: TStringField;
    Report_LoanLoanComment: TStringField;
    Select_AccountAccountNo: TStringField;
    Report_PaymentPBK_ByAccountID: TADOStoredProc;
    DReport_PaymentPBK_ByAccountID: TDataSource;
    Report_PaymentPBK_ByAccountIDdocumentno: TStringField;
    Report_PaymentPBK_ByAccountIDDate: TWideStringField;
    Report_PaymentPBK_ByAccountIDCreditorTitle: TWideStringField;
    Report_PaymentPBK_ByAccountIDDebtorTitle: TWideStringField;
    Report_PaymentPBK_ByAccountIDAmount: TLargeintField;
    Report_PaymentPBK_ByAccountIDPayTypeTitle: TWideStringField;
    Report_PaymentPBK_ByAccountIDComment: TStringField;
    Report_PaymentPBK_ByAccountIDAccountNo: TStringField;
    Report_PaymentPBK_ByAccountIDAccountTitle: TWideStringField;
    Report_PaymentPBK_ByAccountIDCreditorAccountID: TIntegerField;
    Report_PaymentPBK_ByAccountIDDebtorAccountID: TIntegerField;
    Report_PaymentPBK_ByAccountIDNoteNo: TStringField;
    Report_PaymentPBK_ByAccountIDAccountID: TAutoIncField;
    Select_LastMonthlyMonthlyBeginDate: TStringField;
    Report_GroupForcePayment_oldAccountTitle: TStringField;
    LoanAmountLoanAmounGroup: TIntegerField;
    LoanTypeLoanAmounGroup: TIntegerField;
    Select_Account_DetailsTotalExist: TYLargeIntField;
    Report_AccountTotalExist: TYLargeIntField;
    FinancialNote_Master: TADOTable;
    DFinancialNote_Master: TDataSource;
    FinancialNote_Detail: TADOTable;
    DFinancialNote_Detail: TDataSource;
    FinancialNote_MasterFinancialNote_MasterID: TAutoIncField;
    FinancialNote_MasterAmount: TYLargeIntField;
    FinancialNote_MasterFinancialNoteTypeID: TWordField;
    FinancialNote_MasterNoteSubject: TWideStringField;
    FinancialNote_MasterReciver: TWideStringField;
    FinancialNote_MasterUserConfirmer: TWideStringField;
    FinancialNote_DetailFinancialNote_DetailID: TAutoIncField;
    FinancialNote_DetailFinancialNote_MasterID: TIntegerField;
    FinancialNote_DetailNoteNo: TStringField;
    FinancialNote_DetailAmount: TYLargeIntField;
    FinancialNote_DetailForceTypeID: TWordField;
    FinancialNote_DetailBankID: TWordField;
    FinancialNote_DetailNoteDate: TStringField;
    FinancialNote_DetailNoteDescription: TStringField;
    FinancialNote_DetailForcePaymentID: TIntegerField;
    Bank_New: TADOTable;
    WordField1: TWordField;
    WideStringField5: TWideStringField;
    Bank_NewBranch: TWideStringField;
    Bank_NewBranchCode: TStringField;
    Bank_NewFinancialNotePrintFormatID: TWordField;
    FinancialNote_MasterNoteCount: TIntegerField;
    FinancialNote_MasterFinancialNoteTypeTitle: TStringField;
    FinancialNote_DetailNoteStatusID: TWordField;
    MonthlyType_Detail: TADOTable;
    DMonthlyType_Detail: TDataSource;
    MonthlyType_DetailMonthlyTypeID: TIntegerField;
    MonthlyType_DetailMonthlyTypeYear: TStringField;
    MonthlyType_DetailAmount: TYIntegerField;
    FinancialNote_MasterUserConfirmer_Look: TStringField;
    ForcePayment: TADOTable;
    DForcePayment: TDataSource;
    ForcePaymentForcePaymentID: TAutoIncField;
    ForcePaymentMatureDate: TStringField;
    ADSForcePayment: TADODataSet;
    ADSForcePaymentForcePaymentID: TAutoIncField;
    ADSForcePaymentMatureDate: TStringField;
    Select_Loan_PartsNoteNo: TStringField;
    Select_LastPartNoteNo: TStringField;
    Select_LastPartFinancialNote_MasterID: TIntegerField;
    Select_LastPartParentID: TIntegerField;
    Select_LastPartFinancialNote_DetailID: TAutoIncField;
    Select_PaymentFinancialNote_DetailID: TIntegerField;
    Select_PaymentCrtr_DetAccountID: TIntegerField;
    Select_Loan_PartsFinancialNote_DetailID_Look: TIntegerField;
    Select_PaymentNoteNo: TStringField;
    FinancialNote_MasterMatureDate: TStringField;
    FinancialNote_MasterOwnerAccountID: TWideStringField;
    FinancialNoteStatus: TADOTable;
    FinancialNote_DetailNoteStatusID_Look: TStringField;
    DFinancialNoteStatus: TDataSource;
    Select_FinancialNote_Like_New                       : TADOStoredProc;
    DSelect_FinancialNote_Like_New                      : TDataSource;
    Select_FinancialNote_Like_NewAmount                 : TYLargeIntField;
    Select_FinancialNote_Like_NewForceTypeID            : TWordField;
    Select_FinancialNote_Like_NewBankTitle              : TWideStringField;
    Select_FinancialNote_Like_NewNoteDate               : TStringField;
    Select_FinancialNote_Like_NewNoteDescription        : TStringField;
    Select_FinancialNote_Like_NewForcePaymentID         : TIntegerField;
    Select_FinancialNote_Like_NewFinancialNoteStatusDesc: TWideStringField;
    Select_FinancialNote_Like_NewFinancialNoteTypeTitle : TWideStringField;
    Select_FinancialNote_Like_NewNoteNo                 : TStringField;
    Select_FinancialNote_Like_NewBranch                 : TWideStringField;
    Select_FinancialNote_Like_NewBankAccountNo          : TStringField;
    Select_FinancialNote_Like_NewFinancialNote_MasterID : TIntegerField;
    Select_FinancialNote_Like_NewFinancialNote_DetailID : TAutoIncField;
    Select_FinancialNote_Like_NewBankID                 : TWordField;
    Select_FinancialNote_Like_NewNoteStatusID           : TWordField;
    Select_FinancialNote_Like_NewBranchCode             : TStringField;
    Report_Payment_ByDocumentNoFinancialNote_DetailID: TIntegerField;
    Report_Payment_ByDocumentNoCrtr_DetAccountID: TIntegerField;
    Report_Payment_ByDocumentNoNote_DetailAmount: TLargeintField;
    Report_Payment_ByDocumentNoNote_DetailNoteNo: TStringField;
    Report_Payment_ByDocumentNoDetailNoteDate: TStringField;
    Report_Payment_ByDocumentNoStatusFinancialNoteStatusDesc: TWideStringField;
    Report_Payment_ByDocumentNoMasterFinancialNoteTypeID: TWordField;
    Report_Payment_ByDocumentNoNote_DetailFinancialNoteTypeTitle: TWideStringField;
    BankBranch                                          : TWideStringField;
    BankBranchCode                                      : TStringField;
    BankBankAccountNo                                   : TStringField;
    BankFinancialNotePrintFormatID                      : TWordField;
    Report_ForcePaymentLoanOrMonthlyTitle               : TWideStringField;
    adsBank                                             : TADODataSet;
    DadsBank                                            : TDataSource;
    FinancialNote_DetailBranch                          : TWideStringField;
    FinancialNote_DetailBranchCode                      : TStringField;
    FinancialNote_DetailBankTitle                       : TStringField;
    Bank_NewBankAccountNo                               : TStringField;
    FinancialNote_DetailBankAccountNo                   : TStringField;
    Report_PaymentInDetail_M                            : TADOStoredProc;
    Report_PaymentInDetail_MCOMMENT                     : TStringField;
    Report_PaymentInDetail_MPayTypeID                   : TIntegerField;
    Report_PaymentInDetail_MC1                          : TYLargeIntField;
    Report_PaymentInDetail_MC2                          : TYLargeIntField;
    Report_PaymentInDetail_MC3                          : TYLargeIntField;
    Report_PaymentInDetail_MC4                          : TYLargeIntField;
    Report_PaymentInDetail_MC5                          : TYLargeIntField;
    Report_PaymentInDetail_MC6                          : TYLargeIntField;
    dReport_PaymentInDetail_M                           : TDataSource;
    Report_PaymentInDetail_D                            : TADOStoredProc;
    Report_PaymentInDetail_DPayTypeID                   : TWordField;
    Report_PaymentInDetail_DCOMMENT                     : TStringField;
    Report_PaymentInDetail_DAccountTitle                : TWideStringField;
    Report_PaymentInDetail_DAccountNo                   : TStringField;
    Report_PaymentInDetail_DamountDb                    : TYLargeIntField;
    Report_PaymentInDetail_Damountcr                    : TYLargeIntField;
    Report_PaymentInDetail_DDate                        : TWideStringField;
    dReport_PaymentInDetail_D                           : TDataSource;
    TbExcelLog                                          : TADOTable;
    DTbExcelLog                                         : TDataSource;
    TbExcelLogFilePath                                  : TWideStringField;
    TbExcelLogInsertDate                                : TStringField;
    TbExcelLogFileDate                                  : TStringField;
    TbExcelLogRowNo                                     : TIntegerField;
    TbExcelLogUserId: TIntegerField;
    TbExcelLogComment: TStringField;
    Select_LastPartAmerce: TIntegerField;
    Select_Account_DetailsDEBITSTATUSTITLE: TStringField;
    Report_LoanPayedInvestment_Calc: TYIntegerField;
    Select_FinancialNote_Like_NewFinancialNoteTypeID: TWordField;
    Report_PaymentInDetail_DD: TADOStoredProc;
    WordField2: TWordField;
    StringField2: TStringField;
    WideStringField6: TWideStringField;
    StringField3: TStringField;
    YLargeIntField7: TYLargeIntField;
    YLargeIntField8: TYLargeIntField;
    DReport_PaymentInDetail_DD: TDataSource;
    Report_PaymentInDetail_DDDATE: TStringField;
    Report_Account2LASTLOANNO: TIntegerField;
    Report_LoanFamilyTitle: TWideStringField;
    Report_LoanLoanTypeID: TSmallintField;
    Report_AccountACCOUNTNO: TStringField;
    DailyAverage_All: TADOStoredProc;
    DailyAverage_Detail: TADOStoredProc;
    DDailyAverage_All: TDataSource;
    DDailyAverage_Detail: TDataSource;
    DailyAverage_AllACCOUNTID: TIntegerField;
    DailyAverage_AllAccountTitle: TWideStringField;
    DailyAverage_AllDailyAvrage: TFloatField;
    DailyAverage_DetailAccountId: TIntegerField;
    DailyAverage_DetailMojoodiEbtedayeDore: TFloatField;
    DailyAverage_DetailmojoodiRooz: TFloatField;
    DailyAverage_DetailMojRoozJamShodehBaRozGhabl: TFloatField;
    DailyAverage_DetailTedadRooz: TIntegerField;
    DailyAverage_Detail_DATE: TStringField;
    DailyAverage_DetailTotalPrice: TFloatField;
    DailyAverage_DetailAccountTitle: TWideStringField;
    DailyAverage_DetailAccountNo: TStringField;
    DailyAverage_DetailDailyAvr: TFloatField;
    DailyAverage_AllAccountNo: TStringField;
    Report_Account2BeforLastLoanNo: TIntegerField;
    Report_Account2CountOfNotPaiedLoan: TIntegerField;
    Report_Account2LastNotPaidLoanNo: TStringField;
    FinancialNote_DetailFND_LoanId: TIntegerField;
    FinancialNote_DetailFND_LoanNo: TStringField;
    DAccDailyReport: TDataSource;
    DReport_LoanPerAccount: TDataSource;
    Report_LoanPerAccount: TADOStoredProc;
    Report_LoanPerAccountAccountID: TIntegerField;
    Report_LoanPerAccountAccountTitle: TWideStringField;
    Report_LoanPerAccountAccountNo: TStringField;
    Report_LoanPerAccountAccountDate: TStringField;
    Report_LoanPerAccountLoanTypeTitle: TWideStringField;
    Report_LoanPerAccountTedadAghsat: TIntegerField;
    Report_LoanPerAccountTOTALEXIST: TLargeintField;
    REPORT_LOAN_New: TADOStoredProc;
    REPORT_LOAN_NewLOANID: TAutoIncField;
    REPORT_LOAN_NewLOANNO: TStringField;
    REPORT_LOAN_NewLOANDATE: TStringField;
    REPORT_LOAN_NewPARTSBEGINDATE: TStringField;
    REPORT_LOAN_NewLOANTYPETITLE: TWideStringField;
    REPORT_LOAN_NewACCOUNTNO: TStringField;
    REPORT_LOAN_NewSPONSORTITLE: TWideStringField;
    REPORT_LOAN_NewNUMBEROFPART: TIntegerField;
    REPORT_LOAN_NewNUMBEROFPAIDPART: TIntegerField;
    REPORT_LOAN_NewDELAYEDPARTS: TIntegerField;
    REPORT_LOAN_NewFAMILYID: TIntegerField;
    REPORT_LOAN_NewACCOUNTTITLE: TWideStringField;
    REPORT_LOAN_NewLOANCOMMENT: TStringField;
    REPORT_LOAN_NewFamilyTitle: TWideStringField;
    REPORT_LOAN_NewLoanTypeID: TSmallintField;
    PAY_BENEFIT_New: TADOStoredProc;
    PAY_BENEFIT_NewACCOUNTID: TIntegerField;
    PAY_BENEFIT_NewBENEFITACCOUNTID: TIntegerField;
    PAY_BENEFIT_Newdate: TStringField;
    PAY_BENEFIT_Newtime: TStringField;
    PAY_BENEFIT_NewAccountTitle: TWideStringField;
    PAY_BENEFIT_NewAccountNO: TStringField;
    PAY_BENEFIT_NewInsertedBenefitPrice: TFloatField;
    DPAY_BENEFIT_New: TDataSource;
    REPORT_BENEFIT: TADOStoredProc;
    REPORT_BENEFITACCOUNTID: TIntegerField;
    REPORT_BENEFITYEAR: TIntegerField;
    REPORT_BENEFITDocumentNo: TStringField;
    REPORT_BENEFITInsertedBenefitPrice: TFloatField;
    REPORT_BENEFITAnnualAvragePrice: TFloatField;
    REPORT_BENEFITInsertedDate: TStringField;
    REPORT_BENEFITInsertedUserId: TIntegerField;
    REPORT_BENEFITAccountTitle: TWideStringField;
    REPORT_BENEFITAccountNo: TStringField;
    REPORT_BENEFITBenefitPercent: TFloatField;
    DREPORT_BENEFIT: TDataSource;
    QrGetLoanGrtCount: TADOQuery;
    QrGetLoanGrtCountLoanGaurantorCount: TIntegerField;
    QrGetLoanGrtPrice: TADOQuery;
    QrGetLoanGrtPriceLoanGaurantorPrice: TIntegerField;
    DReport_ForcePayment2: TDataSource;
    Report_ForcePayment2: TADOStoredProc;
    Report_ForcePayment2ACCOUNTID: TIntegerField;
    Report_ForcePayment2FORCETYPEID: TWordField;
    Report_ForcePayment2FORCEPAYMENTID: TIntegerField;
    Report_ForcePayment2PARENTID: TIntegerField;
    Report_ForcePayment2ACCOUNTNO: TStringField;
    Report_ForcePayment2ACCOUNTTITLE: TWideStringField;
    Report_ForcePayment2LOANNO: TStringField;
    Report_ForcePayment2MATUREDATE: TStringField;
    Report_ForcePayment2PAID: TBooleanField;
    Report_ForcePayment2ORDERNO: TWordField;
    Report_ForcePayment2DELAY: TIntegerField;
    Report_ForcePayment2PAYMENTID: TIntegerField;
    Report_ForcePayment2PAYDATE: TStringField;
    Report_ForcePayment2COMMENT: TWideStringField;
    Report_ForcePayment2INTERESTAMOUNT: TIntegerField;
    Report_ForcePayment2LOANORMONTHLYTITLE: TWideStringField;
    Report_ForcePayment2FOCETYPETITLE: TWideStringField;
    SReport_DelayedLoanPayment: TADOStoredProc;
    SReport_DelayedLoanPaymentAccountTitle: TWideStringField;
    SReport_DelayedLoanPaymentACCOUNTNo: TStringField;
    SReport_DelayedLoanPaymentOrderNoCount: TIntegerField;
    SReport_DelayedLoanPaymentLoanNo: TStringField;
    SReport_DelayedLoanPaymentACCOUNTID: TIntegerField;
    SReport_DelayedLoanPaymentREMAINOfLoanPerAccountId: TIntegerField;
    LoanTypeForGivenLoan: TBooleanField;
    Report_AccountBIRTHDATE: TStringField;
    sp_ShowPerfrajD: TDataSource;
    sp_ShowPerfraj: TADOStoredProc;
    Sp_ShowBill: TADOStoredProc;
    Sp_ShowBillD: TDataSource;
    Sp_ShowBillCreditorAccountID: TIntegerField;
    Sp_ShowBillDebtorAccountID: TIntegerField;
    Sp_ShowBillDate: TWideStringField;
    Sp_ShowBillTime: TWideStringField;
    Sp_ShowBillComment: TStringField;
    Sp_ShowBillFINANCIALNOTE_DETAILID: TIntegerField;
    Sp_ShowBillCreditAccountTitle: TWideStringField;
    Sp_ShowBillDebitAccountTitle: TWideStringField;
    Sp_ShowBilldocumentno: TStringField;
    Sp_ShowBillPaymentID: TAutoIncField;
    Sp_ShowBillAmount_H: TStringField;
    Sp_ShowBillCreditAccountNo: TStringField;
    Sp_ShowBillDebitAccountNo: TStringField;
    Sp_ShowBillAmount: TYLargeIntField;
    RepTotalPayment: TADOStoredProc;
    DRepTotalPayment: TDataSource;
    RepTotalPaymentCreditorAccountID: TIntegerField;
    RepTotalPaymentDebtorAccountID: TIntegerField;
    RepTotalPaymentDate: TWideStringField;
    RepTotalPaymentAmount: TLargeintField;
    RepTotalPaymentComment: TStringField;
    RepTotalPaymentPayTypeID: TWordField;
    RepTotalPaymentdocumentno: TStringField;
    RepTotalPaymentPayTypeTitle: TWideStringField;
    RepTotalPaymentcrTitle: TWideStringField;
    RepTotalPaymentdbtitle: TWideStringField;
    RepTotalPaymentGROUPID: TIntegerField;
    RepTotalPaymentGROUPTitle: TWideStringField;
    DReportsName: TDataSource;
    ReportsName: TADOTable;
    ReportsNameReportID: TAutoIncField;
    ReportsNameReportCode: TIntegerField;
    ReportsNameReportName: TStringField;
    ReportsNameReportDescription: TWideStringField;
    ReportsNameObjectName: TStringField;
    Objects: TADOTable;
    DObjects: TDataSource;
    ObjectsObjectName: TStringField;
    ObjectsObjectCaption: TWideStringField;
    ReportsNameObjectName_Look: TStringField;
    ObjectsGroupTitle: TWideStringField;
    sp_ForTest: TADOStoredProc;
    sp_ForTestD: TDataSource;
    AccountPresenter: TADOTable;
    DAccountPresentation: TDataSource;
    AccountPresenterAccountId: TIntegerField;
    AccountPresenterContactId: TIntegerField;
    Account: TADOTable;
    AccountAccountID: TAutoIncField;
    AccountAccountTitle: TWideStringField;
    AccountAccountNo: TStringField;
    AccountContactID: TIntegerField;
    AccountAccountDate: TStringField;
    AccountIsActive: TBooleanField;
    AccountMonthlyTypeID: TIntegerField;
    AccountMonthlyBeginDate: TStringField;
    AccountFamilyid: TIntegerField;
    AccountAccountTypeID: TWordField;
    AccountBankID: TWordField;
    AccountAlarmBeginDate: TStringField;
    AccountAlarmEndDate: TStringField;
    AccountAlarmText: TWideStringField;
    AccountBlockedPrice: TFloatField;
    AccountIsBlocked: TBooleanField;
    Contact: TADOTable;
    ContactContactID: TAutoIncField;
    ContactQ: TADOQuery;
    ContactQContactID: TAutoIncField;
    ContactQPersonalNo: TWideStringField;
    ContactQContactTypeID: TWordField;
    ContactQContactTypeTitle: TWideStringField;
    AccountPresenterAccountPresenterId: TAutoIncField;
    DContactQ: TDataSource;
    ContactQContactTitle: TStringField;
    ContactContactTitle: TStringField;
    AccountPresenterContactTitle_Look: TStringField;
    ContactContactTypeID: TWordField;
    ContactContactType_Look: TStringField;
    AccountPresenterContactType_Look: TStringField;
    DataSource1: TDataSource;
    SELECT_CASH_ACCOUNTS_PLUS: TADOStoredProc;
    AutoIncField2: TAutoIncField;
    WideStringField7: TWideStringField;
    DSELECT_CASH_ACCOUNTS_PLUS: TDataSource;
    Report_Account2BIRTHDATE: TStringField;
    Select_FinancialNote_Like_NewFND_LoanNo: TStringField;
    Select_FinancialNote_Like_NewFND_LoanId: TIntegerField;
    SReport_DelayedLoanPayment_DETAIL: TADOStoredProc;
    UsersAccMngtAccess: TBooleanField;
    Select_Account_DetailsPAYBALANCETitle: TStringField;
    Select_Account_DetailsMONTHLYBALANCETitle: TStringField;
    Select_Account_DetailsEXISTTitle: TStringField;
    Select_Account_DetailsTOTALEXISTTitle: TStringField;
    Report_DeletedPayment_ByDocumentNo: TADOStoredProc;
    AutoIncField3: TAutoIncField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    YLargeIntField9: TYLargeIntField;
    StringField4: TStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    IntegerField7: TIntegerField;
    WordField3: TWordField;
    IntegerField8: TIntegerField;
    StringField7: TStringField;
    WideStringField10: TWideStringField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    YLargeIntField10: TYLargeIntField;
    WideStringField13: TWideStringField;
    WideStringField14: TWideStringField;
    StringField10: TStringField;
    IntegerField9: TIntegerField;
    IntegerField10: TIntegerField;
    LargeintField1: TLargeintField;
    StringField11: TStringField;
    StringField12: TStringField;
    WideStringField15: TWideStringField;
    WordField4: TWordField;
    WideStringField16: TWideStringField;
    DReport_DeletedPayment_ByDocumentNo: TDataSource;
    REPORT_PAYMENT_ForPrint: TADOStoredProc;
    dREPORT_PAYMENT_ForPrint: TDataSource;
    REPORT_PAYMENT_ForPrintPaymentID: TAutoIncField;
    REPORT_PAYMENT_ForPrintCreditorAccountID: TIntegerField;
    REPORT_PAYMENT_ForPrintDebtorAccountID: TIntegerField;
    REPORT_PAYMENT_ForPrintDate: TWideStringField;
    REPORT_PAYMENT_ForPrintTime: TWideStringField;
    REPORT_PAYMENT_ForPrintAmount: TLargeintField;
    REPORT_PAYMENT_ForPrintComment: TStringField;
    REPORT_PAYMENT_ForPrintFinancialNoteID: TIntegerField;
    REPORT_PAYMENT_ForPrintInsertUserID: TIntegerField;
    REPORT_PAYMENT_ForPrintInsertDate: TStringField;
    REPORT_PAYMENT_ForPrintLastUpDate: TStringField;
    REPORT_PAYMENT_ForPrintLastUserID: TIntegerField;
    REPORT_PAYMENT_ForPrintPayTypeID: TWordField;
    REPORT_PAYMENT_ForPrintRelatedID: TIntegerField;
    REPORT_PAYMENT_ForPrintdocumentno: TStringField;
    REPORT_PAYMENT_ForPrintCRTR_DETACCOUNTID: TIntegerField;
    REPORT_PAYMENT_ForPrintFINANCIALNOTE_DETAILID: TIntegerField;
    REPORT_PAYMENT_ForPrintWasPrinted: TSmallintField;
    REPORT_PAYMENT_ForPrintPayTypeSecondId: TIntegerField;
    REPORT_PAYMENT_ForPrintRefrencePaymentId: TIntegerField;
    REPORT_PAYMENT_ForPrintCREDITORACCOUNTTITLE: TWideStringField;
    REPORT_PAYMENT_ForPrintDEBTORACCOUNTTITLE: TWideStringField;
    REPORT_PAYMENT_ForPrintPAYTYPETITLE: TWideStringField;
    REPORT_PAYMENT_ForPrintNOTENO: TStringField;
    REPORT_PAYMENT_ForPrintMATUREDATE: TStringField;
    REPORT_PAYMENT_ForPrintFINANCIALNOTEAMOUNT: TLargeintField;
    REPORT_PAYMENT_ForPrintFINANCIALNOTETYPETITLE: TWideStringField;
    REPORT_PAYMENT_ForPrintFULLNAME: TWideStringField;
    REPORT_PAYMENT_ForPrintCOMMENT2: TStringField;
    REPORT_PAYMENT_ForPrintNOTE_DETAILAMOUNT: TLargeintField;
    REPORT_PAYMENT_ForPrintNOTE_DETAILNOTENO: TStringField;
    REPORT_PAYMENT_ForPrintDETAILNOTEDATE: TStringField;
    REPORT_PAYMENT_ForPrintSTATUSFINANCIALNOTESTATUSDESC: TWideStringField;
    REPORT_PAYMENT_ForPrintMASTERFINANCIALNOTETYPEID: TWordField;
    REPORT_PAYMENT_ForPrintNOTE_DETAILFINANCIALNOTETYPETITLE: TWideStringField;
    LoanTypeMaxLoanAmount: TFloatField;
    LoanTypeInterestPercent: TFloatField;
    LoanTypeWagePercent: TFloatField;
    Report_LoanPointByNaseri: TADOStoredProc;
    DAllActiveAccounts: TDataSource;
    PAY_BENEFIT_NewAnnualAvragePrice: TFloatField;
    sp_show_proferaj_with_RemainD: TDataSource;
    sp_show_proferaj_with_Remain: TADOStoredProc;
    Rep_LoanPoint: TADOStoredProc;
    Rep_LoanPointAccountID: TAutoIncField;
    StringField13: TStringField;
    WideStringField17: TWideStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    IntegerField11: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    YIntegerField1: TYIntegerField;
    YIntegerField2: TYIntegerField;
    WordField5: TWordField;
    YIntegerField3: TYIntegerField;
    YIntegerField4: TYIntegerField;
    Sel_Rep_LoanPoint: TADOStoredProc;
    AutoIncField5: TAutoIncField;
    StringField18: TStringField;
    WideStringField18: TWideStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    IntegerField14: TIntegerField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    YIntegerField5: TYIntegerField;
    YIntegerField6: TYIntegerField;
    WordField6: TWordField;
    YIntegerField7: TYIntegerField;
    YIntegerField8: TYIntegerField;
    Report_AccountAccountNoInt: TLargeintField;
    Select_ContactContactTitle: TStringField;
    Select_ContactSexId: TIntegerField;
    tblSexes: TADOTable;
    dSexes: TDataSource;
    Select_ContactSendSms: TBooleanField;
    Select_Account_DetailsPhone: TWideStringField;
    idhttp1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    Report_GroupForcePayment: TADOQuery;
    Report_GroupForcePaymentAccountID: TIntegerField;
    Report_GroupForcePaymentAccountNo: TStringField;
    Report_GroupForcePaymentSumdelay: TIntegerField;
    Report_GroupForcePaymentSumAmount: TLargeintField;
    Report_GroupForcePaymentAccountTitle: TStringField;
    Select_LoanPartNumber: TIntegerField;
    LoanTypePartNumber: TIntegerField;
    sAlphaHints1: TsAlphaHints;
    AccDailyReport: TADOQuery;
    LoanAmountLoanAmount: TLargeintField;
    Select_LoanAMOUNT: TLargeintField;
    Report_LoanAMOUNT: TLargeintField;
    Report_LoanREMAINOFLOAN: TLargeintField;
    Report_LoanPAIEDAMOUNT: TLargeintField;
    Select_Loan_ByAccountIDAMOUNT: TLargeintField;
    Select_Loan_ByAccountIDREMAINOFLOAN: TLargeintField;
    Select_Loan_PartsAmount: TLargeintField;
    Report_ForcePaymentAMOUNT: TLargeintField;
    Report_GroupForcePaymentSUMPART: TLargeintField;
    Report_GroupForcePaymentSUMMONTHLY: TLargeintField;
    Report_GroupForcePaymentINTERESTAMOUNT: TIntegerField;
    SReport_DelayedLoanPaymentREMAINOFLOAN: TLargeintField;
    REPORT_LOAN_NewPAIEDAMOUNT: TLargeintField;
    REPORT_LOAN_NewREMAINOFLOAN: TLargeintField;
    REPORT_LOAN_NewAMOUNT: TLargeintField;
    Select_LastPartLoanAmount: TLargeintField;
    Select_LastPartAmount: TLargeintField;
    Select_LastMonthlyAMOUNT: TLargeintField;
    Report_Account2REMAINOFLOAN: TLargeintField;
    Report_Account2LASTLOANAMOUNT: TLargeintField;
    Report_Account2BeforLastLoanAmount: TLargeintField;
    Select_Loan_Parts_DetailsLoanAmount: TLargeintField;
    Select_Loan_Parts_DetailsREMAINAMOUNT: TLargeintField;
    Select_Loan_Parts_DetailsAMOUNT: TLargeintField;
    Select_Monthly_DetailsAMOUNT: TLargeintField;
    Select_Account_MonthlysAmount: TLargeintField;
    Select_ForcePayment_byForcePaymentIDAmount: TLargeintField;
    Report_LoanPerAccountMablaghVam: TLargeintField;
    Report_LoanPerAccountMablaghYekGhest: TLargeintField;
    Report_LoanPerAccountAghsatPardakhti: TLargeintField;
    Report_LoanPerAccountmandehVam: TLargeintField;
    Report_LoanPerAccountTotalMandehVam: TLargeintField;
    Report_LoanPerAccountPaidIntrestAmount: TIntegerField;
    Report_LoanPerAccountTotalIntrestAmount: TIntegerField;
    Report_LoanPerAccountJamePardakhti: TLargeintField;
    Report_ForcePayment2AMOUNT: TLargeintField;
    Select_Loan_LikeAMOUNT: TLargeintField;
    Select_Loan_LikeREMAINOFLOAN: TLargeintField;
    qryGetDbVer: TADOQuery;
    Report_ForcePaymentAMERCE: TLargeintField;
    Report_GroupForcePaymentSUMAMERCE: TLargeintField;
    qryAutoRunScript: TADOQuery;
    LetterImages_New: TImageList;
    ImageList_MainNew: TImageList;
    Report_ForcePayment2AMERCE: TLargeintField;
    Report_Payment_ByAccountIDPayTypeSecondId: TIntegerField;
    function  Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
    function  Y_InputQuery_Double (const ACaption,ACaption2, Adefault,Adefault2: string; var Value,Value2: string): Boolean;
    function  Search(Y:TYwhereEdit):integer;
    function  SearchTable(Ads:TDataSet;CodeField,TitleField:string):integer;
    function  SearchTableWithFilter(Ads:TDataSet;CodeField,TitleField,FilterTxt:string):integer;
    procedure DataModuleCreate(Sender: TObject);
    procedure Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;var fieldValue: WideString);
    procedure SaveTemplateToFile;
    procedure Yeganeh_Word1NeedTextOnNull(FieldDescription: WideString;var fieldValue: WideString);
    procedure Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;var fieldName: WideString; var isBarCode: Boolean);
    procedure Yeganeh_Word1NeedDataBaseField(FieldDescription: WideString;var fieldName: WideString; var isBarCode: Boolean);
    procedure Select_Loan_PartsCalcFields(DataSet: TDataSet);
    procedure Select_TableAfterScroll(DataSet: TDataSet);
    procedure Select_Loan_Parts_DetailsCalcFields(DataSet: TDataSet);
    procedure Select_Monthly_DetailsCalcFields(DataSet: TDataSet);
    procedure Select_Account_MonthlysBeforeDelete(DataSet: TDataSet);
    procedure Select_Account_MonthlysBeforeInsert(DataSet: TDataSet);
    procedure Select_Account_MonthlysBeforePost(DataSet: TDataSet);
    procedure Select_Account_MonthlysCalcFields(DataSet: TDataSet);
    procedure ApplicationEventsException(Sender: TObject; E: Exception);
    procedure Report_CashAccountCalcFields(DataSet: TDataSet);
    procedure UsersAfterInsert(DataSet: TDataSet);
    procedure Select_PaymentAfterInsert(DataSet: TDataSet);
    procedure Report_Account2CalcFields(DataSet: TDataSet);
    procedure Report_Payment_ByAccountIDCalcFields(DataSet: TDataSet);
    procedure PrintPayment_ByDocumentNo (DocumentNo: string);
    Procedure PrintHeader(Title:string);
    procedure Select_ContactAfterInsert(DataSet: TDataSet);
    procedure Select_Account_DetailsAccountDateSetText(Sender: TField;const Text: String);
    procedure Select_Account_DetailsAccountDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Select_AccountAfterInsert(DataSet: TDataSet);
    procedure UsersBeginDateGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure UsersEndDateGetText(Sender: TField; var Text: String;   DisplayText: Boolean);
    procedure UsersBeginDateSetText(Sender: TField; const Text: String);
    procedure UsersEndDateSetText(Sender: TField; const Text: String);
    procedure Report_SumBalanceAccountDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Report_Payment_ByDocumentNoDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Report_Payment_ByDocumentNoDateSetText(Sender: TField;const Text: String);
    procedure Report_SumBalanceAccountDateSetText(Sender: TField;const Text: String);
    procedure Report_Daily_PaymentDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Report_Daily_PaymentDateSetText(Sender:TField;const Text: String);
    procedure Report_Account2AccountDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Report_Account2AccountDateSetText(Sender:TField;const Text: String);
    procedure Report_PaymentDateGetText(Sender:TField;var Text: String;DisplayText: Boolean);
    procedure Report_PaymentDateSetText(Sender:TField;const Text: String);
    procedure Report_CashAccountAccountDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Report_CashAccountAccountDateSetText(Sender:TField;const Text: String);
    procedure Report_LoanPointAccountDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Report_LoanPointAccountDateSetText(Sender:TField;const Text: String);
    procedure Select_FinancialNote_LikeMatureDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Select_FinancialNote_LikeMatureDateSetText(Sender:TField;const Text: String);
    procedure Select_FinancialNote_deatilsMatureDateGetText(Sender:TField;var Text: String; DisplayText: Boolean);
    procedure Select_FinancialNote_deatilsMatureDateSetText(Sender:TField;const Text: String);
    procedure Select_FinancialNoteMatureDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Select_FinancialNoteMatureDateSetText(Sender:TField;Const Text: String);
    procedure Report_ForcePaymentMatureDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Report_ForcePaymentMatureDateSetText(Sender:TField;Const Text: String);
    procedure Select_Monthly_DetailsPayDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Select_Monthly_DetailsPayDateSetText(Sender:TField;Const Text: String);
    procedure Select_LoanGaurantorBirthDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Select_LoanGaurantorBirthDateSetText(Sender:TField;Const Text: String);
    procedure Select_Loan_PartsMatureDateGetText(Sender: TField ;Var Text: String; DisplayText: Boolean);
    procedure Select_Loan_PartsMatureDateSetText(Sender: TField ;const Text: String);
    procedure Report_LatestPayment_ByAccountIDDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Report_LatestPayment_ByAccountIDDateSetText(Sender: TField;const Text: String);
    procedure Select_LastMonthlyAccountDateGetText(Sender: TField;Var Text: String; DisplayText: Boolean);
    procedure Select_LastMonthlyAccountDateSetText(Sender: TField;const Text: String);
    procedure Select_Loan_LikeLoanDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Select_Loan_LikeLoanDateSetText(Sender:TField;const Text: String);
    procedure Select_LastPartLoanDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Select_LastPartLoanDateSetText(Sender:TField;const Text: String);
    procedure Report_LoanLoanDateGetText(Sender:TField;Var Text: String;DisplayText: Boolean);
    procedure Report_LoanLoanDateSetText(Sender:TField;const Text: String);
    procedure Report_ContactBirthDateGetText(Sender:TField;Var Text: String; DisplayText: Boolean);
    procedure Report_ContactBirthDateSetText(Sender:TField;const Text: String);
    procedure Select_LoanLoanDateGetText(Sender: TField;Var Text: String;DisplayText: Boolean);
    procedure Select_LoanLoanDateSetText(Sender: TField;const  Text: String);
    procedure Select_Loan_ByAccountIDLoanDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Select_Loan_ByAccountIDLoanDateSetText(Sender: TField;const Text: String);
    procedure Report_AccountAccountDateGetText(Sender: TField;Var Text: String; DisplayText: Boolean);
    procedure Report_AccountAccountDateSetText(Sender: TField;const Text: String);
    procedure Select_Loan_Parts_DetailsPayDateGetText(Sender: TField;Var Text: String; DisplayText: Boolean);
    procedure Select_Loan_Parts_DetailsPayDateSetText(Sender: TField;const Text: String);
    procedure Report_LoanRequestRequestDateGetText(Sender: TField;Var Text: String; DisplayText: Boolean);
    procedure Report_LoanRequestRequestDateSetText(Sender: TField;const Text: String);
    procedure Select_LoanRequestRequestDateGetText(Sender: TField;Var Text: String; DisplayText: Boolean);
    procedure Select_LoanRequestRequestDateSetText(Sender: TField;const Text: String);
    procedure Select_LoanRequest_ByAccountIDRequestDateGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure Select_LoanRequest_ByAccountIDRequestDateSetText(Sender: TField; const Text: String);
    procedure Select_ForcePayment_byForcePaymentIDMatureDateGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure Select_ForcePayment_byForcePaymentIDMatureDateSetText(Sender: TField; const Text: String);
    procedure Select_ContactBirthDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Select_ContactBirthDateSetText(Sender: TField;const Text: String);
    procedure Report_Payment_ByAccountIDDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
    procedure Report_Payment_ByAccountIDDateSetText(Sender: TField;const Text: String);
    procedure Select_PaymentDateGetText(Sender: TField; var Text: String;DisplayText: Boolean);
    procedure Select_PaymentDateSetText(Sender: TField;const Text: String);
    Procedure RunCashScripts(aADOConnection:TADOConnection);
    procedure DFinancialNote_MasterDataChange(Sender: TObject;Field: TField);
    procedure DFinancialNote_DetailDataChange(Sender: TObject;Field: TField);
    procedure FinancialNote_MasterAfterInsert(DataSet: TDataSet);
    procedure FinancialNote_DetailBeforePost(DataSet: TDataSet);
    procedure BankBeforeEdit(DataSet: TDataSet);
    procedure BankBeforeDelete(DataSet: TDataSet);
    procedure FinancialNote_DetailAfterInsert(DataSet: TDataSet);
    procedure DSelect_FinancialNote_Like_NewDataChange(Sender: TObject;Field: TField);
    procedure FinancialNote_MasterBeforePost(DataSet: TDataSet);
    procedure FinancialNote_DetailBeforeInsert(DataSet: TDataSet);
    procedure dReport_PaymentInDetail_MDataChange(Sender: TObject;Field: TField);
    procedure Report_LoanCalcFields(DataSet: TDataSet);
    procedure FinancialNote_DetailBeforeEdit(DataSet: TDataSet);
    procedure FinancialNote_DetailBeforeDelete(DataSet: TDataSet);
    procedure CheckValidityOfFinancialNote_Detail;
    procedure DDailyAverage_AllDataChange(Sender: TObject; Field: TField);
    procedure Insert_ForGivenPayment(LoanId,CrAccountId:integer;LoanNo:String);
    procedure Insert_RemainOfLoan(FPID:String;dbAccID:integer);
    procedure Sp_ShowBillCalcFields(DataSet: TDataSet);
    procedure ReportsNameAfterInsert(DataSet: TDataSet);
    procedure ReportsNameBeforeInsert(DataSet: TDataSet);
    procedure AccountPresenterAfterInsert(DataSet: TDataSet);
    procedure AccountPresenterBeforePost(DataSet: TDataSet);
    procedure LoanTypeAfterInsert(DataSet: TDataSet);
    procedure Report_ForcePaymentAfterOpen(DataSet: TDataSet);
    procedure FinancialNote_DetailAfterScroll(DataSet: TDataSet);
    procedure SendSmsToOutBox (	SmsNumber,SmsText :String);
    function Post(param1:string): string;

    function FindSmsServerCenter:String;

    // ARM LOCK
    function ByteArrayToVariant( const A: array of byte ): Variant;
    // ----------------------

    function DATE_TO_NUMBER(S : String):Integer;

    function IsTinyOk:Boolean;
    function GetLockIP:string;
    procedure Report_AccountAfterOpen(DataSet: TDataSet);
    procedure ReportsNameBeforePost(DataSet: TDataSet);
    procedure MonthlyType_DetailBeforePost(DataSet: TDataSet);
  public
    SMS_ACT_LIST : String;
    FormName : string;
    FocusedColor:Tcolor;
    SearchResult:integer;
    _dEfultGroup:Integer;
    blnDataIsReady : Boolean;
    function SetDocTitle:string;
    procedure LinePrint(ID :integer;IsAccount:boolean;Paydate,Desc,Creditor,Debtor,Remain,DocNo,AccountNo,AccountTitle,ShowDesign,Benefit,FormName:string); overload;
    procedure LinePrint(ID :integer;IsAccount:boolean;Paydate,Desc,Creditor,Debtor,Remain,DocNo,AccountNo,AccountTitle,ShowDesign,Benefit,FormName,RealRemain:string); overload;
    function getDelphiVer:String;
    function getDBVer:String;
    { TODO -oparsa : 14030108 }
    procedure AutoUpdateDatabase;
    { TODO -oparsa : 14030108 }
  end;

type
  TSmsDetails = record
    Id        : Integer;
    SmsText   : string;
    SmsPhone  : string;
    SendDate  : string;
  end;

var
   dm: Tdm;
   _ResultID:integer;
   _Userid:integer;
   _AccMngtAccess:Boolean;
   _LogoPath,
   _TempPath:string;
   _Username:string;
   _Today:string;
   _Year : Integer;
   {Ranjbar}
   _Month : String[2];
   _Day : String[2];

   //---
   _AccessID:integer;
   _WordFileName,
   _SoftTitle: string;
   _Word_Is_Opened:boolean;
   _FrSumPaymentIsShowing:Boolean;
   _FocusedColor:TColor;
   _FinancialNoteid,
   _FinancialNote_DetailID,
   _FinancialNote_MasterID,
   _FoundAccountID,
   _FoundLoanID,
   _FoundContactID,
   _FoundPriorityAccountID : integer;
   _FoundPriorityUrgency: boolean;
   _FoundAcountNo,
   _FoundLoanNo:string;
   _GridFont,
   _EditFont:TFont;
   ServerName:string;
   _EXEDIR : string;
   _WithDongle:boolean;
   DataBaseName:string;
   _UserFolder:String;
   _FinancialNote_Field1:String;
   _FinancialNote_Field2:String;
   _FinancialNote_Where:String;
   _FinancialNote_Table:String;
   _CanEditPaymentDate : boolean;
   _CrOrDbForRefreshPayment:integer;
   _SWCanClose:Boolean;
   _isDebtorFinancial : boolean; // Amin 1391/09/15
   _isForReceipt : boolean; // Amin 1391/11/08
   _AmountForRefreshPayment:Largeint;
   _FrAddPaymentCloseWithoutDoEnything:Boolean;
   _NotNoForRefreshPayment:string;
   _DeatailIdForRefreshPayment:Integer;
   _IsCheckAccount:Boolean;
   _B_F_Ins_BankID  :INTEGER;
   _B_F_Ins_AccountNo,
   _B_F_Ins_Branch,
   _B_F_Ins_BranchCode:String;
   _EXCEPTION_SetCashIsDebtor:BOOLEAN;
   _AddLoan:BOOLEAN;
   _AgainMakeParts : BOOLEAN;
   _AccountPresenterAccountID:Integer;
    UsedForMountly:BOOLEAN;
    BeforInsertReportsNameReportName,
    BeforInsertReportsNameObjectName,
    BeforInsertReportsNameReportDescription:String;
   _SmsUser:WideString;
   _SmsPassWord:WideString;
   _CashNameForSms:WideString;
   _EnableSms : Boolean;
   SmsNumber, SmsText: String;
   arrSmsDetails: array of TSmsDetails;
   _SoftVersion, _DbVersion : String;
   _CountError : Integer;
   _Acolor1 : TColor ;
   _Acolor2 : TColor ;
   _Acolor3 : TColor ;
   _Bcolor1 : TColor ;
   _Bcolor2 : TColor ;
   _Bcolor3 : TColor ;
   _Maincolor1 : TColor ;
   _Maincolor2 : TColor ;
   _Maincolor3 : TColor ;
   // ARM LOCK
//   _ARM_CoName, _ARM_IPServer, _ARM_AUSKey, _ARM_ReadKey, _ARM_WriteKey, _ARM_SafeKey1, _ARM_SafeKey2 : String;
//   _ARM_DongleCore_AESClass : AESClass;
   // ---------

   _SMSCenterNumber : WideString;

Const
   _SoftVerLastUpdate = '1403/11/17';//'1396/07/17';
//   _SoftVertion       = '7.0.12.101';//'5.0.0.5';//'4.2.7.7'   ; //'3.2.0.0'

Type
  SmsThread = Class(TThread)
  private
  protected
  procedure Execute; override;
  procedure UpdateOutBox;
end;

Implementation

uses BusinessLayer,
     LoginU,
     YInputQuery,
     YeganehDemo,
     USearchTitle,
     MainU,
     YShamsiDate,
     ConnectU,
     PrintPayment_ByDocumentNoU,
     DongleU,
     QrPaymentU,
     YInputQuery_Double,
     AddFinancialNote_NewU,
     AvrageU,
     uSendSMS, Variants, untScript,
     uUpdateDbScripts;

{$R *.dfm}

function Tdm.DATE_TO_NUMBER(S : String):Longint;
var
  RES : Longint;
begin
  RES := 0;

  try
    if S <> '' then
    begin
      RES := RES + StrToInt(COPY(S,1,4))*10000;

      RES := RES + StrToInt(COPY(S,6,2))*100;

      RES := RES + StrToInt(COPY(S,9,2));
    end;

    Result := RES;

  except
    Result := 0;
  end;
end;

function Tdm.ByteArrayToVariant( const A: array of byte ): Variant;
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

function tdm.Y_InputQuery (const ACaption, Adefault: string; var Value: string): Boolean;
begin
  YInputQueryF:=TYInputQueryF.Create(Application);
  YInputQueryF.Label1.Caption:=ACaption;
  YInputQueryF.output.Text:=Adefault;
  YInputQueryF.ShowModal;
  Result:=YInputQueryF.done;
  Value:=YInputQueryF.output.Text;
end;

function tdm.Y_InputQuery_Double (const ACaption,ACaption2, Adefault,Adefault2: string; var Value,Value2: string): Boolean;
begin
  YInputQuery_DoublF:=TYInputQuery_DoublF.Create(Application);
  YInputQuery_DoublF.Label1.Caption:=ACaption;
  YInputQuery_DoublF.output.Text:=Adefault;
  YInputQuery_DoublF.Label2.Caption:=ACaption2;
  YInputQuery_DoublF.output2.Text:=Adefault2;
  YInputQuery_DoublF.ShowModal;
  Result:=YInputQuery_DoublF.done;
  Value:=YInputQuery_DoublF.output.Text;
  Value2:=YInputQuery_DoublF.output2.Text;
end;

{Ranjbar 88.05.17   »œ·Ì· ›—ﬁ œ«‘ ‰ ÃœÊ·  ‰ŸÌ„«  «Ì‰  «»⁄ »—«Ì «Ì‰ ‰—„ «›“«— Ãœ«ê«‰Â ‰Ê‘ Â ‘œ
 «»⁄ «Ã—« ﬂ—œ‰ «”ﬂ—ÌÅ  Â« }
Procedure Tdm.RunCashScripts(aADOConnection:TADOConnection);
Var
   P1 , P2:Int64;
   LastScrNum , DataNum , I , J :integer;
   ScrText , ScrTextFile , SubCommand :TStrings;
   TF : TextFile;
   S :String;
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
  ADOCommand.CommandTimeout:=1200; //20 œﬁÌﬁÂ

  if FileExists(ScrFileName) then
  begin
    Value := Qry_GetResult('Select Value from Setting where userid= -1 And variableName = ''ScriptsNumber''', aADOConnection);//”Ì” „Ì
    if Value = '' then
    begin
      Qry_SetResult('Insert InTo Setting(UserID,VariableName,Value) Values(-1,''ScriptsNumber'',0 )'  ,aADOConnection);//”Ì” „Ì
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

    SubCommand.Clear;
    if DataNum < LastScrNum then
    begin
      for I:=DataNum+1 to LastScrNum do
      begin
        P1 := 0;
        P2 := 0;
        P1 := Pos('[Num]='+IntToStr(I)   , ScrText.Text);
        if I < LastScrNum then
          P2 := Pos('[Num]='+IntToStr(I+1) , ScrText.Text)-1
        else
          P2 := Length(ScrText.Text)+1;

        ScrTextFile.Text := Trim(Copy(ScrText.Text ,P1 + Length('[Num]='+IntToStr(I)),P2-(P1 + Length('[Num]='+IntToStr(I)))));

        HaveError := False;
        //«Ã—«Ì œ” Ê—« 
        for J:=0 to ScrTextFile.Count-1 do
        begin
          if Trim(UpperCase( ScrTextFile.Strings[J] ))='GO' then
          begin
            ADOCommand.CommandText := SubCommand.Text;
            try
              ADOCommand.Execute;
              Application.ProcessMessages;
            except On E:Exception do
              begin
                ShowMessage(E.Message+#13#13+'Œÿ« œ— «Ã—«Ì œ” Ê—«  “Ì— : '+ #13#10 + SubCommand.Text);
                HaveError := True;
                Break;
              end;
            end;
            SubCommand.Clear;
          end
          else
            SubCommand.Add(ScrTextFile.Strings[J] );
        end;

        if HaveError then
          Break
        else
          Qry_SetResult('Update Setting Set Value = '+ IntToStr(I) + ' Where VariableName = ''ScriptsNumber'' And UserID = -1 ', aADOConnection ); //”Ì” „Ì
        ScrTextFile.Clear;
      end;
    end;

    FreeAndNil(ScrText);
    FreeAndNil(ScrTextFile);
    FreeAndNil(ADOCommand);
    DeleteFile(pchar(ScrFileName));
    Application.ProcessMessages;

    if HaveError then
      ExitProcess(0)
    else
    begin
      WinExec(Pchar(Application.ExeName),0);
      ExitProcess(0);
    end;
  end;
    // else
//        ShowMyMessage('Â‘œ«—','›«Ì·' +'  Scripts.txt  '+'Ì«›  ‰‘œ',[mbOK],mtWarning);
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

Procedure Tdm.DataModuleCreate(Sender: TObject);
Var
  D:TDateTime;
  DongleProductCode,dongleErrorCode:integer;
  fileName : String;
  frmUpdateDbScripts : TfmUpdateDbScripts;

Begin


   {Ranjbar}
  if Trim(YeganehConnection.ConnectionString) <> '' then
    ShowMessage(' —« »—œ«—Ìœ ' + ' YeganehConnection.ConnectionString ' + '·ÿ›« ');
  _SoftVersion := getDelphiVer;

  Yeganeh := TYeganeh.Create(Self);
  Yeganeh.Show;
  d := now;
  FrConnect := TFrConnect.Create(Self);
  _DbVersion := getDBVer;

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
  end ;
  { TODO -oparsa : 14031206 }
  {
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
  }
  { TODO -oparsa : 14031206 }

  { TODO -oparsa : 14030108 }
  AutoUpdateDatabase;
  { TODO -oparsa : 14030108 }


//////////////////////////////////////// ›⁄«· ‘œ‰ ﬁ›·
 
  if GetSystemSetting('DongleType') = '0' then // Old Dongle
  begin
    DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today, 40,_SoftTitle,False,DongleProductCode);
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
    if Not IsTinyOk then
      Application.Terminate;
  end;
//////////////////////////////// ﬁ›·
//   TRY
//   if GetSystemSetting('ARM_DongleType') = '0' then
//   begin
//   {
//   //showmessage('ﬁ›· ﬁœÌ„');
//
//   //ShowMessage('ﬁ›· ”Œ  «›“«—Ì çﬂ ‰„Ì ‘Êœ'); dongleErrorCode := 0;
//   DongleErrorCode := CheckDongle(YeganehConnection,Servername,_Today, 20,_SoftTitle,False,DongleProductCode);
//   //DongleErrorCode := 0;
//   if (DongleErrorCode > 0) then
//   begin
//      ShowMessage(DongleErrorMessage(DongleErrorCode));
//      ExitProcess(0);
//      Application.Terminate;
//      Halt;
//   end;
//   }
//   end
//   else
//   if GetSystemSetting('ARM_DongleType') = '1' then
//      begin
//      GotoLabel_1 :
//      _ARM_CoName   := '';
//      _ARM_AUSKey   := '123456789Yeganeh';
//      _ARM_ReadKey  := GetSystemSetting('ARM_ReadKey' );
//      _ARM_WriteKey := GetSystemSetting('ARM_WriteKey');
//      _ARM_SafeKey1 := '';
//      _ARM_SafeKey2 := '';
//      _ARM_IPServer := GetSystemSetting('ARM_IPServer');
//
//      if (_ARM_IPServer <> '0') and (_ARM_AUSKey <> '0') and (_ARM_WriteKey <> '0') and (_ARM_SafeKey1 <> '0') and (_ARM_SafeKey2 <> '0') then
//      begin
//      Randomize;
//
//      Rand1 := RandomRange(1000,2147483647);
//
//      ARMClass1 := TARMClass.Create(Self);
//
//      OBJ := ARMClass1.NetAuthenticate(_ARM_IPServer, Rand1);
//
//      Res := _ARM_DongleCore_AESClass.CheckAuthenticate(OBJ,Rand1);
//
//      if Res = 1 then
//      begin
//      OBJ :=_ARM_DongleCore_AESClass.CreateUserKey(_ARM_WriteKey,_ARM_AUSKey);
//
//      ARMClass1.FindNetARM(OBJ);
//
//      for i:= 0 to 15 do
//        arrRand[i] := RandomRange(1,255);
//
//      OBJ  := ByteArrayToVariant(arrRand);
//
//      OBJ1 := ARMClass1.GetARMErrorCode(OBJ);
//
//      Res  :=_ARM_DongleCore_AESClass.GenerateErrorCode(OBJ1,arrRand);
//
//      if Res <> 100 then
//      begin
//      if RES = 102 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... «ÿ·«⁄«  ﬁ›· ‰«„⁄ »—');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 104 then
//         begin
//         ShowMessage('Œÿ«Ì ‰Ê⁄ 1 : ' + chr(13) + IntToStr(Res ) + ' = ERROR ... «ÿ·«⁄«  ﬁ›· ‰«„⁄ »— ');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 105 then
//         begin
//         ShowMessage('Œÿ«Ì ‰Ê⁄ 1 : ' + chr(13) + IntToStr(Res ) + ' = ERROR ... «‘ò«· ”Œ  «›“«—Ì');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 106 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... «— »«ÿ »« ”—Ê— ﬁ›· »—ﬁ—«— ‰„Ì ê—œœ');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 107 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ...  ⁄œ«œ ò«—»—«‰ „Ã«“ ”  ‰‘œÂ «” ');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 111 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... «” ›«œÂ €Ì— «” «‰œ«—œ «“ ﬁ›·');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 105 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... «‘ò«· ”Œ  «›“«—Ì œ— ﬁ›· »« ‘—ò  ”«“‰œÂ ﬁ›·  „«” »êÌ—Ìœ');
//         Application.Terminate;
//         end
//      ELSE
//      if RES = 200 then
//         begin
//         ShowMessage(IntToStr(Res ) + ' = ERROR ... «ÿ·«⁄«  ﬁ›· ‰«„⁄ »—');
//         Application.Terminate;
//         end;
//      end
//      else
//      begin
//      //Randomize;
//      //Rand1 := RandomRange(1000,2147483647);
//      //OBJ:=ARMClass1.GetARMData(DATA_PARTITION,Rand1);
//      //str:=_ARM_DongleCore_AESClass.DecodData(OBJ,DATA_PARTITION,RandProg);
//
//      //DATE_01 := COPY(str,1 ,10);
//      //DATE_02 := COPY(str,12,10);
//
//      //if (Trim(DATE_01) = '') OR (Length(DATE_01) < 10) OR (Trim(DATE_02) = '') OR (Length(DATE_02) < 10) then
//      //   BEGIN
//      //   ShowMyMessage('ÅÌ€«„',' «—ÌŒ «” ›«œÂ «“ ”Ì” „ œ«—«Ì Œÿ« „Ì »«‘œ',[mbOK],mtError);
//      //   Application.Terminate;
//      //   END;
//
//      //Randomize;
//      //Rand1 := RandomRange(1000,2147483647);
//      //OBJ:=ARMClass1.GetARMData(SPECIAL_ID,Rand1);
//      //str:=_ARM_DongleCore_AESClass.DecodData(OBJ,SPECIAL_ID,RandProg);
//
//      //if str <> '2246674822466748' then
//      //   BEGIN
//      //   ShowMyMessage('ÅÌ€«„','«” ›«œÂ «“ ﬁ›· ‰«„⁄ »—',[mbOK],mtError);
//      //   Application.Terminate;
//      //   END;
//
//      end;
//
//      end
//      else
//      begin
//      ShowMessage('Œÿ«Ì ‰Ê⁄ 2');
//      ShowMessage('”—Ê— ﬁ›· ›⁄«· ‰Ì”  Ê Ì« ¬œ—” ¬Ì-ÅÌ Ê«—œ ‘œÂ »Â ⁄‰Ê«‰ ”—Ê— ﬁ›· «‘ »«Â „Ì »«‘œ');
//      Application.Terminate;
//      END;
//
//      end
//      else
//      begin
//       ShowMessage('«Ã—«Ì ‰—„ «›“«— »—«Ì «Ê·Ì‰ »«—');
//       SetSystemSetting('ARM_CoName'    , 'Yeganeh Co');
//       GotoLabel_3 :
//
//       CHNG_IP_FRM := TENTER_IP_ADDRESS_FRM.Create(NIL);
//       CHNG_IP_FRM.ShowModal;
//
//       server_ip_address_4_arm_lock := CHNG_IP_FRM.AdvIPEdit1.IPAddress;
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
//          ShowMessage('¬œ—” ‰«„⁄ »—');
//          goto GotoLabel_3;
//          END;
//
//          CHNG_IP_FRM.Free;
//
//          SetSystemSetting('ARM_AUSKey'    , '');
//          SetSystemSetting('ARM_ReadKey'   , '');
//          SetSystemSetting('ARM_WriteKey'  , '');
//          SetSystemSetting('ARM_SafeKey1'  , '');
//          SetSystemSetting('ARM_SafeKey2'  , '');
//          SetSystemSetting('ARM_DongleType', '1');
//
//       goto GotoLabel_1;
//      end;
//
//    END
//    else
//    begin
//    ShowMyMessage('ÅÌ€«„','‰Ê⁄ ﬁ›· ‰« „⁄ »— «” ',[mbOK],mtError);
//      ShowMyMessage('ÅÌ€«„',
//        CHR(13) + '»« «” ›«œÂ «“ ‰—„ «›“«—'
//      + CHR(13) + ' LOCK MAKER  '
//      + CHR(13) + '«ÿ·«⁄«  ﬁ›· —« »——”Ì ‰„«ÌÌœ'
//      ,[mbOK],mtError);
//    Application.Terminate;
//    end;
//
//
//   GotoLabel_4 :
//
//
//    EXCEPT
//    on E : Exception do
//     begin
//     ERR_FRM := TLOCK_ERROR_FRM.Create(NIL);
//     ERR_FRM.CHNG_IP_BTN.Enabled := False;
//     ERR_FRM.MSG.Caption := 'Œÿ«Ì ‰Ê⁄ 3' + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + 'Exception class name = '  + E.ClassName + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + '--------------------------------------------------------------------------------------' + CHR(10) + CHR(13);
//     ERR_FRM.MSG.Caption := ERR_FRM.MSG.Caption + 'Exception message = '     + E.Message   + CHR(10) + CHR(13);
//      ShowMyMessage('ÅÌ€«„',
//        CHR(13) + '»« «” ›«œÂ «“ ‰—„ «›“«—'
//      + CHR(13) + ' LOCK MAKER  '
//      + CHR(13) + '«ÿ·«⁄«  ﬁ›· —« »——”Ì ‰„«ÌÌœ'
//      ,[mbOK],mtError);
//     ERR_FRM.ShowModal;
//     ERR_FRM.Free;
//     Application.Terminate;
//     end;
//
//   END;


  {Ranjbar 88.03.23}
  //«Ã—« ﬂ—œ‰ œ” Ê—«  «”ﬂ—ÌÅ 
  { TODO -oparsa : 14031207 }  // ÃÂ  «Ã—« ‰‘œ‰ «”ò—ÌÅÂ«Ì ﬁœÌ„Ì Ê œ” ò«—Ì œÌ « »Ì”
  ///RunCashScripts(dm.YeganehConnection);
  { TODO -oparsa : 14031207 }
  Read_SystemValue;//_Today,_Year,_TempPath,,,,
  Open_ReferenceTable;

   //if DATE_TO_NUMBER(DATE_02) < DATE_TO_NUMBER(_Today) then
   //  BEGIN
   //  ShowMyMessage('ÅÌ€«„',' «—ÌŒ ﬁ›· »Â « „«„ —”ÌœÂ «” ',[mbOK],mtError);
   //  Application.Terminate;
   //  END;

  While MilliSecondsBetween(D,Now)<20 DO
    Application.ProcessMessages;

//   _WithDongle :=True;  //ﬁ«»·  €ÌÌ—
//   IF _WithDongle Then
//   Begin
//      DongleErrorCode:= CheckDongle(YeganehConnection,Servername,_Today,40,_SoftTitle,False,DongleProductCode);
//
//
//      _SoftTitle:=Get_SystemSetting('CASHTITLE');    DongleErrorCode:=0;
//      IF (DongleErrorCode>0)   Then
//      Begin
//         ShowMessage(DongleErrorMessage(dongleErrorCode));
//         ExitProcess(0);
//         Application.Terminate;
//         Halt;
//      End;
//   End;
  _SoftTitle:=Get_SystemSetting('CompanyName');
//    DongleProductCode:=Get_SystemSetting('ProductCode');

  Yeganeh.Repaint;
  Yeganeh.Close;
  ActivateKeyboardLayout( HKL_NEXT  ,  KLF_REORDER );

  FrLogin := TFrLogin.Create(Self);

{
Run Script
  //Hamed_Ansari_990422_S
  Application.CreateForm(TfrmScript,frmScript);
  frmScript.DatabaseVersion;
  frmScript.Free;
  //Hamed_Ansari_990422_E
}
  FrLogin.ShowModal ;

  Read_SystemValue;//_Today,_Year,_TempPath,,,,
  {Ranjbar UserFolder ﬂ«— —ÊÌ ÅÊ‘Â}

  _UserFolder := ExtractFilePath(Application.ExeName) + 'UserFolder';
  if not DirectoryExists(_UserFolder) then
    CreateDir(_UserFolder);
  //„Ì»«‘œ DBGrid ﬂÂ „—»Êÿ »Â  ‰ŸÌ„«  ° UserFolder Õ–› ›«Ì·Â«Ì œ«Œ· ÅÊ‘Â
  if StrToBoolDef(Get_UserSetting(_Userid ,'DeleteCfgFiles' ), False ) then
  begin
    File_FindAndDelete(_UserFolder,'*.Cfg');
    Set_UserSetting(_Userid,'DeleteCfgFiles','False');
{
      œ— „Ê«ﬁ⁄ „Ê—œ ‰Ì«“ «”ﬂ—ÌÅ  “Ì— «Ã—« ‘Êœ
      Delete from Setting Where variableName='DeleteCfgFiles'
      GO ;
      Insert into Setting(UserID,VariableName,[Value])
      Select UserID , 'DeleteCfgFiles' as VariableName , 'True' From Users
      GO ;
}
  end;
   //---

  _SWCanClose:=True;
  _AmountForRefreshPayment:=0;
  _NotNoForRefreshPayment :='';
  _DeatailIdForRefreshPayment :=0;
  _FinancialNoteid:=-1;
  _IsCheckAccount:=True;
  _FrSumPaymentIsShowing:=False;
  _AgainMakeParts:=False;

  UsedForMountly:=False;
  _AddLoan:=False;
  BeforInsertReportsNameReportName:='';
  BeforInsertReportsNameObjectName:='';
  BeforInsertReportsNameReportDescription:='';

  _SmsUser:=Get_SystemSetting('SmsUser');
  _SmsPassWord:=Get_SystemSetting('SmsPassWord');
  _EnableSms := Get_SystemSetting('EnableSms');
  _CashNameForSms :=Get_SystemSetting('CashNameForSms');

  //«÷«›Â ò—œ‰ ‘„«—Â „—ò“ «” «„ «” œ—  ‰ŸÌ„«  ÅÌ«„ò
  _SMSCenterNumber := Trim(Get_SystemSetting('SMSCenterNumber'));

  if _SMSCenterNumber = '' then
    _SMSCenterNumber := '10003131111313';

end;

procedure Tdm.Yeganeh_WordNeedTextOnNull(FieldDescription: WideString;
var
  fieldValue: WideString);
begin
  FieldValue:=''
end;

procedure tdm.SaveTemplateToFile;
begin
  inherited;
  Open_WordTemplate;
  Select_WordTemplateWordTemplate.SaveToFile(_TempPath +_WordFileName);
end;

function Tdm.Search(Y:TYwhereEdit):integer;
begin
  SearchAdoDataSet := TSearchAdoDataSet.Create(self);
  with SearchAdoDataSet do
  begin
    SearchDataSet := False;
    TableName := Y.ListTable;
    CodeField := Y.CodeField;
    TitleField := Y.TitleField;
    SearchF.Connection := Y.Connection;
    ShowModal;
    Result := SearchResult;
  end;
end;

function Tdm.SearchTable(Ads:TDataSet;CodeField,TitleField:string):integer;
begin
  SearchAdoDataSet := TSearchAdoDataSet.Create(self);
  SearchAdoDataSet.CodeField := CodeField;
  SearchAdoDataSet.TitleField := TitleField;
  with SearchAdoDataSet do
  begin
    SearchDataSet := True;
    dsform.DataSet := Ads;
    ShowModal;
    Result := SearchResult;
  end;
end;

function Tdm.SearchTableWithFilter(Ads:TDataSet;CodeField,TitleField,FilterTxt:string):integer;
begin
  SearchAdoDataSet := TSearchAdoDataSet.Create(self);
  SearchAdoDataSet.CodeField := CodeField;
  SearchAdoDataSet.TitleField := TitleField;
  with SearchAdoDataSet do
  begin
    SearchDataSet := False;
    dsform.DataSet := Ads;
    TableName := ' Select ForcePaymentID,AMOUNT From ForcePayment WHERE ParentID=335 ';
    SearchF.Close;
    SearchF.CommandText := TableName;
    SearchF.Open;
    ShowModal;
    Result := SearchResult;
  end;
end;

procedure Tdm.Yeganeh_Word1NeedTextOnNull(FieldDescription: WideString;
  var fieldValue: WideString);
begin
  fieldValue := '';
end;

procedure Tdm.Yeganeh_WordNeedDataBaseField(FieldDescription: WideString;
  var fieldName: WideString; var isBarCode: Boolean);
begin
  fieldName := FieldDescription;
end;

procedure Tdm.Yeganeh_Word1NeedDataBaseField(FieldDescription: WideString;
  var fieldName: WideString; var isBarCode: Boolean);
begin
  fieldName := FieldDescription;
end;

procedure Tdm.Select_Loan_PartsCalcFields(DataSet: TDataSet);
begin
  try
//    Select_Loan_PartsAmountBill.AsString:=Bill(Select_Loan_PartsAmount.AsInteger)+' —Ì«·';
    Select_Loan_PartsAmountBill.AsString := Bill(Select_Loan_PartsAmount.AsInteger) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
  except
  end;
end;

procedure Tdm.Select_TableAfterScroll(DataSet: TDataSet);
begin
  Open_Fields_byTableName(Select_TableTableName.AsString);
end;

procedure Tdm.Select_Loan_Parts_DetailsCalcFields(DataSet: TDataSet);
begin
// try  Select_Loan_Parts_DetailsamountBill.AsString:=Bill(Select_Loan_Parts_Detailsamount.AsInteger)+' —Ì«·';
  try
    Select_Loan_Parts_DetailsamountBill.AsString := Bill(Select_Loan_Parts_Detailsamount.AsInteger) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
  except
  end;
end;

procedure Tdm.Select_Monthly_DetailsCalcFields(DataSet: TDataSet);
begin
// try  Select_Monthly_DetailsamountBill.AsString:=Bill(Select_Monthly_DetailsAmount.AsInteger)+' —Ì«·';+Get_SystemSetting('EdtMoneyUnit');
  try
    Select_Monthly_DetailsamountBill.AsString:=Bill(Select_Monthly_DetailsAmount.AsInteger)+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  except
  end;
end;

procedure Tdm.Select_Account_MonthlysBeforeDelete(DataSet: TDataSet);
begin
  if Select_Account_MonthlysPaid.AsBoolean then
    Abort;
end;

procedure Tdm.Select_Account_MonthlysBeforeInsert(DataSet: TDataSet);
begin
  Abort;
end;

procedure Tdm.Select_Account_MonthlysBeforePost(DataSet: TDataSet);
begin
  if Select_Account_MonthlysPaid.AsBoolean then
  begin
    ShowMessage(' „«ÂÌ«‰Â Â«Ì  Å—œ«Œ  ‘œÂ —« ‰„Ì  Ê«‰ ÊÌ—«Ì‘ ò—œ');
    Abort;
  end;
end;

procedure Tdm.Select_Account_MonthlysCalcFields(DataSet: TDataSet);
begin
//  try  Select_Account_MonthlysAmountBill.AsString:=Bill(Select_Account_MonthlysAmount.AsInteger)+' —Ì«·';
  try
    Select_Account_MonthlysAmountBill.AsString:=Bill(Select_Account_MonthlysAmount.AsInteger)+' ' +Get_SystemSetting('EdtMoneyUnit')+' ';
  except
  end;
end;

procedure Tdm.ApplicationEventsException(Sender: TObject; E: Exception);
var
  AList : TStringList;
  farsiMessage : WideString;
  ShowMsg:boolean;
begin
  AList := TStringList.Create;
  try
   if FileExists(ExtractFilePath(Application.ExeName) + 'ErrorLogCash.txt') then
    AList.LoadFromFile(ExtractFilePath(Application.ExeName) + 'ErrorLogCash.txt');
   AList.Add(_Today + ' ' + TimeToStr(Now) + ' ' + Sender.ClassName + ' ' + E.Message);
   AList.SaveToFile(ExtractFilePath(Application.ExeName) + 'ErrorLogCash.txt');
  finally
   FreeAndNil(AList);
  end;
  farsiMessage := Get_Farsi_Message(e.Message,ShowMsg);
  if farsiMessage <> '' then
    ShowMessage(farsiMessage)
  else
  begin
    Insert_ErrorMessage(E.Message,_Userid);
    if ShowMsg then
      ShowMessage(e.Message);
  end;
end;

procedure Tdm.Report_CashAccountCalcFields(DataSet: TDataSet);
begin
  Report_CashAccountAbs_Balance.AsLargeInt := (Report_CashAccountbalance.AsLargeInt); //  ABS
end;

procedure Tdm.UsersAfterInsert(DataSet: TDataSet);
begin
  UsersBeginDate.AsString := _Today;
  UsersEndDate.AsString := ShamsiIncDate(_Today,0,6,0);
end;

procedure Tdm.Select_PaymentAfterInsert(DataSet: TDataSet);
begin
  Select_PaymentInsertDate.AsString := _Today;
end;

procedure Tdm.Report_Account2CalcFields(DataSet: TDataSet);
begin
  Report_Account2Balance8.AsLargeInt := Report_Account2Balance4.AsLargeInt-Report_Account2Balance3.AsLargeInt;
end;

procedure Tdm.Report_Payment_ByAccountIDCalcFields(DataSet: TDataSet);
begin
  if Report_Payment_ByAccountIDComment.AsString = '' then
    Report_Payment_ByAccountIDComment2.AsString := Report_Payment_ByAccountIDPayTypeTitle.AsString
  else
    Report_Payment_ByAccountIDComment.AsString := Report_Payment_ByAccountIDComment.AsString
end;

procedure Tdm.PrintPayment_ByDocumentNo(DocumentNo: string);
begin
  FQrPrintPayment_ByDocumentNo := TFQrPrintPayment_ByDocumentNo.Create(Application);
  FQrPrintPayment_ByDocumentNo.DocumentNo := DocumentNo;
  FQrPrintPayment_ByDocumentNo.QuickRep1.Preview;
end;

Procedure Tdm.PrintHeader(Title:string);
begin
  FrQrPayment := TFrQrPayment.Create(Application);
  with FrQrPayment do
  begin
    qrPaydate.Enabled := False;
    qrdesc.Enabled    := False;
    qrcredit.Enabled  := False;
    qrdebtor.Enabled  := False;
    Qrremain.Enabled  := False;
    QrTitle.Enabled   := True;
    QrTitle.Caption   := Title;
    QuickRep2.Prepare;
    QuickRep2.Preview;
//MarinaDidarians
    QuickRep2.Print;
  end;
end;

procedure Tdm.LinePrint(ID :integer;
                        IsAccount:boolean;
                        Paydate,
                        Desc,
                        Creditor,
                        Debtor,
                        Remain,
                        DocNo,
                        AccountNo,
                        AccountTitle,
                        ShowDesign,
                        Benefit,
                        FormName:string);
var
  _topp,topp,line,_LineHight,_SecondLine:Integer;
  //Cross: TfrxCrossView;
  _FirstLineTop:Integer;
  _PayedAmount:String;
  ChBoDocNo_1,
	ChBoAccountNo_1,
	ChBoAccountTitle_1,
	ChBoDate_1,
	ChBoDesc_1,
  ChBoCredit_1,
  ChBoCredit_H_1,
  ChBoDebit_1,
  ChBoDebit_H_1,
  ChBoDebCrd_1,
  ChBoDebCrd_H_1,
  ChBoRemain_1,
  ChBoRemain_H_1,
  ChBoBenefit_1,
  ChBoBenefit_H_1,
  ChBoSumBenefitPrice_1,
  ChBoSumBenefitPrice_H_1	,

	ChBoDocNo_2,
	ChBoAccountNo_2,
	ChBoAccountTitle_2,
	ChBoDate_2,
	ChBoDesc_2,
	ChBoCredit_2,
	ChBoCredit_H_2,
	ChBoDebit_2,
	ChBoDebit_H_2,
	ChBoDebCrd_2,
	ChBoDebCrd_H_2,
	ChBoRemain_2,
	ChBoRemain_H_2,
	ChBoBenefit_2,
	ChBoBenefit_H_2,
	ChBoSumBenefitPrice_2,
	ChBoSumBenefitPrice_H_2 :WideString;
  S:String;
begin
  inherited;
  if IsAccount then
    line := Get_calcField_byContactID(id) + 1
  else
    line := get_NumberOfPaidPart_byLoanID(id);

  if (Y_InputQuery('‘„«—Â Œÿ Å—Ì‰  ',IntToStr(line),s)) then
    line := StrToInt(s)
  else
    Exit;

  if IsAccount then
    Update_calcField(id,line);
  _LineHight := 37;

  if GET_SystemSetting('ChBoLineHight') = '0' then
    _LineHight := 37
  else if GET_SystemSetting('ChBoLineHight') = '1' then
    _LineHight := 37 + round(37/2)
  else if GET_SystemSetting('ChBoLineHight') = '2' then
    _LineHight := 37 + 37;

  _FirstLineTop := Get_SystemSetting('EdtFirstLineTop');
  repeat
    if Line <= 12 then
      Topp := _FirstLineTop + (line - 1) * _LineHight div 2
    else
    if Line <= 29 then
      Topp := 325 - 70 + _FirstLineTop + (line - 13) * _LineHight div 2
    else
      Topp := 673 - 70 + _FirstLineTop + (line - 30) * _LineHight div 2;

    if Topp > 822 then
      Line := line - 38;
  Until Topp <= 822;

  if Benefit = '' then
    Benefit := '0';

  _Topp := Topp;
  _SecondLine := _LineHight + _Topp;
  FrQrPayment := TFrQrPayment.Create(Application);
  with FrQrPayment do
  begin
    _PayedAmount := '0';
    if Debtor <> '0' then
      _PayedAmount := Debtor
    else
    if Creditor <> '0' then
      _PayedAmount := Creditor;

    ChBoDocNo_1 := '';
    ChBoDocNo_2 := '';
    ChBoAccountNo_1 := '';
    ChBoAccountNo_2 := '';
	  ChBoAccountTitle_1 := '';
    ChBoAccountTitle_2 := '';
	  ChBoDate_1 := '';
    ChBoDate_2 := '';
	  ChBoDesc_1 := '';
    ChBoDesc_2 := '';
    ChBoCredit_1 := '';
    ChBoCredit_1 := '';
	  ChBoCredit_H_1 := '';
    ChBoCredit_H_2 := '';
	  ChBoDebit_1 := '';
    ChBoDebit_2 := '';
	  ChBoDebit_H_1 := '';
    ChBoDebit_H_2 := '';
	  ChBoDebCrd_1 := '';
    ChBoDebCrd_2 := '';
	  ChBoDebCrd_H_1 := '';
    ChBoDebCrd_H_2 := '';
	  ChBoRemain_1 := '';
    ChBoRemain_2 := '';
	  ChBoRemain_H_1 := '';
    ChBoRemain_H_2 := '';

    ChBoBenefit_1 := '';
    ChBoBenefit_2 := '';
    ChBoBenefit_H_1 := '';
    ChBoBenefit_H_2 := '';

	  ChBoSumBenefitPrice_1 := '';
    ChBoSumBenefitPrice_2 := '';
	  ChBoSumBenefitPrice_H_1 := '';
    ChBoSumBenefitPrice_H_2 := '';

    ChBoDocNo_1 := DocNo;
    ChBoAccountNo_1 := AccountNo;
    ChBoAccountTitle_1 := AccountTitle;
    ChBoDate_1 := Paydate;
    ChBoDesc_1 := Desc;

    ChBoCredit_1 := CommaSeperate(Creditor);
    ChBoCredit_H_1 := Bill(StrToInt64(Creditor)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoDebit_1 := CommaSeperate(Debtor);
    ChBoDebit_H_1 := Bill(StrToInt64(Debtor)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoDebCrd_1 :=CommaSeperate(_PayedAmount);
    ChBoDebit_H_1 := Bill(StrToInt64(_PayedAmount)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoRemain_1 := CommaSeperate(Remain);
    ChBoRemain_H_1 := Bill(StrToInt64(Remain)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoBenefit_1 := CommaSeperate(Benefit);
    ChBoBenefit_H_1 := Bill(StrToInt64(Benefit)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoSumBenefitPrice_1 := CommaSeperate(INTTOSTR(STRTOINT(Benefit) + STRTOINT(_PayedAmount)));
    ChBoSumBenefitPrice_H_1 := Bill(StrToInt64(Benefit) + StrToInt64(_PayedAmount)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';
//22222222222222222--------------------------
    ChBoDocNo_2 := DocNo;
    ChBoAccountNo_2 := AccountNo;
    ChBoAccountTitle_2 := AccountTitle;
    ChBoDate_2 := Paydate;
    ChBoDesc_2 := Desc;

    ChBoCredit_2 := CommaSeperate(Creditor);
    ChBoCredit_H_2 := Bill(StrToInt64(Creditor)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoDebit_2 := CommaSeperate(Debtor);
    ChBoDebit_H_2 := Bill(StrToInt64(Debtor)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoDebCrd_2 := CommaSeperate(_PayedAmount);
    ChBoDebCrd_H_2 := Bill(StrToInt64(_PayedAmount)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoRemain_2 := CommaSeperate(Remain);
    ChBoRemain_H_2 := Bill(StrToInt64(Remain)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoBenefit_2 := CommaSeperate(Benefit);
    ChBoBenefit_H_2 := Bill(StrToInt64(Benefit)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    ChBoSumBenefitPrice_2 := CommaSeperate(IntToStr(StrToInt64(Benefit) + StrToInt64(_PayedAmount)));
    ChBoSumBenefitPrice_H_2 := Bill(StrToInt64(Benefit) + STRTOINT(_PayedAmount)) + ' ' + Get_SystemSetting('EdtMoneyUnit') + ' ';

    Open_Perfraj(Line,ChBoDocNo_1,ChBoAccountNo_1,ChBoAccountTitle_1,ChBoDate_1,ChBoDesc_1 ,ChBoCredit_1,ChBoCredit_H_1,ChBoDebit_1,ChBoDebit_H_1,ChBoDebCrd_1,ChBoDebCrd_H_1,ChBoRemain_1,ChBoRemain_H_1,ChBoBenefit_1,ChBoBenefit_H_1,ChBoSumBenefitPrice_1,ChBoSumBenefitPrice_H_1,
                     ChBoDocNo_2,ChBoAccountNo_2,ChBoAccountTitle_2,ChBoDate_2,ChBoDesc_2 ,ChBoCredit_2,ChBoCredit_H_2,ChBoDebit_2,ChBoDebit_H_2,ChBoDebCrd_2,ChBoDebCrd_H_2,ChBoRemain_2,ChBoRemain_H_2,ChBoBenefit_2,ChBoBenefit_H_2,ChBoSumBenefitPrice_2,ChBoSumBenefitPrice_H_2);

    frxReport1.Pages[1].Visible := False;
    frxReport1.Pages[2].Visible := True;

//    Rep_LoadFile(frxReport1,'PerfrajRep.fr3');
    Rep_LoadFile_New(frxReport1,'PerfrajRep.fr3',FormName);

    if (ShowDesign = 'NShow') then
      Rep_Show(frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘

    if (ShowDesign = 'NPrint') then
      Rep_Show(frxReport1,rtPrint);//ç«Å ”—Ì⁄

    if (ShowDesign = 'NDesign') then
      Rep_Show(frxReport1,rtDesign);//ÿ—«ÕÌ

    if (ShowDesign = 'NOldVersion') then
    begin
      qrPaydate.Caption := Paydate;
      qrdesc.Caption := Desc;
      qrcredit.Caption := CommaSeperate(Creditor);
      qrdebtor.Caption := CommaSeperate(Debtor);
      Qrremain.Caption := CommaSeperate(Remain);
      qrPaydate.Top := _Topp;//topp;
      qrdesc.Top := _Topp;//topp;
      qrcredit.Top := _Topp;//topp;
      qrdebtor.Top := _Topp;//topp;
      Qrremain.Top := _Topp;//topp;
      QuickRep2.Prepare;
      QuickRep2.Preview;
    end;
  end;
end;

procedure Tdm.LinePrint(ID :integer;
                        IsAccount:boolean;
                        Paydate,
                        Desc,
                        Creditor,
                        Debtor,
                        Remain,
                        DocNo,
                        AccountNo,
                        AccountTitle,
                        ShowDesign,
                        Benefit,
                        FormName,
                        RealRemain:string);

var _topp,topp,line,_LineHight,_SecondLine:integer;
  //Cross: TfrxCrossView;
  _FirstLineTop:Integer;
  _PayedAmount:string;
  ChBoDocNo_1,
	ChBoAccountNo_1,
	ChBoAccountTitle_1,
	ChBoDate_1,
  ChBoDesc_1,
  ChBoCredit_1,
	ChBoCredit_H_1,
	ChBoDebit_1,
	ChBoDebit_H_1,
	ChBoDebCrd_1,
	ChBoDebCrd_H_1,
	ChBoRemain_1,
	ChBoRemain_H_1,
  ChBoBenefit_1,
  ChBoBenefit_H_1,
	ChBoSumBenefitPrice_1,
	ChBoSumBenefitPrice_H_1,

	ChBoDocNo_2,
	ChBoAccountNo_2,
	ChBoAccountTitle_2,
	ChBoDate_2,
	ChBoDesc_2,
	ChBoCredit_2,
	ChBoCredit_H_2,
	ChBoDebit_2,
	ChBoDebit_H_2,
	ChBoDebCrd_2,
	ChBoDebCrd_H_2,
	ChBoRemain_2,
	ChBoRemain_H_2,
	ChBoBenefit_2,
	ChBoBenefit_H_2,
	ChBoSumBenefitPrice_2,
	ChBoSumBenefitPrice_H_2 :WideString;

  S:String;
begin
  inherited;

  if IsAccount then
    line:=Get_calcField_byContactID(id)+1
  else
    line:=get_NumberOfPaidPart_byLoanID(id);

  if (Y_InputQuery('‘„«—Â Œÿ Å—Ì‰  ',IntToStr(line),s)) then
    line:=StrToInt(s)
  else
    Exit;

  if IsAccount then
    Update_calcField(id,line);

  _LineHight:=37;
  if GET_SystemSetting('ChBoLineHight')='0' then
    _LineHight:=37
  else if GET_SystemSetting('ChBoLineHight')='1' then
    _LineHight:=37+round(37/2)
  else if GET_SystemSetting('ChBoLineHight')='2' then
    _LineHight:=37+37;

  _FirstLineTop:=Get_SystemSetting('EdtFirstLineTop');
  repeat
    if Line<=12 then
      Topp:=_FirstLineTop+(line-1)*_LineHight div 2
    else
    if Line<=29 then
      Topp:=325-70+_FirstLineTop+(line-13)*_LineHight div 2
    else
      Topp:=673-70+_FirstLineTop+(line-30)*_LineHight div 2;

    if Topp>822 then
      Line:=line-38;
  Until Topp<=822;

  if Benefit='' then
    Benefit:='0';

  _Topp:=Topp;
  _SecondLine:=_LineHight +_Topp;
  FrQrPayment:=TFrQrPayment.Create(Application);
  With  FrQrPayment DO
  Begin
    _PayedAmount:='0';
    if Debtor<>'0' then
      _PayedAmount:= Debtor
    else if Creditor<>'0' then
      _PayedAmount:=Creditor;

    ChBoDocNo_1:= '';ChBoDocNo_2 :='';
    ChBoAccountNo_1:='';ChBoAccountNo_2 :='';
	  ChBoAccountTitle_1:='';ChBoAccountTitle_2:='';
	  ChBoDate_1:='';ChBoDate_2:='';
	  ChBoDesc_1:='';ChBoDesc_2:='';
    ChBoCredit_1	:='';ChBoCredit_1	:='';
	  ChBoCredit_H_1:='';ChBoCredit_H_2:='';
	  ChBoDebit_1:='';ChBoDebit_2:='';
	  ChBoDebit_H_1:='';ChBoDebit_H_2:='';
	  ChBoDebCrd_1:='';ChBoDebCrd_2:='';
	  ChBoDebCrd_H_1:='';ChBoDebCrd_H_2:='';
	  ChBoRemain_1	:='';ChBoRemain_2	:='';
	  ChBoRemain_H_1:='';ChBoRemain_H_2:='';

    ChBoBenefit_1:='';ChBoBenefit_2:='';
    ChBoBenefit_H_1:='';ChBoBenefit_H_2:='';

    ChBoSumBenefitPrice_1:='';ChBoSumBenefitPrice_2:='';
    ChBoSumBenefitPrice_H_1:='';ChBoSumBenefitPrice_H_2:='';


    ChBoDocNo_1:=DocNo;
    ChBoAccountNo_1 := AccountNo;
    ChBoAccountTitle_1:=AccountTitle;
    ChBoDate_1 := Paydate;
    ChBoDesc_1 := Desc;

    ChBoCredit_1:= CommaSeperate(Creditor);
    ChBoCredit_H_1:=Bill(StrToInt64(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoDebit_1:=CommaSeperate(Debtor);
    ChBoDebit_H_1:=Bill(StrToInt64(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoDebCrd_1 :=CommaSeperate(_PayedAmount);
    ChBoDebit_H_1:=Bill(StrToInt64(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoRemain_1:=CommaSeperate(Remain);
    ChBoRemain_H_1:=Bill(StrToInt64(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoBenefit_1:=CommaSeperate(Benefit);
    ChBoBenefit_H_1:=Bill(StrToInt64(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoSumBenefitPrice_1:=CommaSeperate(INTTOSTR(STRTOINT(Benefit)+STRTOINT(_PayedAmount)));
    ChBoSumBenefitPrice_H_1:=Bill( StrToInt64(Benefit)+StrToInt64(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//22222222222222222--------------------------
    ChBoDocNo_2:=DocNo;
    ChBoAccountNo_2 := AccountNo;
    ChBoAccountTitle_2:=AccountTitle;
    ChBoDate_2 := Paydate;
    ChBoDesc_2 := Desc;

    ChBoCredit_2:= CommaSeperate(Creditor);
    ChBoCredit_H_2:=Bill(StrToInt64(Creditor))+' '+Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoDebit_2:=CommaSeperate(Debtor);
    ChBoDebit_H_2:=Bill(StrToInt64(Debtor))+' '+Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoDebCrd_2 :=CommaSeperate(_PayedAmount);
    ChBoDebCrd_H_2:=Bill(StrToInt64(_PayedAmount))+' '+Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoRemain_2:=CommaSeperate(RealRemain);
    ChBoRemain_H_2:=Bill(StrToInt64(RealRemain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoBenefit_2:=CommaSeperate(Benefit);
    ChBoBenefit_H_2:=Bill(StrToInt64(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    ChBoSumBenefitPrice_2:=CommaSeperate(IntToStr(StrToInt64(Benefit)+StrToInt64(_PayedAmount)));
    ChBoSumBenefitPrice_H_2:=Bill( StrToInt64(Benefit)+STRTOINT(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

    Open_Perfraj(Line,ChBoDocNo_1,ChBoAccountNo_1,ChBoAccountTitle_1,ChBoDate_1,ChBoDesc_1 ,ChBoCredit_1,ChBoCredit_H_1,ChBoDebit_1,ChBoDebit_H_1,ChBoDebCrd_1,ChBoDebCrd_H_1,ChBoRemain_1,ChBoRemain_H_1,ChBoBenefit_1,ChBoBenefit_H_1,ChBoSumBenefitPrice_1,ChBoSumBenefitPrice_H_1,
                     ChBoDocNo_2,ChBoAccountNo_2,ChBoAccountTitle_2,ChBoDate_2,ChBoDesc_2 ,ChBoCredit_2,ChBoCredit_H_2,ChBoDebit_2,ChBoDebit_H_2,ChBoDebCrd_2,ChBoDebCrd_H_2,ChBoRemain_2,ChBoRemain_H_2,ChBoBenefit_2,ChBoBenefit_H_2,ChBoSumBenefitPrice_2,ChBoSumBenefitPrice_H_2);

    frxReport1.Pages[1].Visible:=false;
    frxReport1.Pages[2].Visible:=true;

//    Rep_LoadFile(frxReport1,'PerfrajRep.fr3');
     Rep_LoadFile_New(frxReport1,'PerfrajRep.fr3',FormName);

    if (ShowDesign = 'NShow') then
      Rep_Show(frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘

    if (ShowDesign = 'NPrint') then
      Rep_Show(frxReport1,rtPrint);//ç«Å ”—Ì⁄

    if (ShowDesign = 'NDesign') then
      Rep_Show(frxReport1,rtDesign);//ÿ—«ÕÌ

    if (ShowDesign = 'NOldVersion') then
    begin
      qrPaydate.Caption:=Paydate;
      qrdesc.Caption:=Desc;
      qrcredit.Caption:=CommaSeperate(Creditor);
      qrdebtor.Caption:=CommaSeperate(Debtor);
      Qrremain.Caption:=CommaSeperate(Remain);
      qrPaydate.Top:=_Topp;//topp;
      qrdesc.Top:=_Topp;//topp;
      qrcredit.Top:=_Topp;//topp;
      qrdebtor.Top:=_Topp;//topp;
      Qrremain.Top:=_Topp;//topp;
      QuickRep2.Prepare;
      QuickRep2.Preview;;
    end;
  end;
End;

{procedure TDm.LinePrint(ID :integer;IsAccount:boolean;Paydate,Desc,Creditor,Debtor,Remain,DocNo,AccountNo,AccountTitle,ShowDesign,Benefit:string);
var _topp,topp,line,_LineHight,_SecondLine:integer;
  Cross: TfrxCrossView;
  _FirstLineTop,I:Integer;
  _PayedAmount:string;
   ChBoDocNo_1      ,
	 ChBoAccountNo_1	  ,
	 ChBoAccountTitle_1  ,
	 ChBoDate_1	    ,
	 ChBoDesc_1	    ,
   ChBoCredit_1	    ,
	 ChBoCredit_H_1	    ,
	 ChBoDebit_1	   ,
	 ChBoDebit_H_1	  ,
	 ChBoDebCrd_1	   ,
	 ChBoDebCrd_H_1	   ,
	 ChBoRemain_1	   ,
	 ChBoRemain_H_1	   ,

   ChBoBenefit_1	,
   ChBoBenefit_H_1,

	 ChBoSumBenefitPrice_1	,
	 ChBoSumBenefitPrice_H_1	,


	 ChBoDocNo_2       ,
	 ChBoAccountNo_2   ,
	 ChBoAccountTitle_2  ,
	 ChBoDate_2	    ,
	 ChBoDesc_2	     ,
	 ChBoCredit_2	    ,
	 ChBoCredit_H_2	    ,
	 ChBoDebit_2	    ,
	 ChBoDebit_H_2	    ,
	 ChBoDebCrd_2	    ,
	 ChBoDebCrd_H_2	     ,
	 ChBoRemain_2	    ,
	 ChBoRemain_H_2	  ,

	 ChBoBenefit_2	,
	 ChBoBenefit_H_2 ,

	 ChBoSumBenefitPrice_2,
	 ChBoSumBenefitPrice_H_2     :String;


s:string;
begin
  inherited;
    if IsAccount then
      line:=Get_calcField_byContactID(id)+1
     else
      line:=get_NumberOfPaidPart_byLoanID(id);

   if  (Y_InputQuery('‘„«—Â Œÿ Å—Ì‰  ',IntToStr(line),s)) then
     line:=StrToInt(s)
   else
     exit;

    if IsAccount then
      Update_calcField(id,line);
   _LineHight:=37;
   IF GET_SystemSetting('ChBoLineHight')='0' THEN
     _LineHight:=37
   ELSE IF GET_SystemSetting('ChBoLineHight')='1' THEN
     _LineHight:=37+round(37/2)
   ELSE IF GET_SystemSetting('ChBoLineHight')='2' THEN
     _LineHight:=37+37;

   _FirstLineTop:=Get_SystemSetting('EdtFirstLineTop');
   repeat
//  if line<=12 then topp:=70+(line-1)*37   div 2  else
//   if line<=29 then topp:=325+(line-13)*37 div 2  else  topp:=673+(line-30)*37 div 2  ;
//   if  topp>822  then line:=line-38;
//   until   topp<=822;

   IF Line<=12 Then Topp:=_FirstLineTop+(line-1)*_LineHight         div 2  else
   IF Line<=29 Then Topp:=325-70+_FirstLineTop+(line-13)*_LineHight div 2  else
                    Topp:=673-70+_FirstLineTop+(line-30)*_LineHight div 2  ;
   IF  Topp>822  Then Line:=line-38;
   Until   Topp<=822;

   _Topp:=Topp;
   _SecondLine:=_LineHight +_Topp;
   FrQrPayment:=TFrQrPayment.Create(Application);
   With  FrQrPayment DO
    Begin

    _PayedAmount:='0';
    if Debtor<>'0' then
      _PayedAmount:= Debtor
    else if Creditor<>'0' then
      _PayedAmount:=Creditor;

   ChBoDocNo_1:= '';ChBoDocNo_2 :='';
   ChBoAccountNo_1:='';ChBoAccountNo_2 :='';
	 ChBoAccountTitle_1:='';ChBoAccountTitle_2:='';
	 ChBoDate_1:='';ChBoDate_2:='';
	 ChBoDesc_1:='';ChBoDesc_2:='';
   ChBoCredit_1	:='';ChBoCredit_1	:='';
	 ChBoCredit_H_1:='';ChBoCredit_H_2:='';
	 ChBoDebit_1:='';ChBoDebit_2:='';
	 ChBoDebit_H_1:='';ChBoDebit_H_2:='';
	 ChBoDebCrd_1:='';ChBoDebCrd_2:='';
	 ChBoDebCrd_H_1:='';ChBoDebCrd_H_2:='';
	 ChBoRemain_1	:='';ChBoRemain_2	:='';
	 ChBoRemain_H_1:='';ChBoRemain_H_2:='';

   ChBoBenefit_1:='';ChBoBenefit_2:='';
   ChBoBenefit_H_1:='';ChBoBenefit_H_2:='';

	 ChBoSumBenefitPrice_1:='';ChBoSumBenefitPrice_2:='';
	 ChBoSumBenefitPrice_H_1:='';ChBoSumBenefitPrice_H_2:='';




// ChBoAccountTitle_2 :='';
//	 ChBoDate_2	:='';
 //	 ChBoDesc_2	:='';
//	 ChBoCredit_2:='';
//	 ChBoCredit_H_2	:='';
//	 ChBoDebit_2:='';
//	 ChBoDebit_H_2:='';
//	 ChBoDebCrd_2	:='';
//	 ChBoDebCrd_H_2	:='';
//	 ChBoRemain_2	:='';
//	 ChBoRemain_H_2:='';
//
//	 ChBoBenefit_2:='';
//	 ChBoBenefit_H_2:='';
//
//	 ChBoSumBenefitPrice_2:='';
//	 ChBoSumBenefitPrice_H_2:='';

   ChBoDocNo_1:=DocNo;
   ChBoAccountNo_1 := AccountNo;
   ChBoAccountTitle_1:=AccountTitle;
   ChBoDate_1 := Paydate;
   ChBoDesc_1 := Desc;

   ChBoCredit_1:= CommaSeperate(Creditor);
   ChBoCredit_H_1:=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoDebit_1:=CommaSeperate(Debtor);
   ChBoDebit_H_1:=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoDebCrd_1 :=CommaSeperate(_PayedAmount);
   ChBoDebit_H_1:=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoRemain_1:=CommaSeperate(Remain);
   ChBoRemain_H_1:=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoBenefit_1:=CommaSeperate(Benefit);
   ChBoBenefit_H_1:=Bill(strtoint(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoSumBenefitPrice_1:=CommaSeperate(INTTOSTR(STRTOINT(Benefit)+STRTOINT(_PayedAmount)));
   ChBoSumBenefitPrice_H_1:=Bill( STRTOINT(Benefit)+STRTOINT(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//22222222222222222--------------------------
   ChBoDocNo_2:=DocNo;
   ChBoAccountNo_2 := AccountNo;
   ChBoAccountTitle_2:=AccountTitle;
   ChBoDate_2 := Paydate;
   ChBoDesc_2 := Desc;

   ChBoCredit_2:= CommaSeperate(Creditor);
   ChBoCredit_H_2:=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoDebit_2:=CommaSeperate(Debtor);
   ChBoDebit_H_2:=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoDebCrd_2 :=CommaSeperate(_PayedAmount);
   ChBoDebCrd_H_2:=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoRemain_2:=CommaSeperate(Remain);
   ChBoRemain_H_2:=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoBenefit_2:=CommaSeperate(Benefit);
   ChBoBenefit_H_2:=Bill(strtoint(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;

   ChBoSumBenefitPrice_2:=CommaSeperate(INTTOSTR(STRTOINT(Benefit)+STRTOINT(_PayedAmount)));
   ChBoSumBenefitPrice_H_2:=Bill( STRTOINT(Benefit)+STRTOINT(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;


//    IF Get_SystemSetting('ChBoDocNo_1')='-1' THEN
//      ChBoDocNo_1:=DocNo;
//
//    IF Get_SystemSetting('ChBoAccountNo_1')='-1' THEN
//      ChBoAccountNo_1 := AccountNo;
//    IF Get_SystemSetting('ChBoAccountTitle_1')='-1' THEN
//      ChBoAccountTitle_1:=AccountTitle;
//
//    IF Get_SystemSetting('ChBoDate_1')='-1' THEN
//      ChBoDate_1 := Paydate;
//    IF Get_SystemSetting('ChBoDesc_1')='-1' Then
//      ChBoDesc_1 := Desc;
//
//
//    IF Get_SystemSetting('ChBoCredit_1')='-1' THEN
//      ChBoCredit_1:= CommaSeperate(Creditor);
//    IF Get_SystemSetting('ChBoCredit_H_1')='-1' THEN
//      ChBoCredit_H_1:=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoDebit_1')='-1' THEN
//        ChBoDebit_1:=CommaSeperate(Debtor);
//    IF Get_SystemSetting('ChBoDebit_H_1')='-1' THEN
//        ChBoDebit_H_1:=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoDebCrd_1')='-1' THEN
//        ChBoDebCrd_1 :=CommaSeperate(_PayedAmount);
//    IF Get_SystemSetting('ChBoDebCrd_H_1')='-1' THEN
//        ChBoDebit_H_1:=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoRemain_1')='-1' THEN
//        ChBoRemain_1:=CommaSeperate(Remain);
//    IF Get_SystemSetting('ChBoRemain_H_1')='-1' THEN
//        ChBoRemain_H_1:=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoBenefit_1')='-1' THEN
//        ChBoBenefit_1:=CommaSeperate(Benefit);
//    IF Get_SystemSetting('ChBoBenefit_H_1')='-1' THEN
//        ChBoBenefit_H_1:=Bill(strtoint(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoSumBenefitPrice_1')='-1' THEN
//        ChBoSumBenefitPrice_1:=CommaSeperate(INTTOSTR(STRTOINT(Benefit)+STRTOINT(_PayedAmount)));
//    IF Get_SystemSetting('ChBoSumBenefitPrice_H_1')='-1' THEN
//        ChBoSumBenefitPrice_H_1:=Bill( STRTOINT(Benefit)+STRTOINT(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;



//22222222222222222--------------------------
//    IF Get_SystemSetting('ChBoDocNo_2')='-1' THEN
//      ChBoDocNo_2:=DocNo;
//
//    IF Get_SystemSetting('ChBoAccountNo_2')='-1' THEN
//      ChBoAccountNo_2 := AccountNo;
////    IF Get_SystemSetting('ChBoAccountTitle_2')='-1' THEN
//      ChBoAccountTitle_2:=AccountTitle;
//
//    IF Get_SystemSetting('ChBoDate_2')='-1' THEN
//      ChBoDate_2 := Paydate;
//    IF Get_SystemSetting('ChBoDesc_2')='-1' Then
//      ChBoDesc_2 := Desc;
//
//    IF Get_SystemSetting('ChBoCredit_2')='-1' THEN
//      ChBoCredit_2:= CommaSeperate(Creditor);
//    IF Get_SystemSetting('ChBoCredit_H_2') THEN
//      ChBoCredit_H_2:=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoDebit_2')='-1' THEN
//        ChBoDebit_2:=CommaSeperate(Debtor);
//    IF Get_SystemSetting('ChBoDebit_H_2')='-1' THEN
//        ChBoDebit_H_2:=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoDebCrd_2')='-1' THEN
//        ChBoDebCrd_2 :=CommaSeperate(_PayedAmount);
//    IF Get_SystemSetting('ChBoDebCrd_H_2')='-1' THEN
//        ChBoDebCrd_H_2:=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoRemain_2')='-1' THEN
//        ChBoRemain_2:=CommaSeperate(Remain);
//    IF Get_SystemSetting('ChBoRemain_H_2')='-1' THEN
//        ChBoRemain_H_2:=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoBenefit_2')='-1' THEN
//        ChBoBenefit_2:=CommaSeperate(Benefit);
//    IF Get_SystemSetting('ChBoBenefit_H_1')='-1' THEN
//        ChBoBenefit_H_2:=Bill(strtoint(Benefit))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//    IF Get_SystemSetting('ChBoSumBenefitPrice_2')='-1' THEN
//        ChBoSumBenefitPrice_2:=CommaSeperate(INTTOSTR(STRTOINT(Benefit)+STRTOINT(_PayedAmount)));
//    IF Get_SystemSetting('ChBoSumBenefitPrice_H_2')='-1' THEN
//        ChBoSumBenefitPrice_H_2:=Bill( STRTOINT(Benefit)+STRTOINT(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//
//
//   Open_Perfraj(Line,ChBoDocNo_1,ChBoAccountNo_1,ChBoAccountTitle_1,ChBoDate_1,ChBoDesc_1 ,ChBoCredit_1,ChBoCredit_H_1,ChBoDebit_1,ChBoDebit_H_1,ChBoDebCrd_1,ChBoDebCrd_H_1,ChBoRemain_1,ChBoRemain_H_1,ChBoBenefit_1,ChBoBenefit_H_1,ChBoSumBenefitPrice_1,ChBoSumBenefitPrice_H_1,
//                     ChBoDocNo_2,ChBoAccountNo_2,ChBoAccountTitle_2,ChBoDate_2,ChBoDesc_2 ,ChBoCredit_2,ChBoCredit_H_2,ChBoDebit_2,ChBoDebit_H_2,ChBoDebCrd_2,ChBoDebCrd_H_2,ChBoRemain_2,ChBoRemain_H_2,ChBoBenefit_2,ChBoBenefit_H_2,ChBoSumBenefitPrice_2,ChBoSumBenefitPrice_H_2);


//    IF Get_SystemSetting('ChBoDocNo_1')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_1')).TEXT := DocNo;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_1')).TOP := _Topp;
//    END  ;
//
//    IF Get_SystemSetting('ChBoAccountNo_1')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_1')).TEXT := AccountNo;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_1')).TOP := _Topp;
//    END  ;
//    IF Get_SystemSetting('ChBoAccountTitle_1')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_1')).TEXT :=AccountTitle;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_1')).TOP := _Topp;
//    END  ;
//
//
//
//    IF Get_SystemSetting('ChBoDate_1')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_1')).TEXT := Paydate;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_1')).Top := _Topp;
//    END  ;
//
//    IF Get_SystemSetting('ChBoCredit_1') THEN
//    BEGIN
////        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_1')).TEXT := CommaSeperate(Creditor);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_1')).Top := _Topp;
//    END  ;
//    IF Get_SystemSetting('ChBoCredit_H_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_1')).TEXT :=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_1')).Top :=_Topp  ;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_1')).TEXT :=CommaSeperate(Debtor);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_1')).Top := _Topp;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_H_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_1')).TEXT :=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_1')).Top := _Topp;
//    END  ;
//
//
//    IF Get_SystemSetting('ChBoDebCrd_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_1')).Visible := True;
 //       TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_1')).TEXT :=CommaSeperate(_PayedAmount);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_1')).Top := _Topp;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_H_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_1')).TEXT :=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_1')).Top := _Topp;
//    END  ;
//
//
//    IF Get_SystemSetting('ChBoRemain_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_1')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_1')).TEXT :=CommaSeperate(Remain);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_1')).Top := _Topp;
//    END  ;
 //   IF Get_SystemSetting('ChBoRemain_H_1') THEN
  //  BEGIN
  //      TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_1')).Visible := True;
   //     TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_1')).TEXT :=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
    //    TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_1')).Top := _Topp;
 //   END  ;


//22222222222222222--------------------------
//    IF Get_SystemSetting('ChBoDocNo_2')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_2')).TEXT := DocNo;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDocNo_2')).TOP := _SecondLine
//    END  ;
//    IF Get_SystemSetting('ChBoAccountNo_2')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_2')).TEXT := AccountNo;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountNo_2')).TOP := _SecondLine;
//    END  ;
//    IF Get_SystemSetting('ChBoAccountTitle_2')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_2')).TEXT :=AccountTitle;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoAccountTitle_2')).TOP := _SecondLine;
//    END  ;
//
//
//    IF Get_SystemSetting('ChBoDate_2')='-1' THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_2')).TEXT := Paydate;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDate_2')).Top := _SecondLine;
//    END  ;
//
//    IF Get_SystemSetting('ChBoCredit_2') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_2')).TEXT := CommaSeperate(Creditor);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_2')).Top := _SecondLine;
//    END  ;
//    IF Get_SystemSetting('ChBoCredit_H_2') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_2')).TEXT :=Bill(strtoint(Creditor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoCredit_H_2')).Top :=_SecondLine  ;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_2') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_2')).TEXT :=CommaSeperate(Debtor);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_2')).Top := _SecondLine;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_H_2') THEN
//    BEGIN
////        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_2')).TEXT :=Bill(strtoint(Debtor))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebit_H_2')).Top := _SecondLine;
//    END  ;
//    IF Get_SystemSetting('ChBoDebCrd_1') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_2')).TEXT :=CommaSeperate(_PayedAmount);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_2')).Top := _SecondLine;
//    END  ;
//
//    IF Get_SystemSetting('ChBoDebit_H_1') THEN
////    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_2')).TEXT :=Bill(strtoint(_PayedAmount))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoDebCrd_H_2')).Top := _SecondLine;
//    END  ;
//
//    IF Get_SystemSetting('ChBoRemain_2') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_2')).TEXT :=CommaSeperate(Remain);
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_2')).Top := _SecondLine;
//    END  ;
//    IF Get_SystemSetting('ChBoRemain_H_2') THEN
//    BEGIN
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_2')).Visible := True;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_2')).TEXT :=Bill(strtoint(Remain))+' ' +Get_SystemSetting('EdtMoneyUnit')+' '  ;
//        TfrxMemoView(frxReport1.FindComponent('MemChBoRemain_H_2')).Top := _SecondLine;
//    END  ;
//
//22222222222222222--------------------------
    frxReport1.Pages[1].Visible:=false;
    frxReport1.Pages[2].Visible:=true;
    Rep_LoadFile(frxReport1,'PerfrajRep.fr3');

     IF ShowDesign = 'NShow'    Then
            Rep_Show(frxReport1,rtShow);//ÅÌ‘ ‰„«Ì‘

     IF ShowDesign = 'NPrint'   Then
            Rep_Show(frxReport1,rtPrint);//ç«Å ”—Ì⁄

     IF (ShowDesign = 'NDesign')Then
            Rep_Show(FrQrPayment.frxReport1,rtDesign);//ÿ—«ÕÌ

     IF (ShowDesign = 'NOldVersion')Then
     begin
          qrPaydate.Caption:=Paydate;
          qrdesc.Caption:=Desc;
          qrcredit.Caption:=CommaSeperate(Creditor);
          qrdebtor.Caption:=CommaSeperate(Debtor);
          Qrremain.Caption:=CommaSeperate(Remain);
          qrPaydate.Top:=_Topp;//topp;
          qrdesc.Top:=_Topp;//topp;
          qrcredit.Top:=_Topp;//topp;
          qrdebtor.Top:=_Topp;//topp;
          Qrremain.Top:=_Topp;//topp;
          QuickRep2.Prepare;
          QuickRep2.Preview;;
     end;


//    frxReport1.PrepareReport();
//    frxReport1.ShowReport();



//    TfrxMemoView(frxReport1.FindComponent('MemPaydate')).Text := Paydate;
//    TfrxMemoView(frxReport1.FindComponent('MemDesc')).Text := Desc;
 //   TfrxMemoView(frxReport1.FindComponent('MemCreditor')).Text := CommaSeperate(Creditor);
//    TfrxMemoView(frxReport1.FindComponent('MemDebtor')).Text := CommaSeperate(Debtor);
//    TfrxMemoView(frxReport1.FindComponent('MemRemain')).Text := CommaSeperate(Remain);
//
//
//    TfrxMemoView(frxReport1.FindComponent('MemPaydate')).Top  := topp;
//    TfrxMemoView(frxReport1.FindComponent('MemDesc')).Top  := topp;
//    TfrxMemoView(frxReport1.FindComponent('MemCreditor')).Top  := topp;
//    TfrxMemoView(frxReport1.FindComponent('MemDebtor')).Top  := topp;
//    TfrxMemoView(frxReport1.FindComponent('MemRemain')).Top  := topp;

//    frxReport1.Pages[1].Visible:=false;
//    frxReport1.Pages[2].Visible:=true;

//    qrPaydate.Caption:=Paydate;
//    qrdesc.Caption:=Desc;
//    qrcredit.Caption:=CommaSeperate(Creditor);
//    qrdebtor.Caption:=CommaSeperate(Debtor);
//    Qrremain.Caption:=CommaSeperate(Remain);
//    qrPaydate.Top:=topp;
//    qrdesc.Top:=topp;
//    qrcredit.Top:=topp;
//    qrdebtor.Top:=topp;
//    Qrremain.Top:=topp;
//    frxReport1.PrepareReport();
//    frxReport1.ShowReport();

   end;

//   QuickRep2.Prepare;
//    didarians
//    QuickRep2.Preview;;
//    close;
//  End;
End;
}
{
procedure TDm.LinePrint(ID :integer;IsAccount:boolean;Paydate,Desc,Creditor,Debtor,Remain:string);
var topp,line:integer;
s:string;
begin
  inherited;
    if IsAccount then
      line:=Get_calcField_byContactID(id)+1
     else
      line:=get_NumberOfPaidPart_byLoanID(id);

   if Y_InputQuery('‘„«—Â Œÿ Å—Ì‰  ',IntToStr(line),s) then
     line:=StrToInt(s)
   else
     exit;

    if IsAccount then
      Update_calcField(id,line);

   repeat

   if line<=12 then topp:=70+(line-1)*37   div 2  else
   if line<=29 then topp:=325+(line-13)*37 div 2  else
                    topp:=673+(line-30)*37 div 2  ;
   if  topp>822  then line:=line-38;
   until   topp<=822;
  FrQrPayment:=TFrQrPayment.Create(Application);
   with  FrQrPayment do
    begin
    qrPaydate.Caption:=Paydate;
    qrdesc.Caption:=Desc;
    qrcredit.Caption:=CommaSeperate(Creditor);
    qrdebtor.Caption:=CommaSeperate(Debtor);
    Qrremain.Caption:=CommaSeperate(Remain);
    qrPaydate.Top:=topp;
    qrdesc.Top:=topp;
    qrcredit.Top:=topp;
    qrdebtor.Top:=topp;
    Qrremain.Top:=topp;

    QuickRep2.Prepare;
//    didarians
    QuickRep2.Preview;;
    close;
  End;
End;
}{
  if not(dm.Report_Contact.Active)or(dm.Report_Contact.RecordCount = 0) then
  begin
     MessageShowString('ÂÌç —ﬂÊ—œÌ Ì«›  ‰‘œ', False);
     Exit;
  end;
}
Procedure Tdm.Select_ContactAfterInsert(DataSet: TDataSet);
Begin
  {Ranjbar 88.05.21 Code=23}
  Select_ContactHaveInterest.AsBoolean := True;// ⁄·ﬁ ê—› ‰ ”Êœ
  //---
End;

// «—ÌŒ «›  «Õ Õ”«»
procedure Tdm.Select_Account_DetailsAccountDateGetText(Sender: TField;var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

// «—ÌŒ «›  «Õ Õ”«»
procedure Tdm.Select_Account_DetailsAccountDateSetText(Sender: TField;Const Text: String);
begin
  Date_SetText(Sender,Text);
end;

//Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=YLoancash;Data Source=.
procedure Tdm.Select_AccountAfterInsert(DataSet: TDataSet);
begin
  Select_AccountAccountDate.AsString :=_Today;
end;

procedure Tdm.UsersBeginDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.UsersEndDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.UsersBeginDateSetText(Sender: TField; const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.UsersEndDateSetText(Sender: TField; const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_SumBalanceAccountDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_Payment_ByDocumentNoDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_Payment_ByDocumentNoDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_SumBalanceAccountDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_Daily_PaymentDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_Daily_PaymentDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_Account2AccountDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_Account2AccountDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_PaymentDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_PaymentDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_CashAccountAccountDateGetText(Sender: TField;
var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

Procedure Tdm.Report_CashAccountAccountDateSetText(Sender: TField;
Const Text: String);
Begin
  Date_SetText(Sender,Text);
End;

procedure Tdm.Report_LoanPointAccountDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_LoanPointAccountDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_FinancialNote_LikeMatureDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_FinancialNote_LikeMatureDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_FinancialNote_deatilsMatureDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_FinancialNote_deatilsMatureDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_FinancialNoteMatureDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_FinancialNoteMatureDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_ForcePaymentMatureDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_ForcePaymentMatureDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_Monthly_DetailsPayDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_Monthly_DetailsPayDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LoanGaurantorBirthDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_LoanGaurantorBirthDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_Loan_PartsMatureDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_Loan_PartsMatureDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_LatestPayment_ByAccountIDDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_LatestPayment_ByAccountIDDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LastMonthlyAccountDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_LastMonthlyAccountDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_Loan_LikeLoanDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_Loan_LikeLoanDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LastPartLoanDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_LastPartLoanDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_LoanLoanDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_LoanLoanDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_ContactBirthDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_ContactBirthDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LoanLoanDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_LoanLoanDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_Loan_ByAccountIDLoanDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_Loan_ByAccountIDLoanDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Report_AccountAccountDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_AccountAccountDateSetText(Sender: TField;
  const Text: String);
begin
  Date_SetText(Sender,Text);
end;

procedure Tdm.Select_Loan_Parts_DetailsPayDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_Loan_Parts_DetailsPayDateSetText(Sender: TField;
  const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Report_LoanRequestRequestDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_LoanRequestRequestDateSetText(Sender: TField;
  const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LoanRequestRequestDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);
end;

procedure Tdm.Select_LoanRequestRequestDateSetText(Sender: TField;
  const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Select_LoanRequest_ByAccountIDRequestDateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_LoanRequest_ByAccountIDRequestDateSetText(
  Sender: TField; const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Select_ForcePayment_byForcePaymentIDMatureDateGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_ForcePayment_byForcePaymentIDMatureDateSetText(
  Sender: TField; const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Select_ContactBirthDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Select_ContactBirthDateSetText(Sender: TField;
  const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Report_Payment_ByAccountIDDateGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);;
end;

procedure Tdm.Report_Payment_ByAccountIDDateSetText(Sender: TField; const Text: String);
begin
   Date_SetText(Sender,Text);
end;

procedure Tdm.Select_PaymentDateGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
   Date_GetText(Sender,Text,DisplayText);
end;

procedure Tdm.Select_PaymentDateSetText(Sender: TField;
  const Text: String);
begin
   Date_SetText(Sender,Text);
end;

FUNCTION Tdm.SetDocTitle:string;
begin
   CASE Dm.FinancialNote_MasterFinancialNoteTypeID.AsInteger OF
     1://çò
        SetDocTitle:=' çò ';
     2://›Ì‘ »«‰òÌ
        SetDocTitle:=' ›Ì‘ »«‰òÌ ';
     3://”› Â
        SetDocTitle:=' ”› Â ';
   END;//CASE
end;


procedure Tdm.DFinancialNote_MasterDataChange(Sender: TObject;Field: TField);
var
  _c:String;
begin
  if (FrAddFinancialNote_New<>nil) then
    if (FrAddFinancialNote_New.Showing) then
      if(FrAddFinancialNote_New.ACTIVE) then
      begin
        _c :=SetDocTitle;
        FrAddFinancialNote_New.LbNo.Caption:= ' ⁄œ«œ'+_c;
        FrAddFinancialNote_New.LbPrice.Caption:='„»·€'+_c;
        FrAddFinancialNote_New.LbResiver.Caption:='œ—Ì«›  ò‰‰œÂ'+_c;
        FrAddFinancialNote_New.LBSbj.Caption:='„Ê÷Ê⁄ '+_c;
        FrAddFinancialNote_New.DBGrid1.Columns[0].Title.Caption:='‘„«—Â'+_c;
        FrAddFinancialNote_New.DBGrid1.Columns[1].Title.Caption:='„»·€'+_c;
        FrAddFinancialNote_New.DBGrid1.Columns[4].Title.Caption:=' «—ÌŒ'+_c;
        FrAddFinancialNote_New.DBGrid1.Columns[5].Title.Caption:='‘—Õ'+_c;

        IF FinancialNote_Master.State IN [dsBrowse	,dsEdit] then
          IF (FinancialNote_MasterAmount.AsString <> '') And
              (FinancialNote_MasterFinancialNote_MasterID.AsString <> '')THEN
            IF FrAddFinancialNote_New<>nil then
              IF FrAddFinancialNote_New.ACTIVE THEN
                IF FrAddFinancialNote_New.SHOWING THEN
                  FrAddFinancialNote_New.LbRemain.Caption:=
                    IntToStr(FinancialNote_MasterAmount.AsInteger-
                      SumAmountFinancialNote(FinancialNote_MasterFinancialNote_MasterID.AsInteger));
      END;
end;

procedure Tdm.DFinancialNote_DetailDataChange(Sender: TObject;
  Field: TField);
begin
  IF FinancialNote_Master.State IN [dsBrowse	,dsEdit] then
    IF (FinancialNote_MasterAmount.AsString <> '') And
        (FinancialNote_MasterFinancialNote_MasterID.AsString <> '')THEN
      IF (FrAddFinancialNote_New <> NIL) THEN
        IF (FrAddFinancialNote_New.Showing) THEN
          IF (FrAddFinancialNote_New.Active) THEN
            FrAddFinancialNote_New.LbRemain.Caption:=IntToStr( FinancialNote_MasterAmount.AsInteger -
                                                        SumAmountFinancialNote(FinancialNote_MasterFinancialNote_MasterID.AsInteger));

end;

procedure Tdm.FinancialNote_MasterAfterInsert(DataSet: TDataSet);
begin
   Dm.FinancialNote_MasterAmount.AsLargeInt:=0;
end;
//---------------
procedure Tdm.CheckValidityOfFinancialNote_Detail;
var
  ValueLoan,ValueGhest,Value,D,_C:string;
begin
  if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
    raise Exception.Create( '«Ì‰ ”‰œ ﬁ»·« «” ›«œÂ ‘œÂ «” .«„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');

  if FinancialNote_DetailFinancialNote_MasterID.IsNull then
    raise Exception.Create('Ã“∆Ì«  œ—ŒÊ«”  »Â ﬁ”„  «’·Ì ”‰œ „ ’· ‰Ì” ');

  _C :=SetDocTitle;

  if (FinancialNote_DetailNoteNo.IsNull) or
     (TRIM(FinancialNote_DetailNoteNo.AsString)='') or
     (TRIM(FinancialNote_DetailNoteNo.AsString)='0') then
    raise Exception.Create('‘„«—Â '+_C +'„‘Œ’ ‰Ì” ');

  if (FinancialNote_DetailAmount.IsNull) or
     (FinancialNote_DetailAmount.ASINTEGER=0) then
    raise Exception.Create('„»·€ „‘Œ’ ‰Ì” ');


  if FinancialNote_MasterFinancialNoteTypeID.AsInteger=1 then
  begin
    if (FinancialNote_DetailBankID.IsNull) or
       (TRIM(FinancialNote_DetailBankID.AsString)='') then
      raise Exception.Create('»«‰ò „‘Œ’ ‰Ì” ');

    if (FinancialNote_DetailBankAccountNo.IsNull) or
       (TRIM(FinancialNote_DetailBankAccountNo.AsString)='') or
       (TRIM(FinancialNote_DetailBankAccountNo.AsString)='0') then
      raise Exception.Create('·ÿ›« ‘„«—Â Õ”«» »«‰ò —« „‘Œ’ ‰„«ÌÌœ');

    Value:=Qry_GetResult(' SELECT COUNT(0) AS COUNT '+
                         ' FROM   FinancialNote_Detail  '+
                         ' WHERE  BankID='+Dm.FinancialNote_DetailBankID.AsString+
                         ' AND NoteNo = '''+Dm.FinancialNote_DetailNoteNo.AsString+'''',Dm.YeganehConnection);

    if (Value>'1') then
      raise   Exception.Create('‘„«—Â çò  ò—«—Ì „Ì »«‘œ.');
  end;

  D := Dm.FinancialNote_DetailNoteDate.AsString;
  if (Txt_Del254(d)<>'14  /  /  ') and not isValidDate(D) then
    raise Exception.Create(' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ');

  if FinancialNote_DetailNoteDescription.IsNull then
       raise Exception.Create('‘—Õ  —« „‘Œ’ ‰„«ÌÌœ');


  if Dm.FinancialNote_DetailForcePaymentID.AsString <> '' then
  begin
    ValueLoan:=Qry_GetResult('SELECT Amount FROM Loan WHERE (LoanID='+Dm.FinancialNote_DetailFND_LoanId.AsString+') ',Dm.YeganehConnection);
    ValueGhest:=Qry_GetResult('SELECT Amount FROM ForcePayment WHERE (ForcePaymentID='+Dm.FinancialNote_DetailForcePaymentID.AsString+') ',Dm.YeganehConnection);

    if (ValueLoan<>Dm.FinancialNote_DetailAmount.AsString) and
       (ValueGhest<>Dm.FinancialNote_DetailAmount.AsString) then
      raise Exception.Create('„»·€ Ê«„ Ì« ﬁ”ÿ »« „»·€ çò »—«»— ‰Ì” ');

    Value:=Qry_GetResult(' SELECT COUNT(*)  AS COUNT '+
                         ' FROM   FinancialNote_Detail '+
                         ' GROUP BY ForcePaymentID  '+
                         ' HAVING(ForcePaymentID = '+Dm.FinancialNote_DetailForcePaymentID.AsString+')  ',Dm.YeganehConnection);
    if (Value>'1') then
      raise Exception.Create('»—«Ì «Ì‰ ‘„«—Â ﬁ”ÿ ﬁ»·« çò «Œ ’«’ Ì«› Â «” .');
  end;
end;

procedure Tdm.FinancialNote_DetailBeforePost(DataSet: TDataSet);
begin
   CheckValidityOfFinancialNote_Detail;
{   IF NOT IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) THEN
      Raise Exception.Create( '«Ì‰ ”‰œ ﬁ»·« «” ›«œÂ ‘œÂ «” .«„ò«‰  €ÌÌ— ÊÃÊœ ‰œ«—œ');

    IF FinancialNote_DetailFinancialNote_MasterID.IsNull THEN
    RAISE Exception.Create('Ã“∆Ì«  œ—ŒÊ«”  »Â ﬁ”„  «’·Ì ”‰œ „ ’· ‰Ì” ');

    _C :=SetDocTitle;

    IF     (FinancialNote_DetailNoteNo.IsNull) OR
           (TRIM(FinancialNote_DetailNoteNo.AsString)='')OR
           (TRIM(FinancialNote_DetailNoteNo.AsString)='0')  THEN
    RAISE Exception.Create('‘„«—Â '+_C +'„‘Œ’ ‰Ì” ');


    IF FinancialNote_DetailAmount.IsNull THEN
    RAISE Exception.Create('„»·€ „‘Œ’ ‰Ì” ');


    IF FinancialNote_MasterFinancialNoteTypeID.AsInteger=1 THEN
      IF (FinancialNote_DetailBankID.IsNull)OR
         (TRIM(FinancialNote_DetailBankID.AsString='')) THEN
      RAISE Exception.Create('»«‰ò „‘Œ’ ‰Ì” ');


    IF FinancialNote_DetailNoteDate.IsNull THEN
    RAISE Exception.Create(' «—ÌŒ —« „‘Œ’ ‰„«ÌÌœ');


    IF FinancialNote_DetailNoteDescription.IsNull THEN
    RAISE Exception.Create('‘—Õ  —« „‘Œ’ ‰„«ÌÌœ');


    D := Dm.FinancialNote_DetailNoteDate.AsString;
    if (Txt_Del254(d)<>'13  /  /  ') and not isValidDate(D) then
    BEGIN
      ShowMyMessage('ÅÌ€«„',' «—ÌŒ Ê«—œ ‘œÂ  «‘ »«Â „Ì»«‘œ . ·ÿ›«  ’ÕÌÕ ‰„«ÌÌœ',[mbOK],mtInformation);
      Exit;
    END;

   IF Dm.FinancialNote_DetailNoteNo.IsNull THEN
      RAISE Exception.Create('·ÿ›« ‘„«—Â —« „‘Œ’ ‰„«ÌÌœ');
   IF Dm.FinancialNote_DetailAmount.IsNull THEN
      RAISE Exception.Create('·ÿ›« „»·€  —« „‘Œ’ ‰„«ÌÌœ');

   IF Dm.FinancialNote_MasterFinancialNoteTypeID.AsInteger=1 THEN
     IF Dm.FinancialNote_DetailBankAccountNo.IsNull THEN
        RAISE Exception.Create('·ÿ›« ‘„«—Â Õ”«» »«‰ò —« „‘Œ’ ‰„«ÌÌœ');

   IF Dm.FinancialNote_DetailNoteDate.IsNull THEN
      RAISE Exception.Create('·ÿ›«  «—ÌŒ —« „‘Œ’ ‰„«ÌÌœ');
   IF Dm.FinancialNote_DetailNoteDescription.IsNull THEN
      RAISE Exception.Create('·ÿ›« ‘—Õ —« „‘Œ’ ‰„«ÌÌœ');


   IF FinancialNote_MasterFinancialNoteTypeID.AsInteger=1 THEN
   BEGIN
     Value:=Qry_GetResult(' SELECT COUNT(0) AS COUNT '+
                          ' FROM   FinancialNote_Detail  '+
                          ' WHERE  BankID='+Dm.FinancialNote_DetailBankID.AsString+
                          ' AND NoteNo = '''+Dm.FinancialNote_DetailNoteNo.AsString+'''',Dm.YeganehConnection);

     IF (Value>'1') THEN
           RAISE   Exception.Create('‘„«—Â çò  ò—«—Ì „Ì »«‘œ.');
   END;


   IF Dm.FinancialNote_DetailForcePaymentID.AsString <> '' THEN
   BEGIN
       Value:=Qry_GetResult('SELECT Amount FROM ForcePayment WHERE (ForcePaymentID='+Dm.FinancialNote_DetailForcePaymentID.AsString+') ',Dm.YeganehConnection);
       IF Value<>Dm.FinancialNote_DetailAmount.AsString THEN
         RAISE   Exception.Create('„»·€ çò »« „»·€ ﬁ”ÿ »—«»— ‰Ì” .·ÿ›« «’·«Õ ò‰Ìœ.');
       Value:=Qry_GetResult(' SELECT COUNT(*)  AS COUNT '+
                            ' FROM   FinancialNote_Detail '+
                            ' GROUP BY ForcePaymentID  '+
                            ' HAVING(ForcePaymentID = '+Dm.FinancialNote_DetailForcePaymentID.AsString+')  ',Dm.YeganehConnection);
       IF (Value>'1') THEN
         RAISE   Exception.Create('»—«Ì «Ì‰ ‘„«—Â ﬁ”ÿ ﬁ»·« çò «Œ ’«’ Ì«› Â «” .');
   END;  }
end;

procedure Tdm.BankBeforeEdit(DataSet: TDataSet);
begin
  if not CanDeleteOrEditBankID(BankBankID.AsInteger) then
    raise Exception.Create('»Â œ·Ì· «” ›«œÂ œ— çò «„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ.');
end;

procedure Tdm.BankBeforeDelete(DataSet: TDataSet);
begin
  if not CanDeleteOrEditBankID(BankBankID.AsInteger) then
    raise Exception.Create('»Â œ·Ì· «” ›«œÂ œ— çò «„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ.');
end;

procedure Tdm.FinancialNote_DetailAfterInsert(DataSet: TDataSet);
begin
  Dm.FinancialNote_DetailNoteStatusID.AsInteger:=1;
  Dm.FinancialNote_DetailNoteDate.AsString:=_Today;
  Dm.FinancialNote_DetailAmount.AsString:=Dm.FinancialNote_MasterAmount.AsString;
  Dm.FinancialNote_DetailNoteDescription.AsString:=Dm.FinancialNote_MasterNoteSubject.AsString;
  if _AddLoan then
  begin
    Dm.FinancialNote_DetailFND_LoanId.AsInteger:=Dm.Select_LoanLoanID.AsInteger;
    Dm.FinancialNote_DetailFND_LoanNo.AsInteger:=Dm.Select_LoanLoanNO.AsInteger;
  end;

  if _B_F_Ins_BankID<>0 then
    Dm.FinancialNote_DetailBankID.AsInteger:=_B_F_Ins_BankID;

  if _B_F_Ins_AccountNo<>'' then
      Dm.FinancialNote_DetailBankAccountNo.AsString:=_B_F_Ins_AccountNo;

  if _B_F_Ins_Branch<>'' then
      Dm.FinancialNote_DetailBranch.AsString:=_B_F_Ins_Branch;

  if _B_F_Ins_BranchCode<>'' then
      Dm.FinancialNote_DetailBranchCode.AsString:=_B_F_Ins_BranchCode;

  if _AddLoan then
  begin
    Dm.FinancialNote_DetailFND_LoanId.AsInteger:=Dm.Select_LoanLoanID.AsInteger;
    Dm.FinancialNote_DetailFND_LoanNo.AsInteger:=Dm.Select_LoanLoanNO.AsInteger;
  end;
end;

procedure Tdm.DSelect_FinancialNote_Like_NewDataChange(Sender: TObject;
  Field: TField);
var
  _m,_d:Integer;
begin
  _m:=Dm.Select_FinancialNote_Like_NewFinancialNote_MasterID.AsInteger;
  _d:=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
  dm.FinancialNote_Master.Locate('FinancialNote_MasterID',_m,[loCaseInsensitive]);
  dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_d,[loCaseInsensitive]);
end;

procedure Tdm.FinancialNote_MasterBeforePost(DataSet: TDataSet);
begin
  dm.FinancialNote_MasterMatureDate.AsString:=_Today;
end;

procedure Tdm.FinancialNote_DetailBeforeInsert(DataSet: TDataSet);
begin
  _B_F_Ins_BankID:=0;
  _B_F_Ins_AccountNo:='';
  _B_F_Ins_Branch:='';
  _B_F_Ins_BranchCode:='';

  if not Dm.FinancialNote_DetailBankID.IsNull then
    _B_F_Ins_BankID:=Dm.FinancialNote_DetailBankID.AsInteger;

  if not Dm.FinancialNote_DetailBankAccountNo.IsNull then
    _B_F_Ins_AccountNo:=Dm.FinancialNote_DetailBankAccountNo.AsString;

  if not Dm.FinancialNote_DetailBranch.IsNull then
    _B_F_Ins_Branch:=Dm.FinancialNote_DetailBranch.AsString;

  if not Dm.FinancialNote_DetailBranchCode.IsNull then
    _B_F_Ins_BranchCode:=Dm.FinancialNote_DetailBranchCode.AsString;
end;

procedure Tdm.dReport_PaymentInDetail_MDataChange(Sender: TObject;
  Field: TField);
begin
  with DM.Report_PaymentInDetail_D do
  begin
    Close;
    Parameters.ParamByName('@DateFrom').Value:=DM.Report_PaymentInDetail_M.Parameters.ParamByName('@DateFrom').Value;
    Parameters.ParamByName('@DateTo').Value  :=DM.Report_PaymentInDetail_M.Parameters.ParamByName('@DateTo').Value;
    Parameters.ParamByName('@PayType').Value :=DM.Report_PaymentInDetail_MPayTypeID.AsInteger;
    Parameters.ParamByName('@Grouped').Value :=0;
    try
      Open;
    except
    end;
  end;

  with DM.Report_PaymentInDetail_DD do
  begin
    Close;
    Parameters.ParamByName('@DateFrom').Value:=DM.Report_PaymentInDetail_M.Parameters.ParamByName('@DateFrom').Value;
    Parameters.ParamByName('@DateTo').Value  :=DM.Report_PaymentInDetail_M.Parameters.ParamByName('@DateTo').Value;
    Parameters.ParamByName('@PayType').Value :=DM.Report_PaymentInDetail_MPayTypeID.AsInteger;
    Parameters.ParamByName('@Grouped').Value :=1;
    try
      Open;
    except
    end;
  end;

end;

procedure Tdm.Report_LoanCalcFields(DataSet: TDataSet);
begin
  if Report_LoanNumberOfPart.AsInteger<>0 then
    Report_LoanPayedInvestment_Calc.AsInteger:=round(Report_LoanAmount.AsInteger/Report_LoanNumberOfPart.AsInteger)*Report_LoanNumberOfPaidPart.AsInteger;
end;

procedure Tdm.FinancialNote_DetailBeforeEdit(DataSet: TDataSet);
begin
  if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
    raise Exception.Create( '«Ì‰ ”‰œ ﬁ»·« «” ›«œÂ ‘œÂ «” .«„ò«‰ ÊÌ—«Ì‘ ÊÃÊœ ‰œ«—œ');
end;

procedure Tdm.FinancialNote_DetailBeforeDelete(DataSet: TDataSet);
begin
  if not IsSelectedFinantialNoteCorrect(Dm.FinancialNote_DetailFinancialNote_DetailID.AsInteger) then
    raise Exception.Create( '«Ì‰  ”‰œ ﬁ»·« «” ›«œÂ ‘œÂ «” .«„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ');

  if Dm.FinancialNote_DetailNoteStatusID.AsInteger<>1 then
    raise Exception.Create( '”‰œ œ— Ê÷⁄Ì   ‰ŸÌ„ ‰Ì” .«„ò«‰ Õ–› ÊÃÊœ ‰œ«—œ');
end;

procedure Tdm.DDailyAverage_AllDataChange(Sender: TObject; Field: TField);
begin
  Open_DailyAverage_Detail(FrAvrage.MEYear.Text,DailyAverage_AllACCOUNTID.AsInteger);
end;

procedure Tdm.Insert_ForGivenPayment(LoanId,CrAccountId:integer;LoanNo:string);
var
   QrResult,QrUpdate : TAdoQuery; DocumentNo:String;
   paymentid:Integer;
begin
  QrUpdate := TAdoQuery.Create(nil);
  QrUpdate.Connection :=dm.YeganehConnection ;
  DocumentNo:=Get_NewDocumnetNo(_Today);
  QrResult := TAdoQuery.Create(nil);
  QrResult.Connection :=dm.YeganehConnection ;
  QrResult.SQL.Text := ' SELECT ForcePaymentID, ParentID, ForceTypeID, InterestAmount, OrderNo, Paid, Comment, PaymentID, MatureDate, Amount '+
                       ' FROM   ForcePayment '+
                       ' WHERE  ForceTypeID=1 AND ParentID= '+IntToStr(LoanId);
  QrResult.Open;
  QrResult.First;
  While not QrResult.Eof do
  begin
    PaymentId:=Insert_Payment(PartPayTypeID,
                            CrAccountId,
                            Get_AccountID_ByAccountNo(Get_SystemSetting('EdtForGivenAccount')),
                            0,
                            QrResult.fieldbyname('Amount').AsInteger,
                            ' Ê«„ »·«⁄Ê÷ ‘„«—Â: '+LoanNo,
                             0,
                            DocumentNo,
                            '',
                            0,
                            0,
                            0,
                            0

                            );

    QrUpdate.SQL.Text:=' UPDATE ForcePayment SET  Paid=1,PaymentID='+IntToStr(PaymentId) +' WHERE ForcePaymentID=' +QrResult.fieldbyname('ForcePaymentID').AsString;
    QrUpdate.ExecSQL;
    QrResult.NEXT;
  end;

  QrResult.Close;
end;

procedure Tdm.Insert_RemainOfLoan(FPID:String;dbAccID:integer);
var
  QrResult,QrUpdate : TAdoQuery;
begin
  QrUpdate := TAdoQuery.Create(nil);
  QrUpdate.Connection :=dm.YeganehConnection ;
  //DocumentNo:=Get_NewDocumnetNo;
  QrResult := TAdoQuery.Create(Nil);
  QrResult.Connection:=dm.YeganehConnection ;
  QrResult.SQL.Text  := ' SELECT F1.ForcePaymentID , F1.Amount, L1.LoanNO , L1.AccountID, F1.OrderNo '+
                        ' FROM   Loan L1 INNER JOIN '+
                        '        ForcePayment F1 ON L1.LoanID=F1.ParentID '+
                        ' WHERE (F1.Paid = 0) AND (F1.ForcePaymentID IN ('+FPID+')) ';

  QrResult.Open;
  QrResult.First;
  While not QrResult.Eof do
  begin
{         PaymentId:=Insert_Payment(PartPayTypeID,
                                   QrResult.fieldbyname('AccountID').AsInteger,
                                   dbAccID,
                                   0,
                                   QrResult.fieldbyname('Amount').AsInteger,
                                   ' Å—œ«Œ  « Ê„« Ìò ÃÂ  ﬁ”ÿ »‰œÌ „Ãœœ '+QrResult.fieldbyname('LoanNo').AsString,
                                   0,
                                   DocumentNo,
                                   '',
                                   0,
                                   0,
                                   0,
                                   0
                                   );
         QrUpdate.SQL.Text:=' UPDATE ForcePayment '+
                            ' SET    Paid=1,'+
                            '        PaymentID='+IntToStr(PaymentId) +
                            ' WHERE  ForcePaymentID=' +QrResult.fieldbyname('ForcePaymentID').AsString;  }

    QrUpdate.SQL.Text:=' UPDATE ForcePayment '+
                       ' SET    Comment='+'''Õ–› ÃÂ  ﬁ”ÿ »‰œÌ „Ãœœ Ê«„ »Â ‘„«—Â'+QrResult.fieldbyname('LoanNo').AsString+' Ê ‘„«—Â ﬁ”ÿ '+QrResult.fieldbyname('OrderNo').AsString+''''+
                       ' WHERE  ForcePaymentID=' +QrResult.fieldbyname('ForcePaymentID').AsString;
    QrUpdate.ExecSQL;

    QrUpdate.SQL.Text:=' Delete From ForcePayment '+
                            ' WHERE  ForcePaymentID=' +QrResult.fieldbyname('ForcePaymentID').AsString;
    QrUpdate.ExecSQL;
    QrResult.NEXT;
  end;

  QrResult.Close;
end;

procedure Tdm.Sp_ShowBillCalcFields(DataSet: TDataSet);
begin
   if not Sp_ShowBillAmount.IsNull then
      Sp_ShowBillAmount_H.AsString:=Bill(Sp_ShowBillAmount.AsLargeInt)+Get_SystemSetting('EdtMoneyUnit')+' '  ;
      //      Sp_ShowBillAmount_H.AsString:=Bill(Sp_ShowBillAmount.AsInteger)+Get_SystemSetting('EdtMoneyUnit')+' '  ;
end;

procedure Tdm.ReportsNameAfterInsert(DataSet: TDataSet);
begin
   dm.ReportsNameReportCode.AsInteger:=SetNextNo('REPORTSNAME','REPORTCODE','');
   Dm.ReportsNameReportName.AsString:=BeforInsertReportsNameReportName;
   Dm.ReportsNameObjectName.AsString:=BeforInsertReportsNameObjectName;
   Dm.ReportsNameReportDescription.AsString:=BeforInsertReportsNameReportDescription;
end;

procedure Tdm.ReportsNameBeforeInsert(DataSet: TDataSet);
begin
  if not Dm.ReportsNameReportName.IsNull then
    BeforInsertReportsNameReportName:=Dm.ReportsNameReportName.AsString;
  if not Dm.ReportsNameObjectName.IsNull then
    BeforInsertReportsNameObjectName:=Dm.ReportsNameObjectName.AsString;
  if not Dm.ReportsNameReportDescription.IsNull then
    BeforInsertReportsNameReportDescription:=Dm.ReportsNameReportDescription.AsString;
end;

procedure Tdm.AccountPresenterAfterInsert(DataSet: TDataSet);
begin
  dm.AccountPresenterAccountId.AsInteger:=_AccountPresenterAccountID;
end;

procedure Tdm.AccountPresenterBeforePost(DataSet: TDataSet);
begin
  if AccountPresenterAccountId.IsNull then
  begin
    ShowMessage('Œÿ« 900321 : ‘„«—Â Å—”‰·Ì „‘Œ’ ‰Ì”  ·ÿ›« »« ‘—ò  Ìê«‰Â  „«” Õ«’· ›—„«ÌÌœ');
    ABORT;
  end;

  if AccountPresenterContactId.IsNull then
  begin
    ShowMessage('·ÿ›« „⁄—› —« „‘Œ’ ‰„«ÌÌœ.');
    ABORT;
  end;

  if AccountPresenterAccountId.AsInteger=Get_AccountID_ByContactID(AccountPresenterContactId.AsInteger) then
  begin
    ShowMessage('„⁄—› Õ”«» Ã«—Ì «”  ° «„ò«‰ «‰ Œ«» ÊÃÊœ ‰œ«—œ.');
    ABORT;
  end;

  if not IsValidPresenter(AccountPresenterAccountId.AsInteger ,AccountPresenterContactID.AsInteger ,AccountPresenterAccountPresenterId.ASInteger) then
  begin
    ShowMessage('„⁄—› »—«Ì «Ì‰ Õ”«» Ã«—Ì ﬁ»·« «‰ Œ«» ‘œÂ «”  .«„ò«‰ «‰ Œ«» „Ãœœ ÊÃÊœ ‰œ«—œ.');
    ABORT;
  end;
end;

procedure Tdm.LoanTypeAfterInsert(DataSet: TDataSet);
begin
  Dm.LoanTypeIsUrgency.Value:=False;
  Dm.LoanTypeForGivenLoan.Value:=False;
end;

procedure Tdm.Report_ForcePaymentAfterOpen(DataSet: TDataSet);
begin
  FrMain.PartToleranse := Get_SystemSetting('PartTolerance');
end;

procedure Tdm.FinancialNote_DetailAfterScroll(DataSet: TDataSet);
begin
 //  ShowMessage(FinancialNote_DetailForcePaymentID.AsString);
end;

function Tdm.FindSmsServerCenter:String;
var
  qry : TADOQuery;
begin
  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.Close;
  qry.SQL.Clear;
  qry.SQL.Add('SELECT Value FROM dbo.Setting WHERE VariableName = ''SMSCenterNumber'' ');
  qry.Open;

  Result := qry.fieldbyname('Value').AsString;
  qry.Close;
end;

{ SmsThread }

procedure SmsThread.Execute;
Var
  //SMS:v2Soap;
  i:integer;
  //username,password:WideString;
  //recipientNumbers,senderNumbers,messageBodies,sendDate : ArrayOfString;
  //messageClasses:ArrayOfInt;
  //checkingMessageIds:ArrayOfLong;
  qry:TADOQuery;
  IsSend,res,url:String;
begin
  qry:=TADOQuery.Create(nil);
  qry.Connection:=dm.YeganehConnection;
  //i:=1;
  if _SmsUser = '' then
   Terminate;
  if _SmsPassWord = '' then
   Terminate;
  if _SMSCenterNumber = '' then
   Terminate;

  for i :=0 to Length(arrSmsDetails)-1 do
  begin
    //sms:=v2.Getv2Soap();
    //SetLength(recipientNumbers,1);
    //SetLength(senderNumbers,1);
    //SetLength(messageBodies,1);
    //SetLength(sendDate,1);
    //SetLength(checkingMessageIds,1);
    //SetLength(sendDate,1);
    //SetLength(messageClasses,1);
    //username:=_TerminalID;
    //password:=_SmsPassWord;
    //messageClasses[0]:=1;
    //senderNumbers[0] := '30005006001757';
    //recipientNumbers[0] := arrSmsDetails[i].SmsPhone;
    //
    //messageBodies[0] :=UnicodeStr(arrSmsDetails[i].SmsText);
    //
    //sendDate[0]:=arrSmsDetails[i].SendDate;
    //res:= sms.SendSMS(username,password,senderNumbers,recipientNumbers,messageBodies,sendDate,messageClasses,checkingMessageIds);
    //res:=SendSimpleSMS2(_TerminalID,_SmsPassWord,arrSmsDetails[i].SmsPhone,'50005000207732',arrSmsDetails[i].SmsText,False);
    //MemoResult.Text:=SendMessageState(RecId);
    res:='';
    url :='http://parsasms.com//tools/urlservice/send/?username='+_SmsUser+'&password='+_SmsPassWord
          +'&from='+_SMSCenterNumber+'&to='+arrSmsDetails[i].SmsPhone+'&message='+StrConvertToUTF8Encode(arrSmsDetails[i].SmsText);
    //InputBox('','',url);
    //url := StringReplace(StringReplace(url, #10, ' ', [rfReplaceAll]), #13, ' ', [rfReplaceAll]);

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

procedure Tdm.SendSmsToOutBox(SmsNumber, SmsText: String);
Var
  qry :TADOQuery;
begin
  if not (_EnableSms) then
    abort;
  qry:=TADOQuery.Create(self);
  qry.Connection:=YeganehConnection;
  qry.SQL.Text:='insert into Outbox (SmsNumber,SmsText) values( '+QuotedStr( SmsNumber)+ ','+QuotedStr( SmsText)+')';
  qry.ExecSQL;
  qry.Free;
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

function Tdm.GetLockIP: string;
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

function Tdm.IsTinyOk: Boolean;
var
  Tiny1:TTiny;
  I, J:Integer;
  lockData:String;
begin
  Result := True;
  //Exit;

  try
    Tiny1 := TTiny.Create(Self);
    Tiny1.ServerIP := GetLockIP;
    Tiny1.NetWorkINIT := True;
    i:=Tiny1.TinyErrCode;
    if i>0 then
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
        end
      end
      else
      begin
        lockData:=Tiny1.DataPartition;
        if (StrToInt(Copy(lockData,1,3))=254) or (StrToInt(Copy(lockData,1,3))=40) then
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
            SetSystemSetting('CompanyName', Copy(LockData,14,Length(LockData)));
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
      Result:=False;
      ShowMessage(e.Message);
    end;
  end;
end;

function Tdm.getDBVer: String;
var
  qry :TADOQuery;
begin
   {
  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' IF COL_LENGTH(''[dbo].[tblAppVer]'', ''ver'') IS not  NULL   EXEC sp_rename ''[dbo].[tblAppVer].[ver]'', ''version'', ''COLUMN''; '  ;

  qry.ExecSQL;
  qry.Free;
  }

  qryGetDbVer.Close;
  qryGetDbVer.Open;
  Result := qryGetDbVer.Fields.Fields[0].AsString;
end;

function Tdm.getDelphiVer: String;
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

procedure Tdm.Report_AccountAfterOpen(DataSet: TDataSet);
begin
  blnDataIsReady := True;
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
  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' IF EXISTS(SELECT 1 FROM SYS.OBJECTS WHERE OBJECT_ID = OBJECT_ID(N''[DBO].[TBLAPPSETTING]'') AND TYPE IN (N''U'')) '+
                    ' UPDATE [dbo].[TBLAPPSETTING] SET Max_TableScriptNumber = 1 ,Last_TableScriptNumber = 1,Max_ViewScriptNumber = 1 ,Last_ViewScriptNumber = 1  '+
                                  ' WHERE (SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE DATE<'+'''2024-06-02'''+' ) >0 AND ISNULL((SELECT TOP 1  SUM(1) FROM dbo.TBLAPPSETTING WHERE   DATE>'+'''2024-06-14'''+' ),0) =0   '  ;

  qry.ExecSQL;
  qry.Free;

  qryAutoRunScript.Close;
  qryAutoRunScript.Open;

  LastTaleNo:= qryAutoRunScript.Fields.Fields[0].AsInteger;
  lastViewNo:= qryAutoRunScript.Fields.Fields[1].AsInteger;

  FilePath := ExpandFileName(GetCurrentDir + '\Cash_AutoScripts\');
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

procedure Tdm.ReportsNameBeforePost(DataSet: TDataSet);
begin
  
  if (Dm.ReportsNameReportName.IsNull)  or (Dm.ReportsNameReportName.asstring = '') then
  begin
    ShowMessage('‰«„ ê“«—‘ »«Ìœ „ﬁœ«— œ«‘ Â »«‘œ');
    Abort;
  end;

end;

procedure Tdm.MonthlyType_DetailBeforePost(DataSet: TDataSet);
var
  qry :TADOQuery;
  _CountError : Integer;
begin


   if Dm.MonthlyType_DetailMonthlyTypeYear.IsNull  or  (length(Dm.MonthlyType_DetailMonthlyTypeYear.AsString)<>4) then
   begin
      ShowMessage('·ÿ›« ”«· —« „‘Œ’ ‰„«ÌÌœ.')      ;
      Abort ;
   end
   else
   if Dm.MonthlyType_DetailAmount.IsNull  or  (Dm.MonthlyType_DetailAmount.AsInteger = 0 ) then
   begin
      ShowMessage('·ÿ›« „»·€ „‘Œ’ ‰„«ÌÌœ');
      Abort ;
   end;

  qry := TADOQuery.Create(self);
  qry.Connection := YeganehConnection;
  qry.SQL.Text   := ' select count(MonthlyTypeID) temp  from dbo.MonthlyType_Detail where MonthlyTypeID =' +Dm.MonthlyType_DetailMonthlyTypeID.AsString +' and MonthlyTypeYear = '''+Dm.MonthlyType_DetailMonthlyTypeYear.AsString +''''   ;
  qry.close;
  qry.open;

  _CountError:= qry.Fields.Fields[0].AsInteger;

  qry.Free;

  if _CountError > 0 then
  begin
    ShowMessage('”«· Ê«—œ ‘œÂ  ò—«—Ì „Ì »«‘œ »—«Ì Â— ⁄‰Ê«‰ Â— ”«· —« Ìò»«— „Ì  Ê«‰  ⁄—Ì› ò—œ');
    Abort ;
  end;

end;

end.

