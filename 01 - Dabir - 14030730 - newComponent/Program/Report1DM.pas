unit Report1DM;

interface

uses
  SysUtils, Classes, frxClass, frxDBSet, frxExportTXT, frxExportText,
  frxExportImage, frxExportRTF, frxExportXML, frxExportXLS, frxExportPDF,
  frxDesgn;

type
  TDMReport1 = class(TDataModule)
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
    frxRepSpRep_Receipt: TfrxReport;
    frxDBSpRep_Receipt: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReport1: TDMReport1;

implementation

{$R *.dfm}

end.
