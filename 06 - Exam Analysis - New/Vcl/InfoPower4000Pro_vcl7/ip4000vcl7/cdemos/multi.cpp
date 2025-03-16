//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#include <stdlib.h>
#pragma hdrstop

#include "multi.h"
//---------------------------------------------------------------------------
#pragma link "Wwdbgrid"
#pragma link "Wwdbigrd"
#pragma link "Grids"
#pragma link "wwriched"
#pragma link "Wwdatsrc"
#pragma link "Wwtable"
#pragma resource "*.dfm"
TMultiSelectForm *MultiSelectForm;
//---------------------------------------------------------------------------
__fastcall TMultiSelectForm::TMultiSelectForm(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::PopulateTable()
{
   int i, computeCode;

   wwDBGrid1->SelectedList->Clear();  //{ Clear selected list }

   wwTable1->Active = False;
   wwTable1->DatabaseName = "InfoDemo5";
   wwTable1->TableName  = "multitst.db";
   wwTable1->TableType = ttDefault;
   wwTable1->FieldDefs->Clear();
   wwTable1->FieldDefs->Add("Code", ftString,  5, False);
   wwTable1->FieldDefs->Add("Description", ftString, 25, False);
   wwTable1->IndexDefs->Clear();
   TIndexOptions temp_set;
   temp_set << ixPrimary << ixUnique;
   wwTable1->IndexDefs->Add("", "Code", temp_set);
   wwTable1->CreateTable();
   wwTable1->Active = True;

    // { Add 100 random records }
   Randomize();
   wwTable1->DisableControls();
   for (i=1;i<=100;i++)
   {
      computeCode = random(32767);
      wwTable1->SetKey();
      wwTable1->FieldByName("Code")->AsString = IntToStr(computeCode);
      if (!wwTable1->GotoKey())
      {
         wwTable1->Insert();
         wwTable1->FieldByName("Code")->AsString = IntToStr(computeCode);
         wwTable1->FieldByName("Description")->AsString = "Description for " + IntToStr(computeCode);
         wwTable1->CheckBrowseMode();
      }
   }
   wwTable1->EnableControls();

   wwTable1->First();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::FormShow(TObject *Sender)
{
   PopulateTable();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::wwDBGrid1CalcCellColors(TObject *Sender,
	TField *Field, TGridDrawState State, bool Highlight, TFont *AFont,
	TBrush *ABrush)
{
   if (Field->FieldName=="Selected") ABrush->Color= clBtnFace;
   else if ((!Highlight) && (((TwwDBGrid *)Sender)->IsSelected())) {
      ABrush->Color = clYellow;
      AFont->Color = clBlack;
   }
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::Button2Click(TObject *Sender)
{
   wwDBGrid1->UnselectAll();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::Button1Click(TObject *Sender)
{
   wwDBGrid1->SelectAll();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::BitBtn2Click(TObject *Sender)
{
   Close();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::DeleteButtonClick(TObject *Sender)
{
   TDataSet * ds= wwDBGrid1->DataSource->DataSet;
   ds->DisableControls();   //{ Disable controls to improve performance }
   for (int i = 0; i<wwDBGrid1->SelectedList->Count;i++)
   {
      ds->GotoBookmark(wwDBGrid1->SelectedList->Items[i]);
      ds->FreeBookmark(wwDBGrid1->SelectedList->Items[i]);
      ds->Delete();          // { Delete Record }
   }
   wwDBGrid1->SelectedList->Clear();  //{ Clear selected record list since they are all deleted}
   ds->EnableControls();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::CheckBox3Click(TObject *Sender)
{
      wwDBGrid1->DataSource->DataSet->FieldByName("Selected")->Visible
         = ((TCheckBox *)Sender)->Checked;
      wwDBGrid1->SizeLastColumn();
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::CheckBox1Click(TObject *Sender)
{
    if (((TCheckBox *)Sender)->Checked)
       wwDBGrid1->MultiSelectOptions = wwDBGrid1->MultiSelectOptions << msoShiftSelect;
    else wwDBGrid1->MultiSelectOptions = wwDBGrid1->MultiSelectOptions >> msoShiftSelect;
}
//---------------------------------------------------------------------------
void __fastcall TMultiSelectForm::CheckBox2Click(TObject *Sender)
{
    if (((TCheckBox *)Sender)->Checked)
       wwDBGrid1->MultiSelectOptions = wwDBGrid1->MultiSelectOptions << msoAutoUnselect;
    else wwDBGrid1->MultiSelectOptions = wwDBGrid1->MultiSelectOptions >> msoAutoUnselect;
}
//---------------------------------------------------------------------------