unit ReceiptDM;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet, frxExportTXT,
  frxExportText, frxExportImage, frxExportRTF, frxExportXML, frxExportXLS,
  frxExportPDF, frxDesgn;

type
  TDMReceipt = class(TDataModule)
    SpReceipt: TADOStoredProc;
    DSReceipt: TDataSource;
    SpReceiptReceiptID: TIntegerField;
    SpReceiptTitle: TWideStringField;
    SpReceiptDescript: TWideStringField;
    QrSrchOrgan: TADOQuery;
    DataSource1: TDataSource;
    QrSrchOrganID: TAutoIncField;
    QrSrchOrganTitle: TWideStringField;
    SpReceiptMemo: TWideStringField;
    SpRep_Receipt: TADOStoredProc;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    DSRep_Receipt: TDataSource;
    frxRepSpRep_Receipt: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxDesigner2: TfrxDesigner;
    frxPDFExport1: TfrxPDFExport;
    frxXLSExport1: TfrxXLSExport;
    frxXMLExport1: TfrxXMLExport;
    frxRTFExport1: TfrxRTFExport;
    frxBMPExport1: TfrxBMPExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxTIFFExport1: TfrxTIFFExport;
    frxGIFExport1: TfrxGIFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxTXTExport1: TfrxTXTExport;
    frxDBSpRep_Receipt: TfrxDBDataset;
    SpRep_ReceiptUserName: TStringField;
    SpRep_ReceiptOrgName: TStringField;
    procedure SpRep_ReceiptCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    aUserName , aOrgName :String;
  end;

var
  DMReceipt: TDMReceipt;

implementation

uses Dmu;

{$R *.dfm}

{frxDBSpRep_Receipt
-ReceiptID=ReceiptID
Title=⁄‰Ê«‰ —”Ìœ
Memo=„ ‰ —”Ìœ
Descript= Ê÷ÌÕ« 
OrgName=›—” ‰œÂ
UserName=‰«„ ò«—»— ’«œ— ò‰‰œÂ —”Ìœ
}

procedure TDMReceipt.SpRep_ReceiptCalcFields(DataSet: TDataSet);
begin
   SpRep_ReceiptUserName.AsString := aUserName;
   SpRep_ReceiptOrgName.AsString := aOrgName;
end;

end.
