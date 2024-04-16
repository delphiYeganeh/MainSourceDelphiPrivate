// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcCombo.pas' rev: 5.00

#ifndef fcComboHPP
#define fcComboHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fccombobutton.hpp>	// Pascal unit
#include <fcframe.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <Grids.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <TypInfo.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Mask.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccombo
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcComboButtonStyle { cbsEllipsis, cbsDownArrow, cbsCustom };
#pragma option pop

#pragma option push -b-
enum TfcComboStyle { csDropDown, csDropDownList };
#pragma option pop

#pragma option push -b-
enum TfcAlignVertical { fcavTop, fcavCenter };
#pragma option pop

typedef void __fastcall (__closure *TfcComboCloseUpEvent)(System::TObject* Sender, bool Select);

class DELPHICLASS TfcDropDownButton;
class PASCALIMPLEMENTATION TfcDropDownButton : public Fccombobutton::TfcComboButton 
{
	typedef Fccombobutton::TfcComboButton inherited;
	
private:
	HIDESBASE MESSAGE void __fastcall CMDesignHitTest(Messages::TWMMouse &Message);
	
protected:
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseUp(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Paint(void);
public:
	#pragma option push -w-inl
	/* TfcComboButton.Create */ inline __fastcall virtual TfcDropDownButton(Classes::TComponent* AOwner) : Fccombobutton::TfcComboButton(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcComboButton.Destroy */ inline __fastcall virtual ~TfcDropDownButton(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCustomCombo;
class PASCALIMPLEMENTATION TfcCustomCombo : public Stdctrls::TCustomEdit 
{
	typedef Stdctrls::TCustomEdit inherited;
	
private:
	Classes::TComponent* FController;
	TfcAlignVertical FAlignmentVertical;
	Controls::TWinControl* FBtnParent;
	TfcDropDownButton* FButton;
	Dbctrls::TFieldDataLink* FDataLink;
	int FDropDownCount;
	bool FInfoPower;
	Classes::TNotifyEvent FOnCustomDlg;
	TfcComboCloseUpEvent FOnCloseUp;
	Classes::TNotifyEvent FOnDropDown;
	Classes::TNotifyEvent FOnAfterDropDown;
	TfcComboButtonStyle FButtonStyle;
	int FButtonWidth;
	Controls::TControlCanvas* FCanvas;
	Controls::TControlCanvas* FPaintCanvas;
	TfcComboStyle FStyle;
	bool FReadOnly;
	bool FAllowClearKey;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	Fcframe::TfcEditFrame* FFrame;
	Fcframe::TfcButtonEffects* FButtonEffects;
	Controls::TCursor FSavedCursor;
	bool FIgnoreCursorChange;
	bool skipUpdate;
	bool FMouseInButtonControl;
	bool FDisableThemes;
	HIDESBASE MESSAGE void __fastcall WMSetFont(Messages::TWMSetFont &Message);
	MESSAGE void __fastcall CMCancelMode(Controls::TCMCancelMode &Message);
	HIDESBASE MESSAGE void __fastcall CMCursorChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnter(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMExit(Messages::TWMNoParams &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMEnabledChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CNKeyDown(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall WMSetFocus(Messages::TWMSetFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMKillFocus(Messages::TWMKillFocus &Message);
	HIDESBASE MESSAGE void __fastcall WMPaint(Messages::TWMPaint &Message);
	HIDESBASE MESSAGE void __fastcall WMSize(Messages::TWMSize &Message);
	MESSAGE void __fastcall WMCut(Messages::TMessage &Message);
	MESSAGE void __fastcall WMPaste(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall WMEraseBkgnd(Messages::TWMEraseBkgnd &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TMessage &Message);
	void __fastcall SetController(Classes::TComponent* Value);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	bool __fastcall GetReadOnly(void);
	void __fastcall SetButtonStyle(TfcComboButtonStyle Value);
	Graphics::TBitmap* __fastcall GetButtonGlyph(void);
	void __fastcall SetButtonGlyph(Graphics::TBitmap* Value);
	void __fastcall SetButtonWidth(int val);
	int __fastcall GetButtonWidth(void);
	void __fastcall SetDataField(AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	HIDESBASE void __fastcall SetReadOnly(bool Value);
	void __fastcall SetStyle(TfcComboStyle Value);
	void __fastcall SetAlignmentVertical(TfcAlignVertical Value);
	void __fastcall SetFocused(bool Value);
	
protected:
	bool FFocused;
	void __fastcall UpdateButtonGlyph(void);
	virtual void __fastcall SetDropDownCount(int Value);
	virtual Controls::TWinControl* __fastcall GetDropDownControl(void) = 0 ;
	virtual Controls::TWinControl* __fastcall GetDropDownContainer(void) = 0 ;
	virtual int __fastcall GetItemCount(void) = 0 ;
	virtual tagSIZE __fastcall GetItemSize(void) = 0 ;
	virtual int __fastcall GetLeftIndent(void);
	virtual void __fastcall BtnMouseDown(System::TObject* Sender, Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall DrawButton(Graphics::TCanvas* Canvas, const Types::TRect &R, Buttons::TButtonState State, Controls::TControlState ControlState, bool &DefaultPaint);
	virtual void __fastcall HideCaret(void);
	virtual void __fastcall Paint(void);
	virtual void __fastcall ShowCaret(void);
	virtual bool __fastcall GetShowButton(void);
	HIDESBASE virtual void __fastcall SetModified(bool Value);
	void __fastcall SetShowButton(bool Value);
	virtual bool __fastcall Editable(void);
	virtual bool __fastcall EditCanModify(void);
	virtual Types::TRect __fastcall GetClientEditRect();
	virtual Types::TRect __fastcall GetEditRect();
	virtual int __fastcall GetIconIndent(void);
	virtual int __fastcall GetIconLeft(void);
	virtual void __fastcall DoDropDown(void);
	virtual void __fastcall DoAfterDropDown(void);
	virtual void __fastcall CloseUp(bool Accept);
	virtual void __fastcall DataChange(System::TObject* Sender);
	virtual void __fastcall EditingChange(System::TObject* Sender);
	virtual void __fastcall HandleDropDownKeys(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall HandleGridKeys(Word &Key, Classes::TShiftState Shift);
	virtual void __fastcall Reset(void);
	virtual void __fastcall SetEditRect(void);
	virtual void __fastcall UpdateButtonPosition(void);
	virtual void __fastcall UpdateData(System::TObject* Sender);
	virtual bool __fastcall EffectiveReadOnly(void);
	virtual void __fastcall DoCloseUp(bool Accept);
	DYNAMIC void __fastcall DoEnter(void);
	virtual bool __fastcall SkipInheritedPaint(void);
	virtual int __fastcall GetRightIndent(const Types::TRect &Rect);
	virtual int __fastcall GetTopIndent(void);
	DYNAMIC void __fastcall Change(void);
	virtual void __fastcall CreateParams(Controls::TCreateParams &Params);
	virtual void __fastcall CreateWnd(void);
	DYNAMIC void __fastcall KeyDown(Word &Key, Classes::TShiftState Shift);
	DYNAMIC void __fastcall KeyPress(char &Key);
	virtual void __fastcall Loaded(void);
	DYNAMIC void __fastcall MouseDown(Controls::TMouseButton Button, Classes::TShiftState Shift, int X, int Y);
	DYNAMIC void __fastcall MouseMove(Classes::TShiftState Shift, int X, int Y);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	virtual void __fastcall PaintToCanvas(Graphics::TCanvas* Canvas, const Types::TRect &Rect, bool Highlight, bool GridPaint, AnsiString Text) = 0 ;
	virtual void __fastcall DrawFrame(Graphics::TCanvas* Canvas);
	virtual bool __fastcall IsCustom(void);
	void __fastcall InvalidateTransparentButton(void);
	virtual void __fastcall DoMouseEnter(void);
	virtual void __fastcall DoMouseLeave(void);
	__property Controls::TControlCanvas* Canvas = {read=FCanvas};
	__property Dbctrls::TFieldDataLink* DataLink = {read=FDataLink};
	__property Controls::TWinControl* DropDownContainer = {read=GetDropDownContainer};
	__property Controls::TWinControl* BtnParent = {read=FBtnParent};
	
public:
	Variant ComboPatch;
	__property Classes::TComponent* Controller = {read=FController, write=SetController};
	__fastcall virtual TfcCustomCombo(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomCombo(void);
	bool __fastcall isTransparentEffective(void);
	HIDESBASE virtual void __fastcall SelectAll(void);
	virtual bool __fastcall IsDataBound(void);
	virtual bool __fastcall IsDroppedDown(void);
	virtual void __fastcall CheckCancelMode(void);
	virtual void __fastcall DrawInGridCell(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, Grids::TGridDrawState State);
	virtual void __fastcall DropDown(void);
	__property TfcAlignVertical AlignmentVertical = {read=FAlignmentVertical, write=SetAlignmentVertical, default=0};
	__property bool AllowClearKey = {read=FAllowClearKey, write=FAllowClearKey, default=0};
	__property TfcDropDownButton* Button = {read=FButton};
	__property TfcComboButtonStyle ButtonStyle = {read=FButtonStyle, write=SetButtonStyle, nodefault};
	__property Graphics::TBitmap* ButtonGlyph = {read=GetButtonGlyph, write=SetButtonGlyph, stored=IsCustom};
	__property int ButtonWidth = {read=GetButtonWidth, write=SetButtonWidth, default=0};
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
	__property int DropDownCount = {read=FDropDownCount, write=SetDropDownCount, nodefault};
	__property Controls::TWinControl* DropDownControl = {read=GetDropDownControl};
	__property bool InfoPower = {read=FInfoPower, nodefault};
	__property int ItemCount = {read=GetItemCount, nodefault};
	__property tagSIZE ItemSize = {read=GetItemSize};
	__property bool ReadOnly = {read=GetReadOnly, write=SetReadOnly, nodefault};
	__property bool ShowButton = {read=GetShowButton, write=SetShowButton, default=1};
	__property TfcComboStyle Style = {read=FStyle, write=SetStyle, nodefault};
	__property Classes::TNotifyEvent OnCustomDlg = {read=FOnCustomDlg, write=FOnCustomDlg};
	__property TfcComboCloseUpEvent OnCloseUp = {read=FOnCloseUp, write=FOnCloseUp};
	__property Classes::TNotifyEvent OnDropDown = {read=FOnDropDown, write=FOnDropDown};
	__property Classes::TNotifyEvent OnAfterDropDown = {read=FOnAfterDropDown, write=FOnAfterDropDown};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
	__property Fcframe::TfcEditFrame* Frame = {read=FFrame, write=FFrame};
	__property Fcframe::TfcButtonEffects* ButtonEffects = {read=FButtonEffects, write=FButtonEffects};
	__property bool DisableThemes = {read=FDisableThemes, write=FDisableThemes, default=0};
public:
	#pragma option push -w-inl
	/* TWinControl.CreateParented */ inline __fastcall TfcCustomCombo(HWND ParentWindow) : Stdctrls::TCustomEdit(ParentWindow) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
extern PACKAGE TfcCustomCombo* __fastcall fcGetControlInGrid(Classes::TComponent* Form, Classes::TComponent* Grid, AnsiString FieldName);

}	/* namespace Fccombo */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccombo;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcCombo
