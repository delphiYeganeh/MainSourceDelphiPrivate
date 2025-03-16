// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcButton.pas' rev: 5.00

#ifndef fcButtonHPP
#define fcButtonHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fctext.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <ActnList.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <TypInfo.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <fcBitmap.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcbutton
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcShadeStyle { fbsNormal, fbsRaised, fbsHighlight, fbsFlat };
#pragma option pop

#pragma option push -b-
enum TfcButtonOption { boFocusable, boOverrideActionGlyph, boToggleOnUp, boFocusRect, boAutoBold };
#pragma option pop

typedef Set<TfcButtonOption, boFocusable, boAutoBold>  TfcButtonOptions;

typedef TMetaClass*TfcCustomBitBtnClass;

#pragma pack(push, 4)
struct TfcRegionData
{
	int dwSize;
	_RGNDATA *rgnData;
} ;
#pragma pack(pop)

typedef TfcRegionData *PfcRegionData;

class DELPHICLASS TfcOffsets;
class DELPHICLASS TfcCustomBitBtn;
class PASCALIMPLEMENTATION TfcOffsets : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Controls::TWinControl* FControl;
	int FGlyphX;
	int FGlyphY;
	int FTextX;
	int FTextY;
	int FTextDownX;
	int FTextDownY;
	void __fastcall SetGlyphX(int Value);
	void __fastcall SetGlyphY(int Value);
	void __fastcall SetTextX(int Value);
	void __fastcall SetTextY(int Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	__property Controls::TWinControl* Control = {read=FControl};
	
public:
	__fastcall TfcOffsets(TfcCustomBitBtn* Button);
	
__published:
	__property int GlyphX = {read=FGlyphX, write=SetGlyphX, default=0};
	__property int GlyphY = {read=FGlyphY, write=SetGlyphY, default=0};
	__property int TextX = {read=FTextX, write=SetTextX, default=0};
	__property int TextY = {read=FTextY, write=SetTextY, default=0};
	__property int TextDownX = {read=FTextDownX, write=FTextDownX, default=1};
	__property int TextDownY = {read=FTextDownY, write=FTextDownY, default=1};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcOffsets(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcShadeColors;
class PASCALIMPLEMENTATION TfcShadeColors : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcCustomBitBtn* FButton;
	Graphics::TColor FBtnHighlight;
	Graphics::TColor FBtn3dLight;
	Graphics::TColor FBtnShadow;
	Graphics::TColor FBtnBlack;
	Graphics::TColor FBtnFocus;
	Graphics::TColor FShadow;
	void __fastcall SetBtn3DLight(Graphics::TColor Value);
	void __fastcall SetBtnBlack(Graphics::TColor Value);
	void __fastcall SetBtnHighlight(Graphics::TColor Value);
	void __fastcall SetBtnShadow(Graphics::TColor Value);
	void __fastcall SetBtnFocus(Graphics::TColor Value);
	void __fastcall SetShadow(Graphics::TColor Value);
	
protected:
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	
public:
	__fastcall TfcShadeColors(TfcCustomBitBtn* Button);
	
__published:
	__property Graphics::TColor Btn3DLight = {read=FBtn3dLight, write=SetBtn3DLight, default=-2147483626};
	__property Graphics::TColor BtnHighlight = {read=FBtnHighlight, write=SetBtnHighlight, default=-2147483628};
	__property Graphics::TColor BtnShadow = {read=FBtnShadow, write=SetBtnShadow, default=-2147483632};
	__property Graphics::TColor BtnBlack = {read=FBtnBlack, write=SetBtnBlack, default=0};
	__property Graphics::TColor BtnFocus = {read=FBtnFocus, write=SetBtnFocus, default=0};
	__property Graphics::TColor Shadow = {read=FShadow, write=SetShadow, default=0};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcShadeColors(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcCustomBitBtn : public Controls::TWinControl 
{
	typedef Controls::TWinControl inherited;
	
private:
	bool FActive;
	bool FAllowAllUp;
	bool FCancel;
	bool FDefault;
	bool FDown;
	Graphics::TBitmap* FGlyph;
	int FGroupIndex;
	bool FInMouseSendForMouseActivate;
	Buttons::TBitBtnKind FKind;
	Buttons::TButtonLayout FLayout;
	int FMargin;
	Controls::TModalResult FModalResult;
	Buttons::TNumGlyphs FNumGlyphs;
	HRGN FRegion;
	HRGN FLastRegion;
	TfcShadeColors* FShadeColors;
	TfcShadeStyle FShadeStyle;
	bool FShowFocusRect;
	int FSpacing;
	Buttons::TButtonStyle FStyle;
	Fctext::TfcCaptionText* FTextOptions;
	bool FSmoothFont;
	#pragma pack(push, 1)
	Types::TRect FGlyphRect;
	#pragma pack(pop)
	
	#pragma pack(push, 1)
	Types::TRect FTextRect;
	#pragma pack(pop)
	
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	Classes::TNotifyEvent FOnSelChange;
	Classes::TNotifyEvent FOnSetName;
	Graphics::TCanvas* FCanvas;
	TfcOffsets* FOffsets;
	bool FModifiedGlyph;
	TfcButtonOptions FOptions;
	Classes::TList* FChangeLinks;
	Fcchangelink::TfcChangeLink* FChangeLink;
	bool FClicked;
	bool FInitialDown;
	Classes::TStringList* FEvents;
	bool FUseHalftonePalette;
	bool FShowDownAsUp;
	bool FHot;
	Dbctrls::TFieldDataLink* FDataLink;
	bool FDisableThemes;
	bool FStaticCaption;
	Buttons::TBitBtnKind __fastcall GetKind(void);
	void __fastcall SetAllowAllUp(bool Value);
	void __fastcall SetButtonDown(bool Value, bool CheckAllowAllUp, bool DoUpdateExclusive, bool DoInvalidate);
	void __fastcall SetDefault(bool Value);
	void __fastcall SetDown(bool Value);
	void __fastcall SetGlyph(Graphics::TBitmap* Value);
	void __fastcall SetGroupIndex(int Value);
	void __fastcall SetKind(Buttons::TBitBtnKind Value);
	void __fastcall SetLayout(Buttons::TButtonLayout Value);
	void __fastcall SetMargin(int Value);
	void __fastcall SetNumGlyphs(Buttons::TNumGlyphs Value);
	void __fastcall SetOptions(TfcButtonOptions Value);
	void __fastcall SetSpacing(int Value);
	void __fastcall SetShadeStyle(TfcShadeStyle Value);
	void __fastcall SetStyle(Buttons::TButtonStyle Value);
	HIDESBASE MESSAGE void __fastcall WMCancelMode(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMDialogKey(Messages::TWMKey &Message);
	MESSAGE void __fastcall CMButtonPressed(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMFocusChanged(Controls::TCMFocusChanged &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	MESSAGE void __fastcall CNDrawItem(Messages::TWMDrawItem &Message);
	MESSAGE void __fastcall CNMeasureItem(Messages::TWMMeasureItem &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	MESSAGE void __fastcall WMMouseActivate(Messages::TWMMouseActivate &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	void __fastcall ProcessMouseUp(int X, int Y, bool AMouseInControl, bool AClicked);
	void __fastcall ProcessMouseDown(void);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	
protected:
	TfcRegionData FDownRegionData;
	TfcRegionData FRegionData;
	bool FSelected;
	bool DisableButton;
	Db::TField* __fastcall GetField(void);
	virtual AnsiString __fastcall GetDBCaption();
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	DYNAMIC void __fastcall ActionChange(System::TObject* Sender, bool CheckDefaults);
	virtual void __fastcall AssignTo(Classes::TPersistent* Dest);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	virtual void __fastcall DefineProperties(Classes::TFiler* Filer);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall SetName(const AnsiString Value);
	void __fastcall GetEvents(const AnsiString s);
	virtual TfcOffsets* __fastcall CreateOffsets(void);
	virtual HRGN __fastcall CreateRegion(bool DoImplementation, bool Down);
	virtual Types::TRect __fastcall CalcButtonLayout(Graphics::TCanvas* Canvas, const Types::TRect &Client, Types::TRect &TextRect, Types::TRect &GlyphRect, const tagSIZE &TextSize);
	virtual int __fastcall GlyphWidth(void);
	virtual bool __fastcall IsCustom(void);
	virtual bool __fastcall IsCustomCaption(void);
	bool __fastcall MouseInControl(int X, int Y, bool AndClicked);
	virtual bool __fastcall StoreRegionData(void);
	virtual void __fastcall ChangeButtonDown(void);
	virtual void __fastcall CleanUp(void);
	virtual void __fastcall ClearRegion(PfcRegionData ARgnData);
	virtual void __fastcall DrawButtonGlyph(Graphics::TCanvas* Canvas, const Types::TPoint &GlyphPos);
	virtual void __fastcall DrawButtonText(Graphics::TCanvas* Canvas, const Types::TRect &TextBounds);
	virtual void __fastcall DrawItem(const tagDRAWITEMSTRUCT &DrawItemStruct);
	virtual void __fastcall GetDrawBitmap(Fcbitmap::TfcBitmap* DrawBitmap, bool ForRegion, TfcShadeStyle ShadeStyle, bool Down);
	virtual void __fastcall GlyphChanged(System::TObject* Sender);
	virtual void __fastcall NotifyChange(void);
	virtual void __fastcall NotifyChanging(void);
	virtual void __fastcall NotifyLoaded(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall Redraw(void);
	virtual void __fastcall ReadRegionData(Classes::TStream* Stream);
	virtual void __fastcall ReadDownRegionData(Classes::TStream* Stream);
	virtual void __fastcall SaveRegion(unsigned NewRegion, bool Down);
	virtual void __fastcall SelChange(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall WriteRegionData(Classes::TStream* Stream);
	virtual void __fastcall WriteDownRegionData(Classes::TStream* Stream);
	virtual void __fastcall UpdateExclusive(void);
	virtual bool __fastcall UseRegions(void);
	__property bool Active = {read=FActive, nodefault};
	__property Graphics::TCanvas* Canvas = {read=FCanvas};
	__property Types::TRect GlyphRect = {read=FGlyphRect};
	__property Types::TRect TextRect = {read=FTextRect};
	__property bool InitalDown = {read=FInitialDown, nodefault};
	__property bool Clicked = {read=FClicked, nodefault};
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	
public:
	Variant BasePatch;
	__property HRGN Region = {read=FRegion, nodefault};
	__fastcall virtual TfcCustomBitBtn(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomBitBtn(void);
	virtual void __fastcall ApplyRegion(void);
	virtual void __fastcall InvalidateNotRegion(const bool Erase);
	virtual Types::TRect __fastcall Draw(Graphics::TCanvas* Canvas);
	virtual bool __fastcall IsMultipleRegions(void);
	DYNAMIC void __fastcall Click(void);
	virtual void __fastcall SizeToDefault(void);
	virtual void __fastcall UpdateShadeColors(Graphics::TColor Color);
	virtual void __fastcall RegisterChanges(Fcchangelink::TfcChangeLink* Value);
	virtual void __fastcall UnRegisterChanges(Fcchangelink::TfcChangeLink* Value);
	virtual bool __fastcall GetTextEnabled(void);
	virtual void __fastcall AdjustBounds(void);
	__property bool ShowDownAsUp = {read=FShowDownAsUp, write=FShowDownAsUp, default=0};
	__property bool StaticCaption = {read=FStaticCaption, write=FStaticCaption, default=0};
	__property bool AllowAllUp = {read=FAllowAllUp, write=SetAllowAllUp, default=0};
	__property bool Cancel = {read=FCancel, write=FCancel, default=0};
	__property Caption  = {stored=IsCustomCaption};
	__property Color ;
	__property bool Default = {read=FDefault, write=SetDefault, default=0};
	__property bool Down = {read=FDown, write=SetDown, default=0};
	__property Font ;
	__property TfcOffsets* Offsets = {read=FOffsets, write=FOffsets};
	__property Graphics::TBitmap* Glyph = {read=FGlyph, write=SetGlyph, stored=IsCustom};
	__property int GroupIndex = {read=FGroupIndex, write=SetGroupIndex, default=0};
	__property Buttons::TBitBtnKind Kind = {read=GetKind, write=SetKind, default=0};
	__property Buttons::TButtonLayout Layout = {read=FLayout, write=SetLayout, default=0};
	__property int Margin = {read=FMargin, write=SetMargin, default=-1};
	__property Controls::TModalResult ModalResult = {read=FModalResult, write=FModalResult, default=0};
	__property Buttons::TNumGlyphs NumGlyphs = {read=FNumGlyphs, write=SetNumGlyphs, stored=IsCustom, default=1};
	__property TfcButtonOptions Options = {read=FOptions, write=SetOptions, default=0};
	__property bool Selected = {read=FSelected, nodefault};
	__property TfcShadeColors* ShadeColors = {read=FShadeColors, write=FShadeColors};
	__property TfcShadeStyle ShadeStyle = {read=FShadeStyle, write=SetShadeStyle, nodefault};
	__property bool SmoothFont = {read=FSmoothFont, write=FSmoothFont, default=0};
	__property Buttons::TButtonStyle Style = {read=FStyle, write=SetStyle, default=0};
	__property int Spacing = {read=FSpacing, write=SetSpacing, default=4};
	__property TabStop ;
	__property Fctext::TfcCaptionText* TextOptions = {read=FTextOptions, write=FTextOptions};
	__property OnClick ;
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Classes::TNotifyEvent OnSelChange = {read=FOnSelChange, write=FOnSelChange};
	__property Classes::TNotifyEvent OnSetName = {read=FOnSetName, write=FOnSetName};
	__property bool UseHalftonePalette = {read=FUseHalftonePalette, write=FUseHalftonePalette, nodefault};
	__property bool Hot = {read=FHot, write=FHot, nodefault};
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property Dbctrls::TFieldDataLink* DataLink = {read=FDataLink};
	__property Db::TField* Field = {read=GetField};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomBitBtn(HWND ParentWindow) : Controls::TWinControl(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const Shortint DESIGN_KEY = 0x12;

}	/* namespace Fcbutton */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcbutton;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcButton
