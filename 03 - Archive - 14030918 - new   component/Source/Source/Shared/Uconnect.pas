unit Uconnect;

interface

uses
 windows,Registry,forms,SysUtils, ExtCtrls, StdCtrls, Buttons, Controls, ComCtrls, Classes,dialogs,
  xpBitBtn;

type
  TFconnect = class(TForm)
    Label5: TLabel;
    ClosingTimer: TTimer;
    Panel1: TPanel;
    AdminServer: TEdit;
    Label4: TLabel;
    BtnConnect: TBitBtn;
    BitBtn1: TBitBtn;
    procedure Connect;
    procedure BtnConnectClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClosingTimerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Fconnect: TFconnect;
  ServerName:string;
  CRMServerName,CRMDBName : string;


implementation

uses  ShamsiDate, Dmu, YShamsiDate, ADODB, businessLayer, SelectDBFm,
  CRMDataBaseUnit, DB;

{$R *.dfm}


function IntToY(l:byte):string ;
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

procedure TFconnect.Connect;
var
  R,R2,Q,RegArch: TRegistry;
  Items:TStrings;
begin
   Items:=TStringList.Create;
   tmpYear:=0;
   {ÏÑ ÕæÑÊí ˜å ÏÑ ÑÌíÓÊÑí ãÞÏÇÑ tmpyear æÌæÏ ÏÇÔÊå ÈÇÔÏ íÚäí Çíä ˜å äÑã ÇÝÒÇÑ Èå í˜ ÏíÊÇÈíÓ ÓÇá åÇí ÐÔÊå ãÊÕá ãí ÔæÏ
   æ ÈÚÏ ÇÒ í˜ ÈÇÑ ÇÌÑÇ ÈÇ ÍÐÝ ãÞÇÏíÑ ãæÞÊ ÏÑ ÑÌíÓÊÑí ÏÑ ÇÌÑÇ åÇí ÈÚÏ Èå ÏíÊÇÈíÓ ÇÕáí æÕá ãí ÔæÏ}



   R2 := TRegistry.Create;
   with R2 do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(CrmRegistryKey, True);

      CRMServerName := Trim(ReadString('ServerName'));
      CRMDBName := Trim(ReadString('DataBaseName'));
   end;
   R := TRegistry.Create;
   with R do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(RegistryKey, True);

      ServerName:=Trim(ReadString('ServerName'));
      {Ranjbar}
      if ServerName = '' then
      begin
         WriteString('ServerName','.');
         ServerName := '.';
      end;
      //---
      _DataBaseName:=ReadString('tmpDataBaseName');
      if _DataBaseName='' then
         _DataBaseName:=ReadString('DataBaseName')
      else
         tmpYear:=strtoint(ReadString('tmpYear'));

      if pos(',' , _DatabaseName) <> 0 then
      begin
         FmSelectDB := TFmSelectDB.Create(Application);
         SetWords(_DatabaseName,',',Items);
         FmSelectDB.DataBase.Items := Items;
         FmSelectDB.ShowModal;
         _DatabaseName := FmSelectDB.DataBase.Text;
      end;

      if _DatabaseName='' then
      begin
         _DataBaseName:='Ydabir' ;
         WriteString('DataBaseName', _DataBaseName);
      end;
      DeleteValue('tmpDataBaseName');
      DeleteValue('tmpYear');

      // Added By Saeedi ON 1390/06/08
     Q := TRegistry.Create;
     with Q do
     begin
         RootKey:=HKEY_CURRENT_USER;
         OpenKey(CrmRegistryKey, True);
         _CRMDatabaseName:=Trim(ReadString('DataBaseName'));
        // if _CRMDatabaseName='' then
        // begin
             //CRMDataBaseForm := TCRMDataBaseForm.Create(Application);
             //CRMDataBaseForm.ShowModal;
            // _CRMDatabaseName := Trim(CRMDataBaseForm.DataBase.Text);
            // WriteString('DataBaseName', _CRMDatabaseName);
        // end;
     end;
     // end of Added By Saeedi ON 1390/06/08
   end;



   if (CRMDBName<>'') then
   begin
      with DM.CRMConnection do
      begin
         Connected:=false;
         ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+CRMDBName+';Data Source='+ CRMServerName;
         ConnectionTimeout:=3;
      end;
      try
         dm.CRMConnection.Open('yeganehCompany_CRM', IntToY(61));
         dm.CRMConnection.Connected:=true;
         _CanConnectToCRM := true;
      except
         _CanConnectToCRM := false;
      end;
   end
   else
      _CanConnectToCRM := false;

   if (_CanConnectToCRM)and(ServerName<>CRMServerName) then
      _CanConnectToCRM := false;

   with DM.YeganehConnection do
   begin
      Connected:=false;
      ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+_DataBaseName+';Data Source='+ SERVERNAME;
      ConnectionTimeout:=5;
   end;
   try
      dm.YeganehConnection.Open(_eyeganeh+'Corporate_Dabir', IntToY(66));
         //dm.YeganehConnection.Open('sa', '123');
      dm.YeganehConnection.Connected:=true;
      ClosingTimer.Enabled:=true;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

            with TADOQuery.Create(nil) do
            begin
               Connection := dm.YeganehConnection;
               SQL.Text := 'SELECT Value FROM Settings WHERE VariableName = ''ArchiveServerName''';
               Open;
               if not IsEmpty then
               begin
                  if Fields[0].AsString <>'.' then
                  begin
                     ArchiveServerName := Fields[0].AsString;
                     close;
                     SQL.Text := 'SELECT Value FROM Settings WHERE VariableName = ''ArchiveDBName''';
                     Open;
                     if not IsEmpty then
                        ArchiveDBName := Fields[0].AsString;
                  end;
               end
               else
               begin
                  ArchiveServerName := '';
                  ArchiveDBName := '';
               end;
            end;

            if ArchiveServerName = '' then
            begin
               RegArch := TRegistry.Create;
               with RegArch do
               begin
                  RootKey := HKEY_CURRENT_USER;
                  OpenKey(ArchiveRegistryKey, True);
                  ArchiveServerName := Trim(ReadString('ServerName'));
                  ArchiveDBName := Trim(ReadString('DataBaseName'));
                  if length(trim(ArchiveServerName))>1 then
                     with TADOQuery.Create(nil)do
                     begin
                        Connection := dm.YeganehConnection;
                        SQL.Text := 'SELECT Value FROM Settings WHERE VariableName = ''ArchiveServerName''';
                        Open;
                        if IsEmpty then
                        begin
                           Close;
                           SQL.Text := 'INSERT INTO Settings(UserID,Value,VariableName) VALUES(-1,'''+ArchiveServerName+''',''ArchiveServerName'')';
                           ExecSQL;
                        end
                        else
                        begin
                           Close;
                           SQL.Text := 'UPDATE Settings SET Value='''+ArchiveServerName+''' WHERE VariableName=''ArchiveServerName''';
                           ExecSQL;
                        end;
                        close;
                        SQL.Text := 'SELECT Value FROM Settings WHERE VariableName = ''ArchiveDBName''';
                        Open;
                        if IsEmpty then
                        begin
                           Close;
                           SQL.Text := 'INSERT INTO Settings(UserID,Value,VariableName) VALUES(-1,'''+ArchiveDBName+''',''ArchiveDBName'')';
                           ExecSQL;
                        end
                        else
                        begin
                           Close;
                           SQL.Text := 'UPDATE Settings SET Value='''+ArchiveDBName+''' WHERE VariableName=''ArchiveDBName''';
                           ExecSQL;
                        end;
                     end;
               end;
            end;
      if (ArchiveDBName<>'') then
      begin
         with DM.ArchiveConnection do
         begin
            Connected:=false;
            ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+ArchiveDBName+';Data Source='+ ArchiveServerName;
            ConnectionTimeout:=5;
         end;
         try
            dm.ArchiveConnection.Open('YeganehCorporate_Archive', IntToY(66));
            dm.ArchiveConnection.Connected:=true;
            _ConnectedToArchive := true;
         except
            _ConnectedToArchive := false;
         end;
      end
      else
         _ConnectedToArchive := false;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   except
      ShowModal;
   end;
end;

procedure TFconnect.BtnConnectClick(Sender: TObject);
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

procedure TFconnect.ClosingTimerTimer(Sender: TObject);
begin
close;
end;

procedure TFconnect.FormCreate(Sender: TObject);
begin
   Connect;
end;

end.
