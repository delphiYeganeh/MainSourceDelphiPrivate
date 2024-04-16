//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "mnthyear.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "wwmonthcalendar"
#pragma resource "*.dfm"
TYearCalendar *YearCalendar;
//---------------------------------------------------------------------------
__fastcall TYearCalendar::TYearCalendar(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
