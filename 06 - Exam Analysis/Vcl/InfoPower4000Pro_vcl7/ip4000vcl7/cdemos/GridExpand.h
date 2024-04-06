//---------------------------------------------------------------------------

#ifndef GridExpandH
#define GridExpandH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwcheckbox.hpp"
#include "wwDataInspector.hpp"
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include "wwriched.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TGridExpandForm : public TForm
{
__published:	// IDE-managed Components
        TwwDBGrid *wwDBGrid1;
        TwwDBRichEdit *wwDBRichEdit2;
        TwwDataInspector *wwDataInspector1;
        TwwExpandButton *wwExpandButton1;
        TwwDataInspector *wwDataInspector2;
        TwwExpandButton *wwExpandButton2;
        TwwDBRichEdit *wwDBRichEdit1;
        TDataSource *DataSource1;
        TTable *Table1;
        TFloatField *Table1ACCT_NBR;
        TStringField *Table1FIRST_NAME;
        TStringField *Table1LAST_NAME;
        TBlobField *Table1RINTERESTS;
        TBlobField *Table1IMAGE;
        TSmallintField *Table1PAYMETHOD;
        TFloatField *Table1BALANCEDUE;
        TStringField *Table1SEX;
        TBooleanField *Table1MARRIED;
        TStringField *Table1CITY;
        TSmallintField *Table1EDUCATION;
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
        TStringField *Table1Name;
        TStringField *Table1ShippingAddress;
        void __fastcall Table1CalcFields(TDataSet *DataSet);
private:	// User declarations
public:		// User declarations
        __fastcall TGridExpandForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TGridExpandForm *GridExpandForm;
//---------------------------------------------------------------------------
#endif
