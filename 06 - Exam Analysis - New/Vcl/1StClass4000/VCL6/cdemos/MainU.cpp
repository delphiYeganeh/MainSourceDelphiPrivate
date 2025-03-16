//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "MainU.h"
#include "OutlookBarU.h"
#include "PaintU.h"
#include "ImageTabFormU.h"
#include "ColorDemoU.h"
#include "TabButtons.h"
#include "TreeDemo.h"
#include "ImageButtonU.h"
#include "MapU.h"
#include "ShapeU.h"
#include "DBTreeSample.h"
#include "ImagerMain.h"
#include "LabelU.h"
#include "StatusBarU.h"
#include "ProportionalU.h"
#include "OrderFormU.h"
#include "ButtonGroupDemo.h"
#include "TreeCombos.h"
#include "TilerUnit.h"
#include "FrameU.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcDemoRichEdit"
#pragma link "fcImage"
#pragma link "fcImageForm"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcOutlookBar"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  // Color Active Button's Font and reset old font
  if (OldSelected != NULL) OldSelected->Button->Font->Color = clWhite;
  Selected->Button->Font->Color = clYellow;
  PageControl1->ActivePage = (TTabSheet *)FindComponent("TabSheet" + IntToStr(Selected->Button->Tag));
  fcOutlookBar1->ActivePage = (TfcCustomBitBtn *)FindComponent("RichEditPage" + IntToStr(Selected->Button->Tag));
  TitleLabel->Caption = Selected->Button->Caption;
}
//---------------------------------------------------------------------------

void TMainForm::ExecuteDemo(TForm* AForm) {
  Screen->Cursor = crHourGlass;
  Screen->Cursor = crDefault;
  AForm->ShowModal();
  AForm->Free();
}

//---------------------------------------------------------------------------
void __fastcall TMainForm::fcShapeBtn8Click(TObject *Sender)
{
  ExecuteDemo(&TOutlookBarForm(Application));
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::DemoButtonOutlookBarClick(TObject *Sender)
{
  ExecuteDemo(&TPaintForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonTreeViewClick(TObject *Sender)
{
  ExecuteDemo(&TTreeViewDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonDBTreeViewClick(TObject *Sender)
{
  ExecuteDemo(&TDMTreeViewForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonImageFormClick(TObject *Sender)
{
  ExecuteDemo(&TOrderForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn4Click(TObject *Sender)
{
  ExecuteDemo(&TImageTabForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonLabelClick(TObject *Sender)
{
  ExecuteDemo(&TLabelForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonShapeBtn1Click(TObject *Sender)
{
  ExecuteDemo(&TShapeBtnDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonImageBtnClick(TObject *Sender)
{
  ExecuteDemo(&TImageBtnDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn1Click(TObject *Sender)
{
  ExecuteDemo(&TMapForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn5Click(TObject *Sender)
{
  ExecuteDemo(&TButtonGroupDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn2Click(TObject *Sender)
{
  ExecuteDemo(&TTabBtnGroupForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonButtonGroupClick(TObject *Sender)
{
  String s;
  s = ExtractFileDir(Application->ExeName)+ "\\ButtonGroup\\PDemo1stClassMDI.exe";
  ShellExecute(Handle, "OPEN", s.c_str(), NULL, NULL, SW_SHOWNORMAL);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonColorClick(TObject *Sender)
{
  ExecuteDemo(&TColorDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonTreeComboClick(TObject *Sender)
{
  ExecuteDemo(&TTreeComboDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonStatusBarClick(TObject *Sender)
{
  ExecuteDemo(&TStatusBarDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn7Click(TObject *Sender)
{
  ExecuteDemo(&TProportionalStatusBarForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::DemoButtonTilerClick(TObject *Sender)
{
  ExecuteDemo(&TTilerDemoForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn6Click(TObject *Sender)
{
  ExecuteDemo(&TImagerForm(Application));
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::fcShapeBtn3Click(TObject *Sender)
{
  Close();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::FormShow(TObject *Sender)
{
  PageControl1->ActivePage = TabSheet1;
}
//---------------------------------------------------------------------------


void __fastcall TMainForm::fcImageBtn2Click(TObject *Sender)
{
  ExecuteDemo(&TFrameDemoForm(Application));
}
//---------------------------------------------------------------------------

