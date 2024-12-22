program CorrectImage;

uses
  Forms,
  FmCorrectImage_U in 'FmCorrectImage_U.pas' {FmCorrectImage},
  UDM in 'UDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmCorrectImage, FmCorrectImage);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
