//---------------------------------------------------------------------------
#ifndef RcdpnldemoH
#define RcdpnldemoH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "Wwdatsrc.hpp"
#include "Wwdbcomb.hpp"
#include "wwdbedit.hpp"
#include "wwDBNavigator.hpp"
#include "Wwdotdot.hpp"
#include "wwrcdpnl.hpp"
#include "wwSpeedButton.hpp"
#include "Wwtable.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
#include "wwclearpanel.hpp"
//---------------------------------------------------------------------------
class TRecordPanelDemo : public TForm
{
__published:	// IDE-managed Components
    TBevel *RulerBevel;
    TBevel *Bevel1;
    TBevel *Bevel2;
    TwwRecordViewPanel *wwRecordViewPanel1;
    TStatusBar *StatusBar1;
    TPanel *Panel1;
    TLabel *Label2;
    TLabel *Label1;
    TwwDBComboBox *TableComboBox;
    TwwDBComboBox *AliasComboBox;
    TPanel *Panel2;
    TCheckBox *ConsistentEditWidthCheckbox;
    TRadioGroup *Layout;
    TwwDBNavigator *wwDBNavigator1;
    TwwNavButton *wwDBNavigator1First;
    TwwNavButton *wwDBNavigator1PriorPage;
    TwwNavButton *wwDBNavigator1Prior;
    TwwNavButton *wwDBNavigator1Next;
    TwwNavButton *wwDBNavigator1NextPage;
    TwwNavButton *wwDBNavigator1Last;
    TwwNavButton *wwDBNavigator1Insert;
    TwwNavButton *wwDBNavigator1Delete;
    TwwNavButton *wwDBNavigator1Edit;
    TwwNavButton *wwDBNavigator1Post;
    TwwNavButton *wwDBNavigator1Cancel;
    TwwNavButton *wwDBNavigator1Refresh;
    TwwNavButton *wwDBNavigator1SaveBookmark;
    TwwNavButton *wwDBNavigator1RestoreBookmark;
    TwwNavButton *wwDBNavigator1FilterDialog;
    TwwDataSource *wwDataSource1;
    TwwTable *wwTable1;
    void __fastcall FormShow(TObject *Sender);
    void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
    void __fastcall LayoutClick(TObject *Sender);
    void __fastcall ConsistentEditWidthCheckboxClick(TObject *Sender);
    void __fastcall AliasComboBoxChange(TObject *Sender);
    void __fastcall TableComboBoxChange(TObject *Sender);
private:	// User declarations
    void __fastcall FormChangeHint(TObject *Sender);
//    TNotifyEvent OrigApplicationHint;

public:		// User declarations
    __fastcall TRecordPanelDemo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TRecordPanelDemo *RecordPanelDemo;
//---------------------------------------------------------------------------
#endif
