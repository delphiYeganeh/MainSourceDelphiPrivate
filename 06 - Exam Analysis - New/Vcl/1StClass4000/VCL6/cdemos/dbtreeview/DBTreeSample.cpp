//---------------------------------------------------------------------------
#include <vcl.h>
#include <stdio.h>
#pragma hdrstop

#include "DBTreeSample.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcdbtreeview"
#pragma link "fcDemoRichEdit"
#pragma link "fcImager"
#pragma resource "*.dfm"
TDMTreeViewForm *DMTreeViewForm;
//---------------------------------------------------------------------------
__fastcall TDMTreeViewForm::TDMTreeViewForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::fcDBTreeView1CalcNodeAttributes(
      TfcDBCustomTreeView *TreeView, TfcDBTreeNode *Node)
{
   if (Node->DataSet == CustomersTbl) {
      // Use lookupfield to determine if expand icon (+) should be displayed
      Node->HasChildren = !(Node->DataSet->FieldByName("LookupOrders")->IsNull);

      // Use US bitmap for US customers
      if (Node->DataSet->FieldByName("Country")->AsString == "US") {
         Node->StateIndex = 0;
      } else Node->StateIndex = 1;
   }
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::fcDBTreeView1Change(
      TfcDBCustomTreeView *TreeView, TfcDBTreeNode *Node)
{
  String s;
  char temps[500];
  TfcDBTreeNode * tempNode;
  for (int i=0;i<100;i++) temps[i] = ' ';

  // Compute label to indicate tree state
  tempNode=Node;
  do {
     s=temps;
     sprintf(temps,"%s\r\n\%s",tempNode->Text,s);
     tempNode = tempNode->Parent;
  } while (tempNode!=NULL);

  TreeStateLabel->Caption = temps;

  // Select appropriate tab sheet based on active node
  if (Node->DataSet==CustomersTbl) {
    PageControl1->ActivePage = CustomersTabSheet;
  } else if (Node->DataSet==OrdersTbl) {
    PageControl1->ActivePage = OrdersTabSheet;
  } else if (Node->DataSet==ItemsTbl) {
    PageControl1->ActivePage = ItemsTabSheet;
  }
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::PageControl2Change(TObject *Sender)
{
   /* This code causes the treeview to highlight the
      dataset associated with the ActivePage of the tab control */
   if (PageControl1->ActivePage == OrdersTabSheet) {
      fcDBTreeView1->MakeActiveDataSet(OrdersTbl, False);
   } else if (PageControl1->ActivePage == ItemsTabSheet) {
      fcDBTreeView1->MakeActiveDataSet(ItemsTbl, False);
   } else if (PageControl1->ActivePage == CustomersTabSheet) {
      fcDBTreeView1->MakeActiveDataSet(CustomersTbl, False);
   }
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::ComboBox1Change(TObject *Sender)
{
   // Update treeview's fields based on active index }
   if (((TComboBox *)Sender)->Text == "By Company") {
      CustomersTbl->IndexName = "ByCompany";
      fcDBTreeView1->DisplayFields->Strings[0] = "\"Company\" (\"CustNo\")";
   } else {
      CustomersTbl->IndexName = "";
      fcDBTreeView1->DisplayFields->Strings[0] = "\"CustNo\", \"Company\"";
   }
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::FilterComboChange(TObject *Sender)
{
  if (((TComboBox *)Sender)->ItemIndex==0) {
    CustomersTbl->Filtered = False;
  } else if (((TComboBox *)Sender)->ItemIndex>0) CustomersTbl->Filtered = True;
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CustomersTblFilterRecord(TDataSet *DataSet,
      bool &Accept)
{
   if (FilterCombo->ItemIndex==1) {
      Accept = (DataSet->FieldByName("Country")->AsString == "US");
   } else if (FilterCombo->ItemIndex==2)
      Accept = !(DataSet->FieldByName("Country")->AsString == "US");
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CheckBox1Click(TObject *Sender)
{
     if (((TCheckBox *)Sender)->Checked == True){
        fcDBTreeView1->Options << dtvoExpandButtons3D;
     }
     else fcDBTreeView1->Options >> dtvoExpandButtons3D;
     fcDBTreeView1->Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CheckBox2Click(TObject *Sender)
{
     if (((TCheckBox *)Sender)->Checked == True){
        fcDBTreeView1->Options << dtvoRowSelect;
     }
     else fcDBTreeView1->Options >> dtvoRowSelect;
     fcDBTreeView1->Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CheckBox3Click(TObject *Sender)
{
     if (((TCheckBox *)Sender)->Checked == True){
        fcDBTreeView1->MultiSelectAttributes->Enabled = true;
        fcDBTreeView1->MultiSelectAttributes->MultiSelectCheckbox = True;
     }
     else {
        fcDBTreeView1->MultiSelectAttributes->Enabled = false;
        fcDBTreeView1->MultiSelectAttributes->MultiSelectCheckbox = False;
     }
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CheckBox4Click(TObject *Sender)
{
     if (((TCheckBox *)Sender)->Checked == True){
        fcDBTreeView1->Options << dtvoHotTracking;
     }
     else fcDBTreeView1->Options >> dtvoHotTracking;
}
//---------------------------------------------------------------------------
void __fastcall TDMTreeViewForm::CheckBox5Click(TObject *Sender)
{
   if (((TCheckBox *)Sender)->Checked)
   {
      fcDBTreeView1->Imager= fcImager1;
      fcDBTreeView1->InactiveFocusColor= clNone;
      fcDBTreeView1->LineColor= clWhite;
      fcDBTreeView1->Font->Color= clWhite;
      fcDBTreeView1->Font->Style << fsBold;
   }
   else {
     fcDBTreeView1->Imager=NULL;
     fcDBTreeView1->InactiveFocusColor= clBtnFace;
     fcDBTreeView1->LineColor= clBtnShadow;
     fcDBTreeView1->Font->Color= clBlack;
     fcDBTreeView1->Font->Style >> fsBold;
   }

}
//---------------------------------------------------------------------------

