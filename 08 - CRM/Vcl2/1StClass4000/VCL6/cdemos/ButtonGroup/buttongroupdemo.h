//---------------------------------------------------------------------------
#ifndef buttongroupdemoH
#define buttongroupdemoH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcColorCombo.hpp"
#include "fcCombo.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImager.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcShapeBtn.hpp"
#include "fcTreeCombo.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
#include "fctreecombo.hpp"
//---------------------------------------------------------------------------
class TButtonGroupDemoForm : public TForm
{
__published:	// IDE-managed Components
        TfcLabel *fcLabel17;
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcImager *fcImager1;
        TGroupBox *GroupBox1;
        TfcLabel *fcLabel1;
        TfcLabel *fcLabel2;
        TfcLabel *fcLabel3;
        TfcLabel *fcLabel4;
        TfcLabel *fcLabel16;
        TfcColorCombo *DownColorCombo;
        TfcColorCombo *HotTrackColorCombo;
        TfcColorCombo *FontColorCombo;
        TfcColorCombo *UpColorCombo;
        TfcButtonGroup *HotTrackBtnGroup;
        TfcImageBtn *SlantOval1;
        TfcImageBtn *SlantOval2;
        TfcImageBtn *SlantOval3;
        TfcImageBtn *SlantOval4;
        TfcImageBtn *SlantOval5;
        TfcImageBtn *SlantOval6;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TGroupBox *GroupBox2;
        TfcLabel *fcLabel5;
        TfcLabel *fcLabel10;
        TfcTreeCombo *ShapeCombo;
        TfcTreeCombo *OrientationCombo;
        TRadioGroup *RadioGroup1;
        TGroupBox *GroupBox4;
        TfcButtonGroup *ShapeBtnGroup1;
        TfcShapeBtn *ShapeBtnGroup1fcShapeBtn1;
        TfcShapeBtn *ShapeBtnGroup1fcShapeBtn2;
        TfcShapeBtn *ShapeBtnGroup1fcShapeBtn3;
        TfcShapeBtn *ShapeBtnGroup1fcShapeBtn4;
        TfcShapeBtn *ShapeBtnGroup1fcShapeBtn5;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TTabSheet *TabSheet3;
        TfcButtonGroup *OvalSlantBtnGroup2;
        TfcImageBtn *Right;
        TfcImageBtn *Up;
        TfcImageBtn *Left;
        TfcImageBtn *Down;
        TfcButtonGroup *DiamondBtnGroup;
        TfcImageBtn *Diamond;
        TfcImageBtn *Diamond2;
        TfcImageBtn *Diamond3;
        TfcImageBtn *Diamond4;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TTabSheet *TabSheet4;
        TShape *Shape1;
        TfcImager *fcImager2;
        TBevel *Bevel2;
        TCheckBox *CheckBox1;
        TfcButtonGroup *OvalImageBtnGroup;
        TfcImageBtn *OvalGold;
        TfcImageBtn *OvalGold2;
        TfcImageBtn *OvalGold3;
        TfcButtonGroup *CheckBoxEditBtnGroup;
        TfcImageBtn *CheckboxButtonEdt;
        TfcImageBtn *CheckBoxBtnEdit2;
        TfcImageBtn *CheckBoxBtnEdit3;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TTabSheet *TabSheet5;
        TfcLabel *fcLabel12;
        TfcImager *fcImager3;
        TfcButtonGroup *MultiColumnBtnGroup;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn1;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn2;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn3;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn4;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn5;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn6;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn7;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn8;
        TfcShapeBtn *MultiColumnBtnGroupfcShapeBtn9;
        TPanel *Panel1;
        TfcLabel *fcLabel9;
        TfcButtonGroup *HorizontalShapeBtnGroup;
        TfcShapeBtn *Choice1;
        TfcShapeBtn *Choice2;
        TfcShapeBtn *Choice3;
        TfcShapeBtn *Choice4;
        TPanel *Panel2;
        TfcLabel *fcLabel11;
        TBevel *Bevel1;
        TfcButtonGroup *VerticalShapeBtnGroup2;
        TfcShapeBtn *RoundRectShape1;
        TfcShapeBtn *RoundRectShape2;
        TfcShapeBtn *RoundRectShape3;
        TCheckBox *CheckBox2;
        TRadioGroup *RadioGroup2;
        TfcButtonGroup *HorizontalImageBtnGroup;
        TfcImageBtn *Bar1;
        TfcImageBtn *Bar2;
        TfcImageBtn *Bar3;
        TfcImageBtn *Bar4;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TTabSheet *TabSheet6;
        TRichEdit *RichEdit6;
        TImageList *ImageList1;
        void __fastcall SlantOval1MouseEnter(TObject *Sender);
        void __fastcall SlantOval1MouseLeave(TObject *Sender);
        void __fastcall HotTrackBtnGroupChange(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall DownColorComboChange(TObject *Sender);
        void __fastcall FontColorComboChange(TObject *Sender);
        void __fastcall ShapeComboChange(TObject *Sender);
        void __fastcall OrientationComboChange(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
        void __fastcall CheckBox1Click(TObject *Sender);
        void __fastcall CheckBox2Click(TObject *Sender);
        void __fastcall RadioGroup2Click(TObject *Sender);
        void __fastcall UpColorComboChange(TObject *Sender);
        void __fastcall HorizontalImageBtnGroupChange(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall OvalSlantBtnGroup2Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TButtonGroupDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TButtonGroupDemoForm *ButtonGroupDemoForm;
//---------------------------------------------------------------------------
#endif
