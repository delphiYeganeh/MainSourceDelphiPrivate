// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fccustomdraw.pas' rev: 5.00

#ifndef fccustomdrawHPP
#define fccustomdrawHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <CommCtrl.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccustomdraw
{
//-- type declarations -------------------------------------------------------
#pragma pack(push, 1)
struct TNMCustomDraw
{
	tagNMHDR hdr;
	unsigned dwDrawStage;
	HDC dc;
	Types::TRect rc;
	unsigned dwItemSpec;
	unsigned uItemState;
	int lItemlParam;
} ;
#pragma pack(pop)

typedef TNMCustomDraw *PNMCustomDraw;

#pragma pack(push, 1)
struct TNMLVCustomDraw
{
	TNMCustomDraw nmcd;
	unsigned clrText;
	unsigned clrTextBk;
	int iSubItem;
} ;
#pragma pack(pop)

typedef TNMLVCustomDraw *PNMLVCustomDraw;

#pragma pack(push, 1)
struct TNMTVCustomDraw
{
	TNMCustomDraw nmcd;
	unsigned clrText;
	unsigned clrTextBk;
	int iLevel;
} ;
#pragma pack(pop)

typedef TNMTVCustomDraw *PNMTVCustomDraw;

#pragma pack(push, 1)
struct TNMTTCustomDraw
{
	TNMCustomDraw nmcd;
	unsigned uDrawFlags;
} ;
#pragma pack(pop)

typedef TNMTTCustomDraw *PNMTTCustomDraw;

#pragma pack(push, 1)
struct TNMTTDispInfo
{
	tagNMHDR hdr;
	char *lpszText;
	char szText[80];
	unsigned hinst;
	unsigned uFlags;
	int lParam;
} ;
#pragma pack(pop)

typedef TNMTTDispInfo *PNMTTDispInfo;

#pragma pack(push, 1)
struct TTVItemEx
{
	unsigned mask;
	_TREEITEM *hItem;
	unsigned state;
	unsigned stateMask;
	char *pszText;
	int cchTextMax;
	int iImage;
	int iSelectedImage;
	int cChildren;
	int lParam;
	int iIntegral;
} ;
#pragma pack(pop)

typedef TTVItemEx *PTVItemEx;

//-- var, const, procedure ---------------------------------------------------
extern PACKAGE int wwItemStates[9];

}	/* namespace Fccustomdraw */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccustomdraw;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fccustomdraw
