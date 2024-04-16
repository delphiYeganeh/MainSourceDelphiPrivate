//---------------------------------------------------------------------------
#ifndef QbeH
#define QbeH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include "Wwdbgrid.hpp"
#include "Wwdbigrd.hpp"
#include <vcl\Grids.hpp>
#include "Wwdatsrc.hpp"
#include <vcl\DB.hpp>
#include "Wwqbe.hpp"
#include <vcl\DBTables.hpp>
#include <Db.hpp>
//---------------------------------------------------------------------------
class TQBEForm : public TForm
{
__published:    // IDE-managed Components 
    TwwDBGrid *wwDBGrid1;
    TMemo *Memo1;
    TButton *Button1;
    TwwDataSource *wwDataSource1;
    TwwQBE *wwQBE1;
    TStringField *wwQBE1SYMBOL;
    TStringField *wwQBE1IND_NAME;
    TStringField *wwQBE1CO_NAME;
    TStringField *wwQBE1EXCHANGE;
    TFloatField *wwQBE1CUR_PRICE;
    TFloatField *wwQBE1YRL_HIGH;
    TFloatField *wwQBE1YRL_LOW;
    TFloatField *wwQBE1P_E_RATIO;
    TFloatField *wwQBE1BETA;
    TFloatField *wwQBE1PROJ_GRTH;
    TSmallintField *wwQBE1INDUSTRY;
    TSmallintField *wwQBE1PRICE_CHG;
    TSmallintField *wwQBE1SAFETY;
    TStringField *wwQBE1RATING;
    TFloatField *wwQBE1RANK;
    TSmallintField *wwQBE1OUTLOOK;
    TStringField *wwQBE1RCMNDATION;
    TStringField *wwQBE1RISK;
    void __fastcall FormActivate(TObject *Sender);
private:        // User declarations
public:         // User declarations
    virtual __fastcall TQBEForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TQBEForm *QBEForm;
//---------------------------------------------------------------------------
#endif
