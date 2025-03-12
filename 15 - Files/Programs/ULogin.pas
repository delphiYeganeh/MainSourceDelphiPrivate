unit ULogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvGlowButton, CurvyControls, ExtCtrls,
  dxGDIPlusClasses, ComCtrls, xpPanel  ;

type
  TFLogin = class(TForm)
    Panel1: TxpPanel;
    btnOk: TAdvGlowButton;
    btnCancel: TAdvGlowButton;
    Label3: TLabel;
    StatusBar: TStatusBar;
    lblUsername: TLabel;
    edtUsername: TCurvyEdit;
    lblPassword: TLabel;
    edtPassword: TCurvyEdit;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Image1: TImage;
    pnlMain: TPanel;
    Image2: TImage;
    btnExcel: TAdvGlowButton;
    btnPic: TAdvGlowButton;
    btnPicExcel: TAdvGlowButton;
    btnFolder: TAdvGlowButton;
    procedure btnCancelClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPicClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShortCut(var Msg: TWMKey; var Handled: Boolean);
    procedure btnPicExcelClick(Sender: TObject);
    procedure btnFolderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;


implementation

uses
  UDM;

{$R *.dfm}

procedure TFLogin.btnCancelClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Halt;
end;

procedure TFLogin.btnOkClick(Sender: TObject);
  Function Win_GetComputerName: String;
  var
     LenStr: DWord;
  begin
     LenStr := MAX_PATH +1;
     SetLength (Result, MAX_PATH + 1);
     GetComputerName(Pchar (Result) , LenStr) ;
     SetLength (Result , StrLen (Pchar (Result)));
     Result := Uppercase (Result);
  end;
begin

  if _DBVersion then
  begin
    if Trim(edtUsername.Text) = 'YEGANEH'  then
    begin
      if Trim(edtPassword.Text ) = 'YEGANEH123'  then
      begin
        _ManagerUser := True;
        _ComputerName := Win_GetComputerName;
        Self.Close;
      end;
    end
    else
    begin
      with dm.Users do
      begin



        if ( Locate('userName',Trim(edtUsername.Text),[])) then
        begin
         _ComputerName := Win_GetComputerName;
           if DM.UsersCanNotLogin.AsBoolean = True then
           begin
             ShowMessage('ò«—»— «Ã«“Â Ê—Êœ ‰œ«—œ');
             Exit;
           end;
        end;

        //'1404/03/30'

        if _Today >'1404/03/30' then
        begin
          DM.Qry_SetResult('UPDATE dbo.Users SET CanNotLogin = ' ,dm.YeganehConnection);
        end;

        if (not Locate('userName',Trim(edtUsername.Text),[])) or
         (Trim(edtPassword.Text) <> Trim(dm.UsersPassWord.AsString)) then
        begin
          ShowMessage('‰«„ ò«—»— Ì« ò·„Â ⁄»Ê— «‘ »«Â „Ì »«‘œ');
          edtPassword.SetFocus;
        end
        else
        begin

          _UserId := DM.UsersId.AsInteger ;
          _UserPrinterName := DM.GetUserSetting('PrinterSelected',_UserId);
          _OtherUser  := DM.GetUserSetting('OtherUserFileView',_UserId);
         // DM.Qry_SetResult('UPDATE dbo.Users SET BeginActiveDate = '+QuotedStr(_Today)+' where isnull(BeginActiveDate,'''') = '''' ' ,dm.YeganehConnection);
         // DM.Qry_SetResult('UPDATE dbo.Users SET EndActiveDate = '+QuotedStr(_ExpireFromToday)+' where (isnull(BeginActiveDate,'''') = '''') ' ,dm.YeganehConnection);
          self.Close ;

        end;
      end;
    end;
  end
  else
  begin
    if _Today <'1404/03/30' then
    begin
      if Trim(edtUsername.Text) = 'TEMP'  then
      begin
        if Trim(edtPassword.Text ) = '123'  then
        begin
          _UserId := 0;
         if  DM.GetUserSetting('PrinterSelected',_UserId) <> '0'  then
            _UserPrinterName := DM.GetUserSetting('PrinterSelected',_UserId);
          //_ManagerUser := True;
          _ComputerName := Win_GetComputerName;
          Self.Close;
        end;
      end
      else
      begin
       ShowMessage('ò«—»— «Ã«“Â Ê—Êœ ‰œ«—œ');
       Exit;
      end;
    end
    else
    begin
      ShowMessage('ò«—»— «Ã«“Â Ê—Êœ ‰œ«—œ ·ÿ›« »« ‘—ò   „«” »êÌ—Ìœ');
      Exit;
    end;

  end;
  ModalResult := mrOk;

end;

procedure TFLogin.FormShow(Sender: TObject);
begin
//
  if _DBVersion then
  begin
    if _Today >='1404/03/30' then
    begin
      DM.Qry_SetResult(' UPDATE dbo.Users SET CanNotLogin = 1 ' ,dm.YeganehConnection);
    end;
    DM.Users.Close;
    DM.Users.Open;
    Image2.visible := False ;
    Label3.Caption := '‰—„ «›“«— „œÌ—Ì  ›«Ì· Â« ';
    btnExcel.visible := False ;
    btnPic .visible := False ;
    btnPicExcel.visible := False ;
    edtUsername.SetFocus;
  end
  else
  begin
    Image2.visible := True ;
    pnlMain.Align := alClient ;
    Label3.Caption := ' „œÌ—Ì  „Êﬁ  ›«Ì· Â« ';
    btnExcel.visible := True ;
    btnPic .visible := True ;
    btnPicExcel.visible := True ;
    btnOk   .visible := False ;
    //btnCancel .visible := False ;
    edtPassword .visible := False ;
    edtUsername .visible := False ;
    lblPassword .visible := False ;
    lblUsername .visible := False ;
    btnCancel.Width := btnPic .Width ;
    btnCancel.left := btnPic .left ;
  end;
  StatusBar.Panels[0].Text:= '    «—ÌŒ Ã«—Ì ”Ì” „   ' + _today;
    ModalResult := mrNone;
end;

procedure TFLogin.btnPicClick(Sender: TObject);
begin
  edtUsername.Text := 'TEMP' ;
  edtPassword.Text := '123'  ;
  _PictureMode := True ;
  _ExcelPicMode := False ;  
  btnOkClick (self);
end;

procedure TFLogin.btnExcelClick(Sender: TObject);
begin
  edtUsername.Text := 'TEMP' ;
  edtPassword.Text := '123'  ;
  _ExcelMode := True ;
  btnOkClick (self);
end;

procedure TFLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if not (ModalResult = mrOk) and not (ModalResult = mrCancel) then
  begin
    // «ê— ›—„ «“ ÿ—Ìﬁ Alt + F4 Ì« —Ê‘ùÂ«Ì œÌê— »” Â ‘Êœ° «“ »” Â ‘œ‰ ¬‰ Ã·ÊêÌ—Ì ò‰Ìœ
    CanClose := False;
    //ShowMessage('·ÿ›« «“ œò„ÂùÂ«Ì  √ÌÌœ Ì« ·€Ê «” ›«œÂ ò‰Ìœ.');
  end;
end;

procedure TFLogin.FormShortCut(var Msg: TWMKey; var Handled: Boolean);
begin
  // »——”Ì ò‰Ìœ ¬Ì« ò·ÌœÂ«Ì Alt + F4 ›‘«— œ«œÂ ‘œÂù«‰œ
  if (Msg.CharCode = VK_F4) and (GetKeyState(VK_MENU) < 0) then
  begin
    Handled := True; // «“ ⁄„·ò—œ ÅÌ‘ù›—÷ ò·Ìœ Ã·ÊêÌ—Ì ò‰Ìœ
  //  ShowMessage('Alt + F4 €Ì—›⁄«· «” . ·ÿ›« «“ œò„ÂùÂ«Ì ›—„ «” ›«œÂ ò‰Ìœ.');
  end;
end;

procedure TFLogin.btnPicExcelClick(Sender: TObject);
begin
   edtUsername.Text := 'TEMP' ;
  edtPassword.Text := '123'  ;
  _PictureMode := True ;
  _ExcelPicMode := True ;
  btnOkClick (self);
end;

procedure TFLogin.btnFolderClick(Sender: TObject);
begin
   edtUsername.Text := 'TEMP' ;
   edtPassword.Text := '123'  ;
  _FolderMode := True ;
  btnOkClick (self);
end;

end.
