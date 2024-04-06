unit U_ENTER_ADMIN_PASS_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TENTER_ADMIN_PASS_FRM = class(TForm)
    Label1: TLabel;
    PASSWORD: TEdit;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PASSWORDKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  FLAG : Boolean;
  end;

var
  ENTER_ADMIN_PASS_FRM: TENTER_ADMIN_PASS_FRM;

implementation

{$R *.dfm}

procedure TENTER_ADMIN_PASS_FRM.BitBtn1Click(Sender: TObject);
begin

if (PASSWORD.Text = 'Yeganeh123456789')OR(PASSWORD.Text = '25782650') then
   BEGIN
   FLAG := True;
   Close;
   End
   ELSE
   BEGIN
   ShowMessage('—„“ ⁄»Ê— «‘ »«Â „Ì »«‘œ');
   PASSWORD.Text := '';
   ActiveControl := PASSWORD;
   END;

end;

procedure TENTER_ADMIN_PASS_FRM.FormShow(Sender: TObject);
begin
FLAG := False;
ActiveControl := PASSWORD;
end;

procedure TENTER_ADMIN_PASS_FRM.PASSWORDKeyPress(Sender: TObject;
  var Key: Char);
begin
if Ord(Key) = 13 then
   BitBtn1.Click;
end;

end.
