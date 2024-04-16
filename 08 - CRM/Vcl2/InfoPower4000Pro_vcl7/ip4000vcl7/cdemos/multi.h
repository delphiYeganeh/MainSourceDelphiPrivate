//---------------------------------------------------------------------------
#ifndef multiH
#define multiH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "Grids.hpp"
#include <vcl\Buttons.hpp>
#include "wwriched.hpp"
#include <vcl\ComCtrls.hpp>
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
//---------------------------------------------------------------------------
class TMultiSelectForm : public TForm
{
__published:	// IDE-managed Components
	TwwDBGrid *wwDBGrid1;
	TButton *DeleteButton;
	TButton *Button1;
	TButton *Button2;
	TGroupBox *GroupBox1;
	TCheckBox *CheckBox1;
	TCheckBox *CheckBox2;
	TCheckBox *CheckBox3;
	TBitBtn *BitBtn2;
	TwwDBRichEdit *wwDBRichEdit1;
	TwwDataSource *wwDataSource1;
	TwwTable *wwTable1;
	TBooleanField *wwTable1Selected;
	TStringField *wwTable1Code;
	TStringField *wwTable1Description;
	void __fastcall FormShow(TObject *Sender);
	void __fastcall wwDBGrid1CalcCellColors(TObject *Sender, TField *Field,
	TGridDrawState State, bool Highlight, TFont *AFont, TBrush *ABrush);
	
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
	void __fastcall BitBtn2Click(TObject *Sender);
	void __fastcall DeleteButtonClick(TObject *Sender);
	void __fastcall CheckBox3Click(TObject *Sender);
	void __fastcall CheckBox1Click(TObject *Sender);
	void __fastcall CheckBox2Click(TObject *Sender);
private:	// User declarations
    void __fastcall  TMultiSelectForm::PopulateTable();
public:		// User declarations
	__fastcall TMultiSelectForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TMultiSelectForm *MultiSelectForm;
//---------------------------------------------------------------------------
#endif
