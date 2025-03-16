//---------------------------------------------------------------------------
#ifndef LkdtlH
#define LkdtlH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "wwdblook.hpp"
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
#include "wwriched.hpp"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TDetailComboForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TwwDBLookupCombo *InvoiceCombo;
	TwwDBLookupCombo *CustomerCombo;
	TButton *Button1;
	TwwDataSource *wwDataSource1;
	TwwTable *wwTable1;
	TwwTable *wwTable2;
    TwwDBRichEdit *wwDBRichEdit1;
	void __fastcall CustomerComboDropDown(TObject *Sender);
	void __fastcall CustomerComboCloseUp(TObject *Sender, TDataSet *LookupTable,
	TDataSet *FillTable, bool modified);
private:	// User declarations
    AnsiString BeforeDropDownValue;
public:		// User declarations
	__fastcall TDetailComboForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TDetailComboForm *DetailComboForm;
//---------------------------------------------------------------------------
#endif
