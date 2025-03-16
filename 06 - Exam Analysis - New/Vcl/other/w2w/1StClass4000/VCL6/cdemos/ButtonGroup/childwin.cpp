//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "childwin.h"
#include "mainmdi.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcDemoRichEdit"
#pragma resource "*.dfm"
TMDIChild *MDIChild;
//---------------------------------------------------------------------------
__fastcall TMDIChild::TMDIChild(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMDIChild::FormClose(TObject *Sender, TCloseAction &Action)
{
  Action = caFree;        
}
//---------------------------------------------------------------------------

void __fastcall TMDIChild::FormDestroy(TObject *Sender)
{
  MainMdiForm->fcButtonGroup1->ButtonItems->FindPointerTag(this)->Free();
}
//---------------------------------------------------------------------------

void __fastcall TMDIChild::FormActivate(TObject *Sender)
{
 MainMdiForm->fcButtonGroup1->ButtonItems->FindPointerTag(this)->Selected = True;
}
//---------------------------------------------------------------------------

void __fastcall TMDIChild::FormCreate(TObject *Sender)
{
  Graphics::TBitmap *ABitmap;
  TfcButtonGroupItem * ABtnitem;

  ABtnitem = MainMdiForm->fcButtonGroup1->ButtonItems->Add();
  ((TfcShapeBtn *)(ABtnitem->Button))->TextOptions->Alignment = taLeftJustify;
  ABtnitem->PointerTag = this;
  ABitmap = new Graphics::TBitmap;
  ABitmap->Width = 16;
  ABitmap->Height = 16;
  DrawIconEx(ABitmap->Canvas->Handle, 0, 0, Icon->Handle, 16, 16, 0, 0, DI_NORMAL | DI_DEFAULTSIZE);
  ABtnitem->Button->Glyph = ABitmap;
  ABitmap->Free();
}
//---------------------------------------------------------------------------

