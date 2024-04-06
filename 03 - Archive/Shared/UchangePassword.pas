unit UchangePassword;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, DB, ToolWin, ActnMan, ActnCtrls, DBActns, ActnList,
  ImgList, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons, ADODB, Grids,
  DBGrids,  UemsVCL, ActnMenus, jpeg, ComCtrls, ExtActns, XPStyleActnCtrls,
  xpWindow, xpBitBtn;

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
    OldPass: TEdit;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Action11Execute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
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

   //Edit By Sanaye 941001
   //«·“«„ ò«—»— »Â 8 ò«—ò — œ— ’Ê—  œ«‘ ‰ „ÃÊ“ «·“«„ ”Œ Ì —„“ ⁄»Ê—
   if (dm.UsersChangeByAdmin.AsBoolean = True) then
   begin
      if (Length(trim(Pass.Text))<8) then
      begin
        ShowMsg(90);
        exit;
      end;
      if not(dm.PasswordPolicy(Pass.Text)) then
      begin
        ShowMsg(91);
        exit;
      end;
   end;
   //end Sanaye
  
   if (Pass.Text<>ConfirmPass.Text) then
      begin
        ShowMsg(72);
        exit;
      end;
   if (Pass.Text<>ConfirmPass.Text) then
      begin
        ShowMsg(80);
        exit;
      end;

   if Locked(dm.YeganehConnection.Execute('Select Password from users where id='+IntToStr(_Userid)).Fields[0].Value,False)=oldPass.Text then
   begin
       Exec_UserChange_pass(_userid,Locked(Pass.Text,True));
       dm.ChangePassword:=True;
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

end.
