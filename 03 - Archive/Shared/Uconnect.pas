unit Uconnect;

interface

uses
 windows,Registry,forms,SysUtils, ExtCtrls, StdCtrls, Buttons, Controls, ComCtrls, Classes,dialogs,
  xpBitBtn;

type
  TFconnect = class(TForm)
    Label5: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    Label4: TLabel;
    AdminServer: TEdit;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    Button2: TBitBtn;
    procedure Connect;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
   {$IFDEF ADA}
        RegistryKey = 'Software\ADA\Archive';
   {$ELSE}
        RegistryKey = 'Software\yeganeh\Archive';
   {$ENDIF}

var
  Fconnect: TFconnect;

implementation

uses  ShamsiDate, Dmu, YShamsiDate, ADODB;

{$R *.dfm}
function IntToY:string ;
var
  i,j,k,n:integer;
begin
  Result:='';
  i:=60+3+1+1;
  j:=2*60+2*3+1;
  k:=15*11+3+1;

  for n:=1 to 66 do
  begin
    if (i>=28+1-1) and (i<=128+1-1) then
      Result:=Result+char(i);
    i:=k*i mod j;
  end;
end;

procedure TFconnect.Connect;
var
  R: TRegistry;
begin
  R := TRegistry.Create;
  With R do
  begin
    RootKey := HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    Dm.ServerName:=ReadString('ServerName');
    {Ranjbar}
    if Dm.ServerName = '' then
    begin
      Dm.ServerName:='.' ;
      WriteString('ServerName', Dm.ServerName);
    end;
    AdminServer.Text := Dm.ServerName;
    //---

    _DataBaseName:=ReadString('DataBaseName');
    if _DataBaseName='' then
    begin
      _DataBaseName:='YArchive' ;
      WriteString('DataBaseName', _DataBaseName);
    end;
  end;

  With DM.YeganehConnection do
  begin
    Connected:=false;
    ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+_DataBaseName+';Data Source='+ Dm.SERVERNAME;
    ConnectionTimeout:=5;
  end;

  try
    Dm.YeganehConnection.Open(_Eyeganeh+'Corporate_Archive', IntToY);
    Dm.YeganehConnection.Connected:=true;
    Timer1.Enabled:=true;
  except
    {Ranjbar 89.06.02 ID=0}
    ShowMessage('ÇÔßÇá ÏÑ ÇÊÕÇá Èå ÓÑæÑ');
    //---
    ShowModal;
  end;
end;

procedure TFconnect.Button2Click(Sender: TObject);
var
  R: TRegistry;
begin
  r:=TRegistry.Create;
  with R do
  begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    if trim(adminServer.Text)<>'' then
      WriteString('ServerName', adminServer.Text);
  end;
  Connect;
end;

procedure TFconnect.BitBtn1Click(Sender: TObject);
begin
  halt;
end;

procedure TFconnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFconnect.Timer1Timer(Sender: TObject);
begin
  close;
end;

procedure TFconnect.FormCreate(Sender: TObject);
begin
  Connect;
end;

procedure TFconnect.SpeedButton1Click(Sender: TObject);
begin
  {Ranjbar 89.06.02 ID=0}
  AdminServer.Text := Copy(Win_GetComputerNameFromNet(Self.Handle) ,3,100);
  //---
end;

end.
