//---------------------------------------------------------------------------
#ifndef TreeCombosH
#define TreeCombosH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcCombo.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcFontCombo.hpp"
#include "fcTreeCombo.hpp"
#include <CheckLst.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include "fctreecombo.hpp"
//---------------------------------------------------------------------------
class TTreeComboDemoForm : public TForm
{
__published:	// IDE-managed Components
        TGroupBox *GroupBox1;
        TCheckListBox *CheckListBox;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TBevel *Bevel2;
        TLabel *Label1;
        TLabel *Label2;
        TfcTreeCombo *TreeCombo2;
        TfcTreeCombo *TreeCombo1;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TBevel *Bevel1;
        TLabel *Label3;
        TfcFontCombo *fcFontCombo1;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TImageList *ImageList1;
        void __fastcall PageControl1Change(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall CheckListBoxClickCheck(TObject *Sender);
        void __fastcall ComboEnter(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TTreeComboDemoForm(TComponent* Owner);
       TfcCustomTreeCombo *ActiveCombo;
};
//---------------------------------------------------------------------------
extern PACKAGE TTreeComboDemoForm *TreeComboDemoForm;
//---------------------------------------------------------------------------
#endif
