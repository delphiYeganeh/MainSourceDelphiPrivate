unit U_LOCK_ERROR_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, xpBitBtn;

type
  TLOCK_ERROR_FRM = class(TForm)
    Label1: TLabel;
    OK_BTN: TxpBitBtn;
    CHNG_IP_BTN: TxpBitBtn;
    MSG: TLabel;
    procedure FormShow(Sender: TObject);
    procedure OK_BTNClick(Sender: TObject);
    procedure CHNG_IP_BTNClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  FLG : String;
  end;

var
  LOCK_ERROR_FRM: TLOCK_ERROR_FRM;

implementation

{$R *.dfm}

procedure TLOCK_ERROR_FRM.FormShow(Sender: TObject);
begin
FLG := 'EXIT';
end;

procedure TLOCK_ERROR_FRM.OK_BTNClick(Sender: TObject);
begin
FLG := 'EXIT';
Close;
end;

procedure TLOCK_ERROR_FRM.CHNG_IP_BTNClick(Sender: TObject);
begin
FLG := 'CHANGE';
Close;
end;

end.
