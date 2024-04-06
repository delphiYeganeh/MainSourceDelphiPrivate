//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "labelu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcDemoRichEdit"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma resource "*.dfm"
TLabelForm *LabelForm;
//---------------------------------------------------------------------------
__fastcall TLabelForm::TLabelForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TLabelForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  PageControl1->ActivePage =
    ((TTabSheet *)FindComponent("TabSheet"+IntToStr(Selected->Button->Tag)));
}
//---------------------------------------------------------------------------
void __fastcall TLabelForm::fcLabel1Click(TObject *Sender)
{
 ShellExecute(Handle, "OPEN",
   PChar("https://www.he.net/cgi-bin/suid/~wol2wol/ordering/order.cgi"), 0, 0, SW_SHOWNORMAL);
}
//---------------------------------------------------------------------------

void __fastcall TLabelForm::fcLabel1MouseEnter(TObject *Sender)
{
  ((TfcLabel *)Sender)->Font->Color = clBlue;
}
//---------------------------------------------------------------------------

void __fastcall TLabelForm::fcLabel1MouseLeave(TObject *Sender)
{
  ((TfcLabel *)Sender)->Font->Color = clBlack;
}
//---------------------------------------------------------------------------

void __fastcall TLabelForm::RadioGroup1Click(TObject *Sender)
{
   fcLabel39->Font->Color = clBtnFace;
   switch (RadioGroup1->ItemIndex) {
   case 0: fcLabel35->TextOptions->Style = fclsDefault;
           fcLabel39->TextOptions->Style = fclsDefault;
           fcLabel39->Font->Color = clBlack;
           fcLabel40->TextOptions->Style = fclsDefault;
           break;
   case 1: fcLabel35->TextOptions->Style = fclsRaised;
           fcLabel39->TextOptions->Style = fclsRaised;
           fcLabel40->TextOptions->Style = fclsRaised;
           break;
   case 2: fcLabel35->TextOptions->Style = fclsLowered;
           fcLabel39->TextOptions->Style = fclsLowered;
           fcLabel40->TextOptions->Style = fclsLowered;
           break;
   case 3: fcLabel35->TextOptions->Style = fclsOutline;
           fcLabel39->TextOptions->Style = fclsOutline;
           fcLabel40->TextOptions->Style = fclsOutline;
   }
}
//---------------------------------------------------------------------------

