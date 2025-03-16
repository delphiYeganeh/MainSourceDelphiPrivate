//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "paintu.h"
#include "infounit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "fcButton"
#pragma link "fcButtonGroup"
#pragma link "fcClearPanel"
#pragma link "fcColorCombo"
#pragma link "fcCombo"
#pragma link "fcImgBtn"
#pragma link "fcLabel"
#pragma link "fcOutlookBar"
#pragma link "fcOutlookList"
#pragma link "fcShapeBtn"
#pragma resource "*.dfm"
TPaintForm *PaintForm;
//---------------------------------------------------------------------------
__fastcall TPaintForm::TPaintForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::FormCreate(TObject *Sender)
{
 InfoForm = new TInfoForm(this);
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::FormActivate(TObject *Sender)
{
  if (!InfoShown) {
    InfoForm->Show();
    InfoShown = True;
  }
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::FormShow(TObject *Sender)
{
  PaintBox->Canvas->Brush->Color = clWhite;
  PaintBox->Canvas->FillRect(PaintBox->ClientRect);
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::DrawShape(TPoint *TopLeft,TPoint *BottomRight, TPenMode AMode)
{
 PaintBox->Canvas->Brush->Color = BrushColorCombo->SelectedColor;
 PaintBox->Canvas->Pen->Color = PenColorCombo->SelectedColor;
 PaintBox->Canvas->Pen->Mode = AMode;

 if (BrushesOutlookList->Selected != NULL)
    PaintBox->Canvas->Brush->Style = (TBrushStyle)(BrushesOutlookList->Selected->Index);

 if (PensOutlookList->Selected != NULL)
    PaintBox->Canvas->Pen->Style = (TPenStyle)(PensOutlookList->Selected->Index);

 if (ToolsOutlookList->Selected != NULL)
    switch ((TDrawingTool)(ToolsOutlookList->Selected->Index)) {
    case dtLine: PaintBox->Canvas->MoveTo(TopLeft->x, TopLeft->y);
                 PaintBox->Canvas->LineTo(BottomRight->x, BottomRight->y);
                 break;
    case dtRectangle: PaintBox->Canvas->Rectangle(TopLeft->x, TopLeft->y, BottomRight->x,
         BottomRight->y);
         break;
    case dtEllipse: PaintBox->Canvas->Ellipse(TopLeft->x, TopLeft->y, BottomRight->x,
         BottomRight->y);
         break;
    case dtRoundRect: PaintBox->Canvas->RoundRect(TopLeft->x, TopLeft->y, BottomRight->x,
         BottomRight->y, (TopLeft->x - BottomRight->x) / 2,
        (TopLeft->y - BottomRight->y) / 2);
    }
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::PaintBoxMouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
  Drawing = true;
  PaintBox->Canvas->MoveTo(X, Y);
  Origin = Point(X, Y);
  MovePt = Origin;
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::PaintBoxMouseMove(TObject *Sender,
      TShiftState Shift, int X, int Y)
{
  if (Drawing) {
    DrawShape(&Origin, &MovePt, pmNotXor);
    MovePt = Point(X, Y);
    DrawShape(&Origin, &MovePt, pmNotXor);
  }
}
//---------------------------------------------------------------------------
void __fastcall TPaintForm::PaintBoxMouseUp(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
  TPoint temppt;
  temppt = Point(X,Y);
  if (Drawing) {
    DrawShape(&Origin, &temppt, pmCopy);
    Drawing = false;
  }
}
//---------------------------------------------------------------------------
