unit U_FITCHER_SETTING_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,BusinessLayer, StdCtrls, Buttons;

type
  TFITCHER_SETTING_FRM = class(TForm)
    Label1: TLabel;
    ADV_SEARCH_SANAD: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    ADV_SEARCH_VAM_AZA: TComboBox;
    Label3: TLabel;
    ADV_SEARCH_DAILY_AVG: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FITCHER_SETTING_FRM: TFITCHER_SETTING_FRM;

implementation

{$R *.dfm}

procedure TFITCHER_SETTING_FRM.FormShow(Sender: TObject);
begin
  ADV_SEARCH_SANAD.Text     := GetSystemSetting('ADV_SEARCH_SANAD');
  ADV_SEARCH_VAM_AZA.Text   := GetSystemSetting('ADV_SEARCH_VAM_AZA');
  ADV_SEARCH_DAILY_AVG.Text := GetSystemSetting('ADV_SEARCH_DAILY_AVG');
end;

procedure TFITCHER_SETTING_FRM.BitBtn1Click(Sender: TObject);
Begin
  SetSystemSetting('ADV_SEARCH_SANAD'    ,ADV_SEARCH_SANAD.Text  );
  SetSystemSetting('ADV_SEARCH_VAM_AZA'  ,ADV_SEARCH_VAM_AZA.Text);
  SetSystemSetting('ADV_SEARCH_DAILY_AVG',ADV_SEARCH_DAILY_AVG.Text);
  Close;
end;

procedure TFITCHER_SETTING_FRM.BitBtn2Click(Sender: TObject);
begin
  CLOSE;
end;

end.
