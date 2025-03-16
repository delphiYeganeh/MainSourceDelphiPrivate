// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcimageform.pas' rev: 5.00

#ifndef fcimageformHPP
#define fcimageformHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <fcImage.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcimageform
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcImageFormOption { ifUseWindowsDrag, ifNoPaletteDither };
#pragma option pop

typedef Set<TfcImageFormOption, ifUseWindowsDrag, ifNoPaletteDither>  TfcImageFormOptions;

class DELPHICLASS TfcCustomImageForm;
class PASCALIMPLEMENTATION TfcCustomImageForm : public Fcimage::TfcCustomImage 
{
	typedef Fcimage::TfcCustomImage inherited;
	
private:
	int FDragTolerance;
	Graphics::TColor FTransparentColor;
	HRGN FRegion;
	Controls::TControl* FCaptionBarControl;
	TfcImageFormOptions FOptions;
	#pragma pack(push, 1)
	Types::TRect LastFocusRect;
	#pragma pack(pop)
	
	void __fastcall ReadRegions(Classes::TStream* Reader);
	void __fastcall WriteRegions(Classes::TStream* Writer);
	Graphics::TPicture* __fastcall GetPicture(void);
	HIDESBASE void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetOptions(TfcImageFormOptions Value);
	void __fastcall SetCaptionBarControl(Controls::TControl* Value);
	
protected:
	bool DraggingForm;
	void __fastcall DestroyWnd(void);
	virtual void __fastcall Paint(void);
	Graphics::TColor __fastcall GetTransparentColor(void);
	virtual void __fastcall DrawFocusRect(HDC DC, const Types::TRect &FocusRect);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall FormMouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall SetParent(Controls::TWinControl* Value);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall AfterFormWndProc(Messages::TMessage &Message);
	virtual void __fastcall MouseLoop(int X, int Y);
	virtual void __fastcall MouseLoop_MouseMove(int X, int Y, const Types::TPoint &ACursorPos, bool &FirstTime, Types::TRect &FocusRect, const Types::TRect &OriginalRect);
	virtual void __fastcall MouseLoop_MouseUp(int X, int Y, const Types::TPoint &ACursorPos, const Types::TRect &OriginalRect, const Types::TRect &FocusRect);
	virtual bool __fastcall GetDragFullWindows(void);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomImageForm(Classes::TComponent* Aowner);
	__fastcall virtual ~TfcCustomImageForm(void);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	virtual void __fastcall ApplyBitmapRegion(void);
	virtual void __fastcall ScaleRegion(float xFact, float yFact);
	__property HRGN RegionData = {read=FRegion, stored=true, nodefault};
	__property Controls::TControl* CaptionBarControl = {read=FCaptionBarControl, write=SetCaptionBarControl};
	__property int DragTolerance = {read=FDragTolerance, write=FDragTolerance, nodefault};
	__property Graphics::TPicture* Picture = {read=GetPicture, write=SetPicture};
	__property Graphics::TColor TransparentColor = {read=FTransparentColor, write=FTransparentColor, default=536870911};
	__property TfcImageFormOptions Options = {read=FOptions, write=SetOptions, default=0};
};


class DELPHICLASS TfcImageForm;
class PASCALIMPLEMENTATION TfcImageForm : public TfcCustomImageForm 
{
	typedef TfcCustomImageForm inherited;
	
__published:
	__property Options ;
	__property Align ;
	__property AutoSize ;
	__property Picture ;
	__property PopupMenu ;
	__property ShowHint ;
	__property Visible ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property CaptionBarControl ;
	__property DragTolerance ;
	__property TransparentColor ;
public:
	#pragma option push -w-inl
	/* TfcCustomImageForm.Create */ inline __fastcall virtual TfcImageForm(Classes::TComponent* Aowner) : TfcCustomImageForm(Aowner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomImageForm.Destroy */ inline __fastcall virtual ~TfcImageForm(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcimageform */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcimageform;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcimageform
