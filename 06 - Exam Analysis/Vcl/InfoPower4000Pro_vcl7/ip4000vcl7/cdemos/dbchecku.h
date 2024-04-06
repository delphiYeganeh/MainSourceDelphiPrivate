//---------------------------------------------------------------------------
#ifndef dbcheckuH
#define dbcheckuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwclearpanel.hpp"
#include "Wwdbcomb.hpp"
#include "wwdbdatetimepicker.hpp"
#include "wwdbedit.hpp"
#include "wwDBNavigator.hpp"
#include "Wwdotdot.hpp"
#include "wwriched.hpp"
#include "wwSpeedButton.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Graphics.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TCustomFramingForm : public TForm
{
__published:	// IDE-managed Components
        TImage *Image1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label7;
        TLabel *Label8;
        TLabel *Label9;
        TwwDBEdit *PaymentName;
        TwwDBComboBox *CurrencyCombo;
        TwwDBEdit *AmountWord;
        TwwDBEdit *Signature;
        TwwDBDateTimePicker *DateMade;
        TwwDBRichEdit *wwDBRichEdit1;
        TwwDBEdit *wwDBEdit1;
        TwwDBNavigator *wwDBNavigator1;
        TwwNavButton *wwDBNavigator1First;
        TwwNavButton *wwDBNavigator1Prior;
        TwwNavButton *wwDBNavigator1Next;
        TwwNavButton *wwDBNavigator1Last;
        TwwNavButton *wwDBNavigator1Insert;
        TwwNavButton *wwDBNavigator1Post;
        TwwNavButton *wwDBNavigator1Cancel;
        TDataSource *wwDataSource1;
        TTable *wwTable1;
        void __fastcall wwDataSource1DataChange(TObject *Sender,
          TField *Field);
private:	// User declarations
public:		// User declarations
        __fastcall TCustomFramingForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TCustomFramingForm *CustomFramingForm;
//---------------------------------------------------------------------------
#endif
