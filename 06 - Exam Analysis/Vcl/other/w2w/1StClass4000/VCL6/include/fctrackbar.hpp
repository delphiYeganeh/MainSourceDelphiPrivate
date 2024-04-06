// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fctrackbar.pas' rev: 5.00

#ifndef fctrackbarHPP
#define fctrackbarHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcCommon.hpp>	// Pascal unit
#include <fcpanel.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <ComCtrls.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fctrackbar
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcTrackBarOrientation { trfcHorizontal, trfcVertical };
#pragma option pop

#pragma option push -b-
enum TfcTickMark { tmfcBottomRight, tmfcTopLeft, tmfcBoth };
#pragma option pop

#pragma option push -b-
enum TfcTickStyle { tsfcNone, tsfcAuto, tsfcManual };
#pragma option pop

#pragma option push -b-
enum TfcTrackBarTextPosition { tbtLeft, tbtRight, tbtTop, tbtBottom };
#pragma option pop

class DELPHICLASS TfcTrackBarText;
class DELPHICLASS TfcTrackBar;
class DELPHICLASS TfcTrackIcon;
class PASCALIMPLEMENTATION TfcTrackIcon : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	Graphics::TBitmap* TrackBmp;
	Classes::TNotifyEvent FOnEndDrag;
	void __fastcall MouseLoop_Drag(int X, int Y);
	
protected:
	bool DraggingThumb;
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	
public:
	TfcTrackBar* TrackBar;
	__fastcall virtual TfcTrackIcon(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcTrackIcon(void);
	
__published:
	__property Classes::TNotifyEvent OnEndDrag = {read=FOnEndDrag, write=FOnEndDrag};
};


class DELPHICLASS TfcTrackRepeatTimer;
class PASCALIMPLEMENTATION TfcTrackRepeatTimer : public Extctrls::TTimer 
{
	typedef Extctrls::TTimer inherited;
	
private:
	double Increment;
public:
	#pragma option push -w-inl
	/* TTimer.Create */ inline __fastcall virtual TfcTrackRepeatTimer(Classes::TComponent* AOwner) : Extctrls::TTimer(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TTimer.Destroy */ inline __fastcall virtual ~TfcTrackRepeatTimer(void) { }
	#pragma option pop
	
};


typedef void __fastcall (__closure *TfcDrawTickTextEvent)(System::TObject* Sender, double TickValue, AnsiString &ATickText, Types::TRect &ARect, bool &DoDefault);

class PASCALIMPLEMENTATION TfcTrackBar : public Fcpanel::TfcCustomPanel 
{
	typedef Fcpanel::TfcCustomPanel inherited;
	
private:
	TfcTrackBarText* FTextAttributes;
	TfcTrackBarOrientation FOrientation;
	TfcTickMark FTickMarks;
	TfcTickStyle FTickStyle;
	double FIncrement;
	int FPageSize;
	int FThumbLength;
	int FThumbThickness;
	bool FSliderVisible;
	double FMin;
	double FMax;
	double FFrequency;
	double FPosition;
	double FSelStart;
	double FSelEnd;
	Classes::TNotifyEvent FOnChange;
	Dbctrls::TFieldDataLink* FDataLink;
	TfcTrackIcon* TrackButton;
	Graphics::TBitmap* FTrackThumbIcon;
	int FThumbTrackSeparation;
	Graphics::TColor FThumbColor;
	Graphics::TColor FTrackColor;
	Graphics::TColor FTrackPartialFillColor;
	TfcTrackRepeatTimer* FRepeatTimer;
	int FSpacingLeftTop;
	int FSpacingRightBottom;
	int FSpacingEdgeTrackbar;
	bool FReadOnly;
	bool FInverted;
	TfcDrawTickTextEvent FOnDrawTickText;
	bool FDisableThemes;
	bool SkipEdit;
	virtual void __fastcall PositionChanging(void);
	virtual void __fastcall TimerExpired(System::TObject* Sender);
	void __fastcall SetThumbColor(Graphics::TColor val);
	int __fastcall GetThumbLength(void);
	int __fastcall GetThumbThickness(void);
	void __fastcall SetOrientation(TfcTrackBarOrientation Value);
	void __fastcall SetParams(double APosition, double AMin, double AMax);
	void __fastcall SetPosition(double Value);
	void __fastcall SetMin(double Value);
	void __fastcall SetMax(double Value);
	void __fastcall SetFrequency(double Value);
	void __fastcall SetTickStyle(TfcTickStyle Value);
	void __fastcall SetTickMarks(TfcTickMark Value);
	void __fastcall SetIncrement(double Value);
	void __fastcall SetPageSize(int Value);
	void __fastcall SetThumbLength(int Value);
	void __fastcall SetThumbThickness(int Value);
	void __fastcall SetSliderVisible(bool Value);
	void __fastcall SetSelStart(double Value);
	void __fastcall SetSelEnd(double Value);
	void __fastcall UpdateSelection(void);
	void __fastcall UpdateFromButton(System::TObject* Sender);
	MESSAGE void __fastcall CNHScroll(Messages::TWMScroll &Message);
	MESSAGE void __fastcall CNVScroll(Messages::TWMScroll &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	Db::TField* __fastcall GetField(void);
	void __fastcall SetThumbIcon(Graphics::TBitmap* Value);
	Graphics::TBitmap* __fastcall GetThumbIcon(void);
	MESSAGE void __fastcall WMGetDlgCode(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	void __fastcall SetSpacingLeftTop(int Value);
	void __fastcall SetSpacingRightBottom(int Value);
	void __fastcall SetSpacingEdgeTrackbar(int Value);
	double __fastcall GetDBValue(void);
	void __fastcall SetTrackColor(Graphics::TColor Value);
	void __fastcall SetTrackPartialFillColor(Graphics::TColor Value);
	
protected:
	virtual void __fastcall DrawTickText(double TickValue, AnsiString TickText, const Types::TRect &ARect);
	void __fastcall UpdateRecord(void);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual bool __fastcall EffectiveReadOnly(void);
	virtual bool __fastcall EditCanModify(void);
	virtual void __fastcall PaintThumb(int ALeft, int ATop);
	virtual double __fastcall getPosition(void);
	Types::TRect __fastcall GetTrackBarRect();
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	virtual void __fastcall DestroyWnd(void);
	HIDESBASEDYNAMIC void __fastcall Changed(void);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	int __fastcall ValToPixel(Extended Val);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	
public:
	__fastcall virtual TfcTrackBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcTrackBar(void);
	__property Dbctrls::TFieldDataLink* DataLink = {read=FDataLink};
	__property Db::TField* Field = {read=GetField};
	
__published:
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
	__property TfcTrackBarText* TextAttributes = {read=FTextAttributes, write=FTextAttributes};
	__property Graphics::TBitmap* TrackThumbIcon = {read=GetThumbIcon, write=SetThumbIcon};
	__property Graphics::TColor ThumbColor = {read=FThumbColor, write=SetThumbColor, nodefault};
	__property int SpacingLeftTop = {read=FSpacingLeftTop, write=SetSpacingLeftTop, default=5};
	__property int SpacingRightBottom = {read=FSpacingRightBottom, write=SetSpacingRightBottom, default=5};
	__property int SpacingEdgeTrackbar = {read=FSpacingEdgeTrackbar, write=SetSpacingEdgeTrackbar, default=2};
	__property bool ReadOnly = {read=FReadOnly, write=FReadOnly, nodefault};
	__property bool Inverted = {read=FInverted, write=FInverted, default=0};
	__property Graphics::TColor TrackColor = {read=FTrackColor, write=SetTrackColor, default=16777215};
	__property Graphics::TColor TrackPartialFillColor = {read=FTrackPartialFillColor, write=SetTrackPartialFillColor, default=536870911};
	__property Align ;
	__property Anchors ;
	__property BorderWidth ;
	__property Ctl3D ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Enabled ;
	__property Constraints ;
	__property double Increment = {read=FIncrement, write=SetIncrement};
	__property double Max = {read=FMax, write=SetMax};
	__property double Min = {read=FMin, write=SetMin};
	__property TfcTrackBarOrientation Orientation = {read=FOrientation, write=SetOrientation, default=0};
	__property ParentCtl3D ;
	__property ParentShowHint ;
	__property int PageSize = {read=FPageSize, write=SetPageSize, default=2};
	__property PopupMenu ;
	__property double Frequency = {read=FFrequency, write=SetFrequency};
	__property double Position = {read=getPosition, write=SetPosition};
	__property bool SliderVisible = {read=FSliderVisible, write=SetSliderVisible, default=1};
	__property double SelEnd = {read=FSelEnd, write=SetSelEnd};
	__property double SelStart = {read=FSelStart, write=SetSelStart};
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property int ThumbLength = {read=GetThumbLength, write=SetThumbLength, default=20};
	__property int ThumbThickness = {read=GetThumbThickness, write=SetThumbThickness, default=10};
	__property TfcTickMark TickMarks = {read=FTickMarks, write=SetTickMarks, default=0};
	__property TfcTickStyle TickStyle = {read=FTickStyle, write=SetTickStyle, default=1};
	__property Visible ;
	__property OnContextPopup ;
	__property TfcDrawTickTextEvent OnDrawTickText = {read=FOnDrawTickText, write=FOnDrawTickText};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnKeyDown ;
	__property OnKeyPress ;
	__property OnKeyUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcTrackBar(HWND ParentWindow) : Fcpanel::TfcCustomPanel(ParentWindow) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcTrackBarText : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	bool FShowText;
	TfcTrackBarTextPosition FPosition;
	int FOffsetX;
	int FOffsetY;
	AnsiString FDisplayFormat;
	int FTickLabelFrequency;
	AnsiString FTickDisplayFormat;
	void __fastcall SetFont(Graphics::TFont* Value);
	Graphics::TFont* __fastcall GetFont(void);
	void __fastcall SetPosition(TfcTrackBarTextPosition Value);
	void __fastcall SetOffsetX(int Value);
	void __fastcall SetOffsetY(int Value);
	void __fastcall SetDisplayFormat(AnsiString Value);
	void __fastcall SetShowText(bool Value);
	void __fastcall SetTickLabelFrequency(int Value);
	void __fastcall SetTickDisplayFormat(AnsiString Value);
	
public:
	TfcTrackBar* Owner;
	__fastcall TfcTrackBarText(Classes::TComponent* AOwner);
	
__published:
	__property TfcTrackBarTextPosition Position = {read=FPosition, write=SetPosition, default=0};
	__property int OffsetX = {read=FOffsetX, write=SetOffsetX, default=0};
	__property int OffsetY = {read=FOffsetY, write=SetOffsetY, default=0};
	__property Graphics::TFont* Font = {read=GetFont, write=SetFont};
	__property AnsiString DisplayFormat = {read=FDisplayFormat, write=SetDisplayFormat};
	__property bool ShowText = {read=FShowText, write=SetShowText, default=0};
	__property int TickLabelFrequency = {read=FTickLabelFrequency, write=SetTickLabelFrequency, default=0};
	__property AnsiString TickDisplayFormat = {read=FTickDisplayFormat, write=SetTickDisplayFormat};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcTrackBarText(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fctrackbar */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fctrackbar;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fctrackbar
