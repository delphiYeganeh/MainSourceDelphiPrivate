// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcframe.pas' rev: 5.00

#ifndef fcframeHPP
#define fcframeHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <TypInfo.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcframe
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcButtonEffects;
class PASCALIMPLEMENTATION TfcButtonEffects : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FTransparent;
	bool FFlat;
	void __fastcall SetTransparent(bool val);
	void __fastcall SetFlat(bool val);
	
protected:
	virtual void __fastcall Refresh(void);
	
public:
	Controls::TControl* Control;
	Controls::TControl* Button;
	__fastcall TfcButtonEffects(Classes::TComponent* Owner, Controls::TControl* AButton);
	/*         class method */ static TfcButtonEffects* __fastcall Get(TMetaClass* vmt, Controls::TControl* Control);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property bool Flat = {read=FFlat, write=SetFlat, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcButtonEffects(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcEditFocusStyle { efsFrameBox, efsFrameSunken, efsFrameRaised, efsFrameEtched, efsFrameBump, efsFrameSingle };
#pragma option pop

#pragma option push -b-
enum TfcEditFrameEnabledType { efLeftBorder, efTopBorder, efRightBorder, efBottomBorder };
#pragma option pop

typedef Set<TfcEditFrameEnabledType, efLeftBorder, efBottomBorder>  TfcEditFrameEnabledSet;

class DELPHICLASS TfcEditFrame;
class PASCALIMPLEMENTATION TfcEditFrame : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Controls::TWinControl* Control;
	bool FEnabled;
	TfcEditFrameEnabledSet FNonFocusBorders;
	TfcEditFrameEnabledSet FFocusBorders;
	TfcEditFocusStyle FFocusStyle;
	TfcEditFocusStyle FNonFocusStyle;
	int FNonFocusTextOffsetX;
	int FNonFocusTextOffsetY;
	bool FTransparent;
	bool FTransparentClearsBackground;
	bool FMouseEnterSameAsFocus;
	int FAutoSizeHeightAdjust;
	Graphics::TColor FNonFocusTransparentFontColor;
	Graphics::TColor FNonFocusColor;
	Graphics::TColor FNonFocusFontColor;
	void __fastcall SetFocusBorders(TfcEditFrameEnabledSet val);
	void __fastcall SetNonFocusBorders(TfcEditFrameEnabledSet val);
	void __fastcall SetNonFocusStyle(TfcEditFocusStyle val);
	void __fastcall SetEnabled(bool val);
	void __fastcall SetTransparent(bool val);
	void __fastcall CheckParentClipping(void);
	
public:
	bool CreateTransparent;
	bool __fastcall IsSingleBorderStyle(TfcEditFocusStyle Style);
	__fastcall TfcEditFrame(Classes::TComponent* Owner);
	void __fastcall GetEditRectForFrame(Types::TRect &Loc);
	void __fastcall RefreshTransparentText(bool InvalidateBorders, bool UseEditRect);
	void __fastcall RefreshControl(void);
	void __fastcall AdjustHeight(void);
	bool __fastcall IsFrameEffective(void);
	virtual void __fastcall GetFrameTextPosition(int &Left, int &Indent, bool Focused);
	/*         class method */ static TfcEditFrame* __fastcall Get(TMetaClass* vmt, Controls::TControl* Control);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property bool TransparentClearsBackground = {read=FTransparentClearsBackground, write=FTransparentClearsBackground, default=0};
	
__published:
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property int AutoSizeHeightAdjust = {read=FAutoSizeHeightAdjust, write=FAutoSizeHeightAdjust, default=0};
	__property TfcEditFrameEnabledSet FocusBorders = {read=FFocusBorders, write=SetFocusBorders, default=15};
	__property TfcEditFrameEnabledSet NonFocusBorders = {read=FNonFocusBorders, write=SetNonFocusBorders, default=8};
	__property TfcEditFocusStyle FocusStyle = {read=FFocusStyle, write=FFocusStyle, default=0};
	__property TfcEditFocusStyle NonFocusStyle = {read=FNonFocusStyle, write=SetNonFocusStyle, default=0};
	__property int NonFocusTextOffsetX = {read=FNonFocusTextOffsetX, write=FNonFocusTextOffsetX, default=0};
	__property int NonFocusTextOffsetY = {read=FNonFocusTextOffsetY, write=FNonFocusTextOffsetY, default=0};
	__property Graphics::TColor NonFocusTransparentFontColor = {read=FNonFocusTransparentFontColor, write=FNonFocusTransparentFontColor, default=536870911};
	__property Graphics::TColor NonFocusColor = {read=FNonFocusColor, write=FNonFocusColor, default=536870911};
	__property Graphics::TColor NonFocusFontColor = {read=FNonFocusFontColor, write=FNonFocusFontColor, default=536870911};
	__property bool MouseEnterSameAsFocus = {read=FMouseEnterSameAsFocus, write=FMouseEnterSameAsFocus, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcEditFrame(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE bool __fastcall fcIsTransparentParent(Controls::TControl* control);
extern PACKAGE void __fastcall fcDrawEdge(Controls::TWinControl* Control, TfcEditFrame* Frame, Graphics::TCanvas* Canvas, bool Focused);
extern PACKAGE void __fastcall fcInvalidateTransparentArea(Controls::TControl* control);

}	/* namespace Fcframe */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcframe;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcframe
