//---------------------------------------------------------------------------
#ifndef grdbttnH
#define grdbttnH
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
#include "wwrcdvw.hpp"
#include "wwDialog.hpp"
#include <Db.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TBtnGridForm : public TForm
{
__published:	// IDE-managed Components
	TwwDBGrid *wwDBGrid1;
	TwwIButton *wwDBGrid1IButton;
	TwwDBRichEdit *wwDBRichEdit1;
	TwwDataSource *wwDataSource1;
	TwwTable *wwTable1;
	TwwRecordViewDialog *wwRecordViewDialog1;
        TImageList *ImageList1;
	void __fastcall wwDBGrid1TitleButtonClick(TObject *Sender,
	AnsiString AFieldName);
	void __fastcall wwDBGrid1IButtonClick(TObject *Sender);
        void __fastcall wwDBGrid1CalcTitleImage(TObject *Sender,
          TField *Field, TwwTitleImageAttributes &TitleImageAttributes);
private:	// User declarations
public:		// User declarations
	__fastcall TBtnGridForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TBtnGridForm *BtnGridForm;
//---------------------------------------------------------------------------
#endif
