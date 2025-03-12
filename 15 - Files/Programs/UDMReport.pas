unit UDMReport;

interface

uses
  Forms, SysUtils, Classes, frxDesgn, frxExportDOCX, frxClass, frxExportXLSX, Dialogs, Controls,
  frxDBSet, DB, DBClient, Provider;

Type
   TReportType = (rtShow , rtPrint , rtDesign);
     
type
  TDMReport = class(TDataModule)
    frxDesigner1: TfrxDesigner;
    frxReport_New: TfrxReport;
    frxReport11: TfrxReport;
    frxReportA4: TfrxReport;
    frxReport10: TfrxReport;
    frxReportA3: TfrxReport;
    frxReport9: TfrxReport;
    frxReport8: TfrxReport;
    frxReport2: TfrxReport;
    frxReport6: TfrxReport;
    frxReport1: TfrxReport;
    frxReport3: TfrxReport;
    frxReport4: TfrxReport;
    frxReport5: TfrxReport;
    frxReport7: TfrxReport;
    frxReportTestPrinter: TfrxReport;
    CDTemp__: TClientDataSet;
    CDTemp__F1: TStringField;
    CDTemp__F2: TStringField;
    CDTemp__F3: TStringField;
    CDTemp__F4: TStringField;
    CDTemp__F5: TStringField;
    CDTemp__F6: TStringField;
    CDTemp__F7: TStringField;
    CDTemp__F8: TStringField;
    CDTemp__F9: TStringField;
    CDTemp__F10: TStringField;
    CDTemp__F11: TStringField;
    CDTemp__F12: TStringField;
    CDTemp__F13: TStringField;
    DataSource1: TDataSource;
    frxDBReport: TfrxDBDataset;
    XlsExport: TfrxXLSXExport;
    WordExport: TfrxDOCXExport;
    frxReport_Main: TfrxReport;
    frxReport_New_Backup: TfrxReport;
    frxReport12: TfrxReport;

  private
    { Private declarations }
  public
    function  Rep_CorrectDesign(aFileName:String;afrxReport:TfrxReport): Boolean;
    Procedure Rep_LoadFile(afrxReport:TfrxReport;aFileName:String);
    Procedure Rep_Show(afrxReport:TfrxReport;ReportType:TReportType);
    procedure SaveReportToFR3(aFileName:String; frxReport: TfrxReport);

  end;

var
  DMReport: TDMReport;


implementation

//uses
//   Dmu ;

{$R *.dfm}

{ TDataModule1 }

function TDMReport.Rep_CorrectDesign(aFileName: String;afrxReport:TfrxReport) : Boolean ;
Var
   FN:String;
begin
  Result := False;
  FN := ExtractFilePath(Application.ExeName)+'Reports\'+aFileName;

  if MessageDlg('¬Ì« „«Ì·Ìœ òÂ ÿ—«ÕÌ «Ì‰ ›—„ ê“«—‘ »Â Õ«·  ÅÌ‘ ›—÷ »«“ ê—œœø',mtInformation,[mbyes,mbno],0)=mryes then
  begin
      if FileExists(FN) then
         if DeleteFile(pchar(FN)) then
         begin
           // Rep_LoadFile (afrxReport,aFileName );
            Result := True ;
           // afrxReport.Revert;
            ShowMessage('›—„ ÿ—«ÕÌ ê“«—‘ «’·«Õ ‘œ' ) ;
         end;
  end;

end;

procedure TDMReport.Rep_LoadFile(afrxReport: TfrxReport;
  aFileName: String);
Var
   FN ,RepDir : String;
begin
  RepDir := ExtractFilePath(Application.ExeName)+'Reports';
  if not DirectoryExists(RepDir) then
    CreateDir(RepDir);
  FN := RepDir+'\'+aFileName;
  if Not FileExists(FN) then
    afrxReport.SaveToFile(FN)
  else
  begin
     afrxReport.Clear;
     afrxReport.LoadFromFile(FN);
  end;

end;


procedure TDMReport.Rep_Show(afrxReport: TfrxReport;
  ReportType: TReportType);
begin

   afrxReport.PrepareReport();
   Case ReportType of
      rtShow   : afrxReport.ShowReport();
      rtPrint  : afrxReport.Print();
      rtDesign : afrxReport.DesignReport();
   end;
end;

procedure TDMReport.SaveReportToFR3(aFileName: String; frxReport: TfrxReport);
Var
   FN ,RepDir : String;
begin
   RepDir := ExtractFilePath(Application.ExeName)+'Reports';
   if not DirectoryExists(RepDir) then
      CreateDir(RepDir);
   FN := RepDir+'\'+aFileName;

  try
    // –ŒÌ—Âù”«“Ì ê“«—‘ »« ›—„  .fr3
    frxReport.SaveToFile(FN);

    ShowMessage('ê“«—‘ »« „Ê›ﬁÌ  –ŒÌ—Â ‘œ.');
  finally
//
  end;
end;

end.
