unit Uconnect;

interface

uses
 windows,Registry,forms,SysUtils, ExtCtrls, StdCtrls, Buttons, Controls, ComCtrls, Classes,dialogs;

type
  TFconnect = class(TForm)
    Label4: TLabel;
    AdminServer: TEdit;
    Button2: TBitBtn;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    function  Connect:boolean;
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
  RegistryKey = 'Software\yeganeh\dabir';
var
  Fconnect: TFconnect;
  ServerName:string;

implementation

uses  YShamsiDate, Dmu;


{$R *.dfm}

function TFconnect.Connect:boolean;
var R: TRegistry;
begin
  r:=TRegistry.Create;
  with R do
   begin
    RootKey:=HKEY_CURRENT_USER;
    OpenKey(RegistryKey, True);
    ServerName:=ReadString('ServerName');
   end;


  with dm.YeganehConnection do
   begin
     Connected:=false;
     ConnectionString:='Provider=SQLOLEDB.1;Password=Mohammad_Y_Yeganeh_Ahmadvand'+

                       ';Persist Security Info=True;User ID=Y_Archive_APP'+
                       ';Initial Catalog=yarchive;Data Source='+ SERVERNAME;
  //                     ShowMessage(ConnectionString);
     ConnectionTimeout:=5;
   end;

try
 DM.YeganehConnection.Connected:=true;
 Result:=true;
except
result:=false;
end;
end;

procedure TFconnect.Button2Click(Sender: TObject);
var R: TRegistry;
begin
  r:=TRegistry.Create;
  with R do
   begin
   RootKey:=HKEY_CURRENT_USER;
   OpenKey(RegistryKey, True);
   if trim(adminServer.Text)<>''
   then WriteString('ServerName', adminServer.Text);
   end;
if Connect then close
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
 if Connect then
   Close
 else
   ShowModal;
end;

end.
