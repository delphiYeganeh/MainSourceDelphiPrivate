//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "shapeu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcDemoRichEdit"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TShapeBtnDemoForm *ShapeBtnDemoForm;
//---------------------------------------------------------------------------
__fastcall TShapeBtnDemoForm::TShapeBtnDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::RightButton1Click(TObject *Sender)
{
  PageControl1->ActivePage = PageControl1->FindNextPage(PageControl1->ActivePage,True,False);
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::LeftButton1Click(TObject *Sender)
{
  PageControl1->ActivePage = PageControl1->FindNextPage(PageControl1->ActivePage,False,False);
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::RadioGroup1Click(TObject *Sender)
{
   switch (RadioGroup1->ItemIndex) {
   case 0: CustomLButton1->Orientation = soDown;
           CustomLButton2->Orientation = soDown;
           CustomLButton3->Orientation = soDown;
           CustomArrowButton->Orientation = soDown;
           CustomLButton2->Top = CustomLButton3->Top;
           CustomLButton1->Top = CustomLButton3->Top;
           CustomLButton2->Left = CustomLButton3->Left;
           CustomLButton1->Left = CustomLButton3->Left;
           break;
   case 1: CustomLButton1->Orientation = soUp;
           CustomLButton2->Orientation = soUp;
           CustomLButton3->Orientation = soUp;
           CustomArrowButton->Orientation = soUp;
           CustomLButton2->Top = CustomLButton3->Top+15;
           CustomLButton1->Top = CustomLButton2->Top+15;
           CustomLButton2->Left = CustomLButton3->Left+15;
           CustomLButton1->Left = CustomLButton2->Left+15;
           break;
   case 2: CustomLButton1->Orientation = soLeft;
           CustomLButton2->Orientation = soLeft;
           CustomLButton3->Orientation = soLeft;
           CustomArrowButton->Orientation = soLeft;
           CustomLButton2->Top = CustomLButton3->Top;
           CustomLButton1->Top = CustomLButton3->Top;
           CustomLButton2->Left = CustomLButton3->Left+15;
           CustomLButton1->Left = CustomLButton2->Left+15;
           break;
   case 3: CustomLButton1->Orientation = soRight;
           CustomLButton2->Orientation = soRight;
           CustomLButton3->Orientation = soRight;
           CustomArrowButton->Orientation = soRight;
           CustomLButton2->Top = CustomLButton3->Top+15;
           CustomLButton1->Top = CustomLButton2->Top+15;
           CustomLButton2->Left = CustomLButton3->Left;
           CustomLButton1->Left = CustomLButton3->Left;
   }
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::ButtonColoredMouseLeave(TObject *Sender)
{
  ((TfcShapeBtn *)Sender)->Font->Color = clWhite;
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::ButtonGlyphHotTrackMouseEnter(
      TObject *Sender)
{
  ((TfcShapeBtn *)Sender)->Font->Color = clRed;
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::ButtonGlyphHotTrackMouseLeave(
      TObject *Sender)
{
  ((TfcShapeBtn *)Sender)->Font->Color = clBlack;
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::ButtonHotTrackMouseEnter(
      TObject *Sender)
{
     ((TfcShapeBtn *)Sender)->Color = clRed;
     ((TfcShapeBtn *)Sender)->UpdateShadeColors(clRed);
     ((TfcShapeBtn *)Sender)->Font->Color = clWhite;
     ((TfcShapeBtn *)Sender)->TextOptions->HighlightColor = 0x00A0A0FF;
     ((TfcShapeBtn *)Sender)->TextOptions->ShadeColor = clMaroon;
}
//---------------------------------------------------------------------------
void __fastcall TShapeBtnDemoForm::ButtonHotTrackMouseLeave(
      TObject *Sender)
{
     ((TfcShapeBtn *)Sender)->Color = clBtnFace;
     ((TfcShapeBtn *)Sender)->UpdateShadeColors(Color);
     ((TfcShapeBtn *)Sender)->Font->Color = clBlack;
     ((TfcShapeBtn *)Sender)->TextOptions->HighlightColor = clBtnHighlight;
     ((TfcShapeBtn *)Sender)->TextOptions->ShadeColor = clBtnShadow;
     ((TfcShapeBtn *)Sender)->ShadeColors->Btn3DLight = cl3DLight;
}
//---------------------------------------------------------------------------
