//---------------------------------------------------------------------------
#ifndef rcdvwH
#define rcdvwH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include <vcl\Buttons.hpp>
#include <vcl\ExtCtrls.hpp>
#include "Wwdbcomb.hpp"
#include "Wwdotdot.hpp"
#include "wwdbedit.hpp"
#include <vcl\Mask.hpp>
#include "wwdblook.hpp"
#include "wwriched.hpp"
#include <vcl\ComCtrls.hpp>
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include "wwrcdvw.hpp"
#include <vcl\Menus.hpp>
#include "wwDialog.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TRecordViewDemoForm : public TForm
{
__published:	// IDE-managed Components
	TLabel *Label1;
	TwwDBGrid *wwDBGrid1;
	TwwIButton *wwDBGrid1IButton;
	TGroupBox *GroupBox1;
	TRadioGroup *RecordViewStyle;
	TRadioGroup *DialogStyle;
	TCheckBox *EmbedControls;
	TCheckBox *CustomMainMenu;
	TCheckBox *ShowNavigator;
	TCheckBox *ShowOKCancel;
	TwwDBComboBox *wwDBComboBox1;
	TwwDBLookupCombo *wwDBLookupCombo1;
	TwwDBRichEdit *wwDBRichEdit1;
	TwwDataSource *wwDataSource1;
	TwwTable *wwTable1;
	TwwRecordViewDialog *wwRecordViewDialog1;
	TwwTable *wwTable2;
	TMainMenu *RecordViewMenu;
	TMenuItem *First1;
	TMenuItem *Exit1;
	TMenuItem *Edit1;
	TMenuItem *Insert1;
	TMenuItem *Cancel1;
	TMenuItem *Post1;
	TMenuItem *Record1;
	TMenuItem *First2;
	TMenuItem *Prior1;
	TMenuItem *Next1;
	TMenuItem *Last1;
	void __fastcall Exit1Click(TObject *Sender);
	void __fastcall Edit1Click(TObject *Sender);
	void __fastcall Insert1Click(TObject *Sender);
	void __fastcall Cancel1Click(TObject *Sender);
	void __fastcall Post1Click(TObject *Sender);
	void __fastcall First2Click(TObject *Sender);
	void __fastcall Prior1Click(TObject *Sender);
	void __fastcall Next1Click(TObject *Sender);
	void __fastcall Last1Click(TObject *Sender);
	void __fastcall wwDBGrid1IButtonClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
	__fastcall TRecordViewDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TRecordViewDemoForm *RecordViewDemoForm;
//---------------------------------------------------------------------------
#endif
