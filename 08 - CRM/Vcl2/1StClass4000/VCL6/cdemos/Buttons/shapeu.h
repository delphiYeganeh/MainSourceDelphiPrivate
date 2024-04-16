//---------------------------------------------------------------------------
#ifndef shapeuH
#define shapeuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcDemoRichEdit.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcShapeBtn.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TShapeBtnDemoForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TPanel *Panel2;
        TBevel *Bevel2;
        TfcLabel *fcLabel1;
        TfcShapeBtn *ButtonArrowLeft;
        TfcShapeBtn *ButtonArrowRight;
        TfcShapeBtn *ButtonDiamond;
        TfcShapeBtn *ButtonRoundRect1;
        TfcShapeBtn *ButtonEllipse;
        TfcShapeBtn *ButtonRoundRect2;
        TfcShapeBtn *ButtonStar;
        TfcShapeBtn *ButtonRoundRect3;
        TfcShapeBtn *ButtonTriangle;
        TfcShapeBtn *ButtonTrapezoid;
        TPanel *Panel11;
        TfcLabel *fcLabel2;
        TfcShapeBtn *RightButton1;
        TTabSheet *TabSheet3;
        TPanel *Panel3;
        TBevel *Bevel1;
        TLabel *Label5;
        TLabel *Label6;
        TfcShapeBtn *CustomButton1;
        TfcShapeBtn *CustomCrossButton;
        TfcShapeBtn *CustomArrowButton;
        TRadioGroup *RadioGroup1;
        TfcShapeBtn *CustomLButton1;
        TfcShapeBtn *CustomLButton2;
        TfcShapeBtn *CustomLButton3;
        TfcShapeBtn *CustomTriangleButton;
        TfcShapeBtn *CustomTrapezoidButton;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TPanel *Panel12;
        TfcLabel *fcLabel9;
        TfcShapeBtn *RightButton2;
        TfcShapeBtn *LeftButton1;
        TTabSheet *TabSheet4;
        TPanel *Panel4;
        TfcShapeBtn *ButtonMultiLine2;
        TfcShapeBtn *ButtonTextEffects1;
        TfcShapeBtn *ButtonMultiLine1;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TPanel *Panel13;
        TfcLabel *fcLabel4;
        TfcShapeBtn *RightButton3;
        TfcShapeBtn *LeftButton2;
        TTabSheet *TabSheet5;
        TPanel *Panel5;
        TBevel *Bevel3;
        TBevel *Bevel4;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TfcLabel *fcLabel6;
        TfcLabel *fcLabel7;
        TfcShapeBtn *ButtonSpeedStar;
        TfcShapeBtn *ButtonSpeedArrow;
        TfcShapeBtn *fcShapeBtn1;
        TfcShapeBtn *fcShapeBtn2;
        TfcShapeBtn *fcShapeBtn3;
        TfcShapeBtn *fcShapeBtn7;
        TfcShapeBtn *fcShapeBtn6;
        TfcShapeBtn *fcShapeBtn5;
        TEdit *Edit1;
        TfcShapeBtn *fcShapeBtn8;
        TfcShapeBtn *fcShapeBtn9;
        TfcShapeBtn *fcShapeBtn10;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TPanel *Panel14;
        TfcLabel *fcLabel3;
        TfcShapeBtn *RightButton4;
        TfcShapeBtn *LeftButton3;
        TTabSheet *TabSheet6;
        TPanel *Panel6;
        TfcLabel *fcLabel5;
        TfcShapeBtn *ButtonGlyphHotTrack;
        TfcShapeBtn *ButtonHotTrack;
        TfcShapeBtn *ButtonColored;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TPanel *Panel15;
        TfcLabel *fcLabel8;
        TfcShapeBtn *LeftButton4;
        void __fastcall RightButton1Click(TObject *Sender);
        void __fastcall LeftButton1Click(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
        void __fastcall ButtonColoredMouseLeave(TObject *Sender);
        void __fastcall ButtonGlyphHotTrackMouseEnter(TObject *Sender);
        void __fastcall ButtonGlyphHotTrackMouseLeave(TObject *Sender);
        void __fastcall ButtonHotTrackMouseEnter(TObject *Sender);
        void __fastcall ButtonHotTrackMouseLeave(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TShapeBtnDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TShapeBtnDemoForm *ShapeBtnDemoForm;
//---------------------------------------------------------------------------
#endif
