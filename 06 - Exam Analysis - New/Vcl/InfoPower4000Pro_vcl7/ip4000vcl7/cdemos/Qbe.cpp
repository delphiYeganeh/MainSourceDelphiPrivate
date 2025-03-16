//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Qbe.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Wwdatsrc"
#pragma link "Wwqbe"

#pragma resource "*.dfm"
TQBEForm *QBEForm;
//---------------------------------------------------------------------------
__fastcall TQBEForm::TQBEForm(TComponent* Owner)
  : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TQBEForm::FormActivate(TObject *Sender)
{
   wwQBE1->Active = True;  
}
//---------------------------------------------------------------------