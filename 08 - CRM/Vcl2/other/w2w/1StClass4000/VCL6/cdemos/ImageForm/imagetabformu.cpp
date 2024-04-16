//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "imagetabformu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcImage"
#pragma link "fcImageForm"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TImageTabForm *ImageTabForm;
//---------------------------------------------------------------------------
__fastcall TImageTabForm::TImageTabForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TImageTabForm::fcShapeBtn1Click(TObject *Sender)
{
  Close();        
}
//---------------------------------------------------------------------------
void __fastcall TImageTabForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  PageControl1->ActivePage =
    (TTabSheet *)(FindComponent("TabSheet"+IntToStr(Selected->Button->Tag)));

}
//---------------------------------------------------------------------------
