program prjimport;

uses
  Forms,
  converter in 'converter.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TRTFImportExportForm, RTFImportExportForm);
  Application.Run;
end.
