unit EmailUserPassFm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, BaseUnit, 
  ExtActns, ActnList, DB, Menus, AppEvnts;

type
  TFmEmailUserPass = class(TMBaseForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdtPassword: TMaskEdit;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    EdtUserName: TEdit;
    SavePassword: TCheckBox;
    BitBtn1: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FmEmailUserPass: TFmEmailUserPass;

implementation

uses EmailsDM , YShamsiDate, Dmu, businessLayer;

{$R *.dfm}

procedure TFmEmailUserPass.FormShow(Sender: TObject);
begin
  inherited;
  Keyboard_English;
end;

procedure TFmEmailUserPass.FormClose(Sender: TObject;var Action: TCloseAction);
begin
   Keyboard_Farsi;
   inherited;
end;

procedure TFmEmailUserPass.BitBtn1Click(Sender: TObject);
begin
  inherited;
if SavePassword.Checked then
 begin
   SetUserSetting('EmailUserName',EdtUserName.Text);
   SetUserSetting('EmailPassword',EdtPassword.Text);
 end;
end;

end.
