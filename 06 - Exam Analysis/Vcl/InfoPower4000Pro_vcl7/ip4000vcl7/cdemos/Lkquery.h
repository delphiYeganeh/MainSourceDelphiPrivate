//---------------------------------------------------------------------------
#ifndef LkqueryH
#define LkqueryH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\ComCtrls.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include "wwdblook.hpp"
#include "wwriched.hpp"
#include <vcl\ExtCtrls.hpp>
#include "Wwdbdlg.hpp"
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwquery.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
//---------------------------------------------------------------------------
class TTableQueryForm : public TForm
{
__published:	// IDE-managed Components
	TButton *Button1;
	TPageControl *PageControl1;
	TTabSheet *TabSheet2;
	TwwDBGrid *wwDBGrid1;
	TwwDBLookupCombo *wwDBLookupCombo1;
	TRadioGroup *RadioGroup1;
	TwwDBLookupComboDlg *wwDBLookupComboDlg1;
	TTabSheet *TabSheet1;
	TLabel *Label1;
	TLabel *Label2;
	TwwDBLookupCombo *wwDBLookupCombo2;
	TwwDBLookupComboDlg *wwDBLookupComboDlg2;
	TwwDBRichEdit *wwDBRichEdit2;
	TwwDataSource *ZipDS;
	TwwDataSource *CustDS;
	TwwQuery *CustQuery;
	TIntegerField *CustQueryCustomerNo;
	TStringField *CustQueryCompanyName;
	TStringField *CustQueryState;
	TStringField *CustQueryZip;
	TStringField *CustQueryBuyer;
	TStringField *CustQueryFirstName;
	TStringField *CustQueryLastName;
	TStringField *CustQueryStreet;
	TDateField *CustQueryFirstContactDate;
	TStringField *CustQueryPhoneNumber;
	TMemoField *CustQueryInformation;
	TBlobField *CustQueryRichEdit;
	TStringField *CustQueryRequestedDemo;
	TBooleanField *CustQueryLogical;
	TStringField *CustQueryCity;
	TwwQuery *ZipQuery;
	TwwQuery *wwQuery1;
    TwwDBRichEdit *wwDBRichEdit1;
	void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TTableQueryForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TTableQueryForm *TableQueryForm;
//---------------------------------------------------------------------------
#endif
