unit LogOn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids, ActnList,
  jpeg, {WinSkinData,} ComCtrls, xpBitBtn;

type
  TLoginForm = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Password: TEdit;
    BBOK: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    UserName: TEdit;
    ActionList1: TActionList;
    Aclose: TAction;
    Alogin: TAction;
    PrivateLogin: TAction;
    Image1: TImage;
    StatusBar1: TStatusBar;
    Label3: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    QGetSMSSettings: TADOQuery;
    QGetSMSSettingsID: TAutoIncField;
    QGetSMSSettingsTerminalID: TStringField;
    QGetSMSSettingsPassword: TStringField;
    QGetSMSSettingsRegUserID: TIntegerField;
    QGetSMSSettingsRegDate: TStringField;
    QGetSMSSettingsSendSMS: TBooleanField;
    lblCompanyName: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BBOKClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AloginExecute(Sender: TObject);
    procedure PrivateLoginExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses   yShamsiDate, Dmu, BusinessLayer;
var correct:boolean;
{$R *.dfm}

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  correct:=false;
  Label3.Caption:=Dm.GetSystemValue(2);
  dm.Accesses.Open;
  dm.User.Open;
  StatusBar1.Panels[3].Text := '�����  ����� ������ : '+_LastUpdate;
  StatusBar1.Panels[2].Text := '����� ���� ����� : '+ShamsiString(Now);
end;

procedure TLoginForm.BBOKClick(Sender: TObject);
begin
with dm.User do
  begin
  if (not Locate('userName',UserName.Text,[])) or
   (Password.text<>dm.UserPassWord.AsString) then
    begin
      ShowMessage('��� ����� �� ���� ���� ������ �� ����');
      Password.SetFocus;
    end
   else
   begin
      if not dm.UserIsActive.AsBoolean then
      begin
         ShowMessage('����� ��� ���� �� ����.');
      end
      else
        alogin.Execute
   end;

 end;
end;

procedure TLoginForm.BitBtn2Click(Sender: TObject);
begin
  Halt;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not correct then abort;

end;

procedure TLoginForm.AloginExecute(Sender: TObject);
begin
    correct:=true;
    QGetSMSSettings.Close;
    QGetSMSSettings.Open;

    if not QGetSMSSettings.IsEmpty then
    begin
      _TerminalID:=QGetSMSSettingsTerminalID.AsString;
      _SmsPassWord:=QGetSMSSettingsPassword.AsString;
      _SendSMS:=QGetSMSSettingsSendSMS.AsBoolean;;
    end;
     with dm do
      begin
        _Userid:=UserId.AsInteger;
        _MarketerID         :=   UserMarketerID        .AsInteger;
        _UserTypeID         :=   UserUserTypeId       .AsInteger;
        _ShowContract       :=   UserShowContract     .Value;
        _IsWinServer        :=   UserISWinServer.Value;
        _ShowMyAction       :=   UserShowMyAction.Value;
        _BtnAllContract     :=   UserBtnAllContract.Value;
        _BtnAllAct          :=   UserBtnAllAct.Value;
        _ExportCustomerList :=   UserExportCustomerList.Value;
        _EditContract       :=   UserEditContract      .Value;
        _ShowAllCustomer    :=   UserShowAllCustomer   .Value;
        _ExportFollow       :=   UserExportFollow   .Value;
        _isAdmin            :=   UserIsAdmin.Value;

        _WorkSationName := Dm.GetComputerNetName;
        _WinOrDomainUserName := Dm.GetUserWindowsUser;


        Marketer.Open;
       // Marketer.Filter := 'MarketerTitle <> ''''';
        //Marketer.Filtered:=true;
        Marketer.Locate('MarketerID',_MarketerID,[]) ;
         _orgID:=Dm.MarketerOrgID.AsInteger ;
        _UserName:=UserTitle.AsString;
        _ProductID:=UserDefaultProductID.AsInteger;
        _accessID:=UserAccessID.AsInteger;
      end;
     close;
end;

procedure TLoginForm.PrivateLoginExecute(Sender: TObject);
begin
       if  dm.User.Locate('id',19,[]) then
        begin
          _Userid:=dm.UserId.AsInteger;
          _UserTypeID := dm.UserUserTypeId.AsInteger;
          Alogin.Execute;
        end else exit;

end;

procedure TLoginForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = VK_Return)And(Shift=[]) then
      SelectNext(TWinControl(ActiveControl),True,True);
end;

procedure TLoginForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = Vk_Return then
      BBOKClick(Self);
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
// StatusBar1.Panels[0].Text := _SoftVersion ;
 StatusBar1.Panels[0].Text := _SoftVersion+COPY(_SoftVersionDB,1,1)+'.'+ COPY(_SoftVersionDB,2,1);
 try
   lblCompanyName.Caption := GetSystemSetting('CompanyName');
 except
   lblCompanyName.Caption :='';
 end;
end;

procedure TLoginForm.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
//   if shift= [ssShift,ssCtrl..ssLeft] then
//      begin
//         UserName.Text := 'psk';
//         Password.Text := 'mojiri_1357';
//         BBOKClick(self);
//      end;
end;


end.