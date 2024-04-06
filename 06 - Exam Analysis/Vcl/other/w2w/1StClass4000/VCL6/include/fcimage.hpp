// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcImage.pas' rev: 5.00

#ifndef fcImageHPP
#define fcImageHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <fcBitmap.hpp>	// Pascal unit
#include <Variants.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Consts.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcimage
{
//-- type declarations -------------------------------------------------------
class DELPHICLASS TfcCustomImage;
class PASCALIMPLEMENTATION TfcCustomImage : public Controls::TGraphicControl 
{
	typedef Controls::TGraphicControl inherited;
	
private:
	Graphics::TPicture* FPicture;
	bool FAutoSize;
	bool FIncrementalDisplay;
	bool FTransparent;
	bool FDrawing;
	Graphics::TCanvas* __fastcall GetCanvas(void);
	void __fastcall PictureChanged(System::TObject* Sender);
	void __fastcall SetPicture(Graphics::TPicture* Value);
	void __fastcall SetTransparent(bool Value);
	
protected:
	virtual void __fastcall SetAutoSize(bool Value);
	Types::TRect __fastcall DestRect();
	bool __fastcall DoPaletteChange(void);
	DYNAMIC HPALETTE __fastcall GetPalette(void);
	virtual void __fastcall Paint(void);
	
public:
	Variant BasePatch;
	__fastcall virtual TfcCustomImage(Classes::TComponent* AOwner);
	__fastcall virtual ~TfcCustomImage(void);
	__property Graphics::TCanvas* Canvas = {read=GetCanvas};
	__property bool AutoSize = {read=FAutoSize, write=SetAutoSize, default=0};
	__property bool IncrementalDisplay = {read=FIncrementalDisplay, write=FIncrementalDisplay, default=0};
	__property Graphics::TPicture* Picture = {read=FPicture, write=SetPicture};
	__property bool Transparent = {read=FTransparent, write=SetTransparent, default=0};
};


//-- var, const, procedure ---------------------------------------------------

}	/* namespace Fcimage */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcimage;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcImage
