// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcOutlookBar.pas' rev: 5.00

#ifndef fcOutlookBarHPP
#define fcOutlookBarHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcShapeBtn.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <fcImager.hpp>	// Pascal unit
#include <fcButton.hpp>	// Pascal unit
#include <fcImgBtn.hpp>	// Pascal unit
#include <fcOutlookList.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <fcClearPanel.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <fcCollection.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <fcButtonGroup.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcoutlookbar
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcAnimation;
class PASCALIMPLEMENTATION TfcAnimation : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FEnabled;
	int FInterval;
	int FSteps;
	
public:
	__fastcall TfcAnimation(void);
	
__published:
	__property bool Enabled = {read=FEnabled, write=FEnabled, nodefault};
	__property int Interval = {read=FInterval, write=FInterval, nodefault};
	__property int Steps = {read=FSteps, write=FSteps, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcAnimation(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcOutlookPage;
class DELPHICLASS TfcCustomOutlookBar;
class PASCALIMPLEMENTATION TfcOutlookPage : public Fcbuttongroup::TfcButtonGroupItem 
{
	typedef Fcbuttongroup::TfcButtonGroupItem inherited;
	
private:
	Fcoutlooklist::TfcOutlookPanel* FPanel;
	Fcoutlooklist::TfcOutlookList* FOutlookList;
	
protected:
	virtual TfcCustomOutlookBar* __fastcall GetOutlookBar(void);
	virtual void __fastcall SetIndex(int Value);
	virtual void __fastcall Loaded(void);
	
public:
	__fastcall virtual TfcOutlookPage(Classes::TCollection* Collection);
	__fastcall virtual ~TfcOutlookPage(void);
	virtual void __fastcall CreateOutlookList(void);
	virtual void __fastcall GotSelected(void);
	__property TfcCustomOutlookBar* OutlookBar = {read=GetOutlookBar};
	__property Fcoutlooklist::TfcOutlookList* OutlookList = {read=FOutlookList};
	__property Fcoutlooklist::TfcOutlookPanel* Panel = {read=FPanel, write=FPanel};
};


class DELPHICLASS TfcOutlookPages;
class PASCALIMPLEMENTATION TfcOutlookPages : public Fcbuttongroup::TfcButtonGroupItems 
{
	typedef Fcbuttongroup::TfcButtonGroupItems inherited;
	
protected:
	virtual TfcCustomOutlookBar* __fastcall GetOutlookBar(void);
	HIDESBASE TfcOutlookPage* __fastcall GetItems(int Index);
	virtual void __fastcall AnimateSetBounds(Controls::TWinControl* Control, const Types::TRect &Rect);
	
public:
	__fastcall virtual TfcOutlookPages(Fcbuttongroup::TfcCustomButtonGroup* AButtonGroup, TMetaClass* ACollectionItemClass);
	virtual void __fastcall ArrangeControls(void);
	HIDESBASE TfcOutlookPage* __fastcall Add(void);
	virtual Fccollection::TfcCollectionItem* __fastcall AddItem(void);
	__property TfcCustomOutlookBar* OutlookBar = {read=GetOutlookBar};
	__property TfcOutlookPage* Items[int Index] = {read=GetItems/*, default*/};
public:
	#pragma option push -w-inl
	/* TfcCollection.Destroy */ inline __fastcall virtual ~TfcOutlookPages(void) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcCustomOutlookBarOption { cboAutoCreateOutlookList, cboTransparentPanels };
#pragma option pop

typedef Set<TfcCustomOutlookBarOption, cboAutoCreateOutlookList, cboTransparentPanels>  TfcCustomOutlookBarOptions;

#pragma option push -b-
enum TfcPanelAlignment { paDynamic, paTop, paBottom };
#pragma option pop

class PASCALIMPLEMENTATION TfcCustomOutlookBar : public Fcbuttongroup::TfcCustomButtonGroup 
{
	typedef Fcbuttongroup::TfcCustomButtonGroup inherited;
	
private:
	TfcAnimation* FAnimation;
	bool FAnimatingControls;
	int FAnimationLock;
	int FButtonSize;
	Fcimager::TfcCustomImager* FImager;
	TfcCustomOutlookBarOptions FOptions;
	TfcPanelAlignment FPanelAlignment;
	bool FShowButtons;
	Fcchangelink::TfcChangeLink* FChangeLink;
	Fcbutton::TfcCustomBitBtn* __fastcall GetActivePage(void);
	TfcOutlookPages* __fastcall GetItems(void);
	void __fastcall SetActivePage(Fcbutton::TfcCustomBitBtn* Value);
	void __fastcall SetAnimatingControls(bool Value);
	void __fastcall SetButtonSize(int Value);
	void __fastcall SetImager(Fcimager::TfcCustomImager* Value);
	HIDESBASE void __fastcall SetItems(TfcOutlookPages* Value);
	virtual void __fastcall SetOptions(TfcCustomOutlookBarOptions Value);
	virtual void __fastcall SetPanelAlignment(TfcPanelAlignment Value);
	void __fastcall SetShowButtons(bool Value);
	HIDESBASE MESSAGE void __fastcall CMControlListChange(Controls::TCMControlListChange &Message);
	HIDESBASE MESSAGE void __fastcall CMControlChange(Controls::TCMControlChange &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	
protected:
	virtual TMetaClass* __fastcall GetCollectionClass(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual tagSIZE __fastcall ResizeToControl(Controls::TControl* Control, bool DoResize);
	virtual void __fastcall ButtonPressed(System::TObject* Sender);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall GetChildren(Classes::TGetChildProc Proc, Classes::TComponent* Root);
	void __fastcall ImagerChange(System::TObject* Sender);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation AOperation);
	virtual void __fastcall Paint(void);
	virtual void __fastcall SetName(const AnsiString NewName);
	virtual bool __fastcall IsNonRectangularButton(Controls::TControl* Control);
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomOutlookBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomOutlookBar(void);
	virtual bool __fastcall InAnimation(void);
	void __fastcall EnableAnimation(void);
	void __fastcall DisableAnimation(void);
	__property Fcbutton::TfcCustomBitBtn* ActivePage = {read=GetActivePage, write=SetActivePage};
	__property TfcAnimation* Animation = {read=FAnimation, write=FAnimation};
	__property bool AnimatingControls = {read=FAnimatingControls, write=SetAnimatingControls, nodefault};
	__property int ButtonSize = {read=FButtonSize, write=SetButtonSize, nodefault};
	__property Canvas ;
	__property Color ;
	__property Fcimager::TfcCustomImager* Imager = {read=FImager, write=SetImager};
	__property TfcOutlookPages* OutlookItems = {read=GetItems, write=SetItems, stored=false};
	__property TfcCustomOutlookBarOptions Options = {read=FOptions, write=SetOptions, nodefault};
	__property TfcPanelAlignment PanelAlignment = {read=FPanelAlignment, write=SetPanelAlignment, nodefault};
	__property bool ShowButtons = {read=FShowButtons, write=SetShowButtons, nodefault};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomOutlookBar(HWND ParentWindow) : Fcbuttongroup::TfcCustomButtonGroup(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcOutlookBar;
class PASCALIMPLEMENTATION TfcOutlookBar : public TfcCustomOutlookBar 
{
	typedef TfcCustomOutlookBar inherited;
	
__published:
	__property Anchors ;
	__property Constraints ;
	__property ActivePage ;
	__property Align ;
	__property Animation ;
	__property AutoBold ;
	__property BevelInner ;
	__property BevelOuter ;
	__property BorderStyle ;
	__property ButtonSize ;
	__property ButtonClassName ;
	__property Color ;
	__property Font ;
	__property ParentFont ;
	__property Imager ;
	__property OutlookItems ;
	__property Layout ;
	__property Options ;
	__property PanelAlignment ;
	__property ShowButtons ;
	__property ShowDownAsUp ;
	__property TabOrder ;
	__property TabStop ;
	__property Visible ;
	__property OnChange ;
	__property OnChanging ;
	__property OnEnter ;
	__property OnExit ;
	__property OnResize ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
public:
	#pragma option push -w-inl
	/* TfcCustomOutlookBar.Create */ inline __fastcall virtual TfcOutlookBar(Classes::TComponent* AOwner) : TfcCustomOutlookBar(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomOutlookBar.Destroy */ inline __fastcall virtual ~TfcOutlookBar(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcOutlookBar(HWND ParentWindow) : TfcCustomOutlookBar(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcoutlookbar */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcoutlookbar;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcOutlookBar
