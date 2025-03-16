program PTrackDemo;

uses
  Forms,
  trackdemo in 'trackdemo.pas' {TrackbarForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TTrackbarForm, TrackbarForm);
  Application.Run;
end.
