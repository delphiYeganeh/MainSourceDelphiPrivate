//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "colordemou.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcColorCombo"
#pragma link "fcCombo"
#pragma link "fcDemoRichEdit"
#pragma link "fcLabel"
#pragma resource "*.dfm"
TColorDemoForm *ColorDemoForm;
//---------------------------------------------------------------------------
__fastcall TColorDemoForm::TColorDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
String StripTrailing(String s)
{
  int len1 = s.Length();
  while ((len1 > 0) &&
         ((s[len1] == ' ') || (s[len1] == '\t'))) len1--;
  s.SetLength(len1);
  return(s);
}

//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::CheckBox6Click(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked == True){
    fcColorCombo1->AutoDropDown = True;
  } else fcColorCombo1->AutoDropDown = False;
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::fcColorCombo1Change(TObject *Sender)
{
  Shape1->Brush->Color = ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::ColorAlignmentRadioClick(TObject *Sender)
{
  switch (((TRadioGroup *)Sender)->ItemIndex) {
    case 0:fcColorCombo1->ColorAlignment = taLeftJustify; break;
    case 1:fcColorCombo1->ColorAlignment = taRightJustify;
  }
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::ButtonStyleRadioClick(TObject *Sender)
{
  switch (((TRadioGroup *)Sender)->ItemIndex) {
    case 0:fcColorCombo1->ButtonStyle = Fccombo::cbsEllipsis; break;
    case 1:fcColorCombo1->ButtonStyle = cbsDownArrow;
  }
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::ShowMatchCheckboxClick(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked == True) {
    fcColorCombo1->ShowMatchText = True;
  } else fcColorCombo1->ShowMatchText = False;
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::ShowButtonCheckboxClick(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked == True) {
    fcColorCombo1->ShowButton = True;
  } else fcColorCombo1->ShowButton = False;
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::SortByRadioClick(TObject *Sender)
{
  switch (((TRadioGroup *)Sender)->ItemIndex) {
    case 0:fcColorCombo1->ColorListOptions->SortBy = csoNone; break;
    case 1:fcColorCombo1->ColorListOptions->SortBy = csoByRGB; break;
    case 2:fcColorCombo1->ColorListOptions->SortBy = csoByName; break;
    case 3:fcColorCombo1->ColorListOptions->SortBy = csoByIntensity;
  }
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::CheckBox1Click(TObject *Sender)
{
 //with (Sender as TCheckBox),fcColorCombo1.ColorListOptions do begin
 if (((TCheckBox *)Sender)->Checked == True) {
    switch (((TCheckBox *)Sender)->Tag) {
      case 1:fcColorCombo1->ColorListOptions->Options << ccoShowCustomColors; break;
      case 2:fcColorCombo1->ColorListOptions->Options << ccoShowSystemColors; break;
      case 3:fcColorCombo1->ColorListOptions->Options << ccoShowStandardColors; break;
      case 4:fcColorCombo1->ColorListOptions->Options << ccoShowGreyScale; break;
      case 5:fcColorCombo1->ColorListOptions->Options << ccoShowColorNone;
    }
 } else {
    switch (((TCheckBox *)Sender)->Tag) {
      case 1:fcColorCombo1->ColorListOptions->Options >> ccoShowCustomColors; break;
      case 2:fcColorCombo1->ColorListOptions->Options >> ccoShowSystemColors; break;
      case 3:fcColorCombo1->ColorListOptions->Options >> ccoShowStandardColors; break;
      case 4:fcColorCombo1->ColorListOptions->Options >> ccoShowGreyScale; break;
      case 5:fcColorCombo1->ColorListOptions->Options >> ccoShowColorNone;
    }
 }
   fcColorCombo1->ListBox->AllColors->Clear();
   fcColorCombo1->RefreshList();
   fcColorCombo1->ItemIndex = -1;
   fcColorCombo1->Text = "";
}
//---------------------------------------------------------------------------
void __fastcall TColorDemoForm::ColorWidthEditExit(TObject *Sender)
{
  if (StrToIntDef(((TEdit *)Sender)->Text,UpDown3->Max+1) > UpDown3->Max)
     ((TEdit *)Sender)->Text = IntToStr(UpDown3->Max);

  fcColorCombo1->ColorListOptions->ColorWidth = StrToInt(StripTrailing(ColorWidthEdit->Text));
  fcColorCombo1->ListBox->ColorWidth = fcColorCombo1->ColorListOptions->ColorWidth;
  fcColorCombo1->Invalidate();
}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::ItemHeightEditExit(TObject *Sender)
{
  if (StrToIntDef(((TEdit *)Sender)->Text,UpDown4->Max+1) > UpDown4->Max)
     ((TEdit *)Sender)->Text = IntToStr(UpDown4->Max);

   fcColorCombo1->ColorListOptions->ItemHeight = StrToInt(StripTrailing(ItemHeightEdit->Text));
   fcColorCombo1->ListBox->ItemHeight = fcColorCombo1->ColorListOptions->ItemHeight;
   fcColorCombo1->Invalidate();
}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::UpDown3Click(TObject *Sender,
      TUDBtnType Button)
{
 ColorWidthEditExit(ColorWidthEdit);
}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::UpDown4Click(TObject *Sender,
      TUDBtnType Button)
{
   ItemHeightEditExit(ItemHeightEdit);
}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::DropDownCountEditExit(TObject *Sender)
{
  if (StrToIntDef(((TEdit *)Sender)->Text,UpDown2->Max+1) > UpDown2->Max)
     ((TEdit *)Sender)->Text = IntToStr(UpDown2->Max);
}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::DropDownWidthEditExit(TObject *Sender)
{
  if (StrToIntDef(((TEdit *)Sender)->Text,UpDown1->Max+1) > UpDown1->Max)
     ((TEdit *)Sender)->Text = IntToStr(UpDown1->Max);

}
//---------------------------------------------------------------------------

void __fastcall TColorDemoForm::fcColorCombo1DropDown(TObject *Sender)
{
   ((TfcColorCombo *)Sender)->DropDownCount = StrToInt(StripTrailing(DropDownCountEdit->Text));
   ((TfcColorCombo *)Sender)->DropDownWidth = StrToInt(StripTrailing(DropDownWidthEdit->Text));
   ((TfcColorCombo *)Sender)->ColorListOptions->ColorWidth = StrToInt(StripTrailing(ColorWidthEdit->Text));
   ((TfcColorCombo *)Sender)->ColorListOptions->ItemHeight = StrToInt(StripTrailing(ItemHeightEdit->Text));
   ((TfcColorCombo *)Sender)->ListBox->ItemHeight = ((TfcColorCombo *)Sender)->ColorListOptions->ItemHeight;
   ((TfcColorCombo *)Sender)->ListBox->ColorWidth = ((TfcColorCombo *)Sender)->ColorListOptions->ColorWidth;
}
//---------------------------------------------------------------------------

