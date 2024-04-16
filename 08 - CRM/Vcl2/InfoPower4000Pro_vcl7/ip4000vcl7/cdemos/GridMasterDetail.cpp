//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "GridMasterDetail.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "wwcheckbox"
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma resource "*.dfm"
TMasterDetailGridForm *MasterDetailGridForm;
//---------------------------------------------------------------------------
__fastcall TMasterDetailGridForm::TMasterDetailGridForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMasterDetailGridForm::InvoiceGridUpdateFooter(
      TObject *Sender)
{
   SumQuery->Active= False;
   SumQuery->ParamByName("CustNo")->AsInteger= CustomerTable->FieldByName("CustNo")->AsInteger;
   SumQuery->Active= True;
   InvoiceGrid->ColumnByName("ItemsTotal")->FooterValue=
      FloatToStrF(SumQuerySUMOFItemsTotal->AsFloat, ffCurrency, 10, 2);
}
//---------------------------------------------------------------------------
void __fastcall TMasterDetailGridForm::CustomerGridCalcTitleImage(
      TObject *Sender, TField *Field,
      TwwTitleImageAttributes &TitleImageAttributes)
{
   if (Field->FieldName=="Orders")
      TitleImageAttributes.ImageIndex=2;
}
//---------------------------------------------------------------------------
void __fastcall TMasterDetailGridForm::InvoiceGridBeforePaint(
      TObject *Sender)
{
   // Paint to detail grids the same bitmap as the master grid sp
   // that alternating row color of master grid is respected
   TwwDBGrid * grid = (TwwDBGrid *)Sender;
   if (CustomerGrid->IsActiveRowAlternatingColor())
   {
      grid->Canvas->CopyRect(ClientRect,
         CustomerGrid->PaintOptions->AlternatingColorBitmap->Canvas,
         grid->ClientRect);
   }
   else {
      grid->Canvas->CopyRect(ClientRect,
         CustomerGrid->PaintOptions->OrigBitmap->Canvas,
         grid->ClientRect);
   }
}
//---------------------------------------------------------------------------
