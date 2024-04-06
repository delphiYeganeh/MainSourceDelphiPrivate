unit U_ENTER_IP_ADDRESS_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, xpBitBtn, StdCtrls, Mask, AdvEdit, AdvIPEdit;

type
  TENTER_IP_ADDRESS_FRM = class(TForm)
    AdvIPEdit1: TAdvIPEdit;
    Label1: TLabel;
    xpBitBtn1: TxpBitBtn;
    xpBitBtn2: TxpBitBtn;
    procedure xpBitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure xpBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  FLG : Boolean;
  end;

var
  ENTER_IP_ADDRESS_FRM: TENTER_IP_ADDRESS_FRM;

implementation

{$R *.dfm}

procedure TENTER_IP_ADDRESS_FRM.xpBitBtn1Click(Sender: TObject);
begin
FLG := True;
CLOSE;
end;

procedure TENTER_IP_ADDRESS_FRM.FormShow(Sender: TObject);
begin
FLG := FALSE;
end;

procedure TENTER_IP_ADDRESS_FRM.xpBitBtn2Click(Sender: TObject);
begin
FLG := False;
Close;
end;

end.
