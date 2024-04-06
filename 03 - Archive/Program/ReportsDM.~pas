unit ReportsDM;

interface

uses
  SysUtils, Classes, frxExportImage, frxExportPDF, frxExportXLS,
  frxExportText, frxExportTXT, frxExportXML, frxExportRTF, frxDesgn,
  frxClass, DB, ADODB, frxDBSet;

type
  TDMReports = class(TDataModule)
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
    QrLetter: TADOQuery;
    QrListItems: TADOQuery;
    QrSrchLetter: TADOQuery;
    DSLetter: TDataSource;
    DSListItems: TDataSource;
    frxDBLetter: TfrxDBDataset;
    frxRepLetter: TfrxReport;
    QrSrchLetterLetterID: TAutoIncField;
    QrSrchLetterIndicatorID: TIntegerField;
    QrSrchLetterMYear: TWordField;
    QrSrchLetterIncommingNO: TWideStringField;
    QrSrchLetterIncommingdate: TWideStringField;
    QrSrchLetterMemo: TWideStringField;
    QrSrchLetterRegistrationDate: TStringField;
    QrListItemsListCount: TIntegerField;
    QrListItemsTitle: TWideStringField;
    frxDBListItems: TfrxDBDataset;
    QrLetterLetterID: TAutoIncField;
    QrLetterRegistrationDate: TStringField;
    QrLetterIndicatorID: TIntegerField;
    QrLetterMYear: TWordField;
    QrLetterIncommingdate: TWideStringField;
    QrLetterIncommingNO: TWideStringField;
    QrLetterMemo: TWideStringField;
    procedure QrLetterAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMReports: TDMReports;

implementation

uses Dmu;

{$R *.dfm}

procedure TDMReports.QrLetterAfterScroll(DataSet: TDataSet);
begin
   QrListItems.Close;
   QrListItems.Parameters.ParamByName('UsersID').Value  := _UserId;
   QrListItems.Parameters.ParamByName('LetterID').Value := QrLetterLetterID.AsInteger;
   QrListItems.Open;
end;


//Ranjbar

{frxDBLetter
RegistrationDate= «—ÌŒ À» 
IndicatorID=‘„«—Â «‰œÌﬂ« Ê—
MYear=”«·
Incommingdate= «—ÌŒ ”‰œ
IncommingNO=‘„«—Â ”‰œ
Memo=Œ·«’Â ”‰œ
}

{QrListItems
ListCount= ⁄œ«œ  ’«ÊÌ—
Title=⁄‰Ê«‰  ’«ÊÌ—
}

end.
