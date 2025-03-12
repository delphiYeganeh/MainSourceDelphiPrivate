unit UAddLetterDataDialog;

interface

uses
    DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
    Controls, Classes, Windows,ActnList, XPStyleActnCtrls, Dialogs, xpWindow,
    xpBitBtn, ExtCtrls,QForms, Grids, DBGrids ,FileCtrl, shellapi,
    TntDialogs,frmWait,GenTransparent,ActiveX,u_err_msg,ADODB,U_PDF_TO_TXT_FRM,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, StrUtils,ComCtrls
  {HKH Owner Units},
  BaseUnits, AdvGlowButton;

type
  TFrAddLetterDataDialog = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    path: TEdit;
    SpeedButton1: TAdvGlowButton;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    ChBFolder: TCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    edtVersionNo: TDBEdit;
    edtVersionDate: TDBEdit;
    TntOpenDialog: TTntOpenDialog;
    ProgressBar1: TProgressBar;
    IdFTP1: TIdFTP;
    ADOQuery1: TADOQuery;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure ChBFolderClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure AddTxtToDB(LetterDataID,TypeID : integer);
    function  RunAsAdminAndWaitForCompletion(hWnd: HWND; filename: string; Parameters: string): Boolean;

    procedure add_file_to_db;
    procedure IdFTP1Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdFTP1WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdFTP1WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure FormCreate(Sender: TObject);
  private
    FileNamePath,_SaveFileType : String;
    _DownloadSetting:TDownloadSetting;
    _BaseSQLConnection:TBaseSQLConnection;
    procedure InsertZipExtention;
    Function UploadFileToFTP(Source:string;UploadFile:String):String;
    procedure ItializeDownloadSetting;
  public
  done:boolean;
  { Public declarations }
  end;

TReIndexThread = class(TThread)
private
FrmWait : TWaitForm;
protected
procedure Execute; override;
public
Class procedure Run;
end;

var
  FrAddLetterDataDialog: TFrAddLetterDataDialog;

implementation

Uses AddLetterDataDM , Dmu, UaddLetterData, YShamsiDate, SysUtils,
  businessLayer, Forms, ScanImageDM, Variants;

{$R *.dfm}

procedure TFrAddLetterDataDialog.add_file_to_db;
Var
   i: integer;
begin

   { TODO -oparsa : 14030126 }
   if (dm.Get_LetterData_by_LetterID.State in [dsInsert]) then
     dm.Get_LetterData_by_LetterID.Post;
   { TODO -oparsa : 14030126 }
 //   ID := Dm.Get_LetterData_by_LetterIDLetterDataID.AsInteger;
//    Dm.Get_LetterData_by_LetterID.Close;
//    Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterID').Value := FraddLetterData.LetterID;
//    Dm.Get_LetterData_by_LetterID.Open;
//    Dm.Get_LetterData_by_LetterID.Locate('LetterID',FraddLetterData.LetterID,[]);

   if path.Text <> '' then
   with dm.Get_LetterData_by_LetterDataID do
   begin
      Close;
      Parameters.ParamByName('@LetterdataID').Value:=Dm.GetMaxLetterDataID;
      Open;
      Edit;
      if FileExists(_ApplicationPath+'tmpFile')then
       DeleteFile(pchar(_ApplicationPath+'tmpFile'));
      if CopyFileW( dm.replacePWC(dm.StringToPWide(TntOpenDialog.filename,i)), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
         dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(_ApplicationPath+'tmpFile')
      else if CopyFileW( dm.StringToPWide(TntOpenDialog.filename,i), dm.StringToPWide(_ApplicationPath+'tmpFile',i), False) then
         dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(_ApplicationPath+'tmpFile')
      else
         ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');

      Post;

      DeleteFile(pchar(path.Text+'tmpFile'));
      if FileExists(_ApplicationPath+'tmpFile')then
       DeleteFile(pchar(_ApplicationPath+'tmpFile'));
      AddTxtToDB(Dm.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger,DBLookupComboBox1.KeyValue);
   end;
   if (ChBFolder.Checked)and FileExists(FileNamePath)and Not File_IsInUse(FileNamePath) then
      DeleteFile(FileNamePath);

   close;
end;

procedure TFrAddLetterDataDialog.BitBtn1Click(Sender: TObject);
var
    SaveFileUrl:string;
    ID:Integer;
    SaveFileName:string;
    LetterID:string;
begin
  if DSForm.DataSet.FieldByName('ExtentionTitle').IsNull then
  begin
    ShowMessage('·ÿ›« ‰Ê⁄ ÅÌÊ”  —« «‰ Œ«» ò‰Ìœ');
    Exit;
  end;

  if  _SaveFileType ='2' then
    add_file_to_db
  else
  begin
    try
      LetterID:=IntToStr(FraddLetterData.LetterID);
    except

    end ;
    SaveFileUrl:=  LetterID+FormatDateTime('yyyymmdd hhmmss',now)+rightstr(path.Text,4);

    SaveFileName:= UploadFileToFTP(path.Text,SaveFileUrl);
    dm.Get_LetterData_by_LetterID.Post;
    ID := Dm.Get_LetterData_by_LetterIDLetterDataID.AsInteger;
    if path.Text <> '' then
    begin
      with dm.Get_LetterData_by_LetterDataID do
      begin
        close;
        Parameters.ParamByName('@LetterdataID').Value:=Dm.GetMaxLetterDataID;
        Open;
        Edit;
        Post;
     end;
     Dm.Get_LetterData_by_LetterID.Close;
     Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterID').Value := FraddLetterData.LetterID;
     Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterDataID').Value := DM.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger;
     Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@flag').Value := 1;
     Dm.Get_LetterData_by_LetterID.Open;
     Dm.Get_LetterData_by_LetterID.Locate('LetterID',FraddLetterData.LetterID,[]);

      Dm.ADOQuery1.Close;
      Dm.ADOQuery1.Parameters.ParamByName('URL').Value :=  SaveFileName;
      Dm.ADOQuery1.Parameters.ParamByName('path').Value :=  SaveFileName;
      Dm.ADOQuery1.Parameters.ParamByName('Pa_LetterDataID').Value := DM.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger;
      Dm.ADOQuery1.ExecSQL;
      Dm.Get_LetterData_by_LetterID.Close;
      Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterID').Value := FraddLetterData.LetterID;
      Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@LetterDataID').Value := 0;
      Dm.Get_LetterData_by_LetterID.Parameters.ParamByName('@flag').Value := 0;
      Dm.Get_LetterData_by_LetterID.Open;
    end;
    close;
    Exit;
    add_file_to_db;
  end;
end;

procedure TFrAddLetterDataDialog.BitBtn2Click(Sender: TObject);
var
   ID : integer;
begin
  inherited;
   dm.Get_LetterData_by_LetterID.Cancel;
   ID := Dm.Get_LetterData_by_LetterIDLetterDataID.AsInteger;
   dm.YeganehConnection.Execute('DELETE FROM LETTERDATA WHERE LETTERID = '+IntToStr(ID));
   close;
end;

procedure TFrAddLetterDataDialog.AddTxtToDB(LetterDataID,TypeID : integer);
var
   parameters,textFilePathName: string;
   fileString : WideString;
   stringList : TStrings;
   PDF_TO_TXT_: TPDF_TO_TXT_FRM;
   ADD_QRY : TADOQuery;
   JJ : INTEGER;
begin
////////////////////////////////////////////////////////////
   GroupBox1.Enabled := false;
   BitBtn2.Enabled := false;
   BitBtn1.Enabled := false;
   SpeedButton1.Enabled := false;
   DBLookupComboBox1.Enabled := false;
                    ////////////////////////////////////////////////////////////
                    {
                     if (UpperCase(ExtractFileExt(Path.Text))='.PDF')
                         or
                         (UpperCase(ExtractFileExt(Path.Text))='.DOC')or
                         (UpperCase(ExtractFileExt(Path.Text))='.DOCX')
                        then
                     begin

                        if FileExists(ExtractFilePath(Application.ExeName)+'PDF2TXT.exe') then
                        begin
                           if MessageDlg('¬Ì« ›«Ì· «‰ Œ«» ‘œÂ »Â ’Ê—  „ ‰ »ÊœÂ Ê «„ò«‰ Ã” ÃÊ œ— ¬‰ ÊÃÊœ œ«—œø',mtInformation,mbYesNoCancel,0)=mrYes then
                           begin
                              DeleteFile(ExtractFilePath(Application.ExeName)+'pdfTxt.txt');
                              DeleteFile(ExtractFilePath(Path.Text)+'pdfTxt.txt');
                              CopyFile(pchar(_ApplicationPath+'tmpFile'),pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(Path.Text)),false);
                              filename := ExtractFilePath(Application.ExeName)+'PDF2TXT.exe';
                              parameters := '"'+_ApplicationPath+'tmpFile'+ExtractFileExt(Path.Text)+'"  "'+ExtractFilePath(Path.Text)+'pdfTxt.txt"';
                              RunAsAdminAndWaitForCompletion(handle,PChar(filename), PChar(parameters));//,'',SW_SHOWNORMAL);     'open',

                              textFilePathName := ExtractFilePath(Path.Text)+'pdfTxt.txt';
                              if FileExists(textFilePathName) then
                              begin
                              ////////////////////////////////////////////////////////////////
                                 stringList := TStringList.Create;
                                 stringList.LoadFromFile(textFilePathName);
                                 fileString := stringList.Text;
                               //  ShowMessage(IntToStr(length(fileString))+' chars in file: '+ textFilePathName);
                                 try
                                 if  length(fileString)>0 then
                                    Exec_Insert_LetterDataText(LetterDataID,fileString);
                                 except
                                 end;
                                 //  Load String to DB    //
                                 DeleteFile(textFilePathName);
                                 DeleteFile(_ApplicationPath+'tmpFile'+ExtractFileExt(Path.Text));
                                 //  Delete The File      //
                                 ////////////////////////////////////////////////////////////////
                              end;


                           end;
                        end;
                        }

                     if (UpperCase(ExtractFileExt(Path.Text))='.PDF')
                         or
                         (UpperCase(ExtractFileExt(Path.Text))='.DOC')or
                         (UpperCase(ExtractFileExt(Path.Text))='.DOCX')
                        then
                     begin

                        if FileExists(ExtractFilePath(Application.ExeName)+'PDF2TXT.exe') then
                        begin
                           if MessageDlg('¬Ì« ›«Ì· «‰ Œ«» ‘œÂ »Â ’Ê—  „ ‰ »ÊœÂ Ê «„ò«‰ Ã” ÃÊ œ— ¬‰ ÊÃÊœ œ«—œø',mtInformation,mbYesNoCancel,0)=mrYes then
                           begin
                              DeleteFile(_ApplicationPath+'NEW.PDF');
                              DeleteFile(_ApplicationPath+'NEWPDF.TXT');
                              CopyFile(PChar(Path.Text), PChar(_ApplicationPath+'NEW.PDF'), true);

                              parameters := '"'+_ApplicationPath+'NEW.PDF'+'"  "'+_ApplicationPath+'NEWPDF.TXT"';

                              RunAsAdminAndWaitForCompletion(handle,PChar(_ApplicationPath+'PDF2TXT.exe'), parameters);//,'',SW_SHOWNORMAL);     'open',

                              textFilePathName := _ApplicationPath+'NEWPDF.TXT';
                              if FileExists(textFilePathName) then
                              begin
                              ////////////////////////////////////////////////////////////////
                                 stringList := TStringList.Create;
                                 stringList.LoadFromFile(textFilePathName);
                                 fileString := stringList.Text;
                               //  ShowMessage(IntToStr(length(fileString))+' chars in file: '+ textFilePathName);
                                 try
                                 if  length(fileString)>0 then
                                    Exec_Insert_LetterDataText(LetterDataID,fileString);
                                 except
                                 end;
                                 //  Load String to DB    //
                                 DeleteFile(textFilePathName);
                                 DeleteFile(_ApplicationPath+'tmpFile'+ExtractFileExt(Path.Text));
                                 //  Delete The File      //
                                 ////////////////////////////////////////////////////////////////
                              end;


                           end;
                        end;


                           //START OK FOR ENGLISH PDF
                           //================================

                     if (UpperCase(ExtractFileExt(Path.Text))='.PDF') THEN
                     BEGIN
                           if MessageDlg('¬Ì« ›«Ì· «‰ê·Ì”Ì «”  Ê „Ì ŒÊ«ÂÌœ «„ò«‰ Ã” ÃÊ œ— œ«Œ· ’›Õ«  ¬‰ —« œ«‘ Â »«‘Ìœ ø',mtInformation,mbYesNoCancel,0)=mrYes then
                           begin
                           //ShowMessage(path.Text);

                           PDF_TO_TXT_ := TPDF_TO_TXT_FRM.Create(Self);
                           PDF_TO_TXT_.PDF_ADRS.Caption := path.Text;
                           PDF_TO_TXT_.PAGE_CNT := StrToInt(InputBox('',' ⁄œ«œ ’›Õ«  ›«Ì· —« Ê«—œ ‰„«ÌÌœ',''));
                           PDF_TO_TXT_.ShowModal;

                           ADD_QRY := TADOQuery.Create(Self);
                           ADD_QRY.Connection := Dm.YeganehConnection;

                           for JJ := 1 to PDF_TO_TXT_.TXT_LEN-1 do
                              BEGIN
                              ADD_QRY.Close;
                              ADD_QRY.SQL.Clear;
                              ADD_QRY.SQL.Add('INSERT INTO LETTER_PEYVAST_PDF(LETTERID,LETTER_DATA_ID,PAGE,STR_) VALUES('+IntToStr(FraddLetterData.LetterID)+','+IntToStr(LetterDataID)+','+IntToStr(JJ)+','''+PDF_TO_TXT_.TXT_STR[JJ]+''')');
                              ADD_QRY.ExecSQL;
                              END;
                              
                           ADD_QRY.Free;
                           END;   
                     END;
                           
                           //END OK FOR ENGLISH PDF
                           //================================

                           //textFilePathName := ExtractFilePath(Application.ExeName)+'PDF2TXT.TXT';
                           //DeleteFile(textFilePathName);
                           //PDF_TO_TXT_.Memo1.Lines.SaveToFile(textFilePathName);

                           //astr := PDF_TO_TXT_FRM.SWIDE;
                           //assignfile(f, textFilePathName);
                           //rewrite(f);
                           //write(f, astr);
                           //closefile(f);

                           //FS := TFileStream.Create(textFilePathName , TRUE);

                           //try
                           //FS.Position := FS.Size;  // Will be 0 if file created, end of text if not
                           //sOut := 'This is test line %d'#13#10;
                           //for i := 1 to 10 do
                           //begin
                           //sOut := Format(sOut, [i]);
                           //FS.Write(sOut[1], Length(sOut) * SizeOf(Char));
                           //end;

                           //finally
                           //FS.Free;
                           //end;

                           //PDF_TO_TXT_.strList.SaveToFile(textFilePathName);

                           //   if FileExists(textFilePathName) then
                           //   begin
                              ////////////////////////////////////////////////////////////////
                           //      stringList := TStringList.Create;
                           //      stringList.LoadFromFile(textFilePathName);
                           //      fileString := stringList.Text;
                               //  ShowMessage(IntToStr(length(fileString))+' chars in file: '+ textFilePathName);

                           //      TRY
                           //      if  length(fileString)>0 then
                           //         Exec_Insert_LetterDataText(LetterDataID,fileString);
                           //      EXCEPT
                           //      END;

                                 //  Load String to DB    //
                           //      DeleteFile(textFilePathName);
                           //      DeleteFile(_ApplicationPath+'tmpFile'+ExtractFileExt(Path.Text));
                                 //  Delete The File      //
                                 ////////////////////////////////////////////////////////////////
                           //   end;

                           //FreeAndNil(PDF_TO_TXT_);
                           //END;
                     end;
                    ////////////////////////////////////////////////////////////
                    ////////////////////////////////////////////////////////////
   GroupBox1.Enabled := true;
   BitBtn2.Enabled := true;
   BitBtn1.Enabled := true;
   SpeedButton1.Enabled := true;
   DBLookupComboBox1.Enabled := true;
end;

procedure TFrAddLetterDataDialog.FormShow(Sender: TObject);
begin
  inherited;
  _SaveFileType:=_BaseSQLConnection.GetKeyvalue('SaveFileType');
  Title.SetFocus;

  DMAddLetterData := TDMAddLetterData.Create(Self);
  //Ranjbar
  //ÊÃÊœ ‰œ«‘  ° «Ì‰ Å”Ê‰œ œ— œÌ «»Ì” ﬁ—«— êÌ—œ Zip œ— ’Ê— ÌﬂÂ Å”Ê‰œ
  InsertZipExtention;
  ItializeDownloadSetting;
  //---
end;

procedure TFrAddLetterDataDialog.SpeedButton1Click(Sender: TObject);
Var
   Dir , ParentFolder :String;
begin
  inherited;

  if ChBFolder.Checked then
  begin
     if SelectDirectory(Dir, [sdAllowCreate{, sdPerformCreate, sdPrompt}],SELECTPAPERSOURCE) then
     begin
        FileNamePath := Dir + '.Zip';
        ParentFolder := File_GetFilePath(Dir) + File_GetFileName(Dir) + '.Zip';
        if File_ZipOrUnZip(Dir , FileNamePath , dtZip , '*.*') then
           Path.Text := ParentFolder;
     end;
     Exit;
  end;
  if DBLookupComboBox1.Text='' then
     ShowMessage('·ÿ›« ‰Ê⁄ ÅÌÊ”  —« «‰ Œ«» ò‰Ìœ')
  else if tntOpenDialog.Execute then
    begin
     Path.Text := tntOpenDialog.FileName;
     if Trim(DSForm.DataSet.FieldByName('description').AsString ) = '' then
       DSForm.DataSet.FieldByName('description').AsString := ExtractFileName(TntOpenDialog.FileName) ;
    // else
    end;
end;

procedure TFrAddLetterDataDialog.DBLookupComboBox1Click(Sender: TObject);
begin
  inherited;
  tntOpenDialog.Filter:=dm.Get_LetterData_by_LetterIDExtentionTitle.AsString+'|*.'+dm.Get_LetterData_by_LetterIDExt.AsString;
end;



Procedure TFrAddLetterDataDialog.InsertZipExtention;
Var
   ZipID:integer;
begin
   //ÊÃÊœ ‰œ«‘  ° «Ì‰ Å”Ê‰œ œ— œÌ «»Ì” ﬁ—«— êÌ—œ Zip œ— ’Ê— ÌﬂÂ Å”Ê‰œ
   With DMAddLetterData do
   begin
      Try
         Screen.Cursor := crHourGlass;
         QrSrchZipExt.Close;
         QrSrchZipExt.Parameters.ParamByName('UserID').Value := _UserId;
         QrSrchZipExt.Open;
         if QrSrchZipExt.RecordCount = 0 then
         begin
            //ÊÃÊœ ‰œ«‘  ¬‰ê«Â zip «ê— ›—„ 
            if Not dm.Extention.Active then
               dm.Extention.Open;
            if not dm.Extention.Locate('Extention','Zip',[loCaseInsensitive]) then
            begin
               dm.Extention.Insert;
               dm.ExtentionExtention.AsString := 'Zip';
               dm.ExtentionExtentionTitle.AsString := '›«Ì·Â«Ì ›‘—œÂ (Zip)';
               dm.ExtentionIsSystem.AsBoolean := False;
               dm.Extention.Post;
            end;
            ZipID := dm.ExtentionExtentionID.AsInteger;

            //»—«Ì ﬂ«—»— Ã«—Ì ÊÃÊœ ‰œ«‘  ¬‰ê«Â Zip «ê— ›—„  
            QrZipExt.Close;
            QrZipExt.Parameters.ParamByName('UserID').Value := _UserId;
            QrZipExt.Open;
            QrZipExt.Insert;
            QrZipExtExtentionID.AsInteger := ZipID;
            QrZipExtUserId.AsInteger := _UserId;
            QrZipExt.Post;
       
            with dm.get_UserExtention_by_UserID do
            begin
               Close;
               Parameters.ParamByName('@userID').Value := _userid;
               Open;
            end;
         end;
      Finally
         QrSrchZipExt.close;
         QrZipExt.close;
         Screen.Cursor := crDefault;
      End;
   end;
end;

procedure TFrAddLetterDataDialog.ChBFolderClick(Sender: TObject);
Var
   ZipExtID : integer;
begin
   inherited;
   With DMAddLetterData do
      if ChBFolder.Checked then
      begin
         QrSrchZipExt.Close;
         QrSrchZipExt.Parameters.ParamByName('UserID').Value := _UserId;
         QrSrchZipExt.Open;
         ZipExtID := QrSrchZipExtExtentionID.AsInteger;
         if QrSrchZipExt.RecordCount > 0 then
            if dm.get_UserExtention_by_UserID.Locate('ExtentionID',ZipExtID,[loCaseInsensitive]) then
            begin
               dm.Get_LetterData_by_LetterIDExtention.AsInteger := ZipExtID;
               DBLookupComboBox1.KeyValue := ZipExtID;
               DBLookupComboBox1.Enabled := False;
            end;
      end
         else
            DBLookupComboBox1.Enabled := True;
end;

procedure TFrAddLetterDataDialog.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  FreeAndNil(DMAddLetterData);
  inherited;

end;

function TFrAddLetterDataDialog.RunAsAdminAndWaitForCompletion(hWnd: HWND;
  filename, Parameters: string): Boolean;
var
    sei: TShellExecuteInfo;
    ExitCode: DWORD;
begin
    ZeroMemory(@sei, SizeOf(sei));
    sei.cbSize := SizeOf(TShellExecuteInfo);
    sei.Wnd := hwnd;
    sei.fMask := SEE_MASK_FLAG_DDEWAIT or SEE_MASK_FLAG_NO_UI or SEE_MASK_NOCLOSEPROCESS;
    sei.lpVerb := PChar('open');
    sei.lpFile := PChar(Filename); // PAnsiChar;
    if parameters <> '' then
        sei.lpParameters := PChar(parameters); // PAnsiChar;
    sei.nShow := SW_SHOWNORMAL; //Integer;
   if ShellExecuteEx(@sei) then begin
     repeat
       Application.ProcessMessages;
       GetExitCodeProcess(sei.hProcess, ExitCode) ;
     until (ExitCode <> STILL_ACTIVE) or  Application.Terminated;
   end;
end;


//-----------------------------------------------------------------------
{ TReIndexThread }

procedure TReIndexThread.Execute;
var
err : TErr_msg;
begin
  inherited;

  CoInitialize(nil);

  try
  FrmWait.Cursor := crSQLWait;

     try

     TFrAddLetterDataDialog(Self).add_file_to_db;

     except
     on e:exception do
     begin
     err      := TErr_msg.Create(nil);
     err.MSG_1 := 'Œÿ«';
     err.MSG_2 := E.Message;
     err.ShowModal;
     err.Free;
     END;
     END;

  finally
  Terminate;
  FrmWait.Close;
  end;

  CoUninitialize();

end;

class procedure TReIndexThread.Run;
begin

  with TReIndexThread.Create( True ) do
  begin
    FreeOnTerminate := True;
    Priority := tpTimeCritical;
    Application.CreateForm(TWaitForm, FrmWait);
    Resume;
    try
    FrmWait.ShowModal;
    finally

    end;
  end;

end;
//-----------------------------------------------------------------------


procedure TFrAddLetterDataDialog.IdFTP1Work(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
begin
  inherited;
  ProgressBar1.Position := AWorkCount;
  Application.ProcessMessages;
end;

procedure TFrAddLetterDataDialog.IdFTP1WorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
  inherited;
ProgressBar1.Max := AWorkCountMax;
end;

procedure TFrAddLetterDataDialog.IdFTP1WorkEnd(Sender: TObject;
  AWorkMode: TWorkMode);
begin
  inherited;
ProgressBar1.Position := 0;
end;

Function TFrAddLetterDataDialog.UploadFileToFTP(Source,
  UploadFile: String):String;
  Var
    UploadDirectory:String;
begin
with IdFTP1 do
  begin
    try
    Host:=_DownloadSetting._FtpIP;
    Username:=_DownloadSetting._FtpUserName;//'turaj'  ;
    Password:=_DownloadSetting._FtpPassword;//'yeganeh_987' ;
    Connect();
     if Connected then
      begin
       try
          UploadDirectory :=FormatDateTime('yyyy',now);
          IdFTP1.MakeDir(UploadDirectory);
        except

        end;

        try
          UploadDirectory :=FormatDateTime('yyyy',now)+'\'+FormatDateTime('mm',now);
          IdFTP1.MakeDir(UploadDirectory);
        except

        end;

        try
          UploadDirectory :=FormatDateTime('yyyy',now)+'\'+FormatDateTime('mm',now)+'\'+FormatDateTime('dd',now);
          IdFTP1.MakeDir(UploadDirectory);
        except

        end;
           Put(Source,UploadDirectory+'\'+UploadFile);
      end;




    except
        on E:Exception Do
          _BaseSQLConnection.SaveLog(e.Message,'TFrAddLetterDataDialog.UploadFileToFT');
    end;
        disconnect;

  end;
  Result:=UploadDirectory+'\'+UploadFile;
end;

procedure TFrAddLetterDataDialog.ItializeDownloadSetting;
begin
_BaseSQLConnection:=TBaseSQLConnection.Create;
_DownloadSetting._HttpUrl:=_BaseSQLConnection.GetKeyvalue('HttpUrl');
_DownloadSetting._FtpIP:=_BaseSQLConnection.GetKeyvalue('FtpIP');
_DownloadSetting._FtpUserName:=_BaseSQLConnection.GetKeyvalue('FtpUserName');
_DownloadSetting._FtpPassword:=_BaseSQLConnection.GetKeyvalue('FtpPassword');


end;

procedure TFrAddLetterDataDialog.FormCreate(Sender: TObject);
begin
  inherited;
_BaseSQLConnection:=TBaseSQLConnection.Create;
end;

end.
