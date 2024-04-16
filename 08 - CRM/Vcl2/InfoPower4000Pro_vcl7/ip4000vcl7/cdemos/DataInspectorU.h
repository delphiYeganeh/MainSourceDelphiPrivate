//---------------------------------------------------------------------------
#ifndef DataInspectorUH
#define DataInspectorUH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "wwclearpanel.hpp"
#include "wwDataInspector.hpp"
#include "Wwdatsrc.hpp"
#include "wwdbedit.hpp"
#include "wwDBNavigator.hpp"
#include "Wwdotdot.hpp"
#include "Wwintl.hpp"
#include "wwriched.hpp"
#include "wwSpeedButton.hpp"
#include "Wwtable.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBTables.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ExtDlgs.hpp>
#include <Graphics.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
class TDataInspectorDemo : public TForm
{
__published:	// IDE-managed Components
        TImage *Image1;
        TwwDataInspector *wwDataInspector1;
        TwwDBRichEdit *wwDBRichEdit1;
        TwwDBComboDlg *wwDBComboDlg1;
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
        TButton *Button1;
        TButton *Button2;
        TwwDBRichEdit *wwDBRichEdit2;
        TwwDataInspector *OptionsInspector;
        TwwDataSource *wwDataSource1;
        TwwTable *wwTable1;
        TDateField *wwTable1StartDate;
        TDateTimeField *wwTable1StartDateTime;
        TTimeField *wwTable1WorkingHourEndTime;
        TTimeField *wwTable1WorkingHourStartTime;
        TStringField *wwTable1MiddleName;
        TStringField *wwTable1Street;
        TStringField *wwTable1City;
        TStringField *wwTable1State;
        TStringField *wwTable1FirstName;
        TStringField *wwTable1LastName;
        TStringField *wwTable1Zip;
        TStringField *wwTable1Country;
        TStringField *wwTable1PhoneNumber;
        TStringField *wwTable1FaxNumber;
        TStringField *wwTable1Company;
        TStringField *wwTable1JobTitle;
        TStringField *wwTable1Name;
        TFloatField *wwTable1EmployeeNo;
        TFloatField *wwTable1NumberOrders;
        TStringField *wwTable1PayType;
        TFloatField *wwTable1PayRate;
        TStringField *wwTable1Supervisor;
        TStringField *wwTable1SSN;
        TMemoField *wwTable1RichEdit;
        TStringField *wwTable1Sabatical;
        TMemoField *wwTable1Memo;
        TStringField *wwTable1Address;
        TStringField *wwTable1EmploymentData;
        TStringField *wwTable1ContactInformation;
        TStringField *wwTable1Salary;
        TStringField *wwTable1Schedule;
        TOpenPictureDialog *OpenPictureDialog1;
        TImageList *ImageList1;
        TwwIntl *wwIntl1;
        void __fastcall LabelLineStyleChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall DataLineStyleChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall OptionsInspectorItems0ItemChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall wwDataInspector1BeforePaint(
          TwwDataInspector *Sender);
        void __fastcall OptionsInspectorCalcDataPaintText(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString &PaintText);
        void __fastcall wwTable1CalcFields(TDataSet *DataSet);
        void __fastcall HideShowDataChanged(
          TwwDataInspector *Sender, TwwInspectorItem *Item,
          AnsiString NewValue);
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TDataInspectorDemo(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDataInspectorDemo *DataInspectorDemo;
//---------------------------------------------------------------------------
#endif
