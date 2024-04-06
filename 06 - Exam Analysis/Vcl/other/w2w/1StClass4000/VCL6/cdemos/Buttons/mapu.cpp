//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "mapu.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma resource "*.dfm"
TMapForm *MapForm;
//---------------------------------------------------------------------------
__fastcall TMapForm::TMapForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TMapForm::FormShow(TObject *Sender)
{
  //Hide the image if there is not enough colors to display the background.
  if ((GetDeviceCaps(Image2->Canvas->Handle, BITSPIXEL) *
       GetDeviceCaps(Image2->Canvas->Handle, PLANES)) <= 8)
     Image2->Visible = False;
}
//---------------------------------------------------------------------------

void __fastcall TMapForm::fcImageBtn2Click(TObject *Sender)
{
  //Set the title based on the clicked on buttons caption.
  fcLabel4->Caption = ((TfcImageBtn *)Sender)->Caption;

  //Now perform the locate on the table to get the county statistics
  TLocateOptions loptions;
  loptions.Clear();
  loptions << loPartialKey;
  Table1->Locate("CountyName",fcLabel4->Caption,loptions);
}
//---------------------------------------------------------------------------
