//---------------------------------------------------------------------------

#ifndef gridctrlH
#define gridctrlH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwclearbuttongroup.hpp"
#include "wwDataInspector.hpp"
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "wwradiogroup.hpp"
#include "wwriched.hpp"
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TGridControlsForm : public TForm
{
__published:	// IDE-managed Components
        TwwDBGrid *wwDBGrid1;
        TwwIButton *wwDBGrid1IButton;
        TDBImage *DBImage2;
        TwwDBRichEdit *wwDBRichEdit2;
        TwwRadioGroup *wwRadioGroup2;
        TwwDataInspector *wwDataInspector1;
        TDataSource *DataSource1;
        TTable *Table1;
        TFloatField *Table1ACCT_NBR;
        TStringField *Table1FIRST_NAME;
        TStringField *Table1LAST_NAME;
        TIntegerField *Table1details;
        TBlobField *Table1RINTERESTS;
        TBlobField *Table1IMAGE;
        TSmallintField *Table1PAYMETHOD;
        TFloatField *Table1BALANCEDUE;
        TStringField *Table1SEX;
        TBooleanField *Table1MARRIED;
        TStringField *Table1CITY;
        TSmallintField *Table1EDUCATION;
        TBooleanField *Table1selected;
        TStringField *Table1ADDRESS_1;
        TStringField *Table1STATE;
        TStringField *Table1ZIP;
        TStringField *Table1TELEPHONE;
        TDateField *Table1DATE_OPEN;
        TStringField *Table1INTERESTS;
        TFloatField *Table1SS_NUMBER;
        TStringField *Table1PICTURE;
        TDateField *Table1BIRTH_DATE;
        TStringField *Table1RISK_LEVEL;
        TStringField *Table1OCCUPATION;
        TStringField *Table1OBJECTIVES;
        TStringField *Table1CREDRATING;
        TImageList *ImageList6;
private:	// User declarations
public:		// User declarations
        __fastcall TGridControlsForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGridControlsForm *GridControlsForm;
//---------------------------------------------------------------------------
#endif
