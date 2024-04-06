//---------------------------------------------------------------------------
#ifndef CombosH
#define CombosH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbdlg.hpp"
#include "wwdblook.hpp"
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TLookupForm : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TCheckBox *OKCancelCheckBox;
	TCheckBox *FixFirstColumnCheckBox;
	TCheckBox *ShowStatusBarCheckBox;
	TCheckBox *ShowUserButtonCheckBox;
	TCheckBox *ShowSearchByCheckbox;
	TCheckBox *GroupControlsCheckBox;
	TGroupBox *GroupBox2;
	TLabel *Label1;
	TwwDBLookupComboDlg *wwDBLookupComboDlg1;
	TCheckBox *QuickenStyle2;
	TGroupBox *GroupBox3;
	TCheckBox *AlignRightCheckBox;
	TCheckBox *FillCheckBox;
	TGroupBox *GroupBox4;
	TEdit *Zip;
	TEdit *City;
	TEdit *State;
	TGroupBox *GroupBox5;
	TLabel *Label2;
	TLabel *Label3;
	TLabel *Label4;
	TwwDBLookupCombo *wwDBLookupCombo1;
	TwwDBLookupCombo *wwDBLookupCombo2;
	TCheckBox *AutoDropDownCheckBox;
	TCheckBox *ShowButton;
	TCheckBox *QuickenStyle1;
	TwwTable *wwTable1;
	TwwDataSource *wwDataSource1;
	TwwTable *CustomerTable;
	void __fastcall wwDBLookupCombo1CloseUp(TObject *Sender, TDataSet *LookupTable,
	TDataSet *FillTable, bool modified);
	void __fastcall wwDBLookupCombo1DropDown(TObject *Sender);
	void __fastcall wwDBLookupCombo2DropDown(TObject *Sender);
	void __fastcall FormActivate(TObject *Sender);
	void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
	void __fastcall wwDBLookupComboDlg1UserButton1Click(TObject *Sender,
	TDataSet *LookupTable);
	void __fastcall wwDBLookupComboDlg1DropDown(TObject *Sender);
	void __fastcall wwDBLookupComboDlg1InitDialog(TwwLookupDlg *Dialog);
	void __fastcall AutoDropDownCheckBoxClick(TObject *Sender);
	void __fastcall ShowButtonClick(TObject *Sender);
	void __fastcall QuickenStyle1Click(TObject *Sender);
	void __fastcall QuickenStyle2Click(TObject *Sender);
private:	// User declarations
    bool initialized;
public:		// User declarations
	__fastcall TLookupForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TLookupForm *LookupForm;
//---------------------------------------------------------------------------
#endif
