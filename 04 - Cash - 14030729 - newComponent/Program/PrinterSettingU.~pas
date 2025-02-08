unit PrinterSettingU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,
  Menus, ADODB, AdvGlowButton;

type
  TfrPrinterSetting = class(TYBaseForm)
    Panel1: TPanel;
    BitBtn1: TAdvGlowButton;
    BitBtn2: TAdvGlowButton;
    Panel2: TPanel;
    Label1: TLabel;
    PaperSize: TRadioGroup;
    CBPrinters: TComboBox;
    pnlMain: TPanel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    done: boolean;
  end;

var
  frPrinterSetting: TfrPrinterSetting;

implementation

uses
  Dmu ;

{$R *.dfm}

procedure TfrPrinterSetting.BitBtn1Click(Sender: TObject);
begin
  inherited;
done:=true;
close;
end;

procedure TfrPrinterSetting.BitBtn2Click(Sender: TObject);
begin
  inherited;
done:=false;
close;
end;

end.
