//---------------------------------------------------------------------------
#ifndef PicturesH
#define PicturesH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\Tabnotbk.hpp>
#include <vcl\ComCtrls.hpp>
#include "Wwdbedit.hpp"
#include <vcl\Mask.hpp>
#include "Wwdbspin.hpp"
#include <vcl\DBCtrls.hpp>
#include <vcl\ExtCtrls.hpp>
#include "Wwtable.hpp"
#include <vcl\DBTables.hpp>
#include <vcl\DB.hpp>
#include "Wwdatsrc.hpp"
#include "wwdbedit.hpp"
#include <Db.hpp>
//---------------------------------------------------------------------------
class TPictureForm : public TForm
{
__published:    // IDE-managed Components 
    TTabbedNotebook *TabbedNotebook1;
    TLabel *Label1;
    TLabel *Label3;
    TLabel *Label4;
    TLabel *Label5;
    TLabel *Label6;
    TLabel *Label7;
    TwwDBEdit *ColorEdit;
    TwwDBEdit *ZipEdit;
    TwwDBEdit *PhoneEdit;
    TwwDBEdit *CapitalFirstEdit;
    TwwDBEdit *CapitalizedWordsEdit;
    TButton *ResetButton;
    TwwDBEdit *TimeStampEdit;
    TCheckBox *AutoFillCheckbox;
    TLabel *Label8;
    TLabel *Label9;
    TLabel *Label2;
    TwwDBSpinEdit *DateDBEdit;
    TwwDBEdit *Zip_DBEdit;
    TDBNavigator *DBNavigator1;
    TRadioGroup *RadioGroup1;
    TwwDBEdit *PhonDBEdit;
    TCheckBox *AutoFillBound;
    TMemo *Memo1;
    TwwTable *wwTable1;
    TIntegerField *wwTable1CustomerNo;
    TStringField *wwTable1Buyer;
    TStringField *wwTable1CompanyName;
    TStringField *wwTable1FirstName;
    TStringField *wwTable1LastName;
    TStringField *wwTable1Street;
    TStringField *wwTable1City;
    TStringField *wwTable1State;
    TStringField *wwTable1Zip;
    TDateField *wwTable1FirstContactDate;
    TStringField *wwTable1PhoneNumber;
    TMemoField *wwTable1Information;
    TStringField *wwTable1RequestedDemo;
    TBooleanField *wwTable1Logical;
    TwwDataSource *wwDataSource1;
    TwwTable *wwTable2;
    TStatusBar *StatusBar1;
    void __fastcall ResetButtonClick(TObject *Sender);
    void __fastcall FormShow(TObject *Sender);
    void __fastcall EditCheckValue(TObject *Sender,
      Boolean PassesPictureTest);
    void __fastcall EditEnter(TObject *Sender);
    void __fastcall EditExit(TObject *Sender);
    void __fastcall AutoFillCheckboxClick(TObject *Sender);
    void __fastcall ResetButtonEnter(TObject *Sender);
	
	
private:        // User declarations
public:         // User declarations
    virtual __fastcall TPictureForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TPictureForm *PictureForm;
//---------------------------------------------------------------------------
#endif
