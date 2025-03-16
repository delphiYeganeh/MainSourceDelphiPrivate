//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "PicEdt.h"
#include "fcCommon.hpp"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfcPicEditor *fcPicEditor;
//---------------------------------------------------------------------------
__fastcall TfcPicEditor::TfcPicEditor(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
bool TfcPicEditor::ExecutePictureEditor(TGraphic* AGraphic, TPersistent* DestGraphic)
{
  bool retVal = false;

  TfcPicEditor* PicEditor = new TfcPicEditor(Application);
  PicEditor->StoredImage->Assign(AGraphic);
  PicEditor->UpdateImage();
  if (PicEditor->ShowModal() == Controls::mrOk) {
    retVal = true;
    DestGraphic->Assign(PicEditor->StoredImage->Graphic);
  }
  PicEditor->Free();
  return retVal;
}
//---------------------------------------------------------------------------
void TfcPicEditor::UpdateImage()
{
  if (StoredImage->Graphic != NULL && !StoredImage->Graphic->Empty) {
    SIZE s = fcSize(StoredImage->Width, StoredImage->Height);
    if (StoredImage->Width > Image->Width || StoredImage->Height > Image->Height) {
      if (StoredImage->Width > Image->Height)
        s = fcSize(Image->Width, Image->Width * StoredImage->Height / StoredImage->Width);
      else s = fcSize(Image->Height * StoredImage->Width / StoredImage->Height, Image->Height);
    }
    Image->Picture->Bitmap->Width = s.cx;
    Image->Picture->Bitmap->Height = s.cy;
    Image->Picture->Bitmap->Canvas->StretchDraw(Rect(0, 0, s.cx, s.cy), StoredImage->Graphic);
    ImagePanel->Caption = "";
  } else {
    Image->Picture->Bitmap->Assign(NULL);
    Image->Repaint();
    ImagePanel->Caption = "(None)";
  }
}
//---------------------------------------------------------------------------
void __fastcall TfcPicEditor::LoadButtonClick(TObject *Sender)
{
  if (OpenDialog->Execute()) {
    StoredImage->LoadFromFile(OpenDialog->FileName);
    UpdateImage();
  }
}
//---------------------------------------------------------------------------
void __fastcall TfcPicEditor::SaveButtonClick(TObject *Sender)
{
  if (SaveDialog->Execute()) StoredImage->SaveToFile(SaveDialog->FileName);
}
//---------------------------------------------------------------------------
void __fastcall TfcPicEditor::ClearButtonClick(TObject *Sender)
{
  StoredImage->Free();
  StoredImage = new TPicture;
  UpdateImage();
}
//---------------------------------------------------------------------------
void __fastcall TfcPicEditor::FormCreate(TObject *Sender)
{
  StoredImage = new TPicture;        
}
//---------------------------------------------------------------------------

void __fastcall TfcPicEditor::FormDestroy(TObject *Sender)
{
  StoredImage->Free();        
}
//---------------------------------------------------------------------------

