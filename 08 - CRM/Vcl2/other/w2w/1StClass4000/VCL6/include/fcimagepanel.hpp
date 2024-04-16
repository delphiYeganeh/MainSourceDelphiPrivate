// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcimagepanel.pas' rev: 5.00

#ifndef fcimagepanelHPP
#define fcimagepanelHPP

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

namespace Fcimagepanel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomImagePanel;
class PASCALIMPLEMENTATION TfcCustomImagePanel : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	Graphics::TColor FTransparentColor;
	HRGN FRegion;
	Controls::TWinControl* FControl;
	Fcimage::TfcCustomImage* FImage;
	bool InUpdateSize;
	void __fastcall ReadRegions(Classes::TStream* Reader);
	void __fastcall WriteRegions(Classes::TStream* Writer);
	Graphics::TPicture* __fastcall GetPicture(void);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetControl(Controls::TWinControl* Value);
	
protected:
	virtual void __fastcall DestroyWnd(void);
	Graphics::TColor __fastcall GetTransparentColor(void);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall SetParent(Controls::TWinControl* Value);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall UpdateSize(void);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomImagePanel(Classes::TComponent* Aowner);
	__fastcall virtual ~TfcCustomImagePanel(void);
	virtual void __fastcall ApplyBitmapRegion(void);
	__property HRGN RegionData = {read=FRegion, stored=true, nodefault};
	__property Graphics::TPicture* Picture = {read=GetPicture, write=SetPicture};
	__property Graphics::TColor TransparentColor = {read=FTransparentColor, write=FTransparentColor, default=536870911};
	__property Controls::TWinControl* Control = {read=FControl, write=SetControl};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomImagePanel(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcImagePanel;
class PASCALIMPLEMENTATION TfcImagePanel : public TfcCustomImagePanel 
{
	typedef TfcCustomImagePanel inherited;
	
__published:
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
	__property TransparentColor ;
public:
	#pragma option push -w-inl
	/* TfcCustomImagePanel.Create */ inline __fastcall virtual TfcImagePanel(Classes::TComponent* Aowner) : TfcCustomImagePanel(Aowner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomImagePanel.Destroy */ inline __fastcall virtual ~TfcImagePanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcImagePanel(HWND ParentWindow) : TfcCustomImagePanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Fcimagepanel */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcimagepanel;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcimagepanel
