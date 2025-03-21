unit UDbName;

interface

{uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;
 }
uses
  UemsVCL, BaseUnit, DB, ADODB, DBActns, Classes, ActnList, ActnMan,StrUtils,
  ComCtrls, ActnMenus, Grids, DBGrids, StdCtrls, DBCtrls, Graphics,Dialogs,
  ExtCtrls, Buttons, ToolWin, ActnCtrls, Mask,Forms, Controls,SysUtils,Windows,
  DBLookupEdit, YCheckGroupBox, YDbgrid, ExtActns, XPStyleActnCtrls,
   xpPages, xpBitBtn, wwriched, Wwdbgrid, wwdbedit, Menus,ComObj,
   ContractsUnit,FlowUpUnit,CustomerInfoUnit, ImgList, shellApi, xmldom,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdCoder, IdCoder3to4,
  IdCoderMIME, MssMessage, Spin,wordXp, Registry;

type
  TfDbName = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    AdoSelect: TADOStoredProc;
    DsSelect: TDataSource;
    AdoSelectID: TIntegerField;
    AdoSelectName: TStringField;
    AdoSelectServerName: TStringField;
    AdoSelectDBName: TStringField;
    AdoDelete: TADOStoredProc;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Button5: TButton;
    Button4: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button6: TButton;
    ClosingTimer: TTimer;
    Button7: TButton;
    adoCheck: TADOStoredProc;
    IntegerField2: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    Button8: TButton;
    adoCreatetbdbname: TADOStoredProc;
    adodbname_select: TADOStoredProc;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Connect;
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
        Systemname : String;
        CRMDBName :String;
  public
    { Public declarations }
  end;

var
  fDbName: TfDbName;
   SERVERNAME: string;

 // Fconnect: TFconnect;
 // ServerName:string;
  CRMServerName,CRMDBName : string;
implementation

uses
  Dmu, SelectDBFm, businessLayer, YShamsiDate, UMain;

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
procedure TfDbName.FormShow(Sender: TObject);
begin
  AdoSelect.Close;
  AdoSelect.Open;
  Panel3.Visible := False;
end;

procedure TfDbName.Button3Click(Sender: TObject);
begin
 if MessageDlg(' ��� ���� �� ��� ����Ͽ.',mtConfirmation,[mbyes,mbno],0)=mrno then
    Exit
 else
 begin
   AdoDelete.Close;
   AdoDelete.Parameters.ParamByName('@ID').Value := AdoSelectID.AsInteger;
   AdoDelete.ExecProc;

   ShowMessage('��� �� ������ ����� ��');

   AdoSelect.Close;
   AdoSelect.Open

 end;



end;

procedure TfDbName.Button5Click(Sender: TObject);
begin
   if AdoSelect.State in [dsEdit,dsInsert] then
   begin
     AdoSelect.Post;
     Panel3.Visible := False;
     Button1.Enabled := True;
     Button2.Enabled := True;
     Button3.Enabled := True;
   end
   ELSE
   begin
     Exit;
     Abort;
   end;

end;

procedure TfDbName.Button4Click(Sender: TObject);
begin
   Panel3.Visible := False;
   AdoSelect.Cancel;
   Button1.Enabled := True;
   Button2.Enabled := True;
   Button3.Enabled := True;

end;

procedure TfDbName.Button1Click(Sender: TObject);
begin
  if Not(AdoSelect.State in [dsEdit,dsInsert]) then
  begin
    Button2.Enabled := False;
    Button3.Enabled := False;
    Panel3.Visible := True;
    AdoSelect.Insert;
    DBEdit1.SetFocus;
  end
  else
  begin
     Exit;
     Abort;
  end;
end;

procedure TfDbName.Button2Click(Sender: TObject);
begin
  if Not(AdoSelect.State in [dsEdit,dsInsert]) then
  begin
    Button1.Enabled := False;
    Button3.Enabled := False;

    Panel3.Visible := True;
    AdoSelect.Edit;
    DBEdit1.SetFocus;

  end
  else
  begin
     Exit;
     Abort;
  end;
end;

procedure TfDbName.Button6Click(Sender: TObject);
var
   dbm: TRegistry;
   dbname ,RegistryKey: String;
   CRMServerName,RootName : string;
   var R: TRegistry;
begin
  Button7Click(Self);

  if AdoSelect.State in [dsEdit,dsInsert] then
  begin
    AdoSelect.Cancel;
    AdoSelect.Close;
    AdoSelect.Open;
  end;
    //ShowMessage(AdoSelectName.AsString);
    if MessageDlg('��� ���� �� ����� ������ �� ���Ͽ', mtInformation, mbOKCancel, 0) = mrCancel then
    Exit;

    Systemname := 'dabir';

   DbM := TRegistry.Create;
   RegistryKey :='Software\yeganeh\' + Systemname;
   with dbm do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(RegistryKey, True);

      CRMServerName := Trim(ReadString('ServerName'));
      CRMDBName := Trim(ReadString('DataBaseName'));
//      edServerName.Text := CRMServerName;
//      edDbName.Text := CRMDBName;
   end;


  //_DatabaseName := edDbName.Text;//'ydabir'; //UpperCase(Srv_GetSrvCumputerName(YeganehConnection)) ;
  //SERVERNAME := edServerName.Text;//'192.168.88.39';
   _DatabaseName := AdoSelectDBName.AsString;
   SERVERNAME := AdoSelectServerName.AsString;
//   with dm.YeganehConnection do
//   begin
//      Connected:=false;
//      //ConnectionString:= 'Provider=SQLOLEDB.1;Password=123;Persist Security Info=True;User ID=sa;Initial Catalog=;'+_DataBaseName+';Data Source='+ SERVERNAME ;
//      ConnectionString:= 'Provider=SQLOLEDB.1;Password='+'A?j(Kf]`_5CNe3n0oZa'+'rY7w-pS9l[{V8Bi\6m}+!t.v~UP:M;A?j'+';Persist Security Info=True;User ID=YeganehCorporate_Dabir;Initial Catalog=;'+_DataBaseName+';Data Source='+ SERVERNAME ;
//      //ConnectionTimeout:=3000000;
//      LoginPrompt := True;
////      Connected := True;
//      ShowMessage(ConnectionString);
//   end;
//---------------------------------------------------------------------------
  r:=TRegistry.Create;
  with R do
   begin
   RootKey:=HKEY_CURRENT_USER;
   OpenKey(RegistryKey, True);
     if trim(SERVERNAME)<>'' then
     begin
       WriteString('ServerName', SERVERNAME);
       WriteString('DataBaseName',AdoSelectDBName.AsString);
     end;
   end;
//Connect;
MainForm.ASwitchUserExecute(Sender);
end;

procedure TfDbName.Connect;
var
  R,R2,Q,RegArch: TRegistry;
  Items:TStrings;
begin
   Items:=TStringList.Create;
   tmpYear:=0;
   {�� ����� �� �� ������� ����� tmpyear ���� ����� ���� ���� ��� �� ��� ����� �� � ������� ��� ��� ����� ���� �� ���
   � ��� �� � ��� ���� �� ��� ������ ���� �� ������� �� ���� ��� ��� �� ������� ���� ��� �� ���}



   R2 := TRegistry.Create;
   with R2 do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(dabirRegistryKey, True);

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
         OpenKey(dabirRegistryKey, True);
         _DatabaseName:=Trim(ReadString('DataBaseName'));
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



   if (_DatabaseName<>'') then
   begin
      with DM.CRMConnection do
      begin
         Connected:=false;
         ConnectionString:='Provider=SQLOLEDB.1;Password=12;User ID=SABZ;Initial Catalog='+_DatabaseName+';Data Source='+ CRMServerName;
         ConnectionTimeout:=3;
      end;
      {try
         dm.CRMConnection.Open('yeganehCompany_CRM', IntToY(61));
         dm.CRMConnection.Connected:=true;
         _CanConnectToCRM := true;
      except
         _CanConnectToCRM := false;
      end;
       }
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
               SQL.Text := 'SELECT Value FROM Settings WHERE VariableName = ''\ ''';
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
        {try
            dm.ArchiveConnection.Open('YeganehCorporate_Archive', IntToY(66));
            dm.ArchiveConnection.Connected:=true;
            _ConnectedToArchive := true;
         except
            _ConnectedToArchive := false;
         end;
        }
      end
      else
         _ConnectedToArchive := false;
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   except
      ShowModal;
   end;

end;

procedure TfDbName.Button7Click(Sender: TObject);
var
   dbm: TRegistry;
   dbname ,RegistryKey: String;
   CRMServerName,RootName : string;
   var R: TRegistry;
begin
      Systemname := 'dabir';
     DbM := TRegistry.Create;
   RegistryKey :='Software\yeganeh\' + Systemname;
   with dbm do
   begin
      RootKey:=HKEY_CURRENT_USER;
      OpenKey(RegistryKey, True);

      CRMServerName := Trim(ReadString('ServerName'));
      CRMDBName := Trim(ReadString('DataBaseName'));
//      edServerName.Text := CRMServerName;
//      edDbName.Text := CRMDBName;
   end;
   //ShowMessage(IntToStr(_UserID));
   _DatabaseName := AdoSelectDBName.AsString;

   adoCreatetbdbname.Close;
   adoCreatetbdbname.Parameters.ParamByName('@DbName_New').Value := _DatabaseName;
   adoCreatetbdbname.Parameters.ParamByName('@DbName_Old').Value := CRMDBName ;
   adoCreatetbdbname.ExecProc;
{
   adodbname_select.Close;
   adodbname_select.Parameters.ParamByName('@DbName_New').Value := _DatabaseName;
   adodbname_select.ExecProc;

 }

   adoCheck.Close;
   adoCheck.Parameters.ParamByName('@DbName_Old').Value := CRMDBName;
   adoCheck.Parameters.ParamByName('@DbName_New').Value := _DatabaseName;
   adoCheck.Parameters.ParamByName('@UserID').Value := IntToStr(_UserID);
   adoCheck.ExecProc;

   ShowMessage('��������� �� ������ ���� ��');
   
end;

end.
//                   A?j(Kf]`_5CNe3n0oZa'rY7w-pS9l[{V8Bi\6m}+!t.v~UP:M;A?j
