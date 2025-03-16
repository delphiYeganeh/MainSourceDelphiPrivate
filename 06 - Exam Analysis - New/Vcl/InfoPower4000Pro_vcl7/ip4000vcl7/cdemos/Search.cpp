//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Search.h"
//---------------------------------------------------------------------------
#pragma link "Wwkeycb"
#pragma link "Wwtable"
#pragma link "Wwdbcomb"
#pragma link "wwdbedit"
#pragma link "Wwdotdot"
#pragma resource "*.dfm"
TIncrSearch *IncrSearch;
//---------------------------------------------------------------------------
__fastcall TIncrSearch::TIncrSearch(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TIncrSearch::wwKeyCombo1Change(TObject *Sender)
{
   wwIncrementalSearch1->Text= "";
   wwIncrementalSearch1->SetFocus();
}
//---------------------------------------------------------------------------