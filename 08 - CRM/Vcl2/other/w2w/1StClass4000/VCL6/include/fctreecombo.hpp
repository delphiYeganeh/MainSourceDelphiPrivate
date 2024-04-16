// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fctreecombo.pas' rev: 5.00

#ifndef fctreecomboHPP
#define fctreecomboHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcframe.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <fcTreeView.hpp>	// Pascal unit
#include <fcCombo.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fctreecombo
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcPopupPanel;
class PASCALIMPLEMENTATION TfcPopupPanel : public Extctrls::TPanel 
{
	typedef Extctrls::TPanel inherited;
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	__fastcall virtual TfcPopupPanel(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TCustomControl.Destroy */ inline __fastcall virtual ~TfcPopupPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcPopupPanel(HWND ParentWindow) : Extctrls::TPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeComboTreeNode;
class PASCALIMPLEMENTATION TfcTreeComboTreeNode : public Fctreeview::TfcTreeNode 
{
	typedef Fctreeview::TfcTreeNode inherited;
	
private:
	bool FSelectable;
	
protected:
	virtual void __fastcall ReadData(Classes::TStream* Stream, Fctreeview::PfcNodeInfo Info);
	virtual void __fastcall WriteData(Classes::TStream* Stream, Fctreeview::PfcNodeInfo Info);
	virtual int __fastcall GetSizeOfNodeInfo(void);
	
public:
	__fastcall virtual TfcTreeComboTreeNode(Fctreeview::TfcTreeNodes* AOwner);
	
__published:
	__property bool Selectable = {read=FSelectable, write=FSelectable, nodefault};
public:
	#pragma option push -w-inl
	/* TfcTreeNode.Destroy */ inline __fastcall virtual ~TfcTreeComboTreeNode(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcPopupTreeView;
class DELPHICLASS TfcCustomTreeCombo;
#pragma option push -b-
enum TfcImgComboOption { icoExpanded, icoEndNodesOnly };
#pragma option pop

typedef Set<TfcImgComboOption, icoExpanded, icoEndNodesOnly>  TfcImgComboOptions;

typedef void __fastcall (__closure *TfcCheckValidItemEvent)(System::TObject* Sender, Fctreeview::TfcTreeNode* Node, bool &Accept);

class PASCALIMPLEMENTATION TfcCustomTreeCombo : public Fccombo::TfcCustomCombo 
{
	typedef Fccombo::TfcCustomCombo inherited;
	
private:
	Fctreeview::TfcTreeNode* FOriginalNode;
	AnsiString FOriginalText;
	Fctreeview::TfcTreeNode* FSelectedNode;
	TfcPopupPanel* FPanel;
	bool FShowMatchText;
	TfcImgComboOptions FOptions;
	TfcPopupTreeView* FTreeView;
	int FDropDownWidth;
	TfcCheckValidItemEvent FOnCheckValidItem;
	Classes::TNotifyEvent FOnSelectionChange;
	Classes::TStringList* FItemsList;
	int LastItemIndex;
	AnsiString LastItemText;
	bool SetModifiedInChangeEvent;
	Fctreeview::TwwStoreData FStoreDataUsing;
	Fctreeview::TfcCalcNodeAttributesEvent __fastcall GetCalcNodeAttributes();
	Imglist::TCustomImageList* __fastcall GetImageList(void);
	Imglist::TCustomImageList* __fastcall GetStateImageList(void);
	Fctreeview::TfcTreeNodes* __fastcall GetItems(void);
	bool __fastcall GetSorted(void);
	Fctreeview::TfcTreeViewOptions __fastcall GetTreeOptions(void);
	void __fastcall SetCalcNodeAttributes(Fctreeview::TfcCalcNodeAttributesEvent Value);
	void __fastcall SetItems(Fctreeview::TfcTreeNodes* Value);
	void __fastcall SetImageList(Imglist::TCustomImageList* Value);
	void __fastcall SetStateImageList(Imglist::TCustomImageList* Value);
	void __fastcall SetSorted(bool Value);
	void __fastcall SetTreeOptions(Fctreeview::TfcTreeViewOptions Value);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	void __fastcall InvalidateImage(void);
	Types::TRect __fastcall CalcImageRect(const Types::TRect &Rect);
	
protected:
	virtual TfcPopupTreeView* __fastcall CreatePopupTreeView(void);
	virtual Fctreeview::TfcTreeNode* __fastcall GetStartingNode(void);
	DYNAMIC void __fastcall Change(void);
	virtual void __fastcall ItemsChange(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node, Fctreeview::TfcItemChangeAction Action, const Variant &NewValue);
	virtual void __fastcall PaintToCanvas(Graphics::TCanvas* Canvas, const Types::TRect &Rect, bool Highlight, bool GridPaint, AnsiString Text);
	virtual void __fastcall ResyncTreeSelected(AnsiString LookupText);
	virtual void __fastcall SelectionChange(void);
	virtual void __fastcall SelectionChanging(void);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual Controls::TWinControl* __fastcall GetDropDownControl(void);
	virtual Controls::TWinControl* __fastcall GetDropDownContainer(void);
	virtual int __fastcall GetItemCount(void);
	virtual tagSIZE __fastcall GetItemSize();
	virtual int __fastcall GetLeftIndent(void);
	virtual Types::TRect __fastcall GetEditRect();
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual bool __fastcall Editable(void);
	virtual void __fastcall HideCaret(void);
	__property Classes::TStringList* ItemsList = {read=FItemsList};
	
public:
	Variant BasePatch;
	__fastcall virtual TfcCustomTreeCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomTreeCombo(void);
	virtual bool __fastcall IsValidNode(Fctreeview::TfcTreeNode* Node);
	virtual void __fastcall CloseUp(bool Accept);
	virtual void __fastcall DrawInGridCell(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, Grids::TGridDrawState State);
	virtual void __fastcall DropDown(void);
	virtual bool __fastcall IsDroppedDown(void);
	virtual void __fastcall SetSelectedNode(Fctreeview::TfcTreeNode* Node);
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, default=0};
	__property bool Sorted = {read=GetSorted, write=SetSorted, nodefault};
	__property TfcPopupTreeView* TreeView = {read=FTreeView};
	__property Imglist::TCustomImageList* Images = {read=GetImageList, write=SetImageList};
	__property Imglist::TCustomImageList* StateImages = {read=GetStateImageList, write=SetStateImageList};
	__property Fctreeview::TfcTreeNodes* Items = {read=GetItems, write=SetItems};
	__property TfcImgComboOptions Options = {read=FOptions, write=FOptions, nodefault};
	__property Fctreeview::TfcTreeNode* SelectedNode = {read=FSelectedNode};
	__property bool ShowMatchText = {read=FShowMatchText, write=FShowMatchText, nodefault};
	__property Fctreeview::TfcTreeViewOptions TreeOptions = {read=GetTreeOptions, write=SetTreeOptions, default=1256};
	__property Fctreeview::TwwStoreData StoreDataUsing = {read=FStoreDataUsing, write=FStoreDataUsing, default=0};
	__property TfcCheckValidItemEvent OnCheckValidItem = {read=FOnCheckValidItem, write=FOnCheckValidItem};
	__property Fctreeview::TfcCalcNodeAttributesEvent OnCalcNodeAttributes = {read=GetCalcNodeAttributes, write=SetCalcNodeAttributes};
	__property Classes::TNotifyEvent OnSelectionChange = {read=FOnSelectionChange, write=FOnSelectionChange};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomTreeCombo(HWND ParentWindow) : Fccombo::TfcCustomCombo(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcPopupTreeView : public Fctreeview::TfcTreeView 
{
	typedef Fctreeview::TfcTreeView inherited;
	
private:
	#pragma pack(push, 1)
	Types::TPoint FLastPoint;
	#pragma pack(pop)
	
	bool FTimerOn;
	bool FCheckChange;
	TfcCustomTreeCombo* FTreeCombo;
	bool FCloseOnUp;
	bool FClickedInControl;
	MESSAGE void __fastcall WMMouseActivate(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	MESSAGE void __fastcall WMTimer(Messages::TWMTimer &Message);
	
protected:
	virtual void __fastcall CalcNodeAttributes(Fctreeview::TfcTreeNode* Node, Fctreeview::TfcItemStates AItemState);
	DYNAMIC void __fastcall Change(Fctreeview::TfcTreeNode* Node);
	virtual void __fastcall KillTimer(void);
	virtual void __fastcall SetTimer(void);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	DYNAMIC void __fastcall Collapse(Fctreeview::TfcTreeNode* Node);
	__property TfcCustomTreeCombo* TreeCombo = {read=FTreeCombo};
	
public:
	__fastcall virtual TfcPopupTreeView(Classes::TComponent* AOwner);
	bool __fastcall ValidNode(Fctreeview::TfcTreeNode* Node);
	Fctreeview::TfcTreeNode* __fastcall MovePage(Fctreeview::TfcTreeNode* Node, bool Down);
	Fctreeview::TfcTreeNode* __fastcall GetLastVisible(void);
	Fctreeview::TfcTreeNode* __fastcall GetLastNode(void);
	bool __fastcall SelectValidNode(Fctreeview::TfcTreeNode* StartingNode, Fctreeview::TfcTreeNode* SelectedNode, Word Key);
	__property Items ;
public:
	#pragma option push -w-inl
	/* TfcCustomTreeView.Destroy */ inline __fastcall virtual ~TfcPopupTreeView(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcPopupTreeView(HWND ParentWindow) : Fctreeview::TfcTreeView(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcTreeCombo;
class PASCALIMPLEMENTATION TfcTreeCombo : public TfcCustomTreeCombo 
{
	typedef TfcCustomTreeCombo inherited;
	
__published:
	__property Controller ;
	__property DisableThemes ;
	__property AlignmentVertical ;
	__property Anchors ;
	__property Constraints ;
	__property AllowClearKey ;
	__property AutoSelect ;
	__property AutoSize ;
	__property BorderStyle ;
	__property ButtonStyle ;
	__property ButtonEffects ;
	__property ButtonGlyph ;
	__property ButtonWidth ;
	__property CharCase ;
	__property Color ;
	__property Text ;
	__property Frame ;
	__property DataField ;
	__property DataSource ;
	__property DropDownCount ;
	__property DropDownWidth ;
	__property Enabled ;
	__property Font ;
	__property HideSelection ;
	__property Images ;
	__property InfoPower ;
	__property MaxLength ;
	__property Items ;
	__property Options ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property ShowButton ;
	__property ShowHint ;
	__property ShowMatchText ;
	__property Sorted ;
	__property StateImages ;
	__property StoreDataUsing ;
	__property Style ;
	__property TabOrder ;
	__property TreeOptions ;
	__property Visible ;
	__property OnCalcNodeAttributes ;
	__property OnClick ;
	__property OnChange ;
	__property OnCheckValidItem ;
	__property OnCloseUp ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
	__property OnAfterDropDown ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnSelectionChange ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TfcCustomTreeCombo.Create */ inline __fastcall virtual TfcTreeCombo(Classes::TComponent* AOwner) : TfcCustomTreeCombo(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomTreeCombo.Destroy */ inline __fastcall virtual ~TfcTreeCombo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTreeCombo(HWND ParentWindow) : TfcCustomTreeCombo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Word FCPOPUPTIMERID = 0x3e8;
static const Shortint FCPOPUPINTERVAL = 0x32;

}	/* namespace Fctreecombo */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctreecombo;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fctreecombo
