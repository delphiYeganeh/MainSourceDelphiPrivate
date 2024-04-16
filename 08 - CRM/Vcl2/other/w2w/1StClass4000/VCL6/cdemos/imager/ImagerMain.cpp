//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "ImagerMain.h"
#include "PicEdt.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcColorCombo"
#pragma link "fcCombo"
#pragma link "fcDemoRichEdit"
#pragma link "fcImager"
#pragma link "fcImgBtn"
#pragma link "fcOutlookBar"
#pragma link "fcShapeBtn"
#pragma link "fcStatusBar"
#pragma resource "*.dfm"
TImagerForm *ImagerForm;
//---------------------------------------------------------------------------
__fastcall TImagerForm::TImagerForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TImagerForm::FormCreate(TObject *Sender)
{
  FDefaultsStream = new TMemoryStream;
}
//---------------------------------------------------------------------------
void __fastcall TImagerForm::FormDestroy(TObject *Sender)
{
  FDefaultsStream->Free();
}
//---------------------------------------------------------------------------
void __fastcall TImagerForm::FormShow(TObject *Sender)
{
  combo_DrawStyle->ItemIndex = 0;
  fcImager1->BitmapOptions->BeginUpdate();
  for (int i = 0; i < CheckListBox1->Items->Count; i++)
    CheckListBox1->Checked[i] = (bool)(fcGetOrdProp(i < 5 ? (TPersistent *)fcImager1->BitmapOptions : (TPersistent *)fcImager1,
      fcReplace(CheckListBox1->Items->Strings[i], " ", "")));
  fcImager1->BitmapOptions->EndUpdate();
  fcImager1->Invalidate();

  if (FDefaultsStream->Size == 0) for (int i = 0; i < ComponentCount; i++)
    if (!dynamic_cast<TfcCustomButtonGroup *>(Components[i]) &&
        !dynamic_cast<TfcCustomColorCombo *>(Components[i]) &&
        !dynamic_cast<TRichEdit *>(Components[i]))
      FDefaultsStream->WriteComponent(Components[i]);
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::fcImager1Click(TObject *Sender)
{
  TfcPicEditor::ExecutePictureEditor(fcImager1->Picture->Graphic, fcImager1->Picture);
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::Track_LightnessChange(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions, fcGetToken(((TTrackBar *)(Sender))->Name, '_', 1), ((TTrackBar *)(Sender))->Position);
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::combo_DrawStyleChange(TObject *Sender)
{
  fcImager1->DrawStyle = TfcImagerDrawStyle(((TComboBox *)(Sender))->ItemIndex);
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::combo_ColorChange(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions, fcGetToken(((TComponent *)(Sender))->Name, '_', 1), ((TfcColorCombo *)(Sender))->SelectedColor);
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::SpeedButton1Click(TObject *Sender)
{
  FDefaultsStream->Position = 0;
  for (int i = 0; i < ComponentCount; i++)
    if (!dynamic_cast<TfcCustomButtonGroup *>(Components[i]) &&
        !dynamic_cast<TfcCustomColorCombo *>(Components[i]) &&
        !dynamic_cast<TRichEdit *>(Components[i]))
      FDefaultsStream->ReadComponent(Components[i]);
  combo_Color->SelectedColor = clNone;
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::CheckListBox1Click(TObject *Sender)
{
  fcImager1->BitmapOptions->BeginUpdate();
  for (int i = 0; i < ((TCheckListBox *)(Sender))->Items->Count; i++)
    fcSetOrdProp(i < 5 ? (TPersistent *)fcImager1->BitmapOptions : (TPersistent *)fcImager1,
      fcReplace(((TCheckListBox *)(Sender))->Items->Strings[i], " ", ""),
      int(((TCheckListBox *)(Sender))->Checked[i]));
  fcImager1->BitmapOptions->EndUpdate();
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::edit_Rotation_AngleChange(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions->Rotation, fcGetToken(((TEdit *)(Sender))->Name, '_', 2), StrToIntDef(((TEdit *)(Sender))->Text, 0));
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::edit_Rotation_XChange(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions->Rotation, "Center" + fcGetToken(((TEdit *)(Sender))->Name, '_', 2), StrToIntDef(((TEdit *)(Sender))->Text, 0));
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::SpeedButton2Click(TObject *Sender)
{
  Graphics::TBitmap* ABitmap = new Graphics::TBitmap;
  fcImager1->BitmapOptions->AlphaBlend->Bitmap->Transparent = false;
  if (TfcPicEditor::ExecutePictureEditor(fcImager1->BitmapOptions->AlphaBlend->Bitmap, ABitmap))
    fcImager1->BitmapOptions->AlphaBlend->Bitmap->Assign(ABitmap);
  fcImager1->BitmapOptions->AlphaBlend->Bitmap->Transparent = fcImager1->BitmapOptions->AlphaBlend->Transparent;
  ABitmap->Free();
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::edit_AlphaBlend_AmountChange(TObject *Sender)
{
  fcImager1->BitmapOptions->AlphaBlend->Bitmap->Transparent = checkbox_AlphaBlend_Transparent->Checked;
  fcSetOrdProp(fcImager1->BitmapOptions->AlphaBlend, fcGetToken(((TEdit *)(Sender))->Name, '_', 2), StrToIntDef(((TEdit *)(Sender))->Text, 0));
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::checkbox_AlphaBlend_TransparentClick(
      TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions->AlphaBlend,
       fcGetToken(((TCheckBox *)(Sender))->Name, '_', 2), int(((TCheckBox *)(Sender))->Checked));
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::edit_Wave_XDivChange(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions->Wave, fcGetToken(((TEdit *)(Sender))->Name, '_', 2), StrToIntDef(((TEdit *)(Sender))->Text, 0));
}
//---------------------------------------------------------------------------

void __fastcall TImagerForm::checkbox_Wave_WrapClick(TObject *Sender)
{
  fcSetOrdProp(fcImager1->BitmapOptions->Wave, fcGetToken(((TCheckBox *)(Sender))->Name, '_', 2), int(((TCheckBox *)(Sender))->Checked));
}
//---------------------------------------------------------------------------

