program Run_ExamScript;

{%File 'C:\Documents and Settings\mohammad\Desktop\change1.txt'}

uses
  Forms,
  main in 'main.pas' {Form1},
  Dmu in 'Dmu.pas' {dm: TDataModule},
  YShamsiDate in '..\Vcl\YShamsiDate.pas',
  Uconnect in 'Uconnect.pas' {FmConnectServer};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
