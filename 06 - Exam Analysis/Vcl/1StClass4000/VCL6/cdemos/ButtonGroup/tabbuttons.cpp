//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "tabbuttons.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma resource "*.dfm"
TTabBtnGroupForm *TabBtnGroupForm;
//---------------------------------------------------------------------------
__fastcall TTabBtnGroupForm::TTabBtnGroupForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTabBtnGroupForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  PageControl1->ActivePage =
     (TTabSheet * )FindComponent("TabSheet"+IntToStr(Selected->Button->Tag));

}
//---------------------------------------------------------------------------
