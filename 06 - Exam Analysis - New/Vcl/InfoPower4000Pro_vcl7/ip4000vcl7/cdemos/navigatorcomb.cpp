//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "navigatorcomb.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "Wwdatsrc"
#pragma link "wwDBNavigator"
#pragma link "wwrcdpnl"
#pragma link "wwriched"
#pragma link "wwSpeedButton"
#pragma link "Wwtable"
#pragma link "wwclearpanel"
#pragma resource "*.dfm"
TCombinedForm *CombinedForm;
//---------------------------------------------------------------------------
__fastcall TCombinedForm::TCombinedForm(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TCombinedForm::NavigatorButton2Click(TObject *Sender)
{
  Close();    
}
//---------------------------------------------------------------------------
void __fastcall TCombinedForm::FormDestroy(TObject *Sender)
{
  Screen->OnActiveControlChange = NULL;

}
//---------------------------------------------------------------------------
void __fastcall TCombinedForm::FormCreate(TObject *Sender)
{
  Screen->OnActiveControlChange = ActiveControlChange;
}
//---------------------------------------------------------------------------
// When using the OnActiveControlChange Event, make sure
// that you set the ActiveControl property for your forms
// to some sort of default value.  In this demo, that
// property is set to the corresponding TwwRecordViewPanel or
// TwwDBGrid components.
void __fastcall TCombinedForm::ActiveControlChange(TObject *Sender)
{
  Navigator->SetDataSourceFromComponent(Screen->ActiveControl, false);
  if (Navigator->DataSource)
     StatusBar1->SimpleText =
       "Browsing table: '" + ((TwwTable *)Navigator->DataSource->DataSet)->TableName + "'";
  else StatusBar1->SimpleText = "Click on the Show menu to open a form";
}
