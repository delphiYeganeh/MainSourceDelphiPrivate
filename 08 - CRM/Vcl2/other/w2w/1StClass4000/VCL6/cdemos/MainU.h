//---------------------------------------------------------------------------
#ifndef MainUH
#define MainUH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImage.hpp"
#include "fcImageForm.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcOutlookBar.hpp"
#include "fcShapeBtn.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
        TfcImageForm *fcImageForm1;
        TShape *Shape1;
        TfcLabel *TitleLabel;
        TfcLabel *fcLabel2;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcShapeBtn *DemoButtonOutlookBar;
        TfcShapeBtn *fcShapeBtn8;
        TTabSheet *TabSheet2;
        TGroupBox *GroupBox5;
        TfcShapeBtn *DemoButtonDBTreeView;
        TGroupBox *GroupBox6;
        TfcShapeBtn *DemoButtonTreeView;
        TTabSheet *TabSheet3;
        TfcShapeBtn *DemoButtonImageForm;
        TfcShapeBtn *fcShapeBtn4;
        TTabSheet *TabSheet4;
        TGroupBox *GroupBox1;
        TfcShapeBtn *DemoButtonLabel;
        TGroupBox *GroupBox3;
        TfcShapeBtn *DemoButtonImageBtn;
        TfcShapeBtn *fcShapeBtn1;
        TGroupBox *GroupBox2;
        TfcShapeBtn *DemoButtonShapeBtn1;
        TTabSheet *TabSheet5;
        TfcShapeBtn *DemoButtonButtonGroup;
        TfcShapeBtn *fcShapeBtn2;
        TfcShapeBtn *fcShapeBtn5;
        TTabSheet *TabSheet6;
        TGroupBox *GroupBox4;
        TfcShapeBtn *DemoButtonColor;
        TGroupBox *GroupBox7;
        TfcShapeBtn *DemoButtonTreeCombo;
        TTabSheet *TabSheet7;
        TfcShapeBtn *DemoButtonStatusBar;
        TfcShapeBtn *fcShapeBtn7;
        TTabSheet *TabSheet8;
        TfcShapeBtn *DemoButtonTiler;
        TfcShapeBtn *fcShapeBtn6;
        TfcButtonGroup *fcButtonGroup1;
        TfcShapeBtn *DemoBtnOutlookBar;
        TfcShapeBtn *DemoBtnTreeview;
        TfcShapeBtn *DemoBtnImageForm;
        TfcShapeBtn *DemoBtnLabelButtons;
        TfcShapeBtn *DemoBtnButtonGroup;
        TfcShapeBtn *DemoBtnCombos;
        TfcShapeBtn *DemoBtnStatusBar;
        TfcShapeBtn *DemoBtnImager;
        TfcShapeBtn *fcShapeBtn3;
        TfcImageBtn *fcImageBtn1;
        TfcOutlookBar *fcOutlookBar1;
        TfcShapeBtn *RichEditPage1;
        TfcShapeBtn *RichEditPage2;
        TfcShapeBtn *RichEditPage3;
        TfcShapeBtn *RichEditPage4;
        TfcShapeBtn *RichEditPage5;
        TfcShapeBtn *RichEditPage6;
        TfcShapeBtn *RichEditPage7;
        TfcShapeBtn *RichEditPage8;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TfcDemoRichEdit *fcDemoRichEdit6;
        TfcDemoRichEdit *fcDemoRichEdit7;
        TfcDemoRichEdit *fcDemoRichEdit8;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TfcImageBtn *fcImageBtn2;
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall fcShapeBtn8Click(TObject *Sender);
        void __fastcall DemoButtonOutlookBarClick(TObject *Sender);
        void __fastcall DemoButtonTreeViewClick(TObject *Sender);
        void __fastcall DemoButtonDBTreeViewClick(TObject *Sender);
        void __fastcall DemoButtonImageFormClick(TObject *Sender);
        void __fastcall fcShapeBtn4Click(TObject *Sender);
        void __fastcall DemoButtonLabelClick(TObject *Sender);
        void __fastcall DemoButtonShapeBtn1Click(TObject *Sender);
        void __fastcall DemoButtonImageBtnClick(TObject *Sender);
        void __fastcall fcShapeBtn1Click(TObject *Sender);
        void __fastcall fcShapeBtn5Click(TObject *Sender);
        void __fastcall fcShapeBtn2Click(TObject *Sender);
        void __fastcall DemoButtonButtonGroupClick(TObject *Sender);
        void __fastcall DemoButtonColorClick(TObject *Sender);
        void __fastcall DemoButtonTreeComboClick(TObject *Sender);
        void __fastcall DemoButtonStatusBarClick(TObject *Sender);
        void __fastcall fcShapeBtn7Click(TObject *Sender);
        void __fastcall DemoButtonTilerClick(TObject *Sender);
        void __fastcall fcShapeBtn6Click(TObject *Sender);
        void __fastcall fcShapeBtn3Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall fcImageBtn2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMainForm(TComponent* Owner);
        void ExecuteDemo(TForm* AForm);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
