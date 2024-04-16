program PCalcDemo;

uses
  Forms,
  CalcDemoU in '\\Raid\ScratchDisk\1st3000vcl6\demos\CalcCombo\CalcDemoU.pas' {CalculatorDemoForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TCalculatorDemoForm, CalculatorDemoForm);
  Application.Run;
end.
