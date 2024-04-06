//---------------------------------------------------------------------------
#ifndef PacktestH
#define PacktestH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Buttons.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include <vcl\Grids.hpp>
#include <vcl\ExtCtrls.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TPackMain : public TForm
{
__published:    // IDE-managed Components 
    TBitBtn *BitBtn1;
    TBitBtn *BitBtn2;
    TwwDBGrid *TableList;
    TPanel *Panel1;
    TLabel *AliasLabel;
    TPanel *Panel2;
    TLabel *AliasName;
    TButton *Button1;
    TwwTable *PackTable;
    TwwDataSource *wwDataSource1;
    TwwTable *ResultsTable;
    void __fastcall FormActivate(TObject *Sender);
    void __fastcall BitBtn1Click(TObject *Sender);
    void __fastcall BitBtn2Click(TObject *Sender);
private:        // User declarations
    Boolean initialized;
    void __fastcall TPackMain::CreateResultsTable();
public:         // User declarations
    virtual __fastcall TPackMain(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TPackMain *PackMain;
//---------------------------------------------------------------------------
#endif
