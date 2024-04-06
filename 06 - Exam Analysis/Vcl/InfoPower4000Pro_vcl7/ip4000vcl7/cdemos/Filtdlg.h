//---------------------------------------------------------------------------
#ifndef FiltdlgH
#define FiltdlgH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Buttons.hpp>
#include <vcl\Tabnotbk.hpp>
#include <vcl\ComCtrls.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include "wwriched.hpp"
#include "Wwfltdlg.hpp"
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include "Wwquery.hpp"
#include "wwDialog.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TFilterDialogForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TLabel *Label2;
	TLabel *Label3;
	TBitBtn *BitBtn1;
	TGroupBox *GroupBox1;
	TCheckBox *SearchTypeCheckbox;
	TCheckBox *ShowFieldOrderCheckbox;
	TCheckBox *ViewSummaryCheckbox;
	TCheckBox *CheckBox1;
	TCheckBox *CheckBox2;
	TTabbedNotebook *TabbedNotebook1;
	TwwDBGrid *wwDBGrid1;
	TwwDBGrid *wwDBGrid4;
	TwwDBRichEdit *wwDBRichEdit2;
	TGroupBox *GroupBox2;
	TwwDBGrid *wwDBGrid3;
	TGroupBox *GroupBox3;
	TwwDBGrid *wwDBGrid2;
	TMemo *Memo3;
	TwwDBGrid *wwDBGrid5;
	TwwDBRichEdit *wwDBRichEdit1;
	TwwFilterDialog *wwFilterDialog1;
	TwwDataSource *CustomerDS;
	TwwTable *CustomerTbl;
	TwwDataSource *Customer2QueryDS;
	TwwQuery *Customer2Query;
	TIntegerField *Customer2QueryCUSTOMERNO;
	TStringField *Customer2QueryBuyer;
	TStringField *Customer2QueryCity;
	TStringField *Customer2QueryCompanyName;
	TDateField *Customer2QueryFirstContactDate;
	TStringField *Customer2QueryFirstName;
	TMemoField *Customer2QueryInformation;
	TStringField *Customer2QueryLastName;
	TBooleanField *Customer2QueryLogical;
	TStringField *Customer2QueryPhoneNumber;
	TStringField *Customer2QueryRequestedDemo;
	TStringField *Customer2QueryState;
	TStringField *Customer2QueryStreet;
	TStringField *Customer2QueryZip;
	TwwFilterDialog *wwFilterDialog3;
	TwwDataSource *CustInvDS;
	TwwTable *CustInvoiceTable;
	TwwFilterDialog *wwFilterDialog2;
	TwwDataSource *Customer1QueryDS;
	TwwQuery *Customer1Query;
	TIntegerField *Customer1QueryCustomerNo;
	TStringField *Customer1QueryBuyer;
	TStringField *Customer1QueryCompanyName;
	TStringField *Customer1QueryFirstName;
	TStringField *Customer1QueryLastName;
	TStringField *Customer1QueryStreet;
	TStringField *Customer1QueryCity;
	TStringField *Customer1QueryState;
	TStringField *Customer1QueryZip;
	TDateField *Customer1QueryFirstContactDate;
	TStringField *Customer1QueryPhoneNumber;
	TMemoField *Customer1QueryInformation;
	TStringField *Customer1QueryRequestedDemo;
	TBooleanField *Customer1QueryLogical;
    TwwDBRichEdit *wwDBRichEdit3;
	void __fastcall BitBtn1Click(TObject *Sender);
	void __fastcall SearchTypeCheckboxClick(TObject *Sender);
	void __fastcall ShowFieldOrderCheckboxClick(TObject *Sender);
	void __fastcall ViewSummaryCheckboxClick(TObject *Sender);
	void __fastcall CheckBox1Click(TObject *Sender);
	void __fastcall wwDBGrid3CalcCellColors(TObject *Sender, TField *Field,
	TGridDrawState State, bool Highlight, TFont *AFont, TBrush *ABrush);
	void __fastcall TabbedNotebook1Change(TObject *Sender, int NewTab,
	bool &AllowChange);
	void __fastcall CheckBox2Click(TObject *Sender);
	
private:	// User declarations
public:		// User declarations
	__fastcall TFilterDialogForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TFilterDialogForm *FilterDialogForm;
//---------------------------------------------------------------------------
#endif
