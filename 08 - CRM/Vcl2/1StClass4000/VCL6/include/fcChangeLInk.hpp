// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcChangeLink.pas' rev: 5.00

#ifndef fcChangeLinkHPP
#define fcChangeLinkHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcchangelink
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcChangeLink;
class PASCALIMPLEMENTATION TfcChangeLink : public System::TObject 
{
	typedef System::TObject inherited;
	
private:
	Classes::TNotifyEvent FOnChange;
	Classes::TNotifyEvent FOnChanging;
	Classes::TNotifyEvent FOnLoaded;
	System::TObject* FSender;
	
public:
	virtual void __fastcall Change(void);
	virtual void __fastcall Changing(void);
	virtual void __fastcall Loaded(void);
	__property Classes::TNotifyEvent OnChange = {read=FOnChange, write=FOnChange};
	__property Classes::TNotifyEvent OnChanging = {read=FOnChanging, write=FOnChanging};
	__property Classes::TNotifyEvent OnLoaded = {read=FOnLoaded, write=FOnLoaded};
	__property System::TObject* Sender = {read=FSender, write=FSender};
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcChangeLink(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcChangeLink(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcchangelink */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcchangelink;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcChangeLink
