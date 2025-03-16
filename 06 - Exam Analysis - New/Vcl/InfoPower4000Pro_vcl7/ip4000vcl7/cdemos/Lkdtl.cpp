//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Lkdtl.h"
//---------------------------------------------------------------------------
#pragma link "wwdblook"
#pragma link "Wwdatsrc"
#pragma link "Wwtable"
#pragma link "wwriched"
#pragma resource "*.dfm"
TDetailComboForm *DetailComboForm;
//---------------------------------------------------------------------------
__fastcall TDetailComboForm::TDetailComboForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDetailComboForm::CustomerComboDropDown(TObject *Sender)
{
   BeforeDropDownValue = CustomerCombo->Text;	
}
//---------------------------------------------------------------------------
void __fastcall TDetailComboForm::CustomerComboCloseUp(TObject *Sender,
	TDataSet *LookupTable, TDataSet *FillTable, bool modified)
{
   if (CustomerCombo->Text == BeforeDropDownValue) {
       InvoiceCombo->LookupValue = "";
       InvoiceCombo->Text= "";
   }
}
//--------------------------------------------------------------------------- 