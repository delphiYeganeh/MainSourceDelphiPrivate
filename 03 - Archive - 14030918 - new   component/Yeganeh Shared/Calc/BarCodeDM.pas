unit BarcodeDM;

interface

uses
  SysUtils, Classes, DBTables, DB, frxExportTXT, frxExportText,
  frxExportImage, frxExportRTF, frxExportXML, frxExportXLS, frxClass,
  frxExportPDF, frxDesgn, frxBarcode, frxExportMail;

type
  TDMBarCode = class(TDataModule)
    frxRepBarcode: TfrxReport;
    frxDesigner1: TfrxDesigner;
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
    frxBarCodeObject1: TfrxBarCodeObject;
    frxMailExport1: TfrxMailExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMBarCode: TDMBarCode;

implementation

Uses VertionDM , Myutil;

{$R *.dfm}

end.
