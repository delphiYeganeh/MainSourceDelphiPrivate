//---------------------------------------------------------------------------
#ifndef statusbaruH
#define statusbaruH
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
#include "ShellAPI.hpp"
#include "fcStatusBar.hpp"
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include "CGAUGES.h"
//---------------------------------------------------------------------------
class TStatusBarDemoForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet2;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TfcStatusBar *fcStatusBar2;
        TTabSheet *TabSheet3;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TfcStatusBar *fcStatusBar3;
        TTabSheet *TabSheet4;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TfcStatusBar *fcStatusBar4;
        TTabSheet *TabSheet5;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TfcStatusBar *fcStatusBar5;
        TTabSheet *TabSheet6;
        TfcDemoRichEdit *fcDemoRichEdit6;
        TfcStatusBar *fcStatusBar6;
        TTabSheet *TabSheet7;
        TfcDemoRichEdit *fcDemoRichEdit7;
        TfcStatusBar *fcStatusBar7;
        TTabSheet *TabSheet8;
        TfcDemoRichEdit *fcDemoRichEdit8;
        TfcStatusBar *fcStatusBar8;
        TSpeedButton *SpeedButton1;
        TProgressBar *ProgressBar1;
        TPanel *Panel1;
        TfcLabel *fcLabel1;
        TfcButtonGroup *fcButtonGroup1;
        TfcImageBtn *Keyboardstyles;
        TfcImageBtn *datetimestyles;
        TfcImageBtn *computerinfostyle;
        TfcImageBtn *imagestyle;
        TfcImageBtn *hintsstyle;
        TfcImageBtn *RichEditstyle;
        TfcImageBtn *customcontrolstyle;
        TMainMenu *MainMenu1;
        TMenuItem *Main1;
        TMenuItem *Close1;
        TMenuItem *Secondary1;
        TMenuItem *Control1;
        TMenuItem *Item1;
        TMenuItem *psMenu1;
        TMenuItem *Item11;
        TMenuItem *Menu1;
        TMenuItem *RichEditRowCol1;
        TMenuItem *Item3;
        TImageList *ImageList1;
        TTimer *Timer1;
        TAnimate *Animate1;
        TCGauge *CGauge1;
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall Close1Click(TObject *Sender);
        void __fastcall fcLabel1Click(TObject *Sender);
        void __fastcall fcLabel1MouseEnter(TObject *Sender);
        void __fastcall fcLabel1MouseLeave(TObject *Sender);
        void __fastcall fcStatusBar7Panels0DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall fcStatusBar7Panels1DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall fcStatusBar7Panels3DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall fcStatusBar4Panels0DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall fcStatusBar4Panels1DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall fcStatusBar3Panels3DrawText(TfcStatusPanel *Panel,
          AnsiString &Text, bool &Enabled);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall Control1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TStatusBarDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TStatusBarDemoForm *StatusBarDemoForm;
//---------------------------------------------------------------------------
#endif
