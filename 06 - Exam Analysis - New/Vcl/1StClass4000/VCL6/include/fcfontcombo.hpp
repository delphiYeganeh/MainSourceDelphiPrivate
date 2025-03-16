// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcFontCombo.pas' rev: 5.00

#ifndef fcFontComboHPP
#define fcFontComboHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <fcframe.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <fcToolTip.hpp>	// Pascal unit
#include <fcTreeView.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <Printers.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <fctreecombo.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <fcCombo.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcfontcombo
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcComboFontType { ftFontPrinter, ftFontTrueType, ftFontOther, ftFontRaster };
#pragma option pop

class DELPHICLASS TfcCustomFontCombo;
typedef void __fastcall (__closure *TfcAddFontEvent)(TfcCustomFontCombo* FontCombo, AnsiString FontName, TfcComboFontType FontType, const tagENUMLOGFONTA &EnumLogFont, const tagNEWTEXTMETRICA &NewTextMetric, bool &Accept);

typedef void __fastcall (__closure *TfcFontHintEvent)(TfcCustomFontCombo* FontCombo, AnsiString FontName, AnsiString &Hint, const Graphics::TFont* Font);

class DELPHICLASS TfcFontPopupNode;
class PASCALIMPLEMENTATION TfcFontPopupNode : public Fctreecombo::TfcTreeComboTreeNode 
{
	typedef Fctreecombo::TfcTreeComboTreeNode inherited;
	
private:
	bool FRecentFont;
	
public:
	__property bool RecentFont = {read=FRecentFont, write=FRecentFont, nodefault};
public:
	#pragma option push -w-inl
	/* TfcTreeComboTreeNode.Create */ inline __fastcall virtual TfcFontPopupNode(Fctreeview::TfcTreeNodes* AOwner) : Fctreecombo::TfcTreeComboTreeNode(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TfcTreeNode.Destroy */ inline __fastcall virtual ~TfcFontPopupNode(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcFontPopupTreeView;
class PASCALIMPLEMENTATION TfcFontPopupTreeView : public Fctreecombo::TfcPopupTreeView 
{
	typedef Fctreecombo::TfcPopupTreeView inherited;
	
protected:
	virtual void __fastcall EndItemPainting(Fctreeview::TfcTreeNode* Node, const Types::TRect &ARect, Fctreeview::TfcItemStates AItemState);
	
public:
	__fastcall virtual TfcFontPopupTreeView(Classes::TComponent* Owner);
public:
	#pragma option push -w-inl
	/* TfcCustomTreeView.Destroy */ inline __fastcall virtual ~TfcFontPopupTreeView(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcFontPopupTreeView(HWND ParentWindow) : Fctreecombo::TfcPopupTreeView(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcFontType { fcScreenFonts, fcPrinterFonts, fcRasterFonts };
#pragma option pop

class PASCALIMPLEMENTATION TfcCustomFontCombo : public Fctreecombo::TfcCustomTreeCombo 
{
	typedef Fctreecombo::TfcCustomTreeCombo inherited;
	
private:
	TMetaClass*FOldHintClass;
	AnsiString FOldSelectedText;
	bool FCheckMRUChange;
	bool FImmediateHints;
	int FMaxMRU;
	int FOldHintPause;
	bool FPreLoad;
	Classes::TStringList* FRecentFonts;
	bool FShowFontHint;
	TfcAddFontEvent FOnAddFont;
	TfcFontHintEvent FOnGenerateFontHint;
	TfcFontType FFontSelections;
	AnsiString __fastcall GetSelectedFont();
	void __fastcall SetMaxMRU(int Value);
	void __fastcall SetRecentFonts(Classes::TStringList* Value);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	void __fastcall ChangeHint(TMetaClass* HintClass);
	
protected:
	virtual int __fastcall FontCallBack(const tagENUMLOGFONTA &EnumLogFont, const tagNEWTEXTMETRICA &NewTextMetric, int FontType);
	virtual void __fastcall GenerateFontHint(AnsiString FontName, AnsiString &AHint, Graphics::TFont* AHintFont);
	virtual void __fastcall MaintainMaxMRU(void);
	virtual void __fastcall MRUChange(AnsiString FontName);
	virtual void __fastcall RecentFontsChanging(System::TObject* Sender);
	virtual void __fastcall RecentFontsChange(System::TObject* Sender);
	virtual void __fastcall TreeViewMouseMove(Fctreeview::TfcCustomTreeView* TreeView, Fctreeview::TfcTreeNode* Node, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall TreeViewChange(Fctreeview::TfcCustomTreeView* Sender, Fctreeview::TfcTreeNode* Node);
	virtual Fctreecombo::TfcPopupTreeView* __fastcall CreatePopupTreeView(void);
	virtual Fctreeview::TfcTreeNode* __fastcall GetStartingNode(void);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall DoAddFont(AnsiString AFontText, TfcComboFontType AFontType, const tagENUMLOGFONTA &EnumLogFont, const tagNEWTEXTMETRICA &NewTextMetric, bool &Accept);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomFontCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomFontCombo(void);
	virtual void __fastcall CloseUp(bool Accept);
	virtual void __fastcall DropDown(void);
	virtual void __fastcall Reload(bool RecentFontsOnly);
	__property bool ImmediateHints = {read=FImmediateHints, write=FImmediateHints, nodefault};
	__property int MaxMRU = {read=FMaxMRU, write=SetMaxMRU, nodefault};
	__property bool PreLoad = {read=FPreLoad, write=FPreLoad, nodefault};
	__property Classes::TStringList* RecentFonts = {read=FRecentFonts, write=SetRecentFonts};
	__property bool ShowFontHint = {read=FShowFontHint, write=FShowFontHint, nodefault};
	__property AnsiString SelectedFont = {read=GetSelectedFont};
	__property TfcFontType FontSelections = {read=FFontSelections, write=FFontSelections, default=0};
	__property TfcAddFontEvent OnAddFont = {read=FOnAddFont, write=FOnAddFont};
	__property TfcFontHintEvent OnGenerateFontHint = {read=FOnGenerateFontHint, write=FOnGenerateFontHint};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomFontCombo(HWND ParentWindow) : Fctreecombo::TfcCustomTreeCombo(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcFontCombo;
class PASCALIMPLEMENTATION TfcFontCombo : public TfcCustomFontCombo 
{
	typedef TfcCustomFontCombo inherited;
	
__published:
	__property Controller ;
	__property DisableThemes ;
	__property Anchors ;
	__property BiDiMode ;
	__property Constraints ;
	__property ParentBiDiMode ;
	__property AllowClearKey ;
	__property AutoSelect ;
	__property AutoSize ;
	__property BorderStyle ;
	__property ButtonStyle ;
	__property ButtonEffects ;
	__property ButtonGlyph ;
	__property ButtonWidth ;
	__property CharCase ;
	__property DropDownCount ;
	__property DropDownWidth ;
	__property Enabled ;
	__property Frame ;
	__property Font ;
	__property ImmediateHints ;
	__property MaxMRU ;
	__property PreLoad ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property RecentFonts ;
	__property ShowFontHint ;
	__property ShowHint ;
	__property ShowMatchText ;
	__property Sorted ;
	__property Style ;
	__property TabOrder ;
	__property TreeOptions ;
	__property Visible ;
	__property FontSelections ;
	__property OnAddFont ;
	__property OnCloseUp ;
	__property OnChange ;
	__property OnContextPopup ;
	__property OnDropDown ;
	__property OnEnter ;
	__property OnExit ;
	__property OnGenerateFontHint ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnSelectionChange ;
public:
	#pragma option push -w-inl
	/* TfcCustomFontCombo.Create */ inline __fastcall virtual TfcFontCombo(Classes::TComponent* AOwner) : TfcCustomFontCombo(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomFontCombo.Destroy */ inline __fastcall virtual ~TfcFontCombo(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcFontCombo(HWND ParentWindow) : TfcCustomFontCombo(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcfontcombo */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcfontcombo;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcFontCombo
