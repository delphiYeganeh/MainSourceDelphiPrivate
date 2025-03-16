program PrjPrintHeader;

uses
  Forms,
  printheader in 'printheader.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPrintHeaderForm, PrintHeaderForm);
  Application.Run;
end.
