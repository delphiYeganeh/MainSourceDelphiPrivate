//---------------------------------------------------------------------------
#ifndef PackdlgsH
#define PackdlgsH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
#include <vcl\ExtCtrls.hpp>
#include <vcl\Buttons.hpp>
//---------------------------------------------------------------------------
class TGetTablesForm : public TForm
{
__published:    // IDE-managed Components 
    TBevel *Bevel1;
    TLabel *Label1;
    TLabel *Label2;
    TLabel *Label3;
    TBitBtn *OKBtn;
    TBitBtn *CancelBtn;
    TListBox *TableListBox;
    TComboBox *DBListBox;
    TListBox *SelectedTables;
    TBitBtn *IncludeBtn;
    TBitBtn *ExcludeBtn;
    void __fastcall SelectedTablesClick(TObject *Sender);
    void __fastcall DBListBoxChange(TObject *Sender);
    
    void __fastcall TableListBoxDblClick(TObject *Sender);
    void __fastcall SelectedTablesDblClick(TObject *Sender);
    void __fastcall IncludeBtnClick(TObject *Sender);
    void __fastcall ExcludeBtnClick(TObject *Sender);
private:        // User declarations
    void __fastcall IncludeItems();
//{    procedure IncludeAllItems;}
    void __fastcall ExcludeItems();
//{    procedure ExcludeAllItems;}
    Boolean __fastcall InDestList(String Value);
    Boolean __fastcall InSrcList(String Value);
    void __fastcall SelectDest(int index);
public:         // User declarations
    virtual __fastcall TGetTablesForm(TComponent* Owner);

};
//---------------------------------------------------------------------------
extern TGetTablesForm *GetTablesForm;
extern Boolean __fastcall wwGetTablesDlg(String *databaseName,
        TStrings *tableNames);
//---------------------------------------------------------------------------
#endif
