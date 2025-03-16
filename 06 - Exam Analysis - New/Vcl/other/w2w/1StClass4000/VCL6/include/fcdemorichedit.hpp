// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcDemoRichEdit.pas' rev: 5.00

#ifndef fcDemoRichEditHPP
#define fcDemoRichEditHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
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

namespace Fcdemorichedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcDemoRichEdit;
class PASCALIMPLEMENTATION TfcDemoRichEdit : public Comctrls::TCustomRichEdit 
{
	typedef Comctrls::TCustomRichEdit inherited;
	
private:
	Classes::TStream* ReloadStream;
	bool UseReloadStream;
	
protected:
	virtual void __fastcall GetLines(Classes::TStream* Stream);
	HIDESBASE virtual void __fastcall SetLines(Classes::TStream* Stream);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	
public:
	__fastcall virtual ~TfcDemoRichEdit(void);
	
__published:
	__property Align ;
	__property Alignment ;
	__property BorderStyle ;
	__property Color ;
	__property Ctl3D ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property HideSelection ;
	__property HideScrollBars ;
	__property ImeMode ;
	__property ImeName ;
	__property MaxLength ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PlainText ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property ScrollBars ;
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property Visible ;
	__property WantTabs ;
	__property WantReturns ;
	__property WordWrap ;
	__property OnChange ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResizeRequest ;
	__property OnSelectionChange ;
	__property OnStartDrag ;
	__property OnProtectChange ;
	__property OnSaveClipboard ;
public:
	#pragma option push -w-inl
	/* TCustomRichEdit.Create */ inline __fastcall virtual TfcDemoRichEdit(Classes::TComponent* AOwner) : Comctrls::TCustomRichEdit(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDemoRichEdit(HWND ParentWindow) : Comctrls::TCustomRichEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcdemorichedit */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcdemorichedit;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcDemoRichEdit
