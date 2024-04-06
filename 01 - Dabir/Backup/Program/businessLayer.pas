unit BusinessLayer;

interface

uses
    Graphics,DB,ADODB,SysUtils,dialogs,DBCtrls,VARIANTS,Forms,controls,frxClass, WinSock;
//HNaseri
Procedure  Open_Report_LoanPointByNaseri(today : string);
/////////
Procedure Activate_Account(AccountID:integer);
Procedure Calculate_Wage_Interest(LoanAmount,LoanTypeid:integer;var WageAmount,InterestAmount:integer);             overload;
Procedure Calculate_Wage_Interest(LoanAmount,PartNumber,LoanTypeid:integer;var WageAmount,InterestAmount:integer);  overload;
Procedure DeActivate_Account(AccountID:integer);
Procedure delete_Access(AccessID:byte);
Procedure delete_Attachment(AttachmentID:integer);
Procedure Delete_Account(AccountID:integer);
Procedure Delete_LoanPriority(LoanPriorityID:integer);
Procedure Insert_LoanPriority(accountID:integer;IsUrgency:boolean);
Procedure Delete_LoanPriority_byAccountID(AccountID:integer;IsUrgency:boolean);
Procedure delete_LoanRequest(LoanRequestID:integer);
Procedure delete_Contact(ContactID:integer);
Procedure delete_loan(LoanID:integer);
Procedure Insert_ErrorMessage(ErrorMessage:widestring;UserID:integer);
Procedure Insert_AccessObject;
Procedure Insert_Objects(ObjectName:string;ObjectCaption:widestring;GroupTitle:widestring);
//Procedure Insert_LoanGaurantor(LoanID:integer;GaurantorContactID:integer);
Procedure Insert_LoanGaurantor(LoanID ,GaurantorContactID,PercentofGauranty:integer);
Procedure UPDATE_AccountForGaurantyInfo(AccID:INTEGER  ; LoanId:INTEGER; Price:REAL; AddOrDelete:INTEGER);// --ADD=1 DELETE=2);

Procedure Pay_ForcePayment(ForcePaymentID:integer;PaymentID:integer);
//Procedure Group_ForcePayment(ForcePaymentID:integer;DebtorAccountID:integer;date:string;comment:widestring;FinancialNoteID:integer;userID:integer;documentNo:string;FinancialNote_DetailID:integer);
//Procedure Group_ForcePayment(ForcePaymentID:integer;DebtorAccountID:integer;date:string;comment:widestring;FinancialNoteID:integer;userID:integer;documentNo:string;FinancialNote_DetailID,Crtr_DetAccountID:integer);
Procedure   Group_ForcePayment(ForcePaymentID:integer;DebtorAccountID:integer;date:string;comment:widestring;FinancialNoteID:integer;userID:integer;documentNo:string;FinancialNote_DetailID,Crtr_DetAccountID,_AmerceAmount:integer);
Procedure MakeParts(Loanid:integer;InterestAmount:integer);
Procedure MakeMonthly(AccountID:integer;dateFrom,dateTo:string);
Procedure Move_LoanPriority(LoanPriorityID:integer;isUp:boolean);
Procedure Read_SystemValue;

Procedure Set_UserSetting(UserID:integer;VariableName:string;_Value:widestring);
Procedure Set_SystemSetting(VariableName:string;_Value:Variant);
Procedure Get_LoanID_ByLoanNo(Loanno:string; Var LoanID,AccountID:integer);
Procedure UnPay_ForcePayment(ForcePaymentID:integer);
Procedure Y_Shrink;
Procedure Y_ReindexTables(dBName:string);
//Procedure Y_Backup(path:widestring);
Procedure  Y_Backup(path:widestring;dBName:string);

Procedure Change_UserPassword(Password:string);
Procedure UPDATE_LoanGaurantor_FinancialNoteID(LoanGaurantorID:integer;FinancialNoteID:integer);
Procedure Delete_LoanGaurantor(LoanGaurantorID:integer);

Procedure Open_Report_SummeryPayment2(dateFrom:string;dateTo:string);
Procedure Open_All_Cash_Accounts(accountID:integer);
//Procedure Open_Report_CashAccount(where:string);
Procedure  Open_Report_CashAccount(where:string;SelectedId :integer);

Procedure Open_Account_Monthlys(AccountID:integer);
Procedure Open_Loan_Parts_Details(LoanID:integer;DateFrom,DateTo:string;Paid:byte);
Procedure Open_Monthly_Details(AccountID:integer;DateFrom,DateTo:string;Paid:byte);
Procedure Open_LastMonthly(AccountID:integer);
Procedure Open_Loan_Like(like:widestring);
//Procedure Open_Report_Payment_ByAccountID(AccountID:integer;dateFrom:string;dateTo:string; var Sumdebit,sumCredit : string;PayTypeID:Integer{Ranjbar});
Procedure  Open_Report_Payment_ByAccountID(AccountID:integer;dateFrom:string;dateTo:string; var Sumdebit,sumCredit : STRING;PayTypeID{Ranjbar},SortOrder:Integer);

Procedure  Open_Report_PaymentPBK_ByAccountID(AccountID:integer;
                                              dateFrom:string;
                                              dateTo:string);

//Procedure Open_Report_Account(AccountTypeID:byte;where:string);
Procedure  Open_Report_Account(AccountTypeID:byte;where:string;RowCount:String);

Procedure Open_Report_Account2(AccountTypeID:byte;where:string);
//Procedure Open_Report_ForcePayment(DelayDays:byte;FamilyID:integer;FoceTypeID:byte;MatureDateFrom,MatureDateTo,No:string;
//                                         OnlyLatest:boolean;PayStatus:byte;SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64);

{Procedure Open_Report_GroupForcePayment(DelayDays:byte;FamilyID:integer;FoceTypeID:byte;MatureDateFrom,MatureDateTo,No:string;
                                         OnlyLatest:boolean;PayStatus:byte;SearchByLoanNo:boolean;var SumAmount,SumAmerce:int64);}

Procedure Open_Report_ForcePayment(DelayDays:byte;
                                   FamilyID:integer;
                                   FoceTypeID:byte;
                                   MatureDateFrom,
                                   MatureDateTo,No:string;
                                   OnlyLatest:boolean;
                                   PayStatus:byte;
                                   SearchByLoanNo:boolean;
                                   var SumAmount,SumAmerce,SumInterest:int64;LoanTypeID,MonthlyTypeID,top:integer);

Procedure Open_Report_ForcePayment2(DelayDays:byte;
                                    FamilyID:integer;
                                    FoceTypeID:byte;
                                    MatureDateFrom,
                                    MatureDateTo,No:string;
                                    OnlyLatest:boolean;
                                    PayStatus:byte;
                                    SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64;LoanTypeID,MonthlyTypeID,Top:integer);


Procedure Open_Report_GroupForcePayment(DelayDays:byte;FamilyID:integer;FoceTypeID:byte;MatureDateFrom,MatureDateTo,No:string;
                                         OnlyLatest:boolean;PayStatus:byte;SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64;
                                         LoanTypeID,MonthlyTypeID:Integer);

Procedure Get_UserLogoutStatus(var logout,isSafeLogout:boolean);

Procedure Open_Report_SummeryPayment(dateFrom:string;dateTo:string);

Procedure Open_ReferenceTable;
Procedure Open_User_like(like:widestring);
Procedure Open_WordTemplate;
Procedure Open_WordTemplateList;
Procedure Open_Table;
Procedure Open_Fields_byTableName(tableName:widestring);
Procedure Open_Account(AccountID:integer);
Procedure Open_Contact(ContactID:integer);
Procedure Open_Account_Details(AccountID:integer);
Procedure Open_Payment(PaymentID:integer);
Procedure Open_Loan(LoanID:integer);
Procedure Open_Loan_Parts(LoanID:integer);
Procedure Open_LoanGaurantor(LoanID:integer);
Procedure Open_Attachment(AttachmentID:integer);
Procedure Open_LoanAttachment(LoanID:integer);
Procedure Open_CashLogo;
Procedure Open_ObjectGroup;
Procedure Open_ObjectAccess_byGroup(AccessID :integer;GroupTitle:widestring);
Procedure Open_FinancialNote_deatils(FinancialNoteID:integer);
Procedure Open_FinancialNote_Like(FinancialNoteTypeID:byte;like:widestring);
Procedure Open_FinancialNote(FinancialNoteID:integer);
Procedure Open_Report_LatestPayment_ByAccountID(AccountID:integer);
Procedure Open_Sponsor;
Procedure Open_Loan_ByAccountID(AccountID:integer);
Procedure Open_Contact_Like(ContactTypeID:byte;like:widestring);
//Procedure Open_FinancialNote_Like_NEW(NoteStatusID:byte;like:widestring);
Procedure  Open_FinancialNote_Like_NEW(NoteStatusID:byte;like:widestring;SHOWALL:INTEGER);

Procedure Open_LoanPriority_BYIsUrgency(IsUrgency:boolean);
Procedure Open_LoanRequest_ByAccountID(AccountID:integer);
Procedure Open_LoanRequest(LoanRequestID:integer);
Procedure Open_Report_LoanRequest(where:widestring);
Procedure Open_Report_Contact(where:string);
Procedure Open_Report_Loan(where:string;RowCount:string);
Procedure Open_LastPart(LoanID:integer);
//Procedure Open_Report_LoanPoint(today:string);
Procedure  Open_Report_LoanPoint(today,AccountNO,AccountTitle:string);

Procedure update_UserLoginLogout(UserLoginLogoutID:integer;isSafeLogout:boolean);
Procedure Open_Report_Payment(where:string);
Procedure Open_Report_Payment_ByDocumentNo(documentNo:string;aYear: byte);
Procedure Open_REPORT_PAYMENT_ForPrint(DocumentNoFrom,DocumentNoTo,DateFrom,DateTo:string);
Procedure Open_Report_DeletedPayment_ByDocumentNo(documentNo:string;aYear: byte);
Procedure Delete_Payment(PaymentID:integer);
Procedure Open_Report_Daily_Payment(dateFrom:string;dateTo:string;UserId : integer);
Procedure Open_ForcePayment_byForcePaymentID(ForcePaymentID:integer);
Procedure Open_Report_SumBalance(FromDate:string;today:string;var SumAvgBalance :Largeint);
Procedure Pay_Benefit(FromDate:string;today:string;BenefitPercent:real;NewDocumnetNo:string;InsertUserID:integer);
Procedure Open_DailyAverage_All(YY:STRING;AccID:INTEGER);
Procedure Open_DailyAverage_Detail(YY:STRING;AccID:INTEGER);
Procedure Open_PAY_BENEFIT_New(_YY:STRING;_AccountID:INTEGER;BENEFITPERCENT:Double;{InsertUserId:INT ,}InsertedMode:INTEGER);
Procedure Delete_PayedBenefit(_YY:STRING;_AccountID:INTEGER);

Procedure OPEN_REPORT_BENEFIT(_YY:STRING;_AccountID:INTEGER);
Procedure Open_Perfraj(Line:INTEGER;
                                    ChBoDocNo_1,
                                    ChBoAccountNo_1,
                                    ChBoAccountTitle_1 ,
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
                                    ChBoSumBenefitPrice_H_2:STRING); overload;
Procedure Open_Perfraj(Line:INTEGER;
                                    ChBoDocNo_1,
                                    ChBoAccountNo_1,
                                    ChBoAccountTitle_1 ,
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
                                    ChBoSumBenefitPrice_H_2,
                                    chBoRealRemine:STRING); overload;
//DIDARIANS
//PROCEDURE Open_Report_DelayedLoanPayment       (_LoanTypeID:Integer;_LoanNO:String;_AccountID:Integer;_GROUPBY,_dELAY,JustDelayedDocs:Integer; _TODATE:STRING);
Procedure  Open_Report_DelayedLoanPayment( _LoanTypeID:Integer;_LoanNO:String;_AccountID:Integer;_GROUPBY:Integer;_dELAY,JustDelayedDocs:Integer;_TODATE:STRING;REMAINOFLOAN,Paid :Integer);

PROCEDURE Open_Report_DelayedLoanPayment_DETAIL(_LoanTypeID:Integer;_LoanNO:String;_AccountID:Integer;_GROUPBY,_dELAY,JustDelayedDocs:Integer; _TODATE:STRING;REMAINOFLOAN,Paid :Integer);
PROCEDURE Open_Report_Loan_New(Where:String);
PROCEDURE Open_AccDailyReport(_RepDate:string);
Function  IsValidAccountId(AccountID,Price:INTEGER):Boolean;
Function  IsValidAccountIdForLoan(AccountID,Price:INTEGER):Boolean;
// Amin 1391/11/23 Function  IsValidAccountIdForGauruntor(AccountID,Price:INTEGER):Boolean;
Function  IsValidAccountIdForGauruntor(AccountID, GuarantorID, Price:INTEGER):Boolean; // Amin 1391/11/23
//Function  IsValidGaurantor( Gaurantor_ContactID,LoanId:Integer ):Boolean;
procedure  IsValidGaurantor( Gaurantor_ContactID,LoanId:Integer;Var MessageText:String;var IsValidGaurantorResult:boolean );
//procedure UpdateForcePaymentAfterInsertFromExcel(PaymentID,ParentID:Integer;MatureDate:STRING);
procedure UpdateForcePaymentAfterInsertFromExcel(PaymentID,ParentID,AMOUNT:Integer;MatureDate:STRING;SwInsert:boolean);
Function IsMemberOfCash(FoundContactID:Integer ):BOOLEAN;


Function  IsValidPresenter(AccountId ,ContactID ,AccountPresenterId:Integer):Boolean;
Function  PercentofGauranty(LoanID:INTEGER):INTEGER;
procedure LoanGrtLimite; //«⁄„«· „ÕœÊœÌ  œ— ÷«„‰ ‘œ‰ ⁄÷ÊÂ«
//Function CanChangeTheMonthlyPayment(ForcePaymentID,ParentID:Integer;MatureDate:STRING):BOOLEAN;

function NumStrToCommaStr(Num: string):string;


function Insert_UserLoginLogout(IPAddress:string):integer;
function Get_NewAccountNo(AccountTypeID:byte):string;
function Get_MaxAttachmentPage(DocumentTypeID:byte;DocumentID:integer):byte;
function Get_MinAttachmentPage(DocumentTypeID:byte;DocumentID:integer):byte;
function Get_Account_Count:integer;
function Get_UserSetting(UserID:integer;VariableName:string):widestring;
function Get_SystemSetting(VariableName: string):Variant;
function Get_Time : String;
Function Get_AccountID_ByAccountNo(AccountNo:string):integer;
Function Get_AccountID_ByPersonalNo(PersonalNo:String):Integer;
Function Get_AccountNO_ByAccountId(AccountId:Integer):String;
function Get_AccountTitle_ByAccountId(AccountId:Integer):String;

Function CanChangeTheMonthlyPayment(ForcePaymentID,ParentID:Integer;MatureDate:STRING):BOOLEAN;
Function CanChangeTheInvestmentPayment(ForcePaymentID,ParentID:Integer;MatureDate:STRING):BOOLEAN;
Function CanChangeTheAccountNo(ACCOUNTID:INTEGER):BOOLEAN;

function ACCOUNT_IS_DOUBLICATE(AccountNo:string):integer;

Function Get_SumPartAmount(LoanID:integer):integer;
function Get_FieldName_byDescription(Description:widestring):string;
function Get_Account_alarm(accountID:integer;var alarmText:widestring):boolean;
function Get_ObjectAccess(AccessId:byte;ObjectName:string):boolean;
function Get_AccountID_ByContactID(ContactID:integer):integer;
function Get_Farsi_Message(ErrorMsg:widestring;var ShowMessage :boolean):widestring;
function Get_Amerce(ForceTypeID:byte;MatureDate:string;PayDate:string):integer;
function Get_NotPaiedForcePayment(ForceTypeID:byte;Parentid:integer;dateFrom,dateTo:string):string;
function Get_MaxMatureDateInForcePayment:string;

function Account_Has_Balance(CreditorAccountID:integer;DebtorAccountID:integer;Amount:integer;PayTypeID:byte):boolean;

//function Insert_Payment(PayTypeID: byte;CreditorAccountID,DebtorAccountID,FinancialNoteid,Amount:integer;Comment : string;RelatedID: integer;DocumentNo,Date: string):integer;
Function Insert_Payment(PayTypeID:byte;CreditorAccountID,DebtorAccountID,FinancialNoteid,Amount:Largeint;Comment : String;RelatedID:Integer;DocumentNo,Date: String; FinancialNote_DetailID,Crtr_DetAccountID,MainCr,MainDb:Integer):Largeint;
Function Insert_TbExcelLog(FilePath,FileDate,Comment:STRING;RowNo:INTEGER):Integer;

Function Insert_PaymentInterestAmerce(PayTypeID:byte;CreditorAccountID,DebtorAccountID,FinancialNoteid,Amount:integer;Comment : String;RelatedID:Integer;DocumentNo,Date: String; FinancialNote_DetailID,Crtr_DetAccountID,MainCr,MainDb:Integer):Integer;


function Select_all_Account:TADOStoredProc;
Function  SELECT_ALL_ACCOUNT_WithoutDELAcc:TADOStoredProc;

function SaveAs_Access(AccessTitle:widestring;oldaccessID:integer):integer;
function Account_Is_Balance(AccountID:integer):boolean;
function Open_Balance_Sheet(dateFrom:string;dateTo:string;ParentID :integer):longint;
function Open_Balance_Sheet_all(dateFrom:string;dateTo:string;ParentID :integer):longint;
function Get_Balance_ByPayTypeID(AccountID:integer;payTypeid:byte;dateTo:string):Int64;
function LoanTypeID_Has_loan(LoanTypeID:integer):boolean;
Function Open_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
function Get_NewDocumnetNo(DateTmp:string):string;
function Loan_has_NotPaidParts(LoanID:integer):boolean;
function Duplicate_Loanno(Loanno :string):boolean;
Function is_Numeric(s:string):boolean;
function AccountType_Has_Account(AccountTypeID:byte):boolean;
function Get_NewAccountTypeID:byte;
function Get_benefit:Largeint;
function get_NumberOfPaidPart_byLoanID(loanId:integer):integer;
function Get_calcField_byContactID(ContactID:integer):integer;
Procedure Update_calcField(ContactID:integer;CalField:integer);
function get_RemainOfLoan_byLoanID(loanId:integer):integer;
Procedure Ins_AccountToLoanPriority(aAccountID,LoanID:Integer);
Procedure ChackDateOnExit(aDBEdit:TDBEdit);
//PROCEDURE Delete_Payment_ForcePayment(DOCNO:STRING);
PROCEDURE Delete_Payment_ForcePayment(PaymentId: Integer; DelDATE:string;USERID:Integer);
PROCEDURE DELETE_PAYMENT_AllFORCEPAYMENT(PaymentId: Integer; DelDATE:string;USERID:Integer);
PROCEDURE Delete_PaymentFromReverse(PaymentId: Integer);
Procedure OpenSp_ShowBill(PaymentId:Integer);
PROCEDURE OpenSp_RepTotalPayment( GroupId:INTEGER ;
                                  FirstDocNo,
                                  LastDocNo ,
                       				    BeginDate,
                        				  EndDate:STRING);
Procedure Rep_LoadFile_New(afrxReport:TfrxReport;aFileName,BtnName:String);
//Function IsValidZamen:String;

//Procedure Rep_LoadFile_New(afrxReport:TfrxReport;aFileName:String);

procedure ReplaceOFTwoInteger(FromInput,ToInput:integer;var FromOutput,ToOutput:integer);
procedure ReplaceOFDate(FromDate,ToDate:String;var FromDateOutput,ToDateOutput:String);

function CanDeleteMonthlyType(monthlyTypeID:integer):boolean;
function CanDelete_Payment(PaymentId:Integer):boolean;
function  Count_PAYMENT(PaymentId:Integer;DelDATE:STRING):INTEGER;

//function CanDelete_Payment(DOCNO:string;Date:string):boolean;
function CanDelete_MonthlyPayment(AccountID:integer):boolean;
Function SumAmountFinancialNote(FinancialNote_MasterID:Integer):Integer;
Function IsSelectedFinantialNoteCorrect(FinancialNote_DeatilID:Integer):BOOLEAN;
Function CanDeleteOrEditBankID(BankID :Integer):BOOLEAN;
PROCEDURE UpdateFinancialNote_Detail(FinancialNote_DeatilID,StatusId:STRING);
FUNCTION ISSelectedDbtOrCrtCorrect(Debator,Creditor:integer):BOOLEAN;
Function IsSelectedSettingAccountCorrect(AccountId:Integer):BOOLEAN;
Function IsLoanTypeIDIsCorrect(LoanTypeID:Integer):BOOLEAN;
Function  SELECT_RANDOM_ACCOUNTNO:STRING;
Function  SELECT_RANDOM_ACCOUNTID:STRING;
function Get_PercentOfLastPaidLoan(Accountid:integer):integer;
FUNCTION Get_NotPaidLoanPayment(AccountID:INTEGER):INTEGER;
FUNCTION Get_NotPaidMounthlyPayment(AccountID:INTEGER):INTEGER;
Function GetReportName(ObjectName,DefultReportName:String):String;
PROCEDURE OpenSp_ForTest;
FUNCTION SetNextNo(TbName,FldName,Where:STRING):INTEGER;
Function CountOfLoanForEachGaurantor(GaurantorContactID:INTEGER):INTEGER;
Function TotalPriceOfLoanForEachGaurantor(GaurantorContactID:INTEGER):Double;

function GetDBDateTime: TDateTime;
function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
function   GetSystemSetting(VariableName:string):Variant;
Procedure  SetSystemSetting(VariableName:string;_Value:Variant);

Const
     PartForceTypeID    = 1;
     MonthlyForceTypeID = 2;
     NormalPayTypeID    = 1;
     MonthlyPayTypeID   = 2;
     PartPayTypeID      = 3;
     LoanPayTypeID      = 4;
     amercePayTypeID    = 5;
     WagePayTypeID      = 6;
     IntersetPayTypeID  = 7;
     CashAccountID      = 1;
     AmerceAccountID    = 2;
     WageAccountID      = 3;
     IntersetAccountID  = 4;

var
   _UserLoginLogoutID :integer;

implementation

uses dmu, YShamsiDate, AddPaymentU, MainU, AddLoanU, AddReportNameU,
  ComObj, Classes;

Procedure  insert_New_AccessAction;
var
   ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_New_AccessAction';
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
end;

Procedure  Open_Report_Account(AccountTypeID:byte;where:string;RowCount:String);
var S: string;
begin
 If   trim(RowCount)='' then
    RowCount:='0';

 With dm,Report_Account,parameters do
 Begin
      s:=Sort;
      Close;
      ParamByName('@AccountTypeID').value:=AccountTypeID;
      ParamByName('@where').value:=where;
      ParamByName('@RowCount').value:=RowCount;
      Open;
      sort:=s;
  End;
end;


Procedure  Open_Report_Account2(AccountTypeID:byte;where:string);
  begin
  with dm,Report_Account2,parameters do
     begin
       Close;
       ParamByName('@AccountTypeID').value:=AccountTypeID;
       ParamByName('@where').value:=where;
       Open;
   end;
end;

Procedure  Open_Contact(ContactID:integer);
  begin
  with dm.Select_Contact,parameters do
     begin
       Close;
       ParamByName('@ContactID').value:=ContactID;
       Open;
   end;
end;


Procedure  Open_Account(AccountID:integer);
begin
  with Dm.Select_Account,parameters do
     begin
       Close;
       ParamByName('@AccountID').value:=AccountID;
       Open;
   end;
end;


function Get_AccountID_ByAccountNo(AccountNo:string):integer;
var ADOSP:TADOStoredProc;
  s: Widestring;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_AccountID_ByAccountNo';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@AccountNo';
      size:= 10;
      Value :=AccountNo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AccountID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@AccountID').Value;
   if Result>0 then
    if Get_Account_alarm(Result,s) then
      ShowMessage('Ì«œ¬Ê—Ì Õ”«»:'+s);
end;



Function Get_AccountID_ByPersonalNo(PersonalNo:String):Integer;
var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_AccountID_ByPersonalNo';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@AccountNo';
      size:= 10;
      Value :=PersonalNo;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AccountID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@AccountID').value;
end;





Procedure  Open_Account_Details(AccountID:integer);
  begin
  with Dm.Select_Account_Details,parameters do
     begin
       Close;
      ParamByName('@AccountID').value:=AccountID;
      Open;
   end;
end;


Procedure  Open_Payment(PaymentID:integer);
  begin
  with Dm.Select_Payment,parameters do
     begin
      Close;
      ParamByName('@PaymentID').value:=PaymentID;
      Open;
   end;
end;

Procedure  Open_Loan(LoanID:integer);
  begin
  with Dm.Select_Loan,parameters do
     begin
       Close;
      ParamByName('@LoanID').value:=LoanID;
      Open;
   end;
end;

Procedure  Open_Loan_Parts(LoanID:integer);
begin
   with Dm.Select_Loan_Parts,parameters do
   begin
      Close;
      ParamByName('@LoanID').value:=LoanID;
      Open;
   end;
end;

Procedure  Open_LoanGaurantor(LoanID:integer);
  begin
  with Dm.Select_LoanGaurantor,parameters do
     begin
       Close;
      ParamByName('@LoanID').value:=LoanID;
      Open;
   end;
end;


Procedure  Open_Attachment(AttachmentID:integer);
  begin
  with Dm.Select_Attachment,parameters do
     begin
       Close;
      ParamByName('@AttachmentID').value:=AttachmentID;
      Open;
   end;
end;

Procedure  Open_LoanAttachment(LoanID:integer);
  begin
  with Dm.Select_LoanAttachment,parameters do
     begin
       Close;
      ParamByName('@LoanID').value:=LoanID;
      Open;
   end;
end;

Procedure Calculate_Wage_Interest(LoanAmount,PartNumber,LoanTypeid:integer;var WageAmount,InterestAmount:integer);
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Calculate_Wage_Interest_2';

   with ADOSP.Parameters.AddParameter do
   begin
      //DataType := ftinteger;
      DataType := ftLargeint;
      Direction := pdInput;
      Name:='@LoanAmount';
      Value :=LoanAmount;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftLargeint;
      Direction := pdInput;
      Name:='@PartNumber';
      Value :=PartNumber;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftLargeint;
      Direction := pdInput;
      Name:='@LoanTypeid';
      Value :=LoanTypeid;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftLargeint;
      Direction := pdoutput;
      Name:='@WageAmount';
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftLargeint;
      Direction := pdoutput;
      Name:='@InterestAmount';
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   WageAmount:=ADOSP.Parameters.ParamValues['@WageAmount'];
   InterestAmount:=ADOSP.Parameters.ParamValues['@InterestAmount']
end;

Procedure  Calculate_Wage_Interest(LoanAmount,LoanTypeid:integer;var WageAmount,InterestAmount:integer);
var
   ADOSP:TADOStoredProc;
begin
   ADOSP:=TADOStoredProc.create(nil);
   ADOSP.ProcedureName:='Calculate_Wage_Interest';

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanAmount';
      Value :=LoanAmount;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanTypeid';
      Value :=LoanTypeid;
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@WageAmount';
   end;

   with ADOSP.Parameters.AddParameter do
   begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@InterestAmount';
   end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
   WageAmount:=ADOSP.Parameters.ParamValues['@WageAmount'];
   InterestAmount:=ADOSP.Parameters.ParamValues['@InterestAmount']
end;

// Ê·Ìœ ·Ì”  «ﬁ”«ÿ «“ —ÊÌ ‘„«—Â Ê«„
Procedure  MakeParts(Loanid:integer;InterestAmount:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='MakeParts';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Loanid';
      Value :=Loanid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@InterestAmount';
      Value :=InterestAmount;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
function Get_SumPartAmount(LoanID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_SumPartAmount';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanID';
      Value :=LoanID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@SumAmount';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@SumAmount').value;
end;
Procedure  Insert_LoanGaurantor(LoanID ,GaurantorContactID,PercentofGauranty:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_LoanGaurantor';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanID';
      Value :=LoanID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType  := ftinteger;
      Direction := pdInput;
      Name      :='@GaurantorContactID';
      Value     :=GaurantorContactID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType  := ftinteger;
      Direction := pdInput;
      Name      :='@PercentofGauranty';
      Value     :=PercentofGauranty;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

{Procedure  Insert_LoanGaurantor(LoanID:integer;GaurantorContactID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_LoanGaurantor';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanID';
      Value :=LoanID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@GaurantorContactID';
      Value :=GaurantorContactID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
}
FUNCTION  SetNextNo(TbName,FldName,Where:STRING):INTEGER;
Var ADOSP:TADOStoredProc;
BEGIN
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SetNextNo';

  With ADOSP.Parameters.AddParameter do
   Begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@TbName';
      size:= 50;
      Value :=TbName;
   End;
  With ADOSP.Parameters.AddParameter do
   Begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@FldName';
      size:= 50;
      Value :=FldName;
   End;
  With ADOSP.Parameters.AddParameter do
   Begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Where';
      size:= 50;
      Value :=Where;
   End;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.open;
    Result:=ADOSP.FieldBYNAME('RESULT').value;

END;

Procedure  UPDATE_AccountForGaurantyInfo(AccID:INTEGER  ; LoanId:INTEGER; Price:REAL; AddOrDelete:INTEGER);// --ADD=1 DELETE=2);
Var ADOSP:TADOStoredProc;
Begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UPDATE_AccountForGaurantyInfo';

  With ADOSP.Parameters.AddParameter do
   Begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccID;

   End;

  With ADOSP.Parameters.AddParameter do
   Begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanId';
      Value :=LoanId ;

   End;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType  := ftfloat;
      Direction := pdInput;
      Name      :='@Price';
      Value     := Price;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType  := ftinteger;
      Direction := pdInput;
      Name      :='@AddOrDelete';
      Value     :=AddOrDelete;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;


function Get_MaxAttachmentPage(DocumentTypeID:byte;DocumentID:integer):byte;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_MaxAttachmentPage';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWord;
      Direction := pdInput;
      Name:='@DocumentTypeID';
      Value :=DocumentTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DocumentID';
      Value :=DocumentID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWord;
      Direction := pdoutput;
      Name:='@PageNumber';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@PageNumber').value;
end;

function Get_MinAttachmentPage(DocumentTypeID:byte;DocumentID:integer):byte;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_MinAttachmentPage';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWord;
      Direction := pdInput;
      Name:='@DocumentTypeID';
      Value :=DocumentTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DocumentID';
      Value :=DocumentID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWord;
      Direction := pdoutput;
      Name:='@PageNumber';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@PageNumber').value;
end;

Procedure  delete_Access(AccessID:byte);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Access';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccessID';
      Value :=AccessID;

    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    

end;

Procedure  delete_Attachment(AttachmentID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Attachment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AttachmentID';
      Value :=AttachmentID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  MakeMonthly(AccountID:integer;dateFrom:string;dateTo:string);
var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='MakeMonthly';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@dateFrom';
      size:= 7;
      Value :=dateFrom;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@dateTo';
      size:= 7;
      Value :=dateTo;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;



function Get_Account_Count:integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Account_Count';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@count';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@count').value;
end;

function Get_ObjectAccess(AccessId:byte;ObjectName:string):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_ObjectAccess';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftword;
      Direction := pdInput;
      Name:='@AccessId';
      Value :=AccessId;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ObjectName';
      size:= 50;
      Value :=ObjectName;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@access';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@access').value;
end;

Function  Select_all_Account:TADOStoredProc;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Select_all_Account';
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
  Result:=ADOSP;
end;



Function  SELECT_ALL_ACCOUNT_WithoutDELAcc:TADOStoredProc;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SELECT_ALL_ACCOUNT_WithoutDELAcc';
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.Open;
  Result:=ADOSP;
end;
function Get_UserSetting(UserID:integer;VariableName:string):widestring;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_UserSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@Value';
      size:= 200;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
end;

Function Get_SystemSetting(VariableName:string):Variant;
Var ADOSP:TADOStoredProc;
 Begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_SystemSetting';

  With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
    End;

  With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@Value';
      size:= 200;
    End;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:= ADOSP.Parameters.ParamByname('@Value').value;
End;

Procedure  Set_UserSetting(UserID:integer;VariableName:string;_Value:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_UserSetting';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=UserID;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Value';
      size:= 200;
      Value :=_Value;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Set_SystemSetting(VariableName:string;_Value:Variant);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Set_SystemSetting';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Value';
      size:= 200;
      Value :=_Value;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

function Get_NewAccountNo(AccountTypeID:byte):string;
var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
//  ADOSP.ProcedureName:='Get_NewAccountNo';
  ADOSP.ProcedureName:='GET_NEWACCOUNTNO_New';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftword;
      Direction := pdInput;
      Name:='@AccountTypeID';
      Value :=AccountTypeID;
  end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      Name:='@NewAccountNo';
      size:= 20;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@NewAccountNo').value;
end;

Procedure  Open_Report_Payment_ByAccountID(AccountID:integer;dateFrom:string;dateTo:string; var Sumdebit,sumCredit : STRING;PayTypeID,SortOrder:Integer{Ranjbar});
  begin
  with dm,Report_Payment_ByAccountID,parameters do
     begin
       Close;
      ParamByName('@AccountID').value:=AccountID;
      ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
      ParamByName('@dateTo').value:=Txt_Del254(dateTo);
      {Ranjbar 88.06.23}
      ParamByName('@PayTypeID').value:= PayTypeID;
      ParamByName('@SortOrder').value:= SortOrder;
      //---
      Open;
      sumCredit:=ParamByName('@sumCredit').value;
      sumDebit:=ParamByName('@sumDebit').value;
   end;
end;


Procedure  Open_Report_PaymentPBK_ByAccountID(AccountID:integer;
                                              dateFrom:string;
                                              dateTo  :string);
begin

  with dm,Report_PaymentPBK_ByAccountID,parameters do
     begin
       Close;
      ParamByName('@AccountID').value:=AccountID;
      ParamByName('@dateFrom').value:=dateFrom;
      ParamByName('@dateTo').value:=dateTo;
      Open;
   end;

end;
function Get_Time:string;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Time';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdoutput;
      Name:='@Time';
      size:= 8;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Time').value;
end;

Procedure  Activate_Account(AccountID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Activate_Account';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  DeActivate_Account(AccountID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='DeActivate_Account';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Delete_Account(AccountID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Account';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

function Get_Account_alarm(accountID:integer;var alarmText:widestring):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Account_alarm';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@accountID';
      Value :=accountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@HasAlarm';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@alarmText';
      size:= 200;
      Value :=alarmText;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@HasAlarm').value;
   alarmText:=ADOSP.Parameters.ParamByname('@alarmText').value;
end;

Procedure  Open_WordTemplate;
  begin
  with dm,Select_WordTemplate,parameters do
     begin
      Close;
      ParamByName('@WordTemplateID').value:=Select_WordTemplateListWordTemplateID.AsInteger;
      Open;
   end;
end;
Procedure  Open_WordTemplateList;
  begin
  with dm.Select_WordTemplateList,parameters do
     begin
       Close;
      Open;
   end;
end;

Procedure  Open_Table;
  begin
  with Dm.Select_Table,parameters do
   begin
    Close;
    Open;
   end;
end;

Procedure  Open_Fields_byTableName(tableName:widestring);
  begin
  with dm.Select_Fields_byTableName,parameters do
   begin
    Close;
    ParamByName('@tableName').value:=tableName;
    Open;
   end;
end;

function Get_FieldName_byDescription(Description:widestring):string;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_FieldName_byDescription';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@Description';
      size:= 100;
      Value :=Description;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      Name:='@FieldName';
      size:= 50;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@FieldName').value;
end;

Procedure  Y_ReindexTables(dBName:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Y_ReindexTables';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@dbname';
      size:= 100;
      Value :=dBName;
      end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Y_Backup(path:widestring;dBName:string);
var
  ADOSP:TADOStoredProc;
begin
  update_UserLoginLogout(_UserLoginLogoutID, True);
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Y_Backup';

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@dbname';
    size:= 100;
//  Value :='YLoanCash';
    Value :=dBName;
  end;

  with ADOSP.Parameters.AddParameter do
  begin
    DataType := ftwidestring;
    Direction := pdInput;
    Name:='@path';
    size:= 510;
    Value :=path;
  end;
  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;

end;
{Procedure  Y_Backup(path:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Y_Backup';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@dbname';
      size:= 100;
      Value :='YLoanCash';

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@path';
      size:= 510;
      Value :=path;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
}
Procedure  Y_Shrink;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Y_Shrink';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@dbname';
      size:= 100;
      Value :='YLoanCash';

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Open_CashLogo;
  begin
  with DM.Select_CashLogo,parameters do
   begin
    Close;
    Open;
   if not dm.Select_CashLogoCashLogo.IsNull then
     dm.Select_CashLogoCashLogo.SaveToFile(_LogoPath);
   end;
end;



Procedure  Insert_Objects(ObjectName:string;ObjectCaption:widestring;GroupTitle:widestring);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_Objects';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@ObjectName';
      size:= 50;
      Value :=ObjectName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ObjectCaption';
      size:= 100;
      Value :=ObjectCaption;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@GroupTitle';
      size:= 100;
      Value :=GroupTitle;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Insert_AccessObject;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_AccessObject';

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

function SaveAs_Access(AccessTitle:widestring;oldaccessID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SaveAs_Access';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@AccessTitle';
      size:= 100;
      Value :=AccessTitle;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@oldaccessID';
      Value :=oldaccessID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@newID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@newID').value;
end;



Procedure  Open_ObjectGroup;
  begin
  with dm.Select_ObjectGroup,parameters do
   begin
    Close;
    Open;
   end;
end;

Procedure  Open_ObjectAccess_byGroup(AccessID: integer;GroupTitle:widestring);
  begin
  with dm.Select_ObjectAccess_byGroup,parameters do
   begin
     Close;
     ParamByName('@GroupTitle').value:=GroupTitle;
     ParamByName('@AccessID').value:=AccessID;
     Open;
   end;
end;

Procedure Open_FinancialNote(FinancialNoteID:integer);
begin
   with Dm.Select_FinancialNote,parameters do
   begin
      Close;
      ParamByName('@FinancialNoteID').value:=FinancialNoteID;
      Open;
   end;
end;

Procedure Open_FinancialNote_deatils(FinancialNoteID:integer);
begin
   with Dm.Select_FinancialNote_deatils,parameters do
   begin
      Close;
      ParamByName('@FinancialNoteID').value:=FinancialNoteID;
      Open;
   end;
end;

Procedure Open_Contact_Like(ContactTypeID:byte;like:widestring);
begin
   with dm.Select_Contact_Like do
   begin
      Close;
      Parameters.ParamByName('@ContactTypeID').Value:=ContactTypeID;
      Parameters.ParamByName('@Like').Value:=like;
      Open;
   end;
end;

Procedure  Open_FinancialNote_Like(FinancialNoteTypeID:byte;like:widestring);
  begin
  with Dm.Select_FinancialNote_Like,Parameters do
   begin
    Close;
    ParamByName('@FinancialNoteTypeID').Value:=FinancialNoteTypeID;
    ParamByName('@like').Value:=like;
    Open;
   end;
end;

Procedure  Open_FinancialNote_Like_NEW(NoteStatusID:byte;like:widestring;SHOWALL:INTEGER);
  Begin
  With Dm.Select_FinancialNote_Like_New,parameters do
   Begin
    Close;
    ParamByName('@NoteStatusID').Value:=NoteStatusID;
    ParamByName('@LIKE').Value:=LIKE;
    ParamByName('@SHOWALL').Value:=SHOWALL;
    Open;
   End;
End;


Procedure Open_ReferenceTable;
begin
with dm do
 begin
  ContactType.Open;
  Select_Cash_Accounts.Open;
  SELECT_CASH_ACCOUNTS_PLUS.Open;

  LoanType.Open;
  LoanAmount.Open;
  MonthlyType.Open;
  Family.Open;
  AccountType.Open;
  Open_Table;
  Open_ObjectGroup;
  Access.Open;
  FinancialNoteType.Open;
  NoteStatus.Open;
  Users.Open;
  PayType.Open;
  Bank.Open;
  AccountTree.Open;
  ContactQ.Open;
  Contact.Open;
  Account.Open;

 end;
end;

////////////////////////////////////////////

function GetDBDateTime: TDateTime;
var qry: TADOQuery;
begin
try
qry := TADOQuery.Create(nil);
qry.Connection := Dm.YeganehConnection;
qry.SQL.Add('SELECT CURRENT_TIMESTAMP AS ServerDateTime');
qry.Open;
Result := qry.FieldByName('ServerDateTime').AsDateTime;
qry.Close;
qry.Free;
Sleep(1);
except
on E: Exception do begin
Result := 0;
end;
end;
end;
////////////////////////////////////////////
Procedure  Read_SystemValue;
begin
   _FocusedColor:=clYellow;

   // €ÌÌ— ›Ê‰   „«„Ì ﬂ‰ —·Â«Ì Ê—Êœ «ÿ·«⁄« 
   try
      {Ranjbar}
      if StrToBool(Get_UserSetting(_Userid,'ChBoEnterDataFont'))=True then
      //---
         _EditFont:=StrToFont(Get_UserSetting(_Userid,'EditFont'));
   except
   end;

   //DBGrid  €ÌÌ— ›Ê‰   „«„Ì ﬂ‰ —·Â«Ì
   try
      {Ranjbar}
      if StrToBool(Get_UserSetting(_Userid,'ChBoDBGridFont'))=True then
      //---
         _GridFont:=StrToFont(Get_UserSetting(_Userid,'GridFont'));
   except
   end;

   _FocusedColor:=clYellow;
   {Ranjbar}
 //  _Today       := ShamsiString(Now);
   _Today:=   ShamsiString(GetDBDateTime);
   _Year        := StrToInt(copy(_Today,1,4));
   _Month       := copy(_Today,6,2);
   _Day         := copy(_Today,9,2);
   //---
   _TempPath    := GetTempDirectory;
   _WordFileName:='Yeganeh.Doc';
   _LogoPath    :=_TempPath+'CashLogo.jpg';
end;

Procedure  Open_User_like(like:widestring);
  Begin
  With dm.Select_User_like,parameters do
   Begin
    Close;
    ParamByName('@Like').value:=like;
    Open;
   End;
End;

Procedure  Open_Report_LatestPayment_ByAccountID(AccountID:integer);
  begin
  with dm.Report_LatestPayment_ByAccountID,parameters do
   begin
    Close;
    ParamByName('@AccountID').value:=AccountID;
    Open;
   end;
end;

Procedure  Open_Sponsor;
  begin
  with dm.Select_Sponsor,parameters do
   begin
    Close;
    Open;
   end;
end;

Procedure  Open_Loan_ByAccountID(AccountID:integer);
  begin
  with Dm.Select_Loan_ByAccountID,parameters do
   begin
    Close;
    ParamByName('@AccountID').value:=AccountID;
    Open;
   end;
end;

Function Insert_TbExcelLog(FilePath,FileDate,Comment:STRING;RowNo:INTEGER):Integer;

BEGIN
  WITH DM.TbExcelLog DO
  BEGIN
    Active:=True;
    Insert;
    FieldByName('FilePath').AsString:=FilePath;
    FieldByName('InsertDate').AsString:=_Today;
    FieldByName('FileDate').AsString:=FileDate;
    FieldByName('Comment').AsString:=Comment;
    FieldByName('RowNo').AsInteger:=RowNo;
    FieldByName('UserId').AsInteger:=_Userid;
    Post;
  END;
END;



Function Insert_Payment(PayTypeID:byte;
                        CreditorAccountID,
                        DebtorAccountID,
                        FinancialNoteid,
                        Amount:Largeint;
                        Comment : String;
                        RelatedID:Integer;
                        DocumentNo,
                        Date: String;
                        FinancialNote_DetailID,
                        Crtr_DetAccountID,
                        MainCr,
                        MainDb:Integer
                        ):Largeint;
VAR _CREDITOR ,_DEBATOR:INTEGER;
begin
   if date='' then
      Date:=_Today;

   with dm,Select_Payment do
   begin
      if state in [dsedit,dsinsert] then
         Cancel;

   _CREDITOR:=MainCr;
   _DEBATOR :=MainDb;
{  IF (FrAddPayment<>NIL) AND
      (FrAddPayment.Showing) AND
      (NOT FrAddPayment.CashIsDebtor)AND
      (FinancialNote_DetailID>0) THEN
   BEGIN
       _CREDITOR:=Crtr_DetAccountID;
       _DEBATOR :=debtorAccountID;
   END ;
   IF (FrAddPayment<>NIL) AND
      (FrAddPayment.Showing) AND
      (FinancialNote_DetailID>0) AND
      (FrAddPayment.CashIsDebtor) THEN
   BEGIN
            _CREDITOR :=CreditorAccountID;
            _DEBATOR  :=Crtr_DetAccountID;
   END;

   IF (FrAddLoan<>NIL) AND
      (FrAddLoan.Showing) AND
      (FinancialNote_DetailID>0)  THEN
   BEGIN
            _CREDITOR :=CreditorAccountID;
            _DEBATOR  :=Crtr_DetAccountID;
   END;}
   IF   (_DEBATOR<>0) AND
        (_CREDITOR<>0) THEN
   BEGIN
      {       // Amin 1391/11/08-2
       IF NOT ISSelectedDbtOrCrtCorrect(_DEBATOR,_CREDITOR)THEN
       Begin
           result:=-1;
           ShowMessage('Õ”«» «‰ Œ«» ‘œÂ „Ã«“ ‰„Ì »«‘œ');
           ABORT;
       End ;
         }

       IF not Account_Has_Balance(_CREDITOR,_DEBATOR,Amount,PayTypeID) then
       Begin
           result:=-1;
           ShowMessage('„ÊÃÊœÌ Õ”«» ò«›Ì ‰Ì” ');
           ABORT;
       End ;
   END;
      Open_Payment(0);
      Insert;
      Select_PaymentCreditorAccountID.AsInteger:=CreditorAccountID;
      Select_PaymentDebtorAccountID.AsInteger:=DebtorAccountID;
      Select_PaymentDate.AsString:=date;
      Select_PaymentTime.AsString:=Get_Time;
      Select_PaymentPayTypeID.AsInteger:=PayTypeID;
      Select_PaymentAmount.AsLargeInt:=Amount;
      Select_PaymentComment.AsString:=Comment;
      Select_PaymentInsertUserID.AsInteger:=_Userid;
      Select_PaymentFinancialNoteID.AsInteger:=FinancialNoteid;
      Select_PaymentRelatedId.AsInteger:=RelatedID;
      Select_PaymentDocumentNo.AsString:=DocumentNo;
      Select_PaymentFinancialNote_DetailID.AsInteger:=FinancialNote_DetailID;
      Select_PaymentCrtr_DetAccountID.AsInteger:=Crtr_DetAccountID;

      try
      Select_Payment.Post;
      except
         on e:Exception do
            ShowMessage(e.Message);
      end;
      Result := Select_PaymentPaymentID.AsInteger;
   end;
end;


Function Insert_PaymentInterestAmerce(PayTypeID:byte;
                        CreditorAccountID,
                        DebtorAccountID,
                        FinancialNoteid,
                        Amount:integer;
                        Comment : String;
                        RelatedID:Integer;
                        DocumentNo,
                        Date: String;
                        FinancialNote_DetailID,
                        Crtr_DetAccountID,
                        MainCr,
                        MainDb:Integer
                        ):Integer;
VAR
   CREDITOR ,DEBATOR:INTEGER;
begin
   if date='' then
      Date:=_Today;

   CREDITOR:=MainCr;
   DEBATOR :=MainDb;

   Open_Payment(0);

   with TADOQuery.Create(nil) do
   begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'INSERT INTO PaymentInterestAmerce(CreditorAccountID,DebtorAccountID,Date,Time,PayTypeID,Amount,'+
                  'Comment,InsertUserID,FinancialNoteID,RelatedId,DocumentNo,FinancialNote_DetailID,Crtr_DetAccountID)'+
                  ' VALUES('+IntToStr(CreditorAccountID)+','+IntToStr(DebtorAccountID)+','''+date+''','''+Get_Time+''','+IntToStr(PayTypeID)+
                  ','+IntToStr(Amount)+','''+Comment+''','+IntToStr(_Userid)+','+IntToStr(FinancialNoteid)+','+IntToStr(RelatedID)+
                  ','''+DocumentNo+''','+IntToStr(FinancialNote_DetailID)+','+IntToStr(Crtr_DetAccountID)+')';
      try
          SQL.SaveToFile('sql.txt');
          ExecSQL;
          Result := 1;
      except
          Result := -1;
      end;
   end;
end;


Procedure  Open_LoanPriority_BYIsUrgency(IsUrgency:boolean);
  Begin
  With Dm.Select_LoanPriority_BYIsUrgency,parameters do
   Begin
    Close;
    ParamByName('@IsUrgency').value:=IsUrgency;
    Open;
   End;
End;



Procedure  Insert_LoanPriority(accountID:integer;IsUrgency:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_LoanPriority';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=accountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@IsUrgency';
      Value :=IsUrgency;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;


Procedure  Delete_LoanPriority(LoanPriorityID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_LoanPriority';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanPriorityID';
      Value :=LoanPriorityID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Move_LoanPriority(LoanPriorityID:integer;isUp:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Move_LoanPriority';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanPriorityID';
      Value :=LoanPriorityID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@isUp';
      Value :=isUp;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Delete_LoanPriority_byAccountID(AccountID:integer;IsUrgency:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_LoanPriority_byAccountID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@IsUrgency';
      Value :=IsUrgency;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Open_LoanRequest_ByAccountID(AccountID:integer);
  begin
  with Dm.select_LoanRequest_ByAccountID,parameters do
   begin
    Close;
    ParamByName('@AccountID').value:=AccountID;
    Open;
   end;
end;

Procedure  Open_Report_LoanRequest(where:widestring);
begin
   with Dm.Report_LoanRequest,parameters do
   begin
      Close;
      ParamByName('@where').value:=where;
      Open;
   end;
end;

Procedure  Open_LoanRequest(LoanRequestID:integer);
  begin
  with Dm.select_LoanRequest,parameters do
   begin
    Close;
    ParamByName('@LoanRequestID').value:=LoanRequestID;
    Open;
   end;
end;
Procedure  delete_LoanRequest(LoanRequestID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_LoanRequest';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanRequestID';
      Value :=LoanRequestID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure Open_Report_ForcePayment(DelayDays:byte;FamilyID:integer;FoceTypeID:byte;MatureDateFrom,MatureDateTo,No:string;
          OnlyLatest:boolean;PayStatus:byte;SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64;LoanTypeID,MonthlyTypeID,Top:integer);
//          OnlyLatest:boolean;PayStatus:byte;SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64;LoanTypeID,MonthlyTypeID,Top:integer);
Var
   s : String;
begin
   with Dm.Report_ForcePayment,parameters do
   begin
   TRY
      S := Sort;
      Close;
      ParamByName('@DelayDays').value:=DelayDays;
      ParamByName('@FamilyID').value:=FamilyID;
      ParamByName('@FoceTypeID').value:=FoceTypeID;
      ParamByName('@GroupingByAccount').value:=False;
      ParamByName('@MatureDateFrom').value:=MatureDateFrom;
      ParamByName('@MatureDateTo').value:=MatureDateTo;
      ParamByName('@No').value:=No;
      ParamByName('@OnlyLatest').value:=OnlyLatest;
      ParamByName('@PayStatus').value:=PayStatus;
      ParamByName('@SearchByLoanNo').Value:=SearchByLoanNo;
      ParamByName('@Today').Value:=_Today;
      ParamByName('@Top').Value:=Top;
      ParamByName('@LoanTypeID').Value:=LoanTypeID;
      ParamByName('@MonthlyTypeID').Value:=MonthlyTypeID;

      Open;
      Sort:=s;
      SumAmount:=ParamByName('@SumAmount').value;
      SumAmerce:=ParamByName('@SumAmerce').value;
      SumInterest:=ParamByName('@SumInterest').value;
   EXCEPT
   on E : Exception do
     begin
       ShowMessage('Exception class name = '+E.ClassName);
       ShowMessage('Exception message = '+E.Message);
     end;
   END;
   end;
end;

Procedure Open_Report_ForcePayment2(DelayDays:byte;
                                    FamilyID:integer;
                                    FoceTypeID:byte;
                                    MatureDateFrom,
                                    MatureDateTo,No:string;
                                    OnlyLatest:boolean;
                                    PayStatus:byte;
                                    SearchByLoanNo:boolean;var SumAmount,SumAmerce,SumInterest:int64;LoanTypeID,MonthlyTypeID,Top:integer);
Var
   s : String;
begin
   with Dm.Report_ForcePayment2,parameters do
   begin
      S := Sort;
      Close;
      ParamByName('@DelayDays').value:=DelayDays;
      ParamByName('@FamilyID').value:=FamilyID;
      ParamByName('@FoceTypeID').value:=FoceTypeID;
      ParamByName('@GroupingByAccount').value:=False;
      ParamByName('@MatureDateFrom').value:=MatureDateFrom;
      ParamByName('@MatureDateTo').value:=MatureDateTo;
      ParamByName('@No').value:=No;
      ParamByName('@OnlyLatest').value:=OnlyLatest;
      ParamByName('@PayStatus').value:=PayStatus;
      ParamByName('@SearchByLoanNo').Value:=SearchByLoanNo;
      ParamByName('@Today').Value:=_Today;
      ParamByName('@Top').Value:=Top;
      ParamByName('@LoanTypeID').Value:=LoanTypeID;
      ParamByName('@MonthlyTypeID').Value:=MonthlyTypeID;

      Open;
      Sort:=s;
      SumAmount:=ParamByName('@SumAmount').value;
      SumAmerce:=ParamByName('@SumAmerce').value;
      SumInterest:=ParamByName('@SumInterest').value;
   end;
end;

Procedure Open_Report_GroupForcePayment(DelayDays:byte;
                                        FamilyID:integer;
                                        FoceTypeID:byte;
                                        MatureDateFrom,
                                        MatureDateTo,
                                        No:String;
                                        OnlyLatest:boolean;
                                        PayStatus:byte;
                                        SearchByLoanNo:boolean;
                                        Var SumAmount,
                                            SumAmerce,
                                            SumInterest:int64;
                                        LoanTypeID,
                                        MonthlyTypeID:Integer);

Begin
   With Dm.Report_GroupForcePayment,parameters do
   Begin
      Close;
      ParamByName('@DelayDays').value:=DelayDays;
      ParamByName('@FamilyID').value:=FamilyID;
      ParamByName('@FoceTypeID').value:=FoceTypeID;
      ParamByName('@GroupingByAccount').value:=True;
      ParamByName('@MatureDateFrom').value:=MatureDateFrom;
      ParamByName('@MatureDateTo').value:=MatureDateTo;
      ParamByName('@No').value:=No;
      ParamByName('@OnlyLatest').value:=OnlyLatest;
      ParamByName('@PayStatus').value:=PayStatus;
      ParamByName('@SearchByLoanNo').value:=SearchByLoanNo;
      ParamByName('@TOP').value:=0;
      ParamByName('@Today').value:=_Today;
      ParamByName('@LoanTypeID').Value:=LoanTypeID;
      ParamByName('@MonthlyTypeID').Value:=MonthlyTypeID;

      Open;
     { SumAmount:=ParamByName('@SumAmount').value;
      SumAmerce:=ParamByName('@SumAmerce').value;
      SumInterest:=ParamByName('@SumInterest').value;}
   end;
       Dm.Report_GroupForcePayment.Close;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@FoceTypeID').value:=FoceTypeID;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@PayStatus').value:=PayStatus;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@GroupingByAccount').value:=True;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@DelayDays').value:=DelayDays;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@OnlyLatest').value:=OnlyLatest;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@No').value:=No;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@SearchByLoanNo').value:=SearchByLoanNo;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@MatureDateFrom').value:=MatureDateFrom;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@MatureDateTo').value:=MatureDateTo;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@FamilyID').value:=FamilyID;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@LoanTypeID').Value:=LoanTypeID;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@MonthlyTypeID').Value:=MonthlyTypeID;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@Today').value:=_Today;
      Dm.Report_GroupForcePayment.Parameters.ParamByName('@TOP').value:=0;
//      Dm.Report_GroupForcePayment.SQL.SaveToFile('c:\movahedtest.txt');
      Dm.Report_GroupForcePayment.Open;
      {SumAmount:=Dm.Report_GroupForcePayment.Parameters.ParamByName('@SumAmount').value;
      SumAmerce:=Dm.Report_GroupForcePayment.Parameters.ParamByName('@SumAmerce').value;
      SumInterest:=Dm.Report_GroupForcePayment.Parameters.ParamByName('@SumInterest').value;}

end;

Procedure Open_Loan_Like(like:widestring);
begin
   with Dm.Select_Loan_Like,parameters do
   begin
      Close;
      ParamByName('@like').value:=like;
      Open;
   end;
end;


Procedure  Open_Report_Contact(where:string);
begin
  with Dm.Report_Contact,parameters do
   begin
    Close;
    ParamByName('@where').value:=where;
    Open;
   end;
end;


function Get_AccountID_ByContactID(ContactID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_AccountID_ByContactID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ContactID';
      Value :=ContactID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AccountID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@AccountID').value;
end;

Procedure  delete_Contact(ContactID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_Contact';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ContactID';
      Value :=ContactID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Open_Report_Loan(where:string;rowcount:string);
var s: string;
  begin
     If   trim(RowCount)='' then
    RowCount:='0';
  with Dm.Report_Loan,parameters do
   begin
    s:=sort;
    Close;
    ParamByName('@where').value:=where;
    ParamByName('@RowCount').value:=RowCount;
    Open;
    sort:=s;
   end;
end;

Procedure  Get_LoanID_ByLoanNo(Loanno:string; var LoanID,AccountID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_LoanID_ByLoanNo';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Loanno';
      size:= 10;
      Value :=Loanno;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@LoanID';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AccountID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   AccountID:=ADOSP.Parameters.ParamByname('@AccountID').value;
   LoanID:=ADOSP.Parameters.ParamByname('@LoanID').value;

end;

Procedure  Open_LastPart(LoanID:integer);
  begin
  with Dm.Select_LastPart,parameters do
   begin
    Close;
    ParamByName('@LoanID').value:=LoanID;
    ParamByName('@Today').value:=_Today;
    Open;
   end;
end;


//„Ì ‰„«Ìœ Paid=1 —Ê«· “Ì— ›Ì·œ
Procedure  Pay_ForcePayment(ForcePaymentID:integer;PaymentID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Pay_ForcePayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ForcePaymentID';
      Value :=ForcePaymentID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@PaymentID';
      Value :=PaymentID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Open_LastMonthly(AccountID:integer);
  begin
  with Dm.Select_LastMonthly,parameters do
   begin
    Close;
    ParamByName('@AccountID').value:=AccountID;
    ParamByName('@Today').value:=_Today;
    Open;
   end;
end;

Procedure  Open_Loan_Parts_Details(LoanID:integer;DateFrom:string;DateTo:string;Paid:byte);
  begin
  with Dm.Select_Loan_Parts_Details,parameters do
   begin
    Close;
    ParamByName('@DateFrom').value:=Txt_Del254(DateFrom);
    ParamByName('@DateTo').value:=Txt_Del254(DateTo);
    ParamByName('@LoanID').value:=LoanID;
    ParamByName('@Paid').value:=Paid;
    Open;
   end;
end;

Procedure  Open_Monthly_Details(AccountID:integer;DateFrom:string;DateTo:string;Paid:byte);
begin
   with Dm.Select_Monthly_Details,parameters do
   begin            
      Close;
      ParamByName('@DateFrom').value := Txt_Del254(DateFrom);
      ParamByName('@DateTo').value := Txt_Del254(DateTo);
      ParamByName('@AccountID').value := AccountID;
      ParamByName('@Paid').value := Paid;
      Open;
   end;
end;

//«‰ Œ«» ﬂ—œ‰ «ﬁ”«ÿ Ì« „«ÂÌ«‰Â Â« Ê “œ‰ ”‰œ »—«Ì Â— ﬂœ«„ ”Å”   ⁄ÌÌ‰ ﬂ—œ‰ «Ì‰ﬂÂ ﬁ”  Å—œ«Œ  ‘œÂ «” 
Procedure  Group_ForcePayment(ForcePaymentID:integer;DebtorAccountID:integer;date:string;comment:widestring;
FinancialNoteID:integer;userID:integer;documentNo:string;FinancialNote_DetailID,Crtr_DetAccountID,_AmerceAmount:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Group_ForcePayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ForcePaymentID';
      Value :=ForcePaymentID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DebtorAccountID';
      Value :=DebtorAccountID;

    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@date';
      size:= 10;
      Value :=date;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@comment';
      size:= 200;
      Value :=comment;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FinancialNoteID';
      Value :=FinancialNoteID;

    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userID';
      Value :=userID;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;;
      Direction := pdInput;
      Name:='@documentNo';
      size:= 10;
      Value :=documentNo;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FinancialNote_DetailID';
      Value :=FinancialNote_DetailID;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Crtr_DetAccountID';
      Value :=Crtr_DetAccountID;
    end;
  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@_AmerceAmount';
      Value :=_AmerceAmount;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  UnPay_ForcePayment(ForcePaymentID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UnPay_ForcePayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ForcePaymentID';
      Value :=ForcePaymentID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Open_Account_Monthlys(AccountID:integer);
  begin
  with Dm.Select_Account_Monthlys,parameters do
   begin
    Close;
    ParamByName('@AccountID').value:=AccountID;
    Open;
   end;
end;
Procedure  delete_loan(LoanID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='delete_loan';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanID';
      Value :=LoanID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Insert_ErrorMessage(ErrorMessage:widestring;UserID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Insert_ErrorMessage';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ErrorMessage';
      size:= 510;
      Value :=ErrorMessage;

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

function Get_Farsi_Message(ErrorMsg:widestring; var ShowMessage :boolean):widestring;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Farsi_Message';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdInput;
      Name:='@ErrorMsg';
      size:= 1000;
      Value :=ErrorMsg;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftwidestring;
      Direction := pdoutput;
      Name:='@FarsiMessage';
      size:= 1000;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@ShowMsg';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@FarsiMessage').value;
   ShowMessage:=ADOSP.Parameters.ParamByname('@ShowMsg').value;
end;

Procedure  Change_UserPassword(Password:string);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Change_UserPassword';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=_Userid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Password';
      size:= 20;
      Value :=Password;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Open_Report_LoanPoint(today,AccountNO,AccountTitle:string);
  begin
  with Dm.Report_LoanPoint,parameters do
   begin
    Close;
    ParamByName('@today').value:=today;
    ParamByName('@AccountNO').value:=AccountNO;
    ParamByName('@AccountTitle').value:=AccountTitle;
    Open;
   end;  // Mohamed 920225
  { with Dm.Rep_LoanPoint,parameters do
   begin
    Close;
    ParamByName('@today').value:=today;
    ParamByName('@AccountNO').value:=AccountNO;
    ParamByName('@AccountTitle').value:=AccountTitle;
    Open;
   end;  }
end;
function Get_Amerce(ForceTypeID:byte;MatureDate:string;PayDate:string):integer;
 var ADOSP:TADOStoredProc;  
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Amerce';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ForceTypeID';
      Value :=ForceTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@MatureDate';
      size:= 10;
      Value :=MatureDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@PayDate';
      size:= 10;
      Value :=PayDate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@amerce';
    end;
    ADOSP.Connection:=dm.YeganehConnection; 
    ADOSP.ExecProc;    
   Result:=ADOSP.Parameters.ParamByname('@amerce').value;
end;


Procedure  UPDATE_LoanGaurantor_FinancialNoteID(LoanGaurantorID:integer;FinancialNoteID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UPDATE_LoanGaurantor_FinancialNoteID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanGaurantorID';
      Value :=LoanGaurantorID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@FinancialNoteID';
      Value :=FinancialNoteID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Delete_LoanGaurantor(LoanGaurantorID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_LoanGaurantor';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanGaurantorID';
      Value :=LoanGaurantorID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
Procedure  Open_Report_CashAccount(where:string;SelectedId :integer);
var s: string;
  begin
  with Dm.Report_CashAccount,parameters do
   begin
    s:=sort;
    Close;
    ParamByName('@where').value:=where;
    ParamByName('@IsLoan').value:=SelectedId;
    Open;
    sort:=s;
   end;
end;

Procedure  Open_All_Cash_Accounts(accountID:integer);
  begin
  with Dm.Select_All_Cash_Accounts,parameters do
   begin
    Close;
    ParamByName('@accountID').value:=accountID;
    Open;
   end;
end;
Procedure  Open_Report_SummeryPayment(dateFrom:string;dateTo:string);
  begin
  with Dm.Report_SummeryPayment,parameters do
   begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
    ParamByName('@dateTo').value:=Txt_Del254(dateTo);
    Open;
   end;
end;
Procedure  Open_Report_SummeryPayment2(dateFrom:string;dateTo:string);
  begin
  with Dm.Report_SummeryPayment2,parameters do
   begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
    ParamByName('@dateTo').value:=Txt_Del254(dateTo);
    Open;
   end;
end;
function Get_NotPaiedForcePayment(ForceTypeID:byte;Parentid:integer;dateFrom,dateTo:string):string;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_NotPaiedForcePayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@ForceTypeID';
      Value :=ForceTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Parentid';
      Value :=Parentid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@dateFrom';
      size:= 10;
      Value :=dateFrom;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@dateTo';
      size:= 10;
      Value :=dateTo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftLargeint;
      Direction := pdoutput;
      Name:='@SumAmount';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@SumAmount').Value;
end;


function insert_UserLoginLogout(IPAddress:string):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='insert_UserLoginLogout';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_userid;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@IPAddress';
      size:= 15;
      Value :=IPAddress;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@UserLoginLogoutID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@UserLoginLogoutID').value;
end;

Procedure  update_UserLoginLogout(UserLoginLogoutID:integer;isSafeLogout:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='update_UserLoginLogout';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserLoginLogoutID';
      Value :=UserLoginLogoutID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdInput;
      Name:='@isSafeLogout';
      Value :=isSafeLogout;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

Procedure  Get_UserLogoutStatus(var logout,isSafeLogout:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_UserLogoutStatus';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_UserID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@logout';
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@isSafeLogout';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   logout:=ADOSP.Parameters.ParamByname('@logout').value;
   isSafeLogout:=ADOSP.Parameters.ParamByname('@isSafeLogout').value;

end;
Procedure  Open_Report_Payment(where:string);
  begin
  with Dm.Report_Payment,parameters do
   begin
    Close;
    ParamByName('@where').value:=where;
    Open;
   end;
end;

function Account_Has_Balance(CreditorAccountID:integer;DebtorAccountID:integer;Amount:integer;PayTypeID:byte):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Account_Has_Balance';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@CreditorAccountID';
      Value :=CreditorAccountID;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@DebtorAccountID';
      Value :=DebtorAccountID;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Amount';
      Value :=Amount;
    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@PayTypeID';
      Value :=PayTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@Has_balance';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Has_balance').value;
end;



function Account_Is_Balance(AccountID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Account_Is_Balance';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@Is_balance';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Is_balance').value;
end;


function  Open_Balance_Sheet(dateFrom:string;dateTo:string;ParentID :integer):longint;
begin
   with Dm.Balance_Sheet,parameters do
   begin
      Close;
      ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
      ParamByName('@DateTo').value:=Txt_Del254(dateTo);
      ParamByName('@ParentID').value:=ParentID;
      Open;
      Result:=ParamByName('@SumAmount').value;
   end;
end;

function  Open_Balance_Sheet_all(dateFrom:string;dateTo:string;ParentID :integer):longint;
  begin
  with Dm.Balance_Sheet_all,parameters do
   begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
    ParamByName('@DateTo').value:=Txt_Del254(dateTo);
    ParamByName('@ParentID').value:=ParentID;
    Open;
    Result:=ParamByName('@SumAmount').value;
   end;
end;



function Get_Balance_ByPayTypeID(AccountID:integer;payTypeid:byte;dateTo:string):Int64;
 var ADOSP:TADOStoredProc; 
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_Balance_ByPayTypeID';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@payTypeid';
      Value :=payTypeid;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@dateTo';
      size:= 10;
      Value :=dateTo;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftLargeint;
      Direction := pdoutput;
      Name:='@SumAmount';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@SumAmount').value;
end;

Procedure  Open_Report_Daily_Payment(dateFrom:string;dateTo:string;UserId : integer);
  begin
  with Dm.Report_Daily_Payment,parameters do
   begin
    Close;
    ParamByName('@dateFrom').value:=Txt_Del254(dateFrom);
    ParamByName('@dateTo').value:=Txt_Del254(dateTo);
    ParamByName('@UserID').value:=UserID;
    Open;
   end;
end;
Function  Open_userLoginLogout(bdate:string;edate:string;userid:integer):TADODataSet;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='select_userLoginLogout';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@bdate';
      size:= 10;
      Value :=bdate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@edate';
      size:= 10;
      Value :=edate;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@userid';
      Value :=userid;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.open;
  Result:=TADODataSet(ADOSP);

end;


function Get_NewDocumnetNo(DateTmp :string):string;
 var ADOSP:TADOStoredProc;
    _YearTmp:Integer;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_NewDocumnetNo';
  if (Trim(copy(DateTmp,4,2))='') OR (copy(DateTmp,4,2)='0') THEN
   _YearTmp:=strtoint(copy(_Today,1,4))
  ELSE
  BEGIN
    TRY
    _YearTmp:=strtoint(copy(DateTmp,4,2));
    EXCEPT
    _YearTmp:=strtoint(copy(DateTmp,1,4));
    END
  END;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Year';
//      Value :=_Year;
      Value :=_YearTmp;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      Name:='@NewDocumnetNo';
      size:= 10;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@NewDocumnetNo').value;
end;

Procedure  Open_Report_Payment_ByDocumentNo(documentNo:string;aYear: byte);
begin
   with Dm.Report_Payment_ByDocumentNo,parameters do
   begin
      Close;
      ParamByName('@documentNo').value := documentNo;
      ParamByName('@Year').value := aYear;
      Open;
   end;
end;

Procedure  Open_REPORT_PAYMENT_ForPrint(DocumentNoFrom,DocumentNoTo,DateFrom,DateTo:String);
Begin
   With Dm.REPORT_PAYMENT_ForPrint,parameters do
   Begin
      Close;
      ParamByName('@DocumentNoFrom').value := DocumentNoFrom;
      ParamByName('@DocumentNoTo').value := DocumentNoTo;
      ParamByName('@DateFrom').value := DateFrom;
      ParamByName('@DateTo').value := DateTo;
      Open;
   End;
End;

Procedure  Open_Report_DeletedPayment_ByDocumentNo(documentNo:string;aYear: byte);
begin
   with Dm.Report_DeletedPayment_ByDocumentNo,parameters do
   begin
      Close;
      ParamByName('@documentNo').value := documentNo;
      ParamByName('@Year').value := aYear;
      Open;
   end;
end;



Procedure  Delete_Payment(PaymentID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Payment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@PaymentID';
      Value :=PaymentID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;

function LoanTypeID_Has_loan(LoanTypeID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='LoanTypeID_Has_loan';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanTypeID';
      Value :=LoanTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@Hasloan';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Hasloan').value;
end;

function Loan_has_NotPaidParts(LoanID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Loan_has_NotPaidParts';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@LoanID';
      Value :=LoanID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@result';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@result').value;
end;
function Duplicate_Loanno(Loanno :string):boolean;
 Var LoanID,AccountID:integer;
 begin
   Get_LoanID_ByLoanNo(Loanno, LoanID,AccountID);
    Result:=LoanID>0;

 end;

Procedure  Open_ForcePayment_byForcePaymentID(ForcePaymentID:integer);
  begin
  with Dm.Select_ForcePayment_byForcePaymentID,parameters do
   begin
    Close;
    ParamByName('@ForcePaymentID').value:=ForcePaymentID;
    Open;
   end;
end;
Function is_Numeric(s:string):boolean;
 var i: integer;
 begin
   s:=trim(s);
   result:=true;
   if s='' then
    begin
     Result:=false;
     exit;
    end;
   for i:=1 to length(s) do
    if pos(s[i],'1234567890-/')=0 then
     begin
      Result:=False;
      exit;
     end;
 end;
function AccountType_Has_Account(AccountTypeID:byte):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='AccountType_Has_Account';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@AccountTypeID';
      Value :=AccountTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;
      Direction := pdoutput;
      Name:='@result';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@result').value;
end;
function Get_NewAccountTypeID:byte;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_NewAccountTypeID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@AccountTypeID';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@AccountTypeID').value;
end;

function Get_benefit:Largeint;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_benefit';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftLargeint;;
      Direction := pdoutput;
      Name:='@Benefit';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Benefit').value;
end;

Procedure  Open_Report_SumBalance(FromDate:string;today:string;var SumAvgBalance :Largeint);
  begin
  with Dm.Report_SumBalance,parameters do
   begin
    Close;
    ParamByName('@FromDate').Value:=FromDate;
    ParamByName('@Today').Value:=Today;
    Open;
    SumAvgBalance:=ParamByName('@SumAvgBalance').value;
   end;
end;

Procedure  Pay_Benefit(FromDate:string;today:string;BenefitPercent:real;NewDocumnetNo:string;InsertUserID:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Pay_Benefit';

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
      Name:='@today';
      size:= 10;
      Value :=today;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftfloat;
      Direction := pdInput;
      Name:='@BenefitPercent';
      Value :=BenefitPercent;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@NewDocumnetNo';
      size:= 10;
      Value :=NewDocumnetNo;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@InsertUserID';
      Value :=InsertUserID;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;



function get_NumberOfPaidPart_byLoanID(loanId:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_NumberOfPaidPart_byLoanID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@loanId';
      Value :=loanId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@NumberOfPaidPart';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@NumberOfPaidPart').value;
end;

function Get_calcField_byContactID(ContactID:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_calcField_byContactID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@ContactID';
      Value :=ContactID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@CalField';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@CalField').value;
end;

Procedure  Update_calcField(ContactID:integer;CalField:integer);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Update_calcField';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@ContactID';
      Value :=ContactID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@CalField';
      Value :=CalField;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;

end;
function get_RemainOfLoan_byLoanID(loanId:integer):integer;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='get_RemainOfLoan_byLoanID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@loanId';
      Value :=loanId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdoutput;
      Name:='@RemainOfLoan';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@RemainOfLoan').value;
end;

{Ranjbar 88.06.24}
Procedure Ins_AccountToLoanPriority(aAccountID,LoanID:Integer);
Var
   Count : Integer;
   SqlText : String;
begin
   //œ— ’Ê— ÌﬂÂ ¬Œ—Ì‰ ﬁ”ÿ Å—œ«Œ  ‘Êœ «Ì‰ ⁄÷Ê œ— «·ÊÌ  Ê«„ œÂÌ ﬁ—«— „ÌêÌ—œ
   SqlText := 'Select Count(ForcePaymentID) from ForcePayment Where ParentID = ' +
               IntToStr(LoanID) + ' And ForceTypeID = 1 And Paid = 0';
   Count := StrToIntDef(Qry_GetResult(SqlText,Dm.YeganehConnection) ,-1);
   if Count = 0 then
      Insert_LoanPriority(aAccountID ,False);
end;
//---

{Ranjbar}
Procedure ChackDateOnExit(aDBEdit:TDBEdit); //   YBaseForm.TEditExit(aDBEdit);
Var
   S:string;
begin
   if not(aDBEdit.DataSource.DataSet.State in [dsEdit,dsInsert]) then
      Exit;
   S := aDBEdit.Text;
   if (not isValidDate(S)) then
   begin
      ShowMyMessage('ÅÌ€«„','„ﬁœ«— ›Ì·œ  «—ÌŒ «‘ »«Â „Ì»«‘œ',[mbOK],mtInformation);
      aDBEdit.Text := '˛1390/  /  ';
   end;

end;

function Get_MaxMatureDateInForcePayment:string;
 var      SqlText : String;
 ADOSP:TADOStoredProc;
begin
   SqlText := 'Select dbo.ShamsiIncDate(Max(MatureDate),0,1,0) From  ForcePayment';
   Result := Qry_GetResult(SqlText,Dm.YeganehConnection);
end;




PROCEDURE Delete_Payment_ForcePayment(PaymentId: Integer; DelDATE:string;USERID:Integer);
 var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_Payment_ForcePayment';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@PaymentId';
      Value :=PaymentId;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DelDATE';
      size:= 10;
      Value :=DelDATE;
    end;


  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_UserID;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

PROCEDURE DELETE_PAYMENT_AllFORCEPAYMENT(PaymentId: Integer; DelDATE:string;USERID:Integer);
 var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='DELETE_PAYMENT_AllFORCEPAYMENT';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@PaymentId';
      Value :=PaymentId;
    end;

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@DelDATE';
      size:= 10;
      Value :=DelDATE;
    end;


  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@UserID';
      Value :=_UserID;
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

PROCEDURE Delete_PaymentFromReverse(PaymentId: Integer);
 var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_PaymentFromReverse';

    With ADOSP.Parameters.AddParameter do
    begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@PaymentId';
      Value :=PaymentId;
    end;

   ADOSP.Connection:=dm.YeganehConnection;
   ADOSP.ExecProc;
end;

function CanDeleteMonthlyType(monthlyTypeID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='CanDeleteMonthlyType';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@monthlyTypeID';
      Value :=monthlyTypeID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;;
      Direction := pdoutput;
      Name:='@CanDelete';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@CanDelete').value;
end;
function CanDelete_Payment(PaymentId:Integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='CanDelete_Payment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;;
      Direction := pdInput;
      Name:='@PaymentId';
      Value :=PaymentId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType :=ftSmallint; //ftboolean;;
      Direction := pdoutput;
      Name:='@CanDelete';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@CanDelete').value;
end;

function  Count_PAYMENT(PaymentId:Integer;DelDATE:STRING):INTEGER;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Count_PAYMENT';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;;
      Direction := pdInput;
      Name:='@PaymentId';
      Value :=PaymentId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
       DataType := ftstring;
      Direction := pdInput;
      Name:='@DelDATE';
      size:= 10;
      Value :=DelDATE;
    end;


  with ADOSP.Parameters.AddParameter do
      begin
      DataType :=ftInteger;
      Direction := pdoutput;
      Name:='@CountOfPayment';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@CountOfPayment').value;
end;


function CanDelete_MonthlyPayment(AccountID:integer):boolean;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='CanDelete_MonthlyPayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountID;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftboolean;;
      Direction := pdoutput;
      Name:='@CanDelete';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@CanDelete').value;
end;

Function SumAmountFinancialNote(FinancialNote_MasterID:Integer):Integer;
var SqlText:string;
Begin
   SqlText:=' Select  ISNULL(SUM(Amount),0) AS Amount from FinancialNote_Detail Where FinancialNote_MasterID='+inttostr(FinancialNote_MasterID);
   SumAmountFinancialNote:=strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection));
end;

Function IsSelectedFinantialNoteCorrect(FinancialNote_DeatilID:Integer):BOOLEAN;
var SqlText:string;
Begin
   SqlText:=' SELECT COUNT(PaymentID) AS C FROM Payment  WHERE FinancialNote_DetailID ='+inttostr(FinancialNote_DeatilID);
   IF   FinancialNote_DeatilID=0 THEN
     IsSelectedFinantialNoteCorrect:=TRUE
   ELSE
      IF strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection))=0 THEN
      BEGIN
        IsSelectedFinantialNoteCorrect:=TRUE
      END
      ELSE
         IsSelectedFinantialNoteCorrect:=fALSE;
end;


PROCEDURE UpdateFinancialNote_Detail(FinancialNote_DeatilID,StatusId:STRING);
Var _D,_Cr,_Db,_Crtr_DetAccountID,_m:INTEGER;
SqlText,_desc,_DocNos,_DOCNo,_PayType:STRING;
_Q:TADODataSet;
Begin
   SqlText:='SELECT PayTypeID FROM Payment WHERE FinancialNote_DetailID='+FinancialNote_DeatilID;
  _PayType:=Qry_GetResult(SqlText,DM.YeganehConnection) ;

  IF  (StatusId='1')or(_FinancialNoteid=-1)  THEN
  EXIT;
  TRY //TRY1
      DM.YeganehConnection.BeginTrans;

      dm.Select_Payment.Close;
      dm.Select_Payment.Open;
      SqlText:= ' SELECT FinancialNoteStatusDesc  '+
                ' FROM   FinancialNoteStatus '+
                ' WHERE  FinancialNoteStatusID ='+StatusId;
      _Desc:=dm.Select_FinancialNote_Like_NewNoteNo.AsString+' »Â ‘„«—Â '+Qry_GetResult(sqlText,Dm.YeganehConnection)+' çò ';



       _D:=dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
       dm.Select_Payment.Locate('FinancialNote_DetailID',_d,[loCaseInsensitive]);

       CASE STRTOINT(StatusId)  OF
       2://œ— Ã—Ì«‰ Ê’Ê·
         BEGIN
             IF (Get_SystemSetting('EdtVosoulAccount')=NULL) OR
                (Get_SystemSetting('EdtVosoulAccount')=''  ) THEN
                BEGIN
                     ShowMessage('œ— ﬁ”„   ‰ŸÌ„«  ”Ì” „ ‘„«—Â Õ”«» «”‰«œ œ— Ã—Ì«‰ Ê’Ê· —« „‘Œ’ ‰„«ÌÌœ');
                     ABORT;
                END;

                 _Q:=TADODataSet.Create(Nil);
                 _Q.Connection:=Dm.YeganehConnection;
                 _Q.Close;
                 _Q.CommandText:=' SELECT TOP 1   PaymentID, CreditorAccountID, DebtorAccountID, [Date], [Time], Amount, Comment, '+
                                 '                FinancialNoteID, InsertUserID, InsertDate, LastUpDate, LastUserID, '+
                                 '                PayTypeID, ISNULL(RelatedID,0), documentno, FinancialNote_DetailID, Crtr_DetAccountID '+
                                 ' FROM  Payment '+
                                 ' WHERE FinancialNote_DetailID='+INTTOSTR(_D)+
                                 ' ORDER BY PaymentID DESC';
                 _Q.Open;
                 IF NOT _Q.IsEmpty THEN
                 BEGIN
                   _Crtr_DetAccountID:=_Q.FIELDBYNAME('Crtr_DetAccountID').AsInteger;
                   _Cr:=_Q.FIELDBYNAME('DebtorAccountID').AsInteger;
                   _Db:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtVosoulAccount'));
                   IF  Get_AccountID_ByAccountNo(Get_SystemSetting('EDTPAYACCOUNT'))=_Q.FIELDBYNAME('CreditorAccountID').AsInteger THEN
                   BEGIN
                      _DB:=_Q.FIELDBYNAME('CreditorAccountID').AsInteger;
                      _Cr:=Get_AccountID_ByAccountNo(Get_SystemSetting('EdtVosoulAccount'));
                   END;
                 END
                 ELSE
                 BEGIN
                    ShowMessage('ÃÂ  Ê’Ê· çò Ã«—Ì ·ÿ›« «» œ« «“ ›—„ Ê«—Ì“ Ì« »—œ«‘  Õ”«» «” ›«œÂ ‰„«ÌÌœ');
                    EXIT;
                 END;
         END;
       3://Ê’Ê· ‘œ
         BEGIN
                FrAddPayment:=TFrAddPayment.Create(Application);
                With FrAddPayment do
                Begin
                  VosulMode := true;
                  CashIsDebtor:=true;
//                  SearchEdit.Text:=INTTOSTR(Get_SystemSetting('EdtVosoulAccount'));
                 _Q:=TADODataSet.Create(Nil);
                 _Q.Connection:=Dm.YeganehConnection;
                 _Q.Close;
                 _Q.CommandText:=' SELECT TOP 1 PaymentID, CreditorAccountID, DebtorAccountID, [Date], [Time], Amount, Comment, '+
                                 '              FinancialNoteID, InsertUserID, InsertDate, LastUpDate, LastUserID, '+
                                 '              PayTypeID, ISNULL(RelatedID,0), documentno, FinancialNote_DetailID, Crtr_DetAccountID '+
                                 ' FROM  Payment '+
                                 ' WHERE FinancialNote_DetailID='+Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsString+
                                 ' ORDER BY PaymentID DESC';
                 _Q.Open;
                 SearchEdit.Text:=INTTOSTR(Get_SystemSetting('EdtVosoulAccount'));
                 IF  (Get_AccountID_ByAccountNo(Get_SystemSetting('EDTPAYACCOUNT'))=_Q.FIELDBYNAME('CreditorAccountID').AsInteger) or (_isDebtorFinancial) THEN
                 BEGIN
                     SearchEdit.Text:=INTTOSTR(Get_SystemSetting('EDTPAYACCOUNT'));
                     CashIsDebtor:=FALSE;

                 END  ;

                 _CrOrDbForRefreshPayment:=_Q.FIELDBYNAME('Crtr_DetAccountID').AsInteger;
                 _AmountForRefreshPayment:=_Q.FIELDBYNAME('Amount').AsInteger;
                 _NotNoForRefreshPayment :=Dm.Select_FinancialNote_Like_NewNoteNo.AsString;
                 _DeatailIdForRefreshPayment :=Dm.Select_FinancialNote_Like_NewFinancialNote_DetailID.AsInteger;
                 RefreshPayment;
                 _SWCanClose:=False;
                 dm.FinancialNote_Master.Open;
                 dm.FinancialNote_Detail.Open;
                 _m:=Dm.Select_FinancialNote_Like_NewFinancialNote_MasterID.AsInteger;
                 dm.FinancialNote_Master.Locate('FinancialNote_MasterID',_m,[loCaseInsensitive	]);
                 dm.FinancialNote_Detail.Locate('FinancialNote_DetailID',_d,[loCaseInsensitive	]);
                 FinancialNotePanel.Enabled:=false;
                 ShowModal;
                 IF  _FrAddPaymentCloseWithoutDoEnything then
                 begin
                   _FrAddPaymentCloseWithoutDoEnything:=False;
                   Abort;
                  end;

                 _DocNos:=dm.Select_PaymentDocumentNo.AsString;
                 FinancialNotePanel.Enabled:=True;
                 _SWCanClose:=True;
                 _CrOrDbForRefreshPayment:=0;
                 _AmountForRefreshPayment:=0;
                 _NotNoForRefreshPayment :='';
                 _DeatailIdForRefreshPayment :=0;
                End;
                FrMain.RefreshAccount;
         END;
       4://»—ê‘ ;
         BEGIN
                 _Q:=TADODataSet.Create(Nil);
                 _Q.Connection:=Dm.YeganehConnection;
                 _Q.Close;
                 _Q.CommandText:=' SELECT TOP 1   PaymentID, CreditorAccountID, DebtorAccountID, [Date], [Time], Amount, Comment, '+
                                 '                FinancialNoteID, InsertUserID, InsertDate, LastUpDate, LastUserID, '+
                                 '                PayTypeID, ISNULL(RelatedID,0)RelatedID, documentno, FinancialNote_DetailID, Crtr_DetAccountID '+
                                 ' FROM      Payment '+
                                 ' WHERE     FinancialNote_DetailID='+INTTOSTR(_D)+
                                 ' ORDER BY PaymentID DESC';
                 _Q.Open;
                 _DocNos:='';
                 WHILE NOT _Q.EOF DO
                 BEGIN
                       _DOCNo:=Get_NewDocumnetNo(_Today);
                       _DocNos:=_DocNos+_DOCNo;
                       Insert_Payment( _Q.FIELDBYNAME('PayTypeID').AsInteger,
                                       _Q.FIELDBYNAME('DebtorAccountID').AsInteger,
                                       _Q.FIELDBYNAME('CreditorAccountID').AsInteger,
                                       _Q.FIELDBYNAME('FinancialNoteID').AsInteger,
                                       _Q.FIELDBYNAME('Amount').AsInteger,
                                       _Desc,
                                       _Q.FIELDBYNAME('RelatedID').AsInteger,
                                      _DOCNo,
                                      '',
                                      _D,
                                      _Q.FIELDBYNAME('Crtr_DetAccountID').AsInteger,
                                      0,0
                                      );
                       _Q.NEXT;
                 END;
         END;
       5://«»ÿ«·
         BEGIN
               _Q:=TADODataSet.Create(Nil);
               _Q.Connection:=Dm.YeganehConnection;
               _Q.Close;
               _Q.CommandText:=' SELECT     PaymentID, CreditorAccountID, DebtorAccountID, [Date], [Time], Amount, Comment, '+
                               '            FinancialNoteID, InsertUserID, InsertDate, LastUpDate, LastUserID, '+
                               '            PayTypeID, ISNULL(RelatedID,0)RelatedID, documentno, FinancialNote_DetailID, Crtr_DetAccountID '+
                               ' FROM         Payment '+
                               ' WHERE     FinancialNote_DetailID='+INTTOSTR(_D)+
                               ' ORDER BY PaymentID DESC';
               _Q.Open;
               _DocNos:='';
               WHILE NOT _Q.EOF DO
               BEGIN
                     _DOCNo:=Get_NewDocumnetNo(_Today);
                     _DocNos:=_DocNos+_DOCNo +' , ';
                     Insert_Payment( _Q.FIELDBYNAME('PayTypeID').AsInteger,
                                     _Q.FIELDBYNAME('DebtorAccountID').AsInteger,
                                     _Q.FIELDBYNAME('CreditorAccountID').AsInteger,
                                     _Q.FIELDBYNAME('FinancialNoteID').AsInteger,
                                     _Q.FIELDBYNAME('Amount').AsInteger,
                                     _Desc,
                                     _Q.FIELDBYNAME('RelatedID').AsInteger,
                                     _DOCNo,
                                     '',
                                     _D,
                                     _Q.FIELDBYNAME('Crtr_DetAccountID').AsInteger
                                    ,0,0);
                     _Q.NEXT;
               END;
         END;
       END;//CASE
       if  _FrAddPaymentCloseWithoutDoEnything then
       begin
           _FrAddPaymentCloseWithoutDoEnything:=False;
           Abort;
       end;
       
       IF  (StatusId='2') THEN
       BEGIN
         _DOCNo:=Get_NewDocumnetNo(_Today);
         _DocNos:=_DOCNo;
         Insert_Payment(StrToInt(_PayType),//IntersetPayTypeID,
                        _cr,
                        _Db,
                        _D ,
                        dm.Select_FinancialNote_Like_NewAmount.AsInteger,
                        _Desc ,
                        0     ,
                        _DOCNo,
                        ''    ,
                        _D    ,
                        _Crtr_DetAccountID,
                        0,
                        0);
       END;
       Qry_SetResult(' Update FinancialNote_Detail  '+
                     ' Set NoteStatusID='+StatusId+
                     ' Where FinancialNote_DetailID='+FinancialNote_DeatilID,dm.YeganehConnection);
       ShowMessage('⁄„·Ì«  »« „Ê›ﬁÌ  »Â « „«„ —”Ìœ.»« ‘„«—Â ”‰œ'+#13+_DocNos);
       DM.YeganehConnection.CommitTrans;
  EXCEPT//TRY1
    DM.YeganehConnection.RollbackTrans;
    ShowMessage('⁄„·Ì«  »« ‘ò”  „Ê«ÃÂ ‘œ.');
  END;//TRY1

  Dm.Select_FinancialNote_Like_New.Close;
  Dm.Select_FinancialNote_Like_New.Open;
  DM.Select_FinancialNote_Like_New.Locate('FinancialNote_DetailID',_D,[loCaseInsensitive]);
End;

Function CanDeleteOrEditBankID(BankID :Integer):BOOLEAN;
var SqlText:string;
Begin
   SqlText:=' SELECT COUNT(BankID) AS C FROM  FinancialNote_Detail   WHERE BankID  ='+inttostr(BankID );
   IF strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection))=0 THEN
     CanDeleteOrEditBankID:=TRUE
   ELSE
     CanDeleteOrEditBankID:=fALSE;
end;

FUNCTION ISSelectedDbtOrCrtCorrect(Debator,Creditor:integer):BOOLEAN;
begin
    ISSelectedDbtOrCrtCorrect:=True;
    if Debator=-1 THEN
      ISSelectedDbtOrCrtCorrect:=FALSE;

    if (Debator<>0) THEN
     IF (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'))=Debator) OR
        (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'))=Debator) OR
        (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtVosoulAccount'))=Debator)THEN
      ISSelectedDbtOrCrtCorrect:=FALSE;

    IF (Creditor<>0) and (not _isDebtorFinancial)THEN // Amin 1391/09/15
     IF (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtResiveAccount'))=Creditor) OR
        (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtPayAccount'))=Creditor) OR
        (Get_AccountID_ByAccountNo(Get_SystemSetting('EdtVosoulAccount'))=Creditor)THEN
      ISSelectedDbtOrCrtCorrect:=FALSE;

end;
Function IsSelectedSettingAccountCorrect(AccountId:Integer):BOOLEAN;
var SqlText:string;
Begin
   SqlText:=' SELECT     AccountTypeID  FROM Account WHERE     (AccountTypeID = 2) and AccountID='+inttostr(AccountId);
   IF strtoint(Qry_GetResult(sqlText,Dm.YeganehConnection))<>2 THEN
     IsSelectedSettingAccountCorrect:=False
   ELSE
     IsSelectedSettingAccountCorrect:=True;
end;

Function IsLoanTypeIDIsCorrect(LoanTypeID:Integer):BOOLEAN;
var SqlText:string;
Begin
   SqlText:=' SELECT ISNULL(PERIOD, ''0'')  FROM LoanType WHERE  (LoanTypeID = '+InttoStr(LoanTypeID)+') ';
   IF Qry_GetResult(sqlText,Dm.YeganehConnection)='0' THEN
     IsLoanTypeIDIsCorrect:=False
   ELSE
     IsLoanTypeIDIsCorrect:=True;
end;

Function  SELECT_RANDOM_ACCOUNTNO:STRING;
VAR ADOSP:TADOStoredProc;
BEGIN
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SELECT_RANDOM_ACCOUNTNO';

  WITH ADOSP.Parameters.AddParameter do
  BEGIN
      DataType := ftwidestring;
      Direction:= pdoutput;
      Name:='@RandACCOUNTNO';
      size:= 50;
  END;


  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@RandACCOUNTNO').value;
end;

Function  SELECT_RANDOM_ACCOUNTID:STRING;
VAR ADOSP:TADOStoredProc;
BEGIN
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SELECT_RANDOM_ACCOUNTID';

  WITH ADOSP.Parameters.AddParameter do
  BEGIN
      DataType := ftwidestring;
      Direction:= pdoutput;
      Name:='@RandACCOUNTID';
      size:= 50;
  END;


  ADOSP.Connection:=dm.YeganehConnection;
  ADOSP.ExecProc;
  Result:=ADOSP.Parameters.ParamByname('@RandACCOUNTID').value;
end;


Function Get_PercentOfLastPaidLoan(Accountid:integer):integer;
Var ADOSP:TADOStoredProc;
Begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_PercentOfLastPaidLoan';

  with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Accountid';
      Value :=Accountid;
    end;


  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@PercentOfLastPaid';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@PercentOfLastPaid').value;
end;

Procedure  Open_DailyAverage_All( YY:STRING;AccID:INTEGER);
 var ADOSP:TADOStoredProc;
 begin
  with dm,DailyAverage_All,parameters do
   begin
      Close;
      ParamByName('@Year').value:=YY;
      ParamByName('@ReportKind').value:=1;
      ParamByName('@AccountID').value:=AccID;
      Open;
   end;

end;

Procedure  Open_DailyAverage_Detail( YY:STRING;AccID:INTEGER);//ReportKind smallint
 var ADOSP:TADOStoredProc;
 begin
  with dm,DailyAverage_Detail,parameters do
   begin
      Close;
      ParamByName('@Year').value:=YY;
      ParamByName('@ReportKind').value:=2;
      ParamByName('@AccountID').value:=AccID;
      Open;
   end;

end;


Procedure  Open_PAY_BENEFIT_New(_YY:STRING;_AccountID:INTEGER;BENEFITPERCENT:Double;{InsertUserId:INT ,}InsertedMode:INTEGER);
Var ADOSP:TADOStoredProc;
Begin
  With dm,PAY_BENEFIT_New,parameters do
   Begin
      Close;
      ParamByName('@Year').value:=_YY;
      ParamByName('@AccountID').value:=_AccountID;
      ParamByName('@BENEFITPERCENT').value:=BENEFITPERCENT;
      ParamByName('@InsertUserId').value:=_Userid;
      ParamByName('@InsertedMode').value:=InsertedMode;
      Open;
   End;
end;

Procedure  Delete_PayedBenefit(_YY:STRING;_AccountID:INTEGER);
var ADOSP:TADOStoredProc;
Begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Delete_PayedBenefit';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@Year';
      size:= 4;
      Value :=_YY;
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=_AccountID;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;


Procedure  OPEN_REPORT_BENEFIT(_YY:STRING;_AccountID:INTEGER);
Var ADOSP:TADOStoredProc;
Begin
  With dm,REPORT_BENEFIT,parameters do
   Begin
      Close;
      ParamByName('@Year').value:=_YY;
      ParamByName('@AccountID').value:=_AccountID;
      Open;
   End;
end;

function ACCOUNT_IS_DOUBLICATE(AccountNo:string):integer;
var ADOSP:TADOStoredProc;

begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='ACCOUNT_IS_DOUBLICATE';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@AccountNo';
      size:= 20;
      Value :=AccountNo;

    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@IS_DOUBLICATE';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@IS_DOUBLICATE').value;
end;

FUNCTION Get_NotPaidLoanPayment(AccountID:INTEGER):INTEGER;
var ADOSP:TADOStoredProc;

begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_NotPaidLoanPayment';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftinteger;
      Direction := pdInput;
      Name:='@Accountid';
      Value :=AccountID;
    end;

    with ADOSP.Parameters.AddParameter do
    begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Count';
    end;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@Count').value;

end;

FUNCTION Get_NotPaidMounthlyPayment(AccountID:INTEGER):INTEGER;
var ADOSP:TADOStoredProc;

begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_NotPaidMounthlyPayment';

  With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftINTEGER;
      Direction := pdInput;
      Name:='@Accountid';
      Value :=AccountID;
    End;
    With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftinteger;
      Direction := pdoutput;
      Name:='@Count';
    End;

    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@Count').value;
end;

Procedure  Open_Report_DelayedLoanPayment( _LoanTypeID:Integer;_LoanNO:String;_AccountID:Integer;_GROUPBY:Integer;_dELAY,JustDelayedDocs:Integer;_TODATE:STRING;REMAINOFLOAN,Paid :Integer);
 begin
  with dm,SReport_DelayedLoanPayment,parameters do
   begin
      Close;
      ParamByName('@LoanTypeID').Value     :=_LoanTypeID;
      ParamByName('@LoanNO').Value         :=_LoanNO    ;
      ParamByName('@AccountID').Value      :=_AccountID ;
      ParamByName('@ShowDetail').Value     :=0          ;
      ParamByName('@GROUPBY').Value        :=_GROUPBY   ;
      ParamByName('@TODAY').Value          :=_TODATE    ;
      ParamByName('@DELAY').Value          :=_dELAY     ;
      ParamByName('@JustDelayedDocs').Value:=JustDelayedDocs ;
      ParamByName('@REMAINOFLOAN').Value:=REMAINOFLOAN ;
      ParamByName('@Paid').Value:=Paid ;
      Open;
   end;
end;

Procedure  Open_Report_DelayedLoanPayment_DETAIL(_LoanTypeID:Integer;_LoanNO:String;_AccountID:Integer;_GROUPBY,_dELAY,JustDelayedDocs:Integer;_TODATE:STRING;REMAINOFLOAN,Paid :Integer);
 begin     
  with dm,SReport_DelayedLoanPayment_DETAIL,parameters do
   begin
      Close;
      ParamByName('@LoanTypeID').Value:=_LoanTypeID;
      ParamByName('@LoanNO').Value:=_LoanNO;
      ParamByName('@AccountID').Value:=_AccountID;
      ParamByName('@ShowDetail').Value:=1;
      ParamByName('@GROUPBY').Value:=_GROUPBY;
      ParamByName('@TODATE').Value:=_Today;
      ParamByName('@dELAY').Value:=_dELAY;
      ParamByName('@JustDelayedDocs').Value:=JustDelayedDocs     ;
      ParamByName('@REMAINOFLOAN').Value:=REMAINOFLOAN ;
      ParamByName('@Paid').Value:=Paid ;
      Open;
   end;
end;

Procedure  Open_Report_Loan_New(where:string);
var s: string;
begin
  with Dm.Report_Loan_New,parameters do
   begin
    s:=sort;
    Close;
    ParamByName('@Where').value:=where;
    Open;
    sort:=s;
   end;
end;

Procedure  Open_AccDailyReport(_RepDate:string);
var S: string;
begin
  With Dm.AccDailyReport,parameters do
   begin
    Close;
    ParamByName('@_Date').value:=_RepDate;
    Open;
   end;
end;


Function  IsValidAccountIdForLoan(AccountID,Price:INTEGER):Boolean;
var SqlText :String;
Begin
   SqlText:='SELECT dbo.IsValidAccountIdForLoan('+IntToStr(AccountID)+','+INTToStr(Price)+')';
   IsValidAccountIdForLoan:=StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection));
end;


Function  IsValidAccountId(AccountID,Price:INTEGER):Boolean;
var SqlText :String;
Begin
   SqlText:='SELECT dbo.IsValidAccountId('+IntToStr(AccountID)+','+INTToStr(Price)+')';
   IsValidAccountId:=StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection));
end;

// Amin 1391/11/23 Function  IsValidAccountIdForGauruntor(AccountID,Price:INTEGER):Boolean;
Function  IsValidAccountIdForGauruntor(AccountID, GuarantorID, Price:INTEGER):Boolean; // Amin 1391/11/23
var SqlText :String;
Begin
   // Amin 1391/11/23 SqlText:='SELECT dbo.IsValidAccountIdForGauruntor('+IntToStr(AccountID)+','+INTToStr(Price)+')';
   SqlText:='SELECT dbo.IsValidAccountIdForGauruntor('+IntToStr(AccountID)+', ' + IntToStr(GuarantorID) + ', '+INTToStr(Price)+')'; // Amin 1391/11/23 
   IsValidAccountIdForGauruntor:=StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection));
end;

Function  IsValidPresenter(AccountId ,ContactID ,AccountPresenterId:Integer):Boolean;
var SqlText :String;
Begin
   SqlText:='SELECT dbo.IsValidPresenter('+IntToStr(AccountId)+' , '+IntToStr(ContactID)+' , '+IntToStr(AccountPresenterId)+')';
   IsValidPresenter:=StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection));
end;

Function  PercentofGauranty(LoanID:INTEGER):INTEGER;
var SqlText :String;
Begin
   SqlText:=' SELECT ISNULL((SELECT  100-SUM(ISNULL(PercentofGauranty,0)) FROM  LoanGaurantor WHERE LoanID='+INTTOSTR(LoanID)+'),100) ';
   PercentofGauranty:=StrToINT(Qry_GetResult(SqlText,Dm.YeganehConnection));
end;



procedure LoanGrtLimite; //«⁄„«· „ÕœÊœÌ  œ— ÷«„‰ ‘œ‰ ⁄÷ÊÂ«
Var
   LoanGrtCount1,LoanGrtCount2 : Integer;
   LoanGrtPrice1,LoanGrtPrice2,TempPrice:Double;
begin


   {Ranjbar}
   //„ÕœÊœÌ  ÷«„‰ ‘œ‰
   Case Get_SystemSetting('LoanGrt') of
      //0: »œÊ‰ „ÕœÊœÌ 
      1: begin //÷«„‰ ‘œ‰ »— «”«”  ⁄œ«œ Ê«„
            Try
               DM.QrGetLoanGrtCount.Close;
               DM.QrGetLoanGrtCount.Parameters.ParamByName('ContactID').Value := _FoundContactID;
               DM.QrGetLoanGrtCount.Open;
               LoanGrtCount1 := DM.QrGetLoanGrtCountLoanGaurantorCount.AsInteger;
               LoanGrtCount2 := Get_SystemSetting('LoanGrtCount');
               if LoanGrtCount1+1 > LoanGrtCount2 then //+1: »«»  Ê«„ ÃœÌœ
               begin
                  ShowMyMessage('ÅÌ€«„','  ÊÃÂ: ⁄÷ÊÂ« ‰„Ì  Ê«‰‰œ »Ì‘ — «“ '+IntToStr(LoanGrtCount1)+' »«— ÷«„‰ ‘Ê‰œ ',[mbOK],mtInformation);
                  Abort;
               end;
            Finally
               DM.QrGetLoanGrtCount.Close;
            End;
         end;
      2: begin //÷«„‰ ‘œ‰ »— «”«” „»·€ Ê«„
            Try
               DM.QrGetLoanGrtPrice.Close;
               DM.QrGetLoanGrtPrice.Parameters.ParamByName('ContactID').Value := _FoundContactID;
               DM.QrGetLoanGrtPrice.Open;
               LoanGrtPrice1 := DM.QrGetLoanGrtPriceLoanGaurantorPrice.AsInteger;
               TempPrice     := DM.QrGetLoanGrtPriceLoanGaurantorPrice.AsInteger + Dm.Select_LoanAmount.AsInteger{„»·€ Ê«„ ÃœÌœ};
               LoanGrtPrice2 := Get_SystemSetting('LoanGrtPrice');
               if TempPrice > LoanGrtPrice2 then
               begin
                  ShowMyMessage('ÅÌ€«„',' Ã„⁄ „»·€ Ê«„Â«ÌÌ ﬂÂ «Ì‰ ⁄÷Ê ÷«„‰ ¬‰ ‘œÂ «”  '
                                +' ' +Get_SystemSetting('EdtMoneyUnit')+' '+
                                      FloatToStr(LoanGrtPrice1) + ' „Ì»«‘œ Ê ⁄÷ÊÂ« œÌê— ‰„Ì   Ê«‰‰œ »Ì‘ — «“ „»·€ '
                                +' ' +Get_SystemSetting('EdtMoneyUnit')+' '+
                     FloatToStr(LoanGrtPrice2) + '  ÷«„‰ ‘Ê‰œ ',[mbOK],mtInformation);
                  Abort;
               end;
            Finally
               DM.QrGetLoanGrtCount.Close;
            End;
         end;
   end;
end;
Function CanChangeTheMonthlyPayment(ForcePaymentID,ParentID:Integer;MatureDate:STRING):BOOLEAN;
Var SqlText:String;
Begin
   SqlText:=' SELECT ForceType.FoceTypeTitle, ForcePayment.MatureDate '+
            ' FROM   ForcePayment INNER JOIN '+
            '        ForceType ON ForcePayment.ForceTypeID = ForceType.FoceTypeID '+
            ' WHERE (ForcePayment.ForceTypeID = 2) AND '+
            '       (ForcePayment.ParentID='+INTTOSTR(ParentID)+') AND '+
            '       (ForcePayment.ForcePaymentID <> '+INTTOSTR(ForcePaymentID)+') AND '+
            '       (SUBSTRING(ForcePayment.MatureDate,1,7)=SUBSTRING('''+MatureDate+''',1,7) )';


   IF Qry_GetResult(SqlText,Dm.YeganehConnection)='' THEN
     CanChangeTheMonthlyPayment:=TRUE
   ELSE
     CanChangeTheMonthlyPayment:=FALSE;
end;
Function CanChangeTheInvestmentPayment(ForcePaymentID,ParentID:Integer;MatureDate:STRING):BOOLEAN;
Var SqlText:String;
Begin
   SqlText:=' SELECT ForceType.FoceTypeTitle, ForcePayment.MatureDate '+
            ' FROM   ForcePayment INNER JOIN '+
            '        ForceType ON ForcePayment.ForceTypeID = ForceType.FoceTypeID '+
            ' WHERE (ForcePayment.ForceTypeID = 1) AND '+
            '       (ForcePayment.ParentID='+INTTOSTR(ParentID)+') AND '+
            '       (ForcePayment.ForcePaymentID <> '+INTTOSTR(ForcePaymentID)+') AND '+
            '       (ForcePayment.MatureDate='''+MatureDate+''')';


   IF Qry_GetResult(SqlText,Dm.YeganehConnection)='' THEN
     CanChangeTheInvestmentPayment:=TRUE
   ELSE
     CanChangeTheInvestmentPayment:=FALSE;
end;

Function CanChangeTheAccountNo(ACCOUNTID:INTEGER):BOOLEAN;
Var SqlText:String;
Begin
   SqlText:=' SELECT DBO.PUREBALANCE('+INTTOSTR(ACCOUNTID)+',''9'') ';


   IF Qry_GetResult(SqlText,Dm.YeganehConnection)<>'0' THEN
     CanChangeTheAccountNo:=FALSE
   ELSE
     CanChangeTheAccountNo:=TRUE;
end;

Procedure  Open_Perfraj(Line:INTEGER;
                                    ChBoDocNo_1,
                                    ChBoAccountNo_1,
                                    ChBoAccountTitle_1 ,
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
                                    ChBoSumBenefitPrice_H_2:STRING);
begin
  with Dm.sp_ShowPerfraj,parameters do
   begin
    Close;
    ParamByName('@Line').Value:=Line;

    ParamByName('@ChBoDocNo_1').Value:=ChBoDocNo_1;
    ParamByName('@ChBoAccountNo_1').Value:=ChBoAccountNo_1;
    ParamByName('@ChBoAccountTitle_1').Value:=ChBoAccountTitle_1;
    ParamByName('@ChBoDate_1').Value:=ChBoDate_1;
    ParamByName('@ChBoDesc_1').Value:=ChBoDesc_1;
    ParamByName('@ChBoCredit_1').Value:=ChBoCredit_1;
    ParamByName('@ChBoCredit_H_1').Value:=ChBoCredit_H_1;
    ParamByName('@ChBoDebit_1').Value:=ChBoDebit_1;
    ParamByName('@ChBoDebit_H_1').Value:=ChBoDebit_H_1;
    ParamByName('@ChBoDebCrd_1').Value:=ChBoDebCrd_1;
    ParamByName('@ChBoDebCrd_H_1').Value:=ChBoDebCrd_H_1;
    ParamByName('@ChBoRemain_1').Value:=ChBoRemain_1;
    ParamByName('@ChBoRemain_H_1').Value:=ChBoRemain_H_1;
    ParamByName('@ChBoBenefit_1').Value:=ChBoBenefit_1;
    ParamByName('@ChBoBenefit_H_1').Value:=ChBoBenefit_H_1;
    ParamByName('@ChBoSumBenefitPrice_1').Value:=ChBoSumBenefitPrice_1;
    ParamByName('@ChBoSumBenefitPrice_H_1').Value:=ChBoSumBenefitPrice_H_1;

    ParamByName('@ChBoDocNo_2').Value:=ChBoDocNo_2;
    ParamByName('@ChBoAccountNo_2').Value:=ChBoAccountNo_2;
    ParamByName('@ChBoAccountTitle_2').Value:=ChBoAccountTitle_2;
    ParamByName('@ChBoDate_2').Value:=ChBoDate_2;
    ParamByName('@ChBoDesc_2').Value:=ChBoDesc_2;
    ParamByName('@ChBoCredit_2').Value:=ChBoCredit_2;
    ParamByName('@ChBoCredit_H_2').Value:=ChBoCredit_H_2;
    ParamByName('@ChBoDebit_2').Value:=ChBoDebit_2;
    ParamByName('@ChBoDebit_H_2').Value:=ChBoDebit_H_2;
    ParamByName('@ChBoDebCrd_2').Value:=ChBoDebCrd_2;
    ParamByName('@ChBoDebCrd_H_2').Value:=ChBoDebCrd_H_2;
    ParamByName('@ChBoRemain_2').Value:=ChBoRemain_2;
    ParamByName('@ChBoRemain_H_2').Value:=ChBoRemain_H_2;
    ParamByName('@ChBoBenefit_2').Value:=ChBoBenefit_2;
    ParamByName('@ChBoBenefit_H_2').Value:=ChBoBenefit_H_2;
    ParamByName('@ChBoSumBenefitPrice_2').Value:=ChBoSumBenefitPrice_2;
    ParamByName('@ChBoSumBenefitPrice_H_2').Value:=ChBoSumBenefitPrice_H_2;

    Open;
   end;
end;

Procedure  Open_Perfraj(Line:INTEGER;
                                    ChBoDocNo_1,
                                    ChBoAccountNo_1,
                                    ChBoAccountTitle_1 ,
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
                                    ChBoSumBenefitPrice_H_2,
                                    chBoRealRemine:STRING);
begin
  with Dm.sp_show_proferaj_with_Remain,parameters do
   begin
    Close;
    ParamByName('@Line').Value:=Line;
    ParamByName('@ChBoDocNo_1').Value:=ChBoDocNo_1;
    ParamByName('@ChBoAccountNo_1').Value:=ChBoAccountNo_1;
    ParamByName('@ChBoAccountTitle_1').Value:=ChBoAccountTitle_1;
    ParamByName('@ChBoDate_1').Value:=ChBoDate_1;
    ParamByName('@ChBoDesc_1').Value:=ChBoDesc_1;
    ParamByName('@ChBoCredit_1').Value:=ChBoCredit_1;
    ParamByName('@ChBoCredit_H_1').Value:=ChBoCredit_H_1;
    ParamByName('@ChBoDebit_1').Value:=ChBoDebit_1;
    ParamByName('@ChBoDebit_H_1').Value:=ChBoDebit_H_1;
    ParamByName('@ChBoDebCrd_1').Value:=ChBoDebCrd_1;
    ParamByName('@ChBoDebCrd_H_1').Value:=ChBoDebCrd_H_1;
    ParamByName('@ChBoRemain_1').Value:=ChBoRemain_1;
    ParamByName('@ChBoRemain_H_1').Value:=ChBoRemain_H_1;
    ParamByName('@ChBoRealRemain_1').Value:=chBoRealRemine;
    ParamByName('@ChBoRealRemain_H_1').Value:=chBoRealRemine;
    ParamByName('@ChBoBenefit_1').Value:=ChBoBenefit_1;
    ParamByName('@ChBoBenefit_H_1').Value:=ChBoBenefit_H_1;
    ParamByName('@ChBoSumBenefitPrice_1').Value:=ChBoSumBenefitPrice_1;
    ParamByName('@ChBoSumBenefitPrice_H_1').Value:=ChBoSumBenefitPrice_H_1;

    ParamByName('@ChBoDocNo_2').Value:=ChBoDocNo_2;
    ParamByName('@ChBoAccountNo_2').Value:=ChBoAccountNo_2;
    ParamByName('@ChBoAccountTitle_2').Value:=ChBoAccountTitle_2;
    ParamByName('@ChBoDate_2').Value:=ChBoDate_2;
    ParamByName('@ChBoDesc_2').Value:=ChBoDesc_2;
    ParamByName('@ChBoCredit_2').Value:=ChBoCredit_2;
    ParamByName('@ChBoCredit_H_2').Value:=ChBoCredit_H_2;
    ParamByName('@ChBoDebit_2').Value:=ChBoDebit_2;
    ParamByName('@ChBoDebit_H_2').Value:=ChBoDebit_H_2;
    ParamByName('@ChBoDebCrd_2').Value:=ChBoDebCrd_2;
    ParamByName('@ChBoDebCrd_H_2').Value:=ChBoDebCrd_H_2;
    ParamByName('@ChBoRemain_2').Value:=ChBoRemain_2;
    ParamByName('@ChBoRemain_H_2').Value:=ChBoRemain_H_2;
    ParamByName('@ChBoRealRemain_2').Value:=chBoRealRemine;
    ParamByName('@ChBoRealRemain_H_2').Value:=chBoRealRemine;
    ParamByName('@ChBoBenefit_2').Value:=ChBoBenefit_2;
    ParamByName('@ChBoBenefit_H_2').Value:=ChBoBenefit_H_2;
    ParamByName('@ChBoSumBenefitPrice_2').Value:=ChBoSumBenefitPrice_2;
    ParamByName('@ChBoSumBenefitPrice_H_2').Value:=ChBoSumBenefitPrice_H_2;

    Open;
   end;
end;

function Get_AccountNo_ByAccountId(AccountId:Integer):String;
var ADOSP:TADOStoredProc;
  s: Widestring;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_AccountNO_ByAccountID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      size:= 20;
      Name:='@AccountNO';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@AccountNO').Value;
end;

function Get_AccountTitle_ByAccountId(AccountId:Integer):String;
var ADOSP:TADOStoredProc;
  s: Widestring;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='Get_AccountTitle_ByAccountID';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftInteger;
      Direction := pdInput;
      Name:='@AccountID';
      Value :=AccountId;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdoutput;
      size:= 50;
      Name:='@AccountTitle';
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@AccountTitle').Value;
end;

Procedure OpenSp_ShowBill(PaymentId:Integer);
var ADOSP:TADOStoredProc;
begin
  with Dm.Sp_ShowBill,parameters do
   begin
    Close;
    ParamByName('@PaymentID').value:=PaymentID;
    Open;
   end;
end;

PROCEDURE OpenSp_RepTotalPayment( GroupId:INTEGER ;
                                  FirstDocNo,
                                  LastDocNo ,
                       				    BeginDate,
                        				  EndDate:STRING);
BEGIN
  With Dm.RepTotalPayment,parameters DO
   Begin
      Close;
      ParamByName('@GroupId').value:=GroupId;
      ParamByName('@FirstDocNo').value:=FirstDocNo;
      ParamByName('@LastDocNo').value:=LastDocNo;
      ParamByName('@BeginDate').value:=BeginDate;
      ParamByName('@EndDate').value:=EndDate;
      Open;
   End;

END;

procedure ReplaceOFTwoInteger(FromInput,ToInput:integer;var FromOutput,ToOutput:integer);
begin
   IF (FromInput>ToInput)Then
   begin
     FromOutput:=ToInput;
     ToOutput:= FromInput;
   end
   else
   begin
     FromOutput:=FromInput;
     ToOutput:=ToInput;
   end;
end;

procedure ReplaceOFDate(FromDate,ToDate:String;var FromDateOutput,ToDateOutput:String);
begin
   IF  FromDate>ToDate then
   begin
     FromDateOutput:=ToDate;
     ToDateOutput:= FromDate;
   end
   else
   begin
     FromDateOutput:=FromDate;
     ToDateOutput:= ToDate;
   end;
end;

Function GetReportName(ObjectName,DefultReportName:String):String;
VAR OpenDialog:TOpenDialog;
Begin
  FrAddReportName:=TFrAddReportName.Create(NIL);
  DM.ReportsName.Filtered:=True;
  DM.ReportsName.Filter:='ObjectName='''+ObjectName+'''';
  FrAddReportName.ShowModal;
  GetReportName:=DefultReportName;
  IF FrAddReportName.ModalResult=mrok THEN
    GetReportName:=DM.ReportsNameReportName.AsString;

  DM.ReportsName.Filtered:=False;
  DM.ReportsName.Filter:='';
End;

PROCEDURE OpenSp_ForTest;
BEGIN
  With Dm.sp_ForTest DO
   Begin
      Close;
      Open;
   End;

END;
Procedure Rep_LoadFile_New(afrxReport:TfrxReport;aFileName,BtnName:String);
Var
   FN ,RepDir : String;
begin
   RepDir := ExtractFilePath(Application.ExeName)+'Reports';
   if not DirectoryExists(RepDir) then
      CreateDir(RepDir);
   FN := RepDir+'\'+GetReportName(BtnName,aFileName);
   if Not FileExists(FN) then
      afrxReport.SaveToFile(FN)
   else
      begin
         afrxReport.Clear;
         afrxReport.LoadFromFile(FN);
      end;
end;


function CountOfLoanForEachGaurantor(GaurantorContactID:INTEGER):INTEGER;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='CountOfLoanForEachGaurantor';

  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftInteger;
        Direction := pdInput;
        Name:='@GaurantorContactID';
        Value :=GaurantorContactID;
    End;

  With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftInteger;
      Direction := pdoutput;
      Name:='@Result';
    End;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@Result').value;
End;
function TotalPriceOfLoanForEachGaurantor(GaurantorContactID:INTEGER):DOUBLE;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='TotalPriceOfLoanForEachGaurantor';

  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftInteger;
        Direction := pdInput;
        Name:='@GaurantorContactID';
        Value :=GaurantorContactID;
    End;

  With ADOSP.Parameters.AddParameter do
    Begin
      DataType := ftFloat;
      Direction := pdoutput;
      Name:='@Result';
    End;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
    Result:=ADOSP.Parameters.ParamByname('@Result').value;
End;

procedure  IsValidGaurantor( Gaurantor_ContactID,LoanId:Integer;Var MessageText:String;Var IsValidGaurantorResult:boolean );
var SqlText :String;
Begin
   IsValidGaurantorResult:=True;

   SqlText:='SELECT dbo.IsValidGaurantor('+IntToStr(Gaurantor_ContactID)+','+INTToStr(LoanId)+')';
   if not StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection)) then
   begin
      IsValidGaurantorResult:=False;
      MessageText:='«Ì‰ ÷«„‰ ﬁ»·« »—«Ì «Ì‰ Ê«„ «‰ Œ«» ‘œÂ «”  °«‰ Œ«» „Ãœœ €Ì— „Ã«“ «” .';
   end
   else//StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection))
   begin
      IF Get_SystemSetting('LoanGrt')='0' THEN // ÷«„‰ »œÊ‰ „ÕœÊœÌ 
      BEGIN
         IsValidGaurantorResult:=TRUE
      END
      Else
      BEGIN
            IF (Get_SystemSetting('LoanGrt')='1') THEN // ÷«„‰ ‘œ‰ »— «”«”  ⁄œ«œ Ê«„
            BEGIN
                IF (CountOfLoanForEachGaurantor(Gaurantor_ContactID)> Get_SystemSetting('LoanGrtCount')) THEN // ⁄œ«œ Ê«„
                   BEGIN
                      IsValidGaurantorResult:=False;
                      MessageText:='„Ã«“ »Â «‰ Œ«» ÷«„‰ Ã«—Ì ‰Ì” Ìœ »Â œ·Ì· ¬‰òÂ   ⁄œ«œ Ê«„ „Ã«“ »—«Ì Â— ÷«„‰ '+Get_SystemSetting('LoanGrtCount')+' ⁄œœ „Ì »«‘œ Ê ÷«„‰ Ã«—Ì '+#13
                                   +' »Â  ⁄œ«œ  '+inttostr(CountOfLoanForEachGaurantor(Gaurantor_ContactID))+' Ê«„ ÷„«‰  —«  ﬁ»· ‰„ÊœÂ «‰œ. ';
                      Exit;
                   END

            END
            Else IF Get_SystemSetting('LoanGrt')='2' THEN   // ÷«„‰ ‘œ‰ »— «”«” „»·€ Ê«„
            BEGIN
               IF TotalPriceOfLoanForEachGaurantor(Gaurantor_ContactID)>Get_SystemSetting('LoanGrtPrice') THEN//Õœ«òÀ— „»·€ Ê«„
                   BEGIN
                      IsValidGaurantorResult:=False;
                      MessageText:='„Ã«“ »Â «‰ Œ«» ÷«„‰ Ã«—Ì ‰Ì” Ìœ »Â œ·Ì· ¬‰òÂ Õœ«òÀ— ò· „»·€ Ê«„ ÃÂ  ÷„«‰   ' +Get_SystemSetting('LoanGrtPrice')+' —Ì«· „Ì »«‘œ '+#13+
                                   'œ— ’Ê— ÌòÂ ÷«„‰ Ã«—Ì »«  ﬁ»· «Ì‰ Ê«„ Ã„⁄ „»·€ ÷„«‰  »Â   '+
                                   FloatToStr(TotalPriceOfLoanForEachGaurantor(Gaurantor_ContactID)+StrToFloat(Get_SystemSetting('LoanGrtPrice'))) +' —Ì«· ŒÊ«Âœ —”Ìœ ';
                      Exit;
                   END

            END;
            // Amin 1391/11/23 IF NOT   IsValidAccountIdForGauruntor(Get_AccountID_ByContactID(Gaurantor_ContactID),Dm.Select_LoanAmount.AsInteger)  THEN
            IF NOT   IsValidAccountIdForGauruntor(Get_AccountID_ByContactID(Gaurantor_ContactID), Gaurantor_ContactID, Dm.Select_LoanAmount.AsInteger)  THEN // Amin 1391/11/23
            BEGIN
                IsValidGaurantorResult:=False;
                MessageText:='„ÊÃÊœÌ ÷«„‰ «‰ Œ«» ‘œÂ ° ÃÂ  ÷„«‰  ò«›Ì ‰Ì”  ';
            END
      END;
   end;//StrToBool(Qry_GetResult(SqlText,Dm.YeganehConnection))
End;

procedure UpdateForcePaymentAfterInsertFromExcel(PaymentID,ParentID,AMOUNT:Integer;MatureDate:STRING;SwInsert:boolean);
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='UpdateForcePaymentAfterInsertFromExcel';


  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftInteger;
        Direction := pdInput;
        Name:='@PaymentID';
        Value :=PaymentID;
    End;
  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftInteger;
        Direction := pdInput;
        Name:='@ParentID';
        Value :=ParentID;
    End;
  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftString;
        Direction := pdInput;
        Name:='@AMOUNT';
        Value :=AMOUNT;
    End;

  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftString;
        Direction := pdInput;
        size:= 10;
        Name:='@MatureDate';
        Value :=MatureDate;
    End;

  With ADOSP.Parameters.AddParameter do
    Begin
        DataType := ftString;
        Direction := pdInput;
        size:= 1;
        Name:='@SwInsert';
        IF SwInsert THEN
        Value :=1
        ELSE
        Value :=0;

    End;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;

Function IsMemberOfCash( FoundContactID :Integer ):BOOLEAN;
Var SqlText:String;
Begin
   SqlText:=' SELECT Contact.ContactID, Account.AccountID, Account.AccountTitle, Account.AccountNo '+
            ' FROM   Contact INNER JOIN '+
            '        Account ON Contact.ContactID = Account.ContactID '+
            ' WHERE     (Contact.ContactTypeID = 1) and Contact.ContactID='+inttostr(FoundContactID);




   IF Qry_GetResult(SqlText,Dm.YeganehConnection)='' THEN
     IsMemberOfCash:=False
   ELSE
     IsMemberOfCash:=True;
end;

// HNaseri  91/04/13
Procedure  Open_Report_LoanPointByNaseri(today : string);
begin
  with Dm.Report_LoanPointByNaseri,parameters do
   begin
    Close;
    ParamByName('@today').value:=today;
    Open;
   end;
end;

function GetIPFromHost(var HostName, IPaddr, WSAErr: string): Boolean;
type
   Name = array[0..100] of Char;
   PName = ^Name;
var 
   HEnt: pHostEnt;
   HName: PName;
   WSAData: TWSAData;
   i: Integer;
begin
   Result := False;
   if WSAStartup($0101, WSAData) <> 0 then
   begin
      WSAErr := 'Winsock is not responding."';
      Exit;
   end;

   IPaddr := '';
   New(HName);
   if GetHostName(HName^, SizeOf(Name)) = 0 then
   begin
      HostName := StrPas(HName^);
      HEnt := GetHostByName(HName^);
      for i := 0 to HEnt^.h_length - 1 do
         IPaddr := Concat(IPaddr, IntToStr(Ord(HEnt^.h_addr_list^[i])) + '.');

      SetLength(IPaddr, Length(IPaddr) - 1);
      Result := True;
   end
   else
   begin
      case WSAGetLastError of
      WSANOTINITIALISED:WSAErr:='WSANotInitialised';
      WSAENETDOWN :WSAErr:='WSAENetDown';
      WSAEINPROGRESS :WSAErr:='WSAEInProgress';
      end;
   end;

   Dispose(HName);
   WSACleanup;
end;

function NumStrToCommaStr(Num: string):string;
var
   str,str2 : string;
begin
   str := Replace(num,',','');
   while StrLen(pchar(str))>0 do
   begin
      str2 :=','+copy(str,StrLen(pchar(str))-2,3)+str2;
      str := copy(str,1,StrLen(pchar(str))-3);
   end;
   if copy(str2,1,1)=',' then
      str2 := copy(str2,2,StrLen(pchar(str2))-1);
   Result := str2;
end;

function GetSystemSetting(VariableName:string):Variant;
 var ADOSP:TADOStoredProc;
 begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='GetSystemSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWideString;
      Direction := pdoutput;
      Name:='@Value';
      size:= 510;
    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
   Result:=ADOSP.Parameters.ParamByname('@Value').value;
   if Result='Not Found' then
    begin
//      ShowMessage('„‘Œ’ ‰Ì” !'+VariableName+ '„ﬁœ«— „ €ÌÌ— ”Ì” „Ì ' );
    Result:='0';
    end;
end;

Procedure  SetSystemSetting(VariableName:string;_Value:Variant);
 var ADOSP:TADOStoredProc;
begin
  ADOSP:=TADOStoredProc.create(nil);
  ADOSP.ProcedureName:='SetSystemSetting';

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftstring;
      Direction := pdInput;
      Name:='@VariableName';
      size:= 50;
      Value :=VariableName;

    end;

  with ADOSP.Parameters.AddParameter do
      begin
      DataType := ftWideString;
      Direction := pdInput;
      Name:='@Value';
      size:= 510;
      Value :=_Value;

    end;
    ADOSP.Connection:=dm.YeganehConnection;
    ADOSP.ExecProc;
end;
(*
 begin

*)

End.

