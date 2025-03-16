//---------------------------------------------------------------------------
#ifndef imagetabformuH
#define imagetabformuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcImage.hpp"
#include "fcImageForm.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcShapeBtn.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TImageTabForm : public TForm
{
__published:	// IDE-managed Components
        TfcImageForm *fcImageForm1;
        TShape *Shape1;
        TfcLabel *fcLabel1;
        TfcShapeBtn *fcShapeBtn1;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcLabel *fcLabel2;
        TTabSheet *TabSheet2;
        TfcLabel *fcLabel3;
        TTabSheet *TabSheet3;
        TfcLabel *fcLabel4;
        TTabSheet *TabSheet4;
        TfcLabel *fcLabel5;
        TfcButtonGroup *fcButtonGroup1;
        TfcImageBtn *fcButtonGroup1fcImageBtn1;
        TfcImageBtn *fcButtonGroup1fcImageBtn2;
        TfcImageBtn *fcButtonGroup1fcImageBtn3;
        TfcImageBtn *fcButtonGroup1fcImageBtn4;
        void __fastcall fcShapeBtn1Click(TObject *Sender);
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
private:	// User declarations
public:		// User declarations
        __fastcall TImageTabForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TImageTabForm *ImageTabForm;
//---------------------------------------------------------------------------
#endif
