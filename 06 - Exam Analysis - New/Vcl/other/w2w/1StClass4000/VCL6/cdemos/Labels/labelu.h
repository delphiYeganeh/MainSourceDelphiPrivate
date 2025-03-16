//---------------------------------------------------------------------------
#ifndef labeluH
#define labeluH
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
#include "ShellApi.hpp"
#include "fcLabel.hpp"
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TLabelForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TPanel *Panel2;
        TfcLabel *Rotatedlabel1;
        TfcLabel *embossedlabel1;
        TfcLabel *ShadowLabel1;
        TfcLabel *outlinedlabel1;
        TfcLabel *engravedlabel1;
        TfcLabel *Block3DLabel1;
        TfcLabel *FunLabel1;
        TfcLabel *Rotatedlabel2;
        TfcLabel *BlendLabel1;
        TfcLabel *Extrudelabel1;
        TfcLabel *Rotatedlabel3;
        TBevel *Bevel4;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TPanel *Panel3;
        TfcLabel *RotateLabel5;
        TfcLabel *RotateLabel6;
        TfcLabel *RotateLabel4;
        TfcLabel *RotateLabel3;
        TfcLabel *RotateLabel7;
        TfcLabel *RotateLabel8;
        TfcLabel *RotateLabel9;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TTabSheet *TabSheet3;
        TPanel *Panel4;
        TShape *Shape2;
        TfcLabel *fcLabel16;
        TfcLabel *fcLabel17;
        TfcLabel *fcLabel18;
        TfcLabel *fcLabel22;
        TfcLabel *fcLabel23;
        TfcLabel *fcLabel24;
        TfcLabel *fcLabel25;
        TfcLabel *fcLabel31;
        TfcLabel *fcLabel32;
        TfcLabel *fcLabel33;
        TfcLabel *fcLabel35;
        TfcLabel *fcLabel39;
        TfcLabel *fcLabel40;
        TBevel *Bevel5;
        TLabel *Label1;
        TRadioGroup *RadioGroup1;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TTabSheet *TabSheet4;
        TPanel *Panel5;
        TShape *Shape1;
        TfcLabel *BlockTestLabel1;
        TfcLabel *fcLabel38;
        TfcLabel *fcLabel34;
        TfcLabel *fcLabel37;
        TfcLabel *fcLabel36;
        TfcLabel *BlockTestLabel2;
        TfcLabel *BlockTestLabel3;
        TfcLabel *wowlabel1;
        TfcLabel *wowlabel4;
        TfcLabel *fcLabel48;
        TfcLabel *wowlabel2;
        TfcLabel *wowlabel3;
        TfcDemoRichEdit *fcDemoRichEdit4;
        TTabSheet *TabSheet5;
        TPanel *Panel6;
        TfcLabel *MultiLineLabel1;
        TfcLabel *EllipsisLabel2;
        TBevel *Bevel1;
        TBevel *Bevel2;
        TBevel *Bevel3;
        TPanel *Panel7;
        TfcLabel *fcLabel2;
        TfcLabel *fcLabel1;
        TPanel *Panel8;
        TfcLabel *AcceleratorKeyLabel1;
        TfcLabel *AcceleratorKeyLabel2;
        TfcLabel *AcceleratorKeyLabel3;
        TfcLabel *AcceleratorKeyLabel4;
        TfcLabel *AcceleratorKeyLabel5;
        TEdit *Edit1;
        TEdit *Edit2;
        TEdit *Edit3;
        TfcDemoRichEdit *fcDemoRichEdit5;
        TPanel *Panel1;
        TfcButtonGroup *fcButtonGroup1;
        TfcImageBtn *fcButtonGroup1fcImageBtn1;
        TfcImageBtn *fcButtonGroup1fcImageBtn2;
        TfcImageBtn *fcButtonGroup1fcImageBtn3;
        TfcImageBtn *fcButtonGroup1fcImageBtn4;
        TfcImageBtn *fcButtonGroup1fcImageBtn5;
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
        void __fastcall fcLabel1Click(TObject *Sender);
        void __fastcall fcLabel1MouseEnter(TObject *Sender);
        void __fastcall fcLabel1MouseLeave(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TLabelForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TLabelForm *LabelForm;
//---------------------------------------------------------------------------
#endif
