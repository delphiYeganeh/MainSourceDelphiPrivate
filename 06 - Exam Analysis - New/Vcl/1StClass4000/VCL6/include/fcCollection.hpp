// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcCollection.pas' rev: 5.00

#ifndef fcCollectionHPP
#define fcCollectionHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Dialogs.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <ActiveX.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccollection
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCollectionItem;
typedef void __fastcall (__closure *TfcSelectionMethod)(TfcCollectionItem* Item);

class PASCALIMPLEMENTATION TfcCollectionItem : public Classes::TCollectionItem 
{
	typedef Classes::TCollectionItem inherited;
	
private:
	void *FPointerTag;
	TfcSelectionMethod FSelectionMethod;
	int FTag;
	Classes::TNotifyEvent FOnRefreshDesign;
	
protected:
	virtual void __fastcall SetSelectionMethod(TfcSelectionMethod Value);
	virtual void __fastcall RefreshDesign(void);
	
public:
	virtual Classes::TPersistent* __fastcall GetInstance(const AnsiString PropertyName);
	virtual void __fastcall GotSelected(void);
	void __fastcall SetButtonName(System::TObject* Sender);
	__property void * PointerTag = {read=FPointerTag, write=FPointerTag};
	__property TfcSelectionMethod SelectionMethod = {read=FSelectionMethod, write=SetSelectionMethod};
	__property int Tag = {read=FTag, write=FTag, nodefault};
	__property Classes::TNotifyEvent OnRefreshDesign = {read=FOnRefreshDesign, write=FOnRefreshDesign};
public:
	#pragma option push -w-inl
	/* TCollectionItem.Create */ inline __fastcall virtual TfcCollectionItem(Classes::TCollection* Collection) : Classes::TCollectionItem(Collection) { }
	#pragma option pop
	#pragma option push -w-inl
	/* TCollectionItem.Destroy */ inline __fastcall virtual ~TfcCollectionItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcCollection;
class PASCALIMPLEMENTATION TfcCollection : public Classes::TCollection 
{
	typedef Classes::TCollection inherited;
	
private:
	Controls::TControl* FDesigner;
	TfcCollectionItem* __fastcall GetItems(int Index);
	
protected:
	virtual void __fastcall SetDesigner(Controls::TControl* Value);
	
public:
	__fastcall virtual ~TfcCollection(void);
	virtual TfcCollectionItem* __fastcall AddItem(void);
	__property Controls::TControl* Designer = {read=FDesigner, write=SetDesigner};
	__property TfcCollectionItem* Items[int Index] = {read=GetItems};
public:
	#pragma option push -w-inl
	/* TCollection.Create */ inline __fastcall TfcCollection(TMetaClass* ItemClass) : Classes::TCollection(ItemClass) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fccollection */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccollection;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcCollection
