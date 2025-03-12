unit UAddLetterDataDialog;

interface

uses
 DB, BaseUnit, ExtActns, ActnMan, Buttons, StdCtrls, Mask, DBCtrls,
  Controls, Classes, Windows,ActnList, XPStyleActnCtrls, Dialogs, 
  xpBitBtn, ExtCtrls, Menus, ADODB, ShellApI, xmldom, XMLIntf, msxmldom, ComObj , Variants,
  XMLDoc, TntDialogs, AppEvnts, AdvGlowButton, WordXP, OleServer;

type
  TFrAddLetterDataDialog = class(TMBaseForm)
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Title: TDBEdit;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    Path: TEdit;
    SpeedButton1: TAdvGlowButton;
    Panel1: TPanel;
    BitBtn2: TAdvGlowButton;
    BitBtn1: TAdvGlowButton;
    QUpdateGroupImage: TADOQuery;
    QFileSizeInDB: TADOQuery;
    QFileSizeInDBFileSizeInDB: TWideStringField;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    chkSendAttachToArchive: TCheckBox;
    Insert_Archive: TADOStoredProc;
    qryUpdateImage: TADOQuery;
    sp_INSERT_LetterData_Extended: TADOStoredProc;
    qryUpdateImageLetterDataID: TAutoIncField;
    qryUpdateImageLetterID: TIntegerField;
    qryUpdateImagePageNumber: TIntegerField;
    qryUpdateImageImage: TBlobField;
    qryUpdateImageextention: TWordField;
    qryUpdateImageDescription: TWideStringField;
    qryUpdateImageLastUpdate: TDateTimeField;
    qryUpdateImageListItemsID: TIntegerField;
    qryUpdateImageIsCorrectedImage: TBooleanField;
    qryUpdateImageColorID: TIntegerField;
    qryUpdateImageVersionNo: TStringField;
    qryUpdateImageVersionDate: TStringField;
    OpenDialog: TTntOpenDialog;
    ADOQuery1: TADOQuery;
    pnlMain: TPanel;
    btnSign: TAdvGlowButton;
    WordDoc: TWordDocument;
    WordApp: TWordApplication;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure btnSignClick(Sender: TObject);
  private
    FLetter_Or_Erja: String;
    FGroupFlag1: Boolean;
    FRecommiteID: Integer;
    filetemp : string;
    WordSignFileName  : string;
    procedure SetLetter_Or_Erja(const Value: String);
    procedure SetGroupFlag1(const Value: Boolean);
    procedure SetRecommiteID(const Value: Integer);
    function GetFileSize(sFileToExamine: string; bInKBytes: Boolean): string;
    function GetFileSizeFromDB:String;
    procedure MakePage;
    { Private declarations }
  public
   done:boolean;
      ArchSec : integer;
    { Public declarations }
    procedure UpdateImageForGroup;
    property Letter_Or_Erja:String read FLetter_Or_Erja write SetLetter_Or_Erja;
    property GroupFlag1:Boolean read FGroupFlag1 write SetGroupFlag1;
    property RecommiteID:Integer read FRecommiteID write SetRecommiteID;
    procedure AddTxtToDB(LetterDataID,TypeID : integer);
    procedure AddTxtToArchiveDB(LetterDataID,TypeID : integer);
    function LoadUnicodeFile( const filename: String ): wideString;
    function RunAsAdminAndWaitForCompletion(hWnd: HWND; filename: string; Parameters: string): Boolean;
  end;

var
  FrAddLetterDataDialog: TFrAddLetterDataDialog;

implementation

uses Dmu, UaddLetterData, Forms,YShamsiDate, SysUtils, businessLayer,
  InputUserPassU, USelArchiveSecID, ReCommitedialog, UMain;

{$R *.dfm}

procedure TFrAddLetterDataDialog.BitBtn1Click(Sender: TObject);
Var
   FilePath,FileExt,NewFileNamePath : String;
   FileSize:Double;
   IsInEditMode : boolean; // Amin 1391/12/15
   indID,MY,secID, ArchiveLetterDataID: integer;
   memo,regDate,regtime,indicID, myear,dabirkhaneh:string ;
begin
   inherited;


   if (chkSendAttachToArchive.Checked) then
   begin
      if _ConnectedToArchive then
      begin
         if _Arch_UserID = 0 then
         begin
            with TADOQuery.Create(nil) do
            begin
               Connection := dm.YeganehConnection;
               SQL.Text := 'SELECT ArchiveUserID FROM Users WHERE ArchiveUserID IS NOT NULL AND id ='+IntToStr(_UserID);
               Open;
               if (IsEmpty) or (Fields[0].AsInteger=0) then
               begin
                  FInputUserPass := TFInputUserPass.Create(Application);
                  FInputUserPass.ShowModal;
               end
               else
                  _Arch_UserID :=  Fields[0].AsInteger;
            end;
         end;

         with TADOQuery.Create(nil)do
         begin
            Connection := dm.YeganehConnection;
            SQL.Text := 'SELECT IndicatorID,MYear,memo,RegistrationDate,RegistrationTime FROM Letter WHERE LetterID='+ Dm.Get_LetterData_by_LetterIDletterid.AsString;
            Open;
            if not IsEmpty then
            begin
               indID := fields[0].AsInteger;
               my := Fields[1].AsInteger;
               memo := Fields[2].AsString;
               regDate := Fields[3].AsString;
               regtime := Fields[4].AsString;
            end;
         end;

         indicID := '0';
         myear := '0';
         dabirkhaneh :='';
         with TADOQuery.Create(nil) do
         begin
            Connection := dm.YeganehConnection;
            SQL.Text := 'SELECT IndicatorID,MYear,Secretariats.SecTitle FROM Letter LEFT JOIN Secretariats ON Letter.SecretariatID = Secretariats.SecID WHERE LetterID = '+Dm.Get_LetterData_by_LetterIDletterid.AsString;
            Open;
            IF not IsEmpty then
            begin
               indicID := Fields[0].AsString;
               myear := Fields[1].AsString;
               dabirkhaneh := Fields[2].AsString;
            end;
         end;
         secID := 0;
         with TADOQuery.Create(nil) do
         begin
            Connection := dm.ArchiveConnection;
            SQL.Text := 'SELECT secid FROM UserSecretariats WHERE userid='+IntToStr(_Arch_UserID);
            Open;
            if IsEmpty then
               exit
            else if recordcount = 1 then
               secID := Fields[0].AsInteger
            else if recordcount > 1 then
            begin
               SelArchiveSecID := TSelArchiveSecID.Create(Application);
               SelArchiveSecID.ShowModal;
               secID := ArchSec;
            end;
         end;

         Insert_Archive.Close;
         Insert_Archive.Parameters.ParamByName('@INNO').Value := 'DBR/'+IntToStr(indID);
         Insert_Archive.Parameters.ParamByName('@IndicatorID').Value := indID;
         Insert_Archive.Parameters.ParamByName('@MYear').Value := MY;
         Insert_Archive.Parameters.ParamByName('@SecretariatID').Value := secID;
         Insert_Archive.Parameters.ParamByName('@Letter_Type').Value := 1;
         Insert_Archive.Parameters.ParamByName('@letterformat').Value := 1;
         Insert_Archive.Parameters.ParamByName('@Memo').Value := memo;
         Insert_Archive.Parameters.ParamByName('@UserID').Value := 0;
         Insert_Archive.Parameters.ParamByName('@RegistrationDate').Value := regDate;
         Insert_Archive.Parameters.ParamByName('@RegistrationTime').Value := regtime;
         Insert_Archive.Parameters.ParamByName('@ExtenTionType').Value := Dm.Get_LetterData_by_LetterIDExt.AsString;
         Insert_Archive.Parameters.ParamByName('@ExtenTionDesc').Value := Dm.Get_LetterData_by_LetterIDExtentionTitle.AsString;
         Insert_Archive.Parameters.ParamByName('@DataDesc').Value := Dm.Get_LetterData_by_LetterIDdescription.AsString;
         Insert_Archive.ExecProc;
         qryUpdateImage.Close;
         ArchiveLetterDataID := Insert_Archive.Parameters.ParamByName('@out_LetterDataID').Value;
         qryUpdateImage.Parameters[0].Value := ArchiveLetterDataID;
         qryUpdateImage.Open;
         qryUpdateImage.Edit;
         CopyFile(pchar(path.Text),pchar(path.Text+'tmp'),false);
         qryUpdateImageImage.LoadFromFile(Path.Text+'tmp');
         qryUpdateImage.Post;
         SysUtils.FileSetReadOnly(pchar(path.Text+'tmp'), false);
         DeleteFile(pchar(path.Text+'tmp'));
         with TADOQuery.Create(nil)do
         begin
               Connection := dm.ArchiveConnection;
               SQL.Text := 'INSERT INTO AutomationRelation(DabirLetterID,DabirIndicatorID,DabirMyear,DabirKhanehName,ArchiveID,isDocument) VALUES('+Dm.Get_LetterData_by_LetterIDletterid.AsString+','+indicID+','+myear+','''+dabirkhaneh+''','+IntToStr(Insert_Archive.Parameters.ParamByName('@out_LetterDataID').Value)+',0)';
               ExecSQL;
         end;
         AddTxtToArchiveDB(ArchiveLetterDataID,DBLookupComboBox1.KeyValue);
      end
      else
      begin
         ShowMessage('œ” —”Ì »Â Å«Ìê«Â œ«œÂ »«Ìê«‰Ì „ﬁœÊ— ‰Ì” ');
      end;
      /////////////////
     try
      sp_INSERT_LetterData_Extended.Close;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@LetterID').Value := Dm.Get_LetterData_by_LetterIDletterid.AsInteger;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@PageNumber').Value := 1;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionType').Value := Dm.Get_LetterData_by_LetterIDExt.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@extentionDesc').Value := Dm.Get_LetterData_by_LetterIDExtentionTitle.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@Description').Value := '('+ 'ÅÌÊ”  ”‰œ ' + 'DBR/'+Dm.Get_LetterData_by_LetterIDletterid.AsString + ') ' +Dm.Get_LetterData_by_LetterIDdescription.AsString;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@archiveID').Value := Insert_Archive.Parameters.ParamByName('@out_LetterDataID').Value;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isDocument').Value := 0;
      sp_INSERT_LetterData_Extended.Parameters.ParamByName('@isFromArchive').Value := False;
      sp_INSERT_LetterData_Extended.ExecProc;
    except
      with TADOQuery.Create(nil) do
      begin
         Connection := dm.ArchiveConnection;
        // SQL.Text := 'DELETE FROM AutomationRelation WHERE DabirLetterID='+IntToStr(DabirLetterID)+' AND ArchiveID='+Dm.Get_LetterData_by_LetterIDLetterDataID.AsString+' AND isDocument=0';
      //   ExecSQL;
      end;
      ShowMessage('Œÿ« œ— «›“Êœ‰ ÅÌÊ”  »«Ìê«‰Ì');
    end;
      dm.Get_LetterData_by_LetterDataID.Cancel;
      close;
   end
   else
   begin
     IsInEditMode := DSForm.DataSet.State in [dsEdit]; // Amin 1391/12/15      Å

     if Letter_Or_Erja='Letter' then
     Begin
        Dm.Get_LetterData_by_LetterID.Post;
        with ADOQuery1 do
        begin
          Connection := dm.YeganehConnection;
          SQL.Text := 'SELECT filename FROM LetterData WHERE LetterDataID='+dm.Get_LetterData_by_LetterIDLetterDataID.AsString;
          Open;
          edit;
          fieldbyname('filename').AsString:= StringReplace(ExtractFilename(OpenDialog.FileName),'.docx','.doc',[rfReplaceAll, rfIgnoreCase]) ;
          post;
        End;
     End;

     if Letter_Or_Erja='Erja'   then Dm.Get_RecommitePayvast_by_RecommiteID.Post;


     if DBLookupComboBox1.KeyValue<=0  then
     begin
      ShowMessage('·ÿ›« ‰Ê⁄ ÅÌÊ”  —« «‰ Œ«» ò‰Ìœ');
      exit;
     end;
   // Amin 1391/12/15 if Path.Text <> '' then
     if (Path.Text <> '') {and (not IsInEditMode)} then  // Amin 1391/12/15
     begin
        if Letter_Or_Erja='Letter' then
        begin
            with dm.Get_LetterData_by_LetterDataID do
            begin
               Close;
               Connection := dm.YeganehConnection;
               Parameters.ParamByName('@LetterdataID').Value := Dm.Get_LetterData_by_LetterIDLetterDataID.Value;
               Open;
               Edit;
               {Ranjbar 89.08.01 ID=153}//«„ﬂ«‰ Ê«—œ ﬂ—œ‰ ÅÌÊ” Â«Ì ›«—”Ì
               if FileExists(Path.Text) then
               begin
                  //Hamed_Ansari_990701_S
                  //CopyFile(pchar(path.Text),pchar(path.Text+'tmp'+ExtractFileExt(Path.Text)),false);Commented By Hamed_Ansari
                  //Dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(Path.Text+'tmp'+ExtractFileExt(Path.Text));Commented By Hamed_Ansari
                  Dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(Path.Text);
                  Post;
                  //DeleteFile(pchar(path.Text+'tmp'+ExtractFileExt(Path.Text)));
                  AddTxtToDB(Dm.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger,DBLookupComboBox1.KeyValue);
                  SysUtils.FileSetReadOnly(Path.Text, false);
                  DeleteFile(Path.Text);
                  //Hamed_Ansari_990701_E
               end
               else
               begin
                  ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ›«Ì·Ì »« «Ì‰ ‰«„ Ì«›  ‰‘œ'+#13+
                            '·ÿ›« œ— ’Ê— ÌﬂÂ ‰«„ ›«Ì· œ«—«Ì Õ—Ê› ›«—”Ì «”  ¬‰ —« »Â «‰ê·Ì”Ì  €ÌÌ— œÂÌœ',[mbOK],mtInformation);
                  Exit;
               end;
            end;// end of with dm.Get_LetterData_by_LetterDataID do
        end;
        if Letter_Or_Erja='Erja' then
        begin
            //Hamed_Ansari_990701_S
            //CopyFile(pchar(path.Text),pchar(path.Text+'tmp'),false);Commented By Hamed_Ansari
            //FileSize:=Round(StrToInt64(GetFileSize(Path.Text+'tmp',True))/1024);
            FileSize := Round(StrToInt64(GetFileSize(Path.Text,True))/1024);
            //DeleteFile(pchar(path.Text+'tmp'));
            //Hamed_Ansari_990701_E
            if FileSize<= StrToInt64(GetFileSizeFromDB) then
                with dm.Get_RecommitePayvast_by_RecommitePayvastID do
                begin
                   Close;
                   Parameters.ParamByName('@RecommitePayvastID').Value := Dm.Get_RecommitePayvast_by_RecommiteIDID.Value;
                   Open;
                   Edit;
                   {Ranjbar 89.08.01 ID=153}//«„ﬂ«‰ Ê«—œ ﬂ—œ‰ ÅÌÊ” Â«Ì ›«—”Ì
                   if FileExists(Path.Text) then
                   begin
                      //Hamed_Ansari_990701_S
                      //CopyFile(pchar(path.Text),pchar(path.Text+'tmp'),false);Commented By Hamed_Ansari
                      //Dm.Get_RecommitePayvast_by_RecommitePayvastIDImage.LoadFromFile(Path.Text+'tmp');Commented By Hamed_Ansari
                      Dm.Get_RecommitePayvast_by_RecommitePayvastIDImage.LoadFromFile(Path.Text);
                      Post;
                      AddTxtToDB(Dm.Get_RecommitePayvast_by_RecommitePayvastIDID.AsInteger,DBLookupComboBox1.KeyValue);
                      //DeleteFile(path.Text+'tmp');
                      SysUtils.FileSetReadOnly(Path.Text, false);
                      DeleteFile(Path.Text);
                      //Hamed_Ansari_990701_E
                   end
                   else
                   begin
                      ShowMyMessage('ÅÌ€«„','ﬂ«—»— ê—«„Ì ›«Ì·Ì »« «Ì‰ ‰«„ Ì«›  ‰‘œ'+#13+
                                '·ÿ›« œ— ’Ê— ÌﬂÂ ‰«„ ›«Ì· œ«—«Ì Õ—Ê› ›«—”Ì «”  ¬‰ —« »Â «‰ê·Ì”Ì  €ÌÌ— œÂÌœ',[mbOK],mtInformation);
                      Exit;
                   end;

                   UpdateImageForGroup;

                end// end of with dm.Get_LetterData_by_LetterDataID do
            else
            begin
                with dm.Get_RecommitePayvast_by_RecommitePayvastID do
                begin
                   Close;
                   Parameters.ParamByName('@RecommitePayvastID').Value := Dm.Get_RecommitePayvast_by_RecommiteIDID.Value;
                   Open;
                   Last;
                   Delete;
                   FrAddLetterDataDialog.DSForm.DataSet.Close;
                   FrAddLetterDataDialog.DSForm.DataSet.Open;
                end;
                ShowMsgString('«‰œ«“Â ›«Ì· ÅÌÊ”  »“—ê — «“ «‰œ«“Â  ⁄—Ì› ‘œÂ  Ê”ÿ „œÌ— ”Ì” „ „Ì »«‘œ');
            end;
        end;
     end;// end of if Path.Text <> '' then
     
     { TODO -oparsa : 14031128 }
     if (filetemp <> '') and (btnSign.Visible) then
     begin
        if Letter_Or_Erja='Letter' then
        begin
            with dm.Get_LetterData_by_LetterDataID do
            begin
               Close;
               Connection := dm.YeganehConnection;
               Parameters.ParamByName('@LetterdataID').Value := Dm.Get_LetterData_by_LetterIDLetterDataID.Value;
               Open;
               Edit;

               if FileExists(filetemp) then
               begin

                  Dm.Get_LetterData_by_LetterDataIDImage.LoadFromFile(filetemp);
                  Post;

                  AddTxtToDB(Dm.Get_LetterData_by_LetterDataIDLetterDataID.AsInteger,DBLookupComboBox1.KeyValue);
                  SysUtils.FileSetReadOnly(filetemp, false);
                  DeleteFile(filetemp);

               end
               else
               begin
                  ShowMyMessage('ÅÌ€«„','À»  «„÷« »« Œÿ« „Ê«ÃÂ ‘œ ·ÿ›« œÊ»«—Â  ·«‘ ‰„«ÌÌœ',[mbOK],mtInformation);
                  Exit;
               end;
            end;
        end;
     end;
     { TODO -oparsa : 14031128 }
   end;
   Close;
   if Letter_Or_Erja='Erja' then
   begin
     FrAddLetterData.Close;
     RecommiteSave.AaddLetterDataClick(Self);
   end;   
end;
          
procedure TFrAddLetterDataDialog.AddTxtToDB(LetterDataID,TypeID : integer);
var
   slept, i : integer;
   filename ,parameters,textFilePathName: string;
   TXTFile : textfile;
   fileString : WideString;
   stringList : TStrings;
   isFile : boolean;
begin
////////////////////////////////////////////////////////////
   GroupBox1.Enabled := false;
   BitBtn2.Enabled := false;
   BitBtn1.Enabled := false;
   SpeedButton1.Enabled := false;
   DBLookupComboBox1.Enabled := false;
                    ////////////////////////////////////////////////////////////
                     if (UpperCase(ExtractFileExt(Path.Text))='.PDF')or
                        (UpperCase(ExtractFileExt(Path.Text))='.DOC')or
                        (UpperCase(ExtractFileExt(Path.Text))='.DOCX') then
                     begin
                        if FileExists(ExtractFilePath(Application.ExeName)+'PDF2TXT.exe') then
                        begin
                           if MessageDlg('¬Ì« ›«Ì· «‰ Œ«» ‘œÂ »Â ’Ê—  „ ‰ »ÊœÂ Ê «„ò«‰ Ã” ÃÊ œ— ¬‰ ÊÃÊœ œ«—œø',mtInformation,mbYesNoCancel,0)=mrYes then
                           begin
                              SysUtils.FileSetReadOnly(ExtractFilePath(Application.ExeName)+'pdfTxt.txt', false);
                              DeleteFile(ExtractFilePath(Application.ExeName)+'pdfTxt.txt');
                              SysUtils.FileSetReadOnly(ExtractFilePath(Path.Text)+'pdfTxt.txt', false);
                              DeleteFile(ExtractFilePath(Path.Text)+'pdfTxt.txt');

                              filename := ExtractFilePath(Application.ExeName)+'PDF2TXT.exe';
                              parameters := '"'+Path.Text+'"  "'+ExtractFilePath(Application.ExeName)+'pdfTxt.txt"';
                              RunAsAdminAndWaitForCompletion(handle,PChar(filename), PChar(parameters));//,'',SW_SHOWNORMAL);     'open',

                              textFilePathName := ExtractFilePath(Application.ExeName)+'pdfTxt.txt';
                              if FileExists(textFilePathName) then
                              begin
                              ////////////////////////////////////////////////////////////////
                                 stringList := TStringList.Create;
                                 stringList.LoadFromFile(textFilePathName);
                                 fileString := stringList.Text;
                               //  ShowMessage(IntToStr(length(fileString))+' chars in file: '+ textFilePathName);
                                 if  length(fileString)>0 then
                                    Exec_Insert_LetterDataText(LetterDataID,fileString, dm.YeganehConnection);
                                 //  Load String to DB    //
                                 SysUtils.FileSetReadOnly(textFilePathName, false);
                                 DeleteFile(textFilePathName);
                                 //  Delete The File      //
                                 ////////////////////////////////////////////////////////////////
                              end;


                           end;
                        end;
                     end;
                    ////////////////////////////////////////////////////////////
                    ////////////////////////////////////////////////////////////
   GroupBox1.Enabled := true;
   BitBtn2.Enabled := true;
   BitBtn1.Enabled := true;
   SpeedButton1.Enabled := true;
   DBLookupComboBox1.Enabled := true;
end;


function TFrAddLetterDataDialog.RunAsAdminAndWaitForCompletion(hWnd: HWND; filename: string; Parameters: string): Boolean;
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

function TFrAddLetterDataDialog.LoadUnicodeFile( const filename: String ): wideString;

Procedure SwapWideChars( p: PWideChar );
Begin
While p^ <> #0000 Do Begin
// p^ := Swap( p^ ); //<<< D3
p^ := WideChar( Swap( Word(p^)));
Inc( p );
End; { While }
End; { SwapWideChars }

Var
strings : TStrings;
ms: TMemoryStream;
wc: WideChar;
pWc: PWideChar;
Begin
 strings := TStringList.Create();
ms:= TMemoryStream.Create;
try
ms.LoadFromFile( filename );
ms.Seek( 0, soFromend );
wc := #0000;
ms.Write( wc, sizeof(wc));

pWC := ms.Memory;
If pWc^ = #$FEFF Then // normal byte order mark
Inc(pWc)
Else If pWc^ = #$FFFE Then Begin // byte order is big-endian
SwapWideChars( pWc );
Inc( pWc );
End { If }
Else; // no byte order mark
strings.Text := WideChartoString( pWc );
Result := strings.Text;
finally
ms.free;
end;
End;

procedure TFrAddLetterDataDialog.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if Letter_Or_Erja='Letter' then dm.Get_LetterData_by_LetterID.Cancel;
  if Letter_Or_Erja='Erja'   then dm.Get_RecommitePayvast_by_RecommiteID.Cancel;
  if FileExists(filetemp) then
  begin
    SysUtils.FileSetReadOnly(filetemp, false);
    SysUtils.DeleteFile(filetemp);
  end;  
  close;
end;

procedure TFrAddLetterDataDialog.FormShow(Sender: TObject);
begin
   inherited;
   Title.SetFocus;
   btnSign.Visible := False;
   filetemp := '' ;
   // Amin 1391/12/15 Start
   if DSForm.DataSet.State in [dsEdit] then
   begin
      DBLookupComboBox1.Enabled := false;
      SpeedButton1.Enabled := false;
      Path.Enabled := false;
      if dm.Get_LetterData_by_LetterIDExt.AsString ='docx' then
        btnSign.Visible := True;
   end;
   // Amin 1391/12/15 End
end;

procedure TFrAddLetterDataDialog.SpeedButton1Click(Sender: TObject);
var
   i : integer;
begin
   inherited;
   if DBLookupComboBox1.KeyValue<=0 then
   begin
      ShowMessage('·ÿ›« ‰Ê⁄ ÅÌÊ”  —« «‰ Œ«» ò‰Ìœ');
      exit;
   end;
   //OpenDialog.Filter := '';
   if OpenDialog.Execute then
   begin
     if FileExists(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename))then
     begin
       SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename)), false);
       DeleteFile(pchar(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename)));
     end;
     if CopyFileW(dm.replacePWC(StringToPWide(OpenDialog.filename,i)), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename),i), False) then
        Path.Text :=_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename)
     else if CopyFileW(StringToPWide(OpenDialog.filename,i), StringToPWide(_ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename),i), False) then
        Path.Text := _ApplicationPath+'tmpFile'+ExtractFileExt(OpenDialog.filename)
     else
        ShowMessage('Œÿ« œ— ŒÊ«‰œ‰ ›«Ì· „»œ«');
   end;

end;

procedure TFrAddLetterDataDialog.DBLookupComboBox1Click(Sender: TObject);
begin
   inherited;
   if Letter_Or_Erja='Letter' then
       OpenDialog.Filter := Dm.Get_LetterData_by_LetterIDExtentionTitle.AsString+'|*.'+dm.Get_LetterData_by_LetterIDExt.AsString;

   if Letter_Or_Erja='Erja' then
       OpenDialog.Filter := Dm.Get_RecommitePayvast_by_RecommiteIDExtentionTitle.AsString+'|*.'+dm.Get_RecommitePayvast_by_RecommiteIDExt.AsString;
end;

procedure TFrAddLetterDataDialog.SetLetter_Or_Erja(const Value: String);
begin
  FLetter_Or_Erja := Value;
end;

procedure TFrAddLetterDataDialog.SetGroupFlag1(const Value: Boolean);
begin
  FGroupFlag1 := Value;
end;

procedure TFrAddLetterDataDialog.UpdateImageForGroup;
begin
    QUpdateGroupImage.Close;
    QUpdateGroupImage.SQL.Clear;
    QUpdateGroupImage.SQL.Add('UPDATE RecommitePayvast');
    QUpdateGroupImage.SQL.Add('SET	Image = (');
    QUpdateGroupImage.SQL.Add('SELECT IMAGE');
    QUpdateGroupImage.SQL.Add('FROM RecommitePayvast');
    QUpdateGroupImage.SQL.Add('WHERE RecommiteID='+IntToStr(RecommiteID)+' AND Image IS NOT NULL');
    QUpdateGroupImage.SQL.Add(')');
    QUpdateGroupImage.SQL.Add('WHERE RecommiteID IN (SELECT RecommiteID FROM ReCommites WHERE GroupFlag='+IntToStr(RecommiteID)+')');
    QUpdateGroupImage.ExecSQL;
end;

procedure TFrAddLetterDataDialog.SetRecommiteID(const Value: Integer);
begin
  FRecommiteID := Value;
end;

function TFrAddLetterDataDialog.GetFileSize(sFileToExamine: string;
  bInKBytes: Boolean): string;
var
  SearchRec: TSearchRec;
  sgPath: string;
  inRetval, I1: Integer;
begin
  sgPath := ExpandFileName(sFileToExamine);
  try
    inRetval := FindFirst(ExpandFileName(sFileToExamine), faAnyFile, SearchRec);
    if inRetval = 0 then
      I1 := SearchRec.Size
    else
      I1 := -1;
  finally
    SysUtils.FindClose(SearchRec);
  end;
  Result := IntToStr(I1);

end;

function TFrAddLetterDataDialog.GetFileSizeFromDB: String;
begin
  Result:='0';
  QFileSizeInDB.Close;
  QFileSizeInDB.Open;
  if not QFileSizeInDB.IsEmpty then
      Result:=QFileSizeInDBFileSizeInDB.AsString;
end;

procedure TFrAddLetterDataDialog.AddTxtToArchiveDB(LetterDataID,
  TypeID: integer);
var
   slept, i : integer;
   filename ,parameters,textFilePathName: string;
   TXTFile : textfile;
   fileString : WideString;
   stringList : TStrings;
   isFile : boolean;
begin
////////////////////////////////////////////////////////////
   GroupBox1.Enabled := false;
   BitBtn2.Enabled := false;
   BitBtn1.Enabled := false;
   SpeedButton1.Enabled := false;
   DBLookupComboBox1.Enabled := false;
                    ////////////////////////////////////////////////////////////
                     if (UpperCase(ExtractFileExt(Path.Text))='.PDF')or
                        (UpperCase(ExtractFileExt(Path.Text))='.DOC')or
                        (UpperCase(ExtractFileExt(Path.Text))='.DOCX') then
                     begin
                        if FileExists(ExtractFilePath(Application.ExeName)+'PDF2TXT.exe') then
                        begin
                           if MessageDlg('¬Ì« ›«Ì· «‰ Œ«» ‘œÂ »Â ’Ê—  „ ‰ »ÊœÂ Ê «„ò«‰ Ã” ÃÊ œ— ¬‰ ÊÃÊœ œ«—œø',mtInformation,mbYesNoCancel,0)=mrYes then
                           begin
                              SysUtils.FileSetReadOnly(ExtractFilePath(Application.ExeName)+'pdfTxt.txt', false);
                              DeleteFile(ExtractFilePath(Application.ExeName)+'pdfTxt.txt');
                              SysUtils.FileSetReadOnly(ExtractFilePath(Path.Text)+'pdfTxt.txt', false);
                              DeleteFile(ExtractFilePath(Path.Text)+'pdfTxt.txt');

                              filename := ExtractFilePath(Application.ExeName)+'PDF2TXT.exe';
                              parameters := '"'+Path.Text+'"  "'+ExtractFilePath(Application.ExeName)+'pdfTxt.txt"';
                              RunAsAdminAndWaitForCompletion(handle,PChar(filename), PChar(parameters));//,'',SW_SHOWNORMAL);     'open',

                              textFilePathName := ExtractFilePath(Application.ExeName)+'pdfTxt.txt';
                              if FileExists(textFilePathName) then
                              begin
                              ////////////////////////////////////////////////////////////////
                                 stringList := TStringList.Create;
                                 stringList.LoadFromFile(textFilePathName);
                                 fileString := stringList.Text;
                               //  ShowMessage(IntToStr(length(fileString))+' chars in file: '+ textFilePathName);
                                 if  length(fileString)>0 then
                                    Exec_Insert_LetterDataText(LetterDataID,fileString, dm.ArchiveConnection);
                                 //  Load String to DB    //
                                 SysUtils.FileSetReadOnly(textFilePathName, false);
                                 DeleteFile(textFilePathName);
                                 //  Delete The File      //
                                 ////////////////////////////////////////////////////////////////
                              end;


                           end;
                        end;
                     end;
                    ////////////////////////////////////////////////////////////
                    ////////////////////////////////////////////////////////////
   GroupBox1.Enabled := true;
   BitBtn2.Enabled := true;
   BitBtn1.Enabled := true;
   SpeedButton1.Enabled := true;
   DBLookupComboBox1.Enabled := true;
end;

procedure TFrAddLetterDataDialog.btnSignClick(Sender: TObject);
var
 // WordApp: TWordApplication;
 // WordDoc: TWordDocument;
 // WordApp: Variant; // »—«Ì «ÌÃ«œ Ìò ‰„Ê‰Â «“ »—‰«„Â Word
 // WordDoc: Variant; // »—«Ì «ÌÃ«œ Ìò ”‰œ Word
  W,new,old,no,noFW: widestring;
  selst:integer;
  Range: Variant;
  ImagePath :string;
begin
  inherited;
  btnSign.Enabled := False;

  with dm,Get_LetterData_by_LetterDataID do
  begin
    Close;
    Connection := dm.YeganehConnection;
    Parameters.ParamByName('@LetterdataID').Value := dm.Get_LetterData_by_LetterIDLetterDataID.Value; //dm.Get_LetterData_by_LetterIDLetterDataID.Value;
    Open;

    WordSignFileName := 'tempSign' + dm.Get_LetterData_by_LetterIDLetterDataID.AsString + '.' + Dm.Get_LetterData_by_LetterIDExt.AsString;
    filetemp :=_TempPath + WordSignFileName;

    if FileExists(filetemp) then
    begin

      SysUtils.FileSetReadOnly(filetemp, false);
      DeleteFile(filetemp);

    end ;

    Dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(filetemp);

  end ;

  //Dm.Get_LetterData_by_LetterDataIDImage.SaveToFile(f);

  if (dm.Get_LetterData_by_LetterIDExt.AsString = 'docx') //or (dm.Get_LetterData_by_LetterIDExt.AsString = 'doc')
        then
  begin
    MakePage ;

    try
      WordApp.Connect; // « ’«· »Â »—‰«„Â Word

      try
        ImagePath := _TempPath+'yeganehBoxAddleterWORDsign.jpg' ;

        WordDoc.ActiveWindow.ActivePane.View.SeekView := wdSeekMainDocument;
        Application.ProcessMessages;

        WordApp.Selection.WholeStory;
        w:= WordApp.Selection.Text;
        WordApp.Selection.SetRange(0,0);
        selst:= pos('((«„÷«))',w);

        // «ÌÃ«œ  €ÌÌ—«  œ— ›«Ì· Ê—œ
        if (selst>0) then
        begin
          try
            new:=' ';
            if Dm.Get_LetterData_by_LetterIDSignerID.AsInteger > 0 then
            begin
              // «‰ Œ«» ò· ”‰œ
              Range := WordDoc.Content;
              if Range.Find.Execute(FindText:='((«„÷«))') then
              begin
                // «ê— ò·„Â ÅÌœ« ‘œ° »Â ¬‰ ·ÊòÌ‘‰ »—Ê
                Range.Select;
              end;
              Open_UserSign(Dm.Get_LetterData_by_LetterIDSignerID.AsInteger);
              if not dm.Select_UserSignUserSign.IsNull then
                dm.Select_UserSignUserSign.SaveToFile(ImagePath);
              if FileExists(ImagePath) then
              begin
                WordApp.selection.inlineshapes.addpicture(ImagePath,EmptyParam,EmptyParam,EmptyParam);
                SysUtils.FileSetReadOnly(PChar(ImagePath), false);
                DeleteFile(PChar(ImagePath));
              end;

            end;

           // if new =' ' then
             MainForm.ReplaceInWord(WordApp,'((«„÷«))',(new));

            // –ŒÌ—Âù”«“Ì ›«Ì· Ê—œ
            WordDoc.Save;
            MBaseForm.MessageShowString('«„÷« Ã«Ìê“Ì‰ ‘œ ·ÿ›« œ— ’Ê—   „«Ì·  €ÌÌ—«  –ŒÌ—Â ‰„«ÌÌœ'  ,False);
          except
             MBaseForm.MessageShowString('Ã«Ìê“Ì‰Ì «„÷« »« Œÿ« „Ê«ÃÂ ‘œ'  ,False);
          end;
        end
        else
        begin
          if FileExists(filetemp) then
          begin
            SysUtils.FileSetReadOnly(filetemp, false);
            SysUtils.DeleteFile(filetemp);
            filetemp :='';
          end;
          MBaseForm.MessageShowString('⁄»«—  ((«„÷«)) œ— „ ‰ ›«Ì· Ì«›  ‰‘œ Ì« ﬁ»·« «„÷« Ã«Ìê“Ì‰ ‘œÂ Ê Ì« ⁄»«—  »Â œ—” Ì œ— „ ‰ ÃÂ  Ã«Ìê“Ì‰Ì ﬁ—«— œ«œÂ ‰‘œÂ'  ,False);
        end;

      finally
        // »” ‰ ”‰œ
        WordDoc.Close;
       // WordDoc.Free;
      end;
    finally

      WordApp.Disconnect;
      WordApp.Free;
    end;
  end;


  //end;
end;

procedure TFrAddLetterDataDialog.MakePage;
var
  OReadOnly,
  itemindex,olv,emp,f,fals,tru:OleVariant;
  HNDL : THandle;
  isError : Boolean;

begin
  emp := '';
  fals:= False;
  tru := True;
  olv := wdOpenFormatAuto;

  With WordApp do
  begin

    try
     Caption := 'YeganehSign'; //_Yeganeh;
    except
      isError := True;
    end;


    try

      if isError then
       Caption := 'YeganehSign';


      // WordApp.Visible := True;
      ChangeFileOpenDirectory(_TempPath);

      f:= WordSignFileName ;
      //_Word_Is_Opened := True;
      HNDL := FindWindow('OpusApp',PAnsiChar('YeganehSign'));
      SetForegroundWindow(HNDL);
      OReadOnly := False;

      Documents.Open(f,EmptyParam,OReadOnly,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam,EmptyParam);

      If ActiveWindow.View.SplitSpecial <> wdPaneNone Then
        ActiveWindow.Panes.Item(2).Close;
      If ActiveWindow.ActivePane.View.Type_ in[ wdNormalView ,wdOutlineView] Then
        ActiveWindow.ActivePane.View.Type_:= wdPrintView;
      ItemIndex := 1;
      WordDoc.ConnectTo(WordApp.Documents.Item(itemindex));

    except  on e:exception do
     begin
       MBaseForm.MessageShowString('›—„  ›«Ì· «‰ Œ«»Ì ÃÂ  »«“ ‘œ‰ „‰«”» ‰„Ì »«‘œ' +Char(10) + e.Message ,False);
      // WordApp.Visible := false ;
     end;
    end;
     

  end;
end;

end.
