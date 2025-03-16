//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#include <vcl\dbtables.hpp>
#pragma hdrstop

#include "Packdlgs.h"
//---------------------------------------------------------------------------
#pragma resource "*.dfm"
TGetTablesForm *GetTablesForm;
//---------------------------------------------------------------------------
__fastcall TGetTablesForm::TGetTablesForm(TComponent* Owner)
  : TForm(Owner)
{
}
//---------------------------------------------------------------------------
Boolean __fastcall wwGetTablesDlg(String *databaseName,TStrings *tableNames)
{
   int i;
   int thisIndex;
   TGetTablesForm *NewForm;
   Boolean Result;

   NewForm = new TGetTablesForm(Application);

   Session->GetDatabaseNames(NewForm->DBListBox->Items);
   NewForm->DBListBox->ItemIndex = NewForm->DBListBox->Items->IndexOf(*databaseName);
   thisIndex = NewForm->DBListBox->ItemIndex;

   if (thisIndex >= 0) {
      NewForm->TableListBox->Clear();
      Session->GetTableNames(NewForm->DBListBox->Items->Strings[NewForm->DBListBox->ItemIndex],
             "", True, False, NewForm->TableListBox->Items);

      // { remove tableNames form list }
      String temp;
      for (i= 0;i<=tableNames->Count-1;i++) {
         temp = tableNames->Strings[i];
         NewForm->SelectedTables->Items->Add(temp);
         thisIndex = NewForm->TableListBox->Items->IndexOf(temp);
         NewForm->TableListBox->Items->Delete(thisIndex);
      }
   }

   Result = (NewForm->ShowModal() == IDOK);

   if (Result) {
      *databaseName = NewForm->DBListBox->Items->Strings[NewForm->DBListBox->ItemIndex];
      tableNames->Assign(NewForm->SelectedTables->Items);
   }

   NewForm->Free();
   return(Result);
}

void __fastcall TGetTablesForm::IncludeItems()
{
   int LastPicked;
   int I = 0;
   while (I < TableListBox->Items->Count)
   {
      bool val = (TableListBox->Selected[I]);
      if (val && (!InDestList(TableListBox->Items->Strings[I])))
      {
         LastPicked = I;
         SelectedTables->Items->Add(TableListBox->Items->Strings[I]);

         TableListBox->Items->Delete(I); // {comment out to Copy items instead of Move}
      }
      else I++;
   }
   if (TableListBox->Items->Count > 0)
   {
      if (LastPicked == TableListBox->Items->Count)
         TableListBox->Selected[LastPicked-1] = True;
      else
         TableListBox->Selected[LastPicked] = True;
   }
}

void __fastcall TGetTablesForm::ExcludeItems()
{
   int I=0;

   while (SelectedTables->SelCount >0)
   {
      if (SelectedTables->Selected[I])
      {
         TableListBox->Items->Add(SelectedTables->Items->Strings[I]);
         SelectedTables->Items->Delete(I); // {comment out to Copy items instead of Move}
      }
      else I++;
   }
   ExcludeBtn->Enabled = False;
   if (SelectedTables->Items->Count != 0)
      SelectedTables->ItemIndex = 0;
   SelectDest(I);
}

//---------------------------------------------------------------------------
Boolean __fastcall TGetTablesForm::InDestList(String Value)
{
   return (SelectedTables->Items->IndexOf(Value) > -1);
}

//---------------------------------------------------------------------------
Boolean __fastcall TGetTablesForm::InSrcList(String Value)
{
   return (TableListBox->Items->IndexOf(Value) > -1);
}

//---------------------------------------------------------------------------
void __fastcall TGetTablesForm::SelectDest(int index)
{
   if (SelectedTables->Items->Count==0) index = -1;

   if (index>=0) {
      if ((SelectedTables->Items->Count>0) && (index >= SelectedTables->Items->Count))
         index = SelectedTables->Items->Count-1; //{Limit to range }
      if (!SelectedTables->Selected[index])
         SelectedTables->Selected[index] = True;

      ExcludeBtn->Enabled = True;
   }
}

//---------------------------------------------------------------------------
void __fastcall TGetTablesForm::SelectedTablesClick(TObject *Sender)
{
   SelectDest(SelectedTables->ItemIndex);
}

//---------------------------------------------------------------------
void __fastcall TGetTablesForm::DBListBoxChange(TObject *Sender)
{
   int lastIndex = DBListBox->ItemIndex;
   TableListBox->Clear();
   Session->GetTableNames(DBListBox->Items->Strings[DBListBox->ItemIndex],"", True, False,
       TableListBox->Items);
   SelectedTables->Items->Clear();
   DBListBox->ItemIndex = lastIndex;
}

//---------------------------------------------------------------------
void __fastcall TGetTablesForm::TableListBoxDblClick(TObject *Sender)
{
   int LastPicked;

   if (TableListBox->ItemIndex<0) return;

   if (!InDestList(TableListBox->Items->Strings[TableListBox->ItemIndex]))
   {
      LastPicked = TableListBox->ItemIndex;
      SelectedTables->Items->Add(TableListBox->Items->Strings[TableListBox->ItemIndex]);
      TableListBox->Items->Delete(TableListBox->ItemIndex); //{comment out to Copy items instead of Move}
   }

   if (TableListBox->Items->Count > 0)
   {
      if (LastPicked == TableListBox->Items->Count)
        TableListBox->Selected[LastPicked-1] = True;
      else
        TableListBox->Selected[LastPicked] = True;
   }
}

//---------------------------------------------------------------------
void __fastcall TGetTablesForm::SelectedTablesDblClick(TObject *Sender)
{
   int LastPicked;

   if (SelectedTables->ItemIndex<0) return;

   if (!InSrcList(SelectedTables->Items->Strings[SelectedTables->ItemIndex]))
   {
      LastPicked = SelectedTables->ItemIndex;
      TableListBox->Items->Add(SelectedTables->Items->Strings[SelectedTables->ItemIndex]);
      SelectedTables->Items->Delete(SelectedTables->ItemIndex); //{comment out to Copy items instead of Move}
   }

   if (SelectedTables->Items->Count > 0)
   {
      if (LastPicked == SelectedTables->Items->Count)
         SelectedTables->Selected[LastPicked-1] = True;
      else
         SelectedTables->Selected[LastPicked] = True;
   }
}

//---------------------------------------------------------------------
void __fastcall TGetTablesForm::IncludeBtnClick(TObject *Sender)
{
   IncludeItems();
}
//---------------------------------------------------------------------
void __fastcall TGetTablesForm::ExcludeBtnClick(TObject *Sender)
{
   ExcludeItems();
}
//---------------------------------------------------------------------
