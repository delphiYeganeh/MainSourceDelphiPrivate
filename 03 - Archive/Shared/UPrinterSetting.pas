unit UPrinterSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseUnit, StdCtrls, Buttons, ExtCtrls, ExtActns, ActnList, DB,
  xpWindow, xpBitBtn;

type
  TfrPrinterSetting = class(TMBaseForm)
    Panel3: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Label1: TLabel;
    CBPrinters: TComboBox;
    PaperSize: TRadioGroup;
    Label2: TLabel;
    StartPage: TEdit;
    Label3: TLabel;
    EndPage: TEdit;
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
