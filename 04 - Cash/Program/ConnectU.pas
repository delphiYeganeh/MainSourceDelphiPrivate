unit ConnectU;

interface

uses
 windows,Registry,forms,SysUtils, ExtCtrls, StdCtrls, Buttons, Controls, ComCtrls, Classes,dialogs;

type
  TFrConnect = class(TForm)
    Label5: TLabel;
    Timer1: TTimer;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    Button2: TBitBtn;
    Panel2: TPanel;
    AdminServer: TEdit;
    Label4: TLabel;
    procedure Connect;
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  RegistryKey = 'Software\yeganeh\YLOANCASH';
var
  FrConnect: TFrConnect;

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

procedure TFrConnect.Connect;
var
  R: TRegistry;
  s: string;
begin
  r:=TRegistry.Create;
  with R do
  begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    ServerName:=ReadString('ServerName');
    DataBaseName:=ReadString('DataBaseName');
    if DataBaseName='' then
      DataBaseName:='YLoancash' ;
    WriteString('DataBaseName', DataBaseName);
  end;

  with DM.YeganehConnection do
  begin
    Connected:=false;
    ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName+';Data Source='+ SERVERNAME;
    ConnectionTimeout:=5;
  end;

  try
    s:= IntToY;
    dm.YeganehConnection.Open('YeganehCorporate_Cash2', s);
    dm.YeganehConnection.Connected:=true;
    timer1.Enabled:=true;
  except
    ShowModal;
  end;
end;

procedure TFrConnect.Button2Click(Sender: TObject);
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

procedure TFrConnect.BitBtn1Click(Sender: TObject);
begin
  halt;
end;

procedure TFrConnect.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFrConnect.Timer1Timer(Sender: TObject);
begin
  close;
end;

procedure TFrConnect.FormCreate(Sender: TObject);
begin
  Connect;
end;

end.
