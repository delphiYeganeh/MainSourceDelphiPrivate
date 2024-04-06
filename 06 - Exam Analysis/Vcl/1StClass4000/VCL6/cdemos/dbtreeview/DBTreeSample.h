//---------------------------------------------------------------------------
#ifndef DBTreeSampleH
#define DBTreeSampleH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcdbtreeview.hpp"
#include "fcDemoRichEdit.hpp"
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <ImgList.hpp>
#include <Mask.hpp>
#include "fcImager.hpp"
#include <Graphics.hpp>
//---------------------------------------------------------------------------
class TDMTreeViewForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *TreeStateLabel;
        TSpeedButton *SpeedButton1;
        TPageControl *PageControl1;
        TTabSheet *CustomersTabSheet;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label7;
        TLabel *Label6;
        TLabel *Label5;
        TLabel *Label8;
        TLabel *Label9;
        TLabel *Label10;
        TLabel *Label13;
        TLabel *Label12;
        TLabel *Label11;
        TDBEdit *EditCustNo;
        TDBEdit *EditCompany;
        TDBEdit *EditAddr;
        TDBEdit *EditAddr2;
        TDBEdit *EditZip;
        TDBEdit *EditState;
        TDBEdit *EditCity;
        TDBEdit *EditCountry;
        TDBEdit *EditPhone;
        TDBEdit *EditFAX;
        TDBEdit *EditLastInvoiceDate;
        TDBEdit *EditContact;
        TDBEdit *EditTaxRate;
        TTabSheet *OrdersTabSheet;
        TLabel *Label14;
        TLabel *Label15;
        TLabel *Label16;
        TLabel *Label17;
        TLabel *Label18;
        TLabel *Label25;
        TLabel *Label28;
        TLabel *Label29;
        TLabel *Label30;
        TLabel *Label31;
        TLabel *Label32;
        TLabel *Label33;
        TLabel *Label34;
        TDBEdit *EditOrderNo;
        TDBEdit *DBEdit1;
        TDBEdit *EditSaleDate;
        TDBEdit *EditEmpNo;
        TDBEdit *EditShipDate;
        TDBEdit *EditShipVIA;
        TDBEdit *EditPO;
        TDBEdit *EditTerms;
        TDBEdit *EditPaymentMethod;
        TDBEdit *EditItemsTotal;
        TDBEdit *EditAmountPaid;
        TDBEdit *EditFreight;
        TDBEdit *DBEdit2;
        TTabSheet *ItemsTabSheet;
        TLabel *Label35;
        TLabel *Label36;
        TLabel *Label37;
        TLabel *Label38;
        TLabel *Label39;
        TDBEdit *EditDiscount;
        TDBEdit *DBEdit3;
        TDBEdit *EditItemNo;
        TDBEdit *EditPartNo;
        TDBEdit *EditQty;
        TGroupBox *GroupBox1;
        TLabel *Label42;
        TLabel *Label40;
        TLabel *Label41;
        TLabel *Label43;
        TLabel *Label44;
        TLabel *Label45;
        TDBEdit *DBEdit6;
        TDBEdit *DBEdit4;
        TDBEdit *DBEdit5;
        TDBEdit *DBEdit7;
        TDBEdit *DBEdit8;
        TDBEdit *DBEdit9;
        TPageControl *PageControl2;
        TTabSheet *TabSheet1;
        TLabel *Label19;
        TLabel *Label20;
        TComboBox *ComboBox1;
        TComboBox *FilterCombo;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TCheckBox *CheckBox1;
        TCheckBox *CheckBox2;
        TCheckBox *CheckBox3;
        TCheckBox *CheckBox4;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TDataSource *CustomerDS;
        TTable *CustomersTbl;
        TFloatField *CustomersTblCustNo;
        TStringField *CustomersTblCompany;
        TStringField *CustomersTblAddr1;
        TStringField *CustomersTblAddr2;
        TStringField *CustomersTblCity;
        TStringField *CustomersTblState;
        TStringField *CustomersTblZip;
        TStringField *CustomersTblCountry;
        TStringField *CustomersTblPhone;
        TStringField *CustomersTblFAX;
        TFloatField *CustomersTblTaxRate;
        TStringField *CustomersTblContact;
        TDateTimeField *CustomersTblLastInvoiceDate;
        TIntegerField *CustomersTblLookupOrders;
        TDataSource *OrdersDS;
        TTable *OrdersTbl;
        TFloatField *OrdersTblOrderNo;
        TFloatField *OrdersTblCustNo;
        TDateTimeField *OrdersTblSaleDate;
        TDateTimeField *OrdersTblShipDate;
        TIntegerField *OrdersTblEmpNo;
        TStringField *OrdersTblShipToContact;
        TStringField *OrdersTblShipToAddr1;
        TStringField *OrdersTblShipToAddr2;
        TStringField *OrdersTblShipToCity;
        TStringField *OrdersTblShipToState;
        TStringField *OrdersTblShipToZip;
        TStringField *OrdersTblShipToCountry;
        TStringField *OrdersTblShipToPhone;
        TStringField *OrdersTblShipVIA;
        TStringField *OrdersTblPO;
        TStringField *OrdersTblTerms;
        TStringField *OrdersTblPaymentMethod;
        TCurrencyField *OrdersTblItemsTotal;
        TFloatField *OrdersTblTaxRate;
        TCurrencyField *OrdersTblFreight;
        TCurrencyField *OrdersTblAmountPaid;
        TDataSource *ItemsDS;
        TTable *ItemsTbl;
        TFloatField *ItemsTblOrderNo;
        TFloatField *ItemsTblItemNo;
        TFloatField *ItemsTblPartNo;
        TIntegerField *ItemsTblQty;
        TFloatField *ItemsTblDiscount;
        TStringField *ItemsTblLookupPartDescription;
        TFloatField *ItemsTblLookupPartPrice;
        TTable *LookupPartTbl;
        TTable *LookupOrderTbl;
        TImageList *ImageList1;
        TDataSource *PartsDS;
        TTable *PartsTbl;
        TfcDBTreeView *fcDBTreeView1;
        TfcImager *fcImager1;
        TCheckBox *CheckBox5;
        void __fastcall fcDBTreeView1CalcNodeAttributes(
          TfcDBCustomTreeView *TreeView, TfcDBTreeNode *Node);
        void __fastcall fcDBTreeView1Change(TfcDBCustomTreeView *TreeView,
          TfcDBTreeNode *Node);
        void __fastcall PageControl2Change(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall FilterComboChange(TObject *Sender);
        void __fastcall CustomersTblFilterRecord(TDataSet *DataSet,
          bool &Accept);
        void __fastcall CheckBox1Click(TObject *Sender);
        void __fastcall CheckBox2Click(TObject *Sender);
        void __fastcall CheckBox3Click(TObject *Sender);
        void __fastcall CheckBox4Click(TObject *Sender);
        void __fastcall CheckBox5Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TDMTreeViewForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDMTreeViewForm *DMTreeViewForm;
//---------------------------------------------------------------------------
#endif
