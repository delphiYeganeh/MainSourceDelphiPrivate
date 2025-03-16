//---------------------------------------------------------------------------
#ifndef SearchH
#define SearchH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\ExtCtrls.hpp>
#include <vcl\DBCtrls.hpp>
#include <vcl\Mask.hpp>
#include "Wwkeycb.hpp"
#include <vcl\Buttons.hpp>
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
#include "Wwdbcomb.hpp"
#include "wwdbedit.hpp"
#include "Wwdotdot.hpp"
//---------------------------------------------------------------------------
class TIncrSearch : public TForm
{
__published:	// IDE-managed Components
	TPanel *Panel2;
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TDBEdit *DBEdit2;
	TDBEdit *DBEdit1;
	TDBEdit *DBEdit3;
	TPanel *Panel1;
	TLabel *Label12;
	TLabel *Label13;
	TwwKeyCombo *wwKeyCombo1;
	TwwIncrementalSearch *wwIncrementalSearch1;
	TMemo *Memo2;
	TBitBtn *CancelBtn;
	TDataSource *DataSource1;
	TwwTable *wwTable1;
	void __fastcall wwKeyCombo1Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TIncrSearch(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TIncrSearch *IncrSearch;
//---------------------------------------------------------------------------
#endif
