//---------------------------------------------------------------------------
#ifndef ImagerMainH
#define ImagerMainH
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
#include "fcOutlookBar.hpp"
#include "fcShapeBtn.hpp"
#include "fcStatusBar.hpp"
#include <Buttons.hpp>
#include <CheckLst.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TImagerForm : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TBevel *Bevel1;
        TfcOutlookBar *fcOutlookBar1;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn1;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn2;
        TfcShapeBtn *fcOutlookBar1fcShapeBtn3;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label8;
        TLabel *Label17;
        TfcColorCombo *combo_Color;
        TComboBox *combo_DrawStyle;
        TTrackBar *Track_Lightness;
        TTrackBar *Track_Contrast;
        TTrackBar *Track_Sponge;
        TTrackBar *Track_GaussianBlur;
        TTrackBar *Track_Saturation;
        TTrackBar *Track_Sharpen;
        TCheckListBox *CheckListBox1;
        TMemo *CheckListBoxHints;
        TGroupBox *GroupBox1;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label11;
        TEdit *edit_Rotation_Angle;
        TEdit *edit_Rotation_X;
        TUpDown *UpDown7;
        TEdit *edit_Rotation_Y;
        TUpDown *UpDown8;
        TUpDown *UpDown9;
        TGroupBox *GroupBox2;
        TLabel *Label12;
        TLabel *Label13;
        TSpeedButton *SpeedButton2;
        TEdit *edit_AlphaBlend_Amount;
        TUpDown *UpDown10;
        TCheckBox *checkbox_AlphaBlend_Transparent;
        TGroupBox *GroupBox3;
        TLabel *Label14;
        TLabel *Label15;
        TLabel *Label16;
        TEdit *edit_Wave_Ratio;
        TUpDown *UpDown11;
        TCheckBox *checkbox_Wave_Wrap;
        TEdit *edit_Wave_XDiv;
        TEdit *edit_Wave_YDiv;
        TUpDown *UpDown12;
        TUpDown *UpDown13;
        TPanel *Panel2;
        TfcImager *fcImager1;
        TSpeedButton *SpeedButton1;
        TPanel *Panel3;
        TBevel *Bevel3;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TfcStatusBar *fcStatusBar1;
        TImageList *ImageList1;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall fcImager1Click(TObject *Sender);
        void __fastcall Track_LightnessChange(TObject *Sender);
        void __fastcall combo_DrawStyleChange(TObject *Sender);
        void __fastcall combo_ColorChange(TObject *Sender);
        void __fastcall SpeedButton1Click(TObject *Sender);
        void __fastcall CheckListBox1Click(TObject *Sender);
        void __fastcall edit_Rotation_AngleChange(TObject *Sender);
        void __fastcall edit_Rotation_XChange(TObject *Sender);
        void __fastcall SpeedButton2Click(TObject *Sender);
        void __fastcall edit_AlphaBlend_AmountChange(TObject *Sender);
        void __fastcall checkbox_AlphaBlend_TransparentClick(
          TObject *Sender);
        void __fastcall edit_Wave_XDivChange(TObject *Sender);
        void __fastcall checkbox_Wave_WrapClick(TObject *Sender);
private:	// User declarations
        TMemoryStream *FDefaultsStream;
public:		// User declarations
        __fastcall TImagerForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TImagerForm *ImagerForm;
//---------------------------------------------------------------------------
#endif
