unit UBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,xpPanel,
  Dialogs, ExtCtrls;

type
  TFBase = class(TForm)
    pnlMain: TPanel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FBase: TFBase;

implementation

{$R *.dfm}

procedure TFBase.FormShow(Sender: TObject);
var i: integer;
begin

   for i:=0 to ComponentCount-1 do
   begin
    if Components[i].InheritsFrom(TxpPanel) then
    begin
      TxpPanel(Components[i]).TitleFont.Name := 'Tahoma' ;
    end ;
   end; 
end;

end.
