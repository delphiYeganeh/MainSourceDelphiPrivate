//---------------------------------------------------------------------------
#ifndef savefiltH
#define savefiltH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include "Wwfltdlg.hpp"
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\Menus.hpp>
#include "wwsavflt.h"
#include "wwDialog.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TSaveFilterDemo : public TForm
{
__published:	// IDE-managed Components
	TwwDBGrid *wwDBGrid1;
	TMemo *Memo1;
	TwwFilterDialog *wwFilterDialog1;
	TwwDataSource *wwDataSource1;
	TwwTable *wwTable1;
	TMainMenu *MainMenu1;
	TMenuItem *Filter1;
	TMenuItem *Filter2;
	TMenuItem *ClearFilter1;
	TMenuItem *LoadFilter1;
	TMenuItem *SaveFilter1;
	TMenuItem *Exit1;
	void __fastcall LoadFilter1Click(TObject *Sender);
	void __fastcall Exit1Click(TObject *Sender);
	void __fastcall SaveFilter1Click(TObject *Sender);
	void __fastcall ClearFilter1Click(TObject *Sender);
	void __fastcall Filter2Click(TObject *Sender);
	void __fastcall FormShow(TObject *Sender);
private:	// User declarations
    void __fastcall TSaveFilterDemo::LoadFilter();
public:		// User declarations
	__fastcall TSaveFilterDemo(TComponent* Owner);
    TwwSaveFilter *wwSaveFilter1;
};
//---------------------------------------------------------------------------
extern TSaveFilterDemo *SaveFilterDemo;
//---------------------------------------------------------------------------
#endif
