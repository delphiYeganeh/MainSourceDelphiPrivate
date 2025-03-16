//---------------------------------------------------------------------------
#ifndef TreeDemoH
#define TreeDemoH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcDemoRichEdit.hpp"
#include "fcStatusBar.hpp"
#include "fcTreeView.hpp"
#include <ComCtrls.hpp>
#include <Db.hpp>
#include <DBGrids.hpp>
#include <DBTables.hpp>
#include <Grids.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
class TTreeViewDemoForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TfcTreeView *fcTreeView1;
        TCheckBox *CheckBox1;
        TCheckBox *CheckBox2;
        TfcDemoRichEdit *fcDemoRichEdit1;
        TTabSheet *TabSheet2;
        TfcStatusBar *fcStatusBar1;
        TfcTreeView *fcTreeView2;
        TfcDemoRichEdit *fcDemoRichEdit2;
        TTabSheet *TabSheet3;
        TLabel *Label1;
        TfcTreeView *fcTreeView3;
        TButton *Button1;
        TDBGrid *DBGrid1;
        TfcDemoRichEdit *fcDemoRichEdit3;
        TImageList *ImageList1;
        TDataSource *DataSource1;
        TImageList *ImageList2;
        TQuery *Query1;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall fcTreeView1CalcNodeAttributes(
          TfcCustomTreeView *TreeView, TfcTreeNode *Node,
          TfcItemStates State);
        void __fastcall CheckBox1Click(TObject *Sender);
        void __fastcall CheckBox2Click(TObject *Sender);
        void __fastcall fcTreeView2MouseMove(TfcCustomTreeView *TreeView,
          TfcTreeNode *Node, TShiftState Shift, int X, int Y);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall fcTreeView3ToggleCheckbox(
          TfcCustomTreeView *TreeView, TfcTreeNode *Node);
        void __fastcall Query1FilterRecord(TDataSet *DataSet,
          bool &Accept);
private:	// User declarations
public:		// User declarations
        __fastcall TTreeViewDemoForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TTreeViewDemoForm *TreeViewDemoForm;
//---------------------------------------------------------------------------
#endif
