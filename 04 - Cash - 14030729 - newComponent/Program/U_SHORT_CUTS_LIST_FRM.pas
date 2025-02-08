unit U_SHORT_CUTS_LIST_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TSHORT_CUTS_LIST_FRM = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SHORT_CUTS_LIST_FRM: TSHORT_CUTS_LIST_FRM;

implementation

{$R *.dfm}

procedure TSHORT_CUTS_LIST_FRM.BitBtn1Click(Sender: TObject);
begin
CLOSE;
end;

end.
