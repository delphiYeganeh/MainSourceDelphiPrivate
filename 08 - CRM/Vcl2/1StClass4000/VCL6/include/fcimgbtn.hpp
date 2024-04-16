// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcImgBtn.pas' rev: 5.00

#ifndef fcImgBtnHPP
#define fcImgBtnHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <fcImager.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <fcBitmap.hpp>	// Pascal unit
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

namespace Fcimgbtn
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcDitherStyle { dsDither, dsBlendDither, dsFill };
#pragma option pop

class DELPHICLASS TfcImgDownOffsets;
class PASCALIMPLEMENTATION TfcImgDownOffsets : public Fcbutton::TfcOffsets 
{
	typedef Fcbutton::TfcOffsets inherited;
	
private:
	int FImageDownX;
	int FImageDownY;
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TfcImgDownOffsets(Fcbutton::TfcCustomBitBtn* AControl);
	
__published:
	__property int ImageDownX = {read=FImageDownX, write=FImageDownX, default=2};
	__property int ImageDownY = {read=FImageDownY, write=FImageDownY, default=2};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcImgDownOffsets(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomImageBtn;
class PASCALIMPLEMENTATION TfcCustomImageBtn : public Fcbutton::TfcCustomBitBtn 
{
	typedef Fcbutton::TfcCustomBitBtn inherited;
	
private:
	Graphics::TColor FDitherColor;
	TfcDitherStyle FDitherStyle;
	Fcbitmap::TfcBitmap* FImage;
	Fcbitmap::TfcBitmap* FImageDown;
	Fcchangelink::TfcChangeLink* FImageChangeLink;
	Classes::TComponent* FExtImage;
	Classes::TComponent* FExtImageDown;
	Graphics::TColor FTransparentColor;
	TfcImgDownOffsets* __fastcall GetOffsets(void);
	bool __fastcall GetParentClipping(void);
	bool __fastcall GetRespectPalette(void);
	void __fastcall SetDitherColor(Graphics::TColor Value);
	void __fastcall SetDitherStyle(TfcDitherStyle Value);
	void __fastcall SetExtImage(Classes::TComponent* Value);
	void __fastcall SetExtImageDown(Classes::TComponent* Value);
	void __fastcall SetImage(Fcbitmap::TfcBitmap* Value);
	void __fastcall SetImageDown(Fcbitmap::TfcBitmap* Value);
	void __fastcall SetOffsets(TfcImgDownOffsets* Value);
	void __fastcall SetParentClipping(bool Value);
	void __fastcall SetRespectPalette(bool Value);
	void __fastcall SetTransparentColor(Graphics::TColor Value);
	
protected:
	void __fastcall Draw3DLines(Fcbitmap::TfcBitmap* SrcBitmap, Fcbitmap::TfcBitmap* DstBitmap, Graphics::TColor TransColor, bool Down);
	void __fastcall SetExtImages(Classes::TComponent* Value, Classes::TComponent* &Prop);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual HRGN __fastcall CreateRegion(bool DoImplementation, bool Down);
	virtual Fcbutton::TfcOffsets* __fastcall CreateOffsets(void);
	Graphics::TColor __fastcall GetTransparentColor(bool Down);
	virtual Fcbitmap::TfcBitmap* __fastcall ObtainImage(bool DownImage);
	virtual bool __fastcall StoreRegionData(void);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	virtual void __fastcall GetSizedImage(Fcbitmap::TfcBitmap* SourceBitmap, Fcbitmap::TfcBitmap* DestBitmap, Fcbutton::TfcShadeStyle ShadeStyle, bool ForRegion, bool DownFlag);
	virtual void __fastcall ImageChanged(System::TObject* Sender);
	void __fastcall ExtImageDestroying(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual bool __fastcall UseRegions(void);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomImageBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomImageBtn(void);
	virtual Graphics::TColor __fastcall ColorAtPoint(const Types::TPoint &APoint);
	virtual bool __fastcall IsMultipleRegions(void);
	virtual void __fastcall GetDrawBitmap(Fcbitmap::TfcBitmap* DrawBitmap, bool ForRegion, Fcbutton::TfcShadeStyle ShadeStyle, bool Down);
	virtual void __fastcall SplitImage(void);
	virtual void __fastcall SizeToDefault(void);
	__property Graphics::TColor DitherColor = {read=FDitherColor, write=SetDitherColor, nodefault};
	__property TfcDitherStyle DitherStyle = {read=FDitherStyle, write=SetDitherStyle, nodefault};
	__property Classes::TComponent* ExtImage = {read=FExtImage, write=SetExtImage};
	__property Classes::TComponent* ExtImageDown = {read=FExtImageDown, write=SetExtImageDown};
	__property Fcbitmap::TfcBitmap* Image = {read=FImage, write=SetImage};
	__property Fcbitmap::TfcBitmap* ImageDown = {read=FImageDown, write=SetImageDown};
	__property TfcImgDownOffsets* Offsets = {read=GetOffsets, write=SetOffsets};
	__property bool ParentClipping = {read=GetParentClipping, write=SetParentClipping, nodefault};
	__property bool RespectPalette = {read=GetRespectPalette, write=SetRespectPalette, default=0};
	__property Graphics::TColor TransparentColor = {read=FTransparentColor, write=SetTransparentColor, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomImageBtn(HWND ParentWindow) : Fcbutton::TfcCustomBitBtn(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImageBtn;
class PASCALIMPLEMENTATION TfcImageBtn : public TfcCustomImageBtn 
{
	typedef TfcCustomImageBtn inherited;
	
__published:
	__property Action ;
	__property Anchors ;
	__property Constraints ;
	__property AllowAllUp ;
	__property Cancel ;
	__property Caption ;
	__property Color ;
	__property Default ;
	__property DitherColor ;
	__property DitherStyle ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Down ;
	__property Font ;
	__property Enabled ;
	__property ExtImage ;
	__property ExtImageDown ;
	__property Glyph ;
	__property GroupIndex ;
	__property Image ;
	__property ImageDown ;
	__property Kind ;
	__property Layout ;
	__property Margin ;
	__property ModalResult ;
	__property NumGlyphs ;
	__property Offsets ;
	__property Options ;
	__property ParentClipping ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property RespectPalette ;
	__property ShadeColors ;
	__property ShadeStyle ;
	__property ShowHint ;
	__property SmoothFont ;
	__property Style ;
	__property Spacing ;
	__property TabOrder ;
	__property TabStop ;
	__property TextOptions ;
	__property TransparentColor ;
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
public:
	#pragma option push -w-inl
	/* TfcCustomImageBtn.Create */ inline __fastcall virtual TfcImageBtn(Classes::TComponent* AOwner) : TfcCustomImageBtn(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomImageBtn.Destroy */ inline __fastcall virtual ~TfcImageBtn(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcImageBtn(HWND ParentWindow) : TfcCustomImageBtn(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcimgbtn */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcimgbtn;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcImgBtn
