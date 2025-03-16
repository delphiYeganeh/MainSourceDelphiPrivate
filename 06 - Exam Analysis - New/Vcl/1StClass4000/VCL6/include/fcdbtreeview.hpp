// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcdbtreeview.pas' rev: 5.00

#ifndef fcdbtreeviewHPP
#define fcdbtreeviewHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <fcTreeHeader.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <fcImager.hpp>	// Pascal unit
#include <fcButton.hpp>	// Pascal unit
#include <fcShapeBtn.hpp>	// Pascal unit
#include <fcScrollBar.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <fcDBCommon.hpp>	// Pascal unit
#include <fcCanvas.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
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

namespace Fcdbtreeview
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcTreeHitTest { fchtdOnButton, fchtdOnStateIcon, fchtdOnImageIcon, fchtdOnText, fchtdOnActiveNode };
#pragma option pop

typedef Set<TfcTreeHitTest, fchtdOnButton, fchtdOnActiveNode>  TfcTreeHitTests;

class DELPHICLASS TfcTreeDataLink;
class DELPHICLASS TfcDBCustomTreeView;
#pragma option push -b-
enum TfcDBTreeViewOption { dtvoKeysScrollLevelOnly, dtvoAutoExpandOnDSScroll, dtvoExpandButtons3D, dtvoHideSelection, dtvoRowSelect, dtvoShowNodeHint, dtvoShowButtons, dtvoShowLines, dtvoShowRoot, dtvoShowHorzScrollBar, dtvoShowVertScrollBar, dtvoHotTracking, dtvoFlatCheckboxes };
#pragma option pop

typedef Set<TfcDBTreeViewOption, dtvoKeysScrollLevelOnly, dtvoFlatCheckboxes>  TfcDBTreeViewOptions;

class DELPHICLASS TfcDBTreeNode;
typedef void __fastcall (__closure *TfcDBTreeEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node);

typedef void __fastcall (__closure *TfcDBTreeSectionEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, Fctreeheader::TfcTreeHeaderSection* Section, AnsiString &DisplayText);

typedef void __fastcall (__closure *TfcDBTreeDrawSectionEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, Fctreeheader::TfcTreeHeaderSection* Section, const Types::TRect &ARect, AnsiString s, bool &DefaultDrawing);

class DELPHICLASS TfcDBMultiSelectAttributes;
class PASCALIMPLEMENTATION TfcDBMultiSelectAttributes : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	bool FAutoUnselect;
	int FMultiSelectLevel;
	bool FMultiSelectCheckbox;
	TfcDBCustomTreeView* TreeView;
	void __fastcall SetEnabled(bool val);
	void __fastcall SetMultiSelectLevel(int val);
	void __fastcall SetMultiSelectCheckBox(bool val);
	
public:
	__fastcall TfcDBMultiSelectAttributes(Classes::TComponent* Owner);
	virtual void __fastcall Assign(Classes::TPersistent* Source);
	
__published:
	__property bool AutoUnselect = {read=FAutoUnselect, write=FAutoUnselect, default=0};
	__property bool Enabled = {read=FEnabled, write=SetEnabled, default=0};
	__property int MultiSelectLevel = {read=FMultiSelectLevel, write=SetMultiSelectLevel, default=0};
	__property bool MultiSelectCheckbox = {read=FMultiSelectCheckbox, write=SetMultiSelectCheckBox, default=1};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcDBMultiSelectAttributes(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcDBTreeMouseEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TfcDBTreeMouseMoveEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, Classes::TShiftState Shift, int X, int Y);

typedef void __fastcall (__closure *TfcDBTreeDrawTextEvent)(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, const Types::TRect &ARect, bool &DefaultDrawing);

class DELPHICLASS TfcMultiSelectItem;
class PASCALIMPLEMENTATION TfcDBCustomTreeView : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
private:
	TfcDBTreeViewOptions FOptions;
	Classes::TStrings* FDisplayFields;
	Forms::TFormBorderStyle FBorderStyle;
	TfcDBTreeEvent FOnCalcNodeAttributes;
	TfcDBTreeSectionEvent FOnCalcSectionAttributes;
	TfcDBTreeDrawSectionEvent FOnDrawSection;
	TfcDBTreeEvent FOnChange;
	TfcDBTreeEvent FOnUserExpand;
	TfcDBTreeEvent FOnUserCollapse;
	TfcDBMultiSelectAttributes* FMultiSelectAttributes;
	TfcDBTreeMouseEvent FOnMouseDown;
	TfcDBTreeMouseEvent FOnMouseUp;
	TfcDBTreeMouseEvent FOnDblClick;
	TfcDBTreeMouseMoveEvent FOnMouseMove;
	int FLevelIndent;
	AnsiString FDataSourcesMiddle;
	Fcimager::TfcCustomImager* FImager;
	Classes::TList* FMultiSelectList;
	Imglist::TCustomImageList* FImages;
	Imglist::TCustomImageList* FStateImages;
	Graphics::TColor FLineColor;
	Graphics::TColor FInactiveFocusColor;
	bool FScrollWithinLevel;
	bool FDisableThemes;
	Classes::TList* FDataLinks;
	Controls::TControlCanvas* FCanvas;
	Fccanvas::TfcCanvas* FPaintCanvas;
	Graphics::TBitmap* FPaintBitmap;
	bool SkipErase;
	bool SkipReload;
	TfcTreeDataLink* FFirstDataLink;
	TfcTreeDataLink* FLastDataLink;
	Db::TDataSet* FActiveDataSet;
	Db::TDataSet* FLastVisibleDataset;
	bool ActiveDataSetChanged;
	int ActiveNodeIndex;
	Extctrls::TTimer* HintTimer;
	int HintTimerCount;
	int LastHintRow;
	Classes::TList* Nodes;
	int RowHeight;
	int FixedOffset;
	int CacheSize;
	TfcDBTreeNode* FActiveNode;
	int MaxTextWidth;
	bool ResetScroll;
	bool Down;
	int MouseRow;
	int PaintingRow;
	TfcDBTreeDrawTextEvent FOnDrawText;
	Controls::TCursor SaveCursor;
	bool CheckMaxWidth;
	bool CheckMaxWidthGrow;
	bool InPaint;
	bool InComputeHorzWidthOnly;
	Fcchangelink::TfcChangeLink* FChangeLink;
	bool NodesCleared;
	bool HaveBadLink;
	bool FHideUpDownButtons;
	Fctreeheader::TfcTreeHeader* FHeader;
	void __fastcall SetHideUpDownButtons(bool val);
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	Db::TDataSource* __fastcall GetLastDataSource(void);
	void __fastcall SetLastDataSource(Db::TDataSource* Value);
	void __fastcall SetDataSources(AnsiString Value);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	void __fastcall TreeDownClick(System::TObject* Sender);
	void __fastcall TreeUpClick(System::TObject* Sender);
	TfcTreeDataLink* __fastcall GetParentDataLink(Db::TDataSet* Dataset);
	TfcTreeDataLink* __fastcall GetChildDataLink(Db::TDataSet* Dataset);
	void __fastcall MouseToRow(int X, int Y, int &Row);
	bool __fastcall RowToNode(int Row, TfcDBTreeNode* &Node);
	bool __fastcall NodeToRow(TfcDBTreeNode* Node, int &Row);
	void __fastcall SetBorderStyle(Forms::TBorderStyle Value);
	Types::TPoint __fastcall GetCenterPoint(const Types::TRect &ARect);
	void __fastcall ResetStartOffsets(Db::TDataSet* ActiveDataSet);
	int __fastcall GetStartOffset(void);
	void __fastcall SetStartOffset(Db::TDataSet* ActiveDataSet, int val);
	void __fastcall SetImages(Imglist::TCustomImageList* Value);
	void __fastcall SetStateImages(Imglist::TCustomImageList* Value);
	bool __fastcall UseStateImages(TfcDBTreeNode* Node);
	TfcMultiSelectItem* __fastcall GetMultiSelectItem(int Index);
	void __fastcall HintTimerEvent(System::TObject* Sender);
	int __fastcall GetMultiSelectListCount(void);
	int __fastcall GetStateImageWidth(void);
	void __fastcall ScrollRight(void);
	void __fastcall ScrollLeft(void);
	void __fastcall SetLineColor(Graphics::TColor Value);
	void __fastcall SetInactiveFocusColor(Graphics::TColor Value);
	void __fastcall SetOptions(TfcDBTreeViewOptions Value);
	int __fastcall GetStartX(TfcDBTreeNode* Node);
	void __fastcall SetDisplayFields(Classes::TStrings* Value);
	void __fastcall UpdateScrollBarPosition(void);
	void __fastcall SetLevelIndent(int val);
	void __fastcall SetImager(Fcimager::TfcCustomImager* Value);
	void __fastcall ImagerChange(System::TObject* Sender);
	void __fastcall SetHeader(Fctreeheader::TfcTreeHeader* Value);
	
protected:
	Controls::THintWindow* HintWindow;
	void *LastActiveBookmark;
	void *FirstBookmark;
	int ScrollSize;
	int HotTrackRow;
	bool FMouseInControl;
	bool SkipFreeNodes;
	Classes::TList* OldNodes;
	Fcscrollbar::TfcScrollBar* HorzScrollBar;
	Fcscrollbar::TfcScrollBar* VertScrollBar;
	Fcshapebtn::TfcShapeBtn* UpTreeButton;
	Fcshapebtn::TfcShapeBtn* DownTreeButton;
	int StartOffsets[51];
	void *RootDataSetBookmark;
	DYNAMIC bool __fastcall DoMouseWheelDown(Classes::TShiftState Shift, const Types::TPoint &MousePos);
	DYNAMIC bool __fastcall DoMouseWheelUp(Classes::TShiftState Shift, const Types::TPoint &MousePos);
	AnsiString __fastcall GetNodeText(AnsiString DisplayFieldLine, Db::TDataSet* DataSet, Db::TField* &Field);
	virtual int __fastcall ComputeHeaderWidth(void);
	virtual bool __fastcall IsRootDataSetMoved(void);
	virtual void __fastcall DrawColumnText(TfcDBTreeNode* Node, const Types::TRect &ARect);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall UpdateScrollBar(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall PaintButton(TfcDBTreeNode* Node, const Types::TPoint &pt, int Size, bool Expanded);
	virtual void __fastcall PaintLines(TfcDBTreeNode* Node);
	virtual void __fastcall PaintImage(TfcDBTreeNode* Node);
	virtual void __fastcall DataChanged(Db::TDataSet* DataSet);
	virtual void __fastcall Scroll(Db::TDataSet* DataSet, int Distance);
	virtual void __fastcall LinkActive(Db::TDataSet* DataSet, bool Value);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall DoCalcNodeAttributes(TfcDBTreeNode* Node);
	virtual void __fastcall DoCalcSectionAttributes(TfcDBTreeNode* Node, Fctreeheader::TfcTreeHeaderSection* Section, AnsiString &DisplayText);
	virtual void __fastcall DoDrawSection(TfcDBTreeNode* Node, Fctreeheader::TfcTreeHeaderSection* Section, const Types::TRect &ARect, AnsiString s, bool &DoDefault);
	virtual bool __fastcall InMasterChanging(Db::TDataSet* DataSet);
	virtual void __fastcall RefreshDataLinks(Db::TDataSource* FirstDS, Db::TDataSource* LastDS);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	Types::TRect __fastcall LevelRect(TfcDBTreeNode* Node);
	Types::TRect __fastcall TextRect(TfcDBTreeNode* Node, int Row);
	bool __fastcall MultiSelectCheckboxNeeded(TfcDBTreeNode* Node);
	bool __fastcall ValidMultiSelectLevel(int ALevel);
	virtual int __fastcall FindCurrentMultiSelectIndex(Db::TDataSet* DataSet);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall FreeHintWindow(void);
	virtual Controls::THintWindow* __fastcall CreateHintWindow(void);
	virtual void __fastcall Change(TfcDBTreeNode* FSelected);
	void __fastcall SaveIfFirstRecordBookmark(Db::TDataSet* DataSet);
	void __fastcall FreeFirstBookmark(void);
	bool __fastcall HaveValidDataLinks(void);
	bool __fastcall IsChildDataSetOfActive(Db::TDataSet* DataSet);
	bool __fastcall IsMasterDataSetOfActive(Db::TDataSet* DataSet);
	void __fastcall ToggleMultiSelection(bool RequireControlKey, Classes::TShiftState Shift);
	virtual void __fastcall MouseLoop(int X, int Y);
	bool __fastcall UpdateDataLinkToActive(TfcDBTreeNode* Node);
	virtual void __fastcall PriorRow(bool WithinLevel);
	virtual void __fastcall NextRow(bool WithinLevel);
	virtual void __fastcall PriorPage(bool WithinLevel);
	virtual void __fastcall NextPage(bool WithinLevel);
	virtual Types::TRect __fastcall GetClientRect();
	virtual void __fastcall VScroll(int ScrollCode, int Position);
	virtual void __fastcall HScroll(int ScrollCode, int Position);
	virtual Fcshapebtn::TfcShapeBtn* __fastcall CreateUpTreeButton(void);
	virtual Fcshapebtn::TfcShapeBtn* __fastcall CreateDownTreeButton(void);
	virtual void __fastcall DoDrawText(TfcDBCustomTreeView* TreeView, TfcDBTreeNode* Node, const Types::TRect &ARect, bool &DefaultDrawing);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	void __fastcall FreeOldNodes(void);
	virtual void __fastcall DoUserExpand(TfcDBTreeNode* Node);
	virtual void __fastcall DoUserCollapse(TfcDBTreeNode* Node);
	virtual void __fastcall SetActiveDataSet(Db::TDataSet* DataSet);
	virtual void __fastcall SetLastVisibleDataSet(Db::TDataSet* DataSet);
	TfcTreeDataLink* __fastcall GetDataLink(Db::TDataSet* Dataset);
	int __fastcall GetDataLinkIndex(Db::TDataSet* Dataset);
	
public:
	Variant Patch;
	virtual void __fastcall LayoutChanged(void);
	void __fastcall FreeLastActiveBookmark(void);
	void __fastcall FreeRootBookmark(void);
	__fastcall virtual TfcDBCustomTreeView(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcDBCustomTreeView(void);
	void __fastcall MoveTo(TfcDBTreeNode* Node);
	TfcTreeHitTests __fastcall GetHitTestInfoAt(int X, int Y);
	virtual void __fastcall UnselectAll(void);
	virtual void __fastcall SelectAll(Db::TDataSet* ADataSet);
	virtual void __fastcall SelectRecord(void);
	virtual void __fastcall UnselectRecord(void);
	bool __fastcall IsSelectedRecord(void);
	void __fastcall InvalidateNode(TfcDBTreeNode* Node);
	void __fastcall InvalidateRow(int Row);
	virtual void __fastcall InvalidateClient(void);
	virtual void __fastcall Expand(TfcDBTreeNode* Node);
	virtual void __fastcall Collapse(TfcDBTreeNode* Node);
	void __fastcall MakeActiveDataSet(Db::TDataSet* DataSet, bool Collapse);
	TfcDBTreeNode* __fastcall GetNodeAt(int X, int Y);
	void __fastcall SortMultiSelectList(void);
	__property TfcDBTreeNode* ActiveNode = {read=FActiveNode};
	__property Fccanvas::TfcCanvas* Canvas = {read=FPaintCanvas};
	__property TfcMultiSelectItem* MultiSelectList[int Index] = {read=GetMultiSelectItem};
	__property int MultiSelectListCount = {read=GetMultiSelectListCount, nodefault};
	__property Db::TDataSet* ActiveDataSet = {read=FActiveDataSet, write=SetActiveDataSet};
	__property Db::TDataSet* LastVisibleDataSet = {read=FLastVisibleDataset, write=SetLastVisibleDataSet};
	__property int LevelIndent = {read=FLevelIndent, write=SetLevelIndent, nodefault};
	__property Graphics::TColor LineColor = {read=FLineColor, write=SetLineColor, default=-2147483632};
	__property Graphics::TColor InactiveFocusColor = {read=FInactiveFocusColor, write=SetInactiveFocusColor, default=-2147483633};
	__property ParentColor ;
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, nodefault};
	__property Db::TDataSource* DataSourceFirst = {read=GetDataSource, write=SetDataSource};
	__property Db::TDataSource* DataSourceLast = {read=GetLastDataSource, write=SetLastDataSource};
	__property AnsiString DataSources = {read=FDataSourcesMiddle, write=SetDataSources};
	__property TfcDBTreeViewOptions Options = {read=FOptions, write=SetOptions, default=2018};
	__property Classes::TStrings* DisplayFields = {read=FDisplayFields, write=SetDisplayFields};
	__property Imglist::TCustomImageList* Images = {read=FImages, write=SetImages};
	__property Fcimager::TfcCustomImager* Imager = {read=FImager, write=SetImager};
	__property Imglist::TCustomImageList* StateImages = {read=FStateImages, write=SetStateImages};
	__property TfcDBMultiSelectAttributes* MultiSelectAttributes = {read=FMultiSelectAttributes, write=FMultiSelectAttributes};
	__property TfcDBTreeEvent OnCalcNodeAttributes = {read=FOnCalcNodeAttributes, write=FOnCalcNodeAttributes};
	__property TfcDBTreeSectionEvent OnCalcSectionAttributes = {read=FOnCalcSectionAttributes, write=FOnCalcSectionAttributes};
	__property TfcDBTreeDrawSectionEvent OnDrawSection = {read=FOnDrawSection, write=FOnDrawSection};
	__property TfcDBTreeEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TfcDBTreeEvent OnUserCollapse = {read=FOnUserCollapse, write=FOnUserCollapse};
	__property TfcDBTreeEvent OnUserExpand = {read=FOnUserExpand, write=FOnUserExpand};
	__property TfcDBTreeMouseEvent OnDblClick = {read=FOnDblClick, write=FOnDblClick};
	__property TfcDBTreeMouseEvent OnMouseDown = {read=FOnMouseDown, write=FOnMouseDown};
	__property TfcDBTreeMouseMoveEvent OnMouseMove = {read=FOnMouseMove, write=FOnMouseMove};
	__property TfcDBTreeMouseEvent OnMouseUp = {read=FOnMouseUp, write=FOnMouseUp};
	__property TfcDBTreeDrawTextEvent OnDrawText = {read=FOnDrawText, write=FOnDrawText};
	__property Fctreeheader::TfcTreeHeader* Header = {read=FHeader, write=SetHeader};
	__property bool HideUpDownButtons = {read=FHideUpDownButtons, write=SetHideUpDownButtons, default=0};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDBCustomTreeView(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcTreeDataLink : public Db::TDataLink 
{
	typedef Db::TDataLink inherited;
	
private:
	TfcDBCustomTreeView* FTree;
	
protected:
	virtual void __fastcall DataSetChanged(void);
	virtual void __fastcall DataSetScrolled(int Distance);
	virtual void __fastcall ActiveChanged(void);
	virtual void __fastcall RecordChanged(Db::TField* Field);
	
public:
	__fastcall TfcTreeDataLink(TfcDBCustomTreeView* ATree);
	__fastcall virtual ~TfcTreeDataLink(void);
};


class PASCALIMPLEMENTATION TfcMultiSelectItem : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	void *Bookmark;
	Db::TDataSet* DataSet;
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcMultiSelectItem(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcMultiSelectItem(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcDBTreeNode : public System::TObject 
{
	typedef System::TObject inherited;
	
protected:
	bool HasPrevSibling;
	bool HasNextSibling;
	
public:
	int ActiveRecord;
	TfcTreeDataLink* DataLink;
	AnsiString Text;
	int Level;
	Db::TDataSet* DataSet;
	Db::TField* Field;
	bool Expanded;
	bool HasChildren;
	TfcDBTreeNode* Parent;
	int ImageIndex;
	int StateIndex;
	bool Selected;
	bool Hot;
	bool MultiSelected;
	Variant __fastcall GetFieldValue(AnsiString FieldName);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcDBTreeNode(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcDBTreeNode(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcDBTreeView;
class PASCALIMPLEMENTATION TfcDBTreeView : public TfcDBCustomTreeView 
{
	typedef TfcDBCustomTreeView inherited;
	
__published:
	__property DisableThemes ;
	__property Align ;
	__property BorderStyle ;
	__property Color ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property ParentColor ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property TabStop ;
	__property TabOrder ;
	__property Visible ;
	__property Header ;
	__property Anchors ;
	__property BiDiMode ;
	__property Constraints ;
	__property ParentBiDiMode ;
	__property DataSourceFirst ;
	__property DataSourceLast ;
	__property DataSources ;
	__property DisplayFields ;
	__property Imager ;
	__property InactiveFocusColor ;
	__property LineColor ;
	__property Options ;
	__property OnStartDock ;
	__property OnEndDock ;
	__property LevelIndent ;
	__property Images ;
	__property StateImages ;
	__property MultiSelectAttributes ;
	__property PopupMenu ;
	__property HideUpDownButtons ;
	__property OnCalcNodeAttributes ;
	__property OnCalcSectionAttributes ;
	__property OnDrawSection ;
	__property OnChange ;
	__property OnUserCollapse ;
	__property OnUserExpand ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnDblClick ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnStartDrag ;
	__property OnDrawText ;
public:
	#pragma option push -w-inl
	/* TfcDBCustomTreeView.Create */ inline __fastcall virtual TfcDBTreeView(Classes::TComponent* AOwner) : TfcDBCustomTreeView(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcDBCustomTreeView.Destroy */ inline __fastcall virtual ~TfcDBTreeView(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDBTreeView(HWND ParentWindow) : TfcDBCustomTreeView(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcdbtreeview */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcdbtreeview;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcdbtreeview
