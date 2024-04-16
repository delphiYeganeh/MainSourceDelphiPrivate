//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "proportionalu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcDemoRichEdit"
#pragma link "fcStatusBar"
#pragma resource "*.dfm"
TProportionalStatusBarForm *ProportionalStatusBarForm;
//---------------------------------------------------------------------------
__fastcall TProportionalStatusBarForm::TProportionalStatusBarForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
