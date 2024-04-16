//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "TreeCombos.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcCombo"
#pragma link "fcDemoRichEdit"
#pragma link "fcFontCombo"
#pragma link "fcTreeCombo"
#pragma link "fctreecombo"
#pragma resource "*.dfm"
TTreeComboDemoForm *TreeComboDemoForm;
//---------------------------------------------------------------------------
__fastcall TTreeComboDemoForm::TTreeComboDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TTreeComboDemoForm::PageControl1Change(TObject *Sender)
{
  if (PageControl1->ActivePage == TabSheet1) {
     TreeCombo1->SetFocus();
  } else fcFontCombo1->SetFocus();
}
//---------------------------------------------------------------------------

void __fastcall TTreeComboDemoForm::FormShow(TObject *Sender)
{
 PageControl1Change(PageControl1);
 TreeCombo1->Text= "HandShake";
 TreeCombo1->SelectAll();
 TreeCombo2->Text= "Satellite";

}
//---------------------------------------------------------------------------
void __fastcall TTreeComboDemoForm::CheckListBoxClickCheck(TObject *Sender)
{
  if (CheckListBox->Checked[4]) {ActiveCombo->TreeOptions << tvoRowSelect;}
  else ActiveCombo->TreeOptions >> tvoRowSelect;

  if (CheckListBox->Checked[2]) {ActiveCombo->TreeOptions << tvoShowButtons;}
  else ActiveCombo->TreeOptions >> tvoShowButtons;

  if (CheckListBox->Checked[0]) {ActiveCombo->TreeOptions << tvoShowLines;}
  else ActiveCombo->TreeOptions >> tvoShowLines;

  if (CheckListBox->Checked[1]) {ActiveCombo->TreeOptions << tvoShowRoot;}
  else ActiveCombo->TreeOptions >> tvoShowRoot;

  if (CheckListBox->Checked[3]) {ActiveCombo->Options << icoExpanded;}
  else ActiveCombo->Options >> icoExpanded;

  if (CheckListBox->Checked[5]) {ActiveCombo->Options << icoEndNodesOnly;}
  else ActiveCombo->Options >> icoEndNodesOnly;

  ActiveCombo->ShowMatchText = CheckListBox->Checked[6];

  if (CheckListBox->Checked[7]) {ActiveCombo->Style = Fccombo::csDropDownList;}
  else ActiveCombo->Style = Fccombo::csDropDown;
}
//---------------------------------------------------------------------------
void __fastcall TTreeComboDemoForm::ComboEnter(TObject *Sender)
{
  ActiveCombo = (TfcCustomTreeCombo *)Sender;
  CheckListBox->Checked[0] = (ActiveCombo->TreeOptions.Contains(tvoShowLines));
  CheckListBox->Checked[1] = (ActiveCombo->TreeOptions.Contains(tvoShowRoot));
  CheckListBox->Checked[2] = (ActiveCombo->TreeOptions.Contains(tvoShowButtons));
  CheckListBox->Checked[3] = (ActiveCombo->Options.Contains(icoExpanded));
  CheckListBox->Checked[4] = (ActiveCombo->TreeOptions.Contains(tvoRowSelect));
  CheckListBox->Checked[5] = (ActiveCombo->Options.Contains(icoEndNodesOnly));
  CheckListBox->Checked[6] = ActiveCombo->ShowMatchText;
  CheckListBox->Checked[7] = (ActiveCombo->Style == Fccombo::csDropDownList);
}
//---------------------------------------------------------------------------
