//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "TilerUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcImager"
#pragma link "fcLabel"
#pragma link "fcOutlookList"
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcImgBtn"
#pragma link "fcOutlookBar"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TTilerDemoForm *TilerDemoForm;
//---------------------------------------------------------------------------
__fastcall TTilerDemoForm::TTilerDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTilerDemoForm::fcControlBar1OutlookList1ItemChange(
      TfcCustomOutlookList *OutlookList, TfcOutlookListItem *Item)
{
  if (OutlookList->Selected == NULL) return;

  Graphics::TBitmap* ABitmap = new Graphics::TBitmap;
  ImageList1->GetBitmap(OutlookList->Selected->Index, ABitmap);
  fcImager1->Picture->Assign(ABitmap);
  ABitmap->Free();
}
//---------------------------------------------------------------------------
