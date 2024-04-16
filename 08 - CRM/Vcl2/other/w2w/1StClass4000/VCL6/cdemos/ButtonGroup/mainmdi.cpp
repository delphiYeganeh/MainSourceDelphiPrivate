//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "mainmdi.h"
#include "About.h"
#include "childwin.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma resource "*.dfm"
TMainMdiForm *MainMdiForm;
//---------------------------------------------------------------------------
__fastcall TMainMdiForm::TMainMdiForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainMdiForm::SetMDIChildCaption(TCustomForm * Child, String Name)
{
  Child->Caption = Name;
  ((TfcShapeBtn *)(fcButtonGroup1->ButtonItems->FindPointerTag(Child)->Button))->Caption = Name;
}
//---------------------------------------------------------------------------
void __fastcall TMainMdiForm::CreateMDIChild(const String Name)
{
  TMDIChild * Child;
  Child = new TMDIChild(Application);
  SetMDIChildCaption(Child, Name);
}
//---------------------------------------------------------------------------
void __fastcall TMainMdiForm::FileExitItemClick(TObject *Sender)
{
Close();
}
//---------------------------------------------------------------------------

void __fastcall TMainMdiForm::ToolButton10Click(TObject *Sender)
{
 Tile();
}
//---------------------------------------------------------------------------

void __fastcall TMainMdiForm::ToolButton8Click(TObject *Sender)
{
 Cascade();
}
//---------------------------------------------------------------------------

void __fastcall TMainMdiForm::FileCloseItemClick(TObject *Sender)
{
  if (ActiveMDIChild != NULL)
     ActiveMDIChild->Close();
}
//---------------------------------------------------------------------------


void __fastcall TMainMdiForm::FileNewItemClick(TObject *Sender)
{
  CreateMDIChild("FORM" + IntToStr(MDIChildCount + 1));
}
//---------------------------------------------------------------------------

void __fastcall TMainMdiForm::FormActivate(TObject *Sender)
{
  FileNewItemClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TMainMdiForm::fcButtonGroup1Change(
      TfcCustomButtonGroup *ButtonGroup, TfcButtonGroupItem *OldSelected,
      TfcButtonGroupItem *Selected)
{
  ((TCustomForm *)(Selected->PointerTag))->Show();
}
//---------------------------------------------------------------------------

