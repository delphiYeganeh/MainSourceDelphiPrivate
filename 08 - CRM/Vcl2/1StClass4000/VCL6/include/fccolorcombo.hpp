// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcColorCombo.pas' rev: 5.00

#ifndef fcColorComboHPP
#define fcColorComboHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcframe.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fcCombo.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
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

namespace Fccolorcombo
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcOwnerDrawState { odsChecked, odsComboBoxEdit, odsDefault, odsDisabled, odsFocus, odsGrayed, odsSelected };
#pragma option pop

typedef Set<TfcOwnerDrawState, odsChecked, odsSelected>  TfcOwnerDrawStates;

#pragma option push -b-
enum TfcSortByOption { csoNone, csoByRGB, csoByIntensity, csoByName };
#pragma option pop

#pragma option push -b-
enum TfcColorListBoxOption { ccoShowSystemColors, ccoShowColorNone, ccoShowCustomColors, ccoShowStandardColors, ccoShowColorNames, ccoShowGreyScale, ccoGroupSystemColors };
#pragma option pop

typedef Set<TfcColorListBoxOption, ccoShowSystemColors, ccoGroupSystemColors>  TfcColorListBoxOptions;

#pragma option push -b-
enum TfcColorDialogOption { cdoEnabled, cdoPreventFullOpen, cdoFullOpen, cdoSolidColor, cdoAnyColor };
#pragma option pop

typedef Set<TfcColorDialogOption, cdoEnabled, cdoAnyColor>  TfcColorDialogOptions;

typedef void __fastcall (__closure *TfcColorDialogEvent)(System::TObject* Sender, Dialogs::TColorDialog* Dialog);

typedef void __fastcall (__closure *TfcCloseColorDialogEvent)(System::TObject* Sender, Dialogs::TColorDialog* Dialog, Controls::TModalResult MResult, bool &Accept);

typedef void __fastcall (__closure *TfcAddNewColorEvent)(System::TObject* Sender, Graphics::TColor AColor, AnsiString &AColorName, bool &Accept);

typedef void __fastcall (__closure *TfcOnFilterColorEvent)(System::TObject* Sender, Graphics::TColor AColor, AnsiString AColorName, bool &Accept);

class DELPHICLASS TfcColorListFiller;
class PASCALIMPLEMENTATION TfcColorListFiller : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	TfcColorListBoxOptions FOptions;
	Classes::TStringList* FList;
	
public:
	void __fastcall ColorCallbackProc(const AnsiString s);
	void __fastcall FillColorList(Classes::TStringList* &AList, TfcColorListBoxOptions AOptions, AnsiString NoneString);
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcColorListFiller(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcColorListFiller(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomColorList;
class PASCALIMPLEMENTATION TfcCustomColorList : public Stdctrls::TCustomListBox 
{
	typedef Stdctrls::TCustomListBox inherited;
	
private:
	Classes::TAlignment FAlignment;
	Classes::TAlignment FColorAlignment;
	int FColorWidth;
	TfcColorListBoxOptions FOptions;
	Classes::TStringList* FCustomColors;
	Graphics::TColor FHighlightColor;
	Graphics::TColor FHighlightTextColor;
	Classes::TStringList* FAllColors;
	Graphics::TColor FSelectedColor;
	Graphics::TColor FOldSelectedColor;
	TfcSortByOption FSortByOption;
	Classes::TStringList* FTempColors;
	int FGreyScaleIncrement;
	AnsiString FNoneString;
	TfcAddNewColorEvent FOnAddNewColor;
	TfcOnFilterColorEvent FOnFilterColor;
	int FPrevItem;
	#pragma pack(push, 1)
	Types::TPoint FLastPoint;
	#pragma pack(pop)
	
	bool FCloseOnUp;
	Classes::TList* ItemIDMap;
	bool FClickedInControl;
	bool FIgnoreMouseScroll;
	bool FListBoxUpdated;
	int FColorMargin;
	HIDESBASE MESSAGE void __fastcall WMNCHitTest(Messages::TWMNCHitTest &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	void __fastcall SetAlignment(Classes::TLeftRight Value);
	void __fastcall SetColorAlignment(Classes::TLeftRight Value);
	void __fastcall SetOptions(TfcColorListBoxOptions Value);
	void __fastcall SetColorWidth(int Value);
	void __fastcall SetColorMargin(int Value);
	void __fastcall SetSelectedColor(Graphics::TColor Value);
	void __fastcall SetNoneString(AnsiString Value);
	void __fastcall SetGreyScaleIncrement(int Value);
	void __fastcall SetSortBy(TfcSortByOption Value);
	void __fastcall SetCustomColors(Classes::TStringList* Value);
	Graphics::TColor __fastcall GetSelectedColor(void);
	int __fastcall GetEditRectHeight(void);
	HIDESBASE int __fastcall GetItemIndex(void);
	HIDESBASE void __fastcall SetItemIndex(int Value);
	Graphics::TColor __fastcall GetHighlightColor(void);
	Graphics::TColor __fastcall GetHighlightTextColor(void);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	
protected:
	virtual bool __fastcall AddToAllColors(AnsiString AName, AnsiString AValue);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall CustomColorsChangeEvent(System::TObject* Sender);
	virtual bool __fastcall HasDuplicateNames(AnsiString &dup);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomColorList(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomColorList(void);
	virtual void __fastcall InitColorList(void);
	virtual void __fastcall SortList(void);
	virtual void __fastcall UpdateItems(void);
	virtual void __fastcall DoDrawItem(Graphics::TCanvas* ACanvas, int Index, int CWidth, int CHeight, const Types::TRect &Rect, Windows::TOwnerDrawState State, AnsiString Text, Graphics::TColor AColor);
	virtual Graphics::TColor __fastcall ColorFromIndex(int Index);
	__property Graphics::TColor SelectedColor = {read=GetSelectedColor, write=SetSelectedColor, nodefault};
	__property Graphics::TColor OldSelectedColor = {read=FOldSelectedColor, write=FOldSelectedColor, nodefault};
	__property Classes::TStringList* AllColors = {read=FAllColors};
	__property Classes::TLeftRight Alignment = {read=FAlignment, write=SetAlignment, default=0};
	__property Classes::TLeftRight ColorAlignment = {read=FColorAlignment, write=SetColorAlignment, default=0};
	__property int ColorMargin = {read=FColorMargin, write=SetColorMargin, default=2};
	__property int ColorWidth = {read=FColorWidth, write=SetColorWidth, nodefault};
	__property Classes::TStringList* CustomColors = {read=FCustomColors, write=SetCustomColors};
	__property int GreyScaleIncrement = {read=FGreyScaleIncrement, write=SetGreyScaleIncrement, default=15};
	__property Graphics::TColor HighlightColor = {read=FHighlightColor, write=FHighlightColor, nodefault};
	__property Graphics::TColor HighlightTextColor = {read=FHighlightTextColor, write=FHighlightTextColor, nodefault};
	__property ItemIndex  = {read=GetItemIndex, write=SetItemIndex};
	__property AnsiString NoneString = {read=FNoneString, write=SetNoneString};
	__property TfcColorListBoxOptions Options = {read=FOptions, write=SetOptions, nodefault};
	__property TfcSortByOption SortBy = {read=FSortByOption, write=SetSortBy, default=0};
	__property TfcAddNewColorEvent OnAddNewColor = {read=FOnAddNewColor, write=FOnAddNewColor};
	__property TfcOnFilterColorEvent OnFilterColor = {read=FOnFilterColor, write=FOnFilterColor};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomColorList(HWND ParentWindow) : Stdctrls::TCustomListBox(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcColorList;
class PASCALIMPLEMENTATION TfcColorList : public TfcCustomColorList 
{
	typedef TfcCustomColorList inherited;
	
__published:
	__property Anchors ;
	__property Constraints ;
	__property Align ;
	__property Alignment ;
	__property BorderStyle ;
	__property Color ;
	__property ColorAlignment ;
	__property ColorMargin ;
	__property ColorWidth ;
	__property Columns ;
	__property Ctl3D ;
	__property CustomColors ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property ExtendedSelect ;
	__property Font ;
	__property GreyScaleIncrement ;
	__property ImeMode ;
	__property ImeName ;
	__property IntegralHeight ;
	__property MultiSelect ;
	__property NoneString ;
	__property Options ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property SelectedColor ;
	__property SortBy ;
	__property OnAddNewColor ;
	__property OnFilterColor ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
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
	__property OnStartDrag ;
	__property ParentColor ;
	__property ShowHint ;
	__property TabOrder ;
	__property Visible ;
	__property ItemHeight ;
public:
	#pragma option push -w-inl
	/* TfcCustomColorList.Create */ inline __fastcall virtual TfcColorList(Classes::TComponent* AOwner) : TfcCustomColorList(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomColorList.Destroy */ inline __fastcall virtual ~TfcColorList(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcColorList(HWND ParentWindow) : TfcCustomColorList(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcColorListOptions;
class DELPHICLASS TfcCustomColorCombo;
#pragma option push -b-
enum TfcColorComboDataType { ccdColorName, ccdColor };
#pragma option pop

class PASCALIMPLEMENTATION TfcCustomColorCombo : public Fccombo::TfcCustomCombo 
{
	typedef Fccombo::TfcCustomCombo inherited;
	
private:
	Classes::TAlignment FAlignment;
	bool FAutoDropDown;
	bool InAutoDropDown;
	Classes::TAlignment FColorAlignment;
	Dialogs::TColorDialog* FColorDialog;
	bool FShowMatchText;
	Classes::TStringList* FCustomColors;
	TfcColorList* FListbox;
	Graphics::TColor FSelectedColor;
	int FDropDownWidth;
	TfcColorListOptions* FColorListOptions;
	Stdctrls::TDrawItemEvent FOnDrawItem;
	TfcColorDialogEvent FOnInitColorDialog;
	TfcCloseColorDialogEvent FOnCloseColorDialog;
	TfcColorDialogOptions FColorDialogOptions;
	int FItemIndex;
	bool SkipDataChange;
	bool SkipTextChange;
	bool SkipDropDown;
	bool FCloseOnUp;
	int FOriginalIndex;
	Graphics::TColor FOriginalSelectedColor;
	int FSelectedItemIndex;
	TfcAddNewColorEvent FOnAddNewColor;
	TfcOnFilterColorEvent FOnFilterColor;
	bool SetModifiedInChangeEvent;
	void __fastcall SetAlignment(Classes::TLeftRight Value);
	void __fastcall SetColorAlignment(Classes::TLeftRight Value);
	void __fastcall SetCustomColors(Classes::TStringList* Value);
	void __fastcall SetItemIndex(int Value);
	void __fastcall SetSelectedColor(Graphics::TColor Value);
	void __fastcall CustomColorsChangeEvent(System::TObject* Sender);
	void __fastcall ListMouseUp(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	void __fastcall ListMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNCommand(Messages::TWMCommand &Message);
	HIDESBASE MESSAGE void __fastcall CNKeyDown(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMPaste(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	AnsiString __fastcall GetSelectedColorString();
	void __fastcall SetSelectedColorString(AnsiString Value);
	void __fastcall UpdateSelectedColor(void);
	Classes::TLeftRight __fastcall GetEffectiveAlignment(void);
	
protected:
	DYNAMIC void __fastcall Change(void);
	virtual void __fastcall AddNewColorEvent(System::TObject* Sender, Graphics::TColor AColor, AnsiString &AColorName, bool &Accept);
	virtual void __fastcall OnFilterColorEvent(System::TObject* Sender, Graphics::TColor AColor, AnsiString AColorName, bool &Accept);
	virtual Graphics::TColor __fastcall GetComboColor(int Index);
	virtual TfcColorComboDataType __fastcall GetComboDataType(void);
	virtual AnsiString __fastcall GetComboDisplayText(int Value);
	virtual Types::TRect __fastcall GetTextRect(const Types::TRect &ARect, bool Highlight);
	virtual void __fastcall ListBoxNeeded(void);
	virtual void __fastcall PaintToCanvas(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, bool Highlight, bool GridPaint, AnsiString Text);
	virtual void __fastcall Paint(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual bool __fastcall Editable(void);
	virtual bool __fastcall EditCanModify(void);
	virtual Controls::TWinControl* __fastcall GetDropDownControl(void);
	virtual Controls::TWinControl* __fastcall GetDropDownContainer(void);
	virtual int __fastcall GetItemCount(void);
	virtual tagSIZE __fastcall GetItemSize();
	virtual void __fastcall HideCaret(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	virtual int __fastcall GetIndentLeft(const Types::TRect &Rect);
	virtual int __fastcall GetRightIndent(const Types::TRect &Rect);
	virtual int __fastcall GetTopIndent(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall DrawColorRect(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, Graphics::TColor CurColor, bool Highlight);
	virtual void __fastcall SetComboText(AnsiString Value);
	virtual void __fastcall SetEditRect(void);
	virtual void __fastcall ShowCaret(void);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property Stdctrls::TDrawItemEvent OnDrawItem = {read=FOnDrawItem, write=FOnDrawItem};
	
public:
	__fastcall virtual TfcCustomColorCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomColorCombo(void);
	virtual void __fastcall SelectAll(void);
	virtual void __fastcall CloseUp(bool Accept);
	AnsiString __fastcall ColorString(AnsiString s);
	bool __fastcall IsCustomColor(AnsiString s);
	virtual bool __fastcall IsDroppedDown(void);
	virtual void __fastcall DrawInGridCell(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, Grids::TGridDrawState State);
	virtual void __fastcall DropDown(void);
	virtual bool __fastcall ExecuteColorDialog(void);
	bool __fastcall GetColorFromRGBString(AnsiString RGBString, Graphics::TColor &AColor);
	void __fastcall GetColorRectInfo(const Types::TRect &Rect, int &AWidth, int &AHeight);
	virtual void __fastcall RefreshList(void);
	__property TfcColorList* ListBox = {read=FListbox};
	__property bool DroppedDown = {read=IsDroppedDown, nodefault};
	__property Graphics::TColor SelectedColor = {read=FSelectedColor, write=SetSelectedColor, nodefault};
	__property Classes::TLeftRight UnboundAlignment = {read=GetEffectiveAlignment, write=SetAlignment, default=0};
	__property bool AutoDropDown = {read=FAutoDropDown, write=FAutoDropDown, default=0};
	__property ButtonStyle ;
	__property Classes::TLeftRight ColorAlignment = {read=FColorAlignment, write=SetColorAlignment, default=0};
	__property Dialogs::TColorDialog* ColorDialog = {read=FColorDialog, write=FColorDialog};
	__property TfcColorDialogOptions ColorDialogOptions = {read=FColorDialogOptions, write=FColorDialogOptions, default=2};
	__property TfcColorListOptions* ColorListOptions = {read=FColorListOptions, write=FColorListOptions};
	__property Classes::TStringList* CustomColors = {read=FCustomColors, write=SetCustomColors};
	__property AnsiString SelectedColorString = {read=GetSelectedColorString, write=SetSelectedColorString};
	__property int DropDownWidth = {read=FDropDownWidth, write=FDropDownWidth, default=0};
	__property int ItemIndex = {read=FItemIndex, write=SetItemIndex, nodefault};
	__property bool ShowMatchText = {read=FShowMatchText, write=FShowMatchText, default=1};
	__property TfcAddNewColorEvent OnAddNewColor = {read=FOnAddNewColor, write=FOnAddNewColor};
	__property TfcOnFilterColorEvent OnFilterColor = {read=FOnFilterColor, write=FOnFilterColor};
	__property TfcColorDialogEvent OnInitColorDialog = {read=FOnInitColorDialog, write=FOnInitColorDialog};
	__property TfcCloseColorDialogEvent OnCloseColorDialog = {read=FOnCloseColorDialog, write=FOnCloseColorDialog};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomColorCombo(HWND ParentWindow) : Fccombo::TfcCustomCombo(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcColorListOptions : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcCustomColorCombo* FCombo;
	Graphics::TColor FColor;
	int FColorWidth;
	Graphics::TFont* FFont;
	int FGreyScaleIncrement;
	bool FIntegralHeight;
	int FItemHeight;
	TfcColorListBoxOptions FOptions;
	TfcSortByOption FSortByOption;
	AnsiString FNoneString;
	void __fastcall SetColor(Graphics::TColor Value);
	void __fastcall SetColorWidth(int Value);
	void __fastcall SetFont(Graphics::TFont* Value);
	void __fastcall SetGreyScaleIncrement(int Value);
	void __fastcall SetIntegralHeight(bool Value);
	void __fastcall SetItemHeight(int Value);
	void __fastcall SetNoneString(AnsiString Value);
	void __fastcall SetSortBy(TfcSortByOption Value);
	bool __fastcall StoreNoneString(void);
	
protected:
	void __fastcall SetOptions(TfcColorListBoxOptions Value);
	
__published:
	__fastcall TfcColorListOptions(TfcCustomColorCombo* AOwner);
	__fastcall virtual ~TfcColorListOptions(void);
	__property Graphics::TColor Color = {read=FColor, write=SetColor, default=-2147483643};
	__property int ColorWidth = {read=FColorWidth, write=SetColorWidth, default=0};
	__property Graphics::TFont* Font = {read=FFont, write=SetFont};
	__property int GreyScaleIncrement = {read=FGreyScaleIncrement, write=SetGreyScaleIncrement, default=10};
	__property bool IntegralHeight = {read=FIntegralHeight, write=SetIntegralHeight, default=1};
	__property int ItemHeight = {read=FItemHeight, write=SetItemHeight, default=16};
	__property AnsiString NoneString = {read=FNoneString, write=SetNoneString, stored=StoreNoneString};
	__property TfcColorListBoxOptions Options = {read=FOptions, write=SetOptions, default=24};
	__property TfcSortByOption SortBy = {read=FSortByOption, write=SetSortBy, default=0};
};


class DELPHICLASS TfcColorCombo;
class PASCALIMPLEMENTATION TfcColorCombo : public TfcCustomColorCombo 
{
	typedef TfcCustomColorCombo inherited;
	
__published:
	__property Controller ;
	__property DisableThemes ;
	__property Anchors ;
	__property BiDiMode ;
	__property Constraints ;
	__property ParentBiDiMode ;
	__property DataField ;
	__property DataSource ;
	__property InfoPower ;
	__property UnboundAlignment ;
	__property AlignmentVertical ;
	__property AllowClearKey ;
	__property AutoDropDown ;
	__property AutoSelect ;
	__property AutoSize ;
	__property ShowButton ;
	__property BorderStyle ;
	__property ButtonStyle ;
	__property ButtonEffects ;
	__property ButtonGlyph ;
	__property ButtonWidth ;
	__property CharCase ;
	__property Color ;
	__property ColorAlignment ;
	__property ColorDialog ;
	__property ColorDialogOptions ;
	__property ColorListOptions ;
	__property CustomColors ;
	__property Ctl3D ;
	__property DragMode ;
	__property DragCursor ;
	__property DropDownCount ;
	__property DropDownWidth ;
	__property Enabled ;
	__property Frame ;
	__property Font ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property ShowHint ;
	__property ShowMatchText ;
	__property SelectedColor ;
	__property Style ;
	__property TabOrder ;
	__property TabStop ;
	__property Visible ;
	__property OnAddNewColor ;
	__property OnFilterColor ;
	__property OnChange ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
	__property OnCloseUp ;
	__property OnInitColorDialog ;
	__property OnCloseColorDialog ;
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
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TfcCustomColorCombo.Create */ inline __fastcall virtual TfcColorCombo(Classes::TComponent* AOwner) : TfcCustomColorCombo(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomColorCombo.Destroy */ inline __fastcall virtual ~TfcColorCombo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcColorCombo(HWND ParentWindow) : TfcCustomColorCombo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint ColorRectMargin = 0x2;

}	/* namespace Fccolorcombo */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccolorcombo;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcColorCombo
