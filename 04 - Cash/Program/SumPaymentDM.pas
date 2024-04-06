unit SumPaymentDM;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet, frxExportImage,
  frxExportPDF, frxExportXLS, frxExportText, frxExportTXT, frxExportXML,
  frxExportRTF, frxDesgn;

type
  TDMSumPayment = class(TDataModule)
    DSSumPayment: TDataSource;
    QrSumPayment: TADOQuery;
    QrSumPaymentForcePaymentCount: TIntegerField;
    QrSumPaymentTotalAmount: TLargeintField;
    QrSumPaymentCreditorAccountID: TIntegerField;
    QrSumPaymentDebtorAccountID: TIntegerField;
    QrSumPaymentDate: TWideStringField;
    QrSumPaymentPayTypeID: TWordField;
    QrSumPaymentCreditorAccountTitle: TWideStringField;
    QrSumPaymentDebtorAccountTitle  : TWideStringField;
    QrSumPaymentPayTypeTitle        : TWideStringField;
    frxJPEGExport1                  : TfrxJPEGExport;
    frxDesigner1                    : TfrxDesigner;
    frxBMPExport1       : TfrxBMPExport;
    frxRTFExport1       : TfrxRTFExport;
    frxXMLExport1       : TfrxXMLExport;
    frxTXTExport1       : TfrxTXTExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1   : TfrxXLSExport;
    frxPDFExport1   : TfrxPDFExport;
    frxGIFExport1   : TfrxGIFExport;
    frxTIFFExport1  : TfrxTIFFExport;
    frxDesigner2    : TfrxDesigner;
    frxDBSumPayment : TfrxDBDataset;
    frxRepSumPayment: TfrxReport;
    QrSumPaymentDocumentNo: TStringField;
    QrSumPaymentSum_InterestAmount: TIntegerField;
    DADOSpSumPayment: TDataSource;
    ADOSpSumPayment : TADOStoredProc;
    frxDBDataset1                 : TfrxDBDataset;
    ADOSpSumPaymentAccountTitle   : TWideStringField;
    ADOSpSumPaymentFatherName     : TWideStringField;
    ADOSpSumPaymentMatureDate     : TStringField;
    ADOSpSumPaymentAccountNo      : TStringField;
    ADOSpSumPaymentGhestAmount    : TIntegerField;
    ADOSpSumPaymentMountlyAmount  : TIntegerField;
    ADOSpSumPaymentTotalLoanAmount: TIntegerField;
    ADOSpSumPaymentDelay          : TIntegerField;
    ADOSpSumPaymentMonthlyBalance : TLargeintField;
    ADOSpSumPaymentPartsBeginDate : TStringField;
    ADOSpSumPaymentLoanTypeID     : TSmallintField;
    ADOSpSumPaymentGhestPeriod    : TWideStringField;
    ADOQuery1: TADOQuery;
    QrSumPaymentMatureDate: TStringField;
    ADOSpSumPaymentGHESTCOUNT: TIntegerField;
    ADOSpSumPaymentMOUNTLY_GHESTAMOUNT: TLargeintField;
    ADOSpSumPaymentREMAINOFLOAN: TIntegerField;
    Procedure QrSumPaymentTotalAmountGetText(Sender: TField;Var Text:String; DisplayText:Boolean);
  Private
    { Private declarations }
  Public
    { Public declarations }
  end;

var
  DMSumPayment: TDMSumPayment;

implementation

Uses DMu , YShamsiDate;

{$R *.dfm}

procedure TDMSumPayment.QrSumPaymentTotalAmountGetText(Sender: TField;
Var   Text : String; DisplayText: Boolean);
Begin
   Text := CommaSeperate(QrSumPaymentTotalAmount.AsString);
End;

end.
