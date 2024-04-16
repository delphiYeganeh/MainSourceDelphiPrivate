// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcOutlookList.pas' rev: 5.00

#ifndef fcOutlookListHPP
#define fcOutlookListHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <fcImager.hpp>	// Pascal unit
#include <fcClearPanel.hpp>	// Pascal unit
#include <fcCollection.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fccustomdraw.hpp>	// Pascal unit
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

namespace Fcoutlooklist
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcScrollButtonStyle { sbNone, sbUp, sbDown };
#pragma option pop

class DELPHICLASS TfcOutlookPanel;
class PASCALIMPLEMENTATION TfcOutlookPanel : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FAnimating;
	bool FTransparent;
	bool FInEraseBkGnd;
	Classes::TPersistent* FOutlookPage;
	void __fastcall SetTransparent(bool Value);
	HIDESBASE MESSAGE void __fastcall CMControlListChange(Controls::TCMControlListChange &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	
protected:
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	virtual void __fastcall Paint(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	
public:
	bool FPreventUpdate;
	__fastcall virtual TfcOutlookPanel(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcOutlookPanel(void);
	__property bool Animating = {read=FAnimating, write=FAnimating, nodefault};
	__property Classes::TPersistent* OutlookPage = {read=FOutlookPage, write=FOutlookPage};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcOutlookPanel(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomOutlookList;
class DELPHICLASS TfcOutlookListItem;
typedef void __fastcall (__closure *TfcCustomOutlookListItemEvent)(TfcCustomOutlookList* OutlookList, TfcOutlookListItem* Item);

typedef void __fastcall (__closure *TfcOutlookListDrawItemEvent)(TfcCustomOutlookList* OutlookList, TfcOutlookListItem* Item, Types::TPoint &GlyphPos, Types::TPoint &TextPos, bool &DefaultDrawing);

class DELPHICLASS TfcOutlookItemActionLink;
class PASCALIMPLEMENTATION TfcOutlookItemActionLink : public Actnlist::TActionLink 
{
	typedef Actnlist::TActionLink inherited;
	
protected:
	TfcOutlookListItem* FItem;
	virtual void __fastcall AssignClient(System::TObject* AClient);
	virtual bool __fastcall IsCaptionLinked(void);
	virtual bool __fastcall IsEnabledLinked(void);
	virtual bool __fastcall IsHintLinked(void);
	virtual bool __fastcall IsVisibleLinked(void);
	virtual bool __fastcall IsOnExecuteLinked(void);
	virtual void __fastcall SetCaption(const AnsiString Value);
	virtual void __fastcall SetEnabled(bool Value);
	virtual void __fastcall SetHint(const AnsiString Value);
	virtual void __fastcall SetVisible(bool Value);
public:
	#pragma option push -w-inl
	/* TBasicActionLink.Create */ inline __fastcall virtual TfcOutlookItemActionLink(System::TObject* AClient) : Actnlist::TActionLink(AClient) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TBasicActionLink.Destroy */ inline __fastcall virtual ~TfcOutlookItemActionLink(void) { }
	#pragma option pop
	
};


typedef TMetaClass*TfcOutlookItemActionLinkClass;

class PASCALIMPLEMENTATION TfcOutlookListItem : public Fccollection::TfcCollectionItem 
{
	typedef Fccollection::TfcCollectionItem inherited;
	
private:
	TfcOutlookItemActionLink* FActionLink;
	#pragma pack(push, 1)
	Types::TRect FButtonRect;
	#pragma pack(pop)
	
	#pragma pack(push, 1)
	Types::TRect FItemRect;
	#pragma pack(pop)
	
	int FImageIndex;
	bool FMouseDownOnItem;
	bool FMouseOnItem;
	bool FSelected;
	int FSeparation;
	AnsiString FText;
	Classes::TAlignment FTextAlignment;
	int FGlyphOffset;
	TfcCustomOutlookListItemEvent FOnClick;
	bool FEnabled;
	bool FVisible;
	AnsiString FHint;
	bool __fastcall GetSelected(void);
	TfcCustomOutlookList* __fastcall GetOutlookList(void);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetMouseDownOnItem(bool Value);
	void __fastcall SetMouseOnItem(bool Value);
	void __fastcall SetSeparation(int Value);
	void __fastcall SetSelected(bool Value);
	void __fastcall SetText(AnsiString Value);
	void __fastcall SetGlyphOffset(int Value);
	void __fastcall SetTextAlignment(Classes::TAlignment Value);
	Classes::TBasicAction* __fastcall GetAction(void);
	void __fastcall SetAction(Classes::TBasicAction* Value);
	void __fastcall DoActionChange(System::TObject* Sender);
	void __fastcall SetEnabled(bool Value);
	void __fastcall SetVisible(bool Value);
	void __fastcall SetHint(AnsiString Value);
	
protected:
	tagSIZE __fastcall GetItemSize(bool IncludePadding);
	virtual bool __fastcall IsVisible(bool Completely);
	virtual int __fastcall SpacingSize(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall PaintButton(const Types::TRect &IconRect);
	virtual AnsiString __fastcall GetDisplayName();
	__property Types::TRect ButtonRect = {read=FButtonRect};
	__property TfcOutlookItemActionLink* ActionLink = {read=FActionLink, write=FActionLink};
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	
public:
	__fastcall virtual TfcOutlookListItem(Classes::TCollection* Collection);
	__fastcall virtual ~TfcOutlookListItem(void);
	Types::TRect __fastcall DisplayRect(Comctrls::TDisplayCode Code, int AStartPos);
	virtual bool __fastcall IsDown(void);
	virtual void __fastcall Invalidate(bool Erase);
	__property Types::TRect ItemRect = {read=FItemRect};
	__property bool MouseDownOnItem = {read=FMouseDownOnItem, write=SetMouseDownOnItem, nodefault};
	__property bool MouseOnItem = {read=FMouseOnItem, write=SetMouseOnItem, nodefault};
	__property TfcCustomOutlookList* OutlookList = {read=GetOutlookList};
	
__published:
	__property Classes::TBasicAction* Action = {read=GetAction, write=SetAction};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, nodefault};
	__property bool Selected = {read=GetSelected, write=SetSelected, nodefault};
	__property int Separation = {read=FSeparation, write=SetSeparation, nodefault};
	__property Tag ;
	__property AnsiString Text = {read=FText, write=SetText};
	__property TfcCustomOutlookListItemEvent OnClick = {read=FOnClick, write=FOnClick};
	__property Classes::TAlignment TextAlignment = {read=FTextAlignment, write=SetTextAlignment, default=2};
	__property int GlyphOffset = {read=FGlyphOffset, write=SetGlyphOffset, default=0};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=1};
	__property bool Visible = {read=FVisible, write=SetVisible, default=1};
	__property AnsiString Hint = {read=FHint, write=SetHint};
};


typedef TMetaClass*TfcOutlookListItemClass;

class DELPHICLASS TfcOutlookListItems;
class PASCALIMPLEMENTATION TfcOutlookListItems : public Fccollection::TfcCollection 
{
	typedef Fccollection::TfcCollection inherited;
	
private:
	TfcCustomOutlookList* FOutlookList;
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	HIDESBASE TfcOutlookListItem* __fastcall GetItems(int Index);
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	
public:
	__fastcall virtual TfcOutlookListItems(TfcCustomOutlookList* AOutlookList, TMetaClass* ACollectionItemClass);
	HIDESBASE TfcOutlookListItem* __fastcall Add(void);
	virtual Fccollection::TfcCollectionItem* __fastcall AddItem(void);
	__property TfcCustomOutlookList* OutlookList = {read=FOutlookList};
	__property TfcOutlookListItem* Items[int Index] = {read=GetItems/*, default*/};
public:
	#pragma option push -w-inl
	/* TfcCollection.Destroy */ inline __fastcall virtual ~TfcOutlookListItems(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcOutlookHotTrackStyle { hsIconHilite, hsItemHilite };
#pragma option pop

#pragma option push -b-
enum TfcCustomOutlookListClickStyle { csClick, csSelect };
#pragma option pop

class PASCALIMPLEMENTATION TfcCustomOutlookList : public TfcOutlookPanel 
{
	typedef TfcOutlookPanel inherited;
	
private:
	Forms::TFormBorderStyle FBorderStyle;
	TfcCustomOutlookListClickStyle FClickStyle;
	TfcOutlookHotTrackStyle FHotTrackStyle;
	Graphics::TColor FHotTrackTextColor;
	Graphics::TColor FItemDisabledTextColor;
	Imglist::TCustomImageList* FImageList;
	Buttons::TButtonLayout FItemLayout;
	Graphics::TColor FItemHighlightColor;
	Graphics::TColor FItemHotTrackColor;
	Graphics::TColor FItemShadowColor;
	TfcOutlookListItems* FItems;
	int FItemSpacing;
	int FItemsWidth;
	Fccommon::TfcLayout FLayout;
	Graphics::TBitmap* FPaintBitmap;
	int FScrollInterval;
	TfcCustomOutlookListItemEvent FOnItemClick;
	TfcCustomOutlookListItemEvent FOnItemChange;
	TfcOutlookListDrawItemEvent FOnDrawItem;
	TfcOutlookListItem* FTopItem;
	#pragma pack(push, 1)
	Types::TRect FUpButtonRect;
	#pragma pack(pop)
	
	#pragma pack(push, 1)
	Types::TRect FDownButtonRect;
	#pragma pack(pop)
	
	TfcScrollButtonStyle FScrollButtonDown;
	bool FScrollButtonsVisible;
	TfcScrollButtonStyle FMouseInScrollButton;
	Imglist::TChangeLink* FChangeLink;
	HWND FOldCapture;
	Classes::TPersistent* FOutlookPage;
	Graphics::TColor FItemSelectedDitherColor;
	Controls::THintWindow* HintWindow;
	int HintTimerCount;
	Extctrls::TTimer* HintTimer;
	void __fastcall HintTimerEvent(System::TObject* Sender);
	void __fastcall FreeHintWindow(void);
	TfcOutlookListItem* __fastcall GetListItems(int Index);
	TfcOutlookListItem* __fastcall GetBottomItem(void);
	Graphics::TCanvas* __fastcall GetPaintCanvas(void);
	TfcOutlookListItem* __fastcall GetSelected(void);
	TfcOutlookListItem* __fastcall GetTopItem(void);
	void __fastcall SetBorderStyle(Forms::TBorderStyle Value);
	void __fastcall SetClickStyle(TfcCustomOutlookListClickStyle Value);
	void __fastcall SetImageList(Imglist::TCustomImageList* Value);
	void __fastcall SetItemHighlightColor(Graphics::TColor Value);
	void __fastcall SetItemDisabledTextColor(Graphics::TColor Value);
	void __fastcall SetItemLayout(Buttons::TButtonLayout Value);
	void __fastcall SetItemShadowColor(Graphics::TColor Value);
	void __fastcall SetItems(TfcOutlookListItems* Value);
	void __fastcall SetItemSpacing(int Value);
	void __fastcall SetItemsWidth(int Value);
	void __fastcall SetLayout(Fccommon::TfcLayout Value);
	void __fastcall SetMouseInScrollButton(TfcScrollButtonStyle Value);
	void __fastcall SetScrollButtonsVisible(bool Value);
	void __fastcall SetTopItem(TfcOutlookListItem* Value);
	Fcimager::TfcCustomImager* __fastcall GetImager(void);
	bool __fastcall IsEffectiveItemHilite(void);
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	MESSAGE void __fastcall WMTimer(Messages::TWMTimer &Message);
	HIDESBASE MESSAGE void __fastcall CNChar(Messages::TWMKey &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	virtual void __fastcall UpdateButtonRects(void);
	DYNAMIC void __fastcall ValidateInsert(Classes::TComponent* AComponent);
	virtual bool __fastcall ScrollButtonVisible(TfcScrollButtonStyle Button);
	virtual void __fastcall DoDrawItem(TfcOutlookListItem* Item, Types::TPoint &GlyphPos, Types::TPoint &TextPos, bool &DefaultDrawing);
	virtual void __fastcall ImageListChange(System::TObject* Sender);
	virtual void __fastcall InvalidateScrollButton(TfcScrollButtonStyle Button);
	virtual void __fastcall ItemClick(TfcOutlookListItem* Item);
	virtual void __fastcall ScrollButtonClick(void);
	virtual void __fastcall UpdateMouseOnItem(void);
	virtual void __fastcall UpdateScrollButtonsRect(void);
	__property TfcScrollButtonStyle MouseInScrollButton = {read=FMouseInScrollButton, write=SetMouseInScrollButton, nodefault};
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomOutlookList(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomOutlookList(void);
	TfcOutlookListItem* __fastcall GetPriorVisibleItem(TfcOutlookListItem* item);
	TfcOutlookListItem* __fastcall GetNextVisibleItem(TfcOutlookListItem* item);
	virtual TfcOutlookListItem* __fastcall GetItemAt(int x, int y);
	virtual void __fastcall PaintScrollButton(TfcScrollButtonStyle Button);
	virtual TfcOutlookListItem* __fastcall GetFirstVisibleItem(void);
	__property TfcOutlookListItem* ListItems[int Index] = {read=GetListItems};
	__property TfcOutlookListItem* BottomItem = {read=GetBottomItem};
	__property TfcOutlookListItem* Selected = {read=GetSelected};
	__property TfcOutlookListItem* TopItem = {read=GetTopItem, write=SetTopItem};
	__property Graphics::TCanvas* PaintCanvas = {read=GetPaintCanvas};
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, nodefault};
	__property TfcCustomOutlookListClickStyle ClickStyle = {read=FClickStyle, write=SetClickStyle, nodefault};
	__property TfcOutlookHotTrackStyle HotTrackStyle = {read=FHotTrackStyle, write=FHotTrackStyle, nodefault};
	__property Graphics::TColor HotTrackTextColor = {read=FHotTrackTextColor, write=FHotTrackTextColor, nodefault};
	__property Graphics::TColor ItemDisabledTextColor = {read=FItemDisabledTextColor, write=SetItemDisabledTextColor, default=-2147483633};
	__property Imglist::TCustomImageList* Images = {read=FImageList, write=SetImageList};
	__property Graphics::TColor ItemHighlightColor = {read=FItemHighlightColor, write=SetItemHighlightColor, nodefault};
	__property Graphics::TColor ItemHotTrackColor = {read=FItemHotTrackColor, write=FItemHotTrackColor, nodefault};
	__property Buttons::TButtonLayout ItemLayout = {read=FItemLayout, write=SetItemLayout, nodefault};
	__property Graphics::TColor ItemShadowColor = {read=FItemShadowColor, write=SetItemShadowColor, nodefault};
	__property TfcOutlookListItems* Items = {read=FItems, write=SetItems};
	__property int ItemSpacing = {read=FItemSpacing, write=SetItemSpacing, nodefault};
	__property int ItemsWidth = {read=FItemsWidth, write=SetItemsWidth, nodefault};
	__property Fccommon::TfcLayout Layout = {read=FLayout, write=SetLayout, nodefault};
	__property Classes::TPersistent* OutlookPage = {read=FOutlookPage, write=FOutlookPage};
	__property bool ScrollButtonsVisible = {read=FScrollButtonsVisible, write=SetScrollButtonsVisible, nodefault};
	__property int ScrollInterval = {read=FScrollInterval, write=FScrollInterval, nodefault};
	__property Graphics::TColor ItemSelectedDitherColor = {read=FItemSelectedDitherColor, write=FItemSelectedDitherColor, nodefault};
	__property TfcOutlookListDrawItemEvent OnDrawItem = {read=FOnDrawItem, write=FOnDrawItem};
	__property TfcCustomOutlookListItemEvent OnItemClick = {read=FOnItemClick, write=FOnItemClick};
	__property TfcCustomOutlookListItemEvent OnItemChange = {read=FOnItemChange, write=FOnItemChange};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomOutlookList(HWND ParentWindow) : TfcOutlookPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcOutlookList;
class PASCALIMPLEMENTATION TfcOutlookList : public TfcCustomOutlookList 
{
	typedef TfcCustomOutlookList inherited;
	
__published:
	__property Align ;
	__property BorderStyle ;
	__property ClickStyle ;
	__property Color ;
	__property DragCursor ;
	__property DragMode ;
	__property Font ;
	__property HotTrackStyle ;
	__property Images ;
	__property ItemDisabledTextColor ;
	__property ItemHighlightColor ;
	__property ItemHotTrackColor ;
	__property ItemLayout ;
	__property ItemShadowColor ;
	__property ItemSelectedDitherColor ;
	__property Items ;
	__property ItemSpacing ;
	__property ItemsWidth ;
	__property Layout ;
	__property PopupMenu ;
	__property ScrollButtonsVisible ;
	__property ScrollInterval ;
	__property ShowHint ;
	__property Transparent ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDrawItem ;
	__property OnEndDrag ;
	__property OnItemClick ;
	__property OnItemChange ;
	__property OnMouseDown ;
	__property OnMouseUp ;
	__property OnMouseMove ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TfcCustomOutlookList.Create */ inline __fastcall virtual TfcOutlookList(Classes::TComponent* AOwner) : TfcCustomOutlookList(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomOutlookList.Destroy */ inline __fastcall virtual ~TfcOutlookList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcOutlookList(HWND ParentWindow) : TfcCustomOutlookList(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcoutlooklist */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcoutlooklist;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcOutlookList
