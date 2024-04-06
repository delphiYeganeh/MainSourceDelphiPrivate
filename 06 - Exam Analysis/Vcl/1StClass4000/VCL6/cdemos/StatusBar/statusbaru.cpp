//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "statusbaru.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcDemoRichEdit"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcStatusBar"
#pragma link "CGAUGES"
#pragma resource "*.dfm"
TStatusBarDemoForm *StatusBarDemoForm;
//---------------------------------------------------------------------------
__fastcall TStatusBarDemoForm::TStatusBarDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  if (OldSelected->Button != NULL)
      OldSelected->Button->Font->Color = clBlack;
  Selected->Button->Font->Color = clRed;

  PageControl1->ActivePage =
     ((TTabSheet *)FindComponent("TabSheet"+IntToStr(Selected->Button->Tag)));
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::Close1Click(TObject *Sender)
{
Close();        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcLabel1Click(TObject *Sender)
{
 ShellExecute(Handle, "OPEN",
   PChar("https://www.he.net/cgi-bin/suid/~wol2wol/ordering/order.cgi"), 0, 0, SW_SHOWNORMAL);
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcLabel1MouseEnter(TObject *Sender)
{
  ((TfcLabel *)Sender)->Font->Color = clBlue;        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcLabel1MouseLeave(TObject *Sender)
{
  ((TfcLabel *)Sender)->Font->Color = clBlack;        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar7Panels0DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
  Text = "Current Line is: "+IntToStr(Panel->Row+1);        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar7Panels1DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
  Text = "Current Column is: "+IntToStr(Panel->Col);        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar7Panels3DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
  Text = "("+IntToStr(Panel->Row+1)+","+IntToStr(Panel->Col)+")";
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar4Panels0DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
 Text = "Computer Name: "+Text;
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar4Panels1DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
 Text = "User Name: "+Text;
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::fcStatusBar3Panels3DrawText(
      TfcStatusPanel *Panel, AnsiString &Text, bool &Enabled)
{
  Text = FormatDateTime("dddddd",Date());        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::Timer1Timer(TObject *Sender)
{
 ProgressBar1->StepIt();        
}
//---------------------------------------------------------------------------
void __fastcall TStatusBarDemoForm::FormActivate(TObject *Sender)
{
 Animate1->Active = True;        
}
//---------------------------------------------------------------------------

void __fastcall TStatusBarDemoForm::FormClose(TObject *Sender,
      TCloseAction &Action)
{
 Animate1->Active = False;        
}
//---------------------------------------------------------------------------

void __fastcall TStatusBarDemoForm::Control1Click(TObject *Sender)
{
  fcButtonGroup1->ButtonItems->Items[((TMenuItem *)Sender)->Tag]->Button->Down = True;
}
//---------------------------------------------------------------------------

