//
// Components : TwwSaveFilter
//
// Copyright (c) 1997 by Woll2Woll Software
//
//---------------------------------------------------------------------------
#ifndef wwtestH
#define wwtestH
//---------------------------------------------------------------------------
#include <vcl\sysutils.hpp>
#include <vcl\controls.hpp>
#include <vcl\classes.hpp>
#include <vcl\forms.hpp>
#include <wwfltdlg.hpp>
//---------------------------------------------------------------------------
class TwwSaveFilter : public TComponent
{
private:
   System::String FDelimiter;
   System::String FFilePath;
protected:
   bool FOverwriteMessage;
   bool FCalledBySave;
   TwwFilterDialog *FFilterDialog;

   void _fastcall SetFilterDialog(TwwFilterDialog * val);
   virtual void _fastcall Notification(TComponent * AComponent,
               TOperation Operation);

public:
   virtual __fastcall TwwSaveFilter(TComponent* Owner);
   virtual __fastcall ~TwwSaveFilter();
   virtual void __fastcall SaveFilter(System::AnsiString FilterName);
   virtual bool __fastcall DeleteFilter(System::AnsiString FilterName);
   virtual int __fastcall LoadFilter(System::AnsiString FilterName);
   virtual bool __fastcall GetFilterNames(TStrings *AFilterNames);
   virtual bool __fastcall FilterExists(System::AnsiString FilterName);

__published:
   __property System::AnsiString Delimiter = {read=FDelimiter,write=FDelimiter,nodefault};
   __property System::AnsiString FilePath = {read=FFilePath,write=FFilePath,nodefault};
   __property bool OverwriteMessage = {read=FOverwriteMessage,write=FOverwriteMessage,nodefault};
   __property TwwFilterDialog *wwFilterDialog = {read=FFilterDialog,write=SetFilterDialog,nodefault};
};
//---------------------------------------------------------------------------
#endif
