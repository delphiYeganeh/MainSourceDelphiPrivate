//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "TreeDemo.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcDemoRichEdit"
#pragma link "fcStatusBar"
#pragma link "fcTreeView"
#pragma resource "*.dfm"
TTreeViewDemoForm *TreeViewDemoForm;
//---------------------------------------------------------------------------
__fastcall TTreeViewDemoForm::TTreeViewDemoForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::FormShow(TObject *Sender)
{
  fcTreeView1->FullExpand();
  fcTreeView2->FullExpand();
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::fcTreeView1CalcNodeAttributes(
      TfcCustomTreeView *TreeView, TfcTreeNode *Node, TfcItemStates State)
{
  if (State.Contains(fcisHot))
    TreeView->Canvas->Font->Style = TreeView->Canvas->Font->Style << fsUnderline;
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::CheckBox1Click(TObject *Sender)
{
  if (fcTreeView1->Options.Contains(tvoExpandButtons3D))
    fcTreeView1->Options = fcTreeView1->Options >> tvoExpandButtons3D;
  else fcTreeView1->Options = fcTreeView1->Options << tvoExpandButtons3D;
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::CheckBox2Click(TObject *Sender)
{
  if (((TCheckBox *)Sender)->Checked)
    fcTreeView1->Options = fcTreeView1->Options << tvoRowSelect;
  else fcTreeView1->Options = fcTreeView1->Options >> tvoRowSelect;
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::fcTreeView2MouseMove(TfcCustomTreeView *TreeView,
      TfcTreeNode *Node, TShiftState Shift, int X, int Y)
{
  if (Node != NULL && Node->StringData != "" &&
      TreeView->GetHitTestInfoAt(X, Y).Contains(fchtOnItem))
    fcStatusBar1->Panels->Items[0]->Text = Node->StringData;
  else fcStatusBar1->Panels->Items[0]->Text = "";
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::Button1Click(TObject *Sender)
{
  // Reapply filter by refreshing query locally
  Query1->UpdateCursorPos();
  Query1->Resync(TResyncMode() << rmCenter);
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::fcTreeView3ToggleCheckbox(
      TfcCustomTreeView *TreeView, TfcTreeNode *Node)
{
  if (Node->Level == 1 && Node->Checked)
    Node->Parent->Checked = true;
}
//---------------------------------------------------------------------------
void __fastcall TTreeViewDemoForm::Query1FilterRecord(TDataSet *DataSet, bool &Accept)
{
  // TreeView handle not available i.e. destroying
  if (!fcTreeView3->HandleAllocated()) return;
  Accept = false;

  bool CountryMatch = true;
  bool AmountOrderedMatch = true;
  bool AmountOwedMatch = true;

  TfcTreeNode* curNode = fcTreeView3->Items->GetFirstNode();
  TfcTreeNode* ChildNode = NULL;

  int AmountOwed = 0, AmountOrdered = 0;

  do {
    if (curNode->StringData == "Country" && curNode->Checked) {
      CountryMatch = false;

      // Search checkboxes for country to see if any countries match current record
      ChildNode = curNode->GetFirstChild();

      do {
        if (ChildNode->Checked) {
          if (DataSet->FieldByName("Country")->AsString == ChildNode->Text) {
            CountryMatch = true;
            break;
          }
        }
        ChildNode = ChildNode->GetNextSibling();
      } while (ChildNode != NULL);
    } else if (curNode->StringData == "Amount Ordered" && curNode->Checked) {
      // Check AmountOrdered to amount matches radio group selected in treeview
      AmountOrderedMatch = false;
      ChildNode = curNode->GetFirstChild();
      do {
        if (ChildNode->Checked) {
          AmountOrdered = DataSet->FieldByName("AmountOrdered")->AsFloat;
          TField* MyField = DataSet->FieldByName("AmountOrdered");
          if ((ChildNode->StringData == "" || AmountOrdered >= StrToInt(ChildNode->StringData)) &&
              (ChildNode->StringData2 == "" || AmountOrdered < StrToInt(ChildNode->StringData2)))
            AmountOrderedMatch = true;
          break;
        }
        ChildNode = ChildNode->GetNextSibling();
      } while (ChildNode != NULL);
    } else if (curNode->StringData == "Amount Owed" && curNode->Checked) {
      // Check AmountOrdered to amount matches radio group selected in treeview
      AmountOwedMatch = false;
      ChildNode = curNode->GetFirstChild();
      do {
        if (ChildNode->Checked) {
          AmountOwed = DataSet->FieldByName("AmountOrdered")->AsFloat -
            DataSet->FieldByName("AmountPaid")->AsFloat;
          if ((ChildNode->StringData == "" || AmountOwed > StrToInt(ChildNode->StringData)) &&
              (ChildNode->StringData2 == "" || AmountOwed <= StrToInt(ChildNode->StringData2)))
            AmountOwedMatch = true;
          break;
        }
        ChildNode = ChildNode->GetNextSibling();
      } while (ChildNode != NULL);
    }
    curNode = curNode->GetNextSibling();
  } while (curNode != NULL);

  if (CountryMatch && AmountOrderedMatch && AmountOwedMatch) Accept = true;
}
//---------------------------------------------------------------------------
