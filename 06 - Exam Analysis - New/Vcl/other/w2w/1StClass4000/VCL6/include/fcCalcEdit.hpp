// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcCalcEdit.pas' rev: 5.00

#ifndef fcCalcEditHPP
#define fcCalcEditHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <fcframe.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <fcCalculator.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fcCombo.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccalcedit
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcPopupCalcOptions;
class PASCALIMPLEMENTATION TfcPopupCalcOptions : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Graphics::TPicture* FBackground;
	Fccalculator::TfcCalcBitmapDrawStyle FBackGroundStyle;
	int FMargin;
	Fccalculator::TfcCalcOptions FOptions;
	Graphics::TColor FPanelColor;
	void __fastcall SetBackgroundStyle(Fccalculator::TfcCalcBitmapDrawStyle Value);
	void __fastcall SetOptions(Fccalculator::TfcCalcOptions Value);
	void __fastcall SetMargin(int Value);
	void __fastcall SetPanelColor(Graphics::TColor Value);
	
public:
	__fastcall TfcPopupCalcOptions(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcPopupCalcOptions(void);
	
protected:
	virtual void __fastcall SetBackgroundBitmap(Graphics::TPicture* Value);
	
__published:
	__property Graphics::TPicture* Background = {read=FBackground, write=SetBackgroundBitmap};
	__property Fccalculator::TfcCalcBitmapDrawStyle BackgroundStyle = {read=FBackGroundStyle, write=SetBackgroundStyle, nodefault};
	__property int ButtonMargin = {read=FMargin, write=SetMargin, default=3};
	__property Fccalculator::TfcCalcOptions Options = {read=FOptions, write=SetOptions, default=8};
	__property Graphics::TColor PanelColor = {read=FPanelColor, write=SetPanelColor, default=-2147483633};
};


class DELPHICLASS TfcCalcPanel;
class DELPHICLASS TfcCustomCalcEdit;
typedef void __fastcall (__closure *TfcCalcAttributesEvent)(TfcCustomCalcEdit* Sender, Fccalculator::TfcCalcButtonType &AType, AnsiString &ACaption, Graphics::TColor &AFontColor, Graphics::TColor &AButtonColor, AnsiString &AHint);

class PASCALIMPLEMENTATION TfcCustomCalcEdit : public Fccombo::TfcCustomCombo 
{
	typedef Fccombo::TfcCustomCombo inherited;
	
private:
	Classes::TAlignment FAlignment;
	AnsiString FDisplayFormat;
	int FDecimalPlacesStored;
	TfcCalcPanel* FDropDownCalc;
	bool FClearOnNextKey;
	bool FAllowNull;
	TfcPopupCalcOptions* FCalcOptions;
	TfcCalcAttributesEvent FOnCalcButtonAttributes;
	Classes::TNotifyEvent FOnBeforeDropDown;
	bool FSkipTextChangedFlag;
	bool FDecimalEntered;
	HIDESBASE MESSAGE void __fastcall CMCancelMode(Controls::TCMCancelMode &Message);
	HIDESBASE MESSAGE void __fastcall WMCut(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMPaste(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	
protected:
	virtual double __fastcall GetValue(void);
	virtual void __fastcall SetValue(double Value);
	virtual void __fastcall Paint(void);
	virtual Types::TRect __fastcall GetEditRect();
	virtual bool __fastcall IsValidOperator(char Key);
	virtual bool __fastcall IsUnaryOperator(char Key);
	virtual bool __fastcall IsBinaryOperator(char Key);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall DoEnter(void);
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall DoBeforeDropDown(void);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual bool __fastcall SkipInheritedPaint(void);
	virtual Classes::TAlignment __fastcall GetAlignment(void);
	virtual Controls::TWinControl* __fastcall GetDropDownControl(void);
	virtual Controls::TWinControl* __fastcall GetDropDownContainer(void);
	virtual int __fastcall GetItemCount(void);
	virtual tagSIZE __fastcall GetItemSize();
	virtual void __fastcall PaintToCanvas(Graphics::TCanvas* Canvas, const Types::TRect &Rect, bool Highlight, bool GridPaint, AnsiString aText);
	__property bool DecimalEntered = {read=FDecimalEntered, write=FDecimalEntered, nodefault};
	__property bool SkipTextChangedFlag = {read=FSkipTextChangedFlag, write=FSkipTextChangedFlag, nodefault};
	
public:
	__property TfcCalcPanel* Panel = {read=FDropDownCalc, write=FDropDownCalc};
	__fastcall virtual TfcCustomCalcEdit(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomCalcEdit(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall CloseUp(bool Accept);
	virtual void __fastcall DropDown(void);
	virtual bool __fastcall IsDroppedDown(void);
	virtual void __fastcall DoCalcButtonAttributes(Fccalculator::TfcCalculator* Calc, Fccalculator::TfcCalcButtonType &AType, AnsiString &ACaption, Graphics::TColor &AFontColor, Graphics::TColor &AButtonColor, AnsiString &AHint);
	virtual AnsiString __fastcall GetDisplayText(AnsiString AText);
	virtual void __fastcall ResetCalculator(void);
	__property Classes::TAlignment Alignment = {read=GetAlignment, write=FAlignment, default=1};
	__property AnsiString DisplayFormat = {read=FDisplayFormat, write=FDisplayFormat};
	__property int DecimalPlacesStored = {read=FDecimalPlacesStored, write=FDecimalPlacesStored, nodefault};
	__property double Value = {read=GetValue, write=SetValue};
	__property TfcPopupCalcOptions* CalcOptions = {read=FCalcOptions, write=FCalcOptions};
	__property bool AllowNull = {read=FAllowNull, write=FAllowNull, default=0};
	__property TfcCalcAttributesEvent OnSetCalcButtonAttributes = {read=FOnCalcButtonAttributes, write=FOnCalcButtonAttributes};
	__property Classes::TNotifyEvent OnBeforeDropDown = {read=FOnBeforeDropDown, write=FOnBeforeDropDown};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomCalcEdit(HWND ParentWindow) : Fccombo::TfcCustomCombo(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcCalcPanel : public Fccalculator::TfcCalculator 
{
	typedef Fccalculator::TfcCalculator inherited;
	
private:
	TfcCustomCalcEdit* FAssociatedEdit;
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall Keypress(char &Key);
	
public:
	virtual void __fastcall DoCalc(Fccalculator::TfcCalcButtonType ButtonType);
	__fastcall virtual TfcCalcPanel(Classes::TComponent* AOwner);
	__property TfcCustomCalcEdit* AssociatedEdit = {read=FAssociatedEdit, write=FAssociatedEdit};
public:
	#pragma option push -w-inl
	/* TfcCalculator.Destroy */ inline __fastcall virtual ~TfcCalcPanel(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCalcPanel(HWND ParentWindow) : Fccalculator::TfcCalculator(ParentWindow) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCalcEdit;
class PASCALIMPLEMENTATION TfcCalcEdit : public TfcCustomCalcEdit 
{
	typedef TfcCustomCalcEdit inherited;
	
__published:
	__property DisableThemes ;
	__property CalcOptions ;
	__property AutoSelect ;
	__property AutoSize ;
	__property BorderStyle ;
	__property ButtonEffects ;
	__property ButtonGlyph ;
	__property ButtonStyle ;
	__property ButtonWidth ;
	__property Color ;
	__property Ctl3D ;
	__property DataField ;
	__property DataSource ;
	__property DisplayFormat ;
	__property DragCursor ;
	__property DragMode ;
	__property Enabled ;
	__property Font ;
	__property Frame ;
	__property ImeMode ;
	__property ImeName ;
	__property InfoPower ;
	__property MaxLength ;
	__property ParentColor ;
	__property ParentCtl3D ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property ReadOnly ;
	__property OnSetCalcButtonAttributes ;
	__property ShowButton ;
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property Text ;
	__property Visible ;
	__property OnBeforeDropDown ;
	__property OnChange ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnDropDown ;
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
	/* TfcCustomCalcEdit.Create */ inline __fastcall virtual TfcCalcEdit(Classes::TComponent* AOwner) : TfcCustomCalcEdit(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomCalcEdit.Destroy */ inline __fastcall virtual ~TfcCalcEdit(void) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCalcEdit(HWND ParentWindow) : TfcCustomCalcEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fccalcedit */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccalcedit;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcCalcEdit
