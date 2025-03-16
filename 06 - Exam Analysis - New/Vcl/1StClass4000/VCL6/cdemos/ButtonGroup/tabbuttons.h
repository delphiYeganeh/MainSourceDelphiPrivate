//---------------------------------------------------------------------------
#ifndef tabbuttonsH
#define tabbuttonsH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TTabBtnGroupForm : public TForm
{
__published:	// IDE-managed Components
        TShape *Shape1;
        TfcLabel *fcLabel1;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcLabel *fcLabel2;
        TTabSheet *TabSheet2;
        TfcLabel *fcLabel3;
        TTabSheet *TabSheet3;
        TfcLabel *fcLabel6;
        TTabSheet *TabSheet4;
        TfcLabel *fcLabel5;
        TTabSheet *TabSheet5;
        TfcLabel *fcLabel4;
        TTabSheet *TabSheet6;
        TfcLabel *fcLabel7;
        TTabSheet *TabSheet7;
        TfcLabel *fcLabel8;
        TfcButtonGroup *fcButtonGroup1;
        TfcImageBtn *fcButtonGroup1fcImageBtn1;
        TfcImageBtn *fcButtonGroup1fcImageBtn2;
        TfcImageBtn *fcButtonGroup1fcImageBtn3;
        TfcImageBtn *fcButtonGroup1fcImageBtn4;
        TfcImageBtn *fcButtonGroup1fcImageBtn5;
        TfcImageBtn *fcButtonGroup1fcImageBtn6;
        TfcImageBtn *fcButtonGroup1fcImageBtn7;
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
private:	// User declarations
public:		// User declarations
        __fastcall TTabBtnGroupForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTabBtnGroupForm *TabBtnGroupForm;
//---------------------------------------------------------------------------
#endif
