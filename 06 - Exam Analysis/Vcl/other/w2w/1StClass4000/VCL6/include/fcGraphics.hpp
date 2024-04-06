// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcGraphics.pas' rev: 5.00

#ifndef fcGraphicsHPP
#define fcGraphicsHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fcgraphics
{
//-- type declarations -------------------------------------------------------
//-- var, const, procedure ---------------------------------------------------
extern PACKAGE void __fastcall ByteSwapColors(void *Colors, int Count);
extern PACKAGE HPALETTE __fastcall PaletteFromDIBColorTable(unsigned DIBHandle, void * ColorTable, int ColorCount);

}	/* namespace Fcgraphics */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fcgraphics;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcGraphics
