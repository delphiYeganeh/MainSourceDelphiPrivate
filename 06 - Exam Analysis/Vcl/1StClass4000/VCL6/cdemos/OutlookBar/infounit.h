//---------------------------------------------------------------------------
#ifndef infounitH
#define infounitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcDemoRichEdit.hpp"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TInfoForm : public TForm
{
__published:	// IDE-managed Components
        TfcDemoRichEdit *fcDemoRichEdit1;
private:	// User declarations
public:		// User declarations
        __fastcall TInfoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TInfoForm *InfoForm;
//---------------------------------------------------------------------------
#endif
