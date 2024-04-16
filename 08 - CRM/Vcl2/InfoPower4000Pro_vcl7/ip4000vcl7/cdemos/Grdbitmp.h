//---------------------------------------------------------------------------
#ifndef GrdbitmpH
#define GrdbitmpH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\DBCtrls.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include "Wwdbcomb.hpp"
#include "Wwdotdot.hpp"
#include "wwdbedit.hpp"
#include <vcl\Mask.hpp>
#include "Wwdbspin.hpp"
#include <vcl\ExtCtrls.hpp>
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
#include "wwDBNavigator.hpp"
#include "Wwquery.hpp"
#include "wwriched.hpp"
#include "wwSpeedButton.hpp"
#include <ComCtrls.hpp>
#include "wwclearpanel.hpp"
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TBitmapForm : public TForm
{
__published:	// IDE-managed Components
	TDBText *DBText1;
	TDBText *DBText2;
	TDBText *DBText3;
	TwwDBComboBox *PayMethCombo;
	TwwDataSource *CustomerDS;
	TwwTable *CustomerTable;
	TIntegerField *CustomerTableCustomerNo;
	TStringField *CustomerTableCompanyName;
	TStringField *CustomerTableFirstName;
	TStringField *CustomerTableLastName;
	TStringField *CustomerTableCity;
	TStringField *CustomerTableState;
	TStringField *CustomerTableZip;
	TStringField *CustomerTableBuyer;
	TStringField *CustomerTableStreet;
	TDateField *CustomerTableFirstContactDate;
	TStringField *CustomerTablePhoneNumber;
	TMemoField *CustomerTableInformation;
	TStringField *CustomerTableRequestedDemo;
	TBooleanField *CustomerTableLogical;
	TStringField *CustomerTableFullName;
	TStringField *CustomerTableFullAddress;
	TwwDataSource *InvoiceDS;
    TwwDBGrid *InvoiceGrid;
    TwwDBNavigator *wwDBNavigator1;
    TwwNavButton *wwDBNavigator1First;
    TwwNavButton *wwDBNavigator1PriorPage;
    TwwNavButton *wwDBNavigator1Prior;
    TwwNavButton *wwDBNavigator1Next;
    TwwNavButton *wwDBNavigator1NextPage;
    TwwNavButton *wwDBNavigator1Last;
    TwwNavButton *wwDBNavigator1SaveBookmark;
    TwwNavButton *wwDBNavigator1RestoreBookmark;
    TwwTable *InvoiceTable;
    TIntegerField *InvoiceTableCustomerNo;
    TFloatField *InvoiceTableInvoiceNo;
    TFloatField *InvoiceTablePaymentMethod;
    TCurrencyField *InvoiceTableTotalInvoice;
    TDateField *InvoiceTablePurchaseDate;
    TCurrencyField *InvoiceTableBalanceDue;
    TIntegerField *InvoiceTablePayImageIndex;
    TImageList *ImageList1;
    TwwQuery *SumQuery;
    TCurrencyField *SumQuerySUMOFbalancedue;
    TCurrencyField *SumQuerySUMOFTotalInvoice;
        TwwDBRichEdit *wwDBRichEdit1;
	void __fastcall CustomerTableCalcFields(TDataSet *DataSet);
	void __fastcall InvoiceGridCalcCellColors(TObject *Sender, TField *Field,
	TGridDrawState State, bool Highlight, TFont *AFont, TBrush *ABrush);
	void __fastcall InvoiceDSDataChange(TObject *Sender, TField *Field);
	void __fastcall InvoiceGridCalcTitleAttributes(TObject *Sender,
	AnsiString AFieldName, TFont *AFont, TBrush *ABrush,
	TAlignment &ATitleAlignment);
	void __fastcall InvoiceGridDblClick(TObject *Sender);
	void __fastcall InvoiceGridKeyDown(TObject *Sender, WORD &Key,
	TShiftState Shift);
	void __fastcall PayMethComboCloseUp(TwwDBComboBox *Sender, bool Select);
    void __fastcall InvoiceGridUpdateFooter(TObject *Sender);
    void __fastcall InvoiceTableCalcFields(TDataSet *DataSet);
private:	// User declarations
    void __fastcall ToggleBitmaps();
public:		// User declarations
	__fastcall TBitmapForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TBitmapForm *BitmapForm;
//---------------------------------------------------------------------------
#endif
