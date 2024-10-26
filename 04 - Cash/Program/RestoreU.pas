unit RestoreU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, ComCtrls, StdCtrls,FileCtrl, Buttons, Grids, DBGrids;

type
  TFrRestore = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label4: TLabel;
    BackupPath: TEdit;
    RestorePath: TEdit;
    Button1: TButton;
    ProgressBar: TProgressBar;
    OpenDialog: TOpenDialog;
    dbinfo: TADOQuery;
    ADOConnection: TADOConnection;
    Processes: TADOQuery;
    ProcessesProcessID: TIntegerField;
    quFileList: TADOQuery;
    quFileListLogicalName: TWideStringField;
    quFileListPhysicalName: TWideStringField;
    quFileListType: TWideStringField;
    quFileListFileGroupName: TWideStringField;
    dsFileList: TDataSource;
    DBGrid1: TDBGrid;
    quFileListDL: TStringField;
    quFileListNewSize: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DisConnectAllConnections;
    procedure ExecCommand(s:string);
    procedure FormCreate(Sender: TObject);
    procedure quFileListCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GetTrueFilePath(Path: string): string;
  public
    RestoreBackUp : Boolean;
    { Public declarations }
  end;

var
  FrRestore: TFrRestore;

implementation

uses dmu, ConnectU, BusinessLayer;

{$R *.dfm}


procedure TFrRestore.SpeedButton1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
    BackupPath.Text:=OpenDialog.FileName;

    with dbinfo do
    begin
      Close;
      sql.Text:='RESTORE FILELISTONLY FROM DISK = '+ QuotedStr(GetTrueFilePath(BackupPath.Text));
      Open;
      RestorePath.Text:=ExtractFilePath(Fields[1].AsString);
      quFileList.Close;
      quFileList.Parameters[0].Value :=   BackupPath.Text;
      quFileList.Open;
      DBGrid1.Visible := true;
      Height := 360;
    end;
  end;
end;

procedure TFrRestore.SpeedButton3Click(Sender: TObject);
var
  s: string;
begin
  if SelectDirectory(' „”Ì— »«“Ì«»Ì:     ','',s) then
    RestorePath.Text:=s;
end;

function TFrRestore.GetTrueFilePath(Path: string): string;
var
  FileAddress: string;
  HostName, IPaddr, WSAErr: string;
begin
   FileAddress:= trim(Path);
   {
   if GetIPFromHost(HostName, IPaddr, WSAErr) then
   begin
      if (Pos(Uppercase(HostName),UpperCase(ServerName)) = 0) and (Pos(':\', FileAddress)>0) then
      begin
         Delete(FileAddress, Pos(':\', FileAddress)-1, 3);
         FileAddress:= '\\'+IPaddr + '\' + FileAddress;
      end;
   end;
    }
   result:= FileAddress;
end;

procedure TFrRestore.Button1Click(Sender: TObject);
var
  file1,file2, script:string;    // Amin 1391/10/19
  cmd : TADOCommand;
  s : TStrings;
begin

  if MessageDlg('»Â — «”  ﬁ»· «“ «‰Ã«„ «Ì‰ ⁄„· ‰”ŒÂ Å‘ Ì»«‰  ÂÌÂ ò‰Ìœ Ê Â„ç‰Ì‰ ò·ÌÂ ò«—»—«‰ «“ ”Ì” „ Œ«—Ã ‘Ê‰œ'+
  #13#10+' »« «Ì‰ „·«ÕŸ«  ¬Ì« «“ Ã«Ìê“Ì‰Ì ‰”ŒÂ Å‘ Ì»«‰ „ÿ„∆‰ Â” Ìœø',mtConfirmation,[mbyes,mbno],0)<>mryes then
    Exit;

  { TODO -oparsa : 14030805-bug414 }
  if trim(BackupPath.Text)= ''   then
  begin
    ShowMessage('„”Ì— ›«Ì· Å‘ Ì»«· —« ·ÿ›« «‰ Œ«» ‰„«ÌÌœ');
    Exit;
  end;

  if trim(RestorePath.Text)= ''  then
  begin
    ShowMessage('„”Ì— ›«Ì· »«“Ì«»Ì ·ÿ›« «‰ Œ«» ‰„«ÌÌœ');
    Exit;
  end;
  { TODO -oparsa : 14030805-bug414 }

  ProgressBar.Position := 30;
  sleep(1000);
  
  RestorePath.Text     := trim(RestorePath.Text);

  if RestorePath.Text[Length(RestorePath.Text)]<>'\' then
    RestorePath.Text:= RestorePath.Text+'\';

{with dbinfo do
 begin
   Close;
   sql.Text:=' RESTORE FILELISTONLY FROM DISK = '+ QuotedStr(GetTrueFilePath(BackupPath.Text));
   Open;
   first;
   // Amin 1391/10/19 file1:=QuotedStr(Fields[0].AsString);
   file1:=Fields[0].AsString; // Amin 1391/10/19
   next;
   // Amin 1391/10/19 file2:=QuotedStr(Fields[0].AsString);
    file2:=Fields[0].AsString; // Amin 1391/10/19

 end;  }    //Commented By Hadi Mohamed 920301
  if( not DirectoryExists(GetTrueFilePath(RestorePath.Text)))   then
  begin
    ShowMessage('.„”Ì— ›«Ì· »«“Ì«»Ì „ÊÃÊœ ‰„Ì »«‘œ');
    Exit;
  end;

  // Amin 1391/10/19 DisconnectAllConnections;
  ProgressBar.Position := 55;
  sleep(1000);
  // Amin 1391/10/19 Start
  try

    cmd:= TADOCommand.Create(nil);
    cmd.Connection := dm.YeganehConnection;
    with TADOQuery.Create(nil)do
    begin
      Connection := dm.YeganehConnection;
      SQL.Text := 'select spid from master.dbo.sysprocesses WHERE (dbid = (SELECT dbid FROM master.dbo.sysdatabases WHERE (name = '''+DataBaseName+''')))';
      Active := true;
      First;
      while not eof do
      begin
        cmd.CommandText := 'kill '+IntToStr(Fields[0].AsInteger);
        try
          cmd.Execute;
        except
        end;
        next;
      end;
    end;
    
    ProgressBar.Position := 65;
    sleep(1000);

    script:= 'USE [master] Restore DataBase ['+DataBaseName+ '] From Disk = '''+GetTrueFilePath(BackupPath.Text)+''' With ';

    quFileList.First;
    while not quFileList.Eof do
    begin
      script := script +' Move '''+ quFileListLogicalName.AsString + ''' to ''' +GetTrueFilePath(RestorePath.Text)+ ExtractFileName(quFileListPhysicalName.AsString)+''' , ';//GetTrueFilePath(RestorePath.Text)+DataBaseName+'.MDF'''
      quFileList.Next;
    end;
    ProgressBar.Position := 75;
    sleep(1000);

    script := script +' replace';

    cmd.CommandText := script;
    s := TStringList.Create;
    s.Add(script);
    //s.SaveToFile('t.txt');
    cmd.Execute;
    { TODO -oparsa : 14030805-bug414 }
    //WinExec(pansichar( Application.ExeName),0);
    RestoreBackUp := True ;
    ProgressBar.Position := 100;
    sleep(1000);
    ShowMessage(' »«“Ì«»Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ ·ÿ›« »—‰«„Â œÊ»«—Â «Ã—« ‰„«ÌÌœ ')   ;
    Application.Terminate;
    { TODO -oparsa : 14030805-bug414 }
    except on e: exception do
      ShowMessage(e.Message);
    end;
  { TODO -oparsa : 14030805-bug414 }
  Close;
  { TODO -oparsa : 14030805-bug414 }
end;

procedure TFrRestore.DisConnectAllConnections;
begin
  dm.ApplicationEvents.OnException:=nil;
  with Processes do
  begin
    close;
    Parameters.ParamByName('dbname').Value:=DataBaseName;
    Open;
    while not eof do
    begin
      ExecCommand(' kill '+ProcessesProcessID.AsString);
      next;
    end;
  end;
end;

procedure TFrRestore.ExecCommand(s:string);
var
  adc:TADOCommand;
  ConnStr: string;
begin
  adc:=TADOCommand.Create(self);
  //adc.ConnectionString:='Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security Info=False;Initial Catalog=master;Use Procedure for Prepare=1;'+
  //   'Auto Translate=True;Packet Size=4096;Use Encryption for Data=False;Tag with column collation when possible=False';

  ConnStr:= StringReplace(dm.YeganehConnection.ConnectionString, DataBaseName, 'master', [rfReplaceAll]);
  adc.ConnectionString:= ConnStr;

  adc.CommandText:=s;
  adc.Execute;
end;

procedure TFrRestore.FormCreate(Sender: TObject);
begin
  try
    {ADOConnection.Connected := false;
    ADOConnection.ConnectionString:= dm.YeganehConnection.ConnectionString;
    ADOConnection.Connected := true;}
  except on e:Exception do
    ShowMessage(e.Message);
  end;
end;

procedure TFrRestore.quFileListCalcFields(DataSet: TDataSet);
begin
  if quFileListType.Value='D' then
    quFileListDL.Value := '›«Ì· œ«œÂ'
  else
    quFileListDL.Value := '›«Ì· ·«ê';

//   quFileListNewSize.value := IntToStr(quFileListSize.AsInteger div 1048576)+' '+'MB';
end;

procedure TFrRestore.FormShow(Sender: TObject);
begin
  RestoreBackUp := False ;
end;

end.
