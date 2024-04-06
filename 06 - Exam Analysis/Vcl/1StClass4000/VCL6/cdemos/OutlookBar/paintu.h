//---------------------------------------------------------------------------
#ifndef paintuH
#define paintuH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "fcButton.hpp"
#include "fcButtonGroup.hpp"
#include "fcClearPanel.hpp"
#include "fcColorCombo.hpp"
#include "fcCombo.hpp"
#include "fcImgBtn.hpp"
#include "fcLabel.hpp"
#include "fcOutlookBar.hpp"
#include "fcOutlookList.hpp"
#include "fcShapeBtn.hpp"
#include <ExtCtrls.hpp>
#include <ImgList.hpp>
//---------------------------------------------------------------------------
//TDrawingTool = (dtLine, dtRectangle, dtEllipse, dtRoundRect);
enum TDrawingTool { dtLine, dtRectangle, dtEllipse, dtRoundRect};

class TPaintForm : public TForm
{
__published:	// IDE-managed Components
        TImage *PaintBox;
        TfcOutlookBar *fcControlBar1;
        TfcShapeBtn *fcControlBar1fcShapeBtn1;
        TfcShapeBtn *fcControlBar1fcShapeBtn2;
        TfcShapeBtn *fcControlBar1fcShapeBtn3;
        TfcShapeBtn *fcControlBar1fcShapeBtn4;
        TfcOutlookList *ToolsOutlookList;
        TfcOutlookList *BrushesOutlookList;
        TfcOutlookList *PensOutlookList;
        TfcLabel *fcLabel1;
        TfcLabel *fcLabel2;
        TfcColorCombo *BrushColorCombo;
        TfcColorCombo *PenColorCombo;
        TImageList *BrushImages;
        TImageList *PenImages;
        TImageList *ToolImages;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall FormActivate(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall PaintBoxMouseDown(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        void __fastcall PaintBoxMouseMove(TObject *Sender,
          TShiftState Shift, int X, int Y);
        void __fastcall PaintBoxMouseUp(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
private:	// User declarations
        bool Drawing;
        bool InfoShown;
        TPoint Origin, MovePt;
public:		// User declarations
        __fastcall TPaintForm(TComponent* Owner);
        void __fastcall DrawShape(TPoint *TopLeft,TPoint *BottomRight, TPenMode AMode);
};
//---------------------------------------------------------------------------
extern PACKAGE TPaintForm *PaintForm;
//---------------------------------------------------------------------------
#endif
