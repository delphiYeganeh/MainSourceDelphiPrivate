//---------------------------------------------------------------------------
#ifndef selfiltH
#define selfiltH
//---------------------------------------------------------------------------
#include <vcl\Classes.hpp>
#include <vcl\Controls.hpp>
#include <vcl\StdCtrls.hpp>
#include <vcl\Forms.hpp>
//---------------------------------------------------------------------------
class TSelectSaveFilter : public TForm
{
__published:	// IDE-managed Components
	TListBox *FiltersBox;
	TButton *Button1;
	TButton *Button2;
	void __fastcall FiltersBoxDblClick(TObject *Sender);
	void __fastcall FiltersBoxKeyDown(TObject *Sender, WORD &Key,
	TShiftState Shift);
private:	// User declarations
public:		// User declarations
	__fastcall TSelectSaveFilter(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern TSelectSaveFilter *SelectSaveFilter;
//---------------------------------------------------------------------------
#endif
