//---------------------------------------------------------------------------
#ifndef colordemouH
#define colordemouH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcColorCombo.hpp"
#include "fcCombo.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcLabel.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TColorDemoForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TPanel *Panel1;
        TShape *Shape1;
        TfcColorCombo *fcColorCombo1;
        TPanel *Panel2;
        TLabel *itemheightlabel;
        TLabel *dropdowncountlabel;
        TLabel *dropdownwidthlabel;
        TLabel *DropDownTitle;
        TBevel *Bevel1;
        TGroupBox *ColorListBoxOptions;
        TCheckBox *CheckBox5;
        TCheckBox *CheckBox4;
        TCheckBox *CheckBox3;
        TCheckBox *CheckBox2;
        TCheckBox *CheckBox1;
        TUpDown *UpDown1;
        TUpDown *UpDown2;
        TEdit *DropDownCountEdit;
        TEdit *DropDownWidthEdit;
        TEdit *ItemHeightEdit;
        TUpDown *UpDown4;
        TRadioGroup *SortByRadio;
        TPanel *Panel3;
        TLabel *AppearanceTitle;
        TBevel *Bevel2;
        TLabel *Colorwidthlabel;
        TCheckBox *ShowMatchCheckbox;
        TCheckBox *ShowButtonCheckbox;
        TRadioGroup *ButtonStyleRadio;
        TRadioGroup *ColorAlignmentRadio;
        TEdit *ColorWidthEdit;
        TUpDown *UpDown3;
        TCheckBox *CheckBox6;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TfcLabel *fcLabel1;
        TfcLabel *fcLabel2;
        TfcLabel *fcLabel3;
        TfcLabel *fcLabel4;
        TfcLabel *fcLabel5;
        TfcLabel *fcLabel6;
        TfcLabel *fcLabel7;
        TfcColorList *fcColorList3;
        TfcColorList *fcColorList2;
        TfcColorList *fcColorList4;
        TfcColorList *fcColorList1;
        void __fastcall CheckBox6Click(TObject *Sender);
        void __fastcall fcColorCombo1Change(TObject *Sender);
        void __fastcall ColorAlignmentRadioClick(TObject *Sender);
        void __fastcall ButtonStyleRadioClick(TObject *Sender);
        void __fastcall ShowMatchCheckboxClick(TObject *Sender);
        void __fastcall ShowButtonCheckboxClick(TObject *Sender);
        void __fastcall SortByRadioClick(TObject *Sender);
        void __fastcall CheckBox1Click(TObject *Sender);
        void __fastcall ColorWidthEditExit(TObject *Sender);
        void __fastcall ItemHeightEditExit(TObject *Sender);
        void __fastcall UpDown3Click(TObject *Sender, TUDBtnType Button);
        void __fastcall UpDown4Click(TObject *Sender, TUDBtnType Button);
        void __fastcall DropDownCountEditExit(TObject *Sender);
        void __fastcall DropDownWidthEditExit(TObject *Sender);
        void __fastcall fcColorCombo1DropDown(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TColorDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TColorDemoForm *ColorDemoForm;
//---------------------------------------------------------------------------
#endif
