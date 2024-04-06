//---------------------------------------------------------------------------

#ifndef GridMasterDetailH
#define GridMasterDetailH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwcheckbox.hpp"
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include <Buttons.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TMasterDetailGridForm : public TForm
{
__published:	// IDE-managed Components
        TSpeedButton *SpeedButton1;
        TwwDBGrid *CustomerGrid;
        TwwDBGrid *InvoiceGrid;
        TwwExpandButton *wwExpandButton1;
        TwwDBGrid *ItemsGrid;
        TwwExpandButton *wwExpandButton2;
        TDataSource *DataSource1;
        TTable *CustomerTable;
        TIntegerField *CustomerTableOrders;
        TFloatField *CustomerTableCustNo;
        TStringField *CustomerTableCountry;
        TDateTimeField *CustomerTableLastInvoiceDate;
        TStringField *CustomerTableCompany;
        TStringField *CustomerTableAddr1;
        TStringField *CustomerTableAddr2;
        TStringField *CustomerTableCity;
        TStringField *CustomerTableState;
        TStringField *CustomerTableZip;
        TStringField *CustomerTablePhone;
        TStringField *CustomerTableFAX;
        TFloatField *CustomerTableTaxRate;
        TStringField *CustomerTableContact;
        TIntegerField *CustomerTableHaveOrders;
        TDataSource *DataSource2;
        TTable *OrdersTable;
        TIntegerField *OrdersTableItems;
        TFloatField *OrdersTableOrderNo;
        TFloatField *OrdersTableCustNo;
        TDateTimeField *OrdersTableSaleDate;
        TDateTimeField *OrdersTableShipDate;
        TIntegerField *OrdersTableEmpNo;
        TStringField *OrdersTableShipToContact;
        TStringField *OrdersTableShipToAddr1;
        TStringField *OrdersTableShipToAddr2;
        TStringField *OrdersTableShipToCity;
        TStringField *OrdersTableShipToState;
        TStringField *OrdersTableShipToZip;
        TStringField *OrdersTableShipToCountry;
        TStringField *OrdersTableShipToPhone;
        TStringField *OrdersTableShipVIA;
        TStringField *OrdersTablePO;
        TStringField *OrdersTableTerms;
        TStringField *OrdersTablePaymentMethod;
        TCurrencyField *OrdersTableItemsTotal;
        TFloatField *OrdersTableTaxRate;
        TCurrencyField *OrdersTableFreight;
        TCurrencyField *OrdersTableAmountPaid;
        TDataSource *DataSource3;
        TTable *Table3;
        TTable *Table5;
        TQuery *CalcTotalItems;
        TQuery *SumQuery;
        TCurrencyField *SumQuerySUMOFItemsTotal;
        TImageList *ImageList1;
        TQuery *Query1;
        void __fastcall InvoiceGridUpdateFooter(TObject *Sender);
        void __fastcall CustomerGridCalcTitleImage(TObject *Sender,
          TField *Field, TwwTitleImageAttributes &TitleImageAttributes);
        void __fastcall InvoiceGridBeforePaint(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMasterDetailGridForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMasterDetailGridForm *MasterDetailGridForm;
//---------------------------------------------------------------------------
#endif
