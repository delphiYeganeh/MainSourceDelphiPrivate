// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcTreeHeader.pas' rev: 5.00

#ifndef fcTreeHeaderHPP
#define fcTreeHeaderHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
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

namespace Fctreeheader
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcTreeHeaderOption { thcoAllowColumnMove, thcoSortTreeOnClick, thcoRightBorder };
#pragma option pop

typedef Set<TfcTreeHeaderOption, thcoAllowColumnMove, thcoRightBorder>  TfcTreeHeaderOptions;

class DELPHICLASS TfcTreeHeaderSection;
class PASCALIMPLEMENTATION TfcTreeHeaderSection : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	AnsiString FFieldName;
	int FImageIndex;
	Classes::TAlignment FImageAlignment;
	AnsiString FText;
	int FWidth;
	int FMinWidth;
	int FMaxWidth;
	Classes::TAlignment FAlignment;
	Comctrls::THeaderSectionStyle FStyle;
	bool FAllowClick;
	int __fastcall GetLeft(void);
	int __fastcall GetRight(void);
	void __fastcall SetAlignment(Classes::TAlignment Value);
	void __fastcall SetMaxWidth(int Value);
	void __fastcall SetMinWidth(int Value);
	void __fastcall SetStyle(Comctrls::THeaderSectionStyle Value);
	void __fastcall SetText(const AnsiString Value);
	void __fastcall SetWidth(int Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetImageAlignment(Classes::TAlignment Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	
public:
	__fastcall virtual TfcTreeHeaderSection(Classes::TCollection* Collection);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	__property int Left = {read=GetLeft, nodefault};
	__property int Right = {read=GetRight, nodefault};
	bool __fastcall PtInSection(const Types::TPoint &pt);
	
__published:
	__property Classes::TAlignment Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property bool AllowClick = {read=FAllowClick, write=FAllowClick, default=1};
	__property int MaxWidth = {read=FMaxWidth, write=SetMaxWidth, default=10000};
	__property int MinWidth = {read=FMinWidth, write=SetMinWidth, default=0};
	__property Comctrls::THeaderSectionStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property AnsiString Text = {read=FText, write=SetText};
	__property int Width = {read=FWidth, write=SetWidth, nodefault};
	__property AnsiString FieldName = {read=FFieldName, write=FFieldName};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, nodefault};
	__property Classes::TAlignment ImageAlignment = {read=FImageAlignment, write=SetImageAlignment, default=0};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TfcTreeHeaderSection(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeHeaderSections;
class DELPHICLASS TfcTreeHeaderControl;
class DELPHICLASS TfcTreeHeader;
typedef void __fastcall (__closure *TfcHeaderDrawSectionEvent)(TfcTreeHeader* HeaderControl, TfcTreeHeaderSection* Section, const Types::TRect &Rect, bool Pressed);

typedef void __fastcall (__closure *TfcHeaderSectionMoveEvent)(TfcTreeHeader* HeaderControl, TfcTreeHeaderSection* Section, int DragFrom, int DragTo, bool &AllowMove);

typedef void __fastcall (__closure *TfcHeaderSectionNotifyEvent)(TfcTreeHeader* HeaderControl, TfcTreeHeaderSection* Section);

typedef void __fastcall (__closure *TfcHeaderSectionTrackEvent)(TfcTreeHeader* HeaderControl, TfcTreeHeaderSection* Section, int Width, Comctrls::TSectionTrackState State);

typedef void __fastcall (__closure *TfcSectionDragEvent)(System::TObject* Sender, TfcTreeHeaderSection* FromSection, TfcTreeHeaderSection* ToSection);

class PASCALIMPLEMENTATION TfcTreeHeader : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	TfcHeaderDrawSectionEvent FOnDrawSection;
	Classes::TNotifyEvent FOnResize;
	TfcHeaderSectionMoveEvent FOnSectionMove;
	TfcHeaderSectionNotifyEvent FOnSectionClick;
	TfcHeaderSectionNotifyEvent FOnSectionResize;
	TfcHeaderSectionTrackEvent FOnSectionTrack;
	TfcSectionDragEvent FOnSectionDrag;
	bool FDisableThemes;
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	void __fastcall SetSections(TfcTreeHeaderSections* Value);
	TfcTreeHeaderSections* __fastcall GetSections(void);
	bool __fastcall GetHotTrack(void);
	void __fastcall SetHotTrack(bool Value);
	Controls::TImageList* __fastcall GetImageList(void);
	void __fastcall SetImageList(Controls::TImageList* Value);
	void __fastcall SetOptions(TfcTreeHeaderOptions val);
	TfcTreeHeaderOptions __fastcall GetOptions(void);
	Graphics::TCanvas* __fastcall GetCanvas(void);
	Controls::TWinControl* __fastcall GetTree(void);
	Controls::TMouseEvent __fastcall GetMouseDown();
	void __fastcall SetMouseDown(Controls::TMouseEvent Value);
	Controls::TMouseEvent __fastcall GetMouseUp();
	void __fastcall SetMouseUp(Controls::TMouseEvent Value);
	Controls::TMouseMoveEvent __fastcall GetMouseMove();
	void __fastcall SetMouseMove(Controls::TMouseMoveEvent Value);
	
protected:
	DYNAMIC void __fastcall DrawSection(TfcTreeHeaderSection* Section, const Types::TRect &Rect, bool Pressed);
	DYNAMIC void __fastcall SectionMove(TfcTreeHeaderSection* Section, int DragFrom, int DragTo, bool &AllowMove);
	DYNAMIC void __fastcall SectionClick(TfcTreeHeaderSection* Section);
	DYNAMIC void __fastcall SectionResize(TfcTreeHeaderSection* Section);
	DYNAMIC void __fastcall SectionTrack(TfcTreeHeaderSection* Section, int Width, Comctrls::TSectionTrackState State);
	DYNAMIC void __fastcall SectionDrag(TfcTreeHeaderSection* FromSection, TfcTreeHeaderSection* ToSection);
	
public:
	TfcTreeHeaderControl* HeaderControl;
	__fastcall virtual TfcTreeHeader(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcTreeHeader(void);
	virtual void __fastcall CreateWnd(void);
	__property Graphics::TCanvas* Canvas = {read=GetCanvas};
	__property Controls::TWinControl* Tree = {read=GetTree};
	
__published:
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property bool HotTrack = {read=GetHotTrack, write=SetHotTrack, default=0};
	__property TfcTreeHeaderSections* Sections = {read=GetSections, write=SetSections};
	__property ShowHint ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property Visible ;
	__property Controls::TImageList* Images = {read=GetImageList, write=SetImageList};
	__property TfcSectionDragEvent OnSectionDrag = {read=FOnSectionDrag, write=FOnSectionDrag};
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property Controls::TMouseEvent OnMouseDown = {read=GetMouseDown, write=SetMouseDown};
	__property Controls::TMouseMoveEvent OnMouseMove = {read=GetMouseMove, write=SetMouseMove};
	__property Controls::TMouseEvent OnMouseUp = {read=GetMouseUp, write=SetMouseUp};
	__property TfcHeaderDrawSectionEvent OnDrawSection = {read=FOnDrawSection, write=FOnDrawSection};
	__property Classes::TNotifyEvent OnResize = {read=FOnResize, write=FOnResize};
	__property TfcHeaderSectionMoveEvent OnSectionMove = {read=FOnSectionMove, write=FOnSectionMove};
	__property TfcHeaderSectionNotifyEvent OnSectionClick = {read=FOnSectionClick, write=FOnSectionClick};
	__property TfcHeaderSectionNotifyEvent OnSectionResize = {read=FOnSectionResize, write=FOnSectionResize};
	__property TfcHeaderSectionTrackEvent OnSectionTrack = {read=FOnSectionTrack, write=FOnSectionTrack};
	__property OnStartDrag ;
	__property TfcTreeHeaderOptions Options = {read=GetOptions, write=SetOptions, default=7};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTreeHeader(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcTreeHeaderControl : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
private:
	TfcTreeHeaderSections* FSections;
	bool FSectionDragged;
	Graphics::TCanvas* FCanvas;
	bool FHotTrack;
	Controls::TImageList* FImageList;
	TfcTreeHeaderOptions FOptions;
	Controls::TWinControl* FTree;
	TfcTreeHeader* FHeader;
	bool __fastcall DoSectionDrag(TfcTreeHeaderSection* FromSection, TfcTreeHeaderSection* ToSection);
	void __fastcall SetHotTrack(bool Value);
	void __fastcall SetSections(TfcTreeHeaderSections* Value);
	void __fastcall UpdateItem(int Message, int Index);
	void __fastcall UpdateSection(int Index);
	void __fastcall UpdateSections(void);
	void __fastcall SetOptions(TfcTreeHeaderOptions val);
	void __fastcall SetImageList(Controls::TImageList* val);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	MESSAGE void __fastcall CNNotify(Messages::TWMNotify &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMWindowPosChanged(Messages::TWMWindowPosMsg &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	
protected:
	virtual void __fastcall RearrangeTreeColumns(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
public:
	Forms::TCustomForm* DesignerForm;
	int HotTrackSection;
	__fastcall virtual TfcTreeHeaderControl(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcTreeHeaderControl(void);
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	__property Controls::TWinControl* Tree = {read=FTree, write=FTree};
	__property TfcTreeHeader* Header = {read=FHeader, write=FHeader};
	__property bool HotTrack = {read=FHotTrack, write=SetHotTrack, default=0};
	__property Controls::TImageList* Images = {read=FImageList, write=SetImageList};
	__property TfcTreeHeaderOptions Options = {read=FOptions, write=SetOptions, default=7};
	__property TfcTreeHeaderSections* Sections = {read=FSections, write=SetSections};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTreeHeaderControl(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcTreeHeaderSections : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
private:
	HIDESBASE TfcTreeHeaderSection* __fastcall GetItem(int Index);
	HIDESBASE void __fastcall SetItem(int Index, TfcTreeHeaderSection* Value);
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	TfcTreeHeaderControl* HeaderControl;
	__fastcall TfcTreeHeaderSections(TfcTreeHeaderControl* HeaderControl);
	HIDESBASE TfcTreeHeaderSection* __fastcall Add(void);
	__property TfcTreeHeaderSection* Items[int Index] = {read=GetItem, write=SetItem/*, default*/};
public:
	#pragma option push -w-inl
	/* TCollection.Destroy */ inline __fastcall virtual ~TfcTreeHeaderSections(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcHeaderSectionDefaultEvent)(TfcTreeHeader* HeaderControl, TfcTreeHeaderSection* Section, bool &doDefault);

//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fctreeheader */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctreeheader;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcTreeHeader
