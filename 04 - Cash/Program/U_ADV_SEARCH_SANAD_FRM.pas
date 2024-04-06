unit U_ADV_SEARCH_SANAD_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, SolarCalendarPackage, Buttons, Grids, DBGrids, DB,
  ADODB, YDbgrid;

type
  TADV_SEARCH_SANAD_FRM = class(TForm)
    Label1: TLabel;
    DOC_NO: TEdit;
    Label2: TLabel;
    AZ_DATE: TSolarDatePicker;
    Label3: TLabel;
    TA_DATE: TSolarDatePicker;
    CHK_DATE: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DataSource1: TDataSource;
    YDBGrid1: TYDBGrid;
    ADOStoredProc1: TADOStoredProc;
    ADOStoredProc1PaymentID: TAutoIncField;
    ADOStoredProc1CreditorAccountID: TIntegerField;
    ADOStoredProc1DebtorAccountID: TIntegerField;
    ADOStoredProc1Date: TWideStringField;
    ADOStoredProc1Time: TWideStringField;
    ADOStoredProc1Amount: TLargeintField;
    ADOStoredProc1Comment: TStringField;
    ADOStoredProc1FinancialNoteID: TIntegerField;
    ADOStoredProc1InsertUserID: TIntegerField;
    ADOStoredProc1InsertDate: TStringField;
    ADOStoredProc1LastUpDate: TStringField;
    ADOStoredProc1LastUserID: TIntegerField;
    ADOStoredProc1PayTypeID: TWordField;
    ADOStoredProc1RelatedID: TIntegerField;
    ADOStoredProc1documentno: TStringField;
    ADOStoredProc1CRTR_DETACCOUNTID: TIntegerField;
    ADOStoredProc1FINANCIALNOTE_DETAILID: TIntegerField;
    ADOStoredProc1WasPrinted: TSmallintField;
    ADOStoredProc1PayTypeSecondId: TIntegerField;
    ADOStoredProc1RefrencePaymentId: TIntegerField;
    ADOStoredProc1CREDITORACCOUNTTITLE: TWideStringField;
    ADOStoredProc1DEBTORACCOUNTTITLE: TWideStringField;
    ADOStoredProc1PAYTYPETITLE: TWideStringField;
    ADOStoredProc1NOTENO: TStringField;
    ADOStoredProc1MATUREDATE: TStringField;
    ADOStoredProc1FINANCIALNOTEAMOUNT: TLargeintField;
    ADOStoredProc1FINANCIALNOTETYPETITLE: TWideStringField;
    ADOStoredProc1FULLNAME: TWideStringField;
    ADOStoredProc1COMMENT2: TStringField;
    ADOStoredProc1NOTE_DETAILAMOUNT: TLargeintField;
    ADOStoredProc1NOTE_DETAILNOTENO: TStringField;
    ADOStoredProc1DETAILNOTEDATE: TStringField;
    ADOStoredProc1STATUSFINANCIALNOTESTATUSDESC: TWideStringField;
    ADOStoredProc1MASTERFINANCIALNOTETYPEID: TWordField;
    ADOStoredProc1NOTE_DETAILFINANCIALNOTETYPETITLE: TWideStringField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure FIRST_SET;
    procedure CHK_DATEClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ADV_SEARCH_SANAD_FRM: TADV_SEARCH_SANAD_FRM;

implementation

uses dmu,  YShamsiDate, ShowmessageU, MainU, searchLoanU, Upreview, BusinessLayer;

{$R *.dfm}

procedure TADV_SEARCH_SANAD_FRM.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

procedure TADV_SEARCH_SANAD_FRM.FIRST_SET;
BEGIN

DOC_NO.Text := '';

if CHK_DATE.Checked = False THEN
   BEGIN
   AZ_DATE.Text    := '';
   AZ_DATE.Enabled := False;
   AZ_DATE.Color   := clSilver;

   TA_DATE.Text    := '';
   TA_DATE.Enabled := False;
   TA_DATE.Color   := clSilver;
   END
   ELSE
   BEGIN
   AZ_DATE.Text    := '';
   AZ_DATE.Enabled := True;
   AZ_DATE.Color   := clWhite;

   TA_DATE.Text    := '';
   TA_DATE.Enabled := True;
   TA_DATE.Color   := clWhite;
   END;

END;

procedure TADV_SEARCH_SANAD_FRM.FormShow(Sender: TObject);
begin
FIRST_SET;
end;

procedure TADV_SEARCH_SANAD_FRM.CHK_DATEClick(Sender: TObject);
begin

if CHK_DATE.Checked = False THEN
   BEGIN
   AZ_DATE.Text    := '';
   AZ_DATE.Enabled := False;
   AZ_DATE.Color   := clSilver;

   TA_DATE.Text    := '';
   TA_DATE.Enabled := False;
   TA_DATE.Color   := clSilver;
   END
   ELSE
   BEGIN
   AZ_DATE.Text    := '';
   AZ_DATE.Enabled := True;
   AZ_DATE.Color   := clWhite;

   TA_DATE.Text    := '';
   TA_DATE.Enabled := True;
   TA_DATE.Color   := clWhite;
   END;

end;

procedure TADV_SEARCH_SANAD_FRM.BitBtn2Click(Sender: TObject);
begin
ADOStoredProc1.Close;
ADOStoredProc1.parameters.ParamByName('@documentNo').value := DOC_NO.Text;
ADOStoredProc1.parameters.ParamByName('@AZDATE').value     := AZ_DATE.Text;
ADOStoredProc1.parameters.ParamByName('@TADATE').value     := TA_DATE.Text;
ADOStoredProc1.Open;
end;

procedure TADV_SEARCH_SANAD_FRM.SpeedButton4Click(Sender: TObject);
begin
YDBGrid1.CustomizePrint;
end;

procedure TADV_SEARCH_SANAD_FRM.SpeedButton3Click(Sender: TObject);
begin
YDBGrid1.ExportToExcel;
end;

procedure TADV_SEARCH_SANAD_FRM.SpeedButton2Click(Sender: TObject);
begin
YDBGrid1.Print
end;

procedure TADV_SEARCH_SANAD_FRM.SpeedButton1Click(Sender: TObject);
begin
YDBGrid1.ExportToWord;
end;

end.
