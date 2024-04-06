unit LogOn;

interface

uses
  Windows,baseunit, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, DB, ADODB, Grids, DBGrids, ActnList,
  ExtActns, xpEdit, xpWindow, xpBitBtn, Menus;

type
  TLoginForm = class(TMBaseForm)
    Panel1: TPanel;
    LogoName: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Password: TxpEdit;
    BtnLogin: TxpBitBtn;
    BitBtn2: TxpBitBtn;
    Image1: TImage;
    UserName: TxpEdit;
    ActionList1: TActionList;
    Aclose: TAction;
    Alogin: TAction;
    PrivateLogin: TAction;
    Label5: TLabel;
    Label3: TLabel;
    lifeTipLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BtnLoginClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AloginExecute(Sender: TObject);
    procedure PrivateLoginExecute(Sender: TObject);
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UserNameKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
  IsLock:boolean;
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation

uses  UMain, yShamsiDate, Dmu, businessLayer;
var correct:boolean;
{$R *.dfm}

procedure TLoginForm.FormCreate(Sender: TObject);
begin
correct:=false;
isLock:=false;
dm.Users.Open;
 Label3.Caption:=dm.GetSystemValue(16);
 LogoName.Caption:='”Ì” „ « Ê„«”ÌÊ‰ «œ«—Ì '+_Yeganeh;
 Caption:='‰—„ «›“«—Ì ' +_Yeganeh;
end;

procedure TLoginForm.BtnLoginClick(Sender: TObject);
begin

with dm,Users do
  begin
  if (not Locate('userName',UserName.Text,[])) or
   (Password.text<>dm.UsersPassWord.AsString) then
    begin
      ShowMsg(56);
      Password.SetFocus;
    end
   else
   if  (dm.today<UsersBeginActiveDate.AsString) or (dm.today>UsersEndActiveDate.AsString) then
     begin
       messageShowString('‘„« «„—Ê“ „Ã«“ »Â «” ›«œÂ «“ ‰—„ «›“«— ‰Ì” Ìœ',false);
       Password.Text:='';
       UserName.text:='';
       UserName.SetFocus;
     end else
    alogin.Execute

  end;
end;

procedure TLoginForm.BitBtn2Click(Sender: TObject);
begin
  Halt;
end;

procedure TLoginForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if not correct then abort;
 Action:=caFree;
end;

procedure TLoginForm.AloginExecute(Sender: TObject);
var logout,isSafeLogout:boolean;
begin
    correct:=true;
     with dm do
      begin
        if IsLock and (_userid<>UsersId.AsInteger) then
             Begin
               ShowMsg(57);
              exit;
             end;
        _userid:=UsersId.AsInteger;
         _userName:=UsersTitle.AsString;
        _AccessID:=UsersAccessID.AsInteger;
        _DefaultSec:=UsersDefualtSecretariatID.AsInteger;
        _UserFromOrgID:=UsersFromOrgID.AsInteger ;
        _IsSecretariatStaffer:= UsersIsSecretariantStaffer.AsBoolean ;
        _AccessToClassifieldLetter:=UsersHasSecureLetterAccess.AsBoolean;
        if not _IsSecretariatStaffer then
          begin
               ShowMsg(58);
            correct:=false;
            exit;
          end;  
         Users.Sort:='Title';
         FromOrganizations.Sort:='Title';
         
        with UserSettings do
         begin
          Parameters.ParamByName('UID').Value:=_userid;
          Open;
         end;
       with UserShortCut do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=0;
          Open;
        end;

        with UserSecs do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=_userid;
          Open;
          if RecordCount=0 then
            begin
               ShowMsg(59);
             correct:=false;
             close;
             exit;
            end;
         end;

        with UserTemplateGroup do
         begin
          close;
          Parameters.ParamByName('UserID').Value:=_userid;
          Open;
         end;

           if not GetSystemValue(29) then
           if not IsLock then
            begin
             Exec_GetUserLogout_status(_userid,logout,isSafeLogout);

               if not logout then
                begin
                 ShowMsg(85);
                 correct:=false;
                 close;
                 exit;
                end;
            end;
      end;
      _UserLoginLogoutID:=Exec_insert_UserLoginLogout(_userid,'000.000.000.000');
     close;
end;

procedure TLoginForm.PrivateLoginExecute(Sender: TObject);
begin
       if  dm.Users.Locate('id',0,[]) then
        begin
          _userid:=dm.UsersId.AsInteger;
          Alogin.Execute;
        end else exit;

end;

procedure TLoginForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key =13 then
  BtnLoginClick(BtnLogin);
 
end;

procedure TLoginForm.UserNameKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if key =13 then
SelectNext(TWinControl(sender),true,true);
end;

procedure TLoginForm.FormShow(Sender: TObject);
begin
  inherited;
  Randomize;

  if not dm.GetSystemValue(43) then
   lifeTipLabel.Hide
    else
   lifeTipLabel.Caption:=Exec_Get_LifeTip_byUserid(1+random(10));

end;

end.
