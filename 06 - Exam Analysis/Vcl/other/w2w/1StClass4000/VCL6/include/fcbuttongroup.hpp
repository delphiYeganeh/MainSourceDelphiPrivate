// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcButtonGroup.pas' rev: 5.00

#ifndef fcButtonGroupHPP
#define fcButtonGroupHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <fcCollection.hpp>	// Pascal unit
#include <fcImgBtn.hpp>	// Pascal unit
#include <fcShapeBtn.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fcClearPanel.hpp>	// Pascal unit
#include <fcButton.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <TypInfo.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcbuttongroup
{
//-- type declarations -------------------------------------------------------
typedef TMetaClass*TfcButtonGroupItemClass;

typedef TMetaClass*TfcButtonGroupItemsClass;

class DELPHICLASS TfcButtonGroupItem;
class DELPHICLASS TfcCustomButtonGroup;
class PASCALIMPLEMENTATION TfcButtonGroupItem : public Fccollection::TfcCollectionItem 
{
	typedef Fccollection::TfcCollectionItem inherited;
	
private:
	Fcbutton::TfcCustomBitBtn* FButton;
	virtual TfcCustomButtonGroup* __fastcall GetButtonGroup(void);
	virtual int __fastcall GetGroupIndex(void);
	virtual bool __fastcall GetSelected(void);
	virtual void __fastcall SetGroupIndex(int Value);
	virtual void __fastcall SetSelected(bool Value);
	
protected:
	virtual AnsiString __fastcall GetDisplayName();
	virtual void __fastcall Loaded(void);
	virtual void __fastcall SetIndex(int Value);
	
public:
	__fastcall virtual TfcButtonGroupItem(Classes::TCollection* Collection);
	__fastcall virtual ~TfcButtonGroupItem(void);
	virtual Classes::TPersistent* __fastcall GetInstance(const AnsiString PropertyName);
	__property Fcbutton::TfcCustomBitBtn* Button = {read=FButton};
	__property TfcCustomButtonGroup* ButtonGroup = {read=GetButtonGroup};
	__property int GroupIndex = {read=GetGroupIndex, write=SetGroupIndex, nodefault};
	__property bool Selected = {read=GetSelected, write=SetSelected, nodefault};
};


class DELPHICLASS TfcButtonGroupItems;
class PASCALIMPLEMENTATION TfcButtonGroupItems : public Fccollection::TfcCollection 
{
	typedef Fccollection::TfcCollection inherited;
	
private:
	TfcCustomButtonGroup* FButtonGroup;
	
protected:
	DYNAMIC Classes::TPersistent* __fastcall GetOwner(void);
	virtual void __fastcall Update(Classes::TCollectionItem* Item);
	virtual TfcCustomButtonGroup* __fastcall GetButtonGroup(void);
	HIDESBASE TfcButtonGroupItem* __fastcall GetItems(int Index);
	int __fastcall GetVisibleCount(void);
	TfcButtonGroupItem* __fastcall GetVisibleItems(int Index);
	
public:
	bool ArrangingControls;
	bool AddingControls;
	bool DeletingControl;
	__fastcall virtual TfcButtonGroupItems(TfcCustomButtonGroup* AButtonGroup, TMetaClass* ACollectionItemClass);
	HIDESBASE TfcButtonGroupItem* __fastcall Add(void);
	virtual Fccollection::TfcCollectionItem* __fastcall AddItem(void);
	virtual void __fastcall ArrangeControls(void);
	virtual TfcButtonGroupItem* __fastcall FindButton(Fcbutton::TfcCustomBitBtn* AButton);
	virtual TfcButtonGroupItem* __fastcall FindPointerTag(void * APointerTag);
	HIDESBASE virtual void __fastcall Clear(void);
	__property TfcCustomButtonGroup* ButtonGroup = {read=GetButtonGroup};
	__property TfcButtonGroupItem* Items[int Index] = {read=GetItems/*, default*/};
	__property int VisibleCount = {read=GetVisibleCount, nodefault};
	__property TfcButtonGroupItem* VisibleItems[int Index] = {read=GetVisibleItems};
public:
	#pragma option push -w-inl
	/* TfcCollection.Destroy */ inline __fastcall virtual ~TfcButtonGroupItems(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcButtonGroupChangeEvent)(TfcCustomButtonGroup* ButtonGroup, TfcButtonGroupItem* OldSelected, TfcButtonGroupItem* Selected);

#pragma option push -b-
enum TfcButtonGroupClickStyle { bcsCheckList, bcsRadioGroup, bcsClick };
#pragma option pop

class PASCALIMPLEMENTATION TfcCustomButtonGroup : public Fcclearpanel::TfcCustomTransparentPanel 
{
	typedef Fcclearpanel::TfcCustomTransparentPanel inherited;
	
private:
	bool FAutoBold;
	TfcButtonGroupClickStyle FClickStyle;
	int FControlSpacing;
	int FColumns;
	Fccommon::TfcLayout FLayout;
	int FMaxControlSize;
	TfcButtonGroupItem* FOldSelected;
	TfcButtonGroupChangeEvent FOnChange;
	TfcButtonGroupChangeEvent FOnChanging;
	TMetaClass*FButtonClass;
	#pragma pack(push, 1)
	Types::TRect FLastButtonRect;
	#pragma pack(pop)
	
	Fcchangelink::TfcChangeLink* FChangeLink;
	bool FShowDownAsUp;
	bool FDisableThemes;
	Fcbutton::TfcCustomBitBtn* __fastcall GetButton(AnsiString Name);
	virtual TfcButtonGroupItem* __fastcall GetSelected(void);
	void __fastcall SetAutoBold(bool Value);
	void __fastcall SetClickStyle(TfcButtonGroupClickStyle Value);
	void __fastcall SetControlSpacing(int Value);
	void __fastcall SetColumns(int Value);
	void __fastcall SetItems(TfcButtonGroupItems* Value);
	void __fastcall SetLastButtonRect(const Types::TRect &Value);
	void __fastcall SetLayout(Fccommon::TfcLayout Value);
	void __fastcall SetSelected(TfcButtonGroupItem* Value);
	HIDESBASE MESSAGE void __fastcall CMBorderChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMControlChange(Controls::TCMControlChange &Message);
	HIDESBASE MESSAGE void __fastcall CMControlListChange(Controls::TCMControlListChange &Message);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	void __fastcall SetShowDownAsUp(bool Value);
	
protected:
	bool SuspendNotification;
	TfcButtonGroupItems* FItems;
	virtual TMetaClass* __fastcall GetCollectionClass(void);
	virtual tagSIZE __fastcall ResizeToControl(Controls::TControl* Control, bool DoResize);
	virtual void __fastcall ButtonPressed(System::TObject* Sender);
	virtual void __fastcall ButtonPressing(System::TObject* Sender);
	virtual void __fastcall MouseMoveInLoop(System::TObject* Sender);
	virtual void __fastcall DoChanging(TfcButtonGroupItem* OldSelected, TfcButtonGroupItem* Selected);
	virtual void __fastcall DoChange(TfcButtonGroupItem* OldSelected, TfcButtonGroupItem* Selected);
	DYNAMIC Classes::TComponent* __fastcall GetChildOwner(void);
	virtual void __fastcall AlignControls(Controls::TControl* AControl, Types::TRect &Rect);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	DYNAMIC void __fastcall Resize(void);
	virtual void __fastcall WriteState(Classes::TWriter* Writer);
	virtual void __fastcall SetName(const AnsiString NewName);
	virtual AnsiString __fastcall GetButtonClassName();
	virtual void __fastcall SetButtonClass(TMetaClass* Value);
	virtual void __fastcall SetButtonClassName(AnsiString Value);
	virtual void __fastcall SetMaxControlSize(int Value);
	virtual void __fastcall UpdateBold(bool AAutoBold);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual bool __fastcall IsTransparent(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property TMetaClass* ButtonClass = {read=FButtonClass, write=SetButtonClass};
	__property TfcButtonGroupItem* OldSelected = {read=FOldSelected};
	
public:
	Variant ButtonGroupPatch;
	__fastcall virtual TfcCustomButtonGroup(Classes::TComponent* Owner);
	__fastcall virtual ~TfcCustomButtonGroup(void);
	__property bool AutoBold = {read=FAutoBold, write=SetAutoBold, nodefault};
	__property Fcbutton::TfcCustomBitBtn* Buttons[AnsiString Name] = {read=GetButton};
	__property TfcButtonGroupClickStyle ClickStyle = {read=FClickStyle, write=SetClickStyle, nodefault};
	__property int ControlSpacing = {read=FControlSpacing, write=SetControlSpacing, nodefault};
	__property int Columns = {read=FColumns, write=SetColumns, nodefault};
	__property TfcButtonGroupItems* ButtonItems = {read=FItems, write=SetItems, stored=false};
	__property Fccommon::TfcLayout Layout = {read=FLayout, write=SetLayout, nodefault};
	__property int MaxControlSize = {read=FMaxControlSize, write=SetMaxControlSize, nodefault};
	__property bool ShowDownAsUp = {read=FShowDownAsUp, write=SetShowDownAsUp, default=0};
	__property TfcButtonGroupItem* Selected = {read=GetSelected, write=SetSelected};
	__property TfcButtonGroupChangeEvent OnChange = {read=FOnChange, write=FOnChange};
	__property TfcButtonGroupChangeEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property AnsiString ButtonClassName = {read=GetButtonClassName, write=SetButtonClassName};
	__property Types::TRect LastButtonRect = {write=SetLastButtonRect};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomButtonGroup(HWND ParentWindow) : Fcclearpanel::TfcCustomTransparentPanel(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcButtonGroup;
class PASCALIMPLEMENTATION TfcButtonGroup : public TfcCustomButtonGroup 
{
	typedef TfcCustomButtonGroup inherited;
	
__published:
	__property DisableThemes ;
	__property Anchors ;
	__property Constraints ;
	__property Align ;
	__property AutoBold ;
	__property BevelInner ;
	__property BevelOuter ;
	__property BorderStyle ;
	__property BorderWidth ;
	__property ButtonClassName ;
	__property ClickStyle ;
	__property ControlSpacing ;
	__property Columns ;
	__property Color ;
	__property Font ;
	__property ParentFont ;
	__property ButtonItems ;
	__property Layout ;
	__property MaxControlSize ;
	__property PopupMenu ;
	__property ShowDownAsUp ;
	__property TabOrder ;
	__property TabStop ;
	__property Transparent ;
	__property Visible ;
	__property OnChange ;
	__property OnChanging ;
	__property OnClick ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnKeyPress ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnResize ;
public:
	#pragma option push -w-inl
	/* TfcCustomButtonGroup.Create */ inline __fastcall virtual TfcButtonGroup(Classes::TComponent* Owner) : TfcCustomButtonGroup(Owner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomButtonGroup.Destroy */ inline __fastcall virtual ~TfcButtonGroup(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcButtonGroup(HWND ParentWindow) : TfcCustomButtonGroup(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcbuttongroup */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcbuttongroup;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcButtonGroup
