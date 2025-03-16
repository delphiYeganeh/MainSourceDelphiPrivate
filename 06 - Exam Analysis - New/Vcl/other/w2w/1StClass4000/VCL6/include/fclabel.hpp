// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcLabel.pas' rev: 5.00

#ifndef fcLabelHPP
#define fcLabelHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Menus.hpp>	// Pascal unit
#include <VDBConsts.hpp>	// Pascal unit
#include <DBCtrls.hpp>	// Pascal unit
#include <DB.hpp>	// Pascal unit
#include <fctext.hpp>	// Pascal unit
#include <fcCommon.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
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

namespace Fclabel
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomLabel;
class PASCALIMPLEMENTATION TfcCustomLabel : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	bool FAutoSize;
	Controls::TWinControl* FFocusControl;
	Fctext::TfcCaptionText* FTextOptions;
	Classes::TNotifyEvent FOnMouseEnter;
	Classes::TNotifyEvent FOnMouseLeave;
	bool __fastcall GetTransparent(void);
	void __fastcall SetFocusControl(Controls::TWinControl* Value);
	void __fastcall SetTransparent(bool Value);
	MESSAGE void __fastcall CMTextChanged(Messages::TMessage &Message);
	HIDESBASE MESSAGE void __fastcall CMFontChanged(Messages::TMessage &Message);
	MESSAGE void __fastcall CMDialogChar(Messages::TWMKey &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseEnter(Messages::TWMMouse &Message);
	HIDESBASE MESSAGE void __fastcall CMMouseLeave(Messages::TWMMouse &Message);
	
protected:
	HIDESBASE virtual void __fastcall SetAutoSize(bool Value);
	virtual AnsiString __fastcall GetLabelText();
	virtual void __fastcall MouseEnter(void);
	virtual void __fastcall MouseLeave(void);
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall Paint(void);
	virtual void __fastcall WndProc(Messages::TMessage &Message);
	__property Canvas ;
	
public:
	Variant Patch;
	__fastcall virtual TfcCustomLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomLabel(void);
	virtual bool __fastcall GetTextEnabled(void);
	virtual void __fastcall AdjustBounds(void);
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=1};
	__property Caption ;
	__property Controls::TWinControl* FocusControl = {read=FFocusControl, write=SetFocusControl};
	__property Fctext::TfcCaptionText* TextOptions = {read=FTextOptions, write=FTextOptions};
	__property bool Transparent = {read=GetTransparent, write=SetTransparent, default=0};
	__property Classes::TNotifyEvent OnMouseEnter = {read=FOnMouseEnter, write=FOnMouseEnter};
	__property Classes::TNotifyEvent OnMouseLeave = {read=FOnMouseLeave, write=FOnMouseLeave};
};


class DELPHICLASS TfcDBCustomLabel;
class PASCALIMPLEMENTATION TfcDBCustomLabel : public TfcCustomLabel 
{
	typedef TfcCustomLabel inherited;
	
private:
	Dbctrls::TFieldDataLink* FDataLink;
	void __fastcall DataChange(System::TObject* Sender);
	AnsiString __fastcall GetDataField();
	Db::TDataSource* __fastcall GetDataSource(void);
	Db::TField* __fastcall GetField(void);
	AnsiString __fastcall GetFieldText();
	void __fastcall SetDataField(const AnsiString Value);
	void __fastcall SetDataSource(Db::TDataSource* Value);
	MESSAGE void __fastcall CMGetDataLink(Messages::TMessage &Message);
	
protected:
	virtual AnsiString __fastcall GetLabelText();
	virtual void __fastcall Loaded(void);
	virtual void __fastcall Notification(Classes::TComponent* AComponent, Classes::TOperation Operation);
	virtual void __fastcall SetAutoSize(bool Value);
	
public:
	__fastcall virtual TfcDBCustomLabel(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcDBCustomLabel(void);
	DYNAMIC bool __fastcall ExecuteAction(Classes::TBasicAction* Action);
	DYNAMIC bool __fastcall UpdateAction(Classes::TBasicAction* Action);
	DYNAMIC bool __fastcall UseRightToLeftAlignment(void);
	__property Db::TField* Field = {read=GetField};
	__property AnsiString DataField = {read=GetDataField, write=SetDataField};
	__property Db::TDataSource* DataSource = {read=GetDataSource, write=SetDataSource};
};


class DELPHICLASS TfcLabel;
class PASCALIMPLEMENTATION TfcLabel : public TfcDBCustomLabel 
{
	typedef TfcDBCustomLabel inherited;
	
__published:
	__property Align ;
	__property Anchors ;
	__property AutoSize ;
	__property BiDiMode ;
	__property Caption ;
	__property Color ;
	__property Constraints ;
	__property DataField ;
	__property DataSource ;
	__property DragCursor ;
	__property DragKind ;
	__property DragMode ;
	__property Enabled ;
	__property FocusControl ;
	__property Font ;
	__property ParentBiDiMode ;
	__property ParentColor ;
	__property ParentFont ;
	__property ParentShowHint ;
	__property PopupMenu ;
	__property TextOptions ;
	__property Transparent ;
	__property ShowHint ;
	__property Visible ;
	__property OnClick ;
	__property OnContextPopup ;
	__property OnDblClick ;
	__property OnDragDrop ;
	__property OnDragOver ;
	__property OnEndDock ;
	__property OnEndDrag ;
	__property OnMouseEnter ;
	__property OnMouseLeave ;
	__property OnMouseDown ;
	__property OnMouseMove ;
	__property OnMouseUp ;
	__property OnStartDock ;
	__property OnStartDrag ;
public:
	#pragma option push -w-inl
	/* TfcDBCustomLabel.Create */ inline __fastcall virtual TfcLabel(Classes::TComponent* AOwner) : TfcDBCustomLabel(AOwner) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TfcDBCustomLabel.Destroy */ inline __fastcall virtual ~TfcLabel(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fclabel */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fclabel;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcLabel
