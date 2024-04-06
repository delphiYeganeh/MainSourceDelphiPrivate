//---------------------------------------------------------------------------
#include <vcl\vcl.h>
#pragma hdrstop

#include "Packtest.h"
#include "Packdlgs.h"
//---------------------------------------------------------------------------

#pragma resource "*.dfm"
TPackMain *PackMain;
//---------------------------------------------------------------------------
__fastcall TPackMain::TPackMain(TComponent* Owner)
  : TForm(Owner)
{
}

//---------------------------------------------------------------------------
void __fastcall TPackMain::CreateResultsTable()
{
   ResultsTable->Active = False;
   ResultsTable->DatabaseName = Session->PrivateDir;
   ResultsTable->TableName = "packrslt.db";
   ResultsTable->TableType = ttDefault;
   ResultsTable->FieldDefs->Clear();
   ResultsTable->FieldDefs->Add("Table Name", ftString,  15, False);
   ResultsTable->FieldDefs->Add("Pack Status", ftString, 35, False);
   ResultsTable->IndexDefs->Clear();
   ResultsTable->CreateTable();
   ResultsTable->Active = True;
}
//---------------------------------------------------------------------------
void __fastcall TPackMain::FormActivate(TObject *Sender)
{
   if (!initialized) CreateResultsTable();
   initialized= True;
}
//---------------------------------------------------------------------
void __fastcall TPackMain::BitBtn1Click(TObject *Sender)
{
   String StatusMsg;

   PackTable->DatabaseName = AliasName->Caption;

   ResultsTable->First();

   while (!ResultsTable->Eof)
   {
      PackTable->TableName = ResultsTable->FieldByName("Table Name")->Text;
      ResultsTable->Edit();
      if (!PackTable->Pack(StatusMsg))
         ResultsTable->FieldByName("Pack Status")->Text = StatusMsg;
      else
         ResultsTable->FieldByName("Pack Status")->Text = "Success";
      ResultsTable->Post();
      ResultsTable->Next();
   }
}
//---------------------------------------------------------------------
void __fastcall TPackMain::BitBtn2Click(TObject *Sender)
{
   String databaseName;
   TStrings *tableList;
   int i;

   tableList = new TStringList();
   databaseName = AliasName->Caption;

   ResultsTable->DisableControls();
   ResultsTable->First();
   while (!ResultsTable->Eof) {
      tableList->Add(ResultsTable->FieldByName("Table Name")->Text);
      ResultsTable->Next();
   }
   ResultsTable->EnableControls();

   if (wwGetTablesDlg(&databaseName, tableList)) {
      CreateResultsTable();
      for (i=tableList->Count-1;i>=0;i--) {
         ResultsTable->Insert();
         ResultsTable->FieldByName("Table Name")->Text = tableList->Strings[i];
         ResultsTable->Post();
      }
      AliasName->Caption = databaseName;
      tableList->Free();
   }
}
//---------------------------------------------------------------------