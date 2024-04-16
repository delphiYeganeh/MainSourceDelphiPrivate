//---------------------------------------------------------------------------
#ifndef proportionaluH
#define proportionaluH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcDemoRichEdit.hpp"
#include "fcStatusBar.hpp"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TProportionalStatusBarForm : public TForm
{
__published:	// IDE-managed Components
        TfcStatusBar *fcStatusBar1;
        TfcDemoRichEdit *fcDemoRichEdit1;
private:	// User declarations
public:		// User declarations
        __fastcall TProportionalStatusBarForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TProportionalStatusBarForm *ProportionalStatusBarForm;
//---------------------------------------------------------------------------
#endif
