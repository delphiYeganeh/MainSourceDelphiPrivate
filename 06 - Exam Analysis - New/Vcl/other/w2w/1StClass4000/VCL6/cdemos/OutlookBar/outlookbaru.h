//---------------------------------------------------------------------------
#ifndef outlookbaruH
#define outlookbaruH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcOutlookBar.hpp"
#include "fcOutlookList.hpp"
#include "fcShapeBtn.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include "fcCombo.hpp"
#include "fcImager.hpp"
#include "fctreecombo.hpp"
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TOutlookBarForm : public TForm
{
__published:	// IDE-managed Components
        TfcOutlookBar *fcOutlookBar1;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn1;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn2;
        TfcOutlookList *fcOutlookBar1OutlookList1;
        TfcLabel *fcLabel3;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TImageList *ImageList1;
        TfcOutlookBar *fcOutlookBar2;
        TfcImager *fcImager1;
        TfcImageBtn *fcOutlookBar2fcImageBtn1;
        TfcImageBtn *fcOutlookBar2fcImageBtn2;
        TfcImageBtn *fcOutlookBar2fcImageBtn3;
        TfcLabel *fcLabel4;
        TEdit *Edit1;
        TfcShapeBtn *fcShapeBtn1;
        TfcTreeCombo *fcTreeCombo1;
        TfcLabel *fcLabel1;
        TfcLabel *fcLabel2;
        TCheckBox *CheckBox5;
        void __fastcall CheckBox5Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TOutlookBarForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TOutlookBarForm *OutlookBarForm;
//---------------------------------------------------------------------------
#endif
