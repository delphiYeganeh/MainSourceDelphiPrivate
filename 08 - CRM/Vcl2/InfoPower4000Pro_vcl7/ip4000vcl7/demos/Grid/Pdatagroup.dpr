program Pdatagroup;

uses
  Forms,
  griddatagroup in 'griddatagroup.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDataGroupForm, DataGroupForm);
  Application.Run;
end.
