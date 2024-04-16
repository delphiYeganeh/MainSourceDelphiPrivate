{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TDBPLANNERCALENDAR & TDBPLANNERDATEPICKER components                  }
{ for Delphi & C++Builder                                               }
{ version 1.1                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2004                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{***********************************************************************}
{$I TMSDEFS.INC}

unit xcalDBPlannerCalReg;

{$IFDEF TMSDOTNET}
{$R TDBPlannerCalendar.bmp}
{$R TDBPlannerDatePicker.bmp}
{$R TPlannerDBDatePicker.bmp}
{$R TPlannerDBMaskDatePicker.bmp}
{$ENDIF}

interface

uses
  Classes, xcalDBPlannerCal, xcalDBPlannerDatePicker, xcalPlannerDBDatePicker, xcalPlannerDBMaskDatePicker;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XCalendar', [TXCalDBPlannerCalendar,
                                   TXCalDBPlannerDatePicker,
                                   TXCalPlannerDBDatePicker,
                                   TXCalPlannerDBMaskDatePicker]);
  RegisterClass(TXCalDBPlannerCalendar);
end;

end.
 