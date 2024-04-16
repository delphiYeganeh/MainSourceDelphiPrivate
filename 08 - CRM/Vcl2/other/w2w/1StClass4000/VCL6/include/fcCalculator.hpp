// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcCalculator.pas' rev: 5.00

#ifndef fcCalculatorHPP
#define fcCalculatorHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Dialogs.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <fcframe.hpp>	// Pascal unit
#include <fcCombo.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccalculator
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcCalcButtonType { btNone, bt0, bt1, bt2, bt3, bt4, bt5, bt6, bt7, bt8, bt9, btDecimal, btPlusMinus, btMultiply, btDivide, btAdd, btSubtract, btEquals, btSqrt, btPercent, btInverse, btBackspace, btClear, btClearAll, btMRecall, btMStore, btMClear, btMAdd };
#pragma option pop

class DELPHICLASS TfcCalculator;
typedef void __fastcall (__closure *TfcSetButtonAttributesEvent)(TfcCalculator* Calc, TfcCalcButtonType &AType, AnsiString &ACaption, Graphics::TColor &AFontColor, Graphics::TColor &AButtonColor, AnsiString &AHint);

#pragma option push -b-
enum TCalcState { csNone, csAdd, csSubtract, csMultiply, csDivide };
#pragma option pop

#pragma option push -b-
enum TfcCalcOption { cboHotTrackButtons, cboFlatButtons, cboHideBorder, cboHideEditor, cboShowStatus, cboHideMemory, cboSelectOnEquals, cboShowDecimal, cboSimpleCalc, cboFlatDrawStyle, cboRoundedButtons, cboDigitGrouping, cboCloseOnEquals };
#pragma option pop

typedef Set<TfcCalcOption, cboHotTrackButtons, cboCloseOnEquals>  TfcCalcOptions;

#pragma option push -b-
enum TfcCalcBitmapDrawStyle { cbdStretch, cbdTile, cbdTopLeft, cbdCenter };
#pragma option pop

class DELPHICLASS TfcCalcBevel;
class PASCALIMPLEMENTATION TfcCalcBevel : public Extctrls::TBevel 
{
	typedef Extctrls::TBevel inherited;
	
public:
	Graphics::TColor FColor;
	
protected:
	virtual void __fastcall Paint(void);
public:
	#pragma option push -w-inl
	/* TBevel.Create */ inline __fastcall virtual TfcCalcBevel(Classes::TComponent* AOwner) : Extctrls::TBevel(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TfcCalcBevel(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCalcLabel;
class PASCALIMPLEMENTATION TfcCalcLabel : public Stdctrls::TLabel 
{
	typedef Stdctrls::TLabel inherited;
	
private:
	TfcCalculator* FCalc;
	HIDESBASE MESSAGE void __fastcall WMRButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonUp(Messages::TWMMouse &Message);
	
public:
	__fastcall virtual TfcCalcLabel(Classes::TComponent* AOwner);
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TfcCalcLabel(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCalcStatusLabel;
class PASCALIMPLEMENTATION TfcCalcStatusLabel : public Stdctrls::TLabel 
{
	typedef Stdctrls::TLabel inherited;
	
__published:
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
public:
	#pragma option push -w-inl
	/* TCustomLabel.Create */ inline __fastcall virtual TfcCalcStatusLabel(Classes::TComponent* AOwner) : Stdctrls::TLabel(AOwner) { }
	#pragma option pop
	
public:
	#pragma option push -w-inl
	/* TGraphicControl.Destroy */ inline __fastcall virtual ~TfcCalcStatusLabel(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCalcButton;
class PASCALIMPLEMENTATION TfcCalcButton : public Buttons::TSpeedButton 
{
	typedef Buttons::TSpeedButton inherited;
	
private:
	bool FDrawKeyDown;
	TfcCalculator* FCalc;
	Graphics::TColor ButtonColor;
	Graphics::TColor ButtonFontColor;
	bool FTransparent;
	TfcCalcButtonType FBtnType;
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMRButtonUp(Messages::TWMMouse &Message);
	TfcCalcOptions __fastcall GetCalcOptions(void);
	
protected:
	virtual void __fastcall Paint(void);
	__property bool DrawKeyDown = {read=FDrawKeyDown, write=FDrawKeyDown, nodefault};
	
public:
	__property TfcCalcOptions CalcOptions = {read=GetCalcOptions, nodefault};
	__fastcall virtual TfcCalcButton(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCalcButton(void);
};


#pragma pack(push, 4)
struct TButtonRecord
{
	int Top;
	int Left;
	int Width;
	int Height;
	AnsiString Caption;
	AnsiString Hint;
	Graphics::TColor Color;
	Graphics::TColor ButtonColor;
	TfcCalcButtonType BtnType;
} ;
#pragma pack(pop)

typedef TButtonRecord fcCalculator__6[28];

class PASCALIMPLEMENTATION TfcCalculator : public Extctrls::TCustomPanel 
{
	typedef Extctrls::TCustomPanel inherited;
	
private:
	Stdctrls::TEdit* FResultEdit;
	Stdctrls::TCustomEdit* FCalcEdit;
	Stdctrls::TLabel* FStatusLabel;
	double FMemoryValue;
	double FLastValue;
	double FCurrentValue;
	double FResultValue;
	double FLastOperand;
	TfcCalcButtonType FLastOP;
	TfcCalcButtonType FNextToLastOp;
	bool FDecimalEntered;
	bool FClearOnNextKey;
	bool FLastOperatorEquals;
	AnsiString FLastStatus;
	bool FClearStatus;
	int FDecimalPlaces;
	TfcCalcButtonType FLastButtonType;
	bool F3D;
	TfcCalcBevel* FStatusBevel;
	TfcCalcBevel* FMemoryBevel;
	TfcCalcLabel* FMemoryStatus;
	Graphics::TColor FPanelColor;
	bool FBackSpaceValid;
	TfcCalcOptions FOptions;
	Graphics::TPicture* FBackgroundBitmap;
	Graphics::TBitmap* FPaintBitmap;
	TfcSetButtonAttributesEvent FOnSetButtonAttributes;
	#pragma pack(push, 1)
	Types::TRect OldBoundsRect;
	#pragma pack(pop)
	
	int FMargin;
	TfcCalcBitmapDrawStyle FBackgroundBitmapDrawStyle;
	int FCalcPrecision;
	bool InitBitmapsFlag;
	bool OpPressedWithShiftFlag;
	void __fastcall SetOptions(TfcCalcOptions Value);
	void __fastcall SetPanelColor(Graphics::TColor Value);
	void __fastcall SetMargin(int Value);
	void __fastcall SetBackgroundBitmapDrawStyle(TfcCalcBitmapDrawStyle Value);
	void __fastcall SetBackgroundBitmap(Graphics::TPicture* Value);
	void __fastcall SetBorder3D(const bool Value);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	
protected:
	TButtonRecord Btns[28];
	virtual void __fastcall CalcButtons(void);
	virtual void __fastcall Compute(System::TObject* Sender);
	HIDESBASE virtual AnsiString __fastcall GetText();
	HIDESBASE virtual void __fastcall SetText(const AnsiString Value);
	virtual Stdctrls::TCustomEdit* __fastcall GetCalcEdit(void);
	virtual void __fastcall SetCalcEdit(const Stdctrls::TCustomEdit* Value);
	virtual TButtonRecord __fastcall ButtonRecord(TfcCalcButtonType btnType, int aTop, int aLeft, int aWidth, int aHeight, AnsiString aCaption, Graphics::TColor aFontColor, AnsiString aHint);
	virtual void __fastcall Loaded(void);
	__property int CalcPrecision = {read=FCalcPrecision, write=FCalcPrecision, nodefault};
	
public:
	__fastcall virtual TfcCalculator(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCalculator(void);
	HIDESBASE virtual void __fastcall FullRepaint(void);
	virtual void __fastcall RefreshSummary(void);
	virtual void __fastcall Paint(void);
	virtual bool __fastcall IsBinaryOperator(TfcCalcButtonType ButtonType);
	virtual void __fastcall Reset(void);
	virtual char __fastcall OpToChar(TfcCalcButtonType aOp);
	TfcCalcButton* __fastcall CharToButton(char c, bool Ctrl);
	TfcCalcButton* __fastcall OpToButton(TfcCalcButtonType op);
	virtual TfcCalcButtonType __fastcall CharToOp(char c, bool Ctrl);
	virtual void __fastcall ResultKeyDown(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall ResultKeyUp(System::TObject* Sender, Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall DoCalc(TfcCalcButtonType ButtonType);
	virtual void __fastcall DoCreateButton(TfcCalculator* Calc, TfcCalcButtonType &AType, AnsiString &ACaption, Graphics::TColor &AFontColor, Graphics::TColor &AButtonColor, AnsiString &AHint);
	__property double Value = {read=FCurrentValue, write=FCurrentValue};
	__property Graphics::TBitmap* PaintBitmap = {read=FPaintBitmap, write=FPaintBitmap};
	__property Stdctrls::TEdit* ResultEdit = {read=FResultEdit, write=FResultEdit};
	__property Stdctrls::TLabel* StatusLabel = {read=FStatusLabel, write=FStatusLabel};
	__property TfcCalcLabel* MemoryStatus = {read=FMemoryStatus, write=FMemoryStatus};
	__property double MemoryValue = {read=FMemoryValue, write=FMemoryValue};
	__property Stdctrls::TCustomEdit* CalcEdit = {read=GetCalcEdit, write=SetCalcEdit};
	__property TfcCalcButtonType LastOp = {read=FLastOP, nodefault};
	__property bool LastOperatorEquals = {read=FLastOperatorEquals, nodefault};
	
__published:
	__property Align ;
	__property Graphics::TPicture* BackgroundBitmap = {read=FBackgroundBitmap, write=SetBackgroundBitmap};
	__property TfcCalcBitmapDrawStyle BackgroundBitmapDrawStyle = {read=FBackgroundBitmapDrawStyle, write=SetBackgroundBitmapDrawStyle, nodefault};
	__property bool Border3D = {read=F3D, write=SetBorder3D, default=0};
	__property int ButtonMargin = {read=FMargin, write=SetMargin, default=3};
	__property int FixedDecimalPlaces = {read=FDecimalPlaces, write=FDecimalPlaces, default=-1};
	__property Font ;
	__property TfcCalcOptions Options = {read=FOptions, write=SetOptions, default=0};
	__property Graphics::TColor PanelColor = {read=FPanelColor, write=SetPanelColor, default=-2147483633};
	__property AnsiString Text = {read=GetText, write=SetText};
	__property TfcSetButtonAttributesEvent OnSetButtonAttributes = {read=FOnSetButtonAttributes, write=FOnSetButtonAttributes};
	__property Visible ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCalculator(HWND ParentWindow) : Extctrls::TCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fccalculator */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccalculator;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcCalculator
