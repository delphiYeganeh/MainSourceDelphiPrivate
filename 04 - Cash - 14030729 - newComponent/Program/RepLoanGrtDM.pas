unit RepLoanGrtDM;

interface

uses
  SysUtils, Classes, DB, ADODB, frxExportImage, frxExportPDF, frxExportXLS,
  frxExportText, frxExportTXT, frxExportXML, frxExportRTF, frxDesgn,
  frxClass, frxDBSet;

type
    TDMRepLoanGrt = class(TDataModule)
    QrLoanGrtPrice: TADOQuery;
    QrLoanGrtCount: TADOQuery;
    DSLoanGrtCount: TDataSource;
    DSLoanGrtPrice: TDataSource;
    QrContact: TADOQuery;
    DSContact: TDataSource;
    QrSrchContact: TADOQuery;
    DSSrchContact: TDataSource;
    frxDesigner1: TfrxDesigner;
    frxDesigner2: TfrxDesigner;
    frxDBLoanGrtCount: TfrxDBDataset;
    frxRepLoanGrtCount: TfrxReport;
    QrContactContactID: TAutoIncField;
    QrContactPersonalNo: TWideStringField;
    QrContactFirstName: TWideStringField;
    QrContactLastName: TWideStringField;
    QrContactContactNaFa: TWideStringField;
    QrSrchContactContactID: TAutoIncField;
    QrSrchContactPersonalNo: TWideStringField;
    QrSrchContactFirstName: TWideStringField;
    QrSrchContactLastName: TWideStringField;
    frxDBLoanGrtPrice: TfrxDBDataset;
    QrLoanGrtCountLoanID: TIntegerField;
    QrLoanGrtCountLoanNo: TStringField;
    QrLoanGrtCountContactID: TIntegerField;
    QrLoanGrtPriceLoanID: TIntegerField;
    QrLoanGrtPriceLoanNo: TStringField;
    QrLoanGrtPriceAmount: TIntegerField;
    QrLoanGrtPriceContactID: TIntegerField;
    QrLoanGrtCountContactNaFa: TWideStringField;
    QrLoanGrtPriceContactNaFa: TWideStringField;
    QrLoanGrtCountAccountTitle: TWideStringField;
    QrLoanGrtPriceAccountTitle: TWideStringField;
    QrLoanGrtCountAccountNo: TStringField;
    QrLoanGrtCountPercentofGauranty: TIntegerField;
    QrLoanGrtPricePercentofGauranty: TIntegerField;
    QrLoanGrAll: TADOQuery;
    DSLoanGrAll: TDataSource;
    frxDBLoanGrtAll: TfrxDBDataset;
    QrLoanGrAllLoanID: TIntegerField;
    QrLoanGrAllLoanNO: TStringField;
    QrLoanGrAllContactID: TIntegerField;
    QrLoanGrAllContactNaFa: TWideStringField;
    QrLoanGrAllAccountTitle: TWideStringField;
    QrLoanGrAllAccountNo: TStringField;
    QrLoanGrAllPercentofGauranty: TIntegerField;
    QrLoanGrAllBlockedPrice: TFloatField;
    QrLoanGrtCountGACCOUNTNO: TStringField;
    QrLoanGrAllGAAccountNo: TStringField;
    QrLoanGrAllAmount: TLargeintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRepLoanGrt: TDMRepLoanGrt;

implementation

Uses DMu;

{$R *.dfm}

end.
