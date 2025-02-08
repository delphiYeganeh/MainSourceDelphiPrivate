unit RentDM;
{Ranjbar 89.07.15 ID=19}
interface

uses
  SysUtils, Classes, frxExportImage, frxExportPDF, frxExportXLS,
  frxExportText, frxExportTXT, frxExportXML, frxExportRTF, frxDesgn,
  frxClass, frxDBSet, DB, ADODB;

type
  TDMRent = class(TDataModule)
    frxJPEGExport1: TfrxJPEGExport;
    frxDesigner1: TfrxDesigner;
    frxBMPExport1: TfrxBMPExport;
    frxRTFExport1: TfrxRTFExport;
    frxXMLExport1: TfrxXMLExport;
    frxTXTExport1: TfrxTXTExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxGIFExport1: TfrxGIFExport;
    frxTIFFExport1: TfrxTIFFExport;
    QrRepRent: TADOQuery;
    DSRepRent: TDataSource;
    frxDBRepRent: TfrxDBDataset;
    frxRepRent: TfrxReport;
    QrRepRentRentID: TAutoIncField;
    QrRepRentRenterID: TIntegerField;
    QrRepRentLetterID: TIntegerField;
    QrRepRentBeginDate: TStringField;
    QrRepRentEndDate: TStringField;
    QrRepRentComment: TWideStringField;
    QrRepRentMatureDate: TStringField;
    QrRepRentIndicatorID: TIntegerField;
    QrRepRentRegistrationDate: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRent: TDMRent;

implementation

{$R *.dfm}



{frxDBRepRent
-RentID=RentID
-RenterID=RenterID
-LetterID=LetterID
BeginDate= «—ÌŒ «„«‰ 
EndDate= «—ÌŒ ⁄Êœ 
Comment= Ê÷ÌÕ« 
MatureDate= «—ÌŒ „Ê⁄œ  ÕÊÌ·
IndicatorID=‘„«—Â «‰œÌﬂ« Ê— ”‰œ
RegistrationDate= «—ÌŒ À»  ”‰œ
}

end.
