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
    Label1: TLabel;
    EDatabaseName: TEdit;
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

var
  Fconnect: TFconnect;
  ServerName:string;
  const  RegistryKey = 'Software\yeganeh\dabir';


implementation

uses  ShamsiDate, Dmu, YShamsiDate, ADODB;

{$R *.dfm}

procedure TFconnect.Connect;
begin
  with DM.YeganehConnection do
   begin
     Connected:=false;
     ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=12;Initial Catalog='+DataBaseName+';Data Source='+ SERVERNAME;
     ConnectionTimeout:=5;
   end;
try

dm.YeganehConnection.Open('YeganehCorporate_'+productID, dm.IntToY);
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
ServerName:=adminServer.Text;
DatabaseName:=EDatabaseName.Text;

 if trim(ServerName)<>'' then
     WriteString('ServerName', ServerName);

     if  trim(ServerName)<>'' then
       WriteString('DataBaseName', DatabaseName);
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
var R: TRegistry;
begin
  r:=TRegistry.Create;
  with R do
   begin
   RootKey:=HKEY_CURRENT_USER;
   OpenKey(RegistryKey, True);

    ServerName:=ReadString('ServerName');
    DataBaseName:=ReadString('DataBaseName');



     if DatabaseName='' then
       DataBaseName:='Ydabir' ;

     if ServerName='' then
       ServerName:='.' ;

   end;
Connect;
end;

end.
