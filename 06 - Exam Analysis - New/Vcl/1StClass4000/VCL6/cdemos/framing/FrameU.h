//---------------------------------------------------------------------------
#ifndef frameuH
#define frameuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcCombo.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImage.hpp"
#include "fcImageForm.hpp"
#include "fcImager.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcShapeBtn.hpp"
#include "fctreecombo.hpp"
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TFrameDemoForm : public TForm
{
__published:	// IDE-managed Components
        TfcImageForm *fcImageForm1;
        TfcImager *TileImager;
        TBevel *Bevel2;
        TBevel *Bevel1;
        TShape *Shape1;
        TLabel *Label1;
        TLabel *Label18;
        TImage *Image1;
        TfcLabel *fcLabel1;
        TfcLabel *fcLabel2;
        TfcLabel *fcLabel3;
        TfcLabel *fcLabel4;
        TfcLabel *fcLabel5;
        TfcLabel *fcLabel6;
        TfcLabel *fcLabel7;
        TfcLabel *fcLabel8;
        TfcLabel *fcLabel9;
        TfcImager *fcImager6;
        TfcImager *MosaicImager;
        TfcImager *WrinkleImager;
        TfcImager *LinenImager;
        TfcImager *ParchmentImager;
        TBitBtn *BitBtn1;
        TfcTreeCombo *fcTreeCombo4;
        TfcShapeBtn *fcShapeBtn1;
        TfcTreeCombo *fcTreeCombo5;
        TfcTreeCombo *fcTreeCombo1;
        TfcTreeCombo *fcTreeCombo2;
        TfcTreeCombo *BackgroundCombo;
        TfcTreeCombo *FrameCombo;
        TfcTreeCombo *fcTreeCombo3;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TImageList *ImageList1;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall BackgroundComboChange(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FrameComboChange(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TFrameDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrameDemoForm *FrameDemoForm;
//---------------------------------------------------------------------------
#endif
