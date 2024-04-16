//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Lkquery.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Grids"
#pragma link "wwdblook"
#pragma link "wwriched"
#pragma link "Wwdbdlg"
#pragma link "Wwdatsrc"
#pragma link "Wwquery"
#pragma resource "*.dfm"
TTableQueryForm *TableQueryForm;
//---------------------------------------------------------------------------
__fastcall TTableQueryForm::TTableQueryForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TTableQueryForm::RadioGroup1Click(TObject *Sender)
{
   if (((TRadioGroup *)Sender)->ItemIndex==0)
      wwDBGrid1->SetControlType("Zip", fctCustom, "wwDBLookupCombo1");
   else
      wwDBGrid1->SetControlType("Zip", fctCustom, "wwDBLookupComboDlg1");
}
//---------------------------------------------------------------------------