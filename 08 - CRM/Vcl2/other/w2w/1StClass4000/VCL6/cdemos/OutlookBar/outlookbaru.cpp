//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "outlookbaru.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcDemoRichEdit"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcOutlookBar"
#pragma link "fcOutlookList"
#pragma link "fcShapeBtn"
#pragma link "fcCombo"
#pragma link "fcImager"
#pragma link "fctreecombo"
#pragma resource "*.dfm"
TOutlookBarForm *OutlookBarForm;
//---------------------------------------------------------------------------
__fastcall TOutlookBarForm::TOutlookBarForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TOutlookBarForm::CheckBox5Click(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked)
     fcOutlookBar2->Imager= fcImager1;
  else
     fcOutlookBar2->Imager=NULL;
}
//---------------------------------------------------------------------------

