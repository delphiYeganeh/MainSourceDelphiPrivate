// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcTreeView.pas' rev: 5.00

#ifndef fcTreeViewHPP
#define fcTreeViewHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <ShellAPI.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <fcCanvas.hpp>	// Pascal unit
#include <fccustomdraw.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <ComStrs.hpp>	// Pascal unit
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

namespace Fctreeview
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcItemState { fcisSelected, fcisGrayed, fcisDisabled, fcisChecked, fcisFocused, fcisDefault, fcisHot, fcisMarked, fcisIndeterminate };
#pragma option pop

typedef Set<TfcItemState, fcisSelected, fcisIndeterminate>  TfcItemStates;

class DELPHICLASS TfcCustomTreeView;
class DELPHICLASS TfcTreeNode;
typedef void __fastcall (__closure *TfcTVDrawTextEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, const Types::TRect &ARect, TfcItemStates AItemState, bool &DefaultDrawing);

typedef void __fastcall (__closure *TfcTreeMouseMoveEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TfcTreeMouseEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);

#pragma option push -b-
enum TfcNodeState { fcnsCut, fcnsDropHilited, fcnsFocused, fcnsSelected, fcnsExpanded };
#pragma option pop

#pragma option push -b-
enum TfcNodeAttachMode { fcnaAdd, fcnaAddFirst, fcnaAddChild, fcnaAddChildFirst, fcnaInsert, fcnaInsertAfter };
#pragma option pop

#pragma option push -b-
enum TfcAddMode { fctaAddFirst, fctaAdd, fctaInsert };
#pragma option pop

#pragma option push -b-
enum TfcTreeViewCheckboxType { tvctNone, tvctCheckbox, tvctRadioGroup };
#pragma option pop

#pragma option push -b-
enum TfcTreeViewOption { tvoExpandOnDblClk, tvoExpandButtons3D, tvoFlatCheckBoxes, tvoHideSelection, tvoRowSelect, tvoShowButtons, tvoShowLines, tvoShowRoot, tvoHotTrack, tvoAutoURL, tvoToolTips, tvoEditText, tvo3StateCheckbox };
#pragma option pop

typedef Set<TfcTreeViewOption, tvoExpandOnDblClk, tvo3StateCheckbox>  TfcTreeViewOptions;

struct TfcNodeInfo;
typedef TfcNodeInfo *PfcNodeInfo;

#pragma pack(push, 1)
struct TfcNodeInfo
{
	int ImageIndex;
	int SelectedIndex;
	int StateIndex;
	int OverlayIndex;
	TfcTreeViewCheckboxType CheckboxType;
	Byte Checked;
	bool Expanded;
	char DummyPad[3];
	void *Data;
	int StringDataSize1;
	int StringDataSize2;
	int Count;
	System::SmallString<255>  Text;
} ;
#pragma pack(pop)

class DELPHICLASS TfcTreeNodes;
#pragma pack(push, 4)
struct TfcNodeCache
{
	TfcTreeNode* CacheNode;
	int CacheIndex;
} ;
#pragma pack(pop)

#pragma option push -b-
enum TwwStoreData { sdStoreText, sdStoreData1, sdStoreData2 };
#pragma option pop

class PASCALIMPLEMENTATION TfcTreeNodes : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcCustomTreeView* FOwner;
	int FUpdateCount;
	TfcNodeCache FNodeCache;
	bool InDestroy;
	void __fastcall AddedNode(TfcTreeNode* Value);
	HWND __fastcall GetHandle(void);
	TfcTreeNode* __fastcall GetNodeFromIndex(int Index);
	void __fastcall ReadData(Classes::TStream* Stream);
	void __fastcall Repaint(TfcTreeNode* Node);
	void __fastcall WriteData(Classes::TStream* Stream);
	void __fastcall ClearCache(void);
	void __fastcall ReadStreamVersion(Classes::TReader* Reader);
	void __fastcall WriteStreamVersion(Classes::TWriter* Writer);
	
protected:
	HTREEITEM __fastcall AddItem(HTREEITEM Parent, HTREEITEM Target, const tagTVITEMA &Item, TfcAddMode AddMode);
	TfcTreeNode* __fastcall InternalAddObject(TfcTreeNode* Node, const AnsiString S, void * Ptr, TfcAddMode AddMode);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	tagTVITEMA __fastcall CreateItem(TfcTreeNode* Node);
	int __fastcall GetCount(void);
	void __fastcall SetItem(int Index, TfcTreeNode* Value);
	void __fastcall SetUpdateState(bool Updating);
	
public:
	__fastcall TfcTreeNodes(TfcCustomTreeView* AOwner);
	__fastcall virtual ~TfcTreeNodes(void);
	TfcTreeNode* __fastcall AddChildFirst(TfcTreeNode* Node, const AnsiString S);
	TfcTreeNode* __fastcall AddChild(TfcTreeNode* Node, const AnsiString S);
	TfcTreeNode* __fastcall AddChildObjectFirst(TfcTreeNode* Node, const AnsiString S, void * Ptr);
	TfcTreeNode* __fastcall AddChildObject(TfcTreeNode* Node, const AnsiString S, void * Ptr);
	TfcTreeNode* __fastcall AddFirst(TfcTreeNode* Node, const AnsiString S);
	TfcTreeNode* __fastcall Add(TfcTreeNode* Node, const AnsiString S);
	TfcTreeNode* __fastcall AddObjectFirst(TfcTreeNode* Node, const AnsiString S, void * Ptr);
	TfcTreeNode* __fastcall AddObject(TfcTreeNode* Node, const AnsiString S, void * Ptr);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall BeginUpdate(void);
	void __fastcall Clear(void);
	void __fastcall Delete(TfcTreeNode* Node);
	void __fastcall EndUpdate(void);
	TfcTreeNode* __fastcall GetFirstNode(void);
	TfcTreeNode* __fastcall GetNode(HTREEITEM ItemId);
	TfcTreeNode* __fastcall Insert(TfcTreeNode* Node, const AnsiString S);
	TfcTreeNode* __fastcall InsertObject(TfcTreeNode* Node, const AnsiString S, void * Ptr);
	TfcTreeNode* __fastcall FindNode(AnsiString SearchText, bool VisibleOnly);
	TfcTreeNode* __fastcall FindNodeInfo(AnsiString SearchText, bool VisibleOnly, TwwStoreData StoreDataUsing);
	__property int Count = {read=GetCount, nodefault};
	__property HWND Handle = {read=GetHandle, nodefault};
	__property TfcTreeNode* Item[int Index] = {read=GetNodeFromIndex/*, default*/};
	__property TfcCustomTreeView* Owner = {read=FOwner};
};


class PASCALIMPLEMENTATION TfcTreeNode : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FMultiSelected;
	TfcTreeViewCheckboxType FCheckboxType;
	bool FChecked;
	TfcTreeNodes* FOwner;
	AnsiString FText;
	AnsiString FStringData1;
	AnsiString FStringData2;
	void *FData;
	_TREEITEM *FItemId;
	int FImageIndex;
	int FSelectedIndex;
	int FOverlayIndex;
	int FStateIndex;
	bool FDeleting;
	bool FInTree;
	bool FGrayed;
	void __fastcall SetCheckboxType(TfcTreeViewCheckboxType val);
	bool __fastcall CompareCount(int CompareMe);
	bool __fastcall DoCanExpand(bool Expand);
	void __fastcall DoExpand(bool Expand);
	void __fastcall ExpandItem(bool Expand, bool Recurse);
	int __fastcall GetAbsoluteIndex(void);
	bool __fastcall GetExpanded(void);
	int __fastcall GetLevel(void);
	TfcTreeNode* __fastcall GetParent(void);
	bool __fastcall GetChildren(void);
	bool __fastcall GetCut(void);
	bool __fastcall GetDropTarget(void);
	bool __fastcall GetFocused(void);
	int __fastcall GetIndex(void);
	TfcTreeNode* __fastcall GetItem(int Index);
	bool __fastcall GetSelected(void);
	bool __fastcall GetState(TfcNodeState NodeState);
	int __fastcall GetCount(void);
	TfcCustomTreeView* __fastcall GetTreeView(void);
	void __fastcall InternalMove(TfcTreeNode* ParentNode, TfcTreeNode* Node, HTREEITEM HItem, TfcAddMode AddMode);
	bool __fastcall IsNodeVisible(void);
	void __fastcall SetChildren(bool Value);
	void __fastcall SetCut(bool Value);
	void __fastcall SetData(void * Value);
	void __fastcall SetDropTarget(bool Value);
	void __fastcall SetItem(int Index, TfcTreeNode* Value);
	void __fastcall SetExpanded(bool Value);
	void __fastcall SetFocused(bool Value);
	void __fastcall SetImageIndex(int Value);
	void __fastcall SetOverlayIndex(int Value);
	void __fastcall SetSelectedIndex(int Value);
	void __fastcall SetSelected(bool Value);
	void __fastcall SetStateIndex(int Value);
	void __fastcall SetText(const AnsiString S);
	bool __fastcall GetMultiSelected(void);
	void __fastcall SetMultiSelected(bool Value);
	void __fastcall SetChecked(bool val);
	void __fastcall SetGrayed(bool val);
	
protected:
	int ReadDataSize;
	virtual void __fastcall Invalidate(void);
	virtual int __fastcall GetSizeOfNodeInfo(void);
	virtual void __fastcall ReadData(Classes::TStream* Stream, PfcNodeInfo Info);
	virtual void __fastcall WriteData(Classes::TStream* Stream, PfcNodeInfo Info);
	
public:
	Variant Patch;
	int __fastcall GetStateIndex(void);
	bool __fastcall IsRadioGroup(void);
	virtual AnsiString __fastcall GetSortText();
	__fastcall virtual TfcTreeNode(TfcTreeNodes* AOwner);
	__fastcall virtual ~TfcTreeNode(void);
	bool __fastcall AlphaSort(void);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	void __fastcall Collapse(bool Recurse);
	bool __fastcall CustomSort(PFNTVCOMPARE SortProc, int Data);
	void __fastcall Delete(void);
	void __fastcall DeleteChildren(void);
	Types::TRect __fastcall DisplayRect(bool TextOnly);
	bool __fastcall EditText(void);
	void __fastcall EndEdit(bool Cancel);
	void __fastcall Expand(bool Recurse);
	TfcTreeNode* __fastcall GetFirstChild(void);
	HWND __fastcall GetHandle(void);
	TfcTreeNode* __fastcall GetLastChild(void);
	TfcTreeNode* __fastcall GetNext(void);
	TfcTreeNode* __fastcall GetNextChild(TfcTreeNode* Value);
	TfcTreeNode* __fastcall GetNextSibling(void);
	TfcTreeNode* __fastcall GetNextVisible(void);
	TfcTreeNode* __fastcall GetPrev(void);
	TfcTreeNode* __fastcall GetPrevChild(TfcTreeNode* Value);
	TfcTreeNode* __fastcall GetPrevSibling(void);
	TfcTreeNode* __fastcall GetPrevVisible(void);
	bool __fastcall HasAsParent(TfcTreeNode* Value);
	int __fastcall IndexOf(TfcTreeNode* Value);
	void __fastcall MakeVisible(void);
	virtual void __fastcall MoveTo(TfcTreeNode* Destination, TfcNodeAttachMode Mode);
	__property int AbsoluteIndex = {read=GetAbsoluteIndex, nodefault};
	__property int Count = {read=GetCount, nodefault};
	__property bool Cut = {read=GetCut, write=SetCut, nodefault};
	__property void * Data = {read=FData, write=SetData};
	__property bool Deleting = {read=FDeleting, nodefault};
	__property bool Focused = {read=GetFocused, write=SetFocused, nodefault};
	__property bool DropTarget = {read=GetDropTarget, write=SetDropTarget, nodefault};
	__property bool Selected = {read=GetSelected, write=SetSelected, nodefault};
	__property bool Expanded = {read=GetExpanded, write=SetExpanded, nodefault};
	__property HWND Handle = {read=GetHandle, nodefault};
	__property bool HasChildren = {read=GetChildren, write=SetChildren, nodefault};
	__property int ImageIndex = {read=FImageIndex, write=SetImageIndex, nodefault};
	__property int Index = {read=GetIndex, nodefault};
	__property bool IsVisible = {read=IsNodeVisible, nodefault};
	__property TfcTreeNode* Item[int Index] = {read=GetItem, write=SetItem/*, default*/};
	__property HTREEITEM ItemId = {read=FItemId};
	__property int Level = {read=GetLevel, nodefault};
	__property int OverlayIndex = {read=FOverlayIndex, write=SetOverlayIndex, nodefault};
	__property TfcTreeNodes* Owner = {read=FOwner};
	__property TfcTreeNode* Parent = {read=GetParent};
	__property int SelectedIndex = {read=FSelectedIndex, write=SetSelectedIndex, nodefault};
	__property int StateIndex = {read=FStateIndex, write=SetStateIndex, nodefault};
	__property AnsiString Text = {read=FText, write=SetText};
	__property AnsiString StringData = {read=FStringData1, write=FStringData1};
	__property AnsiString StringData2 = {read=FStringData2, write=FStringData2};
	__property TfcCustomTreeView* TreeView = {read=GetTreeView};
	__property bool Checked = {read=FChecked, write=SetChecked, nodefault};
	__property bool Grayed = {read=FGrayed, write=SetGrayed, nodefault};
	__property TfcTreeViewCheckboxType CheckboxType = {read=FCheckboxType, write=SetCheckboxType, nodefault};
	__property bool MultiSelected = {read=GetMultiSelected, write=SetMultiSelected, nodefault};
};


typedef TfcNodeCache *PfcNodeCache;

class DELPHICLASS TfcTVMultiSelectAttributes;
class PASCALIMPLEMENTATION TfcTVMultiSelectAttributes : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	bool FAutoUnselect;
	int FMultiSelectLevel;
	bool FMultiSelectCheckbox;
	TfcCustomTreeView* TreeView;
	void __fastcall SetEnabled(bool val);
	void __fastcall SetMultiSelectLevel(int val);
	void __fastcall SetMultiSelectCheckBox(bool val);
	
public:
	__fastcall TfcTVMultiSelectAttributes(Classes::TComponent* Owner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool AutoUnselect = {read=FAutoUnselect, write=FAutoUnselect, default=1};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int MultiSelectLevel = {read=FMultiSelectLevel, write=SetMultiSelectLevel, default=0};
	__property bool MultiSelectCheckbox = {read=FMultiSelectCheckbox, write=SetMultiSelectCheckBox, default=1};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcTVMultiSelectAttributes(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcHitTest { fchtAbove, fchtBelow, fchtNowhere, fchtOnItem, fchtOnButton, fchtOnIcon, fchtOnIndent, fchtOnLabel, fchtOnRight, fchtOnStateIcon, fchtToLeft, fchtToRight };
#pragma option pop

typedef Set<TfcHitTest, fchtAbove, fchtToRight>  TfcHitTests;

#pragma option push -b-
enum TfcSortType { fcstNone, fcstData, fcstText, fcstBoth };
#pragma option pop

class DELPHICLASS EfcTreeViewError;
class PASCALIMPLEMENTATION EfcTreeViewError : public Sysutils::Exception 
{
	typedef Sysutils::Exception inherited;
	
public:
	#pragma option push -w-inl
	/* Exception.Create */ inline __fastcall EfcTreeViewError(const AnsiString Msg) : Sysutils::Exception(Msg) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmt */ inline __fastcall EfcTreeViewError(const AnsiString Msg, const System::TVarRec * Args, const int Args_Size) : Sysutils::Exception(Msg, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateRes */ inline __fastcall EfcTreeViewError(int Ident)/* overload */ : Sysutils::Exception(Ident) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmt */ inline __fastcall EfcTreeViewError(int Ident, const System::TVarRec * Args, const int Args_Size)/* overload */ : Sysutils::Exception(Ident, Args, Args_Size) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateHelp */ inline __fastcall EfcTreeViewError(const AnsiString Msg, int AHelpContext) : Sysutils::Exception(Msg, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateFmtHelp */ inline __fastcall EfcTreeViewError(const AnsiString Msg, const System::TVarRec * Args, const int Args_Size, int AHelpContext) : Sysutils::Exception(Msg, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResHelp */ inline __fastcall EfcTreeViewError(int Ident, int AHelpContext)/* overload */ : Sysutils::Exception(Ident, AHelpContext) { }
	#pragma option pop
	#pragma option push -w-inl
	/* Exception.CreateResFmtHelp */ inline __fastcall EfcTreeViewError(System::PResStringRec ResStringRec, const System::TVarRec * Args, const int Args_Size, int AHelpContext)/* overload */ : Sysutils::Exception(ResStringRec, Args, Args_Size, AHelpContext) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~EfcTreeViewError(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcTVChangingEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, bool &AllowChange);

typedef void __fastcall (__closure *TfcTVChangedEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node);

typedef void __fastcall (__closure *TfcTVEditingEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, bool &AllowEdit);

typedef void __fastcall (__closure *TfcTVEditedEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, AnsiString &S);

typedef void __fastcall (__closure *TfcTVExpandingEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, bool &AllowExpansion);

typedef void __fastcall (__closure *TfcTVCollapsingEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, bool &AllowCollapse);

typedef void __fastcall (__closure *TfcTVExpandedEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node);

typedef void __fastcall (__closure *TfcTVCompareEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node1, TfcTreeNode* Node2, int Data, int &Compare);

typedef void __fastcall (__closure *TfcTVCustomDrawEvent)(TfcCustomTreeView* TreeView, const Types::TRect &ARect, bool &DefaultDraw);

typedef void __fastcall (__closure *TfcCalcNodeAttributesEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, TfcItemStates State);

#pragma option push -b-
enum TfcItemChangeAction { icaAdd, icaDelete, icaText, icaImageIndex };
#pragma option pop

typedef void __fastcall (__closure *TfcItemChangeEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node, TfcItemChangeAction Action, const Variant &NewValue);

typedef void __fastcall (__closure *TfcToggleCheckboxEvent)(TfcCustomTreeView* TreeView, TfcTreeNode* Node);

typedef TMetaClass*TfcTreeNodeClass;

class PASCALIMPLEMENTATION TfcCustomTreeView : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
private:
	TfcItemChangeEvent FOnItemChange;
	bool FAutoExpand;
	Forms::TFormBorderStyle FBorderStyle;
	Fccanvas::TfcCanvas* FCanvas;
	Fccanvas::TfcCanvas* FPaintCanvas;
	bool FCanvasChanged;
	void *FDefEditProc;
	bool FDragged;
	Controls::TDragImageList* FDragImage;
	TfcTreeNode* FDragNode;
	HWND FEditHandle;
	void *FEditInstance;
	Imglist::TChangeLink* FImageChangeLink;
	Imglist::TCustomImageList* FImages;
	TfcTreeNode* FLastDropTarget;
	bool FManualNotify;
	Classes::TMemoryStream* FMemStream;
	TfcTreeNode* FRClickNode;
	bool FRightClickSelects;
	bool FReadOnly;
	int FSaveIndex;
	int FSaveIndent;
	Classes::TStringList* FSaveItems;
	int FSaveTopIndex;
	TfcSortType FSortType;
	bool FStateChanging;
	Imglist::TCustomImageList* FStateImages;
	Imglist::TChangeLink* FStateChangeLink;
	bool FStreamExpandedNode;
	TfcTreeNodes* FTreeNodes;
	WideString FWideText;
	TfcTVEditingEvent FOnEditing;
	TfcTVEditedEvent FOnEdited;
	TfcTVExpandedEvent FOnExpanded;
	TfcTVExpandingEvent FOnExpanding;
	TfcTVExpandedEvent FOnCollapsed;
	TfcTVCollapsingEvent FOnCollapsing;
	TfcTVChangingEvent FOnChanging;
	TfcTVChangedEvent FOnChange;
	TfcTVCompareEvent FOnCompare;
	TfcTVExpandedEvent FOnDeletion;
	TfcTVExpandedEvent FOnGetImageIndex;
	TfcTVExpandedEvent FOnGetSelectedIndex;
	Graphics::TColor FLineColor;
	Graphics::TColor FInactiveFocusColor;
	TfcTreeMouseEvent FOnMouseDown;
	TfcTreeMouseEvent FOnMouseUp;
	TfcTreeMouseEvent FOnDblClick;
	TfcTreeMouseMoveEvent FOnMouseMove;
	TfcToggleCheckboxEvent FOnToggleCheckbox;
	TMetaClass*FNodeClass;
	TfcTVMultiSelectAttributes* FMultiSelectAttributes;
	TfcCalcNodeAttributesEvent FOnCalcNodeAttributes;
	int FBorderWidth;
	TfcTVDrawTextEvent FOnDrawText;
	TfcTreeViewOptions FOptions;
	bool FDisableThemes;
	Graphics::TBitmap* FPaintBitmap;
	int FIndent;
	TfcTreeNode* LastSelectedNode;
	TfcTreeNode* MouseNode;
	TfcTreeNode* LastMouseMoveNode;
	TfcHitTests LastMouseHitTest;
	TfcTreeNode* ClickedNode;
	bool Down;
	TfcTreeNode* EditNode;
	TfcTreeNode* BeforeMouseDownNode;
	int FStreamVersion;
	bool FUsePaintBuffering;
	void __fastcall CanvasChanged(System::TObject* Sender);
	HIDESBASE MESSAGE void __fastcall CMColorChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMCtl3DChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMDrag(Controls::TCMDrag &Message);
	MESSAGE void __fastcall CNNotify(Messages::TWMNotify &Message);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	void __fastcall EditWndProc(Messages::TMessage &Message);
	void __fastcall DoDragOver(Controls::TDragObject* Source, int X, int Y, bool CanDrop);
	int __fastcall GetChangeDelay(void);
	TfcTreeNode* __fastcall GetDropTarget(void);
	int __fastcall GetIndent(void);
	TfcTreeNode* __fastcall GetNodeFromItem(const tagTVITEMA &Item);
	TfcTreeNode* __fastcall GetSelection(void);
	TfcTreeNode* __fastcall GetTopItem(void);
	void __fastcall ImageListChange(System::TObject* Sender);
	void __fastcall SetAutoExpand(bool Value);
	void __fastcall SetBorderStyle(Forms::TBorderStyle Value);
	void __fastcall SetChangeDelay(int Value);
	void __fastcall SetDropTarget(TfcTreeNode* Value);
	void __fastcall SetImageList(unsigned Value, int Flags);
	void __fastcall SetIndent(int Value);
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetReadOnly(bool Value);
	void __fastcall SetSelection(TfcTreeNode* Value);
	void __fastcall SetSortType(TfcSortType Value);
	void __fastcall SetStateImages(Imglist::TCustomImageList* Value);
	void __fastcall SeTfcTreeNodes(TfcTreeNodes* Value);
	void __fastcall SetTopItem(TfcTreeNode* Value);
	void __fastcall OnChangeTimer(System::TObject* Sender);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonUp(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMNotify(Messages::TWMNotify &Message);
	HIDESBASE MESSAGE void __fastcall CMSysColorChange(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMDestroy(Messages::TWMNoParams &Message);
	bool __fastcall ValidMultiSelectLevel(int ALevel);
	bool __fastcall CheckboxNeeded(TfcTreeNode* Node);
	Types::TPoint __fastcall GetCenterPoint(const Types::TRect &ARect);
	void __fastcall SetOptions(TfcTreeViewOptions Value);
	void __fastcall SetLineColor(Graphics::TColor Value);
	void __fastcall SetInactiveFocusColor(Graphics::TColor Value);
	Shortint __fastcall GetItemHeight(void);
	void __fastcall SetItemHeight(Shortint Value);
	int __fastcall GetScrollTime(void);
	void __fastcall SetScrollTime(int Value);
	int __fastcall GetMultiSelectListCount(void);
	TfcTreeNode* __fastcall GetMultiSelectItem(int Index);
	void __fastcall HintTimerEvent(System::TObject* Sender);
	Fccanvas::TfcCanvas* __fastcall GetPaintCanvas(void);
	
protected:
	Classes::TList* FMultiSelectList;
	bool SkipErase;
	bool SkipChangeMessages;
	bool InLoading;
	Extctrls::TTimer* FChangeTimer;
	int DisplayedItems;
	bool FMouseInControl;
	Controls::THintWindow* HintWindow;
	Extctrls::TTimer* HintTimer;
	int HintTimerCount;
	TfcTreeNode* LastHintNode;
	DYNAMIC bool __fastcall CanEdit(TfcTreeNode* Node);
	DYNAMIC bool __fastcall CanChange(TfcTreeNode* Node);
	DYNAMIC bool __fastcall CanCollapse(TfcTreeNode* Node);
	DYNAMIC bool __fastcall CanExpand(TfcTreeNode* Node);
	DYNAMIC void __fastcall Change(TfcTreeNode* Node);
	DYNAMIC void __fastcall Collapse(TfcTreeNode* Node);
	virtual TfcTreeNode* __fastcall CreateNode(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall Delete(TfcTreeNode* Node);
	virtual void __fastcall DestroyWnd(void);
	DYNAMIC void __fastcall DoEndDrag(System::TObject* Target, int X, int Y);
	DYNAMIC void __fastcall DoStartDrag(Controls::TDragObject* &DragObject);
	DYNAMIC void __fastcall Edit(const tagTVITEMA &Item);
	DYNAMIC void __fastcall Expand(TfcTreeNode* Node);
	virtual Controls::TDragImageList* __fastcall GetDragImages(void);
	virtual void __fastcall GetImageIndex(TfcTreeNode* Node);
	virtual void __fastcall GetSelectedIndex(TfcTreeNode* Node);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall SetDragMode(Controls::TDragMode Value);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property bool AutoExpand = {read=FAutoExpand, write=SetAutoExpand, default=0};
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=1};
	__property int ChangeDelay = {read=GetChangeDelay, write=SetChangeDelay, default=0};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property int Indent = {read=GetIndent, write=SetIndent, nodefault};
	__property bool ReadOnly = {read=FReadOnly, write=SetReadOnly, default=0};
	__property bool RightClickSelects = {read=FRightClickSelects, write=FRightClickSelects, default=0};
	__property TfcSortType SortType = {read=FSortType, write=SetSortType, default=0};
	__property Imglist::TCustomImageList* StateImages = {read=FStateImages, write=SetStateImages};
	__property bool StreamExpandedNode = {read=FStreamExpandedNode, write=FStreamExpandedNode, default=0};
	__property TfcTVEditingEvent OnEditing = {read=FOnEditing, write=FOnEditing};
	__property TfcTVEditedEvent OnEdited = {read=FOnEdited, write=FOnEdited};
	__property TfcTVExpandingEvent OnExpanding = {read=FOnExpanding, write=FOnExpanding};
	__property TfcTVExpandedEvent OnExpanded = {read=FOnExpanded, write=FOnExpanded};
	__property TfcTVCollapsingEvent OnCollapsing = {read=FOnCollapsing, write=FOnCollapsing};
	__property TfcTVExpandedEvent OnCollapsed = {read=FOnCollapsed, write=FOnCollapsed};
	__property TfcTVChangingEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property TfcTVChangedEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TfcTVCompareEvent OnCompare = {read=FOnCompare, write=FOnCompare};
	__property TfcTVExpandedEvent OnDeletion = {read=FOnDeletion, write=FOnDeletion};
	__property TfcTVExpandedEvent OnGetImageIndex = {read=FOnGetImageIndex, write=FOnGetImageIndex};
	__property TfcTVExpandedEvent OnGetSelectedIndex = {read=FOnGetSelectedIndex, write=FOnGetSelectedIndex};
	virtual void __fastcall MultiSelectNode(TfcTreeNode* Node, bool Select, bool redraw);
	virtual bool __fastcall IsVisible(TfcTreeNode* Node, bool PartialOK);
	Types::TRect __fastcall ItemRect(TfcTreeNode* Node, bool LabelOnly);
	void __fastcall PaintButton(TfcTreeNode* Node, const Types::TPoint &pt, int size);
	void __fastcall PaintLines(TfcTreeNode* Node);
	void __fastcall PaintImage(TfcTreeNode* Node, TfcItemStates State);
	Types::TRect __fastcall LevelRect(TfcTreeNode* ANode);
	virtual void __fastcall DoDrawText(TfcCustomTreeView* TreeView, TfcTreeNode* Node, const Types::TRect &ARect, TfcItemStates AItemState, bool &DefaultDrawing);
	virtual void __fastcall Compare(TfcTreeNode* Node1, TfcTreeNode* Node2, int lParam, int &Result);
	virtual void __fastcall CalcNodeAttributes(TfcTreeNode* Node, TfcItemStates AItemState);
	virtual AnsiString __fastcall GetDisplayText(TfcTreeNode* Node);
	void __fastcall LoadCanvasDefaults(TfcTreeNode* Node, TfcItemStates AItemState);
	virtual bool __fastcall ProcessKeyPress(char Key, Classes::TShiftState shift);
	virtual bool __fastcall IsRowSelect(void);
	virtual void __fastcall MouseLoop(int X, int Y);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	bool __fastcall UseImages(TfcTreeNode* Node);
	bool __fastcall UseStateImages(TfcTreeNode* Node);
	virtual void __fastcall BeginPainting(void);
	virtual void __fastcall EndPainting(void);
	virtual void __fastcall BeginItemPainting(TfcTreeNode* Node, const Types::TRect &ARect, TfcItemStates AItemState);
	virtual void __fastcall EndItemPainting(TfcTreeNode* Node, const Types::TRect &ARect, TfcItemStates AItemState);
	virtual void __fastcall PaintItem(TfcTreeNode* Node);
	void __fastcall ClearStateImageIndexes(void);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DoToggleCheckbox(TfcTreeNode* Node);
	virtual void __fastcall FreeHintWindow(void);
	virtual Controls::THintWindow* __fastcall CreateHintWindow(TfcTreeNode* Node);
	void __fastcall UnselectAllNodes(TfcTreeNode* IgnoreNode);
	void __fastcall InvalidateNoErase(void);
	__property Shortint ItemHeight = {read=GetItemHeight, write=SetItemHeight, nodefault};
	__property TfcCalcNodeAttributesEvent OnCalcNodeAttributes = {read=FOnCalcNodeAttributes, write=FOnCalcNodeAttributes};
	__property int ScrollTime = {read=GetScrollTime, write=SetScrollTime, nodefault};
	__property TMetaClass* NodeClass = {read=FNodeClass, write=FNodeClass};
	
public:
	Variant Patch;
	void __fastcall ResetStateImages(void);
	__property int StreamVersion = {read=FStreamVersion, nodefault};
	TfcTreeNode* __fastcall GetFirstSibling(TfcTreeNode* Node);
	void __fastcall InvalidateNode(TfcTreeNode* Node);
	bool __fastcall MultiSelectCheckboxNeeded(TfcTreeNode* Node);
	void __fastcall UnselectAll(void);
	__fastcall virtual TfcCustomTreeView(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomTreeView(void);
	bool __fastcall AlphaSort(void);
	bool __fastcall CustomSort(PFNTVCOMPARE SortProc, int Data);
	void __fastcall FullCollapse(void);
	void __fastcall FullExpand(void);
	TfcHitTests __fastcall GetHitTestInfoAt(int X, int Y);
	TfcTreeNode* __fastcall GetNodeAt(int X, int Y);
	bool __fastcall IsEditing(void);
	void __fastcall LoadFromFile(const AnsiString FileName);
	void __fastcall LoadFromStream(Classes::TStream* Stream);
	void __fastcall SaveToFile(const AnsiString FileName);
	void __fastcall SaveToStream(Classes::TStream* Stream);
	__property Fccanvas::TfcCanvas* Canvas = {read=GetPaintCanvas};
	__property TfcTreeNode* DropTarget = {read=GetDropTarget, write=SetDropTarget};
	__property TfcTreeNode* Selected = {read=GetSelection, write=SetSelection};
	__property TfcTreeNode* TopItem = {read=GetTopItem, write=SetTopItem};
	__property TfcTreeNode* RightClickNode = {read=FRClickNode};
	__property TfcTreeViewOptions Options = {read=FOptions, write=SetOptions, default=1257};
	__property TfcTreeNodes* Items = {read=FTreeNodes, write=SeTfcTreeNodes};
	__property TfcTVMultiSelectAttributes* MultiSelectAttributes = {read=FMultiSelectAttributes, write=FMultiSelectAttributes};
	__property TfcTVDrawTextEvent OnDrawText = {read=FOnDrawText, write=FOnDrawText};
	__property TfcItemChangeEvent OnItemChange = {read=FOnItemChange, write=FOnItemChange};
	__property TfcTreeNode* MultiSelectList[int Index] = {read=GetMultiSelectItem};
	__property int MultiSelectListCount = {read=GetMultiSelectListCount, nodefault};
	__property Graphics::TColor LineColor = {read=FLineColor, write=SetLineColor, default=-2147483632};
	__property Graphics::TColor InactiveFocusColor = {read=FInactiveFocusColor, write=SetInactiveFocusColor, default=-2147483633};
	__property TfcTreeMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property TfcTreeMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property TfcTreeMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property TfcTreeMouseEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property TfcToggleCheckboxEvent OnToggleCheckbox = {read=FOnToggleCheckbox, write=FOnToggleCheckbox};
	__property bool UsePaintBuffering = {read=FUsePaintBuffering, write=FUsePaintBuffering, default=0};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomTreeView(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeView;
class PASCALIMPLEMENTATION TfcTreeView : public TfcCustomTreeView 
{
	typedef TfcCustomTreeView inherited;
	
__published:
	__property DisableThemes ;
	__property Align ;
	__property Anchors ;
	__property AutoExpand ;
	__property BiDiMode ;
	__property BorderStyle ;
	__property ChangeDelay ;
	__property Color ;
	__property LineColor ;
	__property InactiveFocusColor ;
	__property Ctl3D ;
	__property Constraints ;
	__property DragKind ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property Images ;
	__property Indent ;
	__property MultiSelectAttributes ;
	__property Options ;
	__property Items ;
	__property ParentBiDiMode ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property UsePaintBuffering ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property RightClickSelects ;
	__property ShowHint ;
	__property SortType ;
	__property StateImages ;
	__property StreamExpandedNode ;
	__property TabOrder ;
	__property TabStop ;
	__property Visible ;
	__property OnChange ;
	__property OnChanging ;
	__property OnClick ;
	__property OnCollapsing ;
	__property OnCollapsed ;
	__property OnCompare ;
	__property OnDblClick ;
	__property OnDeletion ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEdited ;
	__property OnEditing ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnExpanding ;
	__property OnExpanded ;
	__property OnGetImageIndex ;
	__property OnGetSelectedIndex ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnToggleCheckbox ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property OnCalcNodeAttributes ;
	__property OnDrawText ;
public:
	#pragma option push -w-inl
	/* TfcCustomTreeView.Create */ inline __fastcall virtual TfcTreeView(Classes::TComponent* AOwner) : TfcCustomTreeView(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomTreeView.Destroy */ inline __fastcall virtual ~TfcTreeView(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTreeView(HWND ParentWindow) : TfcCustomTreeView(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall fcTreeViewError(const AnsiString Msg);

}	/* namespace Fctreeview */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctreeview;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcTreeView
