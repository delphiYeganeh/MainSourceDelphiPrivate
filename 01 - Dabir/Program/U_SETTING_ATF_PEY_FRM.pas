unit U_SETTING_ATF_PEY_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB,BusinessLayer;

type
  TSETTING_ATF_PEY_FRM = class(TForm)
    CheckBox1: TCheckBox;
    OK_BTN: TBitBtn;
    CANCEL_BTN: TBitBtn;
    procedure CANCEL_BTNClick(Sender: TObject);
    procedure OK_BTNClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SETTING_ATF_PEY_FRM: TSETTING_ATF_PEY_FRM;

implementation

uses Dmu;

{$R *.dfm}

procedure TSETTING_ATF_PEY_FRM.CANCEL_BTNClick(Sender: TObject);
begin
CLOSE;
end;

procedure TSETTING_ATF_PEY_FRM.OK_BTNClick(Sender: TObject);
begin
if CheckBox1.Checked  then
SetSystemSetting('ATF-PEY'    , '1')
ELSE
SetSystemSetting('ATF-PEY'    , '0');
CLOSE;
end;

procedure TSETTING_ATF_PEY_FRM.CheckBox1Click(Sender: TObject);
begin
OK_BTN.Enabled := True;
end;

procedure TSETTING_ATF_PEY_FRM.FormShow(Sender: TObject);
begin

OK_BTN.Enabled := False;

if GetSystemSetting('ATF-PEY') = '1' then
   CheckBox1.Checked := True
   ELSE
   CheckBox1.Checked := False;
   
end;

end.
