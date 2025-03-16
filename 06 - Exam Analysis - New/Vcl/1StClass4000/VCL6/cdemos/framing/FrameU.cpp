//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "frameu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcCombo"
#pragma link "fcDemoRichEdit"
#pragma link "fcImage"
#pragma link "fcImageForm"
#pragma link "fcImager"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcShapeBtn"
#pragma link "fctreecombo"
#pragma resource "*.dfm"
TFrameDemoForm *FrameDemoForm;
//---------------------------------------------------------------------------
__fastcall TFrameDemoForm::TFrameDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TFrameDemoForm::BitBtn1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------

void __fastcall TFrameDemoForm::BackgroundComboChange(TObject *Sender)
{
 if (!dynamic_cast<TfcTreeCombo *>(Sender)) return;

 if (((TfcTreeCombo *)Sender)->Text=="Plain")
 {
  TileImager->Visible = False;
  return;
 }

 TfcImager * Tile;
 Tile = NULL;

 if (((TfcTreeCombo *)Sender)->Text=="Wrinkle")
    Tile = WrinkleImager;
 else if (((TfcTreeCombo *)Sender)->Text=="Linen")
    Tile = LinenImager;
 else if (((TfcTreeCombo *)Sender)->Text=="Parchment")
    Tile = ParchmentImager;
 else if (((TfcTreeCombo *)Sender)->Text=="Mosaic")
    Tile = MosaicImager;

  if (Tile != NULL) {
     Tile->UpdateWorkBitmap();
     TileImager->Picture->Assign(Tile->WorkBitmap);
  }
  TileImager->Visible = True;
}
//---------------------------------------------------------------------------
void __fastcall TFrameDemoForm::FormShow(TObject *Sender)
{
  ParchmentImager->UpdateWorkBitmap();
  TileImager->Picture->Assign(ParchmentImager->WorkBitmap);
}
//---------------------------------------------------------------------------
void __fastcall TFrameDemoForm::FrameComboChange(TObject *Sender)
{
  for (int i = 0;i <= ControlCount-1;i++)
  {
    if (!dynamic_cast<TfcTreeCombo *>(Controls[i])) continue;
    TfcTreeCombo * TreeCombo = ((TfcTreeCombo *)Controls[i]);
    TreeCombo->Frame->FocusStyle = efsFrameBox;
    TreeCombo->Frame->NonFocusStyle = efsFrameBox;
    TreeCombo->Frame->NonFocusBorders = TreeCombo->Frame->NonFocusBorders << efLeftBorder << efTopBorder << efRightBorder << efBottomBorder;
    TreeCombo->ButtonEffects->Flat = False;
    TreeCombo->ButtonEffects->Transparent = False;
    TreeCombo->Frame->Enabled = True;
    if (((TfcTreeCombo *)Sender)->Text == "Underline") {
       TreeCombo->Frame->NonFocusBorders.Clear();
       TreeCombo->Frame->NonFocusBorders = TreeCombo->Frame->NonFocusBorders << efBottomBorder;
    }
    else if (((TfcTreeCombo *)Sender)->Text == "FrameBox") {}
    else if (((TfcTreeCombo *)Sender)->Text == "Flat Buttons") {
          TreeCombo->Frame->NonFocusStyle = efsFrameSingle;
          TreeCombo->ButtonEffects->Flat = True;
          TreeCombo->ButtonEffects->Transparent = True;
    }
    else if (((TfcTreeCombo *)Sender)->Text == "No Frame (Normal)") {
          TreeCombo->Frame->Enabled = False;
          TreeCombo->BorderStyle = bsSingle;
    }
    else if (((TfcTreeCombo *)Sender)->Text == "No Frame (Normal)")
          TreeCombo->Frame->FocusStyle = efsFrameSunken;
    else if (((TfcTreeCombo *)Sender)->Text == "Raised Panel Focus")
          TreeCombo->Frame->FocusStyle = efsFrameRaised;
    else if (((TfcTreeCombo *)Sender)->Text == "Etched") {
          TreeCombo->Frame->NonFocusStyle = efsFrameEtched;
          TreeCombo->Frame->FocusStyle = efsFrameEtched;
    }
    else if (((TfcTreeCombo *)Sender)->Text == "Bump") {
          TreeCombo->Frame->NonFocusStyle = efsFrameBump;
          TreeCombo->Frame->FocusStyle = efsFrameBump;
    }
  }
}
//---------------------------------------------------------------------------
