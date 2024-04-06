program prjdbselftree;

uses
  Forms,
  DBSelfTree in 'DBSelfTree.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TSelfDBForm, SelfDBForm);
  Application.Run;
end.
