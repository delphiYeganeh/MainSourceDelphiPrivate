// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcImager.pas' rev: 5.00

#ifndef fcImagerHPP
#define fcImagerHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <StdCtrls.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <fcChangeLink.hpp>	// Pascal unit
#include <fcBitmap.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
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

namespace Fcimager
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcImagerDrawStyle { dsNormal, dsCenter, dsStretch, dsTile, dsProportional, dsProportionalCenter };
#pragma option pop

class DELPHICLASS TfcRotate;
class DELPHICLASS TfcBitmapOptions;
class DELPHICLASS TfcAlphaBlend;
class PASCALIMPLEMENTATION TfcAlphaBlend : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcBitmapOptions* FBitmapOptions;
	Byte FAmount;
	Fcbitmap::TfcBitmap* FBitmap;
	bool FChanging;
	bool __fastcall GetTransparent(void);
	void __fastcall SetAmount(Byte Value);
	void __fastcall SetBitmap(Fcbitmap::TfcBitmap* Value);
	void __fastcall SetTransparent(bool Value);
	
protected:
	virtual void __fastcall BitmapChanged(System::TObject* Sender);
	
public:
	__fastcall TfcAlphaBlend(TfcBitmapOptions* BitmapOptions);
	__fastcall virtual ~TfcAlphaBlend(void);
	
__published:
	__property Byte Amount = {read=FAmount, write=SetAmount, nodefault};
	__property Fcbitmap::TfcBitmap* Bitmap = {read=FBitmap, write=SetBitmap};
	__property bool Transparent = {read=GetTransparent, write=SetTransparent, nodefault};
};


class DELPHICLASS TfcWave;
class PASCALIMPLEMENTATION TfcWave : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcBitmapOptions* FBitmapOptions;
	int FXDiv;
	int FYDiv;
	int FRatio;
	bool FWrap;
	void __fastcall SetXDiv(int Value);
	void __fastcall SetYDiv(int Value);
	void __fastcall SetRatio(int Value);
	void __fastcall SetWrap(bool Value);
	
public:
	__fastcall TfcWave(TfcBitmapOptions* BitmapOptions);
	
__published:
	__property int XDiv = {read=FXDiv, write=SetXDiv, nodefault};
	__property int YDiv = {read=FYDiv, write=SetYDiv, nodefault};
	__property int Ratio = {read=FRatio, write=SetRatio, nodefault};
	__property bool Wrap = {read=FWrap, write=SetWrap, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcWave(void) { }
	#pragma option pop
	
};


class PASCALIMPLEMENTATION TfcBitmapOptions : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	Classes::TComponent* FComponent;
	TfcAlphaBlend* FAlphaBlend;
	Graphics::TColor FColor;
	int FContrast;
	bool FEmbossed;
	Graphics::TColor FTintColor;
	int FGaussianBlur;
	bool FGrayScale;
	bool FHorizontallyFlipped;
	bool FInverted;
	int FLightness;
	TfcRotate* FRotation;
	int FSaturation;
	int FSharpen;
	int FSponge;
	bool FTile;
	bool FVerticallyFlipped;
	TfcWave* FWave;
	Classes::TNotifyEvent FOnChange;
	Graphics::TPicture* FOrigPicture;
	Fcbitmap::TfcBitmap* FDestBitmap;
	int FUpdateLock;
	void __fastcall SetColor(Graphics::TColor Value);
	void __fastcall SetBooleanProperty(int Index, bool Value);
	void __fastcall SetTintColor(Graphics::TColor Value);
	void __fastcall SetIntegralProperty(int Index, int Value);
	
public:
	__fastcall TfcBitmapOptions(Classes::TComponent* AComponent);
	__fastcall virtual ~TfcBitmapOptions(void);
	virtual void __fastcall BeginUpdate(void);
	virtual void __fastcall Changed(void);
	void __fastcall EndUpdate(void);
	__property Fcbitmap::TfcBitmap* DestBitmap = {read=FDestBitmap, write=FDestBitmap};
	__property Graphics::TPicture* OrigPicture = {read=FOrigPicture, write=FOrigPicture};
	__property bool Tile = {read=FTile, write=FTile, nodefault};
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	
__published:
	__property TfcAlphaBlend* AlphaBlend = {read=FAlphaBlend, write=FAlphaBlend};
	__property Graphics::TColor Color = {read=FColor, write=SetColor, nodefault};
	__property int Contrast = {read=FContrast, write=SetIntegralProperty, index=4, nodefault};
	__property bool Embossed = {read=FEmbossed, write=SetBooleanProperty, index=0, nodefault};
	__property Graphics::TColor TintColor = {read=FTintColor, write=SetTintColor, nodefault};
	__property int GaussianBlur = {read=FGaussianBlur, write=SetIntegralProperty, index=3, nodefault};
	__property bool GrayScale = {read=FGrayScale, write=SetBooleanProperty, index=2, nodefault};
	__property bool HorizontallyFlipped = {read=FHorizontallyFlipped, write=SetBooleanProperty, index=3, nodefault};
	__property bool Inverted = {read=FInverted, write=SetBooleanProperty, index=1, nodefault};
	__property int Lightness = {read=FLightness, write=SetIntegralProperty, index=0, nodefault};
	__property TfcRotate* Rotation = {read=FRotation, write=FRotation};
	__property int Saturation = {read=FSaturation, write=SetIntegralProperty, index=1, nodefault};
	__property int Sharpen = {read=FSharpen, write=SetIntegralProperty, index=5, nodefault};
	__property int Sponge = {read=FSponge, write=SetIntegralProperty, index=2, nodefault};
	__property bool VerticallyFlipped = {read=FVerticallyFlipped, write=SetBooleanProperty, index=4, nodefault};
	__property TfcWave* Wave = {read=FWave, write=FWave};
};


class PASCALIMPLEMENTATION TfcRotate : public Classes::TPersistent 
{
	typedef Classes::TPersistent inherited;
	
private:
	TfcBitmapOptions* FBitmapOptions;
	int FCenterX;
	int FCenterY;
	int FAngle;
	void __fastcall SetAngle(int Value);
	void __fastcall SetCenterX(int Value);
	void __fastcall SetCenterY(int Value);
	
public:
	__fastcall TfcRotate(TfcBitmapOptions* BitmapOptions);
	
__published:
	__property int CenterX = {read=FCenterX, write=SetCenterX, nodefault};
	__property int CenterY = {read=FCenterY, write=SetCenterY, nodefault};
	__property int Angle = {read=FAngle, write=SetAngle, nodefault};
public:
	#pragma option push -w-inl
	/* TPersistent.Destroy */ inline __fastcall virtual ~TfcRotate(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomImager;
class PASCALIMPLEMENTATION TfcCustomImager : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	bool FAutoSize;
	TfcBitmapOptions* FBitmapOptions;
	TfcImagerDrawStyle FDrawStyle;
	bool FEraseBackground;
	bool FPreProcess;
	Fcbitmap::TfcBitmap* FWorkBitmap;
	Graphics::TPicture* FPicture;
	Classes::TList* FChangeLinks;
	bool FRespectPalette;
	bool FTransparent;
	Controls::TWinControl* FWinControl;
	Classes::TNotifyEvent FOnEnter;
	Classes::TNotifyEvent FOnExit;
	bool FFocusable;
	Controls::TKeyPressEvent FOnKeyPress;
	Controls::TKeyEvent FOnKeyDown;
	Controls::TKeyEvent FOnKeyUp;
	bool FTabStop;
	int FTabOrder;
	bool FFocused;
	bool FShowFocusRect;
	void __fastcall SetTabStop(bool value);
	void __fastcall SetTabOrder(int value);
	bool __fastcall GetRespectPalette(void);
	bool __fastcall GetSmoothStretching(void);
	bool __fastcall GetTransparent(void);
	Graphics::TColor __fastcall GetTransparentColor(void);
	void __fastcall SetDrawStyle(TfcImagerDrawStyle Value);
	void __fastcall SetEraseBackground(bool Value);
	void __fastcall SetPreProcess(bool Value);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetRespectPalette(bool Value);
	void __fastcall SetSmoothStretching(bool Value);
	void __fastcall SetShowFocusRect(bool Value);
	void __fastcall SetTransparent(bool Value);
	void __fastcall SetTransparentColor(Graphics::TColor Value);
	void __fastcall NotifyChanges(void);
	void __fastcall SetFocusable(bool Value);
	
protected:
	virtual void __fastcall SetAutoSize(bool Value);
	virtual Controls::TWinControl* __fastcall CreateImagerWinControl(void);
	virtual void __fastcall SetParent(Controls::TWinControl* Value);
	virtual void __fastcall BitmapOptionsChange(System::TObject* Sender);
	virtual void __fastcall BitmapChange(System::TObject* Sender);
	virtual void __fastcall UpdateAutoSize(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall KeyUp(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall KeyPress(char &Key);
	virtual void __fastcall DoEnter(void);
	virtual void __fastcall DoExit(void);
	__property bool EraseBackground = {read=FEraseBackground, write=SetEraseBackground, default=1};
	__property bool Focused = {read=FFocused, nodefault};
	
public:
	bool UpdatingAutoSize;
	bool InSetBounds;
	Variant Patch;
	__fastcall virtual TfcCustomImager(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomImager(void);
	virtual bool __fastcall PictureEmpty(void);
	virtual void __fastcall Invalidate(void);
	virtual void __fastcall RegisterChanges(Fcchangelink::TfcChangeLink* ChangeLink);
	virtual void __fastcall Resized(void);
	virtual void __fastcall UpdateWorkBitmap(void);
	virtual void __fastcall UnRegisterChanges(Fcchangelink::TfcChangeLink* ChangeLink);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	virtual void __fastcall CopyToClipboard(void);
	virtual void __fastcall PasteFromClipboard(void);
	virtual void __fastcall CutToClipboard(void);
	virtual void __fastcall SetFocus(void);
	Graphics::TColor __fastcall GetColorAtPoint(int X, int Y);
	Types::TRect __fastcall GetDrawRect();
	__property Align ;
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, nodefault};
	__property TfcBitmapOptions* BitmapOptions = {read=FBitmapOptions, write=FBitmapOptions};
	__property TfcImagerDrawStyle DrawStyle = {read=FDrawStyle, write=SetDrawStyle, nodefault};
	__property bool PreProcess = {read=FPreProcess, write=SetPreProcess, nodefault};
	__property Graphics::TPicture* Picture = {read=FPicture, write=SetPicture};
	__property bool RespectPalette = {read=GetRespectPalette, write=SetRespectPalette, default=1};
	__property bool ShowFocusRect = {read=FShowFocusRect, write=SetShowFocusRect, default=0};
	__property bool SmoothStretching = {read=GetSmoothStretching, write=SetSmoothStretching, nodefault};
	__property bool Transparent = {read=GetTransparent, write=SetTransparent, nodefault};
	__property Graphics::TColor TransparentColor = {read=GetTransparentColor, write=SetTransparentColor, nodefault};
	__property Fcbitmap::TfcBitmap* WorkBitmap = {read=FWorkBitmap};
	__property bool Focusable = {read=FFocusable, write=SetFocusable, default=0};
	__property int TabOrder = {read=FTabOrder, write=SetTabOrder, nodefault};
	__property bool TabStop = {read=FTabStop, write=SetTabStop, default=0};
	__property Controls::TKeyPressEvent OnKeyPress = {read=FOnKeyPress, write=FOnKeyPress};
	__property Controls::TKeyEvent OnKeyDown = {read=FOnKeyDown, write=FOnKeyDown};
	__property Controls::TKeyEvent OnKeyUp = {read=FOnKeyUp, write=FOnKeyUp};
	__property Classes::TNotifyEvent OnEnter = {read=FOnEnter, write=FOnEnter};
	__property Classes::TNotifyEvent OnExit = {read=FOnExit, write=FOnExit};
};


class DELPHICLASS TfcImager;
class PASCALIMPLEMENTATION TfcImager : public TfcCustomImager 
{
	typedef TfcCustomImager inherited;
	
__published:
	__property Align ;
	__property AutoSize ;
	__property BitmapOptions ;
	__property DrawStyle ;
	__property Picture ;
	__property PreProcess ;
	__property RespectPalette ;
	__property SmoothStretching ;
	__property Transparent ;
	__property TransparentColor ;
	__property Visible ;
	__property Focusable ;
	__property Anchors ;
	__property Constraints ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnClick ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnEnter ;
	__property OnExit ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
	__property TabOrder ;
	__property TabStop ;
	__property OnKeyPress ;
	__property OnKeyDown ;
	__property OnKeyUp ;
public:
	#pragma option push -w-inl
	/* TfcCustomImager.Create */ inline __fastcall virtual TfcImager(Classes::TComponent* AOwner) : TfcCustomImager(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcCustomImager.Destroy */ inline __fastcall virtual ~TfcImager(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcDBCustomImager;
class PASCALIMPLEMENTATION TfcDBCustomImager : public Controls::TCustomControl 
{
	typedef Controls::TCustomControl inherited;
	
private:
	bool FAutoSize;
	TfcBitmapOptions* FBitmapOptions;
	TfcImagerDrawStyle FDrawStyle;
	bool FPreProcess;
	Fcbitmap::TfcBitmap* FWorkBitmap;
	Graphics::TPicture* FPicture;
	Classes::TList* FChangeLinks;
	bool FRespectPalette;
	bool FTransparent;
	bool FInResized;
	bool __fastcall GetRespectPalette(void);
	bool __fastcall GetSmoothStretching(void);
	bool __fastcall GetTransparent(void);
	Graphics::TColor __fastcall GetTransparentColor(void);
	void __fastcall SetDrawStyle(TfcImagerDrawStyle Value);
	void __fastcall SetPreProcess(bool Value);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetRespectPalette(bool Value);
	void __fastcall SetSmoothStretching(bool Value);
	void __fastcall SetTransparent(bool Value);
	void __fastcall SetTransparentColor(Graphics::TColor Value);
	Types::TRect __fastcall GetDrawRect();
	void __fastcall NotifyChanges(void);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	
protected:
	virtual void __fastcall SetAutoSize(bool Value);
	virtual void __fastcall BitmapOptionsChange(System::TObject* Sender);
	virtual void __fastcall BitmapChange(System::TObject* Sender);
	virtual void __fastcall UpdateAutoSize(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Paint(void);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	virtual void __fastcall CreateWnd(void);
	
public:
	bool UpdatingAutoSize;
	bool InSetBounds;
	Variant Patch;
	__fastcall virtual TfcDBCustomImager(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcDBCustomImager(void);
	virtual bool __fastcall PictureEmpty(void);
	Graphics::TColor __fastcall GetColorAtPoint(int X, int Y);
	virtual void __fastcall Invalidate(void);
	virtual void __fastcall RegisterChanges(Fcchangelink::TfcChangeLink* ChangeLink);
	virtual void __fastcall Resized(void);
	virtual void __fastcall UpdateWorkBitmap(void);
	virtual void __fastcall UnRegisterChanges(Fcchangelink::TfcChangeLink* ChangeLink);
	virtual void __fastcall SetBounds(int ALeft, int ATop, int AWidth, int AHeight);
	__property Align ;
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, nodefault};
	__property TfcBitmapOptions* BitmapOptions = {read=FBitmapOptions, write=FBitmapOptions};
	__property TfcImagerDrawStyle DrawStyle = {read=FDrawStyle, write=SetDrawStyle, nodefault};
	__property bool PreProcess = {read=FPreProcess, write=SetPreProcess, nodefault};
	__property Graphics::TPicture* Picture = {read=FPicture, write=SetPicture};
	__property bool RespectPalette = {read=GetRespectPalette, write=SetRespectPalette, default=1};
	__property bool SmoothStretching = {read=GetSmoothStretching, write=SetSmoothStretching, nodefault};
	__property bool Transparent = {read=GetTransparent, write=SetTransparent, nodefault};
	__property Graphics::TColor TransparentColor = {read=GetTransparentColor, write=SetTransparentColor, nodefault};
	__property Fcbitmap::TfcBitmap* WorkBitmap = {read=FWorkBitmap};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDBCustomImager(HWND ParentWindow) : Controls::TCustomControl(ParentWindow) { }
	#pragma option pop
	
};


#pragma option push -b-
enum TfcImagerPictureType { fcptBitmap, fcptJpg, fcptMetafile, fcptIcon };
#pragma option pop

class DELPHICLASS TfcDBImager;
typedef void __fastcall (__closure *TfcCalcPictureTypeEvent)(TfcDBImager* ImageControl, TfcImagerPictureType &PictureType, AnsiString &GraphicClassName);

class PASCALIMPLEMENTATION TfcDBImager : public TfcDBCustomImager 
{
	typedef TfcDBCustomImager inherited;
	
private:
	Dbctrls::TFieldDataLink* FDataLink;
	bool FPictureLoaded;
	bool FAutoDisplay;
	Forms::TFormBorderStyle FBorderStyle;
	TfcImagerPictureType FPictureType;
	TfcCalcPictureTypeEvent FOnCalcPictureType;
	void __fastcall SetPictureType(TfcImagerPictureType Value);
	void __fastcall SetBorderStyle(Forms::TBorderStyle Value);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	void __fastcall DataChange(System::TObject* Sender);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	Db::TField* __fastcall GetField(void);
	bool __fastcall GetReadOnly(void);
	void __fastcall SetReadOnly(bool Value);
	void __fastcall UpdateData(System::TObject* Sender);
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	void __fastcall SetAutoDisplay(bool Value);
	HIDESBASE MESSAGE void __fastcall WMLButtonDown(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMLButtonDblClk(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	
protected:
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall LoadPicture(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	DYNAMIC void __fastcall DoExit(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall BitmapChange(System::TObject* Sender);
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	DYNAMIC bool __fastcall PaletteChanged(bool Foreground);
	
public:
	__fastcall virtual TfcDBImager(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcDBImager(void);
	virtual void __fastcall CopyToClipboard(void);
	virtual void __fastcall PasteFromClipboard(void);
	virtual void __fastcall CutToClipboard(void);
	virtual void __fastcall DoCalcPictureType(TfcImagerPictureType &PictureType, AnsiString &GraphicClassName);
	DYNAMIC bool __fastcall ExecuteAction(Classes::TBasicAction* Action);
	DYNAMIC bool __fastcall UpdateAction(Classes::TBasicAction* Action);
	__property Db::TField* Field = {read=GetField};
	
__published:
	__property Forms::TBorderStyle BorderStyle = {read=FBorderStyle, write=SetBorderStyle, default=1};
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property bool AutoDisplay = {read=FAutoDisplay, write=SetAutoDisplay, default=1};
	__property Ctl3D ;
	__property Color ;
	__property ParentCtl3D ;
	__property ParentColor ;
	__property TfcImagerPictureType PictureType = {read=FPictureType, write=SetPictureType, default=0};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, default=0};
	__property Align ;
	__property AutoSize ;
	__property BitmapOptions ;
	__property DrawStyle ;
	__property PreProcess ;
	__property RespectPalette ;
	__property SmoothStretching ;
	__property Transparent ;
	__property TransparentColor ;
	__property Visible ;
	__property Anchors ;
	__property Constraints ;
	__property OnEndDock ;
	__property OnStartDock ;
	__property OnClick ;
	__property TfcCalcPictureTypeEvent OnCalcPictureType = {read=FOnCalcPictureType, write=FOnCalcPictureType};
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDrag ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDrag ;
	__property TabOrder ;
	__property TabStop ;
	__property OnKeyPress ;
	__property OnKeyDown ;
	__property OnKeyUp ;
	__property OnEnter ;
	__property OnExit ;
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcDBImager(HWND ParentWindow) : TfcDBCustomImager(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcimager */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcimager;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcImager
