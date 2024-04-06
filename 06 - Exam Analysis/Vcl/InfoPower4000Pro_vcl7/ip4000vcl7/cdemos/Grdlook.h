//---------------------------------------------------------------------------
#ifndef GrdlookH
#define GrdlookH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Tabnotbk.hpp>
#include <vcl\ComCtrls.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include "wwdblook.hpp"
#include "Wwdotdot.hpp"
#include "wwdbedit.hpp"
#include <vcl\Mask.hpp>
#include <vcl\Buttons.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include "wwidlg.hpp"
#include "wwDialog.hpp"
#include <Db.hpp>
#include "wwriched.hpp"
//---------------------------------------------------------------------------
class TGridDemo : public TForm
{
__published:	// IDE-managed Components
	TTabbedNotebook *TabbedNotebook1;
	TwwDBGrid *wwDBGrid1;
	TMemo *Memo2;
	TwwDBGrid *wwDBGrid2;
	TwwDBLookupCombo *wwDBLookupCombo2;
	TwwDBLookupCombo *wwDBLookupCombo1;
	TButton *Button1;
	TBitBtn *BitBtn2;
	TwwTable *CustomerTable;
	TStringField *CustomerTableLastName;
	TStringField *CustomerTableFirstName;
	TStringField *CustomerTableBuyer;
	TStringField *CustomerTableZip;
	TStringField *CustomerTableCompanyName;
	TIntegerField *CustomerTableCustomerNo;
	TStringField *CustomerTableStreet;
	TStringField *CustomerTableCity;
	TStringField *CustomerTableState;
	TDateField *CustomerTableFirstContactDate;
	TStringField *CustomerTablePhoneNumber;
	TMemoField *CustomerTableInformation;
	TStringField *CustomerTableRequestedDemo;
	TBooleanField *CustomerTableLogical;
	TwwTable *ZipTable;
	TStringField *ZipTableZIP;
	TStringField *ZipTableCITY;
	TStringField *ZipTableSTATE;
	TwwDataSource *CustomerSource;
	TwwLookupDialog *wwLookupDialog1;
    TStringField *CustomerTableZipCity;
    TwwDBRichEdit *wwDBRichEdit1;
	void __fastcall TabbedNotebook1Change(TObject *Sender, int NewTab,
	bool &AllowChange);
	void __fastcall FormShow(TObject *Sender);
	void __fastcall wwLookupDialog1UserButton1Click(TObject *Sender,
	TDataSet *LookupTable);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall BitBtn2Click(TObject *Sender);
	void __fastcall FormCloseQuery(TObject *Sender, bool &CanClose);
    
private:	// User declarations
public:		// User declarations
	__fastcall TGridDemo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TGridDemo *GridDemo;
//---------------------------------------------------------------------------
#endif
