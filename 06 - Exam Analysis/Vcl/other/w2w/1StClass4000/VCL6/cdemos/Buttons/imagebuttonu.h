//---------------------------------------------------------------------------
#ifndef imagebuttonuH
#define imagebuttonuH
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
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcTreeCombo.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TImageBtnDemoForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TPanel *Panel10;
        TfcLabel *fcLabel1;
        TPanel *Panel7;
        TBevel *Bevel1;
        TImage *LightSwitch;
        TfcLabel *LEDLabel;
        TfcLabel *switchlabel;
        TfcLabel *fcLabel4;
        TfcLabel *tacklabel2;
        TBevel *Bevel2;
        TfcLabel *CountryLabel;
        TfcLabel *Checkboxlabel;
        TPanel *Panel2;
        TfcImageBtn *NorthAmerica;
        TfcImageBtn *Europe;
        TfcImageBtn *Asia;
        TfcImageBtn *Africa;
        TfcImageBtn *Australia;
        TfcImageBtn *SouthAmerica;
        TfcImageBtn *LightSwitch1;
        TfcImageBtn *led4;
        TfcImageBtn *TackButton;
        TfcImageBtn *Checkboxbtn;
        TfcDemoRichEdit *TfcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TPanel *Panel1;
        TfcLabel *fcLabel2;
        TPanel *Panel6;
        TLabel *StyleLabel1;
        TLabel *StyleLabel2;
        TLabel *StyleLabel3;
        TLabel *StyleLabel4;
        TLabel *Label5;
        TfcImageBtn *CompBtnFlat;
        TfcImageBtn *CompBtnHighlight;
        TfcImageBtn *CompBtnNormal;
        TfcImageBtn *CompBtnRaised;
        TfcImageBtn *Roundflat;
        TfcImageBtn *RoundHighlight;
        TfcImageBtn *RoundNormal;
        TfcImageBtn *RoundRaised;
        TfcImageBtn *KnightNormal;
        TfcImageBtn *KnightRaised;
        TfcImageBtn *KnightFlat;
        TfcImageBtn *StarFlat;
        TfcImageBtn *StarHighlight;
        TfcImageBtn *StarNormal;
        TfcImageBtn *StarRaised;
        TfcImageBtn *ComputerImage;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TTabSheet *TabSheet3;
        TPanel *Panel4;
        TfcLabel *fcLabel3;
        TPanel *Panel5;
        TGroupBox *GroupBox2;
        TLabel *DitherLabel3;
        TLabel *DitherLabel2;
        TLabel *DitherLabel1;
        TfcLabel *fcLabel12;
        TfcImageBtn *Butterfly1;
        TfcImageBtn *Butterfly2;
        TfcImageBtn *Butterfly3;
        TfcColorCombo *fcColorCombo2;
        TPanel *Panel13;
        TfcLabel *fcLabel7;
        TfcLabel *fcLabel8;
        TBevel *Bevel4;
        TLabel *Label1;
        TfcImageBtn *puz1;
        TfcImageBtn *puz3;
        TfcImageBtn *puz4;
        TfcImageBtn *puz2;
        TfcImageBtn *puz5;
        TfcColorCombo *fcColorCombo1;
        TfcTreeCombo *fcImageCombo1;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TTabSheet *TabSheet4;
        TPanel *Panel9;
        TfcLabel *fcLabel5;
        TPanel *Panel12;
        TBevel *Bevel3;
        TfcLabel *TackLabel;
        TfcLabel *fcLabel9;
        TfcLabel *fcLabel10;
        TfcLabel *fcLabel11;
        TLabel *Label10;
        TLabel *Label11;
        TLabel *Label12;
        TfcLabel *SwitchTitleLabel;
        TfcLabel *InfoLabel;
        TfcImageBtn *LightButton3;
        TfcImageBtn *LightButton2;
        TfcImageBtn *lightbutton1;
        TfcImageBtn *Switch1;
        TfcImageBtn *Switch2;
        TfcImageBtn *LEDButton;
        TfcImageBtn *CoolCheckbox;
        TfcImageBtn *ThumbTack;
        TfcImageBtn *Switch3;
        TfcImageBtn *PushPin;
        TfcImageBtn *SwitchBox;
        TfcImageBtn *HandleButton;
        TGroupBox *GroupBox1;
        TfcLabel *RadioGroupLabel;
        TfcButtonGroup *RadioButtonGroup1;
        TfcImageBtn *RadioButtonGroup1fcImageBtn1;
        TfcImageBtn *RadioButtonGroup1fcImageBtn2;
        TfcImageBtn *RadioButtonGroup1fcImageBtn3;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TTabSheet *TabSheet5;
        TPanel *Panel8;
        TfcLabel *fcLabel6;
        TPanel *Panel11;
        TfcLabel *fcLabel13;
        TShape *Shape1;
        TfcImageBtn *fcImageBtn1;
        TfcColorCombo *fcColorCombo3;
        TfcImageBtn *fcImageBtn2;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TPanel *Panel3;
        TfcButtonGroup *ButtonTab;
        TfcImageBtn *ButtonTabfcImageBtn1;
        TfcImageBtn *ButtonTabfcImageBtn2;
        TfcImageBtn *ButtonTabfcImageBtn3;
        TfcImageBtn *ButtonTabfcImageBtn4;
        TfcImageBtn *ButtonTabfcImageBtn5;
        TImageList *ImageList1;
        TfcImageBtn *KnightHighlight;
        void __fastcall LightSwitch1Click(TObject *Sender);
        void __fastcall TackButtonClick(TObject *Sender);
        void __fastcall NorthAmericaClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall fcColorCombo1Change(TObject *Sender);
        void __fastcall fcImageCombo1Change(TObject *Sender);
        void __fastcall fcColorCombo2Change(TObject *Sender);
        void __fastcall ThumbTackClick(TObject *Sender);
        void __fastcall Switch1Click(TObject *Sender);
        void __fastcall ButtonTabChange(TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall lightbutton1Click(TObject *Sender);
        void __fastcall fcColorCombo3Change(TObject *Sender);
        void __fastcall led4Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TImageBtnDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TImageBtnDemoForm *ImageBtnDemoForm;
//---------------------------------------------------------------------------
#endif
