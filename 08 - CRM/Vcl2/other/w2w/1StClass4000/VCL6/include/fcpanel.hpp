// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcpanel.pas' rev: 5.00

#ifndef fcpanelHPP
#define fcpanelHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <fcframe.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcpanel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomPanel;
class PASCALIMPLEMENTATION TfcCustomPanel : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	Fcframe::TfcEditFrame* FFrame;
	bool FFocused;
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TWMMove &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	
protected:
	bool FTransparent;
	void __fastcall ClipChildren(bool Value);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall SetTransparent(bool Value);
	virtual void __fastcall Paint(void);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual bool __fastcall IsTransparent(void);
	virtual bool __fastcall InvalidateNeeded(void);
	
public:
	__fastcall virtual TfcCustomPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomPanel(void);
	virtual void __fastcall Invalidate(void);
	__property Fcframe::TfcEditFrame* Frame = {read=FFrame, write=FFrame};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomPanel(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomGroupBox;
class PASCALIMPLEMENTATION TfcCustomGroupBox : public Stdctrls::TCustomGroupBox 
{
	typedef Stdctrls::TCustomGroupBox inherited;
	
private:
	bool FBorderAroundLabel;
	Fcframe::TfcEditFrame* FFrame;
	bool FFocused;
	int FCaptionIndent;
	bool FFullBorder;
	void __fastcall SetCaptionIndent(int Value);
	void __fastcall SetFullBorder(bool Value);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMMove(Messages::TWMMove &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	
protected:
	bool FTransparent;
	void __fastcall ClipChildren(bool Value);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall SetTransparent(bool Value);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall SetParent(Controls::TWinControl* AParent);
	virtual bool __fastcall IsTransparent(void);
	virtual bool __fastcall InvalidateNeeded(void);
	
public:
	__fastcall virtual TfcCustomGroupBox(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomGroupBox(void);
	virtual void __fastcall Invalidate(void);
	__property int CaptionIndent = {read=FCaptionIndent, write=SetCaptionIndent, default=8};
	__property bool BorderAroundLabel = {read=FBorderAroundLabel, write=FBorderAroundLabel, default=0};
	__property bool FullBorder = {read=FFullBorder, write=SetFullBorder, default=0};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
	__property Fcframe::TfcEditFrame* Frame = {read=FFrame, write=FFrame};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomGroupBox(HWND ParentWindow) : Stdctrls::TCustomGroupBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcPanel;
class PASCALIMPLEMENTATION TfcPanel : public TfcCustomPanel 
{
	typedef TfcCustomPanel inherited;
	
public:
	__property DockManager ;
	
__published:
	__property Align ;
	__property Alignment ;
	__property Anchors ;
	__property AutoSize ;
	__property BevelInner ;
	__property BevelOuter ;
	__property BevelWidth ;
	__property BiDiMode ;
	__property BorderWidth ;
	__property BorderStyle ;
	__property Caption ;
	__property Color ;
	__property Constraints ;
	__property Ctl3D ;
	__property UseDockManager ;
	__property DockSite ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Enabled ;
	__property FullRepaint ;
	__property Font ;
	__property Frame ;
	__property Locked ;
	__property ParentBiDiMode ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property Transparent ;
	__property Visible ;
	__property OnCanResize ;
	__property OnClick ;
	__property OnConstrainedResize ;
	__property OnContextPopup ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGetSiteInfo ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResize ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TfcCustomPanel.Create */ inline __fastcall virtual TfcPanel(Classes::TComponent* AOwner) : TfcCustomPanel(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomPanel.Destroy */ inline __fastcall virtual ~TfcPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcPanel(HWND ParentWindow) : TfcCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcGroupBox;
class PASCALIMPLEMENTATION TfcGroupBox : public TfcCustomGroupBox 
{
	typedef TfcCustomGroupBox inherited;
	
__published:
	__property Align ;
	__property Anchors ;
	__property BiDiMode ;
	__property BorderAroundLabel ;
	__property Caption ;
	__property CaptionIndent ;
	__property Color ;
	__property Constraints ;
	__property Ctl3D ;
	__property DockSite ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property Frame ;
	__property FullBorder ;
	__property ParentBiDiMode ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property Transparent ;
	__property Visible ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDockDrop ;
	__property OnDockOver ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGetSiteInfo ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnUnDock ;
public:
	#pragma option push -w-inl
	/* TfcCustomGroupBox.Create */ inline __fastcall virtual TfcGroupBox(Classes::TComponent* AOwner) : TfcCustomGroupBox(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomGroupBox.Destroy */ inline __fastcall virtual ~TfcGroupBox(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcGroupBox(HWND ParentWindow) : TfcCustomGroupBox(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcpanel */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcpanel;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcpanel
