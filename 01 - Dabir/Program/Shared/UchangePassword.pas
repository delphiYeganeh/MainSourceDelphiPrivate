unit UchangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
   Menus;

type
  TFchangePassword = class(TMBaseForm)
    Panel1: TPanel;
    ActionManager: TActionManager;
    Action11: TAction;
    Action1: TAction;
    Label4: TLabel;
    Pass: TEdit;
    Label10: TLabel;
    ConfirmPass: TEdit;
    Label9: TLabel;
    Access2: TADOTable;
    WordField7: TWordField;
    WideStringField5: TWideStringField;
    DAccess2: TDataSource;
    BitBtn2: TBitBtn;
    OldPass: TEdit;
    BitBtn1: TBitBtn;
    CheckBox1: TCheckBox;
    procedure Action11Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private

    { Private declarations }
  public
   { Public declarations }
  end;

var
  FchangePassword: TFchangePassword;

implementation

uses  yShamsiDate, Settingsu, Dmu , businessLayer;

{$R *.dfm}

procedure TFchangePassword.Action11Execute(Sender: TObject);
begin
  inherited;
close;

end;

procedure TFchangePassword.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if (Pass.Text<>ConfirmPass.Text) and (not CheckBox1.Checked) then
      begin
       ShowMsg(72);
       exit;
      end;


  if Locked(dm.YeganehConnection.Execute('Select Password from users where id='+IntToStr(_Userid)).Fields[0].Value,False)=oldPass.Text then
   begin
       Exec_UserChange_pass(_userid,Locked(Pass.Text,True));
       ShowMsg(79);
       FchangePassword.Close;
     end

   else
    ShowMsg(78);


end;

procedure TFchangePassword.BitBtn2Click(Sender: TObject);
begin
  inherited;
 Close;
end;

procedure TFchangePassword.CheckBox1Click(Sender: TObject);
begin
  inherited;
   if CheckBox1.Checked then
   begin
      Pass.PasswordChar := #0;
      Label10.Visible := false;
      ConfirmPass.Visible := false;
   end
   else
   begin                           
      Pass.PasswordChar := '*';
      Label10.Visible := true;
      ConfirmPass.Visible := true;
   end;
end;

end.
