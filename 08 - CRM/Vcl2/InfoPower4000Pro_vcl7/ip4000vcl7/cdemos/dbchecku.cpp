//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "dbchecku.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "wwclearpanel"
#pragma link "Wwdbcomb"
#pragma link "wwdbdatetimepicker"
#pragma link "wwdbedit"
#pragma link "wwDBNavigator"
#pragma link "Wwdotdot"
#pragma link "wwriched"
#pragma link "wwSpeedButton"
#pragma resource "*.dfm"
TCustomFramingForm *CustomFramingForm;
//---------------------------------------------------------------------------
__fastcall TCustomFramingForm::TCustomFramingForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TCustomFramingForm::wwDataSource1DataChange(
      TObject *Sender, TField *Field)
{
  Label9->Caption = ":145681 :146 :" +
     ((TDataSource *)Sender)->DataSet->FieldByName("CheckNo")->AsString;
}
//---------------------------------------------------------------------------
