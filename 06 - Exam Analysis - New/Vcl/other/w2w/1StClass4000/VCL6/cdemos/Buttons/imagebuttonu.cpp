//---------------------------------------------------------------------------
#include <vcl.h>
#include <stdio.h>
#pragma hdrstop

#include "imagebuttonu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcColorCombo"
#pragma link "fcCombo"
#pragma link "fcDemoRichEdit"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcTreeCombo"
#pragma resource "*.dfm"
TImageBtnDemoForm *ImageBtnDemoForm;
//---------------------------------------------------------------------------
__fastcall TImageBtnDemoForm::TImageBtnDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::LightSwitch1Click(TObject *Sender)
{
 led4->Down = ((TfcImageBtn *)Sender)->Down;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::TackButtonClick(TObject *Sender)
{
  Char Temp[20];

  if (((TfcImageBtn *)Sender)->Down == True){
     sprintf(Temp,"Tack\r\n(In)");
  } else sprintf(Temp,"Tack\r\n(Out)");

  tacklabel2->Caption = Temp;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::NorthAmericaClick(TObject *Sender)
{
 CountryLabel->Caption = ((TfcImageBtn *)Sender)->Caption;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::FormShow(TObject *Sender)
{
  fcImageCombo1->Text = "DitherBlend";
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::fcColorCombo1Change(TObject *Sender)
{
   puz1->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
   puz2->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
   puz3->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
   puz4->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
   puz5->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::fcImageCombo1Change(TObject *Sender)
{
   if (fcImageCombo1->TreeView->Selected==NULL) return;

   switch (fcImageCombo1->TreeView->Selected->Index) {
   case 0: puz1->DitherStyle = dsFill;
           puz2->DitherStyle = dsFill;
           puz3->DitherStyle = dsFill;
           puz4->DitherStyle = dsFill;
           puz5->DitherStyle = dsFill;
           break;
   case 1: puz1->DitherStyle = dsDither;
           puz2->DitherStyle = dsDither;
           puz3->DitherStyle = dsDither;
           puz4->DitherStyle = dsDither;
           puz5->DitherStyle = dsDither;
           break;
   case 2: puz1->DitherStyle = dsBlendDither;
           puz2->DitherStyle = dsBlendDither;
           puz3->DitherStyle = dsBlendDither;
           puz4->DitherStyle = dsBlendDither;
           puz5->DitherStyle = dsBlendDither;
   }
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::fcColorCombo2Change(TObject *Sender)
{
  Butterfly1->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
  Butterfly2->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
  Butterfly3->DitherColor = ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::ThumbTackClick(TObject *Sender)
{
  Char Temp[20];

  if (((TfcImageBtn *)Sender)->Down == True){
     sprintf(Temp,"Tack\r\n(In)");
  } else sprintf(Temp,"Tack\r\n(Out)");

  TackLabel->Caption = Temp;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::Switch1Click(TObject *Sender)
{
   switch (((TfcImageBtn *)Sender)->Tag) {
   case 1: lightbutton1->Down = ((TfcImageBtn *)Sender)->Down; break;
   case 2: LightButton2->Down = ((TfcImageBtn *)Sender)->Down; break;
   case 3: LightButton3->Down = ((TfcImageBtn *)Sender)->Down;
   }
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::ButtonTabChange(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  if (OldSelected->Button != NULL)
     OldSelected->Button->Font->Color = clWhite;

  Selected->Button->Font->Color = clYellow;
  switch (Selected->Button->Tag) {
  case 1: PageControl1->ActivePage = TabSheet1; break;
  case 2: PageControl1->ActivePage = TabSheet2; break;
  case 3: PageControl1->ActivePage = TabSheet3; break;
  case 4: PageControl1->ActivePage = TabSheet4; break;
  case 5: PageControl1->ActivePage = TabSheet5;
  }
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::lightbutton1Click(TObject *Sender)
{
   switch (((TfcImageBtn *)Sender)->Tag) {
   case 1: Switch1->Down = ((TfcImageBtn *)Sender)->Down; break;
   case 2: Switch2->Down = ((TfcImageBtn *)Sender)->Down; break;
   case 3: Switch3->Down = ((TfcImageBtn *)Sender)->Down;
   }
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::fcColorCombo3Change(TObject *Sender)
{
  fcImageBtn1->Color = ((TfcColorCombo *)Sender)->SelectedColor;
  fcImageBtn2->Color = ((TfcColorCombo *)Sender)->SelectedColor;
}
//---------------------------------------------------------------------------
void __fastcall TImageBtnDemoForm::led4Click(TObject *Sender)
{
   LightSwitch1->Down = ((TfcImageBtn *)Sender)->Down;
}
//---------------------------------------------------------------------------
