//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "grdbttn.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Grids"
#pragma link "wwriched"
#pragma link "Wwdatsrc"
#pragma link "Wwtable"
#pragma link "wwrcdvw"
#pragma link "wwDialog"
#pragma resource "*.dfm"
TBtnGridForm *BtnGridForm;
//---------------------------------------------------------------------------
__fastcall TBtnGridForm::TBtnGridForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TBtnGridForm::wwDBGrid1TitleButtonClick(TObject *Sender,
	AnsiString AFieldName)
{
wwTable1->IndexFieldName = AFieldName;
}
//---------------------------------------------------------------------------
void __fastcall TBtnGridForm::wwDBGrid1IButtonClick(TObject *Sender)
{
wwRecordViewDialog1->Execute();
}
//---------------------------------------------------------------------------
void __fastcall TBtnGridForm::wwDBGrid1CalcTitleImage(TObject *Sender,
      TField *Field, TwwTitleImageAttributes &TitleImageAttributes)
{
    if (UpperCase(Field->FieldName)==UpperCase(wwTable1->IndexFieldName))
      TitleImageAttributes.ImageIndex= 4;
    else
      TitleImageAttributes.ImageIndex= -1;

}
//---------------------------------------------------------------------------
