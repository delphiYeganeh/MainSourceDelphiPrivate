//---------------------------------------------------------------------------
#ifndef mapuH
#define mapuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include <Db.hpp>
#include <DBCtrls.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TMapForm : public TForm
{
__published:	// IDE-managed Components
        TImage *Image2;
        TfcImageBtn *fcImageBtn8;
        TfcImageBtn *fcImageBtn3;
        TfcImageBtn *fcImageBtn4;
        TfcImageBtn *fcImageBtn5;
        TfcImageBtn *fcImageBtn6;
        TfcImageBtn *fcImageBtn1;
        TfcImageBtn *fcImageBtn2;
        TfcImageBtn *fcImageBtn7;
        TfcImageBtn *fcImageBtn9;
        TfcImageBtn *fcImageBtn10;
        TPanel *Panel1;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label4;
        TLabel *Label6;
        TfcLabel *fcLabel4;
        TLabel *Label3;
        TDBEdit *DBEdit2;
        TDBEdit *DBEdit4;
        TDBEdit *DBEdit6;
        TDBEdit *DBEdit1;
        TDBMemo *DBMemo1;
        TDataSource *DataSource1;
        TTable *Table1;
        TStringField *Table1CountyName;
        TCurrencyField *Table1SalesTaxRate;
        TIntegerField *Table1NumberOfCities;
        TIntegerField *Table1EstimatedPopulation;
        TIntegerField *Table1EstimatedHousingUnits;
        TStringField *Table1CountyCode;
        TMemoField *Table1CityTownList;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall fcImageBtn2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TMapForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMapForm *MapForm;
//---------------------------------------------------------------------------
#endif
