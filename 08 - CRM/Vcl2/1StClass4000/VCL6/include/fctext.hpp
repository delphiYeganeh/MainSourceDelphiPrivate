// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fctext.pas' rev: 5.00

#ifndef fctextHPP
#define fctextHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcCommon.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fctext
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcVAlignment { vaTop, vaVCenter, vaBottom };
#pragma option pop

#pragma option push -b-
enum TfcTextStyle { fclsDefault, fclsLowered, fclsRaised, fclsOutline };
#pragma option pop

#pragma option push -b-
enum TfcOrientation { fcTopLeft, fcTopRight, fcBottomLeft, fcBottomRight, fcTop, fcRight, fcLeft, fcBottom };
#pragma option pop

#pragma option push -b-
enum TfcTextOption { toShowAccel, toShowEllipsis, toFullJustify };
#pragma option pop

typedef Set<TfcTextOption, toShowAccel, toFullJustify>  TfcTextOptions;

struct TfcTextCallbacks
{
	Fccommon::TfcProcMeth Invalidate;
	Fccommon::TfcProcMeth AdjustBounds;
	Fccommon::TfcBoolFunc GetTextEnabled;
} ;

class DELPHICLASS TfcShadowEffects;
class DELPHICLASS TfcText;
class DELPHICLASS TfcDisabledColors;
class PASCALIMPLEMENTATION TfcDisabledColors : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcText* FText;
	Graphics::TColor FHighlightColor;
	Graphics::TColor FShadeColor;
	void __fastcall SetHighlightColor(Graphics::TColor Value);
	void __fastcall SetShadeColor(Graphics::TColor Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TfcDisabledColors(TfcText* Text);
	
__published:
	__property Graphics::TColor HighlightColor = {read=FHighlightColor, write=SetHighlightColor, default=-2147483628};
	__property Graphics::TColor ShadeColor = {read=FShadeColor, write=SetShadeColor, default=-2147483632};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcDisabledColors(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcExtrudeEffects;
class PASCALIMPLEMENTATION TfcExtrudeEffects : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcText* FText;
	int FDepth;
	bool FEnabled;
	Graphics::TColor FFarColor;
	Graphics::TColor FNearColor;
	TfcOrientation FOrientation;
	bool FStriated;
	void __fastcall SetDepth(int Value);
	void __fastcall SetEnabled(bool Value);
	void __fastcall SetFarColor(Graphics::TColor Value);
	void __fastcall SetNearColor(Graphics::TColor Value);
	void __fastcall SetOrientation(TfcOrientation Value);
	void __fastcall SetStriated(bool Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TfcExtrudeEffects(TfcText* Text);
	tagSIZE __fastcall EffectiveDepth(bool CheckOrient);
	
__published:
	__property int Depth = {read=FDepth, write=SetDepth, default=10};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property Graphics::TColor FarColor = {read=FFarColor, write=SetFarColor, default=0};
	__property Graphics::TColor NearColor = {read=FNearColor, write=SetNearColor, default=0};
	__property TfcOrientation Orientation = {read=FOrientation, write=SetOrientation, default=3};
	__property bool Striated = {read=FStriated, write=SetStriated, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcExtrudeEffects(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcText : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	#pragma pack(push, 1)
	Types::TRect FRect;
	#pragma pack(pop)
	
	Classes::TAlignment FAlignment;
	Graphics::TCanvas* FCanvas;
	Graphics::TCanvas* FPaintCanvas;
	TfcDisabledColors* FDisabledColors;
	TfcExtrudeEffects* FExtrudeEffects;
	Graphics::TColor FHighlightColor;
	unsigned FFlags;
	Graphics::TFont* FFont;
	int FLineSpacing;
	TfcTextOptions FOptions;
	Graphics::TColor FOutlineColor;
	int FRotation;
	bool FScaledFont;
	Graphics::TColor FShadeColor;
	TfcShadowEffects* FShadow;
	TfcTextStyle FStyle;
	AnsiString FText;
	TfcTextCallbacks FCallbacks;
	#pragma pack(push, 1)
	Types::TRect FTextRect;
	#pragma pack(pop)
	
	TfcVAlignment FVAlignment;
	bool FWordWrap;
	bool FDoubleBuffered;
	bool InDraw;
	Extended __fastcall GetAngle(void);
	void __fastcall SetAlignment(Classes::TAlignment Value);
	void __fastcall SetHighlightColor(Graphics::TColor Value);
	void __fastcall SetLineSpacing(int Value);
	void __fastcall SetOptions(TfcTextOptions Value);
	void __fastcall SetOutlineColor(Graphics::TColor Value);
	void __fastcall SetRotation(int Value);
	void __fastcall SetScaledFont(bool Value);
	void __fastcall SetShadeColor(Graphics::TColor Value);
	void __fastcall SetStyle(TfcTextStyle Value);
	void __fastcall SetText(AnsiString Value);
	void __fastcall SetTextRect(const Types::TRect &Value);
	void __fastcall SetVAlignment(TfcVAlignment Value);
	void __fastcall SetWordWrap(bool Value);
	
protected:
	Graphics::TBitmap* FPaintBitmap;
	virtual Graphics::TCanvas* __fastcall GetCanvas(void);
	virtual tagLOGFONTA __fastcall GetLogFont();
	virtual tagSIZE __fastcall GetTextSize();
	virtual tagSIZE __fastcall CalcTextSize(bool IgnoreRect);
	virtual Types::TRect __fastcall CalcRect(bool IgnoreRect);
	virtual void __fastcall DrawHighlight(void);
	virtual void __fastcall DrawOutline(void);
	virtual void __fastcall DrawShadow(const Types::TRect &r);
	void __fastcall DrawEmbossed(bool Raised);
	virtual void __fastcall DrawText(const Types::TRect &r);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	__property Extended Angle = {read=GetAngle};
	__property Graphics::TFont* Font = {read=FFont};
	
public:
	Variant Patch;
	__fastcall TfcText(const TfcTextCallbacks &ACallbacks, Graphics::TCanvas* ACanvas, Graphics::TFont* AFont);
	__fastcall virtual ~TfcText(void);
	virtual Types::TRect __fastcall CalcDrawRect(bool IgnoreRect);
	virtual void __fastcall CallInvalidate(void);
	virtual void __fastcall Draw(void);
	virtual void __fastcall DrawStandardText(void);
	virtual void __fastcall DrawOutlineText(void);
	virtual void __fastcall DrawEmbossedText(bool Raised);
	void __fastcall DrawExtrusion(void);
	virtual void __fastcall PrepareCanvas(void);
	virtual void __fastcall UpdateFont(Graphics::TFont* Value);
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, nodefault};
	__property Graphics::TCanvas* Canvas = {read=GetCanvas, write=FCanvas};
	__property TfcTextCallbacks Callbacks = {read=FCallbacks, write=FCallbacks};
	__property TfcDisabledColors* DisabledColors = {read=FDisabledColors, write=FDisabledColors};
	__property TfcExtrudeEffects* ExtrudeEffects = {read=FExtrudeEffects, write=FExtrudeEffects};
	__property unsigned Flags = {read=FFlags, write=FFlags, nodefault};
	__property Graphics::TColor HighlightColor = {read=FHighlightColor, write=SetHighlightColor, default=-2147483628};
	__property int LineSpacing = {read=FLineSpacing, write=SetLineSpacing, default=5};
	__property TfcTextOptions Options = {read=FOptions, write=SetOptions, default=1};
	__property Graphics::TColor OutlineColor = {read=FOutlineColor, write=SetOutlineColor, default=0};
	__property int Rotation = {read=FRotation, write=SetRotation, default=0};
	__property bool ScaledFont = {read=FScaledFont, write=SetScaledFont, nodefault};
	__property Graphics::TColor ShadeColor = {read=FShadeColor, write=SetShadeColor, default=-2147483632};
	__property TfcShadowEffects* Shadow = {read=FShadow, write=FShadow};
	__property TfcTextStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property AnsiString Text = {read=FText, write=SetText};
	__property Types::TRect TextRect = {read=FTextRect, write=SetTextRect};
	__property TfcVAlignment VAlignment = {read=FVAlignment, write=SetVAlignment, nodefault};
	__property bool WordWrap = {read=FWordWrap, write=SetWordWrap, default=0};
	__property bool DoubleBuffered = {read=FDoubleBuffered, write=FDoubleBuffered, default=0};
};


class PASCALIMPLEMENTATION TfcShadowEffects : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcText* FText;
	Graphics::TColor FColor;
	bool FEnabled;
	int FXOffset;
	int FYOffset;
	void __fastcall SetColor(Graphics::TColor Value);
	void __fastcall SetEnabled(bool Value);
	void __fastcall SetXOffset(int Value);
	void __fastcall SetYOffset(int Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TfcShadowEffects(TfcText* Text);
	Types::TPoint __fastcall EffectiveOffset();
	
__published:
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-2147483632};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int XOffset = {read=FXOffset, write=SetXOffset, default=10};
	__property int YOffset = {read=FYOffset, write=SetYOffset, default=10};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcShadowEffects(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCaptionText;
class PASCALIMPLEMENTATION TfcCaptionText : public TfcText 
{
	typedef TfcText inherited;
	
__published:
	__property Alignment ;
	__property DisabledColors ;
	__property ExtrudeEffects ;
	__property HighlightColor ;
	__property LineSpacing ;
	__property Options ;
	__property OutlineColor ;
	__property Rotation ;
	__property ShadeColor ;
	__property Shadow ;
	__property Style ;
	__property VAlignment ;
	__property WordWrap ;
	__property DoubleBuffered ;
public:
	#pragma option push -w-inl
	/* TfcText.Create */ inline __fastcall TfcCaptionText(const TfcTextCallbacks &ACallbacks, Graphics::TCanvas* ACanvas, Graphics::TFont* AFont) : TfcText(ACallbacks, ACanvas, AFont) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcText.Destroy */ inline __fastcall virtual ~TfcCaptionText(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TfcTextCallbacks __fastcall MakeCallbacks(Fccommon::TfcProcMeth InvalidateProc, Fccommon::TfcProcMeth AdjustBoundsProc, Fccommon::TfcBoolFunc GetTextEnabledProc);

}	/* namespace Fctext */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctext;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fctext
