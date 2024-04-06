//---------------------------------------------------------------------------
#ifndef isearchH
#define isearchH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Buttons.hpp>
#include <vcl\DBCtrls.hpp>
#include <vcl\Mask.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include "wwidlg.hpp"
#include "wwDialog.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TSearchForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TLabel *Label5;
	TLabel *Label6;
	TLabel *Label7;
	TLabel *Label8;
	TLabel *Label9;
	TLabel *Label11;
	TLabel *Label10;
	TLabel *Label12;
	TGroupBox *GroupBox1;
	TCheckBox *OKCancelCheckBox;
	TCheckBox *FixFirstColumnCheckBox;
	TCheckBox *ShowStatusBarCheckBox;
	TCheckBox *ShowUserButtonCheckBox;
	TCheckBox *ShowSearchByCheckbox;
	TCheckBox *GroupControlsCheckBox;
	TGroupBox *GroupBox2;
	TLabel *Label1;
	TBitBtn *BitBtn1;
	TDBEdit *EditCustomerNo;
	TDBEdit *EditCompanyName;
	TDBEdit *EditFirstName;
	TDBEdit *EditLastName;
	TDBEdit *EditStreet;
	TDBEdit *EditCity;
	TDBEdit *EditState;
	TDBEdit *EditZip;
	TDBEdit *EditPhoneNumber;
	TDBEdit *EditFirstContactDate;
	TDBEdit *EditBuyer;
	TButton *Button1;
	TwwTable *CustomerShadowTable;
	TwwDataSource *wwDataSource1;
	TwwTable *CustomerTable;
	TwwSearchDialog *wwSearchDialog1;
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall BitBtn1Click(TObject *Sender);
	void __fastcall wwSearchDialog1UserButton1Click(TObject *Sender,
	TDataSet *LookupTable);
private:	// User declarations
public:		// User declarations
	__fastcall TSearchForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TSearchForm *SearchForm;
//---------------------------------------------------------------------------
#endif
