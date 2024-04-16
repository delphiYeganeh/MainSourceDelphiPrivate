program DBImagerProj;

uses
  Forms,
  DBImageru in 'DBImageru.pas' {DBImagerDemoForm};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TDBImagerDemoForm, DBImagerDemoForm);
  Application.Run;
end.
