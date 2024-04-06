//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "infounit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcDemoRichEdit"
#pragma resource "*.dfm"
TInfoForm *InfoForm;
//---------------------------------------------------------------------------
__fastcall TInfoForm::TInfoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
