//---------------------------------------------------------------------------
#ifndef rcdpnldemo2H
#define rcdpnldemo2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwDataInspector.hpp"
#include "Wwdatsrc.hpp"
#include "wwdblook.hpp"
#include "wwrcdpnl.hpp"
#include "wwriched.hpp"
#include "Wwtable.hpp"
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TRecordViewDemoForm2 : public TForm
{
__published:	// IDE-managed Components
        TSpeedButton *SpeedButton1;
        TwwRecordViewPanel *wwRecordViewPanel1;
        TwwDBRichEdit *wwDBRichEdit1;
        TwwDBLookupCombo *wwDBLookupCombo1;
        TwwDBRichEdit *wwDBRichEdit2;
        TwwDataInspector *Options;
        TwwDataSource *wwDataSource1;
        TwwTable *wwTable1;
        TwwTable *wwTable2;
        void __fastcall OptionsItems0ItemChanged(TwwDataInspector *Sender,
          TwwInspectorItem *Item, AnsiString NewValue);
        void __fastcall FocusStyleChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall OptionsItems0Items1ItemChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall OptionsItems0Items0ItemChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall BorderChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall OptionsCalcDataPaintText(TwwDataInspector *Sender,
          TwwInspectorItem *Item, AnsiString &PaintText);
        void __fastcall LabelsBeneathControlChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall LayoutChanged(TwwDataInspector *Sender,
          TwwInspectorItem *Item, AnsiString NewValue);
private:	// User declarations
public:		// User declarations
        __fastcall TRecordViewDemoForm2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRecordViewDemoForm2 *RecordViewDemoForm2;
//---------------------------------------------------------------------------
#endif
