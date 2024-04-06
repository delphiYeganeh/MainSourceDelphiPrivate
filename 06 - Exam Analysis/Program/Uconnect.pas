unit Uconnect;

interface

uses
 windows,Registry,forms,SysUtils, ExtCtrls, StdCtrls, Buttons, Controls, ComCtrls, Classes,dialogs,
  xpBitBtn;

type
  TFconnect = class(TForm)
    Label4: TLabel;
    AdminServer: TEdit;
    Button2: TxpBitBtn;
    BitBtn1: TxpBitBtn;
    Label5: TLabel;
    Timer1: TTimer;
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
  RegistryKey = 'Software\yeganeh\ExamAnalysis';
var
  Fconnect: TFconnect;
  ServerName:string;

implementation

uses  ShamsiDate, Dmu, YShamsiDate, ADODB;

{$R *.dfm}
function IntToY:string ;
var i,j,k,n:integer;
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
var R: TRegistry;
begin
  r:=TRegistry.Create;
  with R do
   begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    ServerName:=ReadString('ServerName');
    DataBaseName:=ReadString('DataBaseName');
    if DataBaseName='' then  DataBaseName:='ExamAnalysis' ;
   WriteString('DataBaseName', DataBaseName);

   end;
  with DM.YeganehConnection do
   begin
     Connected:=false;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName+';Data Source='+ SERVERNAME;
     ConnectionTimeout:=5;
   end;
try
dm.YeganehConnection.Open('YeganehCorporate_ExamAnalysis', IntToY);

dm.YeganehConnection.Connected:=true;
timer1.Enabled:=true;
except ShowModal;end;
end;

procedure TFconnect.Button2Click(Sender: TObject);
var R: TRegistry;
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

end.
