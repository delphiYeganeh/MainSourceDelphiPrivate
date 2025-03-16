//---------------------------------------------------------------------------
#ifndef TilerUnitH
#define TilerUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcImager.hpp"
#include "fcLabel.hpp"
#include "fcOutlookList.hpp"
#include <ImgList.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcImgBtn.hpp"
#include "fcOutlookBar.hpp"
#include "fcShapeBtn.hpp"
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TTilerDemoForm : public TForm
{
__published:	// IDE-managed Components
        TfcImager *fcImager1;
        TfcLabel *fcLabel1;
        TImageList *ImageList1;
        TfcOutlookBar *fcOutlookBar1;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn1;
        TfcOutlookList *fcControlBar1OutlookList2;
        void __fastcall fcControlBar1OutlookList1ItemChange(
          TfcCustomOutlookList *OutlookList, TfcOutlookListItem *Item);
private:	// User declarations
public:		// User declarations
        __fastcall TTilerDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTilerDemoForm *TilerDemoForm;
//---------------------------------------------------------------------------
#endif
