// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcScrollBar.pas' rev: 5.00

#ifndef fcScrollBarHPP
#define fcScrollBarHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <ExtCtrls.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
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

namespace Fcscrollbar
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcScrollBarHitTest { htNone, htIncBtn, htDecBtn, htPageUp, htPageDown, htThumb };
#pragma option pop

class DELPHICLASS TfcCustomScrollBar;
typedef void __fastcall (__closure *TfcScrollPosChangeEvent)(TfcCustomScrollBar* Sender, int PriorValue, int NewValue);

class DELPHICLASS TfcScrollbarRepeatInterval;
class PASCALIMPLEMENTATION TfcScrollbarRepeatInterval : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	int FInitialDelay;
	int FRepeatInterval;
	
public:
	__fastcall TfcScrollbarRepeatInterval(void);
	
__published:
	__property int InitialDelay = {read=FInitialDelay, write=FInitialDelay, nodefault};
	__property int Interval = {read=FRepeatInterval, write=FRepeatInterval, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcScrollbarRepeatInterval(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcCustomScrollBar : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	TfcScrollPosChangeEvent FOnChange;
	Forms::TScrollBarKind FKind;
	int FMax;
	int FMin;
	int FPageSize;
	int FPosition;
	Forms::TScrollBarInc FSmallChange;
	Extctrls::TTimer* FTimer;
	bool FFixedThumbSize;
	TfcScrollBarHitTest FClickedPos;
	TfcScrollbarRepeatInterval* FRepeatInterval;
	int DragOffset;
	int DragOrigPosition;
	bool FContinuousDrag;
	int FMinThumbSize;
	int FPriorPosition;
	TfcScrollBarHitTest FLastMouseMovePos;
	void __fastcall SetKind(Forms::TScrollBarKind Value);
	void __fastcall SetMax(int Value);
	void __fastcall SetMin(int Value);
	void __fastcall SetPageSize(int Value);
	void __fastcall SetPosition(int Value);
	void __fastcall SetSmallChange(Forms::TScrollBarInc Value);
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	
protected:
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	virtual void __fastcall PaintScrollRegion(bool All)/* overload */;
	Types::TRect __fastcall GetSectionRect(TfcScrollBarHitTest Section, int DeltaX, int DeltaY);
	virtual void __fastcall MouseLoop(int X, int Y);
	virtual void __fastcall MouseLoop_MouseUp(int X, int Y, const Types::TPoint &ACursorPos);
	virtual void __fastcall ScrollPosChange(int OldPos, int NewPos);
	void __fastcall TimerEvent(System::TObject* Sender);
	virtual void __fastcall Scroll(int ScrollCode, int Position);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	int __fastcall ScrollScreenRange(void);
	virtual void __fastcall AdjustThumb(int &ThumbSize);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomScrollBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomScrollBar(void);
	virtual bool __fastcall HasScrollRange(void);
	virtual TfcScrollBarHitTest __fastcall GetHitTestInfo(int X, int Y);
	virtual void __fastcall Invalidate(void);
	void __fastcall MoveScrollPos(void);
	virtual void __fastcall SetParams(int APosition, int AMax, int AMin);
	__property int MinThumbSize = {read=FMinThumbSize, write=FMinThumbSize, default=8};
	__property bool FixedThumbSize = {read=FFixedThumbSize, write=FFixedThumbSize, nodefault};
	__property Forms::TScrollBarKind Kind = {read=FKind, write=SetKind, nodefault};
	__property int Max = {read=FMax, write=SetMax, nodefault};
	__property int Min = {read=FMin, write=SetMin, nodefault};
	__property int PageSize = {read=FPageSize, write=SetPageSize, nodefault};
	__property int PriorPosition = {read=FPriorPosition, nodefault};
	__property int Position = {read=FPosition, write=SetPosition, nodefault};
	__property Forms::TScrollBarInc SmallChange = {read=FSmallChange, write=SetSmallChange, nodefault};
	__property bool ContinuousDrag = {read=FContinuousDrag, write=FContinuousDrag, nodefault};
	__property TfcScrollbarRepeatInterval* RepeatInterval = {read=FRepeatInterval, write=FRepeatInterval};
	__property TfcScrollPosChangeEvent OnChange = {read=FOnChange, write=FOnChange};
};


class DELPHICLASS TfcScrollBar;
class PASCALIMPLEMENTATION TfcScrollBar : public TfcCustomScrollBar 
{
	typedef TfcCustomScrollBar inherited;
	
__published:
	__property Kind ;
	__property Max ;
	__property Min ;
	__property PageSize ;
	__property Position ;
	__property SmallChange ;
	__property OnChange ;
public:
	#pragma option push -w-inl
	/* TfcCustomScrollBar.Create */ inline __fastcall virtual TfcScrollBar(Classes::TComponent* AOwner) : TfcCustomScrollBar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomScrollBar.Destroy */ inline __fastcall virtual ~TfcScrollBar(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Fcscrollbar */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcscrollbar;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcScrollBar
