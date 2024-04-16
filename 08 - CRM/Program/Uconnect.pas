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
  RegistryKey = 'Software\yeganeh\crm';
  DabirRegKey = 'Software\yeganeh\dabir';
var
  Fconnect: TFconnect;
  ServerName,DataBaseName:string;
  DabirServerName,DabirDataBaseName:string;

implementation

uses  YShamsiDate, Dmu;


{$R *.dfm}

{Ranjbar}
{function IntToY:string ;
var i,j,k,n:integer;
begin
   Result:='';
   i:=60+3+1+1;
   j:=2*60+2*3+1;
   k:=15*11+3+1;
    for n:=1 to 61 do
      begin
         if (i>=28+1-1) and (i<=128+1-1) then
             Result:=Result+char(i);
        i:=k*i mod j;
      end;
end;
}
function IntToY(L:byte):string ;
var i,j,k,n:integer;
begin
   Result:='';
   i:=60+3+1+1;
   j:=2*60+2*3+1;
   k:=15*11+3+1;
   for n:=1 to l do
   begin
      if (i>=28+1-1) and (i<=128+1-1) then
         Result:=Result+char(i);
      i := k*i mod j;
   end;
end;
//---

procedure TFconnect.Connect;
var R,R2:TRegistry;
begin
   R := TRegistry.Create;
   with R do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(RegistryKey, True);
      ServerName:=ReadString('ServerName');
      DataBaseName:=ReadString('DataBaseName');
      if DataBaseName='' then
         DataBaseName:='Y_CRM' ;
      WriteString('DataBaseName', DataBaseName);
   end;

   R2 := TRegistry.Create;
   with R2 do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(DabirRegKey, True);
      DabirServerName:=ReadString('ServerName');
      DabirDataBaseName:=ReadString('DataBaseName');
   end;

   With DM.YeganehConnection do
   begin
      Connected:=false;
      ConnectionString:='Provider=SQLOLEDB.1;Persist Security Info=False;User ID=2;Initial Catalog='+DataBaseName+';Data Source='+ SERVERNAME; //
      ConnectionTimeout:=5;
   end;
   if (trim(DabirDataBaseName)<>'') then
   begin
      dm.DabirConnection.ConnectionString := 'Provider=SQLOLEDB.1;Persist Security Info=False;User ID=2;Initial Catalog='+DabirDataBaseName+';Data Source='+ DabirSERVERNAME;
      dm.DabirConnection.ConnectionTimeout:=3;
      try
         dm.DabirConnection.Open('YeganehCorporate_Dabir', IntToY(66));
         dm.DabirConnection.Connected := true;
         _CanConnectToDabirDB := true;
      except
         _CanConnectToDabirDB := false;
      end;
   end
   else
      _CanConnectToDabirDB := false;

   if (_CanConnectToDabirDB)and(DabirServerName<>ServerName) then
      _CanConnectToDabirDB := false;
      
   try
      {Ranjbar}
      //Dm.YeganehConnection.Open('yeganehCompany_CRM', IntToY);
      Dm.YeganehConnection.Open('yeganehCompany_CRM', IntToY(61)); //A?j(Kf]`_5CNe3n0oZa'rY7w-pS9l[{V8Bi\6m}+!t.v~UP:
      //---
      Dm.YeganehConnection.Connected := True;//
      Timer1.Enabled:=true;
   except
      ShowModal;
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
