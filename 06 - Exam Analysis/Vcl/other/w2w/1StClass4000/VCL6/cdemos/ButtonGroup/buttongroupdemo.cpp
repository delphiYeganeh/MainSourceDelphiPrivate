//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "buttongroupdemo.h"
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
#pragma link "fcLabel"
#pragma link "fcShapeBtn"
#pragma link "fcTreeCombo"
#pragma link "fctreecombo"
#pragma resource "*.dfm"
TButtonGroupDemoForm *ButtonGroupDemoForm;
//---------------------------------------------------------------------------
__fastcall TButtonGroupDemoForm::TButtonGroupDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TButtonGroupDemoForm::SlantOval1MouseEnter(TObject *Sender)
{
  if (!((TfcImageBtn *)Sender)->Down)
     ((TfcImageBtn *)Sender)->Color = HotTrackColorCombo->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::SlantOval1MouseLeave(TObject *Sender)
{
  if (!((TfcImageBtn *)Sender)->Down)
     ((TfcImageBtn *)Sender)->Color = UpColorCombo->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::HotTrackBtnGroupChange(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  //Restore Old Selected Color
  if ((OldSelected != NULL) && (OldSelected->Button != NULL))
     OldSelected->Button->Color = UpColorCombo->SelectedColor;

  //Set New Down Color
  if (DownColorCombo->SelectedColor != clNullColor)
     Selected->Button->Color = DownColorCombo->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::DownColorComboChange(TObject *Sender)
{
  if (HotTrackBtnGroup->Selected != NULL)
     HotTrackBtnGroup->Selected->Button->Color =
        ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::FontColorComboChange(TObject *Sender)
{
  for (int i= 0;i<=HotTrackBtnGroup->ButtonItems->Count-1;i++)
     HotTrackBtnGroup->ButtonItems->Items[i]->Button->Font->Color =
        ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::ShapeComboChange(TObject *Sender)
{
  for (int i= 0;i<=ShapeBtnGroup1->ButtonItems->Count-1;i++)
    switch (((TfcTreeCombo *)Sender)->TreeView->Selected->Index) {
     case 0:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsArrow; break;
     case 1:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsDiamond; break;
     case 2:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsEllipse; break;
     case 3:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsRect; break;
     case 4:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsRoundRect; break;
     case 5:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsStar; break;
     case 6:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Shape = bsTriangle;
    }
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::OrientationComboChange(TObject *Sender)
{
  if (((TfcTreeCombo *)Sender)->TreeView->Selected==NULL) return;

  for (int i= 0;i<=ShapeBtnGroup1->ButtonItems->Count-1;i++)
    switch (((TfcTreeCombo *)Sender)->TreeView->Selected->Index) {
      case 0:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Orientation = soRight; break;
      case 1:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Orientation = soUp; break;
      case 2:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Orientation = soLeft; break;
      case 3:((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Orientation = soDown;
    }
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::RadioGroup1Click(TObject *Sender)
{
  for (int i=0;i<=ShapeBtnGroup1->ButtonItems->Count-1;i++)
      ((TfcShapeBtn *)(ShapeBtnGroup1->ButtonItems->Items[i]->Button))->Down = False;

  switch (((TRadioGroup *)Sender)->ItemIndex) {
  case 0: ShapeBtnGroup1->ClickStyle = bcsRadioGroup;
          ShapeBtnGroup1->AutoBold = true;
          break;
  case 1: ShapeBtnGroup1->ClickStyle = bcsCheckList;
          ShapeBtnGroup1->AutoBold = false;
          break;
  default: ShapeBtnGroup1->ClickStyle = bcsClick;
           ShapeBtnGroup1->AutoBold = false;
  }
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::CheckBox1Click(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked) {
     OvalImageBtnGroup->Transparent = True;
     CheckBoxEditBtnGroup->Transparent = True;
  }
  else {
     OvalImageBtnGroup->Transparent = False;
     CheckBoxEditBtnGroup->Transparent = False;
  }
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::CheckBox2Click(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked) {
      VerticalShapeBtnGroup2->AutoBold = True;
  }
  else VerticalShapeBtnGroup2->AutoBold = False;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::RadioGroup2Click(TObject *Sender)
{
  for (int i=0;i<=VerticalShapeBtnGroup2->ButtonItems->Count-1;i++)
      ((TfcShapeBtn *)(VerticalShapeBtnGroup2->ButtonItems->Items[i]->Button))->Down = False;

  switch (((TRadioGroup *)Sender)->ItemIndex) {
  case 0: VerticalShapeBtnGroup2->ClickStyle = bcsRadioGroup;
          CheckBox2->Checked = True;
          CheckBox2->Enabled = True;
          break;
  case 1: VerticalShapeBtnGroup2->ClickStyle = bcsCheckList;
          CheckBox2->Checked = False;
          CheckBox2->Enabled = False;
          break;
  default:
     CheckBox2->Checked = False;
     CheckBox2->Enabled = False;
     VerticalShapeBtnGroup2->ClickStyle = bcsClick;
  }
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::UpColorComboChange(TObject *Sender)
{
  for (int i= 0;i<=HotTrackBtnGroup->ButtonItems->Count-1;i++)
     if (!HotTrackBtnGroup->ButtonItems->Items[i]->Selected)
        ((TfcImageBtn*)(HotTrackBtnGroup->ButtonItems->Items[i]->Button))->Color =
          ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::HorizontalImageBtnGroupChange(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  if ((OldSelected != NULL) && (OldSelected != NULL))
     OldSelected->Button->Font->Color = clWhite;
  Selected->Button->Font->Color = clBlack;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::OvalSlantBtnGroup2Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  if ((OldSelected != NULL) && (OldSelected != NULL))
     OldSelected->Button->Color = clNone;
  Selected->Button->Color = clYellow;
}
//---------------------------------------------------------------------------

void __fastcall TButtonGroupDemoForm::FormShow(TObject *Sender)
{
   ShapeCombo->Text = "RoundRect";
   OrientationCombo->Text = "Right";

   if ((GetDeviceCaps(Canvas->Handle, BITSPIXEL) *
        GetDeviceCaps(Canvas->Handle, PLANES)) <= 8) {
     fcImager1->Visible = False;
     fcImager2->Visible = False;
   }

   PageControl1->ActivePage = TabSheet1;
}
//---------------------------------------------------------------------------

