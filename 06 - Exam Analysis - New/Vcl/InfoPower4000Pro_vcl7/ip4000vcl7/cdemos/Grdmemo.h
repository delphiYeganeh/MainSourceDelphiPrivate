//---------------------------------------------------------------------------
#ifndef GrdmemoH
#define GrdmemoH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include <vcl\Buttons.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include <Db.hpp>
#include "wwriched.hpp"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TGridMemoApp : public TForm
{
__published:	// IDE-managed Components
	TwwDBGrid *wwDBGrid1;
	TBitBtn *CancelBtn;
	TBitBtn *BitBtn2;
	TwwTable *CustomerTable;
	TwwDataSource *CustomerSource;
        TwwDBRichEdit *wwDBRichEdit1;
	void __fastcall BitBtn2Click(TObject *Sender);
	void __fastcall wwDBGrid1MemoOpen(TwwDBGrid *Grid, TwwMemoDialog *MemoDialog);
private:	// User declarations
public:		// User declarations
	__fastcall TGridMemoApp(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TGridMemoApp *GridMemoApp;
//---------------------------------------------------------------------------
#endif
