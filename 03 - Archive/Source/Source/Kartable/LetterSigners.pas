unit LetterSigners;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, YDbgrid, StdCtrls, ExtCtrls, ExtDlgs, clipbrd, wordxp,ShlObj;

type
  TfmLetterSigners = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    YDBGrid1: TYDBGrid;
    dLetterSign: TDataSource;
    Button2: TButton;
    QrUserSign: TADOQuery;
    QrUserSignUserID: TIntegerField;
    QrUserSignSecoundSign: TBlobField;
    QrUserSignTitle: TWideStringField;
    QrUserSignUserName: TWideStringField;
    QrUserSignPassword: TWideStringField;
    OpenPictureDialog: TOpenPictureDialog;
    qryUpdate: TADOQuery;
    qrySecoundSign: TADOQuery;
    qrySecoundSignSecoundSign: TBlobField;
    qryWord: TADOQuery;
    qryWordLetterDataID: TAutoIncField;
    qryWordLetterID: TIntegerField;
    qryWordPageNumber: TIntegerField;
    qryWordImage: TBlobField;
    qryWordextention: TWordField;
    qryWordDescription: TWideStringField;
    qryWordLastUpdate: TDateTimeField;
    qryWordUniqueID: TLargeintField;
    qryWordListItemsID: TIntegerField;
    qryWordIsCorrectedImage: TBooleanField;
    qryWordVersionNo: TStringField;
    qryWordVersionDate: TStringField;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    function AddUserSign(WordFile: string; UserID: integer; paraph: string=''):boolean;
    procedure CopyFilesToClipboard(FileList: string);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    LetterID : integer;
    { Public declarations }
  end;

var
  fmLetterSigners: TfmLetterSigners;

implementation

uses Dmu, BaseUnit, InputPassU, businessLayer, YShamsiDate, UMain,
  YInputBox;

{$R *.dfm}

procedure TfmLetterSigners.Button1Click(Sender: TObject);
begin
   close;
end;

procedure TfmLetterSigners.Button2Click(Sender: TObject);
var
   wf , paraph: string;
begin
   Try
      dm._LetterID := LetterID;
      _OpenedWordFile :=  _WordFileName;
      dm.QrUserSign.Close;
      dm.QrUserSign.Parameters.ParamByName('Pa_UserID').Value := _Userid;
      dm.QrUserSign.Open;

      if dm.QrUserSign.RecordCount = 0 then
      begin
            MBaseForm.MessageShowString('ﬂ«—»— ê—«„Ì : ‘„« œ«—«Ì «„÷« ‰„Ì »«‘Ìœ'+ #13#13+
            ' ÊÃÂ : ÃÂ  œ«‘ ‰ Ì«  €ÌÌ— «„÷«Ì ŒÊœ »Â ›—„  ⁄—Ì› ò«—»— œ— œ»Ì—Œ«‰Â „—«Ã⁄Â ‰„«ÌÌœ', False);
            Exit;
      end;

      //Add Saneye 950604
      // ‰ŸÌ„«  œ—ŒÊ«”  òœ «„‰Ì Ì
      if (GetUserSetting('Signature_RequestPass') = '0') or (GetUserSetting('Signature_RequestPass') = 'False') then
      begin
        FInputPass := TFInputPass.Create(Application);
        FInputPass.UserPassword := Trim(dm.QrUserSignPassword.AsString);
        FInputPass.ShowModal;
        if FInputPass.ModalResult = mrOK then
        begin
           //paraph := InputBox( '·ÿ›« „ ‰ Å«—«› —« Ê«—œ ò‰Ìœ','', '');
           FInputPass := TFInputPass.Create(Application);
           FInputPass.UserPassword := '';
           FInputPass.Caption := 'Å«—«› ‰«„Â';
           FInputPass.Label1.Caption := '·ÿ›« „ ‰ Å«—«› —« Ê«—œ ò‰Ìœ';
           FInputPass.MaskEdit1.PasswordChar := #0;
           FInputPass.ShowModal;
           paraph := _paraph;
           qryWord.Close;
           qryWord.Parameters[0].Value := LetterID;
           qryWord.Open;
           qryWordImage.SaveToFile(_TempPath+_WordFileName);
           if (AddUserSign(_TempPath+_WordFileName,_UserID,paraph)) then
           With TADOQuery.Create(nil) do
           begin
            Connection := dm.YeganehConnection;
            SQL.Text := 'UPDATE LetterSign SET IsOld=1 WHERE LetterID='+dm.Sp_InboxLetterID.AsString+' AND UserID='+IntToStr(_Userid);
            ExecSQL;
            Active := false;
            SQL.Text := 'INSERT INTO LetterSign([LetterID],[UserID],[Date],[Time],[paraph]) VALUES('+dm.Sp_InboxLetterID.AsString+','+IntToStr(_Userid)+','''+_Today+''','''+Exec_Get_NowTime+''','''+paraph+''')';
            ExecSQL;
           end;
        end;
      end
      else
      begin
        qryWord.Close;
        qryWord.Parameters[0].Value := LetterID;
        qryWord.Open;
        qryWordImage.SaveToFile(_TempPath+_WordFileName);
        if (AddUserSign(_TempPath+_WordFileName,_UserID,paraph)) then
        With TADOQuery.Create(nil) do
        begin
         Connection := dm.YeganehConnection;
         SQL.Text := 'UPDATE LetterSign SET IsOld=1 WHERE LetterID='+dm.Sp_InboxLetterID.AsString+' AND UserID='+IntToStr(_Userid);
         ExecSQL;
         Active := false;
         SQL.Text := 'INSERT INTO LetterSign([LetterID],[UserID],[Date],[Time],[paraph]) VALUES('+dm.Sp_InboxLetterID.AsString+','+IntToStr(_Userid)+','''+_Today+''','''+Exec_Get_NowTime+''','''+paraph+''')';
         ExecSQL;
        end;
      end;
      //End Sanaye...

   Finally
      dm.QrUserSign.Close;
      dm.qLetterSign.close;
      dm.qLetterSign.Open;
   end;
   MainForm.RefreshQuery;
   Button3.Enabled:=True;

end;

function TfmLetterSigners.AddUserSign(WordFile: string; UserID: integer; paraph: string=''):boolean;
var
   TemPicName , str : string;
   img : TImage;
   FS : TFileStream;
   buf : array [0..50] of byte;
   b2: boolean;
   i : integer;
   OReadOnly,olv,emp,f,f1,fals,tru,fn:OleVariant;
   shape : InlineShape;
begin
   Result := false;
   Try
      QrUserSign.Close;
      QrUserSign.Parameters.ParamByName('Pa_UserID').Value := _Userid;
      QrUserSign.Open;

      if (QrUserSign.IsEmpty) then
      begin
         Exit;
      end;
      b2 := true;
      if (QrUserSignSecoundSign.IsNull) then
      begin
         b2 := false;
         ShowMessage('«„÷«¡ „Êﬁ  »—«Ì ‘„«  ⁄—Ì› ‰‘œÂ «” '+#13+
         '·ÿ›« «„÷« „Êﬁ  ŒÊœ —« «‰ Œ«» ò‰Ìœ'+#13+
         ' —ÃÌÕ« ”«Ì“ «„÷« „Êﬁ  »—«»— »« «„÷« «’·Ì »«‘œ');
         OpenPictureDialog.Title := '«‰ Œ«» «„÷« „Êﬁ ';
         if OpenPictureDialog.Execute then
         begin
            CopyFile(pchar(OpenPictureDialog.FileName),pchar(_TempPath+'\yeganehsign.jpg'),false);
            FS := TFileStream.Create(_TempPath+'\yeganehsign.jpg',fmOpenReadWrite);
            FS.seek(FS.Size,soFromBeginning);
            str := 'Yeganeh UserID:'+ IntToStr(_Userid);
            for i:=0 to length(str) do
               buf[i] := ord(str[i]);
            FS.Write(buf,50);
            FS.Free;
            qryUpdate.Close;
            qryUpdate.Parameters[0].LoadFromFile(_TempPath+'\yeganehsign.jpg',ftVarBytes);
            qryUpdate.Parameters[1].Value := _Userid;
            qryUpdate.ExecSQL;
            b2 := true;
         end;
      end;

      if b2 then
      begin
         TemPicName  := _TempPath+'tmpJPG.jpg';
         qrySecoundSign.Close;
         qrySecoundSign.Parameters[0].Value := _Userid;
         qrySecoundSign.Open;
         qrySecoundSignSecoundSign.SaveToFile(TemPicName);
         _isSigning := true;
         if Dm.ExecGet_LetterWordFile(LetterID,false) then
         begin
            _isSigning := false;
            CopyFilesToClipboard(TemPicName);
            with dm.WordApplication do
            begin
               ActiveDocument.ActiveWindow.Selection.SetRange(2147483646, 2147483647);
               ActiveDocument.ActiveWindow.Selection.InsertAfter(#13);
               ActiveDocument.ActiveWindow.Selection.SetRange(2147483646, 2147483647);
               ActiveDocument.ActiveWindow.Selection.ParagraphFormat.Alignment := wdAlignParagraphLeft;
               ActiveDocument.ActiveWindow.Selection.Paste;
               ActiveDocument.ActiveWindow.Selection.InsertAfter(paraph);
               Visible := true;
            end;
         end;
      end;
   Finally
      qrySecoundSign.Close;
      Clipboard.Clear;
      if FileExists(TemPicName) then
         DeleteFile(Pchar(TemPicName));
      Result := true;
   end;

end;

procedure TfmLetterSigners.CopyFilesToClipboard(FileList: string);
var
   DropFiles: PDropFiles;
   hGlobal: THandle;
   iLen: Integer;
begin
   iLen := Length(FileList) + 2;
   FileList := FileList + #0#0;
   hGlobal := GlobalAlloc( GMEM_SHARE or GMEM_MOVEABLE or GMEM_ZEROINIT,
   SizeOf(TDropFiles) + iLen );
   if (hGlobal = 0) then
      raise Exception.Create('Could not allocate memory.');
   begin
      DropFiles := GlobalLock(hGlobal);
      DropFiles^.pFiles := SizeOf(TDropFiles);
      Move(FileList[1], (PChar(DropFiles) + SizeOf(TDropFiles))^, iLen);
      GlobalUnlock(hGlobal);
      Clipboard.SetAsHandle(CF_HDROP, hGlobal);
   end;
end;

procedure TfmLetterSigners.Button3Click(Sender: TObject);
begin
  MainForm.SendToSecretariat.Execute;
  close;
end;

end.
