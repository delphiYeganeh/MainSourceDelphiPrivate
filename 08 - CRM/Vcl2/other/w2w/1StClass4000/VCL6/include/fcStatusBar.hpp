// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcStatusBar.pas' rev: 5.00

#ifndef fcStatusBarHPP
#define fcStatusBarHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <ImgList.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <fctext.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fcCollection.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <RichEdit.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
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

namespace Fcstatusbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcStatusBarText;
class DELPHICLASS TfcCustomStatusBar;
class DELPHICLASS TfcStatusPanels;
class DELPHICLASS TfcStatusPanel;
#pragma option push -b-
enum TfcStatusPanelStyle { psTextOnly, psControl, psOverWrite, psCapsLock, psNumLock, psDateTime, psDate, psTime, psGlyph, psRichEditStatus, psHint, psUserName, psComputerName, psScrollLock, psHintContainerOnly };
#pragma option pop

typedef TMetaClass*TfcStatusPanelClass;

class PASCALIMPLEMENTATION TfcStatusPanels : public Fccollection::TfcCollection 
{
	typedef Fccollection::TfcCollection inherited;
	
private:
	TfcCustomStatusBar* FStatusBar;
	HIDESBASE TfcStatusPanel* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TfcStatusPanel* Value);
	
protected:
	virtual void __fastcall RedrawIfNeeded(TfcStatusPanelStyle StyleToCheck);
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	__property TfcCustomStatusBar* StatusBar = {read=FStatusBar};
	
public:
	__fastcall TfcStatusPanels(TfcCustomStatusBar* StatusBar, TMetaClass* AStatusPanelClass);
	HIDESBASE TfcStatusPanel* __fastcall Add(void);
	TfcStatusPanel* __fastcall PanelByName(AnsiString AName);
	__property TfcStatusPanel* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TfcCollection.Destroy */ inline __fastcall virtual ~TfcStatusPanels(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TDrawKeyboardStateEvent)(TfcCustomStatusBar* StatusBar, TfcStatusPanel* StatusPanel, bool KeyIsOn, const Types::TRect &Rect, AnsiString &AText);

typedef void __fastcall (__closure *TDrawPanelEvent)(TfcCustomStatusBar* StatusBar, TfcStatusPanel* Panel, const Types::TRect &Rect);

typedef TMetaClass*TfcStatusPanelsClass;

class PASCALIMPLEMENTATION TfcCustomStatusBar : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
private:
	Graphics::TCanvas* FCanvas;
	#pragma pack(push, 1)
	tagSIZE FLastSize;
	#pragma pack(pop)
	
	Imglist::TCustomImageList* FImageList;
	TfcStatusPanels* FPanels;
	bool FSimplePanel;
	AnsiString FSimpleText;
	bool FSizeGrip;
	bool FSizing;
	TDrawKeyboardStateEvent FOnDrawKeyboardState;
	TDrawPanelEvent FOnDrawPanel;
	TfcStatusBarText* FStatusBarText;
	bool FDisableThemes;
	void __fastcall SetPanels(TfcStatusPanels* Value);
	void __fastcall SetSimplePanel(bool Value);
	void __fastcall SetSimpleText(const AnsiString Value);
	void __fastcall SetSizeGrip(bool Value);
	bool __fastcall GetSizeGrip(void);
	HIDESBASE MESSAGE void __fastcall CMShowingChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	MESSAGE void __fastcall WMTimer(Messages::TWMTimer &Message);
	
protected:
	virtual TMetaClass* __fastcall GetCollectionClass(void);
	DYNAMIC void __fastcall DrawPanel(TfcStatusPanel* Panel, const Types::TRect &Rect);
	DYNAMIC void __fastcall Resize(void);
	void __fastcall UpdatePanel(int Index, bool DoInvalidate);
	virtual void __fastcall UpdatePanels(void);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall DblClick(void);
	virtual void __fastcall DestroyWnd(void);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomStatusBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomStatusBar(void);
	virtual void __fastcall Invalidate(void);
	virtual TfcStatusPanel* __fastcall GetPanelFromPt(int x, int y);
	void __fastcall ComponentExclusive(Classes::TComponent* Value, TfcStatusPanel* Panel, bool ThisStatusBarOnly);
	__property Imglist::TCustomImageList* Images = {read=FImageList, write=FImageList};
	__property TfcStatusPanels* Panels = {read=FPanels, write=SetPanels};
	__property bool SimplePanel = {read=FSimplePanel, write=SetSimplePanel, nodefault};
	__property AnsiString SimpleText = {read=FSimpleText, write=SetSimpleText};
	__property bool SizeGrip = {read=GetSizeGrip, write=SetSizeGrip, default=1};
	__property TDrawKeyboardStateEvent OnDrawKeyboardState = {read=FOnDrawKeyboardState, write=FOnDrawKeyboardState};
	__property TDrawPanelEvent OnDrawPanel = {read=FOnDrawPanel, write=FOnDrawPanel};
	__property TfcStatusBarText* StatusBarText = {read=FStatusBarText, write=FStatusBarText};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomStatusBar(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcStatusBarText : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcCustomStatusBar* FOwner;
	AnsiString FCapsLock;
	AnsiString FOverwrite;
	AnsiString FNumLock;
	AnsiString FScrollLock;
	void __fastcall SetCapsLock(AnsiString Value);
	void __fastcall SetOverwrite(AnsiString Value);
	void __fastcall SetNumLock(AnsiString Value);
	void __fastcall SetScrollLock(AnsiString Value);
	
public:
	__fastcall TfcStatusBarText(TfcCustomStatusBar* AOwner);
	
__published:
	__property AnsiString CapsLock = {read=FCapsLock, write=SetCapsLock};
	__property AnsiString Overwrite = {read=FOverwrite, write=SetOverwrite};
	__property AnsiString NumLock = {read=FNumLock, write=SetNumLock};
	__property AnsiString ScrollLock = {read=FScrollLock, write=SetScrollLock};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcStatusBarText(void) { }
	#pragma option pop
	
};


typedef TMetaClass*TfcCustomStatusBarClass;

#pragma option push -b-
enum TfcStatusPanelBevel { pbNone, pbLowered, pbRaised };
#pragma option pop

typedef void __fastcall (__closure *TfcPanelTextChangedEvent)(System::TObject* Sender, const AnsiString Text);

typedef void __fastcall (__closure *TfcDrawTextEvent)(TfcStatusPanel* Panel, AnsiString &Text, bool &Enabled);

class PASCALIMPLEMENTATION TfcStatusPanel : public Fccollection::TfcCollectionItem 
{
	typedef Fccollection::TfcCollectionItem inherited;
	
private:
	Graphics::TCanvas* FCanvas;
	int FCol;
	int FRow;
	TfcStatusPanelBevel FBevel;
	Graphics::TColor FColor;
	Classes::TComponent* FComponent;
	bool FEnabled;
	bool FDrawTextEnabled;
	bool FInDrawText;
	Graphics::TFont* FFont;
	AnsiString FHint;
	int FImageIndex;
	int FIndent;
	int FMargin;
	AnsiString FName;
	int FPaintWidth;
	Menus::TPopupMenu* FPopupMenu;
	TfcStatusPanelStyle FStyle;
	AnsiString FText;
	System::TDateTime FCurDateTime;
	Fctext::TfcCaptionText* FTextOptions;
	AnsiString FWidth;
	Classes::TNotifyEvent FOnClick;
	Classes::TNotifyEvent FOnDblClick;
	TfcDrawTextEvent FOnDrawText;
	Controls::TMouseEvent FOnMouseDown;
	Controls::TMouseMoveEvent FOnMouseMove;
	Controls::TMouseEvent FOnMouseUp;
	Classes::TNotifyEvent FOnSetName;
	TfcPanelTextChangedEvent FOnTextChanged;
	#pragma pack(push, 1)
	Types::TRect FRect;
	#pragma pack(pop)
	
	Controls::TControl* __fastcall GetControl(void);
	void __fastcall SetBevel(TfcStatusPanelBevel Value);
	void __fastcall SetColor(Graphics::TColor Value);
	void __fastcall SetComponent(Classes::TComponent* Value);
	void __fastcall SetEnabled(bool Value);
	void __fastcall SetFont(Graphics::TFont* Value);
	void __fastcall SetHint(AnsiString Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetIndent(int Value);
	void __fastcall SetMargin(int Value);
	void __fastcall SetName(const AnsiString Value);
	void __fastcall SetStyle(TfcStatusPanelStyle Value);
	void __fastcall SetText(const AnsiString Value);
	void __fastcall SetWidth(AnsiString Value);
	
protected:
	virtual AnsiString __fastcall GenerateName();
	virtual AnsiString __fastcall GetDisplayName();
	virtual TfcCustomStatusBar* __fastcall GetStatusBar(void);
	virtual bool __fastcall StoreWidth(void);
	virtual void __fastcall FontChanged(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual bool __fastcall GetTextEnabled(void);
	virtual void __fastcall AdjustBounds(void);
	virtual bool __fastcall DoDrawDateTime(void);
	virtual void __fastcall Draw(Graphics::TCanvas* ACanvas, const Types::TRect &ARect);
	virtual void __fastcall DrawControl(void);
	virtual void __fastcall DrawGlyph(void);
	virtual void __fastcall DrawKeyboardState(void);
	virtual void __fastcall DrawHint(void);
	virtual void __fastcall DrawUserName(void);
	virtual void __fastcall DrawComputerName(void);
	virtual void __fastcall DrawRichEditStatus(void);
	virtual void __fastcall DrawText(AnsiString AText, const Types::TRect &ARect, bool AEnabled);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	DYNAMIC void __fastcall Click(void);
	DYNAMIC void __fastcall DblClick(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall PanelTextChanged(const AnsiString Text);
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	__property bool DrawTextEnabled = {read=FDrawTextEnabled, write=FDrawTextEnabled, nodefault};
	
public:
	Variant Patch;
	__fastcall virtual TfcStatusPanel(Classes::TCollection* Collection);
	__fastcall virtual ~TfcStatusPanel(void);
	virtual Types::TPoint __fastcall ClientToScreen(const Types::TPoint &p);
	virtual Types::TRect __fastcall GetRect();
	virtual void __fastcall Invalidate(void);
	__property int Col = {read=FCol, nodefault};
	__property Controls::TControl* Control = {read=GetControl};
	__property int PaintWidth = {read=FPaintWidth, write=FPaintWidth, nodefault};
	__property int Row = {read=FRow, nodefault};
	__property TfcCustomStatusBar* StatusBar = {read=GetStatusBar};
	__property Classes::TNotifyEvent OnSetName = {read=FOnSetName, write=FOnSetName};
	
__published:
	__property TfcStatusPanelBevel Bevel = {read=FBevel, write=SetBevel, default=1};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-2147483633};
	__property Classes::TComponent* Component = {read=FComponent, write=SetComponent};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property AnsiString Hint = {read=FHint, write=SetHint};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, default=0};
	__property int Indent = {read=FIndent, write=SetIndent, default=0};
	__property int Margin = {read=FMargin, write=SetMargin, default=0};
	__property AnsiString Name = {read=FName, write=SetName};
	__property Menus::TPopupMenu* PopupMenu = {read=FPopupMenu, write=FPopupMenu};
	__property TfcStatusPanelStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property Tag ;
	__property AnsiString Text = {read=FText, write=SetText};
	__property Fctext::TfcCaptionText* TextOptions = {read=FTextOptions, write=FTextOptions};
	__property AnsiString Width = {read=FWidth, write=SetWidth, stored=StoreWidth};
	__property Classes::TNotifyEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TNotifyEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property TfcDrawTextEvent OnDrawText = {read=FOnDrawText, write=FOnDrawText};
	__property Controls::TMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property Controls::TMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property Controls::TMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property TfcPanelTextChangedEvent OnTextChanged = {read=FOnTextChanged, write=FOnTextChanged};
};


class DELPHICLASS TfcStatusBar;
class PASCALIMPLEMENTATION TfcStatusBar : public TfcCustomStatusBar 
{
	typedef TfcCustomStatusBar inherited;
	
__published:
	__property DisableThemes ;
	__property Anchors ;
	__property Constraints ;
	__property Align ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property Images ;
	__property Panels ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ShowHint ;
	__property SimplePanel ;
	__property SimpleText ;
	__property SizeGrip ;
	__property StatusBarText ;
	__property Visible ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnDrawKeyboardState ;
	__property OnDrawPanel ;
	__property OnResize ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TfcCustomStatusBar.Create */ inline __fastcall virtual TfcStatusBar(Classes::TComponent* AOwner) : TfcCustomStatusBar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomStatusBar.Destroy */ inline __fastcall virtual ~TfcStatusBar(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcStatusBar(HWND ParentWindow) : TfcCustomStatusBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Byte TIMER_ID = 0xc8;
static const Word HINT_TIMER_ID = 0x12c;
static const Word RICHEDIT_TIMER_ID = 0x190;

}	/* namespace Fcstatusbar */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcstatusbar;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcStatusBar
