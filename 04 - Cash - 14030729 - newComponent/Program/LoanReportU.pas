unit LoanReportU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, Buttons, StdCtrls, ExtCtrls, ComCtrls,
  Menus, ActnList, Grids, DBGrids, DBCtrls, YDbgrid, YWhereEdit, DB, Mask,
  ADODB, SolarCalendarPackage, AdvGlowButton;

type
  TFrLoanReport = class(TYBaseForm)
    PageControl1: TPageControl;
    TshVam: TTabSheet;
    TshPeyment: TTabSheet;
    Panel7: TPanel;
    Panel6: TPanel;
    YDBGrid1: TYDBGrid;
    Panel5: TPanel;
    Label4: TLabel;
    DBText1: TDBText;
    YDBGrid2: TYDBGrid;
    DReport_DelayedLoanPayment_DETAIL: TDataSource;
    DReport_DelayedLoanPayment: TDataSource;
    Panel8: TPanel;
    YDBGrid3: TYDBGrid;
    dREPORT_LOAN_New: TDataSource;
    Panel4: TPanel;
    Label5: TLabel;
    SpeedButton6: TAdvGlowButton;
    Label15: TLabel;
    Label8: TLabel;
    EdtAccountNo: TEdit;
    edLoanType: TYWhereEdit;
    SpeedButton5: TAdvGlowButton;
    edLoanNo: TEdit;
    PanelGroup: TPanel;
    Rb: TLabel;
    RBLoanNo: TRadioButton;
    RbAccountNo: TRadioButton;
    RB_sh: TBevel;
    PanelDelay: TPanel;
    lbPaymentDelay: TLabel;
    edPaymentDelay: TEdit;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    BitBtn3: TAdvGlowButton;
    BitBtn4: TAdvGlowButton;
    BitBtn5: TAdvGlowButton;
    Label1: TLabel;
    Label2: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    mEdtDate: TSolarDatePicker;
    Label3: TLabel;
    RBRemainOfLoan_0: TRadioButton;
    RBRemainOfLoan_Not0: TRadioButton;
    RBAllLoan: TRadioButton;
    RBPaymentNotPayed: TRadioButton;
    RBPaymentPayed: TRadioButton;
    RbAllPayment: TRadioButton;
    pnlMain: TPanel;
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DReport_DelayedLoanPaymentDataChange(Sender: TObject;Field: TField);
    procedure PageControl1Changing(Sender: TObject;var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure AExitExecute(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
  Grp_Tmp,AccountID_Tmp,Delay_Tmp,LoanType_Tmp:Integer;
  LoanNo_Tmp:STRING;
  public
    { Public declarations }
    function SetRemainOfLoan:integer;
    function SetPaid:integer;
  end;

var
  FrLoanReport: TFrLoanReport;

implementation

uses dmu, BusinessLayer, DateUtils, YShamsiDate;

{$R *.dfm}

function TFrLoanReport.SetRemainOfLoan:integer;
begin
  SetRemainOfLoan := 2;
  if RBRemainOfLoan_0.Checked then
    SetRemainOfLoan := 0;
  if RBRemainOfLoan_Not0.Checked then
    SetRemainOfLoan := 1;
  if RBAllLoan.Checked then
    SetRemainOfLoan := 2;
end;

function TFrLoanReport.SetPaid:integer;
begin
  SetPaid := 2;

  if RBPaymentPayed.Checked then
    SetPaid := 1;
  if RBPaymentNotPayed.Checked then
    SetPaid := 0;
  IF RbAllPayment.Checked then
    SetPaid := 2;
end;

procedure TFrLoanReport.SpeedButton6Click(Sender: TObject);
var
  WHERE_Tmp,S : String;
  _JustDPTmp, _RemainOfLoan,_Paid:Integer;
begin
  inherited;
  S := mEdtDate.Text;
  if not isValidDate(S) then
  begin
    ShowMyMessage('íÛÇã','ãÞÏÇÑ ÝíáÏ ÊÇÑíÎ ÇÔÊÈÇå ãíÈÇÔÏ',[mbOK],mtInformation);
    Abort;
  end;

  WHERE_Tmp:=' 1=1 ';
  YDBGrid1.Columns[3].Visible:=RBLoanNo.Checked ;
  YDBGrid1.Columns[4].Visible:=RBLoanNo.Checked ;
  YDBGrid1.Columns[5].Visible:=RbAccountNo.Checked ;
  if RBLoanNo.Checked then
   Grp_Tmp:=1
  else if RbAccountNo.Checked then
   Grp_Tmp:=2;

  if Trim(EdtAccountNo.Text)='' then
    AccountID_Tmp:=0
  else
  begin
    AccountID_Tmp:=Get_AccountID_ByAccountNo(EdtAccountNo.Text);
    WHERE_Tmp:=WHERE_Tmp+' AND  Account.AccountID= '+inttostr(AccountID_Tmp);
  end;

  if Trim(edLoanNo.Text)='' then
    LoanNo_Tmp:='0'
  else
  begin
    LoanNo_Tmp:=TRIM(edLoanNo.Text);
    WHERE_Tmp := WHERE_Tmp+' AND  Loan.LOANNO= '+LoanNo_Tmp;
  end;

  if Trim(edPaymentDelay.Text)='' then
    Delay_Tmp :=0
  else
    Delay_Tmp :=StrToInt(TRIM(edPaymentDelay.Text));

  if Trim(edLoanType.Text)='' then
    LoanType_Tmp:=0
  else
  begin
    LoanType_Tmp:=StrToInt(TRIM(edLoanType.Text));
    WHERE_Tmp := WHERE_Tmp+' AND Loan.LoanTypeID= '+inttostr(LoanType_Tmp);
  end;

  _JustDPTmp:=0;
  Open_Report_DelayedLoanPayment( LoanType_Tmp  ,
                                  LoanNo_Tmp    ,
                                  AccountID_Tmp ,
                                  Grp_Tmp       ,
                                  Delay_Tmp,
                                  _JustDPTmp,
                                  mEdtDate.Text,SetRemainOfLoan,SetPaid
                                  );
  Open_Report_Loan_New(WHERE_Tmp);
end;

procedure TFrLoanReport.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  Dm.SearchTable(dm.LoanType,'LoanTypeid','LoanTypeTitle');
  if Dm.SearchResult>0 then
    edLoanType.Text:=IntToStr(dm.SearchResult);
end;

procedure TFrLoanReport.DReport_DelayedLoanPaymentDataChange(
  Sender: TObject; Field: TField);
  VAR _JustDPTmp:Integer;
begin

  inherited;
//  IF chBdELAYEDPeyment.Checked Then
     _JustDPTmp:=0;
//  Else
//     _JustDPTmp:=1 ;

  if (DM.SReport_DelayedLoanPayment.Active) then
    if not (DM.SReport_DelayedLoanPayment.IsEmpty) then
      if (not DM.SReport_DelayedLoanPaymentACCOUNTID.IsNull) then
        Open_Report_DelayedLoanPayment_DETAIL(0,'0',DM.SReport_DelayedLoanPaymentACCOUNTID.AsInteger,0,Delay_Tmp,_JustDPTmp,mEdtDate.Text,SetRemainOfLoan ,SetPaid);

  if DM.SReport_DelayedLoanPayment.IsEmpty then
    Open_Report_DelayedLoanPayment_DETAIL(0,'0',-1,0,Delay_Tmp,_JustDPTmp,mEdtDate.Text,SetRemainOfLoan ,SetPaid);

end;

procedure TFrLoanReport.PageControl1Changing(Sender:TObject;var AllowChange:Boolean);
  var _AccId_Tmp:integer;_AccNo_Tmp:String;
begin
  inherited;
  if PageControl1.ActivePage=TshVam then
  begin
    PanelDelay.Visible:=True;
    PanelGroup.Visible:=True;
    if not dm.REPORT_LOAN_New.IsEmpty then
    begin
       _AccId_Tmp:=Get_AccountID_ByAccountNo(dm.REPORT_LOAN_NewACCOUNTNO.AsString);
       DM.SReport_DelayedLoanPayment.Locate('AccountId',_AccId_Tmp,[])
    end;
  end
  else
  begin
    PanelDelay.Visible:=False;
    PanelGroup.Visible:=False;
    if not dm.SReport_DelayedLoanPayment.IsEmpty then
    begin
      _AccNo_Tmp:=dm.SReport_DelayedLoanPaymentACCOUNTNo.Asstring;
      DM.REPORT_LOAN_New.Locate('AccountNo',_AccNo_Tmp,[])
    end;
  end;
end;

procedure TFrLoanReport.FormShow(Sender: TObject);
begin
  inherited;
  PageControl1.ActivePage:=TshPeyment;
  mEdtDate.Text:=_Today;
end;

procedure TFrLoanReport.AExitExecute(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFrLoanReport.BitBtn4Click(Sender: TObject);
begin
  inherited;
  YDBGrid1.ExportToExcel;
end;

procedure TFrLoanReport.BitBtn2Click(Sender: TObject);
begin
  inherited;
  YDBGrid3.ExportToExcel;
end;

procedure TFrLoanReport.BitBtn5Click(Sender: TObject);
begin
  inherited;
  YDBGrid2.ExportToExcel;
end;

end.
