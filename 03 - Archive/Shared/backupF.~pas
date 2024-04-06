unit backupF;

interface

Uses
    windows,Classes, BaseUnit, Dialogs, ActnMan, StdCtrls, ComCtrls, Buttons,
    Controls, ActnList, DB,forms,sysutils,dateutils,FileCtrl, ExtActns,
    XPStyleActnCtrls, xpWindow, xpBitBtn, ExtCtrls,Strutils,IniFiles,Math,
    ADODB;
Type
  ModeType = (Backup,Restore,Shrink);
  TBackupRestore = class(TMBaseForm)
    ActionManager: TActionManager;
    Aclose: TAction;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    StaticText1: TLabel;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    LblFreeSpace: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    EdtEndBackDate: TEdit;
    EdtEndBackTime: TEdit;
    EdtEndBackFile: TEdit;
    EdtEndResFile: TEdit;
    EdtEndResTime: TEdit;
    EdtBackupPath: TEdit;
    BitBtnBackup: TBitBtn;
    BitBtnRestore: TBitBtn;
    SpeedButton2: TSpeedButton;
    SaveDialog: TSaveDialog;
    BitBtnShrink: TBitBtn;
    QrRestore: TADOQuery;
    EdtShrinkDate: TEdit;
    Label10: TLabel;
    procedure AcloseExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    //Procedure SetPath(value:String);
    Procedure SetMode(value:modeType);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EPathExit(Sender: TObject);
    procedure EPathEnter(Sender: TObject);
    procedure BitBtnBackupClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BitBtnRestoreClick(Sender: TObject);
    procedure BitBtnShrinkClick(Sender: TObject);
  private
    AppTerminate : Boolean;
    FMode: ModeType;
    //FPath: String;
    ServerName : String;
    IsServer : Boolean;
  public
    //property Path:String read FPath write SetPath;
    property Mode:ModeType read FMode write SetMode;

  end;

var
  BackupRestore: TBackupRestore;

implementation

uses  Dmu, businessLayer,YShamsiDate;

{$R *.dfm}
//Var
   //ErrorMessage,SuccessMessage: string;

{Ranjbar 89.06.02 ID=16}
{procedure TBackupRestore.SetPath(value:String);
begin
   FPath:=value;
   Case Mode of
      Backup : SuccessMessage:='("'+path+'")‰”ŒÂ Å‘ Ì»«‰ »« „Ê›ﬁÌ   ÂÌÂ ‘œ';
      Restore : SuccessMessage:='‰”ŒÂ Å‘ Ì»«‰ »« „Ê›ﬁÌ  Ã«Ìê“Ì‰ ‘œ';
      Shrink : SuccessMessage:='›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì »« „Ê›ﬁÌ   ›‘—œÂ ”«“Ì ‘œ';
   end;
end;}

{function fn:string;
begin
   Case BackupRestore.mode of
      backup : result:=_Eyeganeh+'_'+copy(_Today,3 ,2)+'-'+copy(_Today,6 ,2)+'-'+copy(_Today,9 ,2)+'-h'+inttostr(HourOf(now))+'.ybk';
      shrink : result:='ygd83.log';
      else fn:='';
   end;
end;}

procedure TBackupRestore.SetMode(value:modeType);
begin
   FMode:=value;
   {Ranjbar 89.06.02 ID=16}
   {Case Value of
      Backup : begin
                  //Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ ';
                  ErrorMessage:='Œÿ«œ—  ÂÌÂ ‰”ŒÂ Å‘ Ì»«‰ ';
                  path:=dm.GetSystemValue(19)+fn; //Path+‰«„ ›«Ì· Å‘ Ì»«‰
               end;
      Restore : begin
                  path:='d:\'+fn;
                  //Lpath.Caption:='„”Ì— ›«Ì· Å‘ Ì»«‰ ';
                  ErrorMessage:='‘„« ‰„Ì  Ê«‰Ìœ «Ì‰ ⁄„· —« «‰Ã«„ œÂÌœ ·ÿ›« »« ò«—‘‰«” „—»ÊÿÂ „‘Ê—  ‰„«ÌÌœ';
               end;
      Shrink : begin
                  path:=dm.GetSystemValue(20)+fn; //Path + ‰«„ ›«Ì· ‘—Ì‰ﬂ
                  //Lpath.Caption:='„”Ì— ›«Ì· Â«Ì „Êﬁ  ';
                  ErrorMessage:='Œÿ«œ— ›‘—œÂ ”«“Ì ›«Ì· Â«Ì »«‰ò «ÿ·«⁄« Ì';
               end;
   end;}
   //---
end;

procedure TBackupRestore.AcloseExecute(Sender: TObject);
begin
   inherited;
   close;
end;


procedure TBackupRestore.FormShow(Sender: TObject);
Var
   AvailableFreeDisk,TotalSpace,TotalFreeSpace : Int64;
   MB:Int64;
   GB:Double;
   SectionName : String;
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
   //EPath.Text := path;

   IsServer := False;
   ServerName := Trim(Reg_GetValue('Software\yeganeh\Archive','ServerName',dtString,HKEY_CURRENT_USER));
   if (ServerName = '')or(ServerName = '.')or(LeftStr(ServerName,Strlen(pchar(Trim(Win_GetComputerName))))=Trim(Win_GetComputerName)) then
      IsServer := True;
   if UpperCase(ServerName) = UpperCase(Trim(Win_GetComputerName)) then
      IsServer := True;
   
   SectionName := 'BackupDatabase';
   EdtEndBackDate.Text := File_IniData(_IniFilePathName,SectionName,'EndBackDate',EdtEndBackDate.Text,False); //'SoftInitializ.INI'
   EdtEndBackTime.Text := File_IniData(_IniFilePathName,SectionName,'EndBackTime',EdtEndBackTime.Text,False);
   EdtEndBackFile.Text := File_IniData(_IniFilePathName,SectionName,'EndBackFile',EdtEndBackFile.Text,False);
   EdtEndResFile.Text  := File_IniData(_IniFilePathName,SectionName,'EndResFile' ,EdtEndResFile.Text ,False);
   EdtEndResTime.Text  := File_IniData(_IniFilePathName,SectionName,'EndResTime' ,EdtEndResTime.Text ,False);
   EdtShrinkDate.Text  := File_IniData(_IniFilePathName,SectionName,'ShrinkDate' ,EdtShrinkDate.Text ,False);
   EdtBackupPath.Text  := File_IniData(_IniFilePathName,SectionName,'BackupPath' ,_AppPath ,False);

   //»œ”  ¬Ê—œ‰ ÕÃ„ œ—«ÌÊ „”Ì— Å‘ Ì»«‰ êÌ—Ì
   if (Trim(EdtBackupPath.Text)<>'')And(EdtBackupPath.Text[1] in ['A'..'Z','a'..'z']) then
   begin
       GetDiskFreeSpaceEx( PChar(EdtBackupPath.Text[1]+':\'),AvailableFreeDisk,TotalSpace,@TotalFreeSpace) ;//In Byte
       MB := Round((AvailableFreeDisk / 1024) / 1024);
       GB := RoundTo(MB / 1024,-3);
       LblFreeSpace.Caption := IntToStr(MB)+' „ê«»«Ì  ' +'  Ì«  ' + FloatToStr(GB)+' êÌê«»«Ì  ' ;
   end;

   if Mode = Shrink then
   begin
      BitBtnBackup.Enabled := False;
      BitBtnRestore.Enabled := False;
   end;
   //---
end;

procedure TBackupRestore.SpeedButton1Click(Sender: TObject);
var s:string;
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
   OpenDialog.InitialDir := EdtBackupPath.Text;
   if Mode <> Restore then
   begin
      //Å‘ Ì»«‰ êÌ—Ì
      if SelectDirectory(' ⁄ÌÌ‰ „”Ì— Å‘ Ì»«‰ êÌ—Ì','',S) then
      begin
         //Path := S + '\' + Fn;
         EdtBackupPath.Text := S;
      end
   end
      else
         //»«“Ì«»Ì «ÿ·«⁄« 
         if OpenDialog.Execute then
         begin
            //Path := OpenDialog.FileName;
            EdtEndResFile.Text := OpenDialog.FileName;
         end;
   //---      
end;

procedure TBackupRestore.FormClose(Sender: TObject;var Action: TCloseAction);
Var
   SectionName : String;
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
   SectionName := 'BackupDatabase';
   File_IniData(_IniFilePathName,SectionName,'EndBackDate',EdtEndBackDate.Text,True); //'SoftInitializ.INI'
   File_IniData(_IniFilePathName,SectionName,'EndBackTime',EdtEndBackTime.Text,True);
   File_IniData(_IniFilePathName,SectionName,'EndBackFile',EdtEndBackFile.Text,True);
   File_IniData(_IniFilePathName,SectionName,'EndResFile' ,EdtEndResFile.Text ,True);
   File_IniData(_IniFilePathName,SectionName,'EndResTime' ,EdtEndResTime.Text ,True);
   File_IniData(_IniFilePathName,SectionName,'ShrinkDate' ,EdtShrinkDate.Text ,True);
   File_IniData(_IniFilePathName,SectionName,'BackupPath' ,EdtBackupPath.Text ,True);

   if AppTerminate then
      Application.Terminate;

   {Case Mode of
      Backup : Dm.SetSystemValue(19,ExtractFilePath(path));
      Shrink : Dm.SetSystemValue(20,ExtractFilePath(path));
   end;}
   //---
end;

procedure TBackupRestore.EPathExit(Sender: TObject);
begin
   inherited;
   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TBackupRestore.EPathEnter(Sender: TObject);
begin
   inherited;
   ActivateKeyboardLayout(HKL_NEXT, KLF_REORDER);
end;

procedure TBackupRestore.BitBtnBackupClick(Sender: TObject);
Var
   StartTime,EndTime:TTime;
   FaName,Path:String;
   
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
//   if IsServer = False then
//   begin
//      ShowMessage('ﬂ«—»— ê—«„Ì ›ﬁÿ »— —ÊÌ ﬂ«„ÅÌÊ — ”—Ê— „Ì  Ê«‰ ⁄„·Ì« Â«Ì „ÊÃÊœ œ— «Ì‰ ›—„ —« «‰Ã«„ œ«œ');
//      Exit;
//   end;
      
   //SoftInitializ.INI «‰Ã«„ ⁄„·Ì«  Å‘ Ì»«‰ êÌ—Ì Ê À»  «ÿ·«⁄«  œ— ›«Ì·
   Path := Trim(EdtBackupPath.Text);
   if Path <> '' then
      if Not DirectoryExists(Path) then
         ForceDirectories(Path); //”«Œ  ÅÊ‘Â Å‘ Ì»«‰ êÌ—Ì
   Try
      BitBtnBackup.Enabled := False;
      Screen.Cursor := crHourGlass;
      ProgressBar1.Position:=40;
      Try
         if Path <> '' then
            SaveDialog.InitialDir := Path
         else
            SaveDialog.InitialDir := GetCurrentDir;
         //”«Œ  ‰«„ ›«Ì· Å‘ Ì»«‰ êÌ—Ì
         FaName :=  'YArchive-' + _Today +'-H'+ Time_GetTime(Dm.YeganehConnection,False)+'.ybk';
         FaName := AnsiReplaceText(FaName , '/' , '-');
         FaName := AnsiReplaceText(FaName , ':' , '-');
         SaveDialog.FileName := FaName;
         if SaveDialog.Execute then
         begin
            StartTime := Time;

            // «»⁄ Å‘ Ì»«‰ êÌ—Ì
            Exec_ysp_Backup('YArchive',SaveDialog.FileName);//Path+

            EdtEndBackDate.Text := _Today + '  ' + Time_GetTime(Dm.YeganehConnection,False);
            EndTime := Time;
            EdtEndBackTime.Text := IntToStr(MinutesBetween(StartTime, EndTime)); //IntToStr(Time_SecendBetween(StartTime,EndTime));
            EdtEndBackFile.Text := SaveDialog.FileName;

            progressbar1.Position := 100;
            ShowMyMessage('ÅÌ€«„','⁄„·Ì«  Å‘ Ì»«‰ êÌ—Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',[mbOK],mtInformation);
            //ShowMsgString(SuccessMessage);
         end;
      Except
         ShowMessage('«‘ﬂ«· œ— Å‘ Ì»«‰ êÌ—Ì «ÿ·«⁄« '+ #13 +'·ÿ›« «“ »” Â »Êœ‰ ‰—„ «›“«—Â«Ì œÌê— „ÿ„∆‰ ‘ÊÌœ');
      End;
   Finally
      Screen.Cursor := crDefault;
      BitBtnBackup.Enabled := True;
   End;

   if Mode = Backup then
   begin
      Dm.SetSystemValue(13,True); //True ﬁ—«— œ«œ‰ „ﬁœ«—
   end;
   //---
end;

procedure TBackupRestore.SpeedButton2Click(Sender: TObject);
begin
   inherited;
   Close;
end;


procedure TBackupRestore.BitBtnRestoreClick(Sender: TObject);
Var
   //DBDataName,DBLogName,
   DBDataPath,DBLogPath:String;
   StartTime,EndTime : TDateTime;
   I:integer;
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
   if IsServer = False then
   begin
      ShowMessage('ﬂ«—»— ê—«„Ì ›ﬁÿ »— —ÊÌ ﬂ«„ÅÌÊ — ”—Ê— „Ì  Ê«‰ ⁄„·Ì« Â«Ì „ÊÃÊœ œ— «Ì‰ ›—„ —« «‰Ã«„ œ«œ');
      Exit;
   end;
   
   ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì'+ #13 +
      '·ÿ›« «“ »” Â »Êœ‰ «Ì‰ ‰—„ «›“«— œ—  „«„Ì ò«„ÅÌÊ — Â« „ÿ„∆‰ ‘ÊÌœ Ê ‰Ì“ ' + #13 +
      'Å” «“ «‰Ã«„ ⁄„·Ì«  »«“Ì«»Ì ° «“ »—‰«„Â Œ«—Ã ŒÊ«ÂÌœ ‘œ',[mbOK],mtInformation);

   
   DBDataPath := ExtractFilePath(Application.ExeName) + _DBName + '.MDF';
   DBLogPath  := ExtractFilePath(Application.ExeName) + _DBName + '_Log.LDF';

   OpenDialog.InitialDir := EdtBackupPath.Text;
   if OpenDialog.Execute then
   begin
      Try
         BitBtnRestore.Enabled := False;
         Try
            StartTime := Time;

            for I:=0 to Dm.ComponentCount-1 do
            begin
               if Dm.Components[i].ClassNameIs('TADOStoredProc')  then
                  TADOStoredProc(Dm.Components[i]).Close;
               if Dm.Components[i].ClassNameIs('TADOQuery')  then
                  TADOQuery(Dm.Components[i]).Close;
               if Dm.Components[i].ClassNameIs('TADOTable') then
                  TADOTable(Dm.Components[i]).Close;
            end;
            
            DB_KillProcess(_DBName,Dm.YeganehConnection);

            QRRestore.Connection := dm.YeganehConnection;
            QRRestore.SQL.Text := '';
            QRRestore.SQL.Add('RESTORE DATABASE ' + _DBName );
            QRRestore.SQL.Add(' FROM DISK = ' + QuotedStr(OpenDialog.FileName));
            QRRestore.SQL.Add(' WITH  FILE = 1 , NOUNLOAD , STATS = 10 , RECOVERY ' );
            QRRestore.ExecSQL;

            Application.ProcessMessages;

            EndTime := Time;
            EdtEndResTime.Text := IntToStr(MinutesBetween(StartTime, EndTime)); //IntToStr(Time_SecendBetween(StartTime,EndTime));
            EdtEndResFile.Text := OpenDialog.FileName;

            ShowMyMessage('ÅÌ€«„','⁄„·Ì«  »«“Ì«»Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',[mbOK],mtInformation);
            AppTerminate := True;
            Close;
         Except
            on E: Exception do
            begin
               ShowMessage(E.Message);
               ShowMessage('«‘ﬂ«· œ— »«“Ì«»Ì «ÿ·«⁄« '+ #13 +'·ÿ›« «“ »” Â »Êœ‰ ‰—„ «›“«—Â«Ì œÌê— „ÿ„∆‰ ‘ÊÌœ');
            end;
         End;
      Finally
         QRRestore.Close;
         BitBtnRestore.Enabled := True;
      End;
   end;
   //---
end;

procedure TBackupRestore.BitBtnShrinkClick(Sender: TObject);
begin
   inherited;
   {Ranjbar 89.06.02 ID=16}
   if IsServer = False then
   begin
      ShowMessage('ﬂ«—»— ê—«„Ì ›ﬁÿ »— —ÊÌ ﬂ«„ÅÌÊ — ”—Ê— „Ì  Ê«‰ ⁄„·Ì« Â«Ì „ÊÃÊœ œ— «Ì‰ ›—„ —« «‰Ã«„ œ«œ');
      Exit;
   end;

   if MessageDlg('¬Ì« „«Ì· »Â »ÂÌ‰Â ”«“Ì »«‰ﬂ «ÿ·«⁄« Ì Â” Ìœø', mtInformation,[mbOk,mbCancel],0) = mrCancel then
      Exit;

   Try
      Try
         BitBtnShrink.Enabled := False;
         Screen.Cursor := crHourGlass;
         Progressbar1.Position := 40;
         Exec_ysp_shrink('YArchive','');//Path :  ‰Ì«“ »Â Å«—«„ — œÊ„ ‰Ì” 
         progressbar1.Position := 80;
         Exec_ysp_shrink('YArchive','');//path
         progressbar1.Position := 100;
         EdtShrinkDate.Text := _Today;
         ShowMyMessage('ÅÌ€«„','⁄„·Ì«  »ÂÌ‰Â ”«“Ì »«‰ﬂ «ÿ·«⁄« Ì »« „Ê›ﬁÌ  «‰Ã«„ ‘œ',[mbOK],mtInformation);
      Except
         On E : Exception do
         begin
            ShowMessage(E.Message);
            ShowMyMessage('ÅÌ€«„','«‘ﬂ«· œ— ⁄„·Ì«  »ÂÌ‰Â ”«“Ì »«‰ﬂ «ÿ·«⁄« Ì',[mbOK],mtInformation);
         end;
      End;
   Finally
      BitBtnShrink.Enabled := True;
      Screen.Cursor := crDefault;
   End;
   //---
end;

end.
