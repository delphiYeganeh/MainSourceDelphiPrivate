unit DongleU;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, TINYLib_TLB;

type
  TfrDongle = class(TForm)
    Tiny: TTiny;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frDongle: TfrDongle;

implementation

{$R *.dfm}

end.
