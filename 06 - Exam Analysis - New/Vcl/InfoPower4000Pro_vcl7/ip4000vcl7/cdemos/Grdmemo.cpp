//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Grdmemo.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Grids"
#pragma link "Wwtable"
#pragma link "Wwdatsrc"
#pragma link "wwriched"
#pragma resource "*.dfm"
TGridMemoApp *GridMemoApp;
//---------------------------------------------------------------------------
__fastcall TGridMemoApp::TGridMemoApp(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TGridMemoApp::BitBtn2Click(TObject *Sender)
{
Close();	
}
//---------------------------------------------------------------------------
void __fastcall TGridMemoApp::wwDBGrid1MemoOpen(TwwDBGrid *Grid,
	TwwMemoDialog *MemoDialog)
{
 MemoDialog->DlgLeft = 15;
}
//---------------------------------------------------------------------------