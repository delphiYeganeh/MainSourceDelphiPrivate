unit UPrinterSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,
   xpBitBtn, Menus;

type
  TfrPrinterSetting = class(TMBaseForm)
    PaperSize: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel1: TPanel;
    Label2: TLabel;
    StartPage: TEdit;
    EndPage: TEdit;
    Label3: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    CBPrinters: TComboBox;
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
