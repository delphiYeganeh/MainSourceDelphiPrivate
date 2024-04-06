program MakeSFX;

uses
  Forms,
  MainUnit in 'MainUnit.pas' {fmMain};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TfmMain, fmMain);
  Application.Run;
end.
