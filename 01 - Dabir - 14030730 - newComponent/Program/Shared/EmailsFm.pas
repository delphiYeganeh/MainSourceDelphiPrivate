unit EmailsFm;

interface

uses
  BaseUnit , Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, wwriched, Grids, DBGrids, YDbgrid, ExtCtrls,
  Buttons, DBCtrls, Mask,  ExtActns, ActnList, DB, IdMessage,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, ImgList, WordXP, OleServer,ShellApi, IdPOP3, IdSSLOpenSSL,
  Menus,idglobal,IdCoderHeader, YeganehCheckMail, TntDialogs, AppEvnts,
  AdvGlowButton;

type
  TFmEmails = class(TMBaseForm)
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    PanelMemo: TPanel;
    YDBGrid1: TYDBGrid;
    DBN1: TDBNavigator;
    Panel6: TPanel;
    DBESendAddress: TDBEdit;
    DBEReciveAddress: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton9: TAdvGlowButton;
    DBESubject: TDBEdit;
    Label4: TLabel;
    Splitter1: TSplitter;
    SBDown: TAdvGlowButton;
    SBUp: TAdvGlowButton;
    Label5: TLabel;
    DBText1: TDBText;
    SpeedButton3: TAdvGlowButton;
    SpeedButton15: TAdvGlowButton;
    SpeedButton2: TAdvGlowButton;
    SpeedButton1: TAdvGlowButton;
    SpeedButton12: TAdvGlowButton;
    Panel7: TPanel;
    SBSimpleEditor: TAdvGlowButton;
    Panel5: TPanel;
    SpeedButton6: TAdvGlowButton;
    GroupBox1: TGroupBox;
    SBArchive: TAdvGlowButton;
    SBSend: TAdvGlowButton;
    SBRecive: TAdvGlowButton;
    SBNotSend: TAdvGlowButton;
    SpeedButton16: TAdvGlowButton;
    SpeedButton7: TAdvGlowButton;
    SpeedButton17: TAdvGlowButton;
    OpenDialogAttachT: TOpenDialog;
    SaveDialog1: TSaveDialog;
    OpenDialog1T: TOpenDialog;
    SpeedButton4: TAdvGlowButton;
    ImageList1: TImageList;
    SBSendEmail: TAdvGlowButton;
    SpeedButton13: TAdvGlowButton;
    DBCBIsRead: TDBCheckBox;
    SBShowMemo: TAdvGlowButton;
    SBSearch: TAdvGlowButton;
    SpeedButton5: TAdvGlowButton;
    WordApplication: TWordApplication;
    WordDocument: TWordDocument;
    SpeedButton8: TAdvGlowButton;
    SpeedButton10: TAdvGlowButton;
    Label3: TLabel;
    DBText2: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    SpeedButton11: TAdvGlowButton;
    FontDialog1: TFontDialog;
    YeganehCheckMail: TYeganehCheckMail;
    wwDBREMemo: TwwDBRichEdit;
    OpenDialogAttach: TTntOpenDialog;
    OpenDialog1: TTntOpenDialog;
    pnlMain: TPanel;
    procedure SBSendEmailClick(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SBSimpleEditorClick(Sender: TObject);
    procedure SBDownClick(Sender: TObject);
    procedure SBUpClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SBNotSendClick(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure DBN1BeforeAction(Sender: TObject; Button: TNavigateBtn);
    procedure SpeedButton4Click(Sender: TObject);
    procedure YDBGrid1NeedImageIndex(Column: TColumn;
      var ImageIndex: Integer);
    procedure YDBGrid1NeedFontCondition(Column:TColumn; State:TGridDrawState; var F:TFont);
    procedure YDBGrid1DblClick(Sender: TObject);
    procedure SBShowMemoClick(Sender: TObject);
    procedure SBSearchClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure DBESendAddressExit(Sender: TObject);
    procedure DBESendAddressEnter(Sender: TObject);
    procedure WordDocumentClose(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure YeganehCheckMailDownloadHeader(MailMsg: TIdMessage;
      var IsDuplicate: Boolean);
    procedure YeganehCheckMailDownloadEmail(MailMsg: TIdMessage);
    procedure YeganehCheckMailBeforeDownload(MessageNumber: Integer);
  private
    procedure Open_SpEmails(Status:Byte);
    procedure RefreshQuery;
    Procedure Insert_Data(IdMsgRecive:TIdMessage);
    Function HaveEmail(aDate:TDateTime):Boolean;
  public

  end;

var
  FmEmails: TFmEmails;

implementation

uses EmailUserPassFm, EmailsDM, YShamsiDate, DMU, SearchFM,
     Settingsu, Math, PhoneFm, DateUtils, StrUtils,
     BusinessLayer, WaitPleaseFM, UMain;

{$R *.dfm}

Procedure TFmEmails.SBSendEmailClick(Sender: TObject);
Var
  EmailBody_a, files:TStrings;
  SendHost, Username,Password,Subject_a,FromAddress_a,RecipientAddress_a,AttachFileName_a,SendHost_a :String;
  SendPort_a,ConTime_a : Integer;
  at:TAuthenticationType;
begin
  inherited;

  files:=TStringList.Create;

  if UpperCase(wwDBREMemo.DataField) <> 'MEMO' then
    wwDBREMemo.DataField := 'Memo';

  Application.ProcessMessages;

  if DMEmails.SpEmails.RecordCount = 0 then
    Exit;

  if DMEmails.SpEmails.State in [dsEdit,dsInsert] then
  begin
    MBaseForm.messageShowString('���� ��� �� ����� ����� � ������� ��� �� ����� ������', False);
    Exit;
  end;

  SendHost := Trim(GetUserSetting('EmailSendHost'));

  if (SendHost = '') then
  begin
    MBaseForm.messageShowString(' ���� �� ���� ������� � ����'+' Host '+'�� ���� ������ ',False);
    Exit;
  end;

  if (Trim(DMEmails.QrSaveEmailsSendAddress.AsString)='')or(Trim(DMEmails.QrSaveEmailsReciveAddress.AsString)='') then
  begin
    MBaseForm.messageShowString('���� ���� ������ � ������� �� ������ ���� ������',False);
    Exit;
  end;

  UserName:= Trim(GetUserSetting('EmailUserName'));
  Password:= Trim(GetUserSetting('EmailPassword'));

  if Username='' then
    UserName := _UserEmail;

  FmEmailUserPass := TFmEmailUserPass.Create(Application);
  FmEmailUserPass.EdtUserName.Text := UserName;
  FmEmailUserPass.EdtPassword.Text := Password;
  FmEmailUserPass.ShowModal;

  if FmEmailUserPass.ModalResult = mrCancel then
    Exit;

  Username := FmEmailUserPass.EdtUserName.Text;
  Password := FmEmailUserPass.EdtPassword.Text;

  Subject_a  :=  Trim(DMEmails.QrSaveEmailsSubject.AsString) ;

  FromAddress_a :=       Trim(DMEmails.QrSaveEmailsSendAddress.AsString);
  RecipientAddress_a := Trim(DMEmails.QrSaveEmailsReciveAddress.AsString);
  EmailBody_a := wwDBREMemo.Lines;

  AttachFileName_a := _TempPath + Trim(DMEmails.QrSaveEmailsAttachFileName.AsString);
  files.Add(AttachFileName_a);

  if Trim(DMEmails.QrSaveEmailsAttachFileName.AsString) <> '' then
    DMEmails.QrSaveEmailsAttachFile.SaveToFile(AttachFileName_a);

  SendHost_a := SendHost;
  SendPort_a := GetUserSetting('EmailSendPort');
  ConTime_a  := GetUserSetting('EmailEmailConTime');

  if GetUserSetting('EmailAutenticationType') then
    at:=atLogin
  else
    at:=atNone;

  If Email_Send(UserName,Password , Subject_a  , FromAddress_a , RecipientAddress_a ,
                SendHost_a , SendPort_a , ConTime_a ,files, EmailBody_a ,GetUserSetting('EmailSSL'),at)  then
  begin
    With DMEmails do
      if Not QrSaveEmails.IsEmpty then
      begin
        QrSaveEmails.Edit;
        QrSaveEmailsStatus.AsInteger := 2; //������
        QrSaveEmails.Post;
      end;
      RefreshQuery;
  end;
  SBSendEmail.Enabled := True;
end;

procedure TFmEmails.SpeedButton14Click(Sender: TObject);
begin
  inherited;
  Settings := TSettings.Create(Application);
  PageControl_SetTabSheet(Settings.PageControl1,'TShEmail');//PageControl ������ �ѐ� �����
  Settings.ShowModal;
end;

procedure TFmEmails.SBSimpleEditorClick(Sender: TObject);
var
  Template,NewTemplate,ItemIndex:OleVariant;
begin
  inherited;
  if Not(DMEmails.SpEmails.State in [dsEdit,dsInsert]) then
    Exit;
  Wordapplication.Connect;
  ItemIndex := 1;
  Wordapplication.Visible := True;
  Template := EmptyParam;
  NewTemplate := False;
  WordApplication.Caption := '��� �����';
  WordApplication.Documents.Add(Template, NewTemplate,Template,Template);
  //WordDocument.Range.Insertbefore(wwDBREMemo.GetRTFText);
  wwDBREMemo.SelectAll;
  wwDBREMemo.CopyToClipboard;
  WordApplication.Selection.Paste;
  WordDocument.ConnectTo(WordApplication.Documents.Item(ItemIndex));
end;

procedure TFmEmails.SBDownClick(Sender: TObject);
begin
  inherited;
  PanelMemo.Height := 0;
  SBUp.Visible := True;
  SBDown.Visible := False;
end;

procedure TFmEmails.SBUpClick(Sender: TObject);
begin
  inherited;
  PanelMemo.Height := 242;
  SBUp.Visible := False;
  SBDown.Visible := True;
end;

procedure TFmEmails.FormShow(Sender: TObject);
begin
  inherited;
  Open_SpEmails(0);//����� ����
   {if HaveDataFromOtherForm then
      GetDataFromOtherForm;}

  DBNav_Setup(DBN1);
end;

procedure TFmEmails.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with DMEmails do
  begin
    SpEmails.Close;
  end;

  inherited;
end;

procedure TFmEmails.Open_SpEmails(Status:Byte);
begin
   //0: ����� ����
   //1: �������
   //2: ������
   //3: ������
  with DMEmails do
  begin
    SpEmails.Close;
    SpEmails.Parameters.ParamByName('@UsersID').Value := _Userid;
    SpEmails.Parameters.ParamByName('@Status').Value := Status;
    SpEmails.Open;
    SpEmails.Last;
  end;
  YDBGrid1.SetFocus;
end;

procedure TFmEmails.SBNotSendClick(Sender: TObject);
begin
  inherited;
  Open_SpEmails(TSpeedButton(Sender).Tag);
end;

procedure TFmEmails.SpeedButton9Click(Sender: TObject);
begin
  inherited;
  With DMEmails do
  begin
    if not (QrSaveEmails.State in [dsEdit,dsInsert]) then
      Exit;

    QrSrchPhone.Close;
    QrSrchPhone.Parameters.ParamByName('UsersID').Value := _UserID;
    QrSrchPhone.Open;
    if FmSearch.GetSearchValue(QrSrchPhone,'PhoneID','Title',' ',500,600)<>'0' then
      QrSaveEmailsReciveAddress.AsString := Trim(QrSrchPhoneEmail.AsString);
  end;
  //MBaseForm.messageShowString('���� ��� �� ����� ������� ��� �� ����� ������', False);
end;

procedure TFmEmails.SpeedButton13Click(Sender: TObject);
begin
  inherited;
  if DMEmails.SpEmails.RecordCount = 0 then
    Exit;

  if DMEmails.SpEmails.State in [dsEdit,dsInsert] then
  begin
    MBaseForm.messageShowString('���� ��� �� ����� ����� � ������� ��� �� ����� ������', False);
    Exit;
  end;

  with DMEmails do
    if Not QrSaveEmails.IsEmpty then
    begin
      QrSaveEmails.Edit;
      QrSaveEmailsStatus.AsInteger := 3; //������
      QrSaveEmails.Post;
      RefreshQuery;
    end;
end;

procedure TFmEmails.RefreshQuery;
begin
  if SBNotSend.Down then
    SBNotSend.Click;
  if SBRecive.Down then
    SBRecive.Click;
  if SBSend.Down then
    SBSend.Click;
  if SBArchive.Down then
    SBArchive.Click;
end;

procedure TFmEmails.SpeedButton7Click(Sender: TObject);
Var
  FileNamePath:String;
  i : integer;
begin
  inherited;
  if Not(DMEmails.SpEmails.State in [dsEdit,dsInsert]) then
    Exit;

  with DMEmails do
    if OpenDialogAttach.Execute then
    begin
      if FileExists(_ApplicationPath+'tmpFile')then
      begin
        SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'), false);
        DeleteFile(pchar(_ApplicationPath+'tmpFile'));
      end;
      if CopyFileW(dm.replacePWC(StringToPWide(OpenDialogAttach.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
        FileNamePath :=_ApplicationPath+'tmpFile'
      else if CopyFileW(StringToPWide(OpenDialogAttach.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
        FileNamePath := _ApplicationPath+'tmpFile'
      else
        ShowMessage('��� �� ������ ���� ����');

      if FileNamePath <>'' then
      begin
        QrSaveEmailsAttachFileName.AsString := Trim(ExtractFileName(FileNamePath));
        QrSaveEmailsAttachFile.LoadFromFile(FileNamePath);
      end;
    end;
end;

procedure TFmEmails.SpeedButton17Click(Sender: TObject);
var
  i : integer;
  FileNamePath : string;
begin
  inherited;
  if Not(DMEmails.SpEmails.State in [dsEdit,dsInsert]) then
    Exit;

  if OpenDialog1.Execute then
  begin
    if FileExists(_ApplicationPath+'tmpFile')then
    begin
      SysUtils.FileSetReadOnly(pchar(_ApplicationPath+'tmpFile'), false);
      DeleteFile(pchar(_ApplicationPath+'tmpFile'));
    end;
    if CopyFileW(dm.replacePWC(StringToPWide(OpenDialog1.filename,i)), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
      FileNamePath :=_ApplicationPath+'tmpFile'
    else if CopyFileW(StringToPWide(OpenDialog1.filename,i), StringToPWide(_ApplicationPath+'tmpFile',i), False) then
      FileNamePath := _ApplicationPath+'tmpFile'
    else
      ShowMessage('��� �� ������ ���� ����');
    if FileNamePath <>'' then
      DMEmails.QrSaveEmailsMemo.LoadFromFile(FileNamePath);
  end;
end;

procedure TFmEmails.SpeedButton16Click(Sender: TObject);
var
  Ext:String;
begin
  inherited;
  if SaveDialog1.Execute then
  begin
    Case SaveDialog1.FilterIndex of
      1: Ext := 'doc';
      2: Ext := 'docx';
      3: Ext := 'txt';
    end;
    DMEmails.QrSaveEmailsMemo.SaveToFile(SaveDialog1.FileName+'.'+Ext);
  end;
end;

procedure TFmEmails.DBN1BeforeAction(Sender: TObject;
  Button: TNavigateBtn);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    if Button in [nbEdit,nbInsert] then
    begin
      if (Button = nbInsert)and (SBNotSend.Down=False) then
      begin
        SBNotSend.Click;
        SBNotSend.Down := True;
        Application.ProcessMessages;
      end;
      wwDBREMemo.ReadOnly := False;
      DBESubject.SetFocus;
    end
    else
    begin
      wwDBREMemo.ReadOnly := True;
      YDBGrid1.SetFocus;
    end;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFmEmails.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  if Not(DMEmails.SpEmails.State in [dsEdit,dsInsert]) then
    Exit;

  with DMEmails do
  begin
    QrSaveEmailsAttachFileName.Clear;
    QrSaveEmailsAttachFile.Clear;
    SpEmailsAttachFileName.Clear;//Attach ��� ���� ������� ����
    MBaseForm.MessageShowString('���� ������ �� ������ ��� ��', False);
  end;
end;

procedure TFmEmails.YDBGrid1NeedImageIndex(Column: TColumn;
  var ImageIndex: Integer);
begin
  inherited;

  if UpperCase(Column.FieldName) = UpperCase('AttachFileName') then
    if Trim(DMEmails.SpEmailsAttachFileName.AsString)<> '' then
      ImageIndex:=1
    else
      ImageIndex:=0;
end;

procedure TFmEmails.YDBGrid1NeedFontCondition(Column: TColumn;
  State: TGridDrawState; var F: TFont);
begin
  inherited;
  if DMEmails.SpEmailsIsReciveEmail.AsBoolean then
  begin
     if DMEmails.SpEmailsIsRead.AsBoolean then
        f.Style := f.Style-[fsbold]
     else
        f.Style := f.Style+[fsbold];
  end;
end;

procedure TFmEmails.YDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  SBShowMemo.Click;
end;

procedure TFmEmails.SBShowMemoClick(Sender: TObject);
begin
  inherited;

  if UpperCase(wwDBREMemo.DataField) <> 'MEMO' then
    wwDBREMemo.DataField := 'Memo';

  with DMEmails do
  begin
    if not(SpEmails.State in [dsedit,dsInsert]) then
      SpEmails.Edit;
    QrSaveEmailsIsRead.AsBoolean := True;
    SpEmailsIsRead.AsBoolean := True;//DBGrid ��� ����� �� �����
  end;
end;

procedure TFmEmails.SBSearchClick(Sender: TObject);
begin
  inherited;
  with DMEmails do
  begin
    if SpEmails.State in [dsEdit,dsInsert] then
    begin
      MBaseForm.messageShowString('���� ��� �� ����� ������� ��� �� ����� ������', False);
      Abort;
    end;

    if FmSearch.GetSearchValue(QrSrchEmails,'EmailsID','Subject',' ',500,550)<>'0' then
    begin
      Case QrSrchEmailsStatus.AsInteger of
        0: begin
             SBNotSend.Click; // ����� ����
             SBNotSend.Down := True;
           end;
        1: begin
             SBRecive.Click;  // �������
             SBRecive.Down := True;
           end;
        2: begin
             SBSend.Click;    // ������
             SBSend.Down := True;
           end;
        3: begin
             SBArchive.Click; // ������
             SBArchive.Down := True;
           end;
      end;
      Application.ProcessMessages;
      SpEmails.Locate('EmailsID',QrSrchEmailsEmailsID.AsInteger,[]);
      YDBGrid1.SetFocus;
    end;
  end;
end;

procedure TFmEmails.SpeedButton5Click(Sender: TObject);
var
   FileName , SaveDialogFilter:String;
begin
  inherited;
  with DMEmails do
  begin
    try
      SaveDialogFilter := SaveDialog1.Filter;
      SaveDialog1.Filter := '';
      FileName := Trim(QrSaveEmailsAttachFileName.AsString);
      if FileName <> '' then
      begin
        SaveDialog1.FileName := FileName;
        if SaveDialog1.Execute then
        begin
          QrSaveEmailsAttachFile.SaveToFile(SaveDialog1.FileName);
          ShellExecute(Handle,'Open',pchar(SaveDialog1.FileName),Nil,Nil,SW_SHOWNORMAL);
        end;
      end
      else
      begin
        MBaseForm.MessageShowString('����� ����� : �� ��� �����  ����� ����� ���� ���', False);
        Exit;
      end;
    finally
      SaveDialog1.Filter := SaveDialogFilter;
    end;
  end;
end;

procedure TFmEmails.DBESendAddressEnter(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TFmEmails.DBESendAddressExit(Sender: TObject);
begin
  inherited;
  Keyboard_Farsi;
end;

procedure TFmEmails.WordDocumentClose(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;
    WordApplication.Selection.WholeStory;
    WordApplication.Selection.Copy;
    WordDocument.Saved := True;

    wwDBREMemo.Clear;
    wwDBREMemo.PasteFromClipboard;
    wwDBREMemo.SetFocus;
    wwDBREMemo.SelStart := 0;
    DBN1.SetFocus;
  finally
    WordApplication.Disconnect;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFmEmails.SpeedButton8Click(Sender: TObject);
begin
  inherited;
  if Not(DMEmails.SpEmails.State in [dsEdit,dsInsert]) then
    Exit;
  wwDBREMemo.Execute;
end;

//��� ���� ���� ����� �� �� �� ���
function TFmEmails.HaveEmail(aDate:TDateTime):Boolean;
var
  EmailNuFromDate :String;
begin
  EmailNuFromDate := IntToStr(DateTimeToUnix(aDate));
  with DMEmails do
  begin
    if Trim(EmailNuFromDate) <> '' then
    begin
      try
        QrEmailNuFromDate.Close;
        QrEmailNuFromDate.Parameters.ParamByName('UsersID').Value := _Userid;
        QrEmailNuFromDate.Parameters.ParamByName('EmailNuFromDate').Value := EmailNuFromDate;
        QrEmailNuFromDate.Open;
        if QrEmailNuFromDate.RecordCount > 0 then
          Result := True
        else
          Result := False;
      finally
        QrEmailNuFromDate.Close;
      end;
    end
    else
      Result := False;
  end;
end;

Procedure GetUserName_Pass(var aUserName,aPassword:string);
begin
  aUserName:= Trim(GetUserSetting('EmailUserName'));
  aPassword:= Trim(GetUserSetting('EmailPassword'));

  if aUsername='' then
    aUserName := _UserEmail;

  FmEmailUserPass := TFmEmailUserPass.Create(Application);
  FmEmailUserPass.EdtUserName.Text := aUserName;
  FmEmailUserPass.EdtPassword.Text := aPassword;
  FmEmailUserPass.ShowModal;

  if FmEmailUserPass.ModalResult = mrCancel then
    Exit;

  aUsername := FmEmailUserPass.EdtUserName.Text;
  aPassword := FmEmailUserPass.EdtPassword.Text;
end;

Procedure TFmEmails.SpeedButton10Click(Sender: TObject);
Var
  I , j,MsgCount : integer;
  aUserName,aPassword  : String;
begin
  inherited;

  if DMEmails.SpEmails.State in [dsEdit,dsInsert] then
  begin
    MBaseForm.messageShowString('���� ��� �� ����� ����� � ������� ��� �� ����� ������', False);
    Exit;
  end;

  with YeganehCheckMail do
  begin
    GetUserName_Pass(aUserName,aPassword);
    UserName:=aUserName;
    Password:=aPassword;
    HasSSL:= GetUserSetting('EmailSSL');
    SSLVersion:=sslvTLSv1;
    ReciveHost:= Trim(GetUserSetting('EmailReciveHost'));
    Port:= GetUserSetting('EmailRecivePort');
  end;

  MsgCount:=YeganehCheckMail.MailCount;

  if MsgCount=0 then
  begin
    MessageShowString('�� ���� ������ �� ���� ���',false);
    Exit;
  end
  else
    if not MessageShowString('����� '+IntToStr(MsgCount)+' ���� ���� ���� ��� ���� �� ������ ��� ����� �� ����Ͽ',True) then
      Exit;

  Screen.Cursor := crHourGlass;
  FMWaitPlease := TFMWaitPlease.Create(Application);
  with FMWaitPlease do
  begin
    LableTo.Caption := IntToStr(MsgCount);
    ProgressBar1.Max := MsgCount;
    ProgressBar1.Position := 0;
  end;

  YeganehCheckMail.CheckMail;

  MessageShowString('����� ����� : ���� � ��� ����� �� �� ������ ����� ��', False);
  FMWaitPlease.Close;
  Screen.Cursor := crDefault;
  Application.ProcessMessages;
  SBRecive.Click; //Refresh
  SBRecive.Down := True;
end;

procedure TFmEmails.Insert_Data(IdMsgRecive:TIdMessage);
var
  p, I,j:integer;
  body,Attach_FileName:String;
begin
  with DMEmails do
  begin
    if QrSaveEmails.State = dsInsert then
      QrSaveEmails.Cancel;
    QrSaveEmails.Append;
    QrSaveEmailsStatus.AsInteger := 1;
    QrSaveEmailsIsReciveEmail.AsBoolean := True;//����� �����
    QrSaveEmailsSubject.AsString :=UTF8Decode( IdMsgRecive.Subject);
    QrSaveEmailsSendAddress.AsString := Email_GetAddress(IdMsgRecive.From.Text);
    QrSaveEmailsReciveAddress.AsString := Email_GetAddress(IdMsgRecive.Recipients.EMailAddresses);

    for I := 0 to Pred(IdMsgRecive.MessageParts.Count) do
    begin
      if (IdMsgRecive.MessageParts.Items[I] is TIdText) then
      begin
        if pos(UpperCase('Text/Plain'),UpperCase(TIdText(IdMsgRecive.MessageParts.Items[i]).ContentType))>0  then //Text/Plain  ,   'text/html'
          QrSaveEmailsMemo.AsString := UTF8Decode( TIdText(IdMsgRecive.MessageParts.Items[i]).Body.Text) ;
      end;

      if (IdMsgRecive.MessageParts.Items[I] is TIdAttachment) then
      begin
        if Trim(TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName)<>'' then
          Attach_FileName := UTF8Decode( TIdAttachment(IdMsgRecive.MessageParts.Items[I]).FileName)
        else
          Attach_FileName := 'NoName.txt';

        if FileExists(_TempPath+Attach_FileName) and not(File_IsInUse(_TempPath+Attach_FileName)) then
        begin
          SysUtils.FileSetReadOnly(_TempPath+Attach_FileName, false);
          DeleteFile(_TempPath+Attach_FileName);
        end;

        TIdAttachment(IdMsgRecive.MessageParts.Items[I]).SaveToFile(_TempPath+Attach_FileName);

        QrSaveEmailsAttachFile.LoadFromFile(_TempPath+Attach_FileName);

        QrSaveEmailsAttachFileName.AsString := Attach_FileName;
      end;
    end;
    QrSaveEmailsDateEmail.AsString := ShamsiString(IdMsgRecive.Date);
    QrSaveEmailsEmailNuFromDate.AsString :=  IntToStr(DateTimeToUnix(IdMsgRecive.Date)); //������� ����� ���� ���
    QrSaveEmailsIsReciveEmail.AsBoolean := True;
    QrSaveEmailsIsRead.AsBoolean := False;
    QrSaveEmails.Post;
  end;
end;

procedure TFmEmails.SpeedButton11Click(Sender: TObject);
begin
  inherited;
  FmPhone := TFmPhone.Create(Application);
  FmPhone.ShowModal;
end;

procedure TFmEmails.YeganehCheckMailDownloadHeader(MailMsg: TIdMessage;
  var IsDuplicate: Boolean);
begin
  inherited;
  IsDuplicate:=HaveEmail(MailMsg.Date);
end;

procedure TFmEmails.YeganehCheckMailDownloadEmail(MailMsg: TIdMessage);
begin
  inherited;
  Insert_Data(MailMsg);//����� �� �������
end;

procedure TFmEmails.YeganehCheckMailBeforeDownload(MessageNumber: Integer);
begin
  inherited;
  With FMWaitPlease do
  begin
    Show;
    Repaint;
    LableFrom.Caption := IntToStr(MessageNumber);
    ProgressBar1.Position := MessageNumber;
    ProgressBar1.Repaint;
    Application.ProcessMessages;
  end;
end;

end.




