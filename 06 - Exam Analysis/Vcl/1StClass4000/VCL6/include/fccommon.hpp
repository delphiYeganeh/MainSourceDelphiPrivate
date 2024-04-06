// Borland C++ Builder
// Copyright (c) 1995, 1999 by Borland International
// All rights reserved

// (DO NOT EDIT: machine generated header) 'fcCommon.pas' rev: 5.00

#ifndef fcCommonHPP
#define fcCommonHPP

#pragma delphiheader begin
#pragma option push -w-
#pragma option push -Vx
#include <ComCtrls.hpp>	// Pascal unit
#include <fcBitmap.hpp>	// Pascal unit
#include <CommCtrl.hpp>	// Pascal unit
#include <Registry.hpp>	// Pascal unit
#include <ImgList.hpp>	// Pascal unit
#include <ExtCtrls.hpp>	// Pascal unit
#include <Messages.hpp>	// Pascal unit
#include <Math.hpp>	// Pascal unit
#include <TypInfo.hpp>	// Pascal unit
#include <StdCtrls.hpp>	// Pascal unit
#include <Menus.hpp>	// Pascal unit
#include <Graphics.hpp>	// Pascal unit
#include <Windows.hpp>	// Pascal unit
#include <Buttons.hpp>	// Pascal unit
#include <Printers.hpp>	// Pascal unit
#include <Controls.hpp>	// Pascal unit
#include <Forms.hpp>	// Pascal unit
#include <Dialogs.hpp>	// Pascal unit
#include <SysUtils.hpp>	// Pascal unit
#include <Classes.hpp>	// Pascal unit
#include <SysInit.hpp>	// Pascal unit
#include <System.hpp>	// Pascal unit

//-- user supplied -----------------------------------------------------------

namespace Fccommon
{
//-- type declarations -------------------------------------------------------
#pragma option push -b-
enum TfcPointSet { psGlyph, psText, psOffset };
#pragma option pop

typedef Set<TfcPointSet, psGlyph, psOffset>  TfcPointSets;

typedef void __fastcall (__closure *TfcProcMeth)(void);

typedef bool __fastcall (__closure *TfcBoolFunc)(void);

typedef void __fastcall (__closure *TfcSetBoundsProc)(Controls::TWinControl* Control, const Types::TRect &Rect);

#pragma option push -b-
enum TfcLayout { loVertical, loHorizontal };
#pragma option pop

#pragma option push -b-
enum TfcFontType { ftPrinter, ftTrueType, ftOther };
#pragma option pop

typedef TfcFontType *PfcFontType;

typedef Types::TPoint TfcPolyGonPoints[21];

typedef Types::TPoint *PfcPolyGonPoints;

#pragma option push -b-
enum TwwDBGridOption { dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgRowFixedLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap, dgPerfectRowFit, dgMultiSelect };
#pragma option pop

typedef Set<TwwDBGridOption, dgEditing, dgMultiSelect>  TwwDBGridOptions;

typedef int __fastcall (*TwwListSortCompare)(AnsiString Item1, AnsiString Item2);

typedef AnsiString __fastcall (*TwwGetCompareString)(Classes::TStrings* SList, int Index);

#pragma option push -b-
enum TfcOrientation { fcTopLeft, fcTopRight, fcBottomLeft, fcBottomRight, fcTop, fcRight, fcLeft, fcBottom };
#pragma option pop

typedef TfcOrientation TfcDiagonals;

typedef TfcOrientation TfcStraights;

#pragma option push -b-
enum TfcGetWordOption { fcgwSkipLeadingBlanks, fcgwQuotesAsWords, fcgwStripQuotes, fcgwSpacesInWords };
#pragma option pop

typedef Set<TfcGetWordOption, fcgwSkipLeadingBlanks, fcgwSpacesInWords>  TfcGetWordOptions;

typedef Set<char, 0, 255>  fcstrCharSet;

#pragma pack(push, 4)
struct TfcInteger
{
	int Value;
} ;
#pragma pack(pop)

class DELPHICLASS TfcAnimateListItem;
class PASCALIMPLEMENTATION TfcAnimateListItem : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	Controls::TWinControl* Control;
	Graphics::TBitmap* Bitmap;
	#pragma pack(push, 1)
	Types::TRect OrigRect;
	#pragma pack(pop)
	
	#pragma pack(push, 1)
	Types::TRect CurRect;
	#pragma pack(pop)
	
	#pragma pack(push, 1)
	Types::TRect FinalRect;
	#pragma pack(pop)
	
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcAnimateListItem(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcAnimateListItem(void) { }
	#pragma option pop
	
};


class DELPHICLASS TfcGroupAnimateItem;
class PASCALIMPLEMENTATION TfcGroupAnimateItem : public System::TObject 
{
	typedef System::TObject inherited;
	
public:
	TfcAnimateListItem* MainItem;
	TfcAnimateListItem* SecondItem;
public:
	#pragma option push -w-inl
	/* TObject.Create */ inline __fastcall TfcGroupAnimateItem(void) : System::TObject() { }
	#pragma option pop
	#pragma option push -w-inl
	/* TObject.Destroy */ inline __fastcall virtual ~TfcGroupAnimateItem(void) { }
	#pragma option pop
	
};


//-- var, const, procedure ---------------------------------------------------
static const int clNullColor = 0xfffffff;
extern PACKAGE AnsiString fcVersion1stClass;
extern PACKAGE Byte BitMask[8];
static const int fcComCtlVersionIE3 = 0x40046;
static const int fcComCtlVersionIE4 = 0x40047;
static const int fcComCtlVersionIE401 = 0x40048;
#define fcComCtlDllName "comctl32.dll"
extern PACKAGE int __fastcall fcGetComCtlVersion(void);
extern PACKAGE Classes::TShiftState __fastcall fcGetShiftState(void);
extern PACKAGE bool __fastcall fcStrToFloat2(const AnsiString S, Extended &FloatValue, AnsiString DisplayFormat);
extern PACKAGE Extended __fastcall fcStrToFloat(AnsiString str, AnsiString DisplayFormat);
extern PACKAGE double __fastcall fcStrToRealDef(const AnsiString S, Extended Default);
extern PACKAGE bool __fastcall fcIsClass(TMetaClass* ClassType, const AnsiString Name);
extern PACKAGE bool __fastcall fcParentGridFocused(Controls::TControl* AControl);
extern PACKAGE bool __fastcall fcIsInwwGrid(Controls::TControl* AControl);
extern PACKAGE bool __fastcall fcIsInwwObjectView(Controls::TWinControl* control);
extern PACKAGE bool __fastcall fcIsInwwObjectViewPaint(Controls::TWinControl* control);
extern PACKAGE bool __fastcall fcIsInwwGridPaint(Controls::TWinControl* control);
extern PACKAGE TwwDBGridOptions __fastcall fcGetGridOptions(Controls::TControl* AControl);
extern PACKAGE void __fastcall fcStripPreceding(AnsiString &s);
extern PACKAGE void __fastcall fcStripTrailing(AnsiString &s);
extern PACKAGE void __fastcall fcStripWhiteSpace(AnsiString &s);
extern PACKAGE void __fastcall fcColorToByteValues(Graphics::TColor AColor, Byte &Reserved, Byte &Blue, Byte &Green, Byte &Red);
extern PACKAGE AnsiString __fastcall fcRGBToHexString(Byte R, Byte G, Byte B);
extern PACKAGE AnsiString __fastcall fcColorToRGBString(Graphics::TColor AColor);
extern PACKAGE AnsiString __fastcall fcGetItemsFromStringList(Classes::TStrings* SList, int Index);
extern PACKAGE AnsiString __fastcall fcGetNamesFromStringList(Classes::TStrings* AList, int Index);
extern PACKAGE AnsiString __fastcall fcGetValuesFromStringList(Classes::TStrings* AList, int Index);
extern PACKAGE Graphics::TColor __fastcall fcGetColorFromList(Classes::TStrings* AList, int Index);
extern PACKAGE int __fastcall fcValueInList(AnsiString Value, Classes::TStrings* List);
extern PACKAGE int __fastcall fcNameInList(AnsiString Name, Classes::TStrings* List);
extern PACKAGE Classes::TStrings* __fastcall fcSetColorDialogCustomColors(Classes::TStrings* AList);
extern PACKAGE void __fastcall fcQuickSort(Classes::TStrings* SList, int L, int R, TwwListSortCompare SCompare, TwwGetCompareString SGetString);
extern PACKAGE bool __fastcall fcIsTrueColorBitmap(Graphics::TBitmap* Bitmap);
extern PACKAGE int __fastcall fcBytesPerScanline(int PixelsPerScanline, int BitsPerPixel, int Alignment);
extern PACKAGE bool __fastcall fcGetDIBBitsFromBitmap(Graphics::TBitmap* aBitmap, tagBITMAPINFO &BitmapInfo, void * &pixbuf, int &bytespscanline, HBITMAP &Hb);
extern PACKAGE HRGN __fastcall fcCreateRegionFromBitmap(Graphics::TBitmap* ABitmap, Graphics::TColor TransColor);
extern PACKAGE HRGN __fastcall fcRegionFromBitmap(Fcbitmap::TfcBitmap* ABitmap, Graphics::TColor TransColor);
extern PACKAGE void __fastcall fcSetDitherBitmap(Graphics::TBitmap* DitherBitmap, Graphics::TColor Color1, Graphics::TColor Color2);
extern PACKAGE int __fastcall fcMin(int Int1, int Int2)/* overload */;
extern PACKAGE double __fastcall fcMinFloat(double Int1, double Int2)/* overload */;
extern PACKAGE int __fastcall fcMax(int Int1, int Int2)/* overload */;
extern PACKAGE double __fastcall fcMaxFloat(double Int1, double Int2)/* overload */;
extern PACKAGE int __fastcall fcLimit(int Val, int Int1, int Int2);
extern PACKAGE void __fastcall fcPlayKeystroke(HWND Handle, Word VKChar, Word VKShift);
extern PACKAGE int __fastcall fcRectWidth(const Types::TRect &Rect);
extern PACKAGE int __fastcall fcRectHeight(const Types::TRect &Rect);
extern PACKAGE AnsiString __fastcall fcSubstring(AnsiString s, int Start, int Stop);
extern PACKAGE int __fastcall fcIndexOf(AnsiString Substr, AnsiString s, int Index);
extern PACKAGE int __fastcall fcLastIndexOf(AnsiString Substr, AnsiString s, int Index);
extern PACKAGE int __fastcall fcNthIndexOf(AnsiString Substr, AnsiString s, int Index);
extern PACKAGE int __fastcall fcCountTokens(AnsiString s, AnsiString Delimiter);
extern PACKAGE AnsiString __fastcall fcGetToken(AnsiString s, AnsiString Delimiter, int Index);
extern PACKAGE AnsiString __fastcall fcSetToken(AnsiString s, AnsiString Delimiter, AnsiString Token, int Index);
extern PACKAGE int __fastcall fcFindToken(AnsiString s, AnsiString Delimiter, AnsiString Token);
extern PACKAGE Typinfo::PPropInfo __fastcall fcGetPropInfo(Classes::TPersistent* Component, AnsiString PropName);
extern PACKAGE AnsiString __fastcall fcGenerateName(Classes::TComponent* Component, const AnsiString Base);
extern PACKAGE Types::TPoint __fastcall fcGetCursorPos();
extern PACKAGE int __fastcall fcThisThat(const bool Clause, int TrueVal, int FalseVal);
extern PACKAGE tagSIZE __fastcall fcSize(int cx, int cy);
extern PACKAGE bool __fastcall fcSizeEqual(const tagSIZE &Size1, const tagSIZE &Size2);
extern PACKAGE AnsiString __fastcall fcStripAmpersands(AnsiString Value);
extern PACKAGE AnsiString __fastcall fcReplace(AnsiString s, AnsiString Find, AnsiString Replace);
extern PACKAGE int __fastcall fcLineHeight(Graphics::TCanvas* Canvas, int Flags, int MaxWidth, AnsiString Line);
extern PACKAGE tagSIZE __fastcall fcMultiLineTextSize(Graphics::TCanvas* Canvas, AnsiString Text, int LineSpacing, int MaxWidth, int DrawFlags);
extern PACKAGE void __fastcall fcAdjustFlag(bool Condition, unsigned &Flag, unsigned FlagVal);
extern PACKAGE int __fastcall fcSign(Extended Value);
extern PACKAGE void __fastcall fcOffsetBitmap(Fcbitmap::TfcBitmap* Bitmap, Graphics::TColor Transparent, const Types::TPoint &Offset);
extern PACKAGE void __fastcall fcDottedLine(Graphics::TCanvas* Canvas, const Types::TPoint &p1, const Types::TPoint &p2);
extern PACKAGE void __fastcall fcTransparentDraw(Graphics::TCanvas* Canvas, const Types::TRect &ARect, Fcbitmap::TfcBitmap* Bitmap, Graphics::TColor TransparentColor);
extern PACKAGE Graphics::TColor __fastcall fcModifyColor(Graphics::TColor Color, int Amount, bool Percent);
extern PACKAGE void __fastcall fcImageListDraw(Imglist::TCustomImageList* ImageList, int Index, Graphics::TCanvas* Canvas, int X, int Y, unsigned Style, bool Enabled);
extern PACKAGE void __fastcall fcImageListDrawFixBug(Imglist::TCustomImageList* ImageList, int Index, Graphics::TCanvas* Canvas, int X, int Y, unsigned Style, bool Enabled);
extern PACKAGE void __fastcall fcIncSize(tagSIZE &Size, int Amount);
extern PACKAGE Controls::THintWindow* __fastcall fcGetHintWindow(void);
extern PACKAGE Messages::TMessage __fastcall fcMessage(unsigned Msg, int wParam, int lParam, unsigned MsgRslt);
extern PACKAGE TfcFontType __fastcall fcGetFontType(int AFontType);
extern PACKAGE TfcFontType __fastcall fcGetFontIcon(AnsiString FaceName);
extern PACKAGE AnsiString __fastcall fcGetStrProp(Classes::TPersistent* Component, AnsiString PropName);
extern PACKAGE int __fastcall fcGetOrdProp(Classes::TPersistent* Component, AnsiString PropName);
extern PACKAGE void __fastcall fcSetStrProp(Classes::TPersistent* Component, AnsiString PropName, AnsiString Value);
extern PACKAGE void __fastcall fcSetOrdProp(Classes::TPersistent* Component, AnsiString PropName, int Value);
extern PACKAGE void __fastcall fcGetBooleanProps(Classes::TPersistent* Component, Classes::TStrings* List);
extern PACKAGE tagLOGFONTA __fastcall fcLogFont();
extern PACKAGE void __fastcall fcShowHint(AnsiString Hint, const Types::TPoint &Coord);
extern PACKAGE void __fastcall fcPaintGraphic(Graphics::TGraphic* AGraphic, bool Modal);
extern PACKAGE void __fastcall fcPaintCanvas(Graphics::TCanvas* ACanvas, bool Modal);
extern PACKAGE void __fastcall fcPaintDC(HDC DC, bool Modal);
extern PACKAGE void __fastcall fcPaintRegion(HRGN Rgn, bool DoOffset, bool ShowModal);
extern PACKAGE void __fastcall fcGetChildRegions(Controls::TWinControl* Control, bool Transparent, HRGN Rgn, const Types::TPoint &Offset, int Flags);
extern PACKAGE void __fastcall fcAnimateControls(Controls::TWinControl* Control, Graphics::TCanvas* ControlCanvas, Classes::TList* AnimateList, int Interval, int Steps, TfcSetBoundsProc SetBoundsProc);
extern PACKAGE TfcInteger __fastcall fcWithInteger(int Value);
extern PACKAGE Types::TRect __fastcall fcCombineRect(const Types::TRect &r1, const Types::TRect &r2);
extern PACKAGE void __fastcall fcClipBitmapToRegion(Fcbitmap::TfcBitmap* Bitmap, HRGN Rgn);
extern PACKAGE Graphics::TColor __fastcall fcRGBToBGR(Graphics::TColor Color);
extern PACKAGE void __fastcall fcInvalidateChildren(HWND Control);
extern PACKAGE Types::TRect __fastcall fcUnionRect(const Types::TRect &R1, const Types::TRect &R2);
extern PACKAGE bool __fastcall fcRectEmpty(const Types::TRect &r);
extern PACKAGE void __fastcall fcInvalidateOverlappedWindows(HWND ParentHwnd, HWND FirstChild);
extern PACKAGE void __fastcall fcParentInvalidate(Controls::TControl* Control, bool Erase);
extern PACKAGE void __fastcall fcPaintTo(Controls::TWinControl* Control, Graphics::TCanvas* Canvas, int X, int Y);
extern PACKAGE void __fastcall fcBufferredAnimation(Graphics::TCanvas* ControlCanvas, Classes::TList* AnimateList, int Interval, int Steps);
extern PACKAGE Byte __fastcall fcHighestRGBVal(Graphics::TColor Color);
extern PACKAGE void __fastcall fcDrawMask(Graphics::TCanvas* Canvas, const Types::TRect &ARect, Graphics::TBitmap* Bitmap, Graphics::TBitmap* Mask, bool Buffer);
extern PACKAGE Types::TRect __fastcall fcProportionalRect(const Types::TRect &OrigRect, int Width, int Height);
extern PACKAGE Types::TRect __fastcall fcProportionalCenterRect(const Types::TRect &OrigRect, int Width, int Height);
extern PACKAGE bool __fastcall fcUpdatedComCtlVersion(void);
extern PACKAGE void __fastcall fcPatternFill(void * Pattern, int SizeOfPat, void * Dst, int SizeOfDst);
extern PACKAGE void __fastcall fcMakePagesResourceFriendly(Comctrls::TPageControl* PageControl);
extern PACKAGE void __fastcall fcCreateDisabledBitmap(Graphics::TBitmap* SrcBm, Graphics::TBitmap* DstBm);
extern PACKAGE void __fastcall fcDrawEllipsis(Graphics::TCanvas* Canvas, const Types::TRect &R, Buttons::TButtonState State, bool Enabled, bool Transparent, bool FlatButtonTransparent, Controls::TControlState ControlState);
extern PACKAGE void __fastcall fcDrawDropDownArrow(Graphics::TCanvas* Canvas, const Types::TRect &R, Buttons::TButtonState State, bool Enabled, Controls::TControlState ControlState);
extern PACKAGE Graphics::TColor __fastcall fcExecuteColorDialog(Graphics::TColor AColor);
extern PACKAGE Classes::TComponent* __fastcall fcComponentFromString(Classes::TComponent* Root, AnsiString Value);
extern PACKAGE AnsiString __fastcall fcStringFromComponent(Classes::TComponent* Root, Classes::TComponent* Value);
extern PACKAGE void __fastcall fcCalcButtonLayout(const Types::TPoint &TopLeft, Types::PRect TextRect, Types::PRect GlyphRect, const tagSIZE &TextSize, const tagSIZE &GlyphSize, Buttons::TButtonLayout Layout, int Spacing);
extern PACKAGE AnsiString __fastcall fcGetRegionData(HRGN Rgn);
extern PACKAGE HBRUSH __fastcall fcGetDitherBrush(void);
extern PACKAGE void __fastcall fcDither(Graphics::TCanvas* ACanvas, const Types::TRect &Rect, Graphics::TColor Color1, Graphics::TColor Color2);
extern PACKAGE void __fastcall fcTileDraw(Graphics::TGraphic* Source, Graphics::TCanvas* Dest, const Types::TRect &DstRect);
extern PACKAGE Classes::TComponent* __fastcall fcFindGlobalComponent(const AnsiString Name);
extern PACKAGE void __fastcall fcHelp(HWND Handle, char * HelpTopic);
extern PACKAGE bool __fastcall fcIsDesigning(Controls::TControl* control);
extern PACKAGE void __fastcall fcDisableParentClipping(Controls::TWinControl* Parent);
extern PACKAGE bool __fastcall fcIsInGrid(Controls::TWinControl* dtp);
extern PACKAGE AnsiString __fastcall fcstrRemoveChar(AnsiString str, char removeChar);
extern PACKAGE AnsiString __fastcall fcGetWord(AnsiString s, int &APos, TfcGetWordOptions Options, const fcstrCharSet &DelimSet);
extern PACKAGE char __fastcall fcMessageCodeToChar(Word code);
extern PACKAGE bool __fastcall fcUseThemes(Controls::TControl* Control);
extern PACKAGE void __fastcall fcUpdateController(Classes::TComponent* &FController, Classes::TComponent* Value, Controls::TControl* Control);
extern PACKAGE Classes::TList* __fastcall fcGetControlList(Classes::TComponent* Controller);

}	/* namespace Fccommon */
#if !defined(NO_IMPLICIT_NAMESPACE_USE)
using namespace Fccommon;
#endif
#pragma option pop	// -w-
#pragma option pop	// -Vx

#pragma delphiheader end.
//-- end unit ----------------------------------------------------------------
#endif	// fcCommon
