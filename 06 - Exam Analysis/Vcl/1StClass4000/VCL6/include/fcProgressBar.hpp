// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcProgressBar.pas' rev: 5.00

#ifndef fcProgressBarHPP
#define fcProgressBarHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcprogressbar
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcProgressBarOrientation { fcpbHorizontal, fcpbVertical };
#pragma option pop

class DELPHICLASS TfcProgressBar;
class PASCALIMPLEMENTATION TfcProgressBar : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FDisableThemes;
	int FMin;
	int FMax;
	int FPosition;
	int FStep;
	TfcProgressBarOrientation FOrientation;
	bool FSmooth;
	int FBlockSize;
	Graphics::TColor FBlockColor;
	bool FShowProgressText;
	Dbctrls::TFieldDataLink* FDataLink;
	Classes::TNotifyEvent FOnChange;
	Controls::TControlCanvas* FCanvas;
	AnsiString FDisplayFormat;
	int __fastcall GetMin(void);
	int __fastcall GetMax(void);
	int __fastcall GetProgress(void);
	void __fastcall SetParams(int AMin, int AMax);
	void __fastcall SetMin(int Value);
	void __fastcall SetMax(int Value);
	void __fastcall SetProgress(int Value);
	void __fastcall SetStep(int Value);
	void __fastcall SetOrientation(TfcProgressBarOrientation Value);
	void __fastcall SetSmooth(bool Value);
	void __fastcall SetBlockSize(int Value);
	void __fastcall SetBlockColor(Graphics::TColor Value);
	void __fastcall SetDisplayFormat(AnsiString Value);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkGnd(Messages::TWMEraseBkgnd &Message);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	Graphics::TCanvas* __fastcall GetCanvas(void);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	Db::TField* __fastcall GetField(void);
	void __fastcall PaintAsText(Graphics::TBitmap* AnImage, const Types::TRect &PaintRect);
	
protected:
	virtual void __fastcall DrawBar(Graphics::TCanvas* Canvas);
	HIDESBASE virtual void __fastcall Changed(void);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall PaintProgressBar(void);
	
public:
	__fastcall virtual TfcProgressBar(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcProgressBar(void);
	void __fastcall StepIt(void);
	void __fastcall StepBy(int Delta);
	__property Dbctrls::TFieldDataLink* DataLink = {read=FDataLink};
	__property Db::TField* Field = {read=GetField};
	__property Graphics::TCanvas* Canvas = {read=GetCanvas};
	
__published:
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
	__property Align ;
	__property Anchors ;
	__property BorderWidth ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Enabled ;
	__property Hint ;
	__property Constraints ;
	__property Color ;
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property bool ShowProgressText = {read=FShowProgressText, write=FShowProgressText, default=1};
	__property int Min = {read=GetMin, write=SetMin, default=0};
	__property int Max = {read=GetMax, write=SetMax, default=100};
	__property int BlockSize = {read=FBlockSize, write=SetBlockSize, default=10};
	__property Graphics::TColor BlockColor = {read=FBlockColor, write=SetBlockColor, default=-2147483635};
	__property TfcProgressBarOrientation Orientation = {read=FOrientation, write=SetOrientation, default=0};
	__property ParentShowHint ;
	__property PopupMenu ;
	__property int Progress = {read=GetProgress, write=SetProgress, default=0};
	__property bool Smooth = {read=FSmooth, write=SetSmooth, default=0};
	__property int Step = {read=FStep, write=SetStep, default=10};
	__property AnsiString DisplayFormat = {read=FDisplayFormat, write=SetDisplayFormat};
	__property ShowHint ;
	__property TabOrder ;
	__property TabStop ;
	__property Visible ;
	__property OnContextPopup ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcProgressBar(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall Register(void);

}	/* namespace Fcprogressbar */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcprogressbar;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcProgressBar
