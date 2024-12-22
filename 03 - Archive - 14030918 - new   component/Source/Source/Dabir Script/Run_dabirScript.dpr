 program Run_dabirScript;

uses
  Forms,
  main in 'main.pas' {FmMain},
  Dmu in 'Dmu.pas' {dm: TDataModule},
  Uconnect in 'Uconnect.pas' {Fconnect},
  YShamsiDate in '..\..\Vcl\YShamsiDate.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFmMain, FmMain);
  Application.Run;
end.
