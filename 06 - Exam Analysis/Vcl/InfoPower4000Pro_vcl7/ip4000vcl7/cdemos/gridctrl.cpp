//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "gridctrl.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "wwclearbuttongroup"
#pragma link "wwDataInspector"
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "wwradiogroup"
#pragma link "wwriched"
#pragma resource "*.dfm"
TGridControlsForm *GridControlsForm;
//---------------------------------------------------------------------------
__fastcall TGridControlsForm::TGridControlsForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
