unit U_COMPANY_NAME_SETTING_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons ,BusinessLayer;

type
  TCOMPANY_NAME_SETTING_FRM = class(TForm)
    Label1: TLabel;
    COMPANY_NAME: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  COMPANY_NAME_SETTING_FRM: TCOMPANY_NAME_SETTING_FRM;

implementation

{$R *.dfm}

procedure TCOMPANY_NAME_SETTING_FRM.FormShow(Sender: TObject);
begin
COMPANY_NAME.Text := GetSystemSetting('OrgName');
end;

procedure TCOMPANY_NAME_SETTING_FRM.BitBtn1Click(Sender: TObject);
begin

TRY
SetSystemSetting('OrgName'    , COMPANY_NAME.Text);
ShowMessage('������� �� ������ ����� ��');
Close;
EXCEPT
ShowMessage('��� �� ����� �������');
END;

end;

procedure TCOMPANY_NAME_SETTING_FRM.BitBtn2Click(Sender: TObject);
begin
Close;
end;

end.
