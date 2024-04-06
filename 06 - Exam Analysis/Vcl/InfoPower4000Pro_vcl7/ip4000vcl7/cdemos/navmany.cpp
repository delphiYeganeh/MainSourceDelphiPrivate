//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "navmany.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Wwdatsrc"
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "wwDBNavigator"
#pragma link "wwriched"
#pragma link "wwSpeedButton"
#pragma link "Wwtable"
#pragma link "wwclearpanel"
#pragma resource "*.dfm"
TNavigatorForm1 *NavigatorForm1;
//---------------------------------------------------------------------------
__fastcall TNavigatorForm1::TNavigatorForm1(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
