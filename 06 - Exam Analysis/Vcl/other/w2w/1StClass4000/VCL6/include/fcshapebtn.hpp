// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcShapeBtn.pas' rev: 5.00

#ifndef fcShapeBtnHPP
#define fcShapeBtnHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <fcBitmap.hpp>	// Pascal unit
#include <fcEvaluator.hpp>	// Pascal unit
#include <fcImgBtn.hpp>	// Pascal unit
#include <fcButton.hpp>	// Pascal unit
#include <fctext.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcshapebtn
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcShapeOrientation { soLeft, soRight, soUp, soDown };
#pragma option pop

#pragma option push -b-
enum TfcButtonShape { bsRoundRect, bsEllipse, bsTriangle, bsArrow, bsDiamond, bsRect, bsStar, bsTrapezoid, bsCustom };
#pragma option pop

typedef void __fastcall (__closure *TwwComputeCanvasAttributes)(System::TObject* Sender, Graphics::TCanvas* ACanvas);

class DELPHICLASS TfcCustomShapeBtn;
class PASCALIMPLEMENTATION TfcCustomShapeBtn : public Fcimgbtn::TfcCustomImageBtn 
{
	typedef Fcimgbtn::TfcCustomImageBtn inherited;
	
private:
	Classes::TStringList* FPointList;
	TfcButtonShape FShape;
	TfcShapeOrientation FOrientation;
	int FRoundRectBias;
	Graphics::TBitmap* FRegionBitmap;
	TwwComputeCanvasAttributes FOnComputeCanvasAttributes;
	void __fastcall SetShape(TfcButtonShape Value);
	void __fastcall SetOrientation(TfcShapeOrientation Value);
	void __fastcall SetPointList(Classes::TStringList* Value);
	void __fastcall SetRoundRectBias(int Value);
	Graphics::TColor __fastcall CorrectedColor(void);
	
protected:
	virtual void __fastcall DoComputeCanvasAttributes(Graphics::TCanvas* ACanvas);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual bool __fastcall StoreRegionData(void);
	Graphics::TColor __fastcall UnusableColor(void);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	HIDESBASE void __fastcall Draw3dLines(Fcbitmap::TfcBitmap* Bitmap, const Types::TPoint * PointList, const int PointList_Size, int NumPoints, Graphics::TColor TransColor);
	void __fastcall SetPointToOrientation(Fccommon::PfcPolyGonPoints Points, int NumPoints, TfcShapeOrientation Orientation, const tagSIZE &Size);
	int __fastcall GetCustomPoints(Fccommon::PfcPolyGonPoints &Points, const tagSIZE &Size);
	int __fastcall GetStarPoints(Fccommon::PfcPolyGonPoints &Points, const tagSIZE &Size);
	int __fastcall GetPolygonPoints(Fccommon::PfcPolyGonPoints &Points);
	virtual HRGN __fastcall CreateRegion(bool DoImplementation, bool Down);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual bool __fastcall UseRegions(void);
	__property Graphics::TBitmap* RegionBitmap = {read=FRegionBitmap, write=FRegionBitmap};
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomShapeBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomShapeBtn(void);
	virtual bool __fastcall IsMultipleRegions(void);
	virtual bool __fastcall RoundShape(void);
	virtual void __fastcall GetDrawBitmap(Fcbitmap::TfcBitmap* DrawBitmap, bool ForRegion, Fcbutton::TfcShadeStyle ShadeStyle, bool Down);
	virtual void __fastcall SizeToDefault(void);
	__property TfcShapeOrientation Orientation = {read=FOrientation, write=SetOrientation, default=2};
	__property Classes::TStringList* PointList = {read=FPointList, write=SetPointList};
	__property int RoundRectBias = {read=FRoundRectBias, write=SetRoundRectBias, default=0};
	__property TfcButtonShape Shape = {read=FShape, write=SetShape, default=5};
	__property TwwComputeCanvasAttributes OnComputeCanvasAttributes = {read=FOnComputeCanvasAttributes, write=FOnComputeCanvasAttributes};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomShapeBtn(HWND ParentWindow) : Fcimgbtn::TfcCustomImageBtn(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcShapeBtn;
class PASCALIMPLEMENTATION TfcShapeBtn : public TfcCustomShapeBtn 
{
	typedef TfcCustomShapeBtn inherited;
	
__published:
	__property Action ;
	__property Anchors ;
	__property Constraints ;
	__property StaticCaption ;
	__property AllowAllUp ;
	__property Cancel ;
	__property Caption ;
	__property Color ;
	__property Default ;
	__property DitherColor ;
	__property Down ;
	__property DragCursor ;
	__property DataSource ;
	__property DataField ;
	__property DragKind ;
	__property DragMode ;
	__property Font ;
	__property Enabled ;
	__property Glyph ;
	__property GroupIndex ;
	__property Kind ;
	__property Layout ;
	__property Margin ;
	__property ModalResult ;
	__property NumGlyphs ;
	__property Options ;
	__property Offsets ;
	__property Orientation ;
	__property ParentClipping ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PointList ;
	__property PopupMenu ;
	__property RoundRectBias ;
	__property ShadeColors ;
	__property ShadeStyle ;
	__property Shape ;
	__property ShowHint ;
	__property SmoothFont ;
	__property Spacing ;
	__property Style ;
	__property TabOrder ;
	__property TabStop ;
	__property TextOptions ;
	__property Visible ;
	__property OnClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnSelChange ;
	__property OnStartDrag ;
	__property OnComputeCanvasAttributes ;
	__property DisableThemes ;
public:
	#pragma option push -w-inl
	/* TfcCustomShapeBtn.Create */ inline __fastcall virtual TfcShapeBtn(Classes::TComponent* AOwner) : TfcCustomShapeBtn(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomShapeBtn.Destroy */ inline __fastcall virtual ~TfcShapeBtn(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcShapeBtn(HWND ParentWindow) : TfcCustomShapeBtn(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const int DEFUNUSECOLOR = 0xff;
static const int DEFUNUSECOLOR2 = 0xff0000;

}	/* namespace Fcshapebtn */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcshapebtn;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcShapeBtn
