//---------------------------------------------------------------------------
#ifndef orderformuH
#define orderformuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImage.hpp"
#include "fcImageForm.hpp"
#include "fcImager.hpp"
#include "fcImgBtn.hpp"
#include "ShellApi.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcOutlookBar.hpp"
#include "fcShapeBtn.hpp"
//---------------------------------------------------------------------------
class TOrderForm : public TForm
{
__published:	// IDE-managed Components
        TfcImageForm *fcImageForm1;
        TfcImager *fcImager1;
        TImage *DragControl;
        TfcImageBtn *AboutButton;
        TfcImageBtn *OrderingButton;
        TfcImageBtn *PricesButton;
        TfcImageBtn *CloseBtn;
        TfcOutlookBar *fcOutlookBar1;
        TfcShapeBtn *Prices;
        TfcShapeBtn *Ordering;
        TfcShapeBtn *About;
        TfcDemoRichEdit *RichEditOrdering;
        TfcDemoRichEdit *RichEditAbout;
        TfcDemoRichEdit *RichEditPrices;
        void __fastcall OrderingButtonClick(TObject *Sender);
        void __fastcall AboutButtonClick(TObject *Sender);
        void __fastcall PricesButtonClick(TObject *Sender);
        void __fastcall CloseBtnClick(TObject *Sender);
        void __fastcall OrderingDescriptionMouseMove(TObject *Sender,
          TShiftState Shift, int X, int Y);
        void __fastcall OrderingDescriptionMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
private:	// User declarations
public:		// User declarations
        __fastcall TOrderForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TOrderForm *OrderForm;
//---------------------------------------------------------------------------
#endif
