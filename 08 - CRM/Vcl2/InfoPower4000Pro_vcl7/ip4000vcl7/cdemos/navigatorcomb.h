//---------------------------------------------------------------------------
#ifndef navigatorcombH
#define navigatorcombH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "Wwdatsrc.hpp"
#include "wwDBNavigator.hpp"
#include "wwrcdpnl.hpp"
#include "wwriched.hpp"
#include "wwSpeedButton.hpp"
#include "Wwtable.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <ExtCtrls.hpp>
#include "wwclearpanel.hpp"
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TCombinedForm : public TForm
{
__published:	// IDE-managed Components
    TwwDataSource *wwDataSource1;
    TwwTable *wwTable1;
    TwwDataSource *wwDataSource2;
    TwwTable *wwTable2;
    TwwDBNavigator *Navigator;
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
    TwwNavButton *NavigatorButton;
    TwwNavButton *NavigatorButton1;
    TwwNavButton *NavigatorButton2;
    TStatusBar *StatusBar1;
    TPanel *Panel1;
    TSplitter *Splitter2;
    TPanel *Panel2;
    TwwRecordViewPanel *wwRecordViewPanel2;
    TPanel *Panel3;
    TwwDBRichEdit *wwDBRichEdit1;
    TwwRecordViewPanel *wwRecordViewPanel1;
    TImageList *ImageList1;
    void __fastcall NavigatorButton2Click(TObject *Sender);
    void __fastcall FormDestroy(TObject *Sender);
    void __fastcall FormCreate(TObject *Sender);
private:	// User declarations
    void __fastcall ActiveControlChange(TObject *Sender);

public:		// User declarations
    __fastcall TCombinedForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TCombinedForm *CombinedForm;
//---------------------------------------------------------------------------
#endif
