unit U_CALENDAR_FRM;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, SolarCalendarPackage, StdCtrls, Buttons;

type
  TCALENDAR_FRM = class(TForm)
    BitBtn1: TBitBtn;
    SolarDatePicker2: TSolarDatePicker;
    SolarDatePicker1: TSolarDatePicker;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CALENDAR_FRM: TCALENDAR_FRM;

implementation

{$R *.dfm}

end.
