unit LoginU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DB, DBCtrls, Buttons, ExtCtrls, jpeg, ComCtrls,
  OleCtrls, TINYLib_TLB, ADODB, xpBitBtn, dxGDIPlusClasses;

type
  TFrLogin = class(TForm)
    Label4: TLabel;
    Label5: TLabel;
    UserEdit: TMaskEdit;
    PassEdit: TMaskEdit;
    StatusBar1: TStatusBar;
    BitBtn1: TxpBitBtn;
    BtnEnter: TxpBitBtn;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Panel2: TPanel;
    Label6: TLabel;
    Image2: TImage;
    Cashlbl: TLabel;
    SoftVertionLBL: TLabel;
    SoftVerLastUpdate: TLabel;
    ScriptUpdate: TLabel;
    Image3: TImage;
    Label3: TLabel;
    Label7: TLabel;
    procedure UserEditKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure PassEditKeyDown(Sender: TObject; var Key: Word;Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure BtnEnterClick(Sender: TObject);
    Procedure Login;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrLogin: TFrLogin;

implementation

uses dmu, BusinessLayer, DongleU, YShamsiDate;

{$R *.dfm}
var
  logout,isSafeLogout:boolean;
  ok: boolean;

procedure TFrLogin.UserEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key in [vk_return,Vk_Down] then
    SelectNext(Sender as TwinControl,True,True);
end;

procedure TFrLogin.PassEditKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=13 then
    BtnEnter.OnClick(BtnEnter);
end;

procedure TFrLogin.BitBtn1Click(Sender: TObject);
begin
  halt;
end;

Procedure TFrLogin.Login;
begin
  _Userid        := dm.UsersUserId.AsInteger;
  _AccMngtAccess := dm.UsersAccMngtAccess.AsBoolean;
  _Username      := Dm.UsersUserName.AsString;
  _AccessID      := dm.UsersAccessID.AsInteger;
  Get_UserLogoutStatus(logout,isSafeLogout);

  if not logout then
  begin
    ShowMessage('����� ���� �� ��� ��� ���� ����� ��� ��� ��� ��� ������ ���� ��� ����� ����');
    exit;
  end;
 //moghadammmm
  _UserLoginLogoutID:=insert_UserLoginLogout('000.000.000.000');
  ok:=true;
  Close;
end;

procedure TFrLogin.BtnEnterClick(Sender: TObject);
begin
  if not dm.Users.Locate('username',UserEdit.Text,[]) then
    ShowMessage('������ �� ��� ��� ���� �����')
  else
  if Dm.UsersPassword.AsString<>PassEdit.Text then
    ShowMessage('���� ���� ������ �� ����')
  else
    Login;
end;

procedure TFrLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not ok then
    abort;
end;

procedure TFrLogin.FormCreate(Sender: TObject);
var
   CountError : Integer;
begin
  //StatusBar1.Panels[0].Text:= '���� ' + _SoftVertion;
  //SoftVertionLBL.Caption := _SoftVersion;
  //StatusBar1.Panels[2].Text:='����� ���� �����: '+_Today;
  //StatusBar1.Panels[3].Text:='����� ����� ������' + _SoftVerLastUpdate;
  //SoftVerLastUpdate.Caption := '����� ����� ������ ' + _SoftVerLastUpdate;

   StatusBar1.Panels[2].Text:= '  ����� ����� ������  ' + _SoftVerLastUpdate;
   StatusBar1.Panels[0].Text  := _SoftVersion;

  CashLbl.Caption:=_SoftTitle;
  { TODO -oparsa : 14030108 }
  ScriptUpdate.Visible := _CountError <> 0;
  { TODO -oparsa : 14030108 }
end;

procedure TFrLogin.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if shift= [ssShift,ssCtrl..ssLeft] then
  begin
    UserEdit.Text := '����';
    PassEdit.Text := '123';
    BtnEnterClick(self);
  end;
end;

end.


