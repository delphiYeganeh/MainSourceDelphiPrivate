//---------------------------------------------------------------------------
#ifndef mainmdiH
#define mainmdiH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include <ComCtrls.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
#include <Menus.hpp>
#include <ToolWin.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
//---------------------------------------------------------------------------
class TMainMdiForm : public TForm
{
__published:	// IDE-managed Components
        TStatusBar *StatusBar;
        TToolBar *ToolBar2;
        TToolButton *ToolButton9;
        TToolButton *ToolButton3;
        TToolButton *ToolButton8;
        TToolButton *ToolButton10;
        TfcButtonGroup *fcButtonGroup1;
        TMainMenu *MainMenu1;
        TMenuItem *File1;
        TMenuItem *FileNewItem;
        TMenuItem *FileCloseItem;
        TMenuItem *N1;
        TMenuItem *FileExitItem;
        TMenuItem *Window1;
        TMenuItem *WindowCascadeItem;
        TMenuItem *WindowTileItem;
        TOpenDialog *OpenDialog;
        TImageList *ImageList1;
        void __fastcall FileExitItemClick(TObject *Sender);
        void __fastcall ToolButton10Click(TObject *Sender);
        void __fastcall ToolButton8Click(TObject *Sender);
        void __fastcall FileCloseItemClick(TObject *Sender);
        void __fastcall FileNewItemClick(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall fcButtonGroup1Change(
          TfcCustomButtonGroup *ButtonGroup,
          TfcButtonGroupItem *OldSelected, TfcButtonGroupItem *Selected);
private:	// User declarations
public:		// User declarations
        __fastcall TMainMdiForm(TComponent* Owner);
        void __fastcall SetMDIChildCaption(TCustomForm * Child, String Name);
        void __fastcall CreateMDIChild(const String Name);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainMdiForm *MainMdiForm;
//---------------------------------------------------------------------------
#endif
