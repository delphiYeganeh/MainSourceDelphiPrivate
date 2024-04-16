{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TPLANNERCALENDAR component                                            }
{ for Delphi & C++Builder                                               }
{ version 1.3                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2004                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{***********************************************************************}
unit xcalPlannerCalReg;

interface
{$I TMSDEFS.INC}

uses
  xcalPlannerCal, xcalPlannerDatePicker, xcalPlannerMaskDatePicker, Classes;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('XCalendar', [TXCalPlannerCalendar,
                                   TXCalPlannerDatePicker,
                                   TXCalPlannerMaskDatePicker]);
end;



end.


