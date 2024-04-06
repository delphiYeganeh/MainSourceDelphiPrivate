// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcClearPanel.pas' rev: 5.00

#ifndef fcClearPanelHPP
#define fcClearPanelHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcCommon.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
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

namespace Fcclearpanel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomTransparentPanel;
class PASCALIMPLEMENTATION TfcCustomTransparentPanel : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TWMMove &Message);
	
protected:
	bool FTransparent;
	bool FInEraseBkGnd;
	void __fastcall ClipChildren(bool Value);
	virtual void __fastcall SetTransparent(bool Value);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual bool __fastcall IsTransparent(void);
	
public:
	Variant BasePatch;
	__fastcall virtual TfcCustomTransparentPanel(Classes::TComponent* AOwner);
	virtual void __fastcall Invalidate(void);
	__property bool Transparent = {read=FTransparent, write=SetTransparent, nodefault};
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TfcCustomTransparentPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomTransparentPanel(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTransparentPanel;
class PASCALIMPLEMENTATION TfcTransparentPanel : public TfcCustomTransparentPanel 
{
	typedef TfcCustomTransparentPanel inherited;
	
__published:
	__property Align ;
	__property BevelInner ;
	__property BevelOuter ;
	__property BevelWidth ;
	__property BorderStyle ;
	__property BorderWidth ;
	__property Color ;
	__property Transparent ;
public:
	#pragma option push -w-inl
	/* TfcCustomTransparentPanel.Create */ inline __fastcall virtual TfcTransparentPanel(Classes::TComponent* AOwner) : TfcCustomTransparentPanel(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TfcTransparentPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTransparentPanel(HWND ParentWindow) : TfcCustomTransparentPanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcclearpanel */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcclearpanel;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcClearPanel
