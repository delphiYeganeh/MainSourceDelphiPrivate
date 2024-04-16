//---------------------------------------------------------------------------
#ifndef childwinH
#define childwinH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcDemoRichEdit.hpp"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TMDIChild : public TForm
{
__published:	// IDE-managed Components
        TfcDemoRichEdit *fcDemoRichEdit1;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMDIChild(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMDIChild *MDIChild;
//---------------------------------------------------------------------------
#endif
