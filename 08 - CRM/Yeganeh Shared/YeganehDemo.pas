
unit YeganehDemo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Menus, StdCtrls, Buttons, Mask, CheckLst, ComCtrls, jpeg;

type
  TYeganeh = class(TForm)
    Image1: TImage;
    LblProssess: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
  public
    { Public declarations }
  end;

var
  Yeganeh: TYeganeh;

implementation
{$R *.DFM}

procedure TYeganeh.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:=caFree;
end;

end.