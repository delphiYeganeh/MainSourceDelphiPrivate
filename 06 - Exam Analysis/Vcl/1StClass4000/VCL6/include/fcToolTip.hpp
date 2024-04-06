// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcToolTip.pas' rev: 5.00

#ifndef fcToolTipHPP
#define fcToolTipHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Types.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fctooltip
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcToolTip;
class PASCALIMPLEMENTATION TfcToolTip : public Controls::THintWindow 
{
	typedef Controls::THintWindow inherited;
	
protected:
	virtual void __fastcall Paint(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
public:
	virtual Types::TRect __fastcall CalcHintRect(int MaxWidth, const AnsiString AHint, void * AData);
	virtual void __fastcall ActivateHintData(const Types::TRect &Rect, const AnsiString AHint, void * AData);
public:
	#pragma option push -w-inl
	/* THintWindow.Create */ inline __fastcall virtual TfcToolTip(Classes::TComponent* AOwner) : Controls::THintWindow(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TfcToolTip(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcToolTip(HWND ParentWindow) : Controls::THintWindow(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE Graphics::TFont* fcHintFont;
extern PACKAGE Types::TPoint fcHintPos;

}	/* namespace Fctooltip */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctooltip;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcToolTip
