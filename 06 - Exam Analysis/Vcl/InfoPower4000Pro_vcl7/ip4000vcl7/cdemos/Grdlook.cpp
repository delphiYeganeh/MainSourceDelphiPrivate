//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Grdlook.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Grids"
#pragma link "wwdblook"
#pragma link "Wwdotdot"
#pragma link "wwdbedit"
#pragma link "Wwtable"
#pragma link "Wwdatsrc"
#pragma link "wwidlg"
#pragma link "wwDialog"
#pragma link "wwriched"
#pragma resource "*.dfm"
TGridDemo *GridDemo;
//---------------------------------------------------------------------------
__fastcall TGridDemo::TGridDemo(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
// Demo program uses two grids connected to the same table
// This code causes each grid to display slightly different fields
void __fastcall TGridDemo::TabbedNotebook1Change(TObject *Sender, int NewTab,
	bool &AllowChange)
{
   //Post to prevent record from locking twice
   if (CustomerTable->Modified)CustomerTable->Post();
}
//---------------------------------------------------------------------------
void __fastcall TGridDemo::FormShow(TObject *Sender)
{
 TabbedNotebook1->PageIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TGridDemo::wwLookupDialog1UserButton1Click(TObject *Sender,
	TDataSet *LookupTable)
{
   MessageDlg("Attach any code you want to this button.", mtInformation,
      TMsgDlgButtons() << mbOK, 0);
}
//---------------------------------------------------------------------------
void __fastcall TGridDemo::Button1Click(TObject *Sender)
{
   ((TwwTable *)wwLookupDialog1->LookupTable)->IndexName = "";
   ((TwwTable *)wwLookupDialog1->LookupTable)->SetKey();
   ((TwwTable *)wwLookupDialog1->LookupTable)->FieldByName("Zip")->AsString = CustomerTableZip->AsString;
   ((TwwTable *)wwLookupDialog1->LookupTable)->GotoKey();

   if (wwLookupDialog1->Execute()) {
      CustomerTable->Edit();
      CustomerTableZip->AsString = wwLookupDialog1->LookupTable->FieldByName("Zip")->AsString;
      CustomerTableCity->AsString = wwLookupDialog1->LookupTable->FieldByName("City")->AsString;
      CustomerTableState->AsString = wwLookupDialog1->LookupTable->FieldByName("State")->AsString;
   }
}
//---------------------------------------------------------------------------
void __fastcall TGridDemo::BitBtn2Click(TObject *Sender)
{
 Close();	
}
//---------------------------------------------------------------------------
void __fastcall TGridDemo::FormCloseQuery(TObject *Sender, bool &CanClose)
{
CustomerTable->CheckBrowseMode();	
}
//---------------------------------------------------------------------------
