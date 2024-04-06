(*
Copyright (c) 1998-2008 by HiComponents. All rights reserved.

This software comes without express or implied warranty.
In no case shall the author be liable for any damage or unwanted behavior of any
computer hardware and/or software.

HiComponents grants you the right to include the compiled component
in your application, whether COMMERCIAL, SHAREWARE, or FREEWARE,
BUT YOU MAY NOT DISTRIBUTE THIS SOURCE CODE OR ITS COMPILED .DCU IN ANY FORM.

ImageEn, IEvolution and ImageEn ActiveX may not be included in any commercial,
shareware or freeware libraries or components.

email: support@hicomponents.com

http://www.hicomponents.com
*)

unit iemview;

{$R-}
{$Q-}

{$I ie.inc}

{$IFDEF IEINCLUDEMULTIVIEW}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  ExtCtrls, Clipbrd, stdctrls, hyieutils, hyiedefs, ImageEnView, ImageEnProc, ImageEnIO, ieview, iemio, iepresetim, ievect;

type

{!!
<FS>TIEImageSelectEvent

<FM>Declaration<FC>
type TIEImageSelectEvent = procedure(Sender: TObject; idx: integer) of object;

<FM>Description<FN>
This event occurs whenever the user selects or deselect an image
idx is the index of the selected image.
!!}
  TIEImageSelectEvent = procedure(Sender: TObject; idx: integer) of object;

{!!
<FS>TIEImageIDRequestEvent

<FM>Declaration<FC>
type TIEImageIDRequestEvent = procedure(Sender: TObject; ID: integer; var Bitmap: TBitmap) of object;

<FM>Description<FN>
ID is the ID you have specified in <A TImageEnMView.ImageID> property;
Bitmap is the bitmap to show. The bitmap is copied in <A TImageEnMView>, and freed when it is no longer necessary.
!!}
  TIEImageIDRequestEvent = procedure(Sender: TObject; ID: integer; var Bitmap: TBitmap) of object;

{!!
<FS>TIEImageIDRequestExEvent

<FM>Declaration<FC>
type TIEImageIDRequestExEvent = procedure(Sender: TObject; ID: integer; var Bitmap: <A TIEBitmap>) of object;

<FM>Description<FN>
ID is the ID you have specified in <A TImageEnMView.ImageID> property;
Bitmap is the bitmap to show. The bitmap is copied in <A TImageEnMView>, and freed when it is no longer necessary.
!!}
  TIEImageIDRequestExEvent = procedure(Sender: TObject; ID: integer; var Bitmap: TIEBitmap) of object;

{!!
<FS>TIEMProgressEvent

<FM>Declaration<FC>
TIEMProgressEvent = procedure(Sender: TObject; per: integer; idx: integer) of object;

<FM>Description<FN>
This event occurs during PaintTo (idx=index of the image to paint).
<FC>per<FN> is the percentage of the progress (100 indicates paint is finished).
<FC>idx<FN> is the index of the image currently being drawn.
!!}
  TIEMProgressEvent = procedure(Sender: TObject; per: integer; idx: integer) of object;

{!!
<FS>TIEWrongImageEvent

<FM>Declaration<FC>
TIEWrongImageEvent = procedure(Sender: TObject; OutBitmap: <A TIEBitmap>; idx: integer; var Handled: boolean) of object;

<FM>Description<FN>
idx specifies the image index.
If you change the OutBitmap, also set Handled to True, otherwise <A TImageEnMView> replaces the bitmap with a question mark image.
!!}
  TIEWrongImageEvent = procedure(Sender: TObject; OutBitmap: TIEBitmap; idx: integer; var Handled: boolean) of object;

{!!
<FS>TIEImageDrawEvent

<FM>Declaration<FC>
TIEImageDrawEvent = procedure(Sender: TObject; idx: integer; Left, Top: integer; Canvas: TCanvas) of object;

<FM>Description<FN>
idx is the index of the image to paint (painted when this event is called);
Left is the X coordinate of the left-top side of the thumbnail
Top is the Y coordinate of the left-top side of the thumbnail.
Canvas is the canvas to draw to.
!!}
  TIEImageDrawEvent = procedure(Sender: TObject; idx: integer; Left, Top: integer; Canvas: TCanvas) of object;

{!!
<FS>TIEImageDraw2Event

<FM>Declaration<FC>
TIEImageDraw2Event = procedure(Sender: TObject; idx: integer; Left, Top: integer; ImageRect:TRect; Canvas: TCanvas) of object;

<FM>Description<FN>
idx is the index of the image to paint (painted when this event is called);
Left is the X coordinate of the left-top side of the thumbnail
Top is the Y coordinate of the left-top side of the thumbnail.
ImageRect is the actual image rectangle.
Canvas is the canvas to draw to.
!!}
  TIEImageDraw2Event = procedure(Sender: TObject; idx: integer; Left, Top: integer; ImageRect:TRect; Canvas: TCanvas) of object;


{!!                    
<FS>TIEImageDrawEventEx

<FM>Declaration<FC>
}
  TIEImageDrawEventEx = procedure(Sender: TObject; idx: integer; Left, Top: integer; Dest: TBitmap; var ThumbRect:TRect) of object;
{!!}

{!!
<FS>TIEImageEnMViewSortCompare

<FM>Declaration<FC>
TIEImageEnMViewSortCompare = function(Item1, Item2: integer): Integer;

<FM>Description<FN>
This is a comparison function that indicates how the items are to be ordered.
The function returns < 0 if Item1 is less and Item2, 0 if they are equal and > 0 if Item1 is greater than Item2.
!!}
  TIEImageEnMViewSortCompare = function(Item1, Item2: integer): Integer;

{!!
<FS>TIEImageEnMViewSortCompareEx

<FM>Declaration<FC>
TIEImageEnMViewSortCompareEx = function(Item1, Item2: integer): Integer of object;

<FM>Description<FN>
This is a comparison function that indicates how the items are to be ordered.
The function returns < 0 if Item1 is less and Item2, 0 if they are equal and > 0 if Item1 is greater than Item2.
!!}
  TIEImageEnMViewSortCompareEx = function(Item1, Item2: integer): Integer of object;


{!!
<FS>TIEStoreType

<FM>Declaration<FC>
type TIEStoreType = (ietNormal, ietThumb);

<FM>Description<FN>
Specifies how load the images.
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ietNormal</C> <C>The image is stored with SetXXXX methods. A copy of the full bitmap is maintained.</C> </R>
<R> <C>ietThumb</C> <C>The image is stored with SetXXXX methods. A copy of the sub-sampled bitmap is maintained (size is <A TImageEnMView.ThumbWidth> and <A TImageEnMView.ThumbHeight>).</C> </R>
</TABLE>
!!}
  TIEStoreType = (
    // the image will be full loaded
    ietNormal,
    // the image will loaded as thumbnail (see ThumbWidth, ThumbHeight))
    ietThumb
    );

{!!
<FS>TIEMTextPos

<FM>Declaration<FC>
}
  TIEMTextPos = (iemtpTop, iemtpBottom, iemtpInfo);
{!!}

{!!
<FS>TIEMTruncSide

<FM>Declaration<FC>
}
  TIEMTruncSide = (iemtsLeft, iemtsRight);
{!!}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TIEMText

{!!
<FS>TIEMText

<FM>Description<FN>
TIEMText is an object that specifies how the text will be written inside a thumbnail.
Three <A TImageEnMView> properties contains this object: <A TImageEnMView.ImageTopText>, <A TImageEnMView.ImageBottomText>, <A TImageEnMView.ImageInfoText>.

<FM>Properties<FN>

    <A TIEMText.Caption>
    <A TIEMText.Font>
    <A TIEMText.Background>
    <A TIEMText.BackgroundStyle>
    <A TIEMText.TruncSide>
!!}
  TIEMText = class
  private
    fCaption: WideString;
    fFont: TFont;
    fBackground: TColor;
    fBackgroundStyle: TBrushStyle;
    fOwner: TComponent;
    fPos: TIEMTextPos;
    fTruncSide: TIEMTruncSide;
    procedure SetCaption(value: WideString);
  public
    constructor Create(Owner: TComponent; Position: TIEMTextPos);
    destructor Destroy; override;
    procedure SaveToStream(Stream:TStream);
    function LoadFromStream(Stream:TStream):boolean;

{!!
<FS>TIEMText.Caption

<FM>Declaration<FC>
property Caption: WideString;

<FM>Description<FN>
Specifies the text to write.
!!}
    property Caption: WideString read fCaption write SetCaption;

{!!
<FS>TIEMText.Font

<FM>Declaration<FC>
property Font: TFont;

<FM>Description<FN>
Font is the text font (and color).
!!}
    property Font: TFont read fFont;

{!!
<FS>TIEMText.Background

<FM>Declaration<FC>
property Background: TColor;

<FM>Description<FN>
Background is the background color.
!!}
    property Background: TColor read fBackground write fBackground;

{!!
<FS>TIEMText.BackgroundStyle

<FM>Declaration<FC>
property BackgroundStyle:TBrushStyle;

<FM>Description<FN>
BackgroundStyle specifies the text background style.
!!}
    property BackgroundStyle:TBrushStyle read fBackgroundStyle write fBackgroundStyle;

{!!
<FS>TIEMText.TruncSide

<FM>Declaration<FC>
property TruncSide:<A TIEMTruncSide>;

<FM>Description<FN>
TruncSide specifies the side to trunc the text when this is too large to be displayed.
!!}
    property TruncSide:TIEMTruncSide read fTruncSide write fTruncSide;

  end;

// TIEMText
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



  // this structure contains single image info (except bitmaps)
  TIEImageInfo = record
    // the parent TImageEnMView object
    parent: TObject; // the TImageEnMView parent object
    // image contained in fImageList[]
    // if image is nil the image is not handled by component
    image: pointer;
    // image contained in fCacheList[]
    // if nil we need to repaint the image
    cacheImage: pointer;
    // top/left position
    X, Y: integer;
    // row/col position (calculated by UpdateCoords)
    row, col: integer;
    // image background color
    Background: TColor;
    // File name (''=none) to load.
    name: pwchar;
    // Image ID (-1=none).
    ID: integer;
    // Delay time, display time for this image (in millisecs)
    DTime: integer;
    // Texts info
    TopText: TIEMText;
    BottomText: TIEMText;
    InfoText: TIEMText;
    // last painted internal rect (this the internal image when there is a shadow)
    internalrect:TRect;
  end;

  PIEImageInfo = ^TIEImageInfo;

  // automatic interactions with mouse
{!!
<FS>TIEMMouseInteractItems

<FM>Declaration<FC>
}
  TIEMMouseInteractItems = (
    mmiScroll, // Hand-scroll. Mouse drag scrolls images.
    mmiSelect // Images selection. Mouse click select images.
    );
{!!}

{!!
<FS>TIEMMouseInteract

<FM>Declaration<FC>
type TIEMMouseInteract = set of <A TIEMMouseInteractItems>;

<FM>Description<FN>
mmiScroll: mouse drag scrolls images.
mmiSelect: mouse click selects images.
!!}
  TIEMMouseInteract = set of TIEMMouseInteractItems;

{!!
<FS>TIEMKeyInteractItems

<FM>Declaration<FC>
}
  // automatic interaction with keyboard
  TIEMKeyInteractItems = (
    mkiMoveSelected // move selected item (up,down,left,right)
    );
{!!}

{!!
<FS>TIEMKeyInteract

<FM>Declaration<FC>
TIEMKeyInteract = set of <A TIEMKeyInteractItems>;
!!}
  TIEMKeyInteract = set of TIEMKeyInteractItems;

{!!
<FS>TIEMDisplayMode

<FM>Declaration<FC>
type TIEMDisplayMode = (mdGrid, mdSingle);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>mdGrid</C> <C>shows images in a grid of GridWidth columns.</C> </R>
<R> <C>mdSingle</C> <C>shows images overlapped: only one (VisibleFrame property) is visible.</C> </R>
</TABLE>

!!}
  TIEMDisplayMode = (
    mdGrid,   // grid (active fGridWidth property)
    mdSingle  // single frame
    );

{!!
<FS>TIESeek

<FM>Declaration<FC>
TIESeek = (iskLeft, iskRight, iskUp, iskDown, iskFirst, iskLast, iskPagDown, iskPagUp);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iskLeft</C> <C>move to the left (one column)</C> </R>
<R> <C>iskRight</C> <C>move to the right (one column)</C> </R>
<R> <C>iskUp</C> <C>move up (one row)</C> </R>
<R> <C>iskDown</C> <C>move down (one row)</C> </R>
<R> <C>iskFirst</C> <C>move to first image</C> </R>
<R> <C>iskLast</C> <C>move to the last image</C> </R>
<R> <C>iskPagDown</C> <C>move to the next page</C> </R>
<R> <C>iskPagUp</C> <C>move the the previous page</C> </R>
</TABLE>
!!}
  TIESeek = (iskLeft, iskRight, iskUp, iskDown, iskFirst, iskLast, iskPagDown, iskPagUp);

{!!
<FS>TIEMStyle

<FM>Declaration<FC>
TIEMStyle = (iemsFlat, iemsACD);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iemsFlat</C> <C>flat style (old ImageEn style)</C></R>
<R> <C>iemsACD</C> <C>3D style (default)</C></R>
</TABLE>
!!}
  TIEMStyle = (iemsFlat, iemsACD);

{!!
<FS>TIESStyle

<FM>Declaration<FC>
TIESStyle = (iessAround, iessACD);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iessAround</C> <C>Draw a rectangle around the thumbnail.</C> </R>
<R> <C>iessACD</C> <C>Use <A TImageEnMView.HighlightColor> for background and <A TImageEnMView.HighlightTextColor> for text (default).</C> </R>
</TABLE>
!!}
  TIESStyle = (iessAround, iessACD);

{!!
<FS>TIEMultiSelectionOptions

<FM>Declaration<FC>
}
  TIEMultiSelectionOptions = set of ( iemoRegion, iemoSelectOnMouseUp );
{!!}

{!!
<FS>TIEPlayFrameEvent

<FM>Declaration<FC>
}
TIEPlayFrameEvent = procedure(Sender: TObject; frameIndex: integer) of object;
{!!}


  TImageEnMView = class;

  TIEStarter = class(TThread)
  public
    mview: TImageEnMView;
    procedure Execute; override;
  end;

{!!
<FS>TImageEnMView

<FM>Description<FN>
TImageEnMView component is the same as <A TImageEnView>, but it can handle multiple images.
TImageEnMView can display images in rows, in columns, in a grid or in a single frame. The images can be animated: if you choose to show a single frame, you can view an animated sequence (as a Gif or an AVI). Each image has assigned a delay time.

The images can be stored fully, as thumbnails (a sub-resampled image of the original), or loaded when displayed (you have to specify only the file name), or upon request (whenever an image is to be shown, an event is generated).

If you choose, the user can select an image: selected images will have a bordered frame.
You can also specify a custom function whenever an image is shown (i.e., to paint the image index near the image).

Note: Users often attach a <A TImageEnIO> component to TImageEnMView component. This is not correct. The <A TImageEnMIO> component must be attached only to a TImageEnMView component, or you can use embedded <A TImageEnMView.MIO> object.

<FM>Properties<FN>

  <A TImageEnMView.Bitmap>
  <A TImageEnMView.BackgroundStyle>
  <A TImageEnMView.BottomGap>
  <A TImageEnMView.DisplayMode>
  <A TImageEnMView.DrawImageBackground>
  <A TImageEnMView.EnableAdjustOrientation>
  <A TImageEnMView.EnableAlphaChannel>
  <A TImageEnMView.EnableImageCaching>
  <A TImageEnMView.EnableLoadEXIFThumbnails>
  <A TImageEnMView.EnableMultiSelect>
  <A TImageEnMView.EnableResamplingOnMinor>
  <A TImageEnMView.FillThumbnail>
  <A TImageEnMView.FlatScrollBars>
  <A TImageEnMView.GradientEndColor>
  <A TImageEnMView.GridWidth>
  <A TImageEnMView.HighlightColor>
  <A TImageEnMView.HighlightTextColor>
  <A TImageEnMView.HorizBorder>
  <A TImageEnMView.HScrollBarParams>
  <A TImageEnMView.KeyInteract>
  <A TImageEnMView.IEBitmap>
  <A TImageEnMView.ImageBackground>
  <A TImageEnMView.ImageBitCount>
  <A TImageEnMView.ImageBottomText>
  <A TImageEnMView.ImageCacheSize>
  <A TImageEnMView.ImageCol>
  <A TImageEnMView.ImageCount>
  <A TImageEnMView.ImageDelayTime>
  <A TImageEnMView.ImageEnVersion>
  <A TImageEnMView.ImageFileName>
  <A TImageEnMView.ImageHeight>
  <A TImageEnMView.ImageID>
  <A TImageEnMView.ImageInfoText>
  <A TImageEnMView.ImageOriginalHeight>
  <A TImageEnMView.ImageOriginalWidth>
  <A TImageEnMView.ImageRow>
  <A TImageEnMView.ImageTopText>
  <A TImageEnMView.ImageWidth>
  <A TImageEnMView.ImageX>
  <A TImageEnMView.ImageY>
  <A TImageEnMView.LoadIconOnUnknownFormat>
  <A TImageEnMView.LookAhead>
  <A TImageEnMView.JobsRunning>
  <A TImageEnMView.JobsWaiting>
  <A TImageEnMView.LockPaintCount>
  <A TImageEnMView.MaintainInvisibleImages>
  <A TImageEnMView.MaximumViewX>
  <A TImageEnMView.MaximumViewY>
  <A TImageEnMView.MIO>
  <A TImageEnMView.MouseInteract>
  <A TImageEnMView.MultiSelectedimagesCount>
  <A TImageEnMView.MultiSelectedImages>
  <A TImageEnMView.MultiSelecting>
  <A TImageEnMView.MultiSelectionOptions>
  <A TImageEnMView.Playing>
  <A TImageEnMView.PlayLoop>
  <A TImageEnMView.Proc>
  <A TImageEnMView.RemoveCorrupted>
  <A TImageEnMView.ScrollBars>
  <A TImageEnMView.ScrollBarsAlwaysVisible>
  <A TImageEnMView.SelectedImage>
  <A TImageEnMView.SelectionColor>
  <A TImageEnMView.SelectionStyle>
  <A TImageEnMView.SelectionWidth>
  <A TImageEnMView.SelectionWidthNoFocus>
  <A TImageEnMView.SelectionAntialiased>
  <A TImageEnMView.SoftShadow>
  <A TImageEnMView.StoreType>
  <A TImageEnMView.Style>
  <A TImageEnMView.ThreadPoolSize>
  <A TImageEnMView.ThumbHeight>
  <A TImageEnMView.ThumbnailDisplayFilter>
  <A TImageEnMView.ThumbnailFrameRect>
  <A TImageEnMView.ThumbnailFrameSelected>
  <A TImageEnMView.ThumbnailFrame>
  <A TImageEnMView.ThumbnailResampleFilter>
  <A TImageEnMView.ThumbnailsBackground>
  <A TImageEnMView.ThumbnailsBackgroundStyle>
  <A TImageEnMView.ThumbnailsBorderColor>
  <A TImageEnMView.ThumbnailsBorderWidth>
  <A TImageEnMView.ThumbnailsInternalBorderColor>
  <A TImageEnMView.ThumbnailsInternalBorder>
  <A TImageEnMView.ThumbsRounded>
  <A TImageEnMView.ThumbWidth>
  <A TImageEnMView.TransitionDuration>
  <A TImageEnMView.TransitionEffect>
  <A TImageEnMView.TransitionRunning>
  <A TImageEnMView.UpperGap>
  <A TImageEnMView.VertBorder>
  <A TImageEnMView.ViewX>
  <A TImageEnMView.ViewY>
  <A TImageEnMView.VisibleFrame>
  <A TImageEnMView.VisibleSelection>
  <A TImageEnMView.VScrollBarParams>
  <A TImageEnMView.WallPaperStyle>
  <A TImageEnMView.WallPaper>

<FM>Methods<FN>

  <A TImageEnMView.AppendImage>
  <A TImageEnMView.AppendImage2>
  <A TImageEnMView.BeginSelectImages>
  <A TImageEnMView.CenterFrame>
  <A TImageEnMView.CenterSelected>
  <A TImageEnMView.ClearImageCache>
  <A TImageEnMView.Clear>
  <A TImageEnMView.CopyToIEBitmap>
  <A TImageEnMView.CreateMorphingSequence>
  <A TImageEnMView.DeleteImage>
  <A TImageEnMView.DeleteSelectedImages>
  <A TImageEnMView.DeSelect>
  <A TImageEnMView.EndSelectImages>
  <A TImageEnMView.FillFromDirectory>
  <A TImageEnMView.GetBitmap>
  <A TImageEnMView.GetImageToFile>
  <A TImageEnMView.GetImageToStream>
  <A TImageEnMView.GetImageVisibility>
  <A TImageEnMView.GetLastOpIdx>
  <A TImageEnMView.GetLastOp>
  <A TImageEnMView.GetTIEBitmap>
  <A TImageEnMView.IEBeginDrag>
  <A TImageEnMView.IEEndDrag>
  <A TImageEnMView.ImageAtGridPos>
  <A TImageEnMView.ImageAtPos>
  <A TImageEnMView.InsertImageEx>
  <A TImageEnMView.InsertImage>
  <A TImageEnMView.InsertingPoint>
  <A TImageEnMView.IsSelected>
  <A TImageEnMView.IsVisible>
  <A TImageEnMView.LoadFromFileOnDemand>
  <A TImageEnMView.LoadSnapshot>
  <A TImageEnMView.LockPaint>
  <A TImageEnMView.MoveImage>
  <A TImageEnMView.MoveSelectedImagesTo>
  <A TImageEnMView.MultiSelectSortList>
  <A TImageEnMView.PrepareSpaceFor>
  <A TImageEnMView.ReleaseBitmap>
  <A TImageEnMView.ReloadImage>
  <A TImageEnMView.SaveSnapshot>
  <A TImageEnMView.SelectAll>
  <A TImageEnMView.SelectSeek>
  <A TImageEnMView.SetChessboardStyle>
  <A TImageEnMView.SetIEBitmap>
  <A TImageEnMView.SetImageEx>
  <A TImageEnMView.SetImageFromFile>
  <A TImageEnMView.SetImageFromStream>
  <A TImageEnMView.SetImageRect>
  <A TImageEnMView.SetImage>
  <A TImageEnMView.SetPresetThumbnailFrame>
  <A TImageEnMView.SetViewXY>
  <A TImageEnMView.Sort>
  <A TImageEnMView.UnLockPaint>
  <A TImageEnMView.UnSelectImage>
  <A TImageEnMView.Update>
  <A TImageEnMView.UpdateCoords>
  <A TImageEnMView.UpdateImage>

<FM>Events<FN>

  <A TImageEnMView.OnAllDisplayed>
  <A TImageEnMView.OnBeforeImageDrawEx>
  <A TImageEnMView.OnBeforeImageDraw>
  <A TImageEnMView.OnDrawProgress>
  <A TImageEnMView.OnFinishWork>
  <A TImageEnMView.OnImageDeselect>
  <A TImageEnMView.OnImageDraw>
  <A TImageEnMView.OnImageDraw2>
  <A TImageEnMView.OnImageIDRequestEx>
  <A TImageEnMView.OnImageIDRequest>
  <A TImageEnMView.OnImageSelect>
  <A TImageEnMView.OnIOProgress>
  <A TIEView.OnMouseEnter>
  <A TIEView.OnMouseLeave>
  <A TImageEnMView.OnPlayFrame>
  <A TImageEnMView.OnViewChange>
  <A TImageEnMView.OnWrongImage>

!!}
  TImageEnMView = class(TIEView)
  private
    /////////////////////////
    // P R I V A T E
    fMDown: boolean;
    fBackBuffer: TIEBitmap;
    fHSVX1, fHSVY1: integer;            // view in mouse down
    fScrollBars: TScrollStyle;
    fRXScroll, fRYScroll: double;
    fViewX, fViewY: integer;
    fImageList: TIEVirtualImageList;
    fCacheList: TIEVirtualImageList;
    fStoreType: TIEStoreType;           // how to store images
    fThumbWidth, fThumbHeight: integer; // thumbsnails size
    fHorizBorder: integer;              // horizontal border
    fVertBorder: integer;               // vertical border
    fVWidth, fVHeight: integer;         // virtual space size (Updated by UpdateCoords)
    fOnViewChange: TViewChangeEvent;
    fOnDrawProgress: TIEMProgressEvent;
    fOnWrongImage: TIEWrongImageEvent;
    fHDrawDib: HDRAWDIB;                // to draw on display
    fOnImageIDRequest: TIEImageIDRequestEvent;
    fOnImageIDRequestEx: TIEImageIDRequestExEvent;
    fOnImageDraw: TIEImageDrawEvent;
    fOnImageDraw2: TIEImageDraw2Event;
    fOnIOProgress: TIEProgressEvent;
    fBottomGap: integer;
    fUpperGap: integer;
    fDisplayMode: TIEMDisplayMode;      // display mode
    fGridWidth: integer;                // number of horizontal images (1=all vertical, other is a grid)
    fHSX1, fHSY1: integer;              // mouse down coordinates
    fHSIDX, fLHSIDX: integer;
    fHSIDX2:integer;
    fImageEnIO: TImageEnIO;             // to load images
    fLockPaint: integer;                // 0=paint unlocked
    fRemoveCorrupted: boolean;          // works only when ImageFileName[] contains valid names
    fDrawImageBackground: boolean;      // true=draw image background  false=draw component background
    fScrollBarsAlwaysVisible: boolean;  // true if the scrollbars are always visible
    fVScrollBarParams: TIEScrollBarParams;
    fHScrollBarParams: TIEScrollBarParams;
    fThumbnailResampleFilter: TResampleFilter;
    fThumbnailDisplayFilter: TResampleFilter;
    fDestroying: boolean;               // component is destroying
    fStyle: TIEMStyle;
    fSelectionStyle: TIESStyle;
    fDoubleClicking: boolean;
    fThumbnailsBackground: TColor;
    fThumbnailsBorderWidth: integer;
    fThumbnailsBorderColor: TColor;
    fThumbnailsInternalBorder: boolean;
    fThumbnailsInternalBorderColor: TColor;
    fUpdating: boolean;
    fEnableResamplingOnMinor: boolean;  // Enable resampling when the image has width and height < of thumbnail width and height
    fThumbsRounded:integer;
    fEnableAdjustOrientation:boolean;
    fEnableLoadEXIFThumbnails:boolean;  // if we need thumbnails, allow to use EXIF thumbnails
    // when true (default) the image will be resized to the thumbnail sizes
    fEnableAlphaChannel: boolean;
    fBackgroundStyle: TIEBackgroundStyle;
    fThumbnailsBackgroundStyle: TIEBackgroundStyle;
    fFillThumbnail: boolean;
    fCurrentCompare: TIEImageEnMViewSortCompare;
    fCurrentCompareEx: TIEImageEnMViewSortCompareEx;
    // Multithread
    fThreadPoolSize: integer;           // maximum threads count (0=disable multithread)
    fThreadPoolIO: TList;               // list of TImageEnIO objects (maximum size is fThreadPoolSize)
    fThreadRequests: TList;             // list of integers, the indexes of the image to load (no maximum size)
    fThreadStarter: TIEStarter;         // starter main thread
    fLookAheadList:TList;               // list of lookaheaded images (index of)
    // Wall paper
    fWallPaper: TPicture;
    fWallPaperStyle: TIEWallPaperStyle;
    // Selections
    fSelectedItem: integer;             // selected image index (-1 none)
    fVisibleSelection: boolean;
    fSelectionWidth: integer;           // selection width with focus
    fSelectionWidthNoFocus: integer;    // selection width without focus
    fSelectionAntialiased:boolean;
    fSelectionColor: TColor;            // selection color
    fOnImageSelect: TIEImageSelectEvent;
    fOnImageDeselect: TIEImageSelectEvent;
    fMouseInteract: TIEMMouseInteract;
    fKeyInteract: TIEMKeyInteract;
    fSelectedBitmap: TIEBitmap;
    fImageCacheSize: integer;           // stored in fImageList.MaxImagesInMemory
    fMultiSelecting: boolean;
    fEnableMultiSelect: boolean;
    fHaveMultiselected: boolean;        // last mouseMove has selected images
    fSelectInclusive: boolean;          // when true reselecting an image doesn't unselect it
    fMultiSelectionOptions: TIEMultiSelectionOptions;
    fSelectImages: boolean;             // if true we are inside BeginSelectImages and EndSelectImages
    fChangedSel: boolean;               // true if the selected is changed
    fHighlightColor:TColor;             // brush color for selections
    fHighlightTextColor:TColor;         // text color for selections
    // Play
    fPlaying: boolean;                  // true=play actived
    fPlayTimer: integer;                // handle del timer (0=not allocated)
    fPlayLoop: boolean;                 // when True executes in loop
    fTimerInProgress: boolean;
    fFrame: integer;                    // current frame on single image mode
    fSaveDM: TIEMDisplayMode;           // displaymode before the animation
    fSaveSel: integer;                  // SelectedImage before the play
    // Following three fields are used by TImageEnMIO to get it updated on added or removed images.
    fLastImOp: integer;                 // last operation of insert(1)/delete(2)/move(3)/swap(4) (0=no op)
    fLastImIdx: integer;                // index of processed image by fLastImOp
    fLastImP1:integer;                  // param 1
    // transition effects
    fTransition: TIETransitionEffects;  // effect engine
    fTransitionEffect: TIETransitionType; // transition type
    fTransitionDuration: integer;       // transition duration ms
    //
    fOnProgress: TIEProgressEvent;
    fOnBeforeImageDraw: TIEImageDrawEvent;
    fOnBeforeImageDrawEx:TIEImageDrawEventEx;
    fEnableImageCaching: boolean;
    fSoftShadow: TIEVSoftShadow;
    fChessboardSize: integer;
    fChessboardBrushStyle: TBrushStyle;
    fGradientEndColor: TColor;
    fShowText: boolean;
    fSetUpperGap, fSetBottomGap: integer;
    fFlatScrollBars:boolean;
    fThumbnailFrame:TIEBitmap;
    fThumbnailFrameSelected:TIEBitmap;
    fThumbnailFrameRect:TRect;
    fDragging:boolean;
    fMultiOnDemands:TList;                // list of TImageEnIO for on demand multi page
    fMaintainInvisibleImages:integer;     // how much invisible images maintain when they are loaded on demand (-1 = maintain all)
    fLookAhead:integer;
    fOnAllDisplayed:TNotifyEvent;         // when all images are displayed
    fAllDisplayed:boolean;
    fUserAction:boolean;                  // if true user has made an action with mouse or keyboard, events fire
    fOnFinishWork: TNotifyEvent;
    fOnPlayFrame:TIEPlayFrameEvent;
    fThreadCS: TRTLCriticalSection; // critical section
    fLoadIconOnUnknownFormat:boolean;
    procedure GetMaxViewXY(var mx, my: integer);
    procedure SetViewX(v: integer);
    procedure SetViewY(v: integer);
    function GetImageX(idx: integer): integer;
    function GetImageY(idx: integer): integer;
    function GetImageCol(idx: integer): integer;
    function GetImageRow(idx: integer): integer;
    procedure SetThumbWidth(v: integer);
    procedure SetThumbHeight(v: integer);
    function GetImageCount: integer;
    procedure SetImageFileName(idx: integer; v: WideString);
    function GetImageFileName(idx: integer): WideString;
    procedure SetImageID(idx, v: integer);
    function GetImageID(idx: integer): integer;
    procedure SetHorizBorder(v: integer);
    procedure SetVertBorder(v: integer);
    function DeleteImageNU(idx: integer): boolean;
    procedure SetVisibleSelection(v: boolean);
    procedure SetSelectionWidth(v: integer);
    procedure SetSelectionWidthNoFocus(v: integer);
    procedure SetSelectionAntialiased(v:boolean);
    procedure SetSelectionColor(v: TColor);
    procedure SetSelectedItem(v: integer);
    procedure SetBottomGap(v: integer);
    procedure SetUpperGap(v: integer);
    procedure SetImageBackground(idx: integer; v: TColor);
    function GetImageBackground(idx: integer): TColor;
    procedure SetImageDelayTime(idx: integer; v: integer);
    function GetImageDelayTime(idx: integer): integer;
    function ObtainImageNow(idx: integer): boolean;
    function ObtainImageThreaded(idx: integer): boolean;
    procedure SetDisplayMode(v: TIEMDisplayMode);
    procedure SetGridWidth(v: integer);
    procedure SetPlaying(v: boolean);
    procedure PlayFrame;
    procedure SetSelectedItemNU(v: integer);
    procedure DeselectNU;
    procedure SetVisibleFrame(v: integer);
    function GetMouseInteract: TIEMMouseInteract;
    function GetKeyInteract: TIEMKeyInteract;
    procedure SetRemoveCorrupted(v: boolean);
    procedure SetDrawImageBackground(v: boolean);  
    function GetScrollBarsAlwaysVisible: boolean;
    procedure SetScrollBarsAlwaysVisible(v: boolean);
    procedure SetImageCacheSize(v: integer);
    function GetTransitionRunning: boolean;
    function GetImageTopText(idx: integer): TIEMText;
    function GetImageBottomText(idx: integer): TIEMText;
    function GetImageInfoText(idx: integer): TIEMText;
    procedure SetStyle(value: TIEMStyle);
    procedure SetSelectionStyle(value: TIESStyle);
    procedure SetEnableMultiSelect(Value: boolean);
    function GetMultiSelectedImages(index: integer): integer;
    function GetMultiSelectedImagesCount: integer;
    procedure SetThumbnailsBorderWidth(Value: integer);
    procedure SetThumbnailsBorderColor(Value: TColor);
    procedure SetThumbnailsInternalBorder(Value: boolean);
    procedure SetThumbnailsInternalBorderColor(Value: TColor);
    procedure SetEnableResamplingOnMinor(Value: boolean);
    procedure DrawImage(DestBitmap: TBitmap; info: PIEImageInfo; IsSelected: boolean; Index: integer);
    procedure ThreadFinish(Sender: TObject);
    function GetImageBitCount(idx: integer): integer;
    function GetMaximumViewX: integer;
    function GetMaximumViewY: integer;
    procedure SetEnableImageCaching(v: boolean);
    function SetImageFromStreamOrFile(idx: integer; Stream: TStream; const FileName: WideString): boolean;
    procedure SetEnableAlphaChannel(v: boolean);
    procedure SetBackgroundStyle(v: TIEBackgroundStyle);
    procedure SetThumbnailsBackgroundStyle(v: TIEBackgroundStyle);
    procedure SetGradientEndColor(Value: TColor);
    procedure SetFillThumbnail(Value: boolean);
    procedure SetShowText(Value: boolean);
    {$ifdef IEINCLUDEFLATSB}
    procedure SetFlatScrollBars(Value:boolean);
    {$endif}
    function GetJobsRunning:integer;
    function GetJobsWaiting:integer;
    function SortCompareFunction(index1,index2:integer):integer;
    function GetOnDemandIO(const filename:WideString; var FrameIndex:integer):TImageEnIO;
    procedure ClearOnDemandIOList;
    procedure LoadMultiOnDemand(io:TImageEnIO; frameindex:integer; var dt:integer);
    function IsOnDemand(info:PIEImageInfo):boolean;
    function IsLookAhead(idx:integer):boolean;
    procedure SetOnFinishWork(v:TNotifyEvent); virtual;
    function GetOnFinishWork:TNotifyEvent; virtual;
    function GetImageEnVersion:string;
    procedure SetImageEnVersion(Value:string);
    procedure AbortImageLoading(idx:integer);
    procedure Sort2(Compare: TIEImageEnMViewSortCompare; CompareEx: TIEImageEnMViewSortCompareEx);
  protected
    ///////////////////////
    // P R O T E C T E D
    //

    // encapsulated components
    fImageEnMIO: TImageEnMIO;
    fImageEnProc: TImageEnProc;

    // selections
    fMultiSelectedImages: TList; // array of selected images (pointer=integer=index of the selected image)

    fImageInfo: TList;                  // contains TIEImageInfo structures

    function GetImageEnMIO: TImageEnMIO; virtual;
    function GetImageEnProc: TImageEnProc; virtual;
    procedure SetScrollBars(v: TScrollStyle); virtual;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TMessage); message WM_ERASEBKGND;
    procedure WMVScroll(var Message: TMessage); message WM_VSCROLL;
    procedure WMHScroll(var Message: TMessage); message WM_HSCROLL;
    procedure WMTimer(var Message: TWMTimer); message WM_TIMER;
    procedure CMWantSpecialKey(var Msg: TCMWantSpecialKey); message CM_WANTSPECIALKEY;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    procedure WMKillFocus(var Msg: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetFocus(var Msg: TWMSetFocus); message WM_SETFOCUS;
    procedure WMMouseWheel(var Message: TMessage); message WM_MOUSEWHEEL;
    procedure ViewChange(c: integer); virtual;
    function PaletteChanged(Foreground: Boolean): Boolean; override;
    procedure SetBackGround(cl: TColor); override;
    function GetFBitmap: TBitmap; override;
    function GetIEBitmap: TIEBitmap; override;
    procedure SetMouseInteract(v: TIEMMouseInteract); virtual;
    procedure SetKeyInteract(v: TIEMKeyInteract); virtual;
    function GetImageWidth(idx: integer): integer;
    function GetImageHeight(idx: integer): integer;
    function GetImageOriginalWidth(idx: integer): integer;
    function GetImageOriginalHeight(idx: integer): integer;
    procedure SetImageOriginalWidth(idx: integer; Value: integer);
    procedure SetImageOriginalHeight(idx: integer; Value: integer);
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure SelectAtPos(X, Y: integer; Shift: TShiftState);
    procedure SetWallPaper(Value: TPicture);
    procedure SetWallPaperStyle(Value: TIEWallPaperStyle);
    function GetHasAlphaChannel: boolean; override;
    function GetAlphaChannel: TIEBitmap; override;
    procedure SetOnProgress(v: TIEProgressEvent); virtual;
    function GetOnProgress: TIEProgressEvent; virtual;
    procedure ClearThreadsAndRequests; virtual;
    procedure ClearCache;
    procedure DoWrongImage(OutBitmap: TIEBitmap; idx: integer); virtual;
    procedure DoImageSelect(idx: integer); virtual;
    procedure DoImageDeselect(idx: integer); virtual;
    {$ifdef IEDOTNETVERSION}
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    {$endif}
    procedure SwapImages(idx1,idx2:integer);
  public
    /////////////////////
    // P U B L I C
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    // display
    procedure Update; override;
    procedure UpdateEx(UpdateCache:boolean);
    procedure PaintTo(DestBitmap: TBitmap); virtual;
    procedure Paint; override;
    property ClientWidth;
    property ClientHeight;
    property ViewX: integer read fViewX write SetViewX;
    property ViewY: integer read fViewY write SetViewY;
    property MaximumViewX: integer read GetMaximumViewX;
    property MaximumViewY: integer read GetMaximumViewY;
    procedure SetViewXY(x, y: integer);
    procedure CenterSelected;
    procedure CenterFrame;
    procedure LockPaint; override;
    function UnLockPaint: integer; override;
    function NPUnLockPaint: integer; override;

{!!
<FS>TImageEnMView.LockPaintCount

<FM>Declaration<FC>
property LockPaintCount:integer;

<FM>Description<FN>
Returns lock painting state. 0=no lock, >0 locking.
<A TImageEnMView.LockPaint> increases <A TImageEnMView.LockPaintCount>, <A TImageEnMView.UnLockPaint> decreases it.
!!}
    property LockPaintCount: integer read fLockPaint;

{!!
<FS>TImageEnMView.SoftShadow

<FM>Declaration<FC>
property SoftShadow:<A TIEVSoftShadow>;

<FM>Description<FN>
SoftShadow allows painting a shadow under the thumbnails.

<IMG help_images\71.bmp>

<FM>Example<FC>
ImageEnMView.EnableAlphaChannel:=True;
ImageEnMView.SoftShadow.Enabled:=True;
!!}
    property SoftShadow: TIEVSoftShadow read fSoftShadow;

    procedure SetChessboardStyle(Size: integer; BrushStyle: TBrushStyle);

    property GradientEndColor: TColor read fGradientEndColor write SetGradientEndColor;

    property FillThumbnail: boolean read fFillThumbnail write SetFillThumbnail;

{!!
<FS>TImageEnMView.ThumbsRounded

<FM>Declaration<FC>
property ThumbsRounded:integer;

<FM>Description<FN>

If ThumbsRounded >0 it specifies that the image corners are rounded.
You get maximum round with little values, while large values makes little rounds.

<FM>Example<FC>

ImageEnMView1.ThumbsRounded:=5;
!!}
    property ThumbsRounded:integer read fThumbsRounded write fThumbsRounded;

    procedure SetPresetThumbnailFrame(PresetIndex:integer; UnSelectedColor:TColor; SelectedColor:TColor);

{!!
<FS>TImageEnMView.ThumbnailFrame

<FM>Declaration<FC>
property ThumbnailFrame:<A TIEBitmap>;

<FM>Description<FN>
Specifies a bitmap to display under the thumbnail.

<FM>Examples<FC>

ImageEnMView1.ThumbnailFrame := ImageEnViewUnSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameSelected := ImageEnViewSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameRect:=Rect(10,10,50,50);
!!}
    property ThumbnailFrame:TIEBitmap read fThumbnailFrame write fThumbnailFrame;

{!!
<FS>TImageEnMView.ThumbnailFrameSelected

<FM>Declaration<FC>
property ThumbnailFrameSelected:<A TIEBitmap>;

<FM>Description<FN>
Specifies a bitmap to display under the thumbnail when it is selected.

<FM>Examples<FC>

ImageEnMView1.ThumbnailFrame := ImageEnViewUnSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameSelected := ImageEnViewSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameRect:=Rect(10,10,50,50);
!!}
    property ThumbnailFrameSelected:TIEBitmap read fThumbnailFrameSelected write fThumbnailFrameSelected;

{!!
<FS>TImageEnMView.ThumbnailFrameRect

<FM>Declaration<FC>
property ThumbnailFrameRect:TRect;

<FM>Description<FN>
Using <A TImageEnMView.ThumbnailFrameSelected> and <A TImageEnMView.ThumbnailFrame>, this property specifies where the image (the thumbnail) will be drawn.

<FM>Examples<FC>

ImageEnMView1.ThumbnailFrame := ImageEnViewUnSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameSelected := ImageEnViewSelected.IEBitmap;
ImageEnMView1.ThumbnailFrameRect:=Rect(10,10,50,50);
!!}
    property ThumbnailFrameRect:TRect read fThumbnailFrameRect write fThumbnailFrameRect;

    // others
    property MouseCapture;
    procedure Assign(Source: TPersistent); override;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    function GetLastOp: integer;
    function GetLastOpIdx: integer;
    function GetLastOpP1: integer;
    property ScrollBarsAlwaysVisible: boolean read GetScrollBarsAlwaysVisible write SetScrollBarsAlwaysVisible default false;

{!!
<FS>TImageEnMView.LoadIconOnUnknownFormat

<FM>Declaration<FC>
property LoadIconOnUnknownFormat:boolean;

<FM>Description<FN>
If true, when ImageFileName contains an unknown format ImageEn loads the default file icon (it gets the icon using ShGetFileInfo shellapi function).
If false, a question mark is displayed.

<FM>Example<FC>

// display all files (not only image files)
ImageEnMView1.FillFromDirectory('c:\',-1,true);
!!}
    property LoadIconOnUnknownFormat:boolean read fLoadIconOnUnknownFormat write fLoadIconOnUnknownFormat;

{!!
<FS>TImageEnMView.VScrollBarParams

<FM>Declaration<FC>
property VScrollBarParams:<A TIEScrollBarParams>;

<FM>Description<FN>
The VScrollBarParams property allows an application to customize the vertical scroll bar behavior like tracking (display refresh on mouse dragging), up/down buttons pixel scroll, pagedown/up pixel scroll.

<FM>Example<FC>

// disable tracking
ImageEnMView1.VScrollBarParams.Tracking:=False;
!!}
    property VScrollBarParams: TIEScrollBarParams read fVScrollBarParams;

{!!
<FS>TImageEnMView.HScrollBarParams

<FM>Declaration<FC>
property HScrollBarParams:<A TIEScrollBarParams>;

<FM>Description<FN>
The HScrollBarParams property allows an application to customize the horizontal scroll bar behavior like tracking (display refresh on mouse dragging), left/right buttons pixel scroll, pageleft/pageright pixel scroll.

<FM>Example<FC>

// disable tracking
ImageEnMView1.HScrollBarParams.Tracking:=False;
!!}
    property HScrollBarParams: TIEScrollBarParams read fHScrollBarParams;

    procedure RemoveAlphaChannel(Merge: boolean); override;
    procedure CallBitmapChangeEvents; override;
    procedure FillFromDirectory(const Directory: WideString; Limit:integer=-1; AllowUnknownFormats:boolean=false);

{!!
<FS>TImageEnMView.EnableAdjustOrientation

<FM>Declaration<FC>
property EnableAdjustOrientation:boolean;

<FM>Description<FN>
When this property is True all images which have orientation information (like jpeg with EXIF) will be automatically orientated.
!!}
    property EnableAdjustOrientation:boolean read fEnableAdjustOrientation write fEnableAdjustOrientation;

{!!
<FS>TImageEnMView.MaintainInvisibleImages

<FM>Declaration<FC>
property MaintainInvisibleImages:integer;

<FM>Description<FN>
This property specifies the number of images to maintain when they are no more visible.
The default is 15.
Specifing -1 you allow to maintain all images.
Setting 0, all no more visible images are discarded.

This property acts only if images are loaded on demand like when you set <A TImageEnMView.ImageFileName> or <A TImageEnMView.FillFromDirectory> or <A TImageEnMView.LoadFromFileOnDemand>.
!!}
    property MaintainInvisibleImages:integer read fMaintainInvisibleImages write fMaintainInvisibleImages;

    procedure LoadFromFileOnDemand(const FileName:WideString);

{!!
<FS>TImageEnMView.EnableLoadEXIFThumbnails

<FM>Declaration<FC>
property EnableLoadEXIFThumbnails:boolean;

<FM>Description<FN>
If true (default) when you request to load thumbnails, ImageEn try to load EXIF thumbnails instead of resampled version of the full image.
!!}
    property EnableLoadEXIFThumbnails:boolean read fEnableLoadEXIFThumbnails write fEnableLoadEXIFThumbnails;

    procedure CreateMorphingSequence(Source:TImageEnVect; Target:TImageEnVect; FramesCount:integer);
    // multithreads
    property JobsRunning:integer read GetJobsRunning;
    property JobsWaiting:integer read GetJobsWaiting;

{!!
<FS>TImageEnMView.LookAhead

<FM>Declaration<FC>
property LookAhead:integer;

<FM>Description<FN>
This property specifies the number of invisible images to load ahead. The defaul is 0.
This property acts only if images are loaded on demand like when you set <A TImageEnMView.ImageFileName> or <A TImageEnMView.FillFromDirectory> or <A TImageEnMView.LoadFromFileOnDemand>.
!!}
    property LookAhead:integer read fLookAhead write fLookAhead;

    // cache
    procedure ClearImageCache(idx: integer);
    property EnableImageCaching: boolean read fEnableImageCaching write SetEnableImageCaching default true;
    // images
    property ImageWidth[idx: integer]: integer read GetImageWidth;
    property ImageHeight[idx: integer]: integer read GetImageHeight;
    property ImageOriginalWidth[idx: integer]: integer read GetImageOriginalWidth write SetImageOriginalWidth;
    property ImageOriginalHeight[idx: integer]: integer read GetImageOriginalHeight write SetImageOriginalHeight;
    property ImageBitCount[idx: integer]: integer read GetImageBitCount;
    property ImageX[idx: integer]: integer read GetImageX;
    property ImageY[idx: integer]: integer read GetImageY;
    property ImageRow[idx: integer]: integer read GetImageRow;
    property ImageCol[idx: integer]: integer read GetImageCol;
    property ImageFileName[idx: integer]: WideString read GetImageFileName write SetImageFileName;
    property ImageID[idx: integer]: integer read GetImageID write SetImageID;
    property ImageBackground[idx: integer]: TColor read GetImageBackground write SetImageBackground;
    property ImageDelayTime[idx: integer]: integer read GetImageDelayTime write SetimageDelayTime;

{!!
<FS>TImageEnMView.ImageTopText

<FM>Declaration<FC>
property ImageTopText[idx:integer]:<A TIEMText>;

<FM>Description<FN>
<A TImageEnMView.ImageTopText>, <A TImageEnMView.ImageBottomText> and <A TImageEnMView.ImageInfoText> to specify an optional text to write inside the thumbnail <FC>idx<FN>.

<A TIEMText> is an object that specifies how the text will be written.
The <A TImageEnMView.BottomGap> and <A TImageEnMView.UpperGap> properties will be adjusted to fit the text.

<FM>Example<FC>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
<IMG help_images\58.bmp>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
ImageEnMView1.ImageBottomText[idx].Background:=clYellow;
ImageEnMView1.ImageBottomText[idx].Font.Color:=clBlue;
<IMG help_images\59.bmp>
!!}
    property ImageTopText[idx: integer]: TIEMText read GetImageTopText;

{!!
<FS>TImageEnMView.ImageBottomText

<FM>Declaration<FC>
property ImageBottomText[idx:integer]:<A TIEMText>;

<FM>Description<FN>
<A TImageEnMView.ImageTopText>, <A TImageEnMView.ImageBottomText> and <A TImageEnMView.ImageInfoText> to specify an optional text to write inside the thumbnail <FC>idx<FN>.

<A TIEMText> is an object that specifies how the text will be written.
The <A TImageEnMView.BottomGap> and <A TImageEnMView.UpperGap> properties will be adjusted to fit the text.

<FM>Example<FC>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
<IMG help_images\58.bmp>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
ImageEnMView1.ImageBottomText[idx].Background:=clYellow;
ImageEnMView1.ImageBottomText[idx].Font.Color:=clBlue;
<IMG help_images\59.bmp>
!!}
    property ImageBottomText[idx: integer]: TIEMText read GetImageBottomText;

{!!
<FS>TImageEnMView.ImageInfoText

<FM>Declaration<FC>
property ImageInfoText[idx:integer]:<A TIEMText>;

<FM>Description<FN>
<A TImageEnMView.ImageTopText>, <A TImageEnMView.ImageBottomText> and <A TImageEnMView.ImageInfoText> to specify an optional text to write inside the thumbnail <FC>idx<FN>.

<A TIEMText> is an object that specifies how the text will be written.
The <A TImageEnMView.BottomGap> and <A TImageEnMView.UpperGap> properties will be adjusted to fit the text.

<FM>Example<FC>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
<IMG help_images\58.bmp>

ImageEnMView1.ImageTopText[idx].Caption:='Top text';
ImageEnMView1.ImageInfoText[idx].Caption:='Info text';
ImageEnMView1.ImageBottomText[idx].Caption:='Bottom text';
ImageEnMView1.ImageBottomText[idx].Background:=clYellow;
ImageEnMView1.ImageBottomText[idx].Font.Color:=clBlue;
<IMG help_images\59.bmp>
!!}
    property ImageInfoText[idx: integer]: TIEMText read GetImageInfoText;

    property ShowText: boolean read fShowText write SetShowText;
    procedure UpdateImage(idx: integer);
    procedure InsertImage(idx: integer);
    procedure InsertImageEx(idx: integer);
    procedure MoveImage(idx: integer; destination: integer);
    procedure MoveSelectedImagesTo(beforeImage:integer);
    procedure Sort(Compare: TIEImageEnMViewSortCompare); overload;
    procedure Sort(Compare: TIEImageEnMViewSortCompareEx); overload;
    function AppendImage: integer;
    function AppendImage2(Width,Height:integer; PixelFormat:TIEPixelFormat=ie24RGB):integer;
    procedure DeleteImage(idx: integer);
    procedure DeleteSelectedImages;
    property ImageCount: integer read GetImageCount;
    procedure UpdateCoords;
    procedure SetImage(idx: integer; v: TBitmap);
    procedure SetImageEx(idx: integer; v: TBitmap);
    procedure SetIEBitmapEx(idx: integer; v: TIEBaseBitmap);
    procedure SetIEBitmap(idx: integer; v: TIEBaseBitmap);
    function SetImageFromFile(idx: integer; const FileName: WideString): boolean;
    function SetImageFromStream(idx: integer; Stream: TStream): boolean;
    procedure GetImageToFile(idx:integer; const FileName:WideString);
    procedure GetImageToStream(idx:integer; Stream:TStream; ImageFormat:TIOFileType);
    procedure SetImageRect(idx: integer; v: TBitmap; x1, y1, x2, y2: integer); overload;
    procedure SetImageRect(idx: integer; v: TIEBitmap; x1, y1, x2, y2: integer); overload;
    procedure Clear;
    function GetBitmap(idx: integer): TBitmap;
    procedure ReleaseBitmap(idx: integer);
    function GetTIEBitmap(idx: integer): TIEBitmap;
    function GetImageVisibility(idx: integer): integer;
    function ImageAtPos(x, y: integer): integer;
    function ImageAtGridPos(row, col: integer): integer;
    function InsertingPoint(x, y: integer): integer;

{!!
<FS>TImageEnMView.ThumbnailResampleFilter

<FM>Declaration<FC>
property ThumbnailResampleFilter: <A TResampleFilter>;

<FM>Description<FN>
ThumbnailResampleFilter specifies the filter to use when the application adds a new thumbnail. This enhances the image quality but could slow down the application.
Default value is rfFastLinear

<FM>Example<FC>

// insert image 1.jpg and 2.jpg. Only 1.jpg will be filtered.
ImageEnMView1.ThumbnailResampleFilter:= rfBSpline;
Idx:=ImageEnMView1.AppendImage;
ImageEnMView1.SetImageFromFile('1.jpg');
ImageEnMView1.ThumbnailResampleFilter:= rfNone;
Idx:=ImageEnMView1.AppendImage;
ImageEnMView1.SetImageFromFile('2.jpg');
!!}
    property ThumbnailResampleFilter: TResampleFilter read fThumbnailResampleFilter write fThumbnailResampleFilter;

{!!
<FS>TImageEnMView.ThumbnailDisplayFilter

<FM>Declaration<FC>
property ThumbnailDisplayFilter:<A TResampleFilter>;

<FM>Description<FN>
ThumbnailDisplayFilter specifies a filter to apply when an image (thumbnail) need to be resized. For black/white images it is automatically rfFastLinear.
!!}
    property ThumbnailDisplayFilter: TResampleFilter read fThumbnailDisplayFilter write fThumbnailDisplayFilter;

    property EnableResamplingOnMinor: boolean read fEnableResamplingOnMinor write SetEnableResamplingOnMinor;
    procedure CopyToIEBitmap(idx: integer; bmp: TIEBitmap);
    function IsVisible(idx: integer): boolean;
    procedure ReloadImage(imageIndex:integer);
    // allocations
    procedure PrepareSpaceFor(Width, Height: integer; Bitcount: integer; ImageCount: integer);
    // selection
    property SelectedImage: integer read fSelectedItem write SetSelectedItem;
    procedure Deselect;
    procedure SelectSeek(pos: TIESeek);

{!!
<FS>TImageEnMView.MultiSelecting

<FM>Declaration<FC>
property MultiSelecting:boolean;

<FM>Description<FN>
Set MultiSelecting to True to simulate a CTRL key press. It allows user to select multiple images with mouse or arrow keys without press CTRL key.
Also use MultiSelecting to select more than one image using the <A TImageEnMView.SelectedImage> property.
To use multiselections, the <A TImageEnMView.EnableMultiSelect> property must be True.

<FM>Example<FC>
// select images 0 and 1 (you have to set at design time ImageEnMView1.EnableMultiSelect:=True)
ImageEnMView1.Deselect;
ImageEnMView1.MultiSelecting:=True;
ImageEnMView1.SelectedImage:=0;
ImageEnMView1.SelectedImage:=1;
ImageEnMView1.MultiSelecting:=False;
!!}
    property MultiSelecting: boolean read fMultiSelecting write fMultiSelecting;

    property MultiSelectedImages[index: integer]: integer read GetMultiSelectedImages;
    property MultiSelectedImagesCount: integer read GetMultiSelectedImagesCount;
    procedure MultiSelectSortList;
    procedure UnSelectImage(idx: integer);
    procedure SelectAll;
    procedure BeginSelectImages;
    procedure EndSelectImages;
    function IsSelected(idx: integer): boolean;

{!!
<FS>TImageEnMView.HighlightColor

<FM>Declaration<FC>
property HighlightColor:TColor;

<FM>Description<FN>
When SelectionStyle=iessACD, this property specifies the color used for backgrounds. Default is clHighlight.
!!}
    property HighlightColor:TColor read fHighlightColor write fHighlightColor;

{!!
<FS>TImageEnMView.HighlightTextColor

<FM>Declaration<FC>
property HighlightTextColor:TColor;

<FM>Description<FN>
When SelectionStyle=iessACD, this property specifies the color used for texts. Default is clHighlightText.
!!}
    property HighlightTextColor:TColor read fHighlightTextColor write fHighlightTextColor;

    // play
    property Playing: boolean read fPlaying write SetPlaying;

{!!
<FS>TImageEnMView.PlayLoop

<FM>Declaration<FC>
property PlayLoop: boolean;

<FM>Description<FN>
Set PlayLoop to True to continuously loop playing.

!!}
    property PlayLoop: boolean read fPlayLoop write fPlayLoop;

    property VisibleFrame: integer read fFrame write SetVisibleFrame;
    //
    property TransitionRunning: boolean read GetTransitionRunning;

    // encapsulated components

{!!
<FS>TImageEnMView.MIO

<FM>Declaration<FC>
property MIO:<A TImageEnMIO>;

<FM>Description<FN>
The MIO property encapsulates the <A TImageEnMIO> component inside TImageEnMView. The TImageEnMIO component is created the first time you use the <A TImageEnMView.MIO> property.

<FM>Example<FC>
ImageEnMView1.MIO.LoadFromFile('film.avi');

ImageEnMView1.MIO.Acquire;
!!}
    property MIO: TImageEnMIO read GetImageEnMIO;

{!!
<FS>TImageEnMView.Proc

<FM>Declaration<FC>
property Proc:<A TImageEnProc>;

<FM>Description<FN>
The Proc property encapsulates the <A TImageEnProc> component inside TImageEnMView. The <A TImageEnProc> component is created the first time you use Proc property.

<FM>Example<FC>
ImageEnMView1.Proc.Negative;	// negate selected image
!!}
    property Proc: TImageEnProc read GetImageEnProc;

    // drag&drop
    procedure IEBeginDrag(Immediate: Boolean; Threshold: Integer=-1);
    procedure IEEndDrag;
    property SelectionWidthNoFocus: integer read fSelectionWidthNoFocus write SetSelectionWidthNoFocus;
    property SelectionAntialiased:boolean read fSelectionAntialiased write SetSelectionAntialiased;

    // input&output
    procedure SaveSnapshot(Stream:TStream; SaveCache:boolean=true; Compressed:boolean=false); overload;
    procedure SaveSnapshot(FileName:WideString; SaveCache:boolean=true; Compressed:boolean=false); overload;
    function LoadSnapshot(Stream:TStream):boolean; overload;
    function LoadSnapshot(FileName:WideString):boolean; overload;

  published
    ///////////////////////
    // P U B L I S H E D
    property ScrollBars: TScrollStyle read fScrollBars write SetScrollBars default ssBoth;

{!!
<FS>TImageEnMView.StoreType

<FM>Declaration<FC>
property StoreType: <A TIEStoreType>;

<FM>Description<FN>
StoreType specifies how an image is stored in the TImageEnMView component.
!!}
    property StoreType: TIEStoreType read fStoreType write fStoreType default ietNormal;

    property ThumbWidth: integer read fThumbWidth write SetThumbWidth default 100;
    property ThumbHeight: integer read fThumbHeight write SetThumbHeight default 100;
    property HorizBorder: integer read fHorizBorder write SetHorizBorder default 4;
    property VertBorder: integer read fVertBorder write SetVertBorder default 4;
    property BottomGap: integer read fBottomGap write SetBottomGap default 0;
    property UpperGap: integer read fUpperGap write SetUpperGap default 0;

{!!
<FS>TImageEnMView.OnViewChange

<FM>Declaration<FC>
property OnViewChange: <A TViewChangeEvent>;

<FM>Description<FN>
Notifies when ViewX or ViewY properties change.
!!}
    property OnViewChange: TViewChangeEvent read fOnViewChange write fOnViewChange;


{!!
<FS>TImageEnMView.OnImageIDRequest

<FM>Declaration<FC>
property OnImageIDRequest: <A TIEImageIDRequestEvent>;

<FM>Description<FN>
This event is called if you have inserted a value in <A TImageEnMView.ImageID> property and the image must be shown.

ID is the ID you have specified in <A TImageEnMView.ImageID> property;
Bitmap is the bitmap to show. The bitmap is copied in TImageEnMView, and must be freed when it is no longer necessary.
!!}
    property OnImageIDRequest: TIEImageIDRequestEvent read fOnImageIDRequest write fOnImageIDRequest;

{!!
<FS>TImageEnMView.OnImageIDRequestEx

<FM>Declaration<FC>
property OnImageIDRequestEx: <A TIEImageIDRequestExEvent>;

<FM>Description<FN>
The OnImageIDRequestEx event is called if you have inserted a value in the <A TImageEnMView.ImageID> property and the image must be shown.
!!}
    property OnImageIDRequestEx: TIEImageIDRequestExEvent read fOnImageIDRequestEx write fOnImageIDRequestEx;

{!!
<FS>TImageEnMView.OnBeforeImageDraw

<FM>Declaration<FC>
property OnBeforeImageDraw:<A TIEImageDrawEvent>;

<FM>Description<FN>
OnBeforeImageDraw event occurs just before an image is drawn. It is useful to prepare some parameters prior to drawing the image (as <A TImageEnMView.ImageTopText>, <A TImageEnMView.ImageBottomText> and <A TImageEnMView.ImageInfoText>).
!!}
    property OnBeforeImageDraw: TIEImageDrawEvent read fOnBeforeImageDraw write fOnBeforeImageDraw;

{!!
<FS>TImageEnMView.OnBeforeImageDrawEx

<FM>Declaration<FC>
property OnBeforeImageDrawEx: <A TIEImageDrawEventEx>;

<FM>Description<FN>

OnBeforeImageDrawEx occurs just before the image idx is painted.
Left, Top are the left-top coordinates where the image will be drawn (Dest bitmap coordinates).
Dest is the destination bitmap (the canvas where the image must be drawn).
ThumbRect specifies the destination rectangle for the image. You can change this parameter, so the image will be drawn where you want.

When this event is assigned, the selection is not shown.

Look at 'customthumbs' demo for more info.
!!}
    property OnBeforeImageDrawEx: TIEImageDrawEventEx read fOnBeforeImageDrawEx write fOnBeforeImageDrawEx;

{!!
<FS>TImageEnMView.OnImageDraw

<FM>Declaration<FC>
property OnImageDraw: <A TIEImageDrawEvent>;

<FM>Description<FN>
This event is called whenever an image is painted.

<FM>Example<FC>

// This method display the image index and sizes on bottom of the thumbnail.
// Set properly the BottomGap property
procedure TForm1.ImageEnMView1ImageDraw(Sender: TObject; idx: Integer;
  Left, Top: Integer; Canvas: TCanvas);
begin
  with canvas do
  begin
    Font.Height:=15;
    Font.Color:=clWhite;
    textout(Left,Top+imageenmview1.ThumbHeight-imageenmview1.bottomgap+2,inttostr(idx));
    textout(Left,Top,inttostr(imageenmview1.imageWidth[idx])+'x'+inttostr(imageenmview1.imageHeight[idx]));
  end;
end;
!!}
    property OnImageDraw: TIEImageDrawEvent read fOnImageDraw write fOnImageDraw;

{!!
<FS>TImageEnMView.OnImageDraw2

<FM>Declaration<FC>
property OnImageDraw2: <A TIEImageDraw2Event>;

<FM>Description<FN>
This event is called whenever an image is painted. The thumbnail rectangle is available.
!!}
    property OnImageDraw2: TIEImageDraw2Event read fOnImageDraw2 write fOnImageDraw2;

{!!
<FS>TImageEnMView.OnImageSelect

<FM>Declaration<FC>
property OnImageSelect: <A TIEImageSelectEvent>;

<FM>Description<FN>
This event is called whenever an image is selected.
!!}
    property OnImageSelect: TIEImageSelectEvent read fOnImageSelect write fOnImageSelect;

{!!
<FS>TImageEnMView.OnImageDeselect

<FM>Declaration<FC>
property OnImageDeselect: <A TIEImageSelectEvent>;

<FM>Description<FN>
This event occurs when an image is deselected by an user action.
!!}
    property OnImageDeselect: TIEImageSelectEvent read fOnImageDeselect write fOnImageDeselect;

{!!
<FS>TImageEnMView.OnIOProgress

<FM>Declaration<FC>
property OnIOProgress: <A TIEProgressEvent>;

<FM>Description<FN>
OnIOProgress event is called on input/output operations.
!!}
    property OnIOProgress: TIEProgressEvent read fOnIOProgress write fOnIOProgress;

{!!
<FS>TImageEnMView.OnDrawProgress

<FM>Declaration<FC>
property OnDrawProgress:<A TIEMProgressEvent>;

<FM>Description<FN>
The OnDrawProgress event is called on paint for each image drawn.

<FM>Example<FC>

procedure TForm1.ImageEnMView1DrawProgress(Sender: TObject; per,
  idx: Integer);
begin
  ProgressBar1.Position:=per;
end;
!!}
    property OnDrawProgress: TIEMProgressEvent read fOnDrawProgress write fOnDrawProgress;

{!!
<FS>TImageEnMView.OnWrongImage

<FM>Declaration<FC>
property OnWrongImage:<A TIEWrongImageEvent>;

TIEWrongImageEvent = procedure(Sender:TObject; OutBitmap:TIEBitmap; idx:integer; var Handled:boolean) of object;

<FM>Description<FN>
OnWrongImage occurs whenever TImageEnMView cannot load the image specified in <A TImageEnMView.ImageFileName> property, for instance when the file is corrupted or not recognized.

Applications can specify an alternative bitmap to display by changing the OutBitmap property.

<FM>Example<FC>
Procedure Form1_OnWrongImage(Sender:TObject; OutBitmap:TIEBitmap; idx:integer; var Handled:boolean);
Var
   io:TImageEnIO;
begin
   io:=TImageEnIO.Create(nil);
   io.AttachedIEBitmap:=OutBitmap;
   io.LoadFromFile('error_image.bmp');
   io.Free;
   Handled:=True;
end;
!!}
    property OnWrongImage: TIEWrongImageEvent read fOnWrongImage write fOnWrongImage;

    property VisibleSelection: boolean read fVisibleSelection write SetVisibleSelection default true;
    property MouseInteract: TIEMMouseInteract read GetMouseInteract write SetMouseInteract default [mmiSelect];
    property KeyInteract: TIEMKeyInteract read GetKeyInteract write SetKeyInteract default [mkiMoveSelected];
    property DisplayMode: TIEMDisplayMode read fDisplayMode write SetDisplayMode default mdGrid;
    property GridWidth: integer read fGridWidth write SetGridWidth default 0;
    property SelectionWidth: integer read fSelectionWidth write SetSelectionWidth default 2;
    property SelectionColor: TColor read fSelectionColor write SetSelectionColor default $00FFA0A0;
    property RemoveCorrupted: boolean read fRemoveCorrupted write SetRemoveCorrupted default false;
    property DrawImageBackground: boolean read fDrawImageBackground write SetDrawImageBackground default false;
    property ImageCacheSize: integer read fImageCacheSize write SetImageCacheSize default 10;

{!!
<FS>TImageEnMView.TransitionEffect

<FM>Declaration<FC>
property TransitionEffect:<A TIETransitionType>;

<FM>Description<FN>
TransitionEffect specifies the effect to apply when the application changes the currently displayed frame. The DisplayMode must be mdSingle. To change current frame, use the VisibleFrame property.

<FM>Example<FC>

// design time properties...
ImageEnMView1.DisplayMode:=mdSingle;
ImageEnMView1.TransitionEffect:=iettCrossDissolve;
ImageEnMView1.TransitionDuration:=1500;
// display next frame using cross dissolve
ImageEnMView1.VisibleFrame:=ImageEnMView1.VisibleFrame+1;
!!}
    property TransitionEffect: TIETransitionType read fTransitionEffect write fTransitionEffect default iettNone;

{!!
<FS>TImageEnMView.TransitionDuration

<FM>Declaration<FC>
property TransitionDuration:integer;

<FM>Description<FN>
TransitionDuration specifies the duration of the transition in milliseconds.

<FM>Example<FC>

// design time properties...
ImageEnMView1.DisplayMode:=mdSingle;
ImageEnMView1.TransitionEffect:=iettCrossDissolve;
ImageEnMView1.TransitionDuration:=1500;
// display next frame using cross dissolve
ImageEnMView1.VisibleFrame:=ImageEnMView1.VisibleFrame+1;
!!}
    property TransitionDuration: integer read fTransitionDuration write fTransitionDuration default 1000;

    property Style: TIEMStyle read fStyle write SetStyle default iemsACD;
    property SelectionStyle: TIESStyle read fSelectionStyle write SetSelectionStyle default iessAround;

{!!
<FS>TImageEnMView.ThumbnailsBackground

<FM>Declaration<FC>
property ThumbnailsBackground:TColor;

<FM>Description<FN>
ThumbnailsBackground specifies the background color of the thumbnails.
!!}
    property ThumbnailsBackground: TColor read fThumbnailsBackground write fThumbnailsBackground default clBtnFace;

    property EnableMultiSelect: boolean read fEnableMultiSelect write SetEnableMultiSelect default false;

{!!
<FS>TImageEnMView.MultiSelectionOptions

<FM>Declaration<FC>
property MultiSelectionOptions:<A TIEMultiSelectionOptions>;

<FM>Description<FN>
MultiSelectionOptions specifies how the user selects more rows.
If you specify an empty value the entire row is selected. By specifying iemoRegion only specified columns are selected.

<FM>Example<FC>
ImageEnMView1.MultiSelectionOptions:=[];
<IMG help_images\64.bmp>

ImageEnMView1.MultiSelectionOptions:=[iemoRegion];
<IMG help_images\65.bmp>

For default ImageEn select an image on mouse down. By specifying iemoSelectOnMouseUp , ImageEn select on mouse up (the old version's default).
!!}
    property MultiSelectionOptions: TIEMultiSelectionOptions read fMultiSelectionOptions write fMultiSelectionOptions default [];

    property ThumbnailsBorderWidth: integer read fThumbnailsBorderWidth write SetThumbnailsBorderWidth default 0;
    property ThumbnailsBorderColor: TColor read fThumbnailsBorderColor write SetThumbnailsBorderColor default clBtnFace;
    property ThumbnailsInternalBorder: boolean read fThumbnailsInternalBorder write SetThumbnailsInternalBorder default false;
    property ThumbnailsInternalBorderColor: TColor read fThumbnailsInternalBorderColor write SetThumbnailsInternalBorderColor default clBlack;
    property WallPaper: TPicture read fWallPaper write SetWallPaper;
    property WallPaperStyle: TIEWallPaperStyle read fWallPaperStyle write SetWallPaperStyle default iewoNormal;
    property OnProgress: TIEProgressEvent read GetOnProgress write SetOnProgress;

{!!
<FS>TImageEnMView.ThreadPoolSize

<FM>Declaration<FC>
property ThreadPoolSize:integer;

<FM>Description<FN>
ThreadPoolSize specifies how many threads can be created to load images. If it is 0 all images are loaded in the main thread.
!!}
    property ThreadPoolSize: integer read fThreadPoolSize write fThreadPoolSize default 5;

    property EnableAlphaChannel: boolean read fEnableAlphaChannel write SetEnableAlphaChannel default true;
    property BackgroundStyle: TIEBackgroundStyle read fBackgroundStyle write SetBackgroundStyle default iebsSolid;
    property ThumbnailsBackgroundStyle: TIEBackgroundStyle read fThumbnailsBackgroundStyle write SetThumbnailsBackgroundStyle default iebsSolid;

{!!
<FS>TImageEnMView.OnAllDisplayed

<FM>Declaration<FC>
property OnAllDisplayed:TNotifyEvent;

<FM>Description<FN>
This event occurs when all images are loaded and displayed.
!!}
    property OnAllDisplayed:TNotifyEvent read fOnAllDisplayed write fOnAllDisplayed;

{!!
<FS>TImageEnMView.OnFinishWork

<FM>Declaration<FC>
property OnFinishWork: TNotifyEvent;

<FM>Description<FN>
This event occurs whenever an image processing task or input/output terminates.
This event is called after the last call to <A TImageEnMView.OnProgress>, so you can reset here your progress bar.
!!}
    property OnFinishWork: TNotifyEvent read GetOnFinishWork write SetOnFinishWork;

{!!
<FS>TImageEnMView.OnPlayFrame

<FM>Declaration<FC>
property OnPlayFrame:<A TIEPlayFrameEvent>;

<FM>Description<FN>
This event occurs whenever a frame is played. Look also <A TImageEnMView.Playing>.
!!}
    property OnPlayFrame:TIEPlayFrameEvent read fOnPlayFrame write fOnPlayFrame;


    property ImageEnVersion:string read GetImageEnVersion write SetImageEnVersion;
    {$ifdef IEINCLUDEFLATSB}
    property FlatScrollBars:boolean read fFlatScrollBars write SetFlatScrollBars default False;
    {$endif}
{$IFDEF IESUPPORTANCHORS}
    property Anchors;
{$ENDIF}
{$IFDEF IEMOUSEWHEELEVENTS}
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
{$ENDIF}
    property Align;
    property DragCursor;
    property DragMode;
    property Enabled;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property TabOrder;
    property TabStop;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
  end;

implementation

uses

{$ifdef IEINCLUDEFLATSB}
  flatsb,
{$endif}
  iezlib, iegdiplus, bmpfilt;

{$R-}

constructor TImageEnMView.Create(Owner: TComponent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Create'); {$endif}
  InitializeCriticalSection(fThreadCS);
  fBackBuffer := TIEBitmap.Create;
  fBackBuffer.Location := ieTBitmap;
  fImageEnMIO := nil;
  fImageEnProc := nil;
  inherited Create(Owner);
  fUpdating := false;
  fMultiSelectedImages := TList.Create;
  fDestroying := false;
  fScrollBarsAlwaysVisible := false;
  fRXScroll := 1;
  fRYScroll := 1;
  fScrollBars := ssBoth;
  Height := 90;
  Width := 180;
  fImageInfo := TList.Create;
  fStoreType := ietNormal;
  fThumbWidth := 100;
  fThumbHeight := 100;
  fHorizBorder := 4;
  fVertBorder := 4;
  fVWidth := 0;
  fVHeight := 0;
  fOnViewChange := nil;
  fOnImageIDRequest := nil;
  fOnImageIDRequestEx := nil;
  fOnImageDraw := nil;
  fOnImageDraw2 := nil;
  fOnImageSelect := nil;
  fOnImageDeselect := nil;
  fOnBeforeImageDrawEx:=nil;
  fOnDrawProgress := nil;
  fOnWrongImage := nil;
  fHDrawDib := IEDrawDibOpen;
  fImageEnIO := TImageEnIO.Create(self);
  fSelectedItem := -1;
  fVisibleSelection := true;
  fSelectionWidth := 2;
  fSelectionWidthNoFocus:=1;
  fSelectionAntialiased:=true;
  fSelectionColor := $00FFA0A0;
  fBottomGap := 0;
  fUpperGap := 0;
  fMouseInteract := [mmiSelect];
  fKeyInteract := [mkiMoveSelected];
  fDisplayMode := mdGrid;
  fGridWidth := 0;
  fPlayTimer := 0;
  fPlayLoop := true;
  fLastImOp := 0;
  fLastImIdx := 0;
  fLastImP1 := 0;
  fTimerInProgress := false;
  fFrame := 0;
  fLockPaint := 0;
  fOnIOProgress := nil;
  fRemoveCorrupted := false;
  fDrawImageBackground := false;
  fThumbnailResampleFilter := rfFastLinear;
  fThumbnailDisplayFilter := rfNone;
  fVScrollBarParams := TIEScrollBarParams.Create;
  fHScrollBarParams := TIEScrollBarParams.Create;
  fImageCacheSize := 10;
  fImageList := TIEVirtualImageList.Create('ILIST');
  fImageList.MaxImagesInMemory := fImageCacheSize;
  fCacheList := TIEVirtualImageList.Create('ICACHE');
  fTransition := TIETransitionEffects.Create(self);
  fTransitionEffect := iettNone;
  fTransitionDuration := 1000;
  fStyle := iemsACD;
  fSelectionStyle := iessAround;
  fDoubleClicking := false;
  fThumbnailsBackground := clBtnFace;
  fMultiSelecting := false;
  fEnableMultiSelect := false;
  fSelectInclusive := false;
  fMultiSelectionOptions := [];
  fThumbnailsBorderWidth := 0;
  fThumbnailsBOrderColor := clBtnFace;
  fThumbnailsBorderWidth := 0;
  fThumbnailsBOrderColor := clBlack;
  fWallPaper := TPicture.Create;
  fWallPaperStyle := iewoNormal;
  fEnableResamplingOnMinor := true;
  fOnProgress := nil;
  fOnBeforeImageDraw := nil;
  fThreadPoolSize := 5;
  fThreadPoolIO := TList.Create;
  fThreadRequests := TList.Create;
  fLookAheadList := TList.Create;
  fThreadStarter := TIEStarter.Create(true);
  fThreadStarter.mview := self;
  fSelectImages := false;
  fEnableImageCaching := true;
  fHaveMultiselected := false;
  fSoftShadow := TIEVSoftShadow.Create;
  fSoftShadow.Enabled := false;
  fSoftShadow.Radius := 3;
  fSoftShadow.OffsetX := 3;
  fSoftShadow.OffsetY := 3;
  fSoftShadow.Intensity := 100;
  fSoftShadow.ShadowColor := CreateRGB(0,0,0);
  fEnableAlphaChannel := true;
  fBackgroundStyle := iebsSolid;
  fThumbnailsBackgroundStyle := iebsSolid;
  fChessboardSize := 16;
  fChessboardBrushStyle := bsSolid;
  fGradientEndColor := clBlue;
  fFillThumbnail := true;
  fMDown := false;
  fShowText := true;
  fSetUpperGap := 0;
  fSetBottomGap := 0;
  fCurrentCompare := nil;
  fCurrentCompareEx := nil;
  fChangedSel := false;
  fThumbsRounded := 0;
  fFlatScrollBars:=false;
  fThumbnailFrame:=nil;
  fThumbnailFrameSelected:=nil;
  fThumbnailFrameRect:=Rect(0,0,0,0);
  fDragging:=false;
  fEnableAdjustOrientation:=false;
  fMultiOnDemands:=TList.Create;
  fMaintainInvisibleImages:=15;
  fLookAhead:=0;
  fOnAllDisplayed:=nil;
  fAllDisplayed:=false;
  fUserAction:=false;
  fEnableLoadEXIFThumbnails:=true;
  fOnFinishWork:=nil;
  HighlightColor:=clHighlight;
  HighlightTextColor:=clHighlightText;
  fOnPlayFrame:=nil;
  fLoadIconOnUnknownFormat:=true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.ClearThreadsAndRequests;
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ClearThreadsAndRequests'); {$endif}
  EnterCriticalSection(fThreadCS);
  fLookAheadList.Clear;
  fThreadRequests.Clear;
  for i := 0 to fThreadPoolIO.Count - 1 do
  begin
    if TImageEnIO(fThreadPoolIO[i]).Tag > -1 then
    begin
      TImageEnIO(fThreadPoolIO[i]).Tag := -2;
      TImageEnIO(fThreadPoolIO[i]).Aborting := true;
    end;
  end;
  LeaveCriticalSection(fThreadCS);
  // wait up to 1 second
  for i := 1 to 10 do
    if fThreadPoolIO.Count > 0 then
      sleep(100);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.AbortImageLoading(idx:integer);
var
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.AbortImageLoading'); {$endif}
  if assigned(fThreadRequests) and assigned(fLookAheadList) and assigned(fThreadPoolIO) then
  begin
    EnterCriticalSection(fThreadCS);
    fThreadRequests.Remove(pointer(idx));
    fLookAheadList.Remove(pointer(idx));
    for i := 0 to fThreadPoolIO.Count - 1 do
    begin
      if TImageEnIO(fThreadPoolIO[i]).Tag = idx then
      begin
        TImageEnIO(fThreadPoolIO[i]).Tag := -2;
        TImageEnIO(fThreadPoolIO[i]).Aborting := true;
        break;
      end;
    end;
    LeaveCriticalSection(fThreadCS);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// note: the timer object is not destroyed because the win32 should destroy it.
destructor TImageEnMView.Destroy;
var
  toDestroy: TIEbitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Destroy'); {$endif}
  fDestroying := true;
  DeselectNU;
  // threads
  ClearThreadsAndRequests;
  while fThreadPoolIO.Count > 0 do
  begin
    toDestroy := TImageEnIO(fThreadPoolIO[0]).IEBitmap;
    TImageEnIO(fThreadPoolIO[0]).free;
    fThreadPoolIO[0]:=nil;
    FreeAndNil(toDestroy);
    fThreadPoolIO.Delete(0);
  end;

  {$ifdef IEHASTHREADSBUG}
  // without this Delphi 3..5 have memory leaks
  fthreadstarter.Terminate;
  fthreadstarter.Resume;
  fthreadstarter.WaitFor;
  {$endif}

  FreeAndNil(fThreadStarter);
  FreeAndNil(fThreadRequests);
  FreeAndNil(fThreadPoolIO);
  //
  ClearOnDemandIOList;
  FreeAndNil(fMultiOnDemands);
  //
  if assigned(fImageEnMIO) then
    FreeAndNil(fImageEnMIO);
  if assigned(fImageEnProc) then
    FreeAndNil(fImageEnProc);
  // remove all objects
  while fImageInfo.Count > 0 do
    DeleteImageNU(fImageInfo.Count - 1);
  //
  FreeAndNil(fWallPaper);
  FreeAndNil(fTransition);
  Deselect;
  FreeAndNil(fImageList);
  FreeAndNil(fCacheList);
  FreeAndNil(fImageInfo);
  IEDrawDibClose(fHDrawDib);
  FreeAndNil(fImageEnIO);
  FreeAndNil(fMultiSelectedImages);
  if assigned(fThumbnailFrame) then
    FreeAndNil(fThumbnailFrame);
  if assigned(fThumbnailFrameSelected) then
    FreeAndNil(fThumbnailFrameSelected);
  //
  FreeAndNil(fVScrollBarParams);
  FreeAndNil(fHScrollBarParams);
  FreeAndNil(fBackBuffer);
  FreeAndNil(fSoftShadow);
  FreeAndNil(fLookAheadlist);
  DeleteCriticalSection(fThreadCS);
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ScrollBars

<FM>Declaration<FC>
property ScrollBars: TScrollType;

<FM>Description<FN>
ScrollBars determines whether the TImageEnView control has any scroll bars.
If the component does not need scroll bars then they are not shown.

Value	 	      Meaning
ssNone		    The control has no scroll bars.
ssHorizontal	The control has a single scroll bar on the bottom edge when needed.
ssVertical	  The control has a single scroll bar on the right edge when needed.
ssBoth		    The control has a scroll bar on both the bottom and right edges when needed.
!!}
procedure TImageEnMView.SetScrollBars(v: TScrollStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetScrollBars'); {$endif}
  fScrollBars := v;
  if (GetParentForm(self) = nil) and (ParentWindow = 0) or (HandleAllocated) then // 2.3.1
    exit;
  if (fScrollBars <> ssVertical) and (fScrollBars <> ssBoth) then
    IEShowScrollBar(handle, SB_VERT, false, fFlatScrollBars);
  if (fScrollBars <> ssHorizontal) and (fScrollBars <> ssBoth) then
    IEShowScrollBar(handle, SB_HORZ, false, fFlatScrollBars);
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMSize(var Message: TWMSize);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMSize'); {$endif}
  inherited;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMEraseBkgnd(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMEraseBkgnd'); {$endif}
  Message.Result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMMouseWheel(var Message: TMessage);
var
  zDelta, nPos: integer;
  dir: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMMouseWheel'); {$endif}
  inherited;
  fUserAction:=true;
  zDelta := smallint($FFFF and (Message.wParam shr 16));
  if zDelta > 0 then
    dir := -1
  else
    dir := 1;
  nPos := fViewY + dir * (fThumbHeight + fVertBorder);
  SetViewY(nPos);
  ViewChange(0);
  fUserAction:=false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMVScroll(var Message: TMessage);
var
  nPos: integer;
  mx, my: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMVScroll'); {$endif}
  inherited;
  case Message.WParamLo of
    SB_THUMBPOSITION, SB_THUMBTRACK:
      begin
        if (not fVScrollBarParams.Tracking) and (Message.WParamLo = SB_THUMBTRACK) then
          exit;
        nPos := trunc(Message.WParamHi * fRYScroll);
      end;
    SB_BOTTOM:
      begin
        GetMaxViewXY(mx, my);
        nPos := my;
      end;
    SB_TOP:
      nPos := 0;
    SB_LINEDOWN:
      if fVScrollBarParams.LineStep = -1 then
        nPos := fViewY + fThumbHeight + fVertBorder
      else
        nPos := fViewY + fVScrollBarParams.LineStep;
    SB_LINEUP:
      if fVScrollBarParams.LineStep = -1 then
        nPos := fViewY - fThumbHeight - fVertBorder
      else
        nPos := fViewY - fVScrollBarParams.LineStep;
    SB_PAGEDOWN:
      if fVScrollBarParams.PageStep = -1 then
        nPos := fViewY + ClientHeight
      else
        nPos := fViewY + fVScrollBarParams.PageStep;
    SB_PAGEUP:
      if fVScrollBarParams.PageStep = -1 then
        nPos := fViewY - ClientHeight
      else
        nPos := fViewY - fVScrollBarParams.PageStep;
  else
    nPos := fViewY;
  end;
  SetViewY(nPos);
  ViewChange(0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMHScroll(var Message: TMessage);
var
  nPos: integer;
  mx, my: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMHScroll'); {$endif}
  inherited;
  case Message.WParamLo of
    SB_THUMBPOSITION, SB_THUMBTRACK:
      begin
        if (not fHScrollBarParams.Tracking) and (Message.WParamLo = SB_THUMBTRACK) then
          exit;
        nPos := trunc(Message.WParamHi * fRXScroll);
      end;
    SB_BOTTOM:
      begin
        GetMaxViewXY(mx, my);
        nPos := mx;
      end;
    SB_TOP:
      nPos := 0;
    SB_LINEDOWN:
      if fHScrollBarParams.LineStep = -1 then
        nPos := fViewX + fThumbWidth + fHorizBorder
      else
        nPos := fViewX + fVScrollBarParams.LineStep;
    SB_LINEUP:
      if fVScrollBarParams.LineStep = -1 then
        nPos := fViewX - fThumbWidth - fHorizBorder
      else
        nPos := fViewX - fVScrollBarParams.LineStep;
    SB_PAGEDOWN:
      if fHScrollBarParams.PageStep = -1 then
        nPos := fViewX + ClientWidth
      else
        nPos := fViewX + fVScrollBarParams.PageStep;
    SB_PAGEUP:
      if fVScrollBarParams.PageStep = -1 then
        nPos := fViewX - ClientWidth
      else
        nPos := fViewX - fVScrollBarParams.PageStep;
  else
    nPos := fViewX;
  end;
  SetViewX(nPos);
  ViewChange(0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// double click

procedure TImageEnMView.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMLButtonDblClk'); {$endif}
  fDoubleClicking := true;
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.Assign(Source: TPersistent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Assign'); {$endif}
  //
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetBounds'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.GetMaxViewXY(var mx, my: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMaxViewXY'); {$endif}
  mx := imax(fVWidth - ClientWidth, 0);
  my := imax(fVHeight - ClientHeight, 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ViewX

<FM>Declaration<FC>
property ViewX: integer;

<FM>Description<FN>
ViewX is the first column displayed on left-upper side of the component.
You can set ViewX to simulate horizontal scroll-bar movement.

!!}
procedure TImageEnMView.SetViewX(v: integer);
var
  max_x, max_y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetViewX'); {$endif}
  if v = fViewX then
    exit;
  GetMaxViewXY(max_x, max_y);
  fViewX := ilimit(v, 0, max_x);
  invalidate;
  if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ViewY

<FM>Declaration<FC>
property ViewY: integer;

<FM>Description<FN>
ViewY is the first row displayed on left-upper side of the component.
You can set ViewY to simulate vertical scroll-bar movement.

!!}
procedure TImageEnMView.SetViewY(v: integer);
var
  max_x, max_y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetViewY'); {$endif}
  if v = fViewY then
    exit;
  GetMaxViewXY(max_x, max_y);
  fViewY := ilimit(v, 0, max_y);
  invalidate;
  if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetViewXY

<FM>Declaration<FC>
procedure SetViewXY(x, y: integer);

<FM>Description<FN>
Sets <A TImageEnMView.ViewX> and <A TImageEnMView.ViewY> in one step.
!!}
procedure TImageEnMView.SetViewXY(x, y: integer);
var
  max_x, max_y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetViewXY'); {$endif}
  if (x = fViewX) and (y = fViewY) then
    exit;
  GetMaxViewXY(max_x, max_y);
  fViewX := ilimit(x, 0, max_x);
  fViewY := ilimit(y, 0, max_y);
  invalidate;
  if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), true, fFlatScrollBars);
  if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.Paint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Paint'); {$endif}
  if fLockPaint = 0 then
  begin
    if (not HandleAllocated) or (ClientWidth=0) or (ClientHeight=0) then  // 3.0.0
      exit;
    if (fBackBuffer.Width <> ClientWidth) or (fBackBuffer.Height <> ClientHeight) then
      fBackBuffer.Allocate(ClientWidth, ClientHeight, ie24RGB);
    PaintTo(fBackBuffer.VclBitmap);
    if (gSystemColors < 24) and not gIsRemoteSession then
    begin
      // dithering needed (for example display with 16bit depth need dithering)
      SetStretchBltMode(Canvas.Handle, HALFTONE);
      StretchBlt(canvas.Handle, 0, 0, fBackBuffer.Width, fBackBuffer.Height, fBackBuffer.Canvas.Handle, 0, 0, fBackBuffer.Width, fBackBuffer.Height, SRCCOPY);
    end
    else
    begin
      // no dithering needed (fastest way)
      BitBlt(canvas.handle, 0, 0, fBackBuffer.Width, fBackBuffer.Height, fBackBuffer.Canvas.Handle, 0, 0, SRCCOPY);
    end;
  end;
{$IFDEF DEMOVERSION}
  ie_ctrlview(canvas);
{$ENDIF}
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageWidth

<FM>Declaration<FC>
property ImageWidth[idx:integer];

<FM>Description<FN>
ImageWidth and <A TImageEnMView.ImageHeight> are the sizes of the image idx.

!!}
function TImageEnMView.GetImageWidth(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageWidth'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        result := fImageList.GetImageWidth(image);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageHeight

<FM>Declaration<FC>
property ImageHeight[idx:integer];

<FM>Description<FN>
<A TImageEnMView.ImageWidth> and ImageHeight are the sizes of the image idx.

!!}
function TImageEnMView.GetImageHeight(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageHeight'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        result := fImageList.GetImageHeight(image);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageOriginalWidth

<FM>Declaration<FC>
property ImageOriginalWidth[idx:integer]:integer;

<FM>Description<FN>
ImageOriginalWidth get/set the original width of the specified idx image.
This is useful only when you store images as thumbnails and need to know the original image size.
!!}
function TImageEnMView.GetImageOriginalWidth(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageOriginalWidth'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        result := fImageList.GetImageOriginalWidth(image)
      else if cacheImage<>nil then
        result := fCacheList.GetImageOriginalWidth(cacheImage);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageOriginalHeight

<FM>Declaration<FC>
property ImageOriginalHeight[idx:integer]:integer;

<FM>Description<FN>
ImageOriginalHeight get/set the original height of the specified idx image.
This is useful only when you store images as thumbnails and need to know the original image size.
!!}
function TImageEnMView.GetImageOriginalHeight(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageOriginalHeight'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        result := fImageList.GetImageOriginalHeight(image)
      else if cacheImage<>nil then
        result := fCacheList.GetImageOriginalHeight(cacheImage);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetImageOriginalWidth(idx: integer; Value: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageOriginalWidth'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        fImageList.SetImageOriginalWidth(image, Value);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetImageOriginalHeight(idx: integer; Value: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageOriginalHeight'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        fImageList.SetImageOriginalHeight(image, Value);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageBitCount

<FM>Declaration<FC>
property ImageBitCount[idx:integer]:integer;

<FM>Description<FN>
ImageBitCount returns the bit count of the specified idx image. It can be:
1 : black/white image
24 : true color image
!!}
function TImageEnMView.GetImageBitCount(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageBitCount'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      if image <> nil then
        result := fImageList.GetImageBitCount(image)
      else if cacheImage<>nil then
        result := fCacheList.GetImageBitCount(cacheImage);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageY

<FM>Declaration<FC>
property ImageY[idx:integer]: integer;

<FM>Description<FN>
ImageY returns the row (in pixels) where the image will be shown.

Read-only

!!}
function TImageEnMView.GetImageY(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageY'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.Y
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageX

<FM>Declaration<FC>
property ImageX[idx:integer]: integer;

<FM>Description<FN>
ImageX returns the column (in pixels) where the image will be shown.

Read-only

!!}
function TImageEnMView.GetImageX(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageX'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.X
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageRow

<FM>Declaration<FC>
property ImageRow[idx:integer]: integer;

<FM>Description<FN>
ImageRow returns the row where is the image idx. ImageRow[] is 0 for the first-upper image, 1 for the second-upper image, etc.

Read only
!!}
function TImageEnMView.GetImageRow(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageRow'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.row
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageCol

<FM>Declaration<FC>
property ImageCol[idx:integer]: integer;

<FM>Description<FN>
ImageCol returns the column where is the image idx. ImageCol[] is 0 for the first-left image, 1 for the second-left image, etc.

Read only
!!}
function TImageEnMView.GetImageCol(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageCol'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.col
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// notes: set ID=-1

procedure TImageEnMView.SetImageFileName(idx: integer; v: WideString);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageFileName'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
    begin
      if assigned(Name) then
        freemem(Name);
      getmem(Name, (length(v) + 1) * sizeof(WideChar) );
      iewstrcopy(Name, pwchar(v));
      ID := -1;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageFileName

<FM>Declaration<FC>
property ImageFileName[idx:integer]: WideString;

<FM>Description<FN>
Specifies the file from where TImageEnMView will obtain the image when it is to be shown.
This property contains the full file path or a special form to load multi-page files. The special form is 'fullfilepath::imageindex'.

<FM>Example<FC>

// load image1.jpg as thumbnail 0 and image2.jpg as thumbnail 1
ImageEnView1.ImageFileName[0]:='c:\image1.jpg';
ImageEnView1.ImageFileName[1]:='c:\image2.jpg';

// load frame 0 and 1 from input.mpeg
ImageEnView1.ImageFileName[0]:='c:\input.mpeg::0';
ImageEnView1.ImageFileName[1]:='c:\input.mpeg::1';

<FM>Example<FC>

This example inserts two images. The first is loaded from 'one.tif' and the second from 'two.tif'.
The images are loaded only when these are shown (otherwise these are freed).

ImageEnMView1.InsertImage(0);
ImageEnMView1.ImageFileName[0]:='one.tif';
ImageEnMView1.InsertImage(1);
ImageEnMView1.ImageFileName[1]:='two.tif';
!!}
function TImageEnMView.GetImageFileName(idx: integer): WideString;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageFileName'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.Name
  else
    result := '';
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// set name=''

procedure TImageEnMView.SetImageID(idx, v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageID'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
    begin
      ID := v;
      freemem(Name);
      Name := nil;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageID

<FM>Declaration<FC>
property ImageID[idx:integer]: integer;

<FM>Description<FN>
ImageID associates a numeric ID with idx image.
This ID is returned to <A TImageEnMView.OnImageIDRequest> event.

!!}
function TImageEnMView.GetImageID(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageID'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.ID
  else
    result := -1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetImageBackground(idx: integer; v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageBackground'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
  begin
    PIEImageInfo(fImageInfo[idx])^.Background := v;
    ClearImageCache(idx);
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageBackground

<FM>Declaration<FC>
property ImageBackground: TColor;

<FM>Description<FN>
ImageBakground is the color of the space between images.

!!}
function TImageEnMView.GetImageBackground(idx: integer): TColor;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageBackground'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.Background
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetImageDelayTime(idx: integer; v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageDelayTime'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    PIEImageInfo(fImageInfo[idx])^.DTime := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageDelayTime

<FM>Declaration<FC>
property ImageDelayTime[idx:integer]: integer;

<FM>Description<FN>
ImageDelayTime is the time in milliseconds the image idx will be shown on playing (Playing property).

!!}
function TImageEnMView.GetImageDelayTime(idx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageDelayTime'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
    result := PIEImageInfo(fImageInfo[idx])^.DTime
  else
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbWidth

<FM>Declaration<FC>
property ThumbWidth: integer;

<FM>Description<FN>
ThumbWidth is the width of the thumbnail and of the image.
See also <A TImageEnMView.ThumbHeight>.
!!}
procedure TImageEnMView.SetThumbWidth(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbWidth'); {$endif}
  fThumbWidth := v;
  ClearCache;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbHeight

<FM>Declaration<FC>
property ThumbHeight: integer;

<FM>Description<FN>
ThumbHeight is the height of the thumbnail.
If <A TImageEnMView.UpperGap> and <A TImageEnMView.BottomGap> are 0, ThumbHeight corresponds to the image height.
See aso <A TImageEnMView.ThumbWidth>.
!!}
procedure TImageEnMView.SetThumbHeight(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbHeight'); {$endif}
  fThumbHeight := v;
  ClearCache;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageCount

<FM>Declaration<FC>
property ImageCount: integer;

<FM>Description<FN>
ImageCount is the number of images stored in the TImageEnMView component.

Read-only

!!}
function TImageEnMView.GetImageCount: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageCount'); {$endif}
  result := fImageInfo.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.HorizBorder

<FM>Declaration<FC>
property HorizBorder: integer;

<FM>Description<FN>
HorizBorder is the horizontal distance between two images.
See also <A TImageEnMView.VertBorder>.
!!}
procedure TImageEnMView.SetHorizBorder(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetHorizBorder'); {$endif}
  fHorizBorder := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.VertBorder

<FM>Declaration<FC>
property VertBorder: integer;

<FM>Description<FN>
VertBorder is the vertical distance between two images.
See also <A TImageEnMView.HorizBorder>.
!!}
procedure TImageEnMView.SetVertBorder(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetVertBorder'); {$endif}
  fVertBorder := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnMView.UpdateCoords

<FM>Declaration<FC>
procedure UpdateCoords;

<FM>Description<FN>
For internal use only.
!!}
// recalc x,y image positions
// update fVWidth and fVHeight
procedure TImageEnMView.UpdateCoords;
var
  q, xx, yy, gw: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.UpdateCoords'); {$endif}
  if fGridWidth = -1 then
    gw := (clientwidth - fHorizBorder) div (fThumbWidth + fHorizBorder)
  else
    gw := fGridWidth;
  xx := 0;
  yy := 0;
  fVWidth := 0;
  fVHeight := 0;
  for q := 0 to fImageInfo.Count - 1 do
  begin
    with PIEImageInfo(fImageInfo[q])^ do
    begin
      x := xx * (fThumbWidth + fHorizBorder);
      y := yy * (fThumbHeight + fVertBorder);
      if fDisplayMode = mdGrid then
      begin
        inc(x, HorizBorder);
        inc(y, VertBorder);
      end;
      row := yy;
      col := xx;
      if x > fVWidth then
        fVWidth := x;
      if y > fVHeight then
        fVHeight := y;
    end;
    // calculates next position
    inc(xx);
    if (fDisplayMode = mdSingle) or (xx = gw) then
    begin
      // horizontal limit, clear column, go to next row
      xx := 0;
      inc(yy);
      if fDisplayMode = mdSingle then
      begin
        // vertical limit, go back to top-left side
        yy := 0;
        xx := 0;
      end;
    end;
  end;
  inc(fVWidth, fThumbWidth + fHorizBorder);
  inc(fVHeight, fThumbHeight + fVertBorder);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnMView.InsertImage

<FM>Declaration<FC>
procedure InsertImage(idx: integer);

<FM>Description<FN>
Insert a new image in idx position (0 is the first). InsertImage doesn't create the bitmap.

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('000.tif');
ImageEnMView1.InsertImage(0);
ImageEnMView1.SetImage(0,ImageEnView1.Bitmap);
!!}
// Insert new image
// Se idx � uguale a ImageCount viene aggiunta alla fine
// La bitmap (Image[]) viene creata come "nil"
// La posizione della bitmap � decisa in base a fHorizImages e fVertImages
// Chiama Update
// L'immagine viene selezionata
// Disattiva player
procedure TImageEnMView.InsertImage(idx: integer);
var
  newinfo: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.InsertImage'); {$endif}
  SetPlaying(false);
  getmem(newinfo, sizeof(TIEImageInfo));
  newinfo^.name := nil;
  newinfo^.ID := -1;
  newinfo^.Background := fBackground;
  newinfo^.DTime := 0;
  newinfo^.image := nil;
  newinfo^.TopText := TIEMText.Create(self, iemtpTop);
  newinfo^.BottomText := TIEMText.Create(self, iemtpBottom);
  newinfo^.InfoText := TIEMText.Create(self, iemtpInfo);
  newinfo^.cacheImage := nil;
  newinfo^.parent := self;
  if idx < fImageInfo.Count then
  begin
    // insert
    fImageInfo.Insert(idx, newinfo); // info
    SetSelectedItemNU(idx);
  end
  else
  begin
    // append
    fImageInfo.Add(newinfo); // info
    SetSelectedItemNU(fImageInfo.Count - 1);
  end;
  fLastImOp := 1; // insert...
  fLastImIdx := fSelectedItem; //...image
  CallBitmapChangeEvents;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnMView.InsertImageEx


<FM>Declaration<FC>
procedure InsertImageEx(idx: integer);

<FM>Description<FN>
InsertImageEx inserts a new image in idx position (0 is the first).
InsertImageEx doesn't create the bitmap and doesn't make the image selected (the only difference from <A TImageEnMView.InsertImage> method).

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('000.tif');
ImageEnMView1.InsertImageEx(0);
ImageEnMView1.SetImage(0,ImageEnView1.Bitmap);

<FM>See also<FC>

<A TImageEnMView.InsertImage> method
<A TImageEnMView.InsertImageEx> method
<A TImageEnMView.DeleteImage> method
<A TImageEnMView.AppendImage> method

!!}
// Insert a new image
// idx is the index where to insert the new image
// If idx is equal to ImageCount it is added at the end
// The bitmap (Image[]) is created as "nil"
// The bitmap position is choised from fHorizImages and fVertImages values
// calls Update
// The image is not selected
// disable player
procedure TImageEnMView.InsertImageEx(idx: integer);
var
  newinfo: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.InsertImageEx'); {$endif}
  SetPlaying(false);
  getmem(newinfo, sizeof(TIEImageInfo));
  newinfo^.name := nil;
  newinfo^.ID := -1;
  newinfo^.Background := fBackground;
  newinfo^.DTime := 0;
  newinfo^.image := nil;
  newinfo^.TopText := TIEMText.Create(self, iemtpTop);
  newinfo^.BottomText := TIEMText.Create(self, iemtpBottom);
  newinfo^.InfoText := TIEMText.Create(self, iemtpInfo);
  newinfo^.cacheImage := nil;
  newinfo^.parent := self;
  if idx < fImageInfo.Count then
  begin
    // insert
    fImageInfo.Insert(idx, newinfo); // info
  end
  else
  begin
    // append
    fImageInfo.Add(newinfo); // info
  end;
  fLastImOp := 1; // insert...
  fLastImIdx := idx; //...image
  CallBitmapChangeEvents;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.AppendImage

<FM>Declaration<FC>
function AppendImage:integer;

<FM>Description<FN>
AppendImage appends a new image at last position in the list and returns the new image position.

AppendImage doesn't create the bitmap.

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('000.tif');
idx:=ImageEnMView1.AppendImage;
ImageEnMView1.SetImage(idx,ImageEnView1.Bitmap);

!!}
function TImageEnMView.AppendImage: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.AppendImage'); {$endif}
  result := fImageInfo.Count;
  InsertImage(fImageInfo.Count);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// like AppendImage, but creates a bitmap with specified size and format
{!!
<FS>TImageEnMView.AppendImage2

<FM>Declaration<FC>
function AppendImage2(Width,Height:integer; PixelFormat:<A TIEPixelFormat>):integer;

<FM>Description<FN>
AppendImage2 performs the same operations of <A TImageEnMView.AppendImage> and also creates a new image with specified size and pixelformat.

<FM>Example<FC>

ImageEnMView1.AppendImage2(256,256,ie24RGB);

!!}
function TImageEnMView.AppendImage2(Width,Height:integer; PixelFormat:TIEPixelFormat):integer;
var
  temp:TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.AppendSpecImage'); {$endif}
  result:=AppendImage;
  temp:=TIEBitmap.Create;
  temp.Allocate(Width,Height,PixelFormat);
  SetIEBitmap(result, temp);
  temp.free;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Delete image idx
// doesn't call Update
// Return true if image correctly deleted
// Disable playing
function TImageEnMView.DeleteImageNU(idx: integer): boolean;
var
  psel: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DeleteImageNU'); {$endif}
  SetPlaying(false);
  if idx < fImageInfo.Count then
  begin

    AbortImageLoading(idx); // 2.3.2

    psel := fSelectedItem;
    DeselectNU;
    if PIEImageInfo(fImageInfo[idx])^.image <> nil then
    begin
      fImageList.Delete(PIEImageInfo(fImageInfo[idx])^.image);
      ClearImageCache(idx);
    end;
    with PIEImageInfo(fImageInfo[idx])^ do
    begin
      // free file name (pchar)
      if assigned(Name) then
        freemem(Name);
      FreeAndNil(TopText);
      FreeAndNil(BottomText);
      FreeAndNil(InfoText);
    end;
    // free imageinfo
    freemem(fImageInfo[idx]);
    fImageInfo.Delete(idx);
    //
    if (psel = idx) and (idx >= fImageInfo.Count) then
      SetSelectedItemNU(fImageInfo.Count - 1)
    else if psel > idx then
      SetSelectedItemNU(psel - 1)
    else
      SetSelectedItemNU(psel);
    //
    fLastImOp := 2; // delete...
    fLastImIdx := idx; //...image
    CallBitmapChangeEvents;
    result := true;
  end
  else
    result := false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.DeleteSelectedImages

<FM>Declaration<FC>
procedure DeleteSelectedImages;

<FM>Description<FN>
DeleteSelectedImages removes all selected images in one step.

!!}
procedure TImageEnMView.DeleteSelectedImages;
var
  q: integer;
  cp: TList;
  //
  function Compare(Item1, Item2: Pointer): Integer;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DeleteSelectedImages.Compare'); {$endif}
    result := integer(Item1) - integer(Item2);
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
  //
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DeleteSelectedImages'); {$endif}
  fMultiSelectedImages.Sort(@Compare);
  cp := TList.Create;
  for q := 0 to fMultiSelectedImages.Count - 1 do
    cp.Add(fMultiSelectedImages[q]);
  for q := cp.Count - 1 downto 0 do
  begin
    DeleteImageNU(integer(cp[q]));
  end;
  FreeAndNil(cp);
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// delete image idx

{!!
<FS>TImageEnMView.DeleteImage

<FM>Declaration<FC>
procedure DeleteImage(idx: integer);

<FM>Description<FN>
Deletes idx image. Frees bitmap memory.

!!}
procedure TImageEnMView.DeleteImage(idx: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DeleteImage'); {$endif}
  if DeleteImageNU(idx) then
    UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// This method is called whenever the zoom or viewx/y changes.

procedure TImageEnMView.ViewChange(c: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ViewChange'); {$endif}
  if assigned(fOnViewChange) and fUserAction then
    fOnViewChange(self, c);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.Update

<FM>Declaration<FC>
procedure Update;

<FM>Description<FN>
Updates display with the actual content and properties of the component.
!!}
procedure TImageEnMView.Update;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Update'); {$endif}
  UpdateEx(true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.UpdateEx(UpdateCache:boolean);
var
  max_x, max_y, i: integer;
  lClientWidth, lClientHeight: integer;
  bb: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.UpdateEx'); {$endif}
  if fLockPaint > 0 then
    exit;
  if fUpdating then
    exit;
  if fDestroying then
    exit;
  if not HandleAllocated then // 3.0.0
    exit;
{$IFDEF IEFIXUPDATE}
  if (ComponentState <> []) and (ComponentState <> [csDesigning]) and (ComponentState <> [csFreeNotification]) then
    exit;
{$ELSE}
  if (ComponentState <> []) and (ComponentState <> [csDesigning]) then
    exit;
{$ENDIF}
  if (GetParentForm(self) = nil) and (ParentWindow = 0) then
    exit;
  if not (csDesigning in ComponentState) then
  begin
    fUpdating := true;
    if UpdateCache then
      ClearCache;
    UpdateCoords;
    for i := 0 to 8 do
    begin
      lClientWidth := ClientWidth;
      lClientHeight := ClientHeight;
      bb := false;
      GetMaxViewXY(max_x, max_y);
      if fViewX > max_x then
      begin
        fViewX := max_x;
        bb := true;
      end;
      if fViewY > max_y then
      begin
        fViewY := max_y;
        bb := true;
      end;
      if bb then
        ViewChange(0);
      try
        if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
        begin
          if (max_x > 0) then
          begin
            fRXScroll := (max_x + ClientWidth - 1) / 65536;
            IESetScrollRange(Handle, SB_HORZ, 0, 65535, false, fFlatScrollBars);
            IESetSBPageSize(Handle, SB_HORZ, trunc(ClientWidth / fRXScroll), true, fFlatScrollBars);
            IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), false, fFlatScrollBars);
            IEEnableScrollBar(Handle, SB_HORZ, ESB_ENABLE_BOTH, fFlatScrollBars);
            IEShowScrollBar(handle, SB_HORZ, true, fFlatScrollBars);
          end
          else if fScrollBarsAlwaysVisible then
          begin
            IEEnableScrollBar(Handle, SB_HORZ, ESB_DISABLE_BOTH, fFlatScrollBars);
            IEShowScrollBar(handle, SB_HORZ, true, fFlatScrollBars);
          end
          else
            IEShowScrollBar(handle, SB_HORZ, false, fFlatScrollBars);
        end;
        if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
        begin
          if (max_y > 0) then
          begin
            fRYScroll := (max_y + ClientHeight - 1) / 65536;
            IESetScrollRange(Handle, SB_VERT, 0, 65535, false, fFlatScrollBars);
            IESetSBPageSize(Handle, SB_VERT, trunc(ClientHeight / fRYScroll), true, fFlatScrollBars);
            IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), false, fFlatScrollBars);
            IEEnableScrollBar(Handle, SB_VERT, ESB_ENABLE_BOTH, fFlatScrollBars);
            IEShowScrollBar(handle, SB_VERT, true, fFlatScrollBars);
          end
          else if fScrollBarsAlwaysVisible then
          begin
            IEEnableScrollBar(Handle, SB_VERT, ESB_DISABLE_BOTH, fFlatScrollBars);
            IEShowScrollBar(handle, SB_VERT, true, fFlatScrollBars);
          end
          else
            IEShowScrollBar(handle, SB_VERT, false, fFlatScrollBars);
        end;
      except
      end;
      if (lClientWidth = ClientWidth) and (lClientHeight = ClientHeight) then
        break; // exit from for loop (no other adjustments necessary)
    end;
    CallBitmapChangeEvents;
    fUpdating := false;
  end;
  invalidate;
  redrawwindow(handle, nil, 0, RDW_FRAME or RDW_INVALIDATE or RDW_ALLCHILDREN);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.PaletteChanged(Foreground: Boolean): Boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.PaletteChanged'); {$endif}
{$IFNDEF OCXVERSION}
  if assigned(application) and assigned(application.mainform) and assigned(application.mainform.canvas) then
  begin
    if IEDrawDibRealize(fHDrawDib, application.mainform.canvas.handle, false) > 0 then
      invalidate;
  end
  else
    invalidate;
{$ELSE}
  invalidate;
{$ENDIF}
  result := true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetBackGround(cl: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetBackGround'); {$endif}
  inherited SetBackGround(cl);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetImageEx

<FM>Declaration<FC>
procedure SetImageEx(idx:integer; v:TBitmap);

<FM>Description<FN>
SetImageEx sets the image assigned to idx index. The v bitmap is copied internally; therefore you can free v after SetImageEx.

SetImageEx doesn't call <A TImageEnMView.Update> (the only difference from <A TImageEnMView.SetImage>).

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('000.tif');
ImageEnMView1.InsertImageEx(0);
ImageEnMView1.SetImageEx(0,ImageEnView1.Bitmap);
ImageEnMView1.Update;	 // no needed on SetImage()

!!}
procedure TImageEnMView.SetImageEx(idx: integer; v: TBitmap);
var
  tbmp: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageEx'); {$endif}
  if v <> nil then
  begin
    tbmp := TIEBitmap.Create;
    tbmp.EncapsulateTBitmap(v, true);
    SetIEBitmapEx(idx, tbmp);
    FreeAndNil(tbmp);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetIEBitmap

<FM>Declaration<FC>
procedure SetIEBitmap(idx:integer; v:<A TIEBaseBitmap>);

<FM>Description<FN>
SetIEBitmap sets the image assigned to idx index. The v bitmap is copied internally, therefore you can free v after SetIEBitmap.

<FM>Example<FC>
ImageEnView1.IO.LoadFromFile('000.tif');
ImageEnMView1.InsertImageEx(0);
ImageEnMView1.SetIEBitmap(0,ImageEnView1.IEBitmap);

!!}
procedure TImageEnMView.SetIEBitmap(idx: integer; v: TIEBaseBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetIEBitmap'); {$endif}
  if v <> nil then
  begin
    SetIEBitmapEx(idx, v);
    ClearImageCache(idx);
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// SetIEBitmapEx creates a new copy of "v" (then v can be freed)
// Doesn't call Update

procedure TImageEnMView.SetIEBitmapEx(idx: integer; v: TIEBaseBitmap);
var
  bmp: TIEBitmap;
  ww, hh: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetIEBitmapEx'); {$endif}
  if v <> nil then
  begin
    if (idx > -1) and (idx < fImageInfo.Count) then
    begin
      if PIEImageInfo(fImageInfo[idx])^.image <> nil then
      begin
        fImageList.Delete(PIEImageInfo(fImageInfo[idx])^.image);
        ClearImageCache(idx);
      end;
      if (fStoreType = ietThumb) and (fEnableResamplingOnMinor or (v.Width > fThumbWidth) or (v.Height > fThumbHeight)) then
      begin
        if (v.width = 0) or (v.height = 0) then
        begin
          ww := fThumbWidth;
          hh := fThumbHeight;
        end
        else
          IEFitResample(v.width, v.height, fThumbWidth, fThumbHeight, ww, hh);
        if (v.Width <> ww) or (v.Height <> hh) then
        begin
          bmp := TIEBitmap.Create;
          bmp.allocate(ww, hh, ie24RGB);

          if (v is TIEBitmap) and (v as TIEBitmap).HasAlphaChannel then
            _IESetAlpha0Color(v as TIEBitmap, CreateRGB(128, 128, 128));
          if v.pixelformat = ie1g then
          begin
            _SubResample1bitFilteredEx(v, 0, 0, v.width - 1, v.height - 1, bmp)
          end
          else
          begin
            if v.PixelFormat<>ie24RGB then
            begin
              bmp.PixelFormat:=v.PixelFormat;
              _IEBmpStretchEx(v, bmp, nil, nil);
            end
            else if (fThumbnailResampleFilter = rfNone) then
              _IEBmpStretchEx(v, bmp, nil, nil)
            else
              _ResampleEx(v, bmp, fThumbnailResampleFilter, nil, nil);
          end;
          if (v is TIEBitmap) and (v as TIEBitmap).HasAlphaChannel then
          begin
            if fThumbnailResampleFilter = rfNone then
              _resamplealphaex((v as TIEBitmap).AlphaChannel, bmp.AlphaChannel, rfFastLinear)
            else
              _resamplealphaex((v as TIEBitmap).AlphaChannel, bmp.AlphaChannel, fThumbnailResampleFilter);
            bmp.AlphaChannel.Full := (v as TIEBitmap).AlphaChannel.Full;
          end;

          PIEImageInfo(fImageInfo[idx])^.image := fImageList.AddIEBitmap(bmp);
          FreeAndNil(bmp);
        end
        else
          PIEImageInfo(fImageInfo[idx])^.image := fImageList.AddIEBitmap(v);
      end
      else
      begin
        PIEImageInfo(fImageInfo[idx])^.image := fImageList.AddIEBitmap(v);
      end;
      fImageList.SetImageOriginalWidth(PIEImageInfo(fImageInfo[idx])^.image, v.Width);
      fImageList.SetImageOriginalHeight(PIEImageInfo(fImageInfo[idx])^.image, v.Height);
    end;
    if idx = fSelectedItem then
    begin
      fSelectedBitmap := nil;
      //fSelectedBitmap:=GetBitmap(fSelectedItem);
      CallBitmapChangeEvents;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetImage

<FM>Declaration<FC>
procedure SetImage(idx:integer; v:TBitmap);

<FM>Description<FN>
SetImage sets the image assigned to idx index. The v bitmap is copied internally; therefore you can free v after SetImage.

!!}
procedure TImageEnMView.SetImage(idx: integer; v: TBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImage'); {$endif}
  SetImageEx(idx, v);
  ClearImageCache(idx);
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// creates a new copy of "v" (then v can be freed)
{!!
<FS>TImageEnMView.SetImageRect

<FM>Declaration<FC>
procedure SetImageRect(idx:integer; v:TBitmap; x1,y1,x2,y2:integer);

<FM>Description<FN>
SetImageRect sets the image assigned to idx index.
The rectangle x1, y1, x2, y2 of v bitmap is copied internally. After SetImage you can free v bitmap.

!!}
procedure TImageEnMView.SetImageRect(idx: integer; v: TBitmap; x1, y1, x2, y2: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageRect'); {$endif}
  if idx < fImageInfo.Count then
  begin
    x1 := imin(v.width - 1, x1);
    y1 := imin(v.height - 1, y1);
    x2 := imin(v.width - 1, x2);
    y2 := imin(v.height - 1, y2);
    if PIEImageInfo(fImageInfo[idx])^.image <> nil then
    begin
      fImageList.Delete(PIEImageInfo(fImageInfo[idx])^.image);
      ClearImageCache(idx);
    end;
    PIEImageInfo(fImageInfo[idx])^.image := fImageList.AddBitmapRect(v, x1, y1, x2 - x1 + 1, y2 - y1 + 1);
    fImageList.SetImageOriginalWidth(PIEImageInfo(fImageInfo[idx])^.image, v.Width);
    fImageList.SetImageOriginalHeight(PIEImageInfo(fImageInfo[idx])^.image, v.Height);
    if idx = fSelectedItem then
    begin
      //fSelectedBitmap:=GetBitmap(fSelectedItem);
      fSelectedBitmap := nil;
      CallBitmapChangeEvents;
    end;
    ClearImageCache(idx);
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// creates a new copy of "v" (then v can be freed)
procedure TImageEnMView.SetImageRect(idx: integer; v: TIEBitmap; x1, y1, x2, y2: integer);
var
  temp:TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageRect'); {$endif}
  temp:=TIEBitmap.Create;
  temp.Allocate(x2-x1+1,y2-y1+1,v.PixelFormat);
  v.CopyRectTo(temp,x1,y1,0,0,x2-x1+1,y2-y1+1);
  SetIEBitmap(idx,temp);
  temp.free;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// returns image index at x,y position
// -1 no image

{!!
<FS>TImageEnMView.ImageAtPos

<FM>Declaration<FC>
function ImageAtPos(x,y:integer):integer;

<FM>Description<FN>
Use ImageAtPos when you want to know which image is at the specified location within the control.
Specify the position in client coordinates as the value of the x, y parameters.

If there is no control at the specified position, ImageAtPos returns -1.


<FM>Example<FC>

// Display in the status bar file name of the image where is the mouse
procedure TForm1.ImageEnMView1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  StatusBar1.SimpleText:=ImageEnMView1.ImageFileName[ ImageEnMView1.ImageAtPos(x,y) ];
end;

!!}
function TImageEnMView.ImageAtPos(x, y: integer): integer;
var
  ix, iy: integer;
  x1, y1, x2, y2: integer;
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ImageAtPos'); {$endif}
  ix := (x + fViewX) div (fHorizBorder + fThumbWidth);
  iy := (y + fViewY) div (fVertBorder + fThumbHeight);
  result := ImageAtGridPos(iy, ix);
  if result >= fImageInfo.Count then
    result := -1;
  if result >= 0 then
  begin
    // verify if inside the thumbnail rectangle
    info := PIEImageInfo(fImageInfo[result]);
    x1 := info^.X - fViewX;
    y1 := info^.Y - fViewY;
    x2 := x1 + fThumbWidth - 1;
    y2 := y1 + fThumbHeight;
    if not _InRect(x, y, x1, y1, x2, y2) then
      result := -1;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageAtGridPos

<FM>Declaration<FC>
function ImageAtGridPos(row,col:integer):integer;

<FM>Description<FN>
ImageAtGridPos returns the index of the image at row, col position. row=0 and col=0 specifies top-left image.

!!}
function TImageEnMView.ImageAtGridPos(row, col: integer): integer;
var
  gw: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ImageAtGridPos'); {$endif}
  if fGridWidth = -1 then
    gw := (clientwidth - fHorizBorder) div (fThumbWidth + fHorizBorder)
  else
    gw := fGridWidth;
  result := row * gw + col;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// return =fImageInfo.Count if after last thumbnail

{!!
<FS>TImageEnMView.InsertingPoint

<FM>Declaration<FC>
function InsertingPoint(x,y:integer):integer;

<FM>Description<FN>
The InsertingPoint function returns the index of the image before or after the x, y position.
It is useful when an image needs to be inserted at a particular x, y mouse position.

<FM>Example<FC>

// this drag/drop event copy all selected images of ImageEnMView1 to ImageEnMView2, starting at X,Y mouse position
procedure TForm1.ImageEnMView2DragDrop(Sender, Source: TObject; X,Y: Integer);
var
   i:integer;
   idx,im:integer;
   tmpbmp:TBitmap;
begin
   im:=ImageEnMView2.InsertingPoint(X,Y);
   for i:=0 to ImageEnMView1.MultiSelectedImagesCount-1 do begin
      idx:=ImageEnMView1.MultiSelectedImages[i];
      tmpbmp:=ImageEnMView1.GetBitmap( idx );
      ImageEnMView2.InsertImage(im);
      ImageEnMView2.SetImage(im,tmpbmp);
      inc(im);
      ImageEnMView1.ReleaseBitmap( idx );
   end;
end;

!!}
function TImageEnMView.InsertingPoint(x, y: integer): integer;
var
  ix, iy, gw: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.InsertingPoint'); {$endif}
  ix := (x + fViewX) div (fHorizBorder + fThumbWidth);
  iy := (y + fViewY) div (fVertBorder + fThumbHeight);
  if fGridWidth = -1 then
    gw := (clientwidth - fHorizBorder) div (fThumbWidth + fHorizBorder)
  else
    gw := fGridWidth;
  if (gw > 0) and (ix > gw) then
    ix := gw;
  result := imin(iy * gw + ix, fImageInfo.Count); // not fImageInfo.Count-1 !!
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  sidx:integer;
  lSelectInclusive: boolean;
  lMultiSelecting: boolean;
  //wasSelected: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MouseDown'); {$endif}
  inherited;
  try
  fUserAction:=true;
  if fDoubleClicking then
  begin
    fDoubleClicking := false;
    exit;
  end;
{$IFDEF OCXVERSION}
  SetFocus;
{$ELSE}
  if CanFocus then
    SetFocus;
{$ENDIF}
  fHSX1 := x;
  fHSY1 := y;
  fHSVX1 := ViewX;
  fHSVY1 := ViewY;
  fHSIDX := ImageAtPos(x, y);
  fLHSIDX := fHSIDX;
  fHaveMultiselected := false;
  fMDown := true;
  fChangedSel:=false;
  if not (iemoSelectOnMouseUp in fMultiSelectionOptions) and (Button = mbLeft) and (mmiSelect in fMouseInteract) then
  begin
    // select on mouse down

    sidx := ImageAtPos(x, y);

    if (ssShift in Shift) and fEnableMultiSelect then // 2.3.3 (req 15/10/07 17.34)
    begin
      sidx := fHSIDX2;
      if sidx < 0 then
        sidx := 0;
      lSelectInclusive := fSelectInclusive;
      lMultiSelecting := fMultiSelecting;
      fMultiSelecting := false;
      fSelectInclusive := true;
      DeselectNU;
      SetSelectedItemNU(sidx);
      fMultiSelecting := lMultiSelecting;
      SelectAtPos(X, Y, [ssShift]);
      fSelectInclusive := lSelectInclusive;
      fHaveMultiselected := true;
    end
    else if not IsSelected(sidx) then
    begin
      fHSIDX2:=sidx;
      SelectAtPos(X, Y, Shift);
    end
    else
      fHSIDX2:=sidx;

  end;

  finally
    fUserAction:=false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  lSelectInclusive: boolean;
  lMultiSelecting: boolean;
  idx: integer;
  //wasSelected: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MouseMove'); {$endif}
  inherited;
  try
  fUserAction:=true;
  if MouseCapture then
  begin
    if (mmiSelect in fMouseInteract) and fEnableMultiSelect then
    begin
      idx := ImageAtPos(x, y);
      if (idx <> fLHSIDX) and (idx <> -1) (*and (not wasSelected)*) then
      begin
        fLHSIDX := idx;
        idx := fHSIDX;
        if idx < 0 then
          idx := 0;
        lSelectInclusive := fSelectInclusive;
        lMultiSelecting := fMultiSelecting;
        fMultiSelecting := false;
        fSelectInclusive := true;
        DeselectNU;
        SetSelectedItemNU(idx);
        fMultiSelecting := lMultiSelecting;
        SelectAtPos(X, Y, [ssShift]);
        fSelectInclusive := lSelectInclusive;
        fHaveMultiselected := true;
        //if not wasSelected then
        //  DoImageSelect(fSelectedItem);
      end;
    end;
    if mmiScroll in fMouseInteract then
    begin
      if ((X - fHSx1)<>0) or ((Y - fHSy1)<>0) then
      begin
        SetViewXY(fHSVX1 - (X - fHSx1), fHSVY1 - (Y - fHSy1));
        ViewChange(0);
      end;
    end;
  end;
  finally
    fUserAction:=false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MouseUp'); {$endif}
  inherited;
  try
  fUserAction:=true;
  if not fMDown then
    exit;
  fMDown := false;
  if fDragging then
    exit;
  if fPlaying then
    exit;
  if Button = mbLeft then
  begin
    if (iemoSelectOnMouseUp in fMultiSelectionOptions) and (not fHaveMultiselected) and (mmiSelect in fMouseInteract) then
    begin
      // we select on "mouse up"
      SelectAtPos(X, Y, Shift);
      //DoImageSelect(fSelectedItem);
    end;
    if not (iemoSelectOnMouseUp in fMultiSelectionOptions) and (not fChangedSel) then
    begin
      // when we select on "mouse down", there is one case where we still need to select on mouse up
      SelectAtPos(X,Y,Shift);
    end;
    if (mmiScroll in fMouseInteract) then
      SetViewXY(fHSVX1 - (X - fHSx1), fHSVY1 - (Y - fHSy1))
  end;
  finally
    fUserAction:=false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SelectAtPos(X, Y: integer; Shift: TShiftState);
var
  idx, q, col, row: integer;
  lMultiSelecting: boolean;
  row1, row2, col1, col2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SelectAtPos'); {$endif}
  // find the image where user has clicked (put in fSelectedItem)
  lMultiSelecting := fMultiSelecting;
  if (ssCtrl in Shift) or (ssShift in Shift) then
    fMultiSelecting := true;
  idx := ImageAtPos(x, y);
  if idx >= 0 then
  begin
    if fEnableMultiSelect and ((idx <> fSelectedItem) or fMultiSelecting) then  // 2.3.3 (req 15/10/07 17.34)
    begin
      if ssShift in Shift then
      begin
        // SHIFT pressed, select range

        if iemoRegion in fMultiSelectionOptions then
        begin
          row1 := ImageRow[fSelectedItem];
          row2 := ImageRow[idx];
          col1 := ImageCol[fSelectedItem];
          col2 := ImageCol[idx];
          if row1 > row2 then
            iswap(row1, row2);
          if col1 > col2 then
            iswap(col1, col2);
          for row := row1 to row2 do
            for col := col1 to col2 do
            begin
              q := ImageAtGridPos(row, col);
              if (q <> fSelectedItem) and (q <> idx) and (fMultiSelectedImages.IndexOf(pointer(q)) = -1) then
                SetSelectedItemNU(q);
            end;
        end
        else
        begin
          if fSelectedItem < idx then
          begin
            for q := fSelectedItem + 1 to idx - 1 do
              if fMultiSelectedImages.IndexOf(pointer(q)) = -1 then
                SetSelectedItemNU(q);
          end
          else
          begin
            for q := fSelectedItem - 1 downto idx + 1 do
              if fMultiSelectedImages.IndexOf(pointer(q)) = -1 then
                SetSelectedItemNU(q);
          end;
        end;
      end;
    end;
    SetSelectedItemNU(idx);
    if fVisibleSelection then
      UpdateEx(false);
    CallBitmapChangeEvents;
  end;
  fMultiSelecting := lMultiSelecting;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.VisibleSelection

<FM>Declaration<FC>
property VisibleSelection: boolean;

<FM>Description<FN>
If True, show current selection.
!!}
procedure TImageEnMView.SetVisibleSelection(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetVisibleSelection'); {$endif}
  fVisibleSelection := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectionWidth

<FM>Declaration<FC>
property SelectionWidth: integer;

<FM>Description<FN>
SelectionWidth is the width of the selection. This value must be less than <A TImageEnMView.HorizBorder> and <A TImageEnMView.VertBorder>.
!!}
procedure TImageEnMView.SetSelectionWidth(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectionWidth'); {$endif}
  fSelectionWidth := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectionAntialiased

<FM>Declaration<FC>
property SelectionAntialiased: boolean;

<FM>Description<FN>
When true the selection is antialiased.
!!}
procedure TImageEnMView.SetSelectionAntialiased(v:boolean);
begin
  fSelectionAntialiased:=v;
  Update;
end;

{!!
<FS>TImageEnMView.SelectionWidthNoFocus

<FM>Declaration<FC>
property SelectionWidthNoFocus: integer;

<FM>Description<FN>
This property specifies the selection width when the component hasn't the focus. The default value is 1.
!!}
procedure TImageEnMView.SetSelectionWidthNoFocus(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectionWidthNoFocus'); {$endif}
  fSelectionWidthNoFocus := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectionColor

<FM>Declaration<FC>
property SelectionColor: TColor;

<FM>Description<FN>
SelectionColor is the color of the selection.
!!}
procedure TImageEnMView.SetSelectionColor(v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectionColor'); {$endif}
  fSelectionColor := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.BeginSelectImages

<FM>Declaration<FC>
procedure BeginSelectImages;

<FM>Description<FN>
Call BeginSelectImages and <A TImageEnMView.EndSelectImages> when you need to select multiple images without refreshing the component's state. Generally this will speed up the selection process.

<FM>Example<FC>

// select the first 100 images
ImageEnMView1.BeginSelectImages;
for i:=0 to 99 do
  ImageEnMView1.SelectedImage:=i;
ImageEnMView1.EndSelectImages;

!!}
procedure TImageEnMView.BeginSelectImages;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.BeginSelectImages'); {$endif}
  DeselectNU;
  fSelectImages := true;
  fMultiSelecting := true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.EndSelectImages

<FM>Declaration<FC>
procedure EndSelectImages;

<FM>Description<FN>
Call <A TImageEnMView.BeginSelectImages> and EndSelectImages when you need to select multiple images without refreshing the component's state. Generally this will speed up the selection process.

<FM>Example<FC>

// select the first 100 images
ImageEnMView1.BeginSelectImages;
for i:=0 to 99 do
  ImageEnMView1.SelectedImage:=i;
ImageEnMView1.EndSelectImages;

!!}
procedure TImageEnMView.EndSelectImages;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.EndSelectImages'); {$endif}
  fSelectImages := false;
  fMultiSelecting := false;
  if fMultiSelectedImages.Count > 0 then
  begin
    fSelectedItem := integer(fMultiSelectedImages[fMultiSelectedImages.Count - 1]); // select last selected image
    //fSelectedBitmap:=GetBitmap(fSelectedItem);
    fSelectedBitmap := nil;
  end;
  CallBitmapChangeEvents;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectedImage

<FM>Declaration<FC>
property SelectedImage: integer;

<FM>Description<FN>
SelectedImage gets/sets the currently selected image. The selected image is shown with a contour.
You can get the bitmap (TBitmap object) of selected image with <A TImageEnMView.Bitmap> property.

!!}
procedure TImageEnMView.SetSelectedItem(v: integer);
//var
//  wasSelected: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectedItem'); {$endif}
  if fPlaying then
    exit;
  if (not fMultiSelecting) and (v=fSelectedItem) then
    exit;
  if (v < fImageInfo.Count) and (v >= 0) then
  begin
    SetSelectedItemNU(v);
    if not fSelectImages then
    begin
      UpdateEx(false);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// doesn't call Update
// indexes that isn't inside bounds are ignored

procedure TImageEnMView.SetSelectedItemNU(v: integer);
var
  i,q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectedItemNU'); {$endif}
  fChangedSel:=false;
  if fPlaying then
    exit;
  if (v < fImageInfo.Count) and (v >= 0) then
  begin
    if fSelectedItem >= 0 then
    begin
      if fSelectedBitmap <> nil then
        fImageList.ReleaseBitmap(fSelectedBitmap, true);
      //ClearImageCache(fSelectedItem); // ....  removed in 2.1.9
    end;
    if fEnableMultiSelect then
    begin
      if not fMultiSelecting then
      begin
        for i:=0 to fMultiSelectedImages.Count-1 do
          DoImageDeselect( integer(fMultiSelectedImages[i]) );
        fMultiSelectedImages.clear;
        fChangedSel:=true;
      end
      else
      begin
        if not fSelectImages then
        begin
          q := fMultiSelectedImages.IndexOf(pointer(v));
          if q > -1 then
          begin
            // item already selected, unselect when fMultiSelecting is True
            DoImageDeselect( v );
            fMultiSelectedImages.Delete(q);
            fChangedSel:=true;
            if not fSelectInclusive then
            begin
              fSelectedItem := -1;
              EXIT; // EXIT POINT!!
            end;
          end;
        end;
      end;
      fMultiSelectedImages.Add(pointer(v));
      fChangedSel:=true;
    end;
    if fSelectImages then
    begin
      // inside BeginSelectImages...EndSelectimages the SelectedItem doesn't change (also fSelectedBitmap doesn't change)
      fSelectedItem := -1;
      fChangedSel := true;
    end
    else
    begin
      fSelectedItem := v;
      fChangedSel:=true;
      //fSelectedBitmap:=GetBitmap(fSelectedItem);
      fSelectedBitmap := nil;
      CallBitmapChangeEvents;
      DoImageSelect( fSelectedItem );
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.DeSelect

<FM>Declaration<FC>
procedure DeSelect;

<FM>Description<FN>
Deselects all selected images.
!!}
procedure TImageEnMView.Deselect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Deselect'); {$endif}
  DeselectNU;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// doesn't call Update

procedure TImageEnMView.DeselectNU;
var
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DeselectNU'); {$endif}
  if fSelectedItem >= 0 then
  begin
    fImageList.ReleaseBitmapByImage(PIEImageInfo(fImageInfo[fSelectedItem])^.image, true);
    //ClearImageCache(fSelectedItem); // ....  removed in 2.1.9
  end;
  if fEnableMultiSelect then
  begin
    for i:=0 to fMultiSelectedImages.Count-1 do
      DoImageDeselect( integer(fMultiSelectedImages[i]) );
    fMultiSelectedImages.clear;
  end
  else
    DoImageDeselect( fSelectedItem );
  fSelectedItem := -1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.UnSelectImage

<FM>Declaration<FC>
procedure UnSelectImage(idx:integer);

<FM>Description<FN>
UnSelectImage unselects a specified image when multiselection is enabled.

!!}
procedure TImageEnMView.UnSelectImage(idx: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.UnSelectImage'); {$endif}
  if (idx >= 0) and (idx < ImageCount) then
  begin
    if idx = fSelectedItem then
    begin
      fImageList.ReleaseBitmapByImage(PIEImageInfo(fImageInfo[fSelectedItem])^.image, true);
      ClearImageCache(fSelectedItem);
      fMultiSelectedImages.Remove(pointer(idx));
      fSelectedItem := -1;
    end
    else
    begin
      fMultiSelectedImages.Remove(pointer(idx));
    end;
    DoImageDeselect( fSelectedItem );
  end;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.CopyToIEBitmap

<FM>Declaration<FC>
procedure CopyToIEBitmap(idx:integer; bmp:<A TIEBitmap>);

<FM>Description<FN>
CopyToIEBitmap method copies the specified idx image to the destination <A TImageEnMView.IEBitmap> object.

!!}
procedure TImageEnMView.CopyToIEBitmap(idx: integer; bmp: TIEBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CopyToIEBitmap'); {$endif}
  with PIEImageInfo(fImageInfo[idx])^ do
  begin
    // transform hbi to TBitmap object
    if image = nil then
      ObtainImageNow(idx);
    if image <> nil then
    begin
      // image present
      fImageList.CopyToIEBitmap(image, bmp);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GetBitmap

<FM>Declaration<FC>
function GetBitmap(idx:integer):TBitmap;

<FM>Description<FN>
GetBitmap creates a TBitmap object from the image contained in idx index.
Each change you make to the bitmap will be visible after you have called the <A TImageEnMView.Update> method.
You have to call <A TImageEnMView.ReleaseBitmap> to free the TBitmap object.

<FM>Example<FC>

bmp:=ImageEnMView1.GetBitmap(0);
bmp.SaveToFile('alfa.bmp');
ImageEnMView1.ReleaseBitmap(0);
!!}
function TImageEnMView.GetBitmap(idx: integer): TBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetBitmap'); {$endif}
  result := nil;
  with PIEImageInfo(fImageInfo[idx])^ do
  begin
    // transform hbi to TBitmap object
    if image = nil then
      ObtainImageNow(idx);
    if image <> nil then
    begin
      // image present
      result := fImageList.GetBitmap(image).VclBitmap;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GetTIEBitmap

<FM>Declaration<FC>
function GetTIEBitmap(idx:integer):<A TIEBitmap>;

<FM>Description<FN>
GetTIEBitmap creates a <A TIEBitmap> object from the image contained at idx index.
Each changement you make in the bitmap will be visible after you have called <A TImageEnMView.Update> method.
You have to call <A TImageEnMView.ReleaseBitmap> to free the <A TIEBitmap> object.

<FM>Example<FC>
bmp:=ImageEnMView1.GetTIEBitmap(0); // bmp must be TIEBitmap type
. . .
ImageEnMView1.ReleaseBitmap(0);

!!}
function TImageEnMView.GetTIEBitmap(idx: integer): TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetTIEBitmap'); {$endif}
  result := nil;
  with PIEImageInfo(fImageInfo[idx])^ do
  begin
    // transform hbi to TBitmap object
    if image = nil then
      ObtainImageNow(idx);
    if image <> nil then
    begin
      // image present
      result := fImageList.GetBitmap(image);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ReleaseBitmap

<FM>Declaration<FC>
procedure ReleaseBitmap(idx:integer);

<FM>Description<FN>
ReleaseBitmap releases the bitmap created with GetBitmap method.
!!}
procedure TImageEnMView.ReleaseBitmap(idx: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ReleaseBitmap'); {$endif}
  fImageList.ReleaseBitmapByImage(PIEImageInfo(fImageInfo[idx])^.image, true);
  ClearImageCache(idx);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.ClearOnDemandIOList;
var
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ClearOnDemandIOList'); {$endif}
  for i:=0 to fMultiOnDemands.Count-1 do
  begin
    TImageEnIO(fMultiOnDemands[i]).Free;
    fMultiOnDemands[i]:=nil;
  end;
  fMultiOnDemands.Clear;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetOnDemandIO(const filename:WideString; var FrameIndex:integer):TImageEnIO;
var
  p:integer;
  realname:WideString;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetOnDemandIO'); {$endif}
  result:=nil;
  p:=pos('::',filename);  // here the '::' must exist
  realname:=copy(filename,1,p-1);
  FrameIndex:=strtointdef(copy(filename,p+2,length(filename)),0);
  // search for already created on the same file
  for p:=0 to fMultiOnDemands.Count-1 do
    if TImageEnIO(fMultiOnDemands[p]).Params.FileName=realname then
    begin
      result:=TImageEnIO(fMultiOnDemands[p]);
      break;
    end;
  if result=nil then
  begin
    // create a new one
    result:=TImageEnIO.Create(self);
    result.Params.FileName:=realname;
    fMultiOnDemands.Add( result );
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.LoadMultiOnDemand(io:TImageEnIO; frameindex:integer; var dt:integer);
var
  fi:PIEFileFormatInfo;
  nf:WideString;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.LoadMultiOnDemand'); {$endif}
  nf:=io.Params.FileName; // it is important that us don't pass io.Params.FileName as parameter
  fi:=IEFileFormatGetInfo2(ExtractFileExt(nf));
  dt:=0;
  if assigned(fi) and (fi^.FileType<>ioUnknown) and (fi^.FileType<>ioAVI) and (fi^.FileType<>ioWMV) and (fi^.FileType<>ioMPEG) then
  begin
    io.Params.GIF_ImageIndex:=frameindex;
    io.Params.TIFF_ImageIndex:=frameindex;
    io.Params.DCX_ImageIndex:=frameindex;
    io.LoadFromFileAuto(nf);
    if fi^.FileType=ioGIF then
      dt:=io.Params.GIF_DelayTime*10;
  end
  else
  begin
    {$ifdef IEINCLUDEDIRECTSHOW}
      if not io.IsOpenMediaFile then
        io.OpenMediaFile(nf);
      io.LoadFromMediaFile(frameindex);
      dt:=io.Params.MEDIAFILE_FrameDelayTime*10;
    {$else}
      if fi^.FileType=ioAVI then
      begin
        if not io.IsOpenAVI then
          io.OpenAVIFile(nf);
        io.LoadFromAVI(frameindex);
        dt:=io.Params.AVI_FrameDelayTime;
      end;
    {$endif}
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.IsOnDemand(info:PIEImageInfo):boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.IsOnDemand'); {$endif}
  result:= ((info^.ID > -1) and (assigned(fOnImageIDRequest) or assigned(fOnImageIDRequestEx))) or assigned(info^.Name);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Make sure that at index "idx" there is a valid image (load from FileName or request it using ID).
// Returns true if the image load is ok, false otherwise

function TImageEnMView.ObtainImageNow(idx: integer): boolean;
var
  info: PIEImageInfo;
  bmp: TBitmap;
  iebmp: TIEBitmap;
  io:TImageEnIO;
  multiondemand:boolean;
  frameindex:integer; // used reading on demand multi pages
  dt:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ObtainImageNow'); {$endif}
  EnterCriticalSection(fThreadCS);
  result := true;
  bmp := nil;
  info := PIEImageInfo(fImageInfo[idx]);
  if (info^.ID > -1) and assigned(fOnImageIDRequest) then
  begin
    // request by ID
    bmp := nil;
    fOnImageIDRequest(self, info^.ID, bmp);
    SetImageEx(idx, bmp);
  end
  else if (info^.ID > -1) and assigned(fOnImageIDRequestEx) then
  begin
    // request by ID
    iebmp := nil;
    fOnImageIDRequestEx(self, info^.ID, iebmp);
    SetIEBitmapEx(idx, iebmp);
  end
  else if assigned(info^.Name) then
  begin

    // load from 'Name'
    multiondemand:= pos('::',info^.name)>0; // this is the special syntac '::' to load multipages on demand, use ObtainImageNow
    if multiondemand then
      io:=GetOnDemandIO(info^.name,frameindex)
    else
      io:=fImageEnIO;
    iebmp := TIEBitmap.Create;
    io.Background := info^.Background;
    io.attachediebitmap := iebmp;
    io.OnProgress := fOnIOProgress;
    if fStoreType = ietThumb then
    begin
      io.Params.JPEG_Scale := IOJPEG_AUTOCALC;
      io.Params.JPEG_GetExifThumbnail:=(fThumbWidth<=200) and (fThumbHeight<=200) and fEnableLoadEXIFThumbnails;
      io.Params.JPEG_DCTMethod:=ioJPEG_IFAST;
      io.Params.Width := fThumbWidth;
      io.Params.Height := fThumbHeight;
      {$ifdef IEINCLUDERAWFORMATS}
      io.Params.RAW_GetExifThumbnail:=(fThumbWidth<=200) and (fThumbHeight<=200) and fEnableLoadEXIFThumbnails;
      {$endif}
    end
    else
      io.Params.JPEG_Scale := IOJPEG_FULLSIZE;
    io.Params.EnableAdjustOrientation:=fEnableAdjustOrientation;
    if assigned(fImageEnMIO) then
      io.AutoAdjustDPI:=fImageEnMIO.AutoAdjustDPI;
    try
      if multiondemand then
      begin
        LoadMultiOnDemand(io,frameindex,dt);
        info^.DTime:=dt;
      end
      else if (lowercase(ExtractFileExt(info^.Name))='.emf') or (lowercase(ExtractFileExt(info^.Name))='.wmf') then
        io.ImportMetafile(info^.Name,fThumbWidth,-1,true)
      else
        io.LoadFromFileAuto(info^.Name);
    except
      io.Aborting := true;
    end;
    //
    if io.Aborting then
    begin
      DoWrongImage(iebmp, idx);
      result := false;
    end;
    // updates params of encapsulated TImageEnMIO object
    GetImageEnMIO.Params[idx].Assign(io.Params); // GetImageEnMIO creates TImageEnMIO if it doesn't exist
    // set the image
    info^.Background := io.Background;
    SetIEBitmapEx(idx, iebmp);
    if io.Params.FileType = ioJPEG then
    begin
      ImageOriginalWidth[idx] := io.Params.JPEG_OriginalWidth;
      ImageOriginalHeight[idx] := io.Params.JPEG_OriginalHeight;
    end
    else
    begin
      ImageOriginalWidth[idx] := io.Params.Width;
      ImageOriginalHeight[idx] := io.Params.Height;
    end;
    //
    io.attachediebitmap := nil;
    FreeAndNil(iebmp);

  end;
  LeaveCriticalSection(fThreadCS);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// remove available threads or threads that want to load a no more visible image

procedure FreeUseLessThreads(mview: TImageEnMView);
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('FreeUseLessThreads'); {$endif}
  i := 0;
  with mview do
    while i < fThreadPoolIO.Count do
    begin
      if TImageEnIO(fThreadPoolIO[i]).Tag = -1 then
      begin
        // finished thread
        TImageEnIO(fThreadPoolIO[i]).IEBitmap.Free;
        TImageEnIO(fThreadPoolIO[i]).IEBitmap:=nil;
        TImageEnIO(fThreadPoolIO[i]).AttachedIEBitmap := nil;
        TImageEnIO(fThreadPoolIO[i]).free;
        fThreadPoolIO.delete(i);
      end
      else if (TImageEnIO(fThreadPoolIO[i]).Tag >= 0) and (not IsVisible(TImageEnIO(fThreadPoolIO[i]).Tag)) and (not IsLookAhead(TImageEnIO(fThreadPoolIO[i]).Tag)) then
      begin
        // invisible image
        TImageEnIO(fThreadPoolIO[i]).Tag := -2; // -2 controlled abort
        TImageEnIO(fThreadPoolIO[i]).Aborting := true;
        inc(i);
      end
      else
        inc(i);
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure FreeInvisibleRequests(mview: TImageEnMView);
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.FreeInvisibleRequests'); {$endif}
  i := 0;
  with mview do
    while i < fThreadRequests.Count do
    begin
      if (not IsVisible(integer(fThreadRequests[i]))) and (not IsLookAhead(integer(fThreadRequests[i]))) then
        fThreadRequests.delete(i)
      else
        inc(i);
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// return false if info^.ID>-1 and assigned OnImageIDRequest. Works only with info^.Name (FileName)

function TImageEnMView.ObtainImageThreaded(idx: integer): boolean;
var
  info: PIEImageInfo;
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ObtainImageThreaded'); {$endif}
  info := PIEImageInfo(fImageInfo[idx]);
  if assigned(info^.name) and (pos('::',info^.name)>0) then
  begin
    // this is the special syntax '::' to load multipages on demand, use ObtainImageNow
    result:=false;
    exit;
  end;
  try
    EnterCriticalSection(fThreadCS);
    if info^.image <> nil then
    begin
      result := true;
      exit;
    end;

    // free no more visible requests
    FreeInvisibleRequests(self);

    // check if already requested
    for i := 0 to fThreadRequests.Count - 1 do
    begin
      if integer(fThreadRequests[i]) = idx then
      begin
        // already requested
        result := true;
        exit;
      end;
    end;
    // check if processing it
    for i := 0 to fThreadPoolIO.Count - 1 do
      if TImageEnIO(fThreadPoolIO[i]).Tag = idx then
      begin
        // already in progress
        result := true;
        exit;
      end;

    // free available threads
    FreeUseLessThreads(self);

    //
    result := false;
    if (info^.ID > -1) and assigned(fOnImageIDRequest) then
    begin
      // request by ID, it is better to use ObtainImageNow
      exit;
    end
    else if (info^.ID > -1) and assigned(fOnImageIDRequestEx) then
    begin
      // request by ID, it is better to use ObtainImageNow
      exit;
    end
    else if assigned(info^.Name) then
    begin
      // Load from 'Name'.
      // Add this request to the requests list.
      fThreadRequests.Add(pointer(idx));
      result := true;
      exit;
    end;
  finally
    if fThreadStarter.Suspended then
      fThreadStarter.Resume;
    LeaveCriticalSection(fThreadCS);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.DoWrongImage(OutBitmap: TIEBitmap; idx: integer);
var
  OBitmap: TIEDibBitmap;
  cv: TCanvas;
  Handled: boolean;
  ww, hh: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DoWrongImage'); {$endif}
  Handled := false;
  if assigned(fOnWrongImage) then
  begin
    OutBitmap.Allocate(fThumbWidth, fThumbHeight, ie24RGB);
    fOnWrongImage(self, OutBitmap, idx, Handled);
  end;
  if not Handled then
  begin
    if fLoadIconOnUnknownFormat then
    begin
      // display shell icon
      IEGetFileIcon(ImageFileName[idx],OutBitmap);
    end
    else
    begin
      // display a question mark
      OBitmap := TIEDibBitmap.Create;
      OBitmap.AllocateBits(fThumbWidth, fThumbHeight, 24);
      cv := TCanvas.Create;
      cv.Handle := OBitmap.HDC;
      cv.Brush.Color := clWhite;
      cv.Brush.Style := bsSolid;
      cv.FillRect(rect(0, 0, OBitmap.Width, OBitmap.Height));
      cv.Font.Name := 'Arial';
      cv.Font.Size := fThumbHeight;
      cv.Font.Style := [fsBold];
      ww := cv.TextWidth('?');
      hh := cv.TextHeight('?');
      cv.Font.Color := clGray;
      cv.Brush.Style := bsClear;
      cv.TextOut((integer(OBitmap.Width) - ww) div 2 + 3, (integer(OBitmap.Height) - hh) div 2 + 3, '?');
      cv.Font.Color := clBlue;
      cv.TextOut((integer(OBitmap.Width) - ww) div 2, (integer(OBitmap.Height) - hh) div 2, '?');
      OutBitmap.CopyFromTDibBitmap(OBitmap);
      FreeAndNil(cv);
      FreeAndNil(OBitmap);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.ThreadFinish(Sender: TObject);
var
  io: TImageEnIO;
  idx, ww, hh: integer;
  bmp: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ThreadFinish'); {$endif}
  io := Sender as TImageEnIO;
  // prepare the thumbnail in this thread (instead of in SetIEBitmapEx that must be in monothread mode)
  if (csDestroying in ComponentState) or (csDestroying in io.ComponentState) or (io.IEBitmap = nil) then
  begin
    EnterCriticalSection(fThreadCS);
    io.Tag := -1;
    if fThreadStarter.Suspended then
      fThreadStarter.Resume;
    LeaveCriticalSection(fThreadCS);
    exit;
  end;
  if io.Aborting then
  begin
    EnterCriticalSection(fThreadCS);
    //outputdebugstring(pchar('Aborting '+io.Params.filename));
    DoWrongImage(io.IEBitmap, io.Tag);
    LeaveCriticalSection(fThreadCS);
  end;
  if (fStoreType = ietThumb) and (fEnableResamplingOnMinor or (io.IEBitmap.Width > fThumbWidth) or (io.IEBitmap.Height > fThumbHeight)) then
  begin
    if (io.IEBitmap.width = 0) or (io.IEBitmap.height = 0) then
    begin
      ww := fThumbWidth;
      hh := fThumbHeight;
    end
    else
      IEFitResample(io.IEBitmap.width, io.IEBitmap.height, fThumbWidth, fThumbHeight, ww, hh);
    if (io.IEBitmap.Width <> ww) or (io.IEBitmap.Height <> hh) then
    begin
      bmp := TIEBitmap.Create;
      bmp.allocate(ww, hh, ie24RGB);
      if io.IEBitmap.PixelFormat = ie1g then
      begin
        _SubResample1bitFilteredEx(io.IEBitmap, 0, 0, io.IEBitmap.width - 1, io.IEBitmap.height - 1, bmp)
      end
      else
      begin
        if (io.IEBitmap.PixelFormat<>ie24RGB) and  (fThumbnailResampleFilter<>rfNone) then
          io.IEBitmap.PixelFormat:=ie24RGB; // 3.0.0
        if fThumbnailResampleFilter = rfNone then
        begin
          bmp.PixelFormat:=io.IEBitmap.PixelFormat; // _IEBmpStretchEx supports multiple pixelformats, but input and output must have the same pixelformat
          _IEBmpStretchEx(io.IEBitmap, bmp, nil, nil);
        end
        else
          _ResampleEx(io.IEBitmap, bmp, fThumbnailResampleFilter, nil, nil)
      end;
      if io.IEBitmap.HasAlphaChannel then
      begin
        if fThumbnailResampleFilter = rfNone then
          _resamplealphaex(io.IEBitmap.AlphaChannel, bmp.AlphaChannel, rfFastLinear)
        else
          _resamplealphaex(io.IEBitmap.AlphaChannel, bmp.AlphaChannel, fThumbnailResampleFilter);
        bmp.AlphaChannel.Full := io.IEBitmap.AlphaChannel.Full;
      end;
    end
    else
      bmp := io.IEBitmap;
  end
  else
    bmp := io.IEBitmap;
  //
  EnterCriticalSection(fThreadCS);
  idx := io.Tag;
  if idx >= 0 then
  begin
    GetImageEnMIO.Params[idx].Assign(io.Params);
    PIEImageInfo(fImageInfo[idx])^.Background := io.Background;
    SetIEBitmapEx(idx, bmp);
    if io.Params.FileType = ioJPEG then
    begin
      ImageOriginalWidth[idx]  := io.Params.JPEG_OriginalWidth;
      ImageOriginalHeight[idx] := io.Params.JPEG_OriginalHeight;
    end
    else
    begin
      ImageOriginalWidth[idx]  := io.Params.Width;
      ImageOriginalHeight[idx] := io.Params.Height;
    end;
  end;
  if assigned(bmp) and (bmp <> io.IEBitmap) then
    FreeAndNil(bmp);
  io.Tag := -1;
  if fThreadStarter.Suspended then
    fThreadStarter.Resume;
  LeaveCriticalSection(fThreadCS);
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEStarter.Execute;
var
  info: PIEImageInfo;
  bmp: TIEBitmap;
  io: TImageEnIO;
  idx: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEStarter.Execute'); {$endif}
  while not Terminated do
  begin
    EnterCriticalSection(mview.fThreadCS);
    try
    FreeUseLessThreads(mview);
    FreeInvisibleRequests(mview);
    while (not Terminated) and (mview.fThreadRequests.Count > 0) and (mview.fThreadPoolIO.Count < mview.fThreadPoolSize) do
    begin
      idx := integer(mview.fThreadRequests[0]);
      bmp := TIEBitmap.Create;
      io := TImageEnIO.Create(nil);
      io.Tag := idx;
      mview.fThreadRequests.Delete(0);
      mview.fThreadPoolIO.add(io);
      io.AttachedIEBitmap := bmp;
      info := PIEImageInfo(mview.fImageInfo[idx]);
      io.Background := info^.Background;
      if mview.fStoreType = ietThumb then
      begin
        io.Params.JPEG_Scale := IOJPEG_AUTOCALC;
        io.Params.JPEG_GetExifThumbnail:=(mview.fThumbWidth<=200) and (mview.fThumbHeight<=200) and mview.fEnableLoadEXIFThumbnails;
        io.Params.JPEG_DCTMethod:=ioJPEG_IFAST;
        io.Params.Width := mview.fThumbWidth;
        io.Params.Height := mview.fThumbHeight;
        {$ifdef IEINCLUDERAWFORMATS}
        io.Params.RAW_GetExifThumbnail:=(mview.fThumbWidth<=200) and (mview.fThumbHeight<=200) and mview.fEnableLoadEXIFThumbnails;
        {$endif}
      end
      else
        io.Params.JPEG_Scale := IOJPEG_FULLSIZE;
      io.Params.EnableAdjustOrientation:=mview.fEnableAdjustOrientation;
      io.OnFinishWork := mview.ThreadFinish;
      io.AsyncMode := true;
      if (lowercase(ExtractFileExt(info^.Name))='.emf') or (lowercase(ExtractFileExt(info^.Name))='.wmf') then
        io.ImportMetafile(info^.Name,mview.fThumbWidth,-1,true)
      else
        io.LoadFromFileAuto(info^.Name); // LoadFromFile cannot throw exceptions, but just add a new thread
    end;
    finally
      LeaveCriticalSection(mview.fThreadCS);
    end;
    if (not Terminated) and (mview.fThreadRequests.Count = 0) and (mview.fThreadPoolIO.Count=0) then
      Suspend;
    sleep(50);  // wait for 50 ms, let other threads to execute
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.BottomGap

<FM>Declaration<FC>
property BottomGap: integer;

<FM>Description<FN>
BottomGap is the distance from image and its border. You can set BottomGap to reserve space for your painting (with <A TImageEnMView.OnImageDraw>).

!!}
procedure TImageEnMView.SetBottomGap(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetBottomGap'); {$endif}
  fBottomGap := v;
  fSetBottomGap := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.UpperGap

<FM>Declaration<FC>
property UpperGap: integer;

<FM>Description<FN>
UpperGap is the distance from the image and its border. You can set UpperGap to reserve space for your painting (with <A TImageEnMView.OnImageDraw>).
!!}
procedure TImageEnMView.SetUpperGap(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetUpperGap'); {$endif}
  fUpperGap := v;
  fSetUpperGap := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.Bitmap

<FM>Declaration<FC>
property Bitmap:TBitmap;

<FM>Description<FN>
The currently selected image as TBitmap object.
!!}
function TImageEnMView.GetFBitmap: TBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetFBitmap'); {$endif}
  result := nil;
  if fSelectedItem >= 0 then
  begin
    if fSelectedBitmap = nil then
      fSelectedBitmap := GetTIEBitmap(fSelectedItem);
    if assigned(fSelectedBitmap) then
      result := fSelectedBitmap.VclBitmap;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.IEBitmap

<FM>Declaration<FC>
property Bitmap:<A TIEBitmap>;

<FM>Description<FN>
The currently selected image as TIEBitmap object.
!!}
function TImageEnMView.GetIEBitmap: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetIEBitmap'); {$endif}
  if fSelectedItem >= 0 then
  begin
    if fSelectedBitmap = nil then
      fSelectedBitmap := GetTIEBitmap(fSelectedItem);
    result := fSelectedBitmap;
  end
  else
    result := nil;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetMouseInteract(v: TIEMMouseInteract);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetMouseInteract'); {$endif}
  if v <> fMouseInteract then
    fMouseInteract := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetKeyInteract(v: TIEMKeyInteract);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetKeyInteract'); {$endif}
  if v <> fKeyInteract then
    fKeyInteract := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// info^.image can be nil

procedure TImageEnMView.DrawImage(DestBitmap: TBitmap; info: PIEImageInfo; IsSelected: boolean; Index: integer);
var
  q, w, ww, hh, iw, ih, sw, t1: integer;
  x1, y1, cx1, cy1: integer;
  ImHeight: integer;
  pix, alpha: pbyte;
  tw: integer;
  ith: integer; // infotext height
  bth: integer; // bottomtext height
  xsel: boolean; // true if display as selected
  iebmp, ietmp: TIEBitmap;
  DestBitmapScanline: ppointerarray;
  XLUT, YLUT: pinteger;
  filt: TResampleFilter;
  ws, ws1: WideString;
  cl: TColor;
  ActUpperGap, ActBottomGap: integer;
  ActThumbWidth, ActThumbHeight: integer;
  ThumbRect:TRect;
  ox,oy:integer;
  zx,zy:double;
  iec:TIECanvas;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DrawImage'); {$endif}

  try
    EnterCriticalSection(fThreadCS);
    if fShowText then
    begin
      ActUpperGap := fUpperGap;
      ActBottomGap := fBottomGap;
    end
    else
    begin
      ActUpperGap := fSetUpperGap;
      ActBottomGap := fSetBottomGap;
    end;
    ActThumbWidth:=fThumbWidth;
    ActThumbHeight:=fThumbHeight;
    xsel := IsSelected;
    x1 := info^.X - fViewX;
    y1 := info^.Y - fViewY;
    if assigned(fOnBeforeImageDraw) then
      fOnBeforeImageDraw(self, Index, x1, y1, DestBitmap.Canvas);

    if assigned(fThumbnailFrame) and assigned(fThumbnailFrameSelected) then
    begin
      ThumbRect:=fThumbnailFrameRect;
      if xsel then  // 2.3.3 (29/10/2007 13:38)
        fThumbnailFrameSelected.RenderToTBitmapEx(DestBitmap,x1,y1,ThumbWidth,ThumbHeight, 0,0,fThumbnailFrameSelected.Width,fThumbnailFrameSelected.Height, 255,rfNone,ielNormal )
      else
        fThumbnailFrame.RenderToTBitmapEx(DestBitmap,x1,y1,ThumbWidth,ThumbHeight, 0,0,fThumbnailFrame.Width,fThumbnailFrame.Height, 255,rfNone,ielNormal );
      ActThumbWidth:=ThumbRect.Right-ThumbRect.Left;
      ActThumbHeight:=ThumbRect.Bottom-ThumbRect.Top;
      inc(x1,ThumbRect.Left);
      inc(y1,ThumbRect.Top);
    end;

    if assigned(fOnBeforeImageDrawEx) then
    begin
      ThumbRect.Left:=0;
      ThumbRect.Top:=0;
      ThumbRect.Right:=ActThumbWidth;
      ThumbRect.Bottom:=ActThumbHeight;
      fOnBeforeImageDrawEx(self, Index, x1, y1, DestBitmap,ThumbRect);
      ActThumbWidth:=ThumbRect.Right-ThumbRect.Left;
      ActThumbHeight:=ThumbRect.Bottom-ThumbRect.Top;
      inc(x1,ThumbRect.Left);
      inc(y1,ThumbRect.Top);
    end;
    // Now in info^.hbi there is the image to paint (or nil if it isn't possible to obtain the image)
    if fShowText and (info^.InfoText.Caption <> '') then
    begin
      DestBitmap.Canvas.Font.Assign(info^.InfoText.Font);
      ith := DestBitmap.Canvas.TextHeight(info^.InfoText.Caption);
    end
    else
      ith := 0;
    ImHeight := ActThumbHeight - ActBottomGap - ActUpperGap - ith;
    cx1 := 0;
    cy1 := 0;
    ww := 0;
    hh := 0;

    if fFillThumbnail then
    begin
      if xsel and (fSelectionStyle = iessACD) then
        cl := fHighlightColor
      else
      begin
        if fDrawImageBackground then
          cl := info^.Background
        else
          cl := fThumbnailsBackground;
      end;
      IEDrawBackground([], DestBitmap.Canvas, DestBitmap, fThumbnailsBackgroundStyle, cl, x1, y1, ActThumbWidth, ActThumbHeight, x1, y1, x1 + ActThumbWidth, y1 + ActThumbHeight, fChessboardSize, fChessboardBrushStyle, fGradientEndColor, nil,iewoNormal);
    end;

    // paint the image
    if (info^.cacheImage = nil) and (info^.image <> nil) then
    begin
      // cache empty
      iw := fImageList.GetImageWidth(info^.image);
      ih := fImageList.GetImageHeight(info^.image);
      if (iw < 1) or (ih < 1) then
        pix := nil
      else
        pix := fImageList.GetImageBits(info^.image);
      alpha := fImageList.GetAlphaBits(info^.image);
      if fEnableResamplingOnMinor or ((iw > ActThumbWidth) or (ih > ImHeight)) then
        IEFitResample(iw, ih, ActThumbWidth, ImHeight, ww, hh)
      else
      begin
        ww := iw;
        hh := ih;
      end;
      cx1 := x1 + abs(ActThumbWidth - ww) div 2;
      cy1 := y1 + ActUpperGap + abs(ImHeight - hh) div 2;
      if pix <> nil then
      begin
        ietmp := TIEBitmap.Create;
        ietmp.EncapsulateMemory(pix, iw, ih, fImageList.GetImagePixelFormat(info^.image), false);
        if alpha <> nil then
        begin
          ietmp.AlphaChannel.EncapsulateMemory(alpha, iw, ih, ie8g, true);
          ietmp.AlphaChannel.Full := false;
        end;
        iebmp := TIEBitmap.Create;
        iebmp.Location := ieMemory;
        if (ietmp.PixelFormat = ie1g) and ((ww < iw) or (hh < ih)) then
        begin
          filt := rfFastLinear;
          iebmp.Allocate(ww, hh, ie24RGB);
        end
        else
        begin
          filt := fThumbnailDisplayFilter;
          iebmp.Allocate(ww, hh, ietmp.PixelFormat);
        end;

        _IEResampleIEBitmap(ietmp, iebmp, filt, nil, nil);

        if fThumbsRounded>0 then
        begin
          t1:=imin(ActThumbWidth,ActThumbHeight) div fThumbsRounded;
          _IERoundImage(iebmp, t1,t1, nil,nil);
        end;

        // draw shadow
        if fSoftShadow.Enabled then
        begin
          iebmp.SwitchTo(ietmp);
          ietmp.PixelFormat := ie24RGB;
          _IEAddSoftShadow(ietmp, fSoftShadow.Radius, fSoftShadow.OffsetX, fSoftShadow.OffsetY, fSoftShadow.Intensity, true, fSoftShadow.ShadowColor, nil, nil);
          iebmp.Allocate(ww, hh, ie24RGB);
          _IEResampleIEBitmap(ietmp, iebmp, rfTriangle, nil, nil);

          with info^.internalrect do
          begin
            zx:=ww/ietmp.Width;
            zy:=hh/ietmp.Height;
            ox:=(ietmp.Width-ww) div 2;
            oy:=(ietmp.Height-hh) div 2;
            Left:=trunc( ox * zx );
            Top:=trunc( oy * zy );
            Right:=trunc( (ww+ox) * zx )+1;
            Bottom:=trunc( (hh+oy) * zy )+1;
          end;
        end
        else
        begin
          info^.internalrect:=Rect(0,0,ww,hh);
        end;
        //
        DestBitmapScanline := nil;
        XLut := nil;
        YLut := nil;
        iebmp.RenderToTBitmap(DestBitmap, DestBitmapScanline, XLut, YLut, nil, cx1, cy1, ww, hh, 0, 0, iebmp.Width, iebmp.Height, fEnableAlphaChannel, false, 255, filt, true, ielNormal);
        if fEnableImageCaching then
        begin
          info^.cacheImage := fCacheList.AddIEBitmap(iebmp);
          fCacheList.SetImageOriginalWidth(info^.cacheImage,  fImageList.GetImageOriginalWidth(info^.image));
          fCacheList.SetImageOriginalHeight(info^.cacheImage, fImageList.GetImageOriginalHeight(info^.image));
        end;
        FreeAndNil(ietmp);
        FreeAndNil(iebmp);
      end;
    end
    else if (info^.cacheImage <> nil) then
    begin
      // use cached image
      ww := fCacheList.GetImageWidth(info^.cacheImage);
      hh := fCacheList.GetImageHeight(info^.cacheImage);
      cx1 := x1 + abs(ActThumbWidth - ww) div 2;
      cy1 := y1 + ActUpperGap + abs(ImHeight - hh) div 2;
      pix := fCacheList.GetImageBits(info^.cacheImage);
      alpha := fCacheList.GetAlphaBits(info^.cacheImage);
      ietmp := TIEBitmap.Create;

      // 2.3.1
      (*
      case fCacheList.GetImageBitcount(info^.cacheImage) of
        1: ietmp.EncapsulateMemory(pix, ww, hh, ie1g, false);
        24: ietmp.EncapsulateMemory(pix, ww, hh, ie24RGB, false);
      end;
      *)
      ietmp.EncapsulateMemory(pix, ww, hh, fCacheList.GetImagePixelFormat(info^.cacheImage), false);

      if alpha <> nil then
      begin
        ietmp.AlphaChannel.EncapsulateMemory(alpha, ww, hh, ie8g, true);
        ietmp.AlphaChannel.Full := false;
      end;
      DestBitmapScanline := nil;
      XLut := nil;
      YLut := nil;
      ietmp.RenderToTBitmap(DestBitmap, DestBitmapScanline, XLut, YLut, nil, cx1, cy1, ww, hh, 0, 0, ietmp.Width, ietmp.Height, true, false, 255, rfNone, true, ielNormal);
      FreeAndNil(ietmp);
    end;

    if (info^.image<>nil) or (info^.cacheImage<>nil) then
    begin

      if fThumbnailsInternalBorder then
      begin
        DestBitmap.Canvas.Pen.Color:=fThumbnailsInternalBorderColor;
        DestBitmap.Canvas.Pen.Width:=1;
        DestBitmap.Canvas.Pen.Style:=psSolid;
        DestBitmap.Canvas.Brush.Style:=bsClear;
        with info^.internalrect do
          DestBitmap.Canvas.Rectangle(cx1+Left,cy1+Top,cx1+Right,cy1+Bottom);
      end;

      // draw sides background
      if fFillThumbnail then
        with DestBitmap.canvas do
        begin
          if xsel and (fSelectionStyle = iessACD) then
            Brush.Color := fHighlightColor
          else
          begin
            if fDrawImageBackground then
              Brush.Color := info^.Background
            else
              Brush.Color := fThumbnailsBackground;
          end;
          Brush.Style := bsSolid;
          FillRect(rect(x1, y1, cx1, y1 + ActThumbHeight)); // left
          FillRect(rect(cx1 + ww, y1, x1 + ActThumbWidth, y1 + ActThumbHeight)); // right
          FillRect(rect(cx1, y1, cx1 + ww, cy1)); // up
          FillRect(rect(cx1, cy1 + hh, cx1 + ww, y1 + ActThumbHeight)); // bottom
        end;

    end;

    // draw top, bottom, info texts
    bth := 0;
    if fShowText then
    begin

      if info^.TopText.Caption <> '' then
      begin
        DestBitmap.Canvas.Font.Assign(info^.TopText.Font);
        DestBitmap.Canvas.Brush.Style := info^.TopText.BackgroundStyle;
        if xsel and (fSelectionStyle = iessACD) then
        begin
          DestBitmap.Canvas.Font.Color := fHighlightTextColor;
          if info^.TopText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := fHighlightColor;
        end
        else
        begin
          if info^.TopText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := info^.TopText.Background;
        end;
        ws := info^.TopText.Caption;
        case info^.TopText.TruncSide of
          iemtsLeft:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.TopText.Caption, 1, length(info^.TopText.Caption)-q);
                if ws1 = '' then
                  break;
                ws := ws1+'...';
              until false;
            end;
          iemtsRight:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.TopText.Caption, q, length(info^.TopText.Caption));
                if ws1 = '' then
                  break;
                ws := '...' + ws1;
              until false;
            end;
        end;
        if (fStyle = iemsFlat) and (info^.TopText.BackgroundStyle<>bsSolid) then
          DestBitmap.Canvas.FillRect(rect(x1, y1, x1 + ActThumbWidth, y1+DestBitmap.Canvas.TextHeight(ws)));
        tw := DestBitmap.Canvas.TextWidth(ws);
        TextOutW(DestBitmap.Canvas.Handle, x1 + (ActThumbWidth - tw) div 2, y1, @ws[1], length(ws));
      end;

      if info^.InfoText.Caption <> '' then
      begin
        DestBitmap.Canvas.Font.Assign(info^.InfoText.Font);
        DestBitmap.Canvas.Brush.Style := info^.InfoText.BackgroundStyle;
        if xsel and (fSelectionStyle = iessACD) then
        begin
          DestBitmap.Canvas.Font.Color := fHighlightTextColor;
          if info^.InfoText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := fHighlightColor;
        end
        else
        begin
          if info^.InfoText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := info^.InfoText.Background;
        end;
        ws := info^.InfoText.Caption;
        case info^.InfoText.TruncSide of
          iemtsLeft:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.InfoText.Caption, 1, length(info^.InfoText.Caption)-q);
                if ws1 = '' then
                  break;
                ws := ws1+'...';
              until false;
            end;
          iemtsRight:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.InfoText.Caption, q, length(info^.InfoText.Caption));
                if ws1 = '' then
                  break;
                ws := '...' + ws1;
              until false;
            end;
        end;
        if (fStyle = iemsFlat) and (info^.InfoText.BackgroundStyle=bsSolid) then
          DestBitmap.Canvas.FillRect(rect(x1, y1 + ActThumbHeight - ActBottomGap - ith, x1 + ActThumbWidth, y1 + ActThumbHeight - ActBottomGap));
        tw := DestBitmap.Canvas.TextWidth(ws);
        TextOutW(DestBitmap.Canvas.Handle, x1 + (ActThumbWidth - tw) div 2, y1 + ActThumbHeight - ActBottomGap - ith, @ws[1], length(ws));
      end;

      if info^.BottomText.Caption <> '' then
      begin
        DestBitmap.Canvas.Font.Assign(info^.BottomText.Font);
        DestBitmap.Canvas.Brush.Style := info^.BottomText.BackgroundStyle;
        if xsel and (fSelectionStyle = iessACD) then
        begin
          DestBitmap.Canvas.Font.Color := fHighlightTextColor;
          if info^.BottomText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := fHighlightColor;
        end
        else
        begin
          if info^.BottomText.BackgroundStyle<>bsClear then
            DestBitmap.Canvas.Brush.Color := info^.BottomText.Background;
        end;
        ws := info^.BottomText.Caption;
        case info^.BottomText.TruncSide of
          iemtsLeft:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.BottomText.Caption, 1, length(info^.BottomText.Caption)-q);
                if ws1 = '' then
                  break;
                ws := ws1+'...';
              until false;
            end;
          iemtsRight:
            begin
              q := 1;
              repeat
                tw := DestBitmap.Canvas.TextWidth(ws);
                if (tw <= ActThumbWidth) or (length(ws) < 2) then
                  break;
                inc(q);
                ws1 := copy(info^.BottomText.Caption, q, length(info^.BottomText.Caption));
                if ws1 = '' then
                  break;
                ws := '...' + ws1;
              until false;
            end;
        end;
        bth := DestBitmap.Canvas.TextHeight(ws);
        if info^.BottomText.BackgroundStyle=bsSolid then
          DestBitmap.Canvas.FillRect(rect(x1, y1 + ActThumbHeight - bth - 1, x1 + ActThumbWidth, y1 + ActThumbHeight));
        tw := DestBitmap.Canvas.TextWidth(ws);
        TextOutW(DestBitmap.Canvas.Handle, 1 + x1 + (ActThumbWidth - tw - 2) div 2, y1 + ActThumbHeight - bth - 1, @ws[1], length(ws));
        inc(bth, 3);
      end;

    end; // end of fShowText
    // iemsACD style
    if fStyle = iemsACD then
    begin
      IEDraw3DRect(DestBitmap.Canvas, cx1, cy1, cx1 + ww - 1, cy1 + hh - 1, clGray, clWhite); // around the image
      if (ActBottomGap + ActUpperGap > 0) or (fShowText and (info^.InfoText.Caption <> '')) then
        IEDraw3DRect(DestBitmap.Canvas, x1, y1, x1 + ActThumbWidth - 1, y1 + ActThumbHeight - 1 - bth, clWhite, clBlack); // around entire thumbnail
      if fShowText and (info^.BottomText.Caption <> '') then
        IEDraw3DRect(DestBitmap.Canvas, x1, y1 + ActThumbHeight - bth - 1 + 3, x1 + ActThumbWidth - 1, y1 + ActThumbHeight - 1, clGray, clWhite); // around bottomtext
    end;

    // call OnImageDraw
    if assigned(fOnImageDraw) then
      fOnImageDraw(self, Index, x1, y1, DestBitmap.Canvas);

    // call OnImageDraw2
    if assigned(fOnImageDraw2) then
      fOnImageDraw2(self, Index, x1, y1, Rect(cx1,cy1,cx1+ww,cy1+hh), DestBitmap.Canvas);

    // thumbnail border
    DestBitmap.Canvas.Pen.Width := 1;
    DestBitmap.Canvas.Pen.Color := fThumbnailsBorderColor;
    DestBitmap.Canvas.Brush.Style := bsClear;
    sw := fThumbnailsBorderWidth;
    if fThumbsRounded<>0 then
    begin
      t1:=imin(ActThumbWidth,ActThumbHeight) div fThumbsRounded;
      for w := 1 to sw do
        DestBitmap.Canvas.RoundRect(x1 - w, y1 - w, x1 + ActThumbWidth + w, y1 + ActThumbHeight + w, t1 ,t1);
    end
    else
    begin
      for w := 1 to sw do
        DestBitmap.Canvas.Rectangle(x1 - w, y1 - w, x1 + ActThumbWidth + w, y1 + ActThumbHeight + w);
    end;

    // selection
    if xsel and (fSelectionStyle <> iessACD) {$ifndef OCXVERSION}and (not assigned(fOnBeforeImageDrawEx)){$endif} and ((fThumbnailFrame=nil) or (fThumbnailFrameSelected=nil)) then
    begin
      iec:=TIECanvas.Create(DestBitmap.Canvas,true,true);
      if fSelectionAntialiased then
      begin
        if Focused then
          iec.Pen.Width := fSelectionWidth
        else
          iec.Pen.Width := fSelectionWidthNoFocus;
        iec.Pen.Color := fSelectionColor;
        iec.Brush.Style := bsClear;
        iec.RoundRect(x1, y1, x1 + ActThumbWidth, y1 + ActThumbHeight, 4,4);
      end
      else
      begin
        iec.Pen.Width := 1;
        iec.Pen.Color := fSelectionColor;
        iec.Brush.Style := bsClear;
        if Focused then
          sw := fSelectionWidth
        else
          sw := fSelectionWidthNoFocus;
        for w := 1 to sw do
          iec.Rectangle(x1 - w, y1 - w, x1 + ActThumbWidth + w, y1 + ActThumbHeight + w);
      end;
      iec.Free;
    end;

  finally
    LeaveCriticalSection(fThreadCS);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.IsVisible

<FM>Declaration<FC>
function IsVisible(idx:integer):boolean;

<FM>Description<FN>
IsVisible returns True if idx image is currently visible.

!!}
function TImageEnMView.IsVisible(idx: integer): boolean;
var
  x1, y1: integer;
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.IsVisible'); {$endif}
  info := PIEImageInfo(fImageInfo[idx]);
  x1 := info^.X - fViewX;
  y1 := info^.Y - fViewY;
  result := _RectXRect(0, 0, width - 1, height - 1, x1, y1, x1 + fThumbWidth - 1, y1 + fThumbHeight - 1);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.IsLookAhead(idx:integer):boolean;
begin
  result:= fLookAheadList.IndexOf(pointer(idx))>-1;
end;

{!!
<FS>TImageEnMView.PaintTo

<FM>Declaration<FC>
procedure PaintTo(Canvas: TCanvas); virtual;
!!}
procedure TImageEnMView.PaintTo(DestBitmap: TBitmap);
var
  q, ne, nn, e, x1, y1: integer;
  info: PIEImageInfo;
  reloop: boolean;
  xsel: boolean; // true if display as selected
  firstvisible,lastvisible:integer;
  oldalldisplayed:boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.PaintTo'); {$endif}

  try
  (*
  // display each image when it is loaded, but sometime make deadlocks...
  EnterCriticalSection(fThreadCS);
  for q:=0 to fThreadPoolIO.Count-1 do
    TImageEnIO(fThreadPoolIO[q]).SuspendThreads;
  //*)

  // draw global background
  IEDrawBackground([], DestBitmap.Canvas, DestBitmap, fBackgroundStyle, fBackground, 0, 0, ClientWidth, ClientHeight, 0, 0, 0, 0, fChessboardSize, fChessboardBrushStyle, fGradientEndColor, nil,iewoNormal);
  // draw wallpaper
  if assigned(fWallPaper.Graphic) then
  begin
    case fWallPaperStyle of
      iewoNormal:
        begin
          DestBitmap.Canvas.Draw(0, 0, fWallPaper.Graphic);
        end;
      iewoStretch:
        begin
          DestBitmap.Canvas.StretchDraw(rect(0, 0, ClientWidth, ClientHeight), fWallPaper.Graphic);
        end;
      iewoTile:
        begin
          if (fWallPaper.Graphic.Width>0) and (fWallPaper.Graphic.Height>0) then  // 2.3.3 (11/10/2007)
          begin
            x1 := 0;
            y1 := 0;
            while (y1 < ClientHeight) do
            begin
              DestBitmap.Canvas.Draw(x1, y1, fWallPaper.Graphic);
              inc(x1, fWallPaper.Graphic.Width);
              if x1 >= ClientWidth then
              begin
                x1 := 0;
                inc(y1, fWallPaper.Graphic.Height);
              end;
            end;
          end;
        end;
    end;
  end;

  repeat
    reloop := false;
    if (fDisplayMode = mdSingle) and (fImageInfo.Count > 0) then
      ne := 1 // one image at the time
    else
      ne := fImageInfo.Count;
    if fPlaying or (fDisplayMode = mdSingle) then
    begin
      if fFrame >= fImageInfo.Count then
        fFrame := fImageInfo.Count - 1;
      if fFrame < 0 then
        fFrame := 0;
      q := fFrame;
    end
    else
      q := 0;
    oldalldisplayed:=fAllDisplayed;
    fAllDisplayed:=true;
    firstvisible:=-1;
    lastvisible:=fImageInfo.Count-1;

    for nn := 0 to ne - 1 do
    begin

      if assigned(fOnDrawProgress) and (ne > 1) then
        fOnDrawProgress(Self, trunc(nn / ne * 100), q);
      info := PIEImageInfo(fImageInfo[q]);

      // check that the image is visible
      if IsVisible(q) then
      begin

        if firstvisible=-1 then
          firstvisible:=q;
        // try to obtain the image if not available
        if (info^.image = nil) and (info^.cacheImage = nil) then
        begin
          oldalldisplayed:=false;
          if (fSelectedItem = q) or (fThreadPoolSize = 0) or (ObtainImageThreaded(q) = false) then
          begin
            if (not ObtainImageNow(q)) and fRemoveCorrupted then
            begin
              // remove corrupted image and re-loop
              DeleteImageNU(nn);
              reloop := true;
              break;
            end;
          end;
        end;
        //
        if fSelectedItem <> q then
        begin
          xsel := false;
          if fEnableMultiSelect then
          begin
            e := fMultiSelectedImages.IndexOf(pointer(q));
            xsel := e > -1;
          end;
        end
        else
          xsel := true;
        xsel := xsel and (fVisibleSelection) and (fDisplayMode = mdGrid);

        if (info^.image=nil) and (info^.cacheImage=nil) then
          fAllDisplayed:=false;

        DrawImage(DestBitmap, info, xsel, q);

      end
      else
      begin
        if (firstvisible<>-1) and (lastvisible=fImageInfo.Count-1) then
          lastvisible:=q-1;
      end;

      inc(q);
      if q = fImageInfo.Count then
        q := 0;
    end;

  until not reloop;

  // lookahead
  if (fLookAhead>0) and (fThreadPoolSize>0) then
  begin
    if (lastvisible+1<fImageinfo.Count) then
    begin
      nn:=fLookAhead;
      fLookAheadList.Clear;
      if lastvisible+nn>=fImageInfo.Count then
        nn:=fImageInfo.Count-1-lastvisible;
      for q:=lastvisible+1 to lastvisible+nn do
      begin
        info := PIEImageInfo(fImageInfo[q]);
        if (info^.image=nil) and (info^.cacheImage=nil) then
        begin
          fLookAheadList.Add(pointer(q));
          ObtainImageThreaded(q);
        end;
      end;
    end;
  end;

  // discard invisible images
  if fMaintainInvisibleImages>-1 then
  begin
    nn:=imax(fLookAhead,fMaintainInvisibleImages);
    for q:=0 to fImageInfo.Count-1 do
      if (q < firstvisible-nn) or (q > lastvisible+nn) then
      begin
        info := PIEImageInfo(fImageInfo[q]);
        if IsOnDemand(info) and (info^.image<>nil) then
        begin
          fImageList.Delete(info^.image);
          info^.image:=nil;
        end;
      end;
  end;

  // draw done
  if assigned(fOnDrawProgress) and (ne > 1) then
    fOnDrawProgress(Self, 100, 0);

  if fAllDisplayed and not oldalldisplayed and assigned(fOnAllDisplayed) then
    fOnAllDisplayed(self);

  finally
    (*
    for q:=0 to fThreadPoolIO.Count-1 do
      TImageEnIO(fThreadPoolIO[q]).ResumeThreads;
    LeaveCriticalSection(fThreadCS);
    //*)
  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ReloadImage

<FM>Declaration<FC>
procedure ReloadImage(imageIndex:integer);

<FM>Description<FN>
This method reloads an image. This works only with on demand image (where you set <A TImageEnMView.ImageFileName> of <A TImageEnMView.ImageID>).
!!}
procedure TImageEnMView.ReloadImage(imageIndex:integer);
var
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ReloadImage'); {$endif}
  info := PIEImageInfo(fImageInfo[imageIndex]);
  if IsOnDemand(info) and (info^.image<>nil) then
  begin
    fImageList.Delete(info^.image);
    info^.image:=nil;
    if info^.cacheImage <> nil then
    begin
      fcacheList.Delete(info^.cacheImage);
      info^.cacheImage := nil;
    end;
  end;
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.DisplayMode

<FM>Declaration<FC>
property DisplayMode: <A TIEMDisplayMode>;

<FM>Description<FN>
DisplayMode can be mdGrid or mdSingle.
To show images in a single row set DisplayMode to mdGrid, and <A TImageEnMView.GridWidth> to 0.
To show images in a single column set DisplayMode to mdGrid, and <A TImageEnMView.GridWidth> to 1.
!!}
procedure TImageEnMView.SetDisplayMode(v: TIEMDisplayMode);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetDisplayMode'); {$endif}
  if fPlaying then
    fSaveDM := v
  else
  begin
    fDisplayMode := v;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GridWidth

<FM>Declaration<FC>
property GridWidth: integer;

<FM>Description<FN>
GridWidth is the number of images per row. This property is active only when <A TImageEnMView.DisplayMode> is mdGrid.
Valid values are:
-1 : GridWidth adapted to the component width
 0 : only one row
>0 : GridWidth images per row
!!}
procedure TImageEnMView.SetGridWidth(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetGridWidth'); {$endif}
  fGridWidth := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.Playing

<FM>Declaration<FC>
property Playing: boolean;

<FM>Description<FN>
Set Playing to True to select images consecutively each for <A TImageEnMView.ImageDelayTime> time.
During play, <A TImageEnMView.DisplayMode> property is set to mdSingle and the <A TImageEnMView.Deselect> method is called.

!!}
procedure TImageEnMView.SetPlaying(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetPlaying'); {$endif}
  if v = fPlaying then
    exit;
  if v then
  begin
    fSaveDM := fDisplayMode;
    fSaveSel := fSelectedItem;
    Deselect;
  end;
  fPlaying := v;
  PlayFrame;
  if not fPlaying then
  begin
    SetDisplayMode(fSaveDM);
    SetSelectedItem(fSaveSel);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// show the image indexed by VisibleFrame, put it at the center (when applicable)

{!!
<FS>TImageEnMView.CenterFrame

<FM>Declaration<FC>
procedure CenterFrame;

<FM>Description<FN>
CenterFrame shows the current frame in the center.
This method uses <A TImageEnMView.VisibleFrame> to get/set current frame.
!!}
procedure TImageEnMView.CenterFrame;
var
  info: PIEImageInfo;
  x, y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CenterFrame'); {$endif}
  if fSelectedItem >= 0 then
  begin
    info := PIEImageInfo(fImageInfo[fFrame]);
    X := info^.X - ((ClientWidth - fThumbWidth) div 2);
    Y := info^.Y - ((ClientHeight - fThumbHeight) div 2);
    SetViewXY(X, Y);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.PlayFrame;
var
  info: PIEImageInfo;
  rr: TRect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.PlayFrame'); {$endif}
  if fTimerInProgress then
    exit;
  if csDestroying in ComponentState then
    exit;
  fTimerInProgress := true;
  // remove timer
  if fPlayTimer <> 0 then
  begin
    KillTimer(self.handle, 1);
    fPlayTimer := 0;
  end;
  if fPlaying then
  begin
    if fDisplayMode <> mdSingle then
    begin
      fDisplayMode := mdSingle;
      Update;
    end;
    if fFrame >= fImageInfo.Count then
      fFrame := fImageInfo.Count - 1;
    if fFrame < 0 then
      exit;
    info := PIEImageInfo(fImageInfo[fFrame]);
    // show current frame
    if assigned(fOnPlayFrame) then
      fOnPlayFrame(self,fFrame);
    Paint;
    rr := rect(0, 0, clientwidth, clientheight);
    ValidateRect(self.handle, @rr); // cancel invalidate executed by CenterSelected
    // another loop
    // prepare for next frame
    if fFrame = fImageInfo.Count - 1 then
    begin
      fFrame := 0;
      CallBitmapChangeEvents;
      if not fPlayLoop then
      begin
        fPlaying := false;
        fTimerInProgress := false;
        exit; // EXIT!
      end;
    end
    else
      inc(fFrame);
    // run timer
    fPlayTimer := SetTimer(self.handle, 1, imax(info^.DTime, 10), nil);
  end;
  fTimerInProgress := false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMTimer(var Message: TWMTimer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMTimer'); {$endif}
  PlayFrame;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// look at fLastImOp

{!!
<FS>TImageEnMView.GetLastOp

<FM>Declaration<FC>
function GetLastOp: integer;

<FM>Description<FN>
Undocumented. Please don't use.
!!}
function TImageEnMView.GetLastOp: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetLastOp'); {$endif}
  result := fLastImOp;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// look at fLastImIdx

{!!
<FS>TImageEnMView.GetLastOpIdx

<FM>Declaration<FC>
function GetLastOpIdx: integer;

<FM>Description<FN>
Undocumented. Please don't use.
!!}
function TImageEnMView.GetLastOpIdx: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetLastOpIdx'); {$endif}
  result := fLastImIdx;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// look at fLastImP1
function TImageEnMView.GetLastOpP1: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetLastOpP1'); {$endif}
  result := fLastImP1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// erase fLastImOp (in old versions this was done by GetLastOp)

procedure TImageEnMView.CallBitmapChangeEvents;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CallBitmapChangeEvents'); {$endif}
  inherited;
  fLastImOp := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////
// remove all images
// recreate temp file (you can change the DefTEMPPATH and call Clear to make changes active)

{!!
<FS>TImageEnMView.Clear

<FM>Declaration<FC>
procedure Clear;

<FM>Description<FN>
Clear removes all images.
!!}
procedure TImageEnMView.Clear;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Clear'); {$endif}
  Deselect;
  ClearThreadsAndRequests;
  while fImageInfo.Count > 0 do
    DeleteImageNU(fImageInfo.Count-1);
  FreeAndNil(fImageList);
  fImageList := TIEVirtualImageList.Create('ILIST');
  fImageList.MaxImagesInMemory := fImageCacheSize;
  ClearOnDemandIOList;
  FreeAndNil(fCacheList);
  fCacheList := TIEVirtualImageList.Create('ICACHE');
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.LockPaint

<FM>Declaration<FC>
procedure LockPaint;

<FM>Description<FN>
The LockPaint method increases the lock counter's value.
Use <A TImageEnMView.UnLockPaint> to unlock.
!!}
// increases fLockPaint
procedure TImageEnMView.LockPaint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.LockPaint'); {$endif}
  inc(fLockPaint);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.UnLockPaint

<FM>Declaration<FC>
function UnLockPaint: integer;

<FM>Description<FN>
Use the UnLockPaint method to decrease the lock counter's value locked using <A TImageEnMView.LockPaint>.
If the lock count is zero, then the <A TImageEnMView.Update> method is called.

Returns the lock count.
!!}
// decreases fLockPaint
// ret. current value (after the decrement)
function TImageEnMView.UnLockPaint: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.UnLockPaint'); {$endif}
  if fLockPaint > 0 then
    dec(fLockPaint);
  if fLockPaint = 0 then
    Update;
  result := fLockPaint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Decreases fLockPaint
// ret current value (after the decrement)
// doesn't call Update if fLockpaint=0

function TImageEnMView.NPUnLockPaint: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.NPUnLockPaint'); {$endif}
  if fLockPaint > 0 then
    dec(fLockPaint);
  result := fLockPaint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GetImageVisibility

<FM>Declaration<FC>
function GetImageVisibility(idx:integer):integer;

<FM>Description<FN>
GetImageVisibility returns 0 when idx image is invisible, 1 when is partially visible or 2 when is fully visible.
!!}
function TImageEnMView.GetImageVisibility(idx: integer): integer;
var
  x1, y1: integer;
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageVisibility'); {$endif}
  result := 0;
  if (idx >= 0) and (idx < fImageInfo.Count) then
  begin
    info := PIEImageInfo(fImageInfo[idx]);
    x1 := info^.X - fViewX;
    y1 := info^.Y - fViewY;
    result := _RectPRect(0, 0, clientwidth - 1, clientheight - 1, x1, y1, x1 + fThumbWidth - 1, y1 + fThumbHeight - 1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.UpdateImage

<FM>Declaration<FC>
procedure UpdateImage(idx:integer);

<FM>Description<FN>
Call UpdateImage to redraw only the idx image.
You have to update TImageEnMView component (with <A TImageEnMView.Update> or <A TImageEnMView.UpdateImage> methods) whenever an image (Bitmap) is changed.

<FM>Example<FC>

// this draws a rectangle on image 3
var
  bmp:TBitmap;
begin
  bmp:=ImageEnMView1.GetBitmap(3);
  bmp.canvas.rectangle(0,0,10,10);
  ImageEnMView1.ReleaseBitmap(3);
  UpdateImage(3);
end;
!!}
procedure TImageEnMView.UpdateImage(idx: integer);
var
  rc: TRect;
  x1, y1: integer;
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.UpdateImage'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) then
  begin
    ClearImageCache(idx);
    UpdateEx(false);
    ValidateRect(self.handle, nil);
    //
    info := PIEImageInfo(fImageInfo[idx]);
    x1 := info^.X - fViewX;
    y1 := info^.Y - fViewY;
    rc := Rect(x1, y1, x1 + fThumbWidth, y1 + fThumbHeight);
    InvalidateRect(self.handle, @rc, false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.CMWantSpecialKey(var Msg: TCMWantSpecialKey);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CMWantSpecialKey'); {$endif}
  inherited;
  case msg.CharCode of
    VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN,
      VK_PRIOR, VK_NEXT, VK_HOME, VK_END: msg.Result := 1;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.CenterSelected

<FM>Declaration<FC>
procedure CenterSelected;

<FM>Description<FN>
This method moves <A TImageEnMView.ViewX> and <A TImageEnMView.ViewY> to show (centered) the currently selected image.

<FM>Example<FC>

ImageEnMView1.SelectedImage:=10;
ImageEnMView1.CenterSelected;
!!}
procedure TImageEnMView.CenterSelected;
var
  info: PIEImageInfo;
  x, y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CenterSelected'); {$endif}
  if fSelectedItem >= 0 then
  begin
    info := PIEImageInfo(fImageInfo[fSelectedItem]);
    X := info^.X - ((ClientWidth - fThumbWidth) div 2);
    Y := info^.Y - ((ClientHeight - fThumbHeight) div 2);
    SetViewXY(X, Y);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectSeek

<FM>Declaration<FC>
procedure SelectSeek(pos:<A TIESeek>);

<FM>Description<FN>
SelectSeek moves the current selected image at the pos position. SelectSeek scrolls to make the selected image visible.

<FM>Example<FC>

// This code loads "film.avi" and select the first image
ImageEnMView1.MIO.LoadFromFile('film.avi');
ImageEnMView1.SelectSeek(iskFirst);
!!}
procedure TImageEnMView.SelectSeek(pos: TIESeek);
var
  info: PIEImageInfo;
  gw, gh: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SelectSeek'); {$endif}
  if fImageInfo.Count = 0 then
    exit;
  if fGridWidth = -1 then
    gw := (clientwidth - fHorizBorder) div (fThumbWidth + fHorizBorder)
  else
    gw := fGridWidth;
  gh := (clientheight - fVertBorder) div (fThumbHeight + fVertBorder);
  //
  case pos of
    iskLeft:
      if fSelectedItem >= 0 then
      begin
        SetSelectedItem(fSelectedItem - 1);
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewXY(info^.X - fHorizBorder, info^.Y - fVertBorder);
        end;
      end;
    iskRight:
      if fSelectedItem >= -1 then
      begin
        SetSelectedItem(fSelectedItem + 1);
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewXY(info^.X - clientwidth + fThumbWidth + fHorizBorder, info^.Y - clientheight + fThumbHeight + fVertBorder);
        end;
      end;
    iskUp:
      if fSelectedItem >= 0 then
      begin
        if fGridWidth = 0 then
          // one row of infinite columns
          SetSelectedItem(fSelectedItem - 1)
        else
        begin
          // more rows of "gw" columns
          // 2.3.2
          if fSelectedItem - gw >= 0 then
            SetSelectedItem(fSelectedItem - gw);
        end;
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewY(info^.Y - fVertBorder);
          if GetImageVisibility(fSelectedItem) <> 2 then
            SetViewX(info^.X - fHorizBorder);
        end;
      end;
    iskDown:
      if fSelectedItem >= -1 then
      begin
        if fGridWidth = 0 then
          // one row of infinite columns
          SetSelectedItem(fSelectedItem + 1)
        else
        begin
          // more row of gw columns
          // 2.3.2
          if fSelectedItem + gw < fImageInfo.Count then
            SetSelectedItem(fSelectedItem + gw);
        end;
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewY(info^.Y - clientheight + fThumbHeight + fVertBorder);
          if GetImageVisibility(fSelectedItem) <> 2 then
            SetViewX(info^.X - clientwidth + fThumbWidth + fHorizBorder);
        end;
      end;
    iskFirst:
      begin
        SetSelectedItem(0);
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
          SetViewXY(0, 0);
      end;
    iskLast:
      begin
        SetSelectedItem(fImageInfo.Count - 1);
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewY(info^.Y - clientheight + fThumbHeight + fVertBorder);
          if GetImageVisibility(fSelectedItem) <> 2 then
            SetViewX(info^.X - clientwidth + fThumbWidth + fHorizBorder);
        end;
      end;
    iskPagDown:
      if fSelectedItem >= -1 then
      begin
        SetSelectedItem( imin(fSelectedItem + gw * gh , fImageInfo.Count-1) );
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewY(info^.Y - clientheight + fThumbHeight + fVertBorder);
          if GetImageVisibility(fSelectedItem) <> 2 then
            SetViewX(info^.X - clientwidth + fThumbWidth + fHorizBorder);
        end;
      end;
    iskPagUp:
      if fSelectedItem >= 0 then
      begin
        SetSelectedItem( imax(fSelectedItem - gw * gh , 0) );
        if (fSelectedItem >= 0) and (GetImageVisibility(fSelectedItem) <> 2) then
        begin
          info := PIEImageInfo(fImageInfo[fSelectedItem]);
          SetViewY(info^.Y - fVertBorder);
          if GetImageVisibility(fSelectedItem) <> 2 then
            SetViewX(info^.X - fHorizBorder);
        end;
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.KeyDown(var Key: Word; Shift: TShiftState);
var
  lMultiSelecting: boolean;
  lSelectInclusive: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.KeyDown'); {$endif}
  inherited;
  try
  fUserAction:=true;
  if fPlaying then
    exit;
  if mkiMoveSelected in fKeyInteract then
  begin
    lMultiSelecting := fMultiSelecting;
    lSelectInclusive := fSelectInclusive;
    if fEnableMultiSelect and ((ssCtrl in Shift) or (ssShift in Shift)) then
    begin
      fMultiSelecting := true;
      fSelectInclusive := true;
    end;
    try
      case Key of
        VK_LEFT:
          begin
            SelectSeek(iskLeft);
            ViewChange(0);
          end;
        VK_RIGHT:
          begin
            SelectSeek(iskRight);
            ViewChange(0);
          end;
        VK_UP:
          begin
            SelectSeek(iskUp);
            ViewChange(0);
          end;
        VK_DOWN:
          begin
            SelectSeek(iskDown);
            ViewChange(0);
          end;
        VK_PRIOR:
          begin
            SelectSeek(iskPagUp);
            ViewChange(0);
          end;
        VK_NEXT:
          begin
            SelectSeek(iskPagDown);
            ViewChange(0);
          end;
        VK_HOME:
          begin
          SelectSeek(iskFirst);
            ViewChange(0);
          end;
        VK_END:
          begin
            SelectSeek(iskLast);
            ViewChange(0);
          end;
      else
        exit;
      end;
    finally
      fMultiSelecting := lMultiSelecting;
      fSelectInclusive := lSelectInclusive;
    end;
    UpdateEx(false);
  end;
  finally
    fUserAction:=false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.KeyUp(var Key: Word; Shift: TShiftState);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.KeyUp'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMKillFocus(var Msg: TWMKillFocus);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMKillFocus'); {$endif}
  inherited;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.WMSetFocus(var Msg: TWMSetFocus);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMSetFocus'); {$endif}
  inherited;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MouseInteract

<FM>Declaration<FC>
property MouseInteract: <A TIEMMouseInteract>;

<FM>Description<FN>
MouseInteract specifies the mouse interactions handled by TImageEnMView.
!!}
function TImageEnMView.GetMouseInteract: TIEMMouseInteract;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMouseInteract'); {$endif}
  result := fMouseInteract;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.KeyInteract

<FM>Declaration<FC>
property KeyInteract:<A TIEMKeyInteract>

<FM>Description<FN>
KeyInteract sets which keyboard activities TImageEnMView handles automatically.
!!}
function TImageEnMView.GetKeyInteract: TIEMKeyInteract;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetKeyInteract'); {$endif}
  result := fKeyInteract;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.RemoveCorrupted

<FM>Declaration<FC>
property RemoveCorrupted: boolean;

<FM>Description<FN>
If RemoveCorrupted is True, TImageEnMView automatically removes all corrupted images from the grid.
!!}
procedure TImageEnMView.SetRemoveCorrupted(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetRemoveCorrupted'); {$endif}
  fRemoveCorrupted := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.DrawImageBackground

<FM>Declaration<FC>
property DrawImageBackground: boolean;

<FM>Description<FN>
If DrawImageBackground is True, the image background is painted. Otherwise, the component background is painted.
!!}
procedure TImageEnMView.SetDrawImageBackground(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetDrawImageBackground'); {$endif}
  fDrawImageBackground := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ScrollBarsAlwaysVisible

<FM>Declaration<FC>
property ScrollBarsAlwaysVisible:boolean;

<FM>Description<FN>
When the ScrollBarsAlwaysVisible property is True, the scroll bars specified in <A TImageEnMView.ScrollBars> property will be displayed, even if this is not necessary.

!!}
function TImageEnMView.GetScrollBarsAlwaysVisible: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetScrollBarsAlwaysVisible'); {$endif}
  result := fScrollBarsAlwaysVisible;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetScrollBarsAlwaysVisible(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetScrollBarsAlwaysVisible'); {$endif}
  fScrollBarsAlwaysVisible := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetImageFromFile

<FM>Declaration<FC>
function SetImageFromFile(idx:integer; const FileName:WideString):boolean;

<FM>Description<FN>
SetImageFromFile loads an image and assigns it to idx index.

<FM>Example<FC>

idx:=ImageEnMView1.AppendImage;
ImageEnMView1.SetImageFromFile(idx,'myfile.jpg');

!!}
function TImageEnMView.SetImageFromFile(idx: integer; const FileName: WideString): boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageFromFile'); {$endif}
  result := SetImageFromStreamOrFile(idx, nil, FileName);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetImageFromStream

<FM>Declaration<FC>
function SetImageFromStream(idx:integer; Stream:TStream):boolean;

<FM>Description<FN>
SetImageFromStream loads an image and assigns it to idx index.

<FM>Example<FC>
idx:=ImageEnMView1.AppendImage;
ImageEnMView1.SetImageFromStream(idx, stream);

!!}
function TImageEnMView.SetImageFromStream(idx: integer; Stream: TStream): boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageFromStream'); {$endif}
  result := SetImageFromStreamOrFile(idx, Stream, '');
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.SetImageFromStreamOrFile(idx: integer; Stream: TStream; const FileName: WideString): boolean;
var
  bmp: TIEBitmap;
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageFromStreamOrFile'); {$endif}
  if idx >= fImageInfo.Count then
  begin
    result := false;
    exit;
  end;
  result := true;
  info := PIEImageInfo(fImageInfo[idx]);
  bmp := TIEBitmap.Create;
  fImageEnIO.Background := info^.Background;
  fImageEnIO.attachediebitmap := bmp;
  fImageEnIO.OnProgress := fOnIOProgress;
  if fStoreType = ietThumb then
  begin
    fImageEnIO.Params.JPEG_Scale := IOJPEG_AUTOCALC;
    fImageEnIO.Params.JPEG_GetExifThumbnail:=(fThumbWidth<=200) and (fThumbHeight<=200) and fEnableLoadEXIFThumbnails;
    fImageEnIO.Params.JPEG_DCTMethod:=ioJPEG_IFAST;
    fImageEnIO.Params.Width := fThumbWidth;
    fImageEnIO.Params.Height := fThumbHeight;
    {$ifdef IEINCLUDERAWFORMATS}
    fImageEnIO.Params.RAW_GetExifThumbnail:= (fThumbWidth<=200) and (fThumbHeight<=200) and fEnableLoadEXIFThumbnails;
    {$endif}
  end
  else
    fImageEnIO.Params.JPEG_Scale := IOJPEG_FULLSIZE;
  fImageEnIO.Params.EnableAdjustOrientation:=fEnableAdjustOrientation;
  try
    if Stream <> nil then
      fImageEnIO.LoadFromStream(Stream)
    else
      fImageEnIO.LoadFromFileAuto(FileName);
  except
    fImageEnIO.Aborting := true;
  end;
  //
  if fImageEnIO.Aborting then
  begin
    DoWrongImage(bmp, idx);
    result := false;
  end;
  // updates params of encapsulated TImageEnMIO object
  GetImageEnMIO.Params[idx].Assign(fImageEnIO.Params); // GetImageEnMIO creates TImageEnMIO if it doesn't exist
  // set the image
  info^.Background := fImageEnIO.Background;
  SetIEBitmapEx(idx, bmp);
  if fImageEnIO.Params.FileType = ioJPEG then
  begin
    ImageOriginalWidth[idx] := fImageEnIO.Params.JPEG_OriginalWidth;
    ImageOriginalHeight[idx] := fImageEnIO.Params.JPEG_OriginalHeight;
  end
  else
  begin
    ImageOriginalWidth[idx] := fImageEnIO.Params.Width;
    ImageOriginalHeight[idx] := fImageEnIO.Params.Height;
  end;
  //
  fImageEnIO.attachediebitmap := nil;
  FreeAndNil(bmp);
  ClearImageCache(idx);
  UpdateEx(false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GetImageToFile

<FM>Declaration<FC>
procedure GetImageToFile(idx:integer; const FileName:WideString);

<FM>Description<FN>
Saves the specifies frame (image) to file. The file format is given by the name extension.
idx is the image index (0=first image)
FileName is the destination path and file name.

<FM>Example<FC>
// separates pages of a multipage tif
ImageEnMView1.MIO.LoadFromFile('multipage.tif');
ImageEnMView1.GetImageToFile(0,'page1.tif');
ImageEnMView1.GetImageToFile(1,'page2.tif');
!!}
procedure TImageEnMView.GetImageToFile(idx:integer; const FileName:WideString);
var
  bmp:TIEBitmap;
begin
  fImageEnIO.Params.Assign( GetImageEnMIO.Params[idx] );
  bmp:=GetTIEBitmap(idx);
  fImageEnIO.AttachedIEBitmap:=bmp;
  fImageEnIO.SaveToFile(FileName);
  ReleaseBitmap(idx);
end;

{!!
<FS>TImageEnMView.GetImageToStream

<FM>Declaration<FC>
procedure GetImageToStream(idx:integer; Stream:TStream; ImageFormat:<A TIOFileType>);

<FM>Description<FN>
Saves the specifies frame (image) to Stream.
idx is the image index (0=first image)
Stream is the destination stream.
ImageFormat specifies the image format (tif,jpeg...)
!!}
procedure TImageEnMView.GetImageToStream(idx:integer; Stream:TStream; ImageFormat:TIOFileType);
var
  bmp:TIEBitmap;
begin
  fImageEnIO.Params.Assign( GetImageEnMIO.Params[idx] );
  bmp:=GetTIEBitmap(idx);
  fImageEnIO.AttachedIEBitmap:=bmp;
  fImageEnIO.SaveToStream(Stream,ImageFormat);
  ReleaseBitmap(idx);
end;


{!!
<FS>TImageEnMView.PrepareSpaceFor

<FM>Declaration<FC>
procedure PrepareSpaceFor(Width,Height:integer; Bitcount:integer; ImageCount:integer);

<FM>Description<FN>
PrepareSpaceFor allocates enough space on a temporary file for ImageCount images of size Width*Height*BitCount.

Call this method to improve performance only when you plan to add many images of the same size.

!!}
procedure TImageEnMView.PrepareSpaceFor(Width, Height: integer; Bitcount: integer; ImageCount: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.PrepareSpaceFor'); {$endif}
  fImageList.PrepareSpaceFor(Width, Height, Bitcount, ImageCount);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageCacheSize

<FM>Declaration<FC>
property ImageCacheSize:integer;

<FM>Description<FN>

ImageCacheSize contains the number of images to be stored in memory instead of a memory mapped file.
For example, if you know that TImageEnMView will contain only 20 images then the ImageCacheSize should be 20. The default value is 10.
!!}
procedure TImageEnMView.SetImageCacheSize(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetImageCacheSize'); {$endif}
  fImageCacheSize := v;
  fImageList.MaxImagesInMemory := fImageCacheSize;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.VisibleFrame

<FM>Declaration<FC>
property VisibleFrame:integer;

<FM>Description<FN>
VisibleFrame represents the visible image when DisplayMode is dmSingle or Playing is True.

!!}
procedure TImageEnMView.SetVisibleFrame(v: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetVisibleFrame'); {$endif}
  if (v = fFrame) or (v < 0) or (v >= fImageInfo.Count) then
    exit;
  if fTransitionEffect <> iettNone then
  begin
    fTransition.Transition := fTransitionEffect;
    fTransition.Duration := fTransitionDuration;
    fTransition.SetSizes(fThumbWidth, fThumbHeight);
    PaintTo(fTransition.SourceShot);
    fFrame := v;
    PaintTo(fTransition.TargetShot);
    fTransition.Run(true);
  end
  else
  begin
    fFrame := v;
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.TransitionRunning

<FM>Declaration<FC>
property TransitionRunning:boolean;

<FM>Description<FN>
TransitionRunning is True whenever a transition is running.

<FM>Example<FC>

// design time properties...
ImageEnMView1.DisplayMode:=mdSingle;
ImageEnMView1.TransitionEffect:=iettCrossDissolve;
ImageEnMView1.TransitionDuration:=1500;
// display next frame using cross dissolve
ImageEnMView1.VisibleFrame:=ImageEnMView1.VisibleFrame+1;
// wait transition end
While ImageEnMView1.TransitionRunning do
	 Application.processmessages;
ShowMessage('transition done!');

!!}
function TImageEnMView.GetTransitionRunning: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetTransitionRunning'); {$endif}
  result := fTransition.Running;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.RemoveAlphaChannel(Merge: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.RemoveAlphaChannel'); {$endif}
  // nothing
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// return nil

function TImageEnMView.GetAlphaChannel: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetAlphaChannel'); {$endif}
  result := nil;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetHasAlphaChannel: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetHasAlphaChannel'); {$endif}
  result := false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetImageTopText(idx: integer): TIEMText;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageTopText'); {$endif}
  result := nil;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      result := TopText;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetImageBottomText(idx: integer): TIEMText;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageBottomText'); {$endif}
  result := nil;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      result := BottomText;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetImageInfoText(idx: integer): TIEMText;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageInfoText'); {$endif}
  result := nil;
  if (idx >= 0) and (idx < fImageInfo.Count) then
    with PIEImageInfo(fImageInfo[idx])^ do
      result := InfoText;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////
// TIEMText

constructor TIEMText.Create(Owner: TComponent; Position: TIEMTextPos);
var
  iem: TImageEnMView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEMText.Create'); {$endif}
  inherited Create;
  //
  fCaption := '';
  fFont := TFont.Create;
  fOwner := Owner;
  fPos := Position;
  fTruncSide := iemtsRight;
  if fOwner is TImageEnMView then
  begin
    iem := (fOwner as TImageEnMView);
    fBackground := iem.fBackground;
    fFont.assign(iem.font);
  end
  else
  begin
    fBackground := clBtnFace;
  end;
  fBackgroundStyle:=bsSolid;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

destructor TIEMText.Destroy;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEMText.Destroy'); {$endif}
  FreeAndNil(fFont);
  //
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEMText.SetCaption(value: WideString);
var
  iem: TImageEnMView;
  h: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIEMText.SetCaption'); {$endif}
  if fOwner is TImageEnMView then
  begin
    iem := (fOwner as TImageEnMView);
    // adjust top or bottom gap if needed
    iem.Canvas.Font.Assign(fFont);
    h := iem.Canvas.TextHeight(value);
    if (fPos = iemtpTop) and (iem.fUpperGap < (h + 2)) then
      iem.fUpperGap := h + 2;
    if (fPos = iemtpBottom) and (iem.fBottomGap < (h + 2)) then
    begin
      if iem.fStyle = iemsACD then
        iem.fBottomGap := h + 4
      else
        iem.fBottomGap := h + 2;
    end;
  end;
  fCaption := value;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIEMText.SaveToStream(Stream:TStream);
var
  ver:byte;
  f_charset:TFontCharset;
  f_color:TColor;
  f_pitch:TFontPitch;
  f_style:TFontStyles;
  i32:integer;
begin
  // version
  ver:=1; Stream.Write(ver,1);
  // caption
  SaveStringToStreamW(Stream,fCaption);
  // font - charset
  f_charset:=fFont.Charset; Stream.Write(f_charset,sizeof(TFontCharset));
  // font - color
  f_color:=fFont.Color; Stream.Write(f_color,sizeof(TColor));
  // font - height
  i32:=fFont.Height; Stream.Write(i32,sizeof(integer));
  // font - name
  SaveStringToStream(Stream,fFont.Name);
  // font - pitch
  f_pitch:=fFont.Pitch; Stream.Write(f_pitch,sizeof(TFontPitch));
  // font - style
  f_style:=fFont.Style; Stream.Write(f_style,sizeof(TFontStyles));
  // background
  Stream.Write(fBackground,sizeof(TColor));
  // background style
  Stream.Write(fBackgroundStyle,sizeof(TBrushStyle));
  // pos
  Stream.Write(fPos,sizeof(TIEMTextPos));
  // trunc side
  Stream.Write(fTruncSide,sizeof(TIEMTruncSide));
end;

function TIEMText.LoadFromStream(Stream:TStream):boolean;
var
  ver:byte;
  f_charset:TFontCharset;
  f_color:TColor;
  f_pitch:TFontPitch;
  f_style:TFontStyles;
  i32:integer;
  s:string;
begin
  // version
  Stream.Read(ver,1);
  // caption
  LoadStringFromStreamW(Stream,fCaption);
  // font - charset
  Stream.Read(f_charset,sizeof(TFontCharset));
  fFont.Charset:=f_charset;
  // font - color
  Stream.Read(f_color,sizeof(TColor));
  fFont.Color:=f_color;
  // font - height
  Stream.Read(i32,sizeof(integer));
  fFont.Height:=i32;
  // font - name
  LoadStringFromStream(Stream,s);
  fFont.Name:=s;
  // font - pitch
  Stream.Read(f_pitch,sizeof(TFontPitch));
  fFont.Pitch:=f_pitch;
  // font - style
  Stream.Read(f_style,sizeof(TFontStyles));
  fFont.Style:=f_style;
  // background
  Stream.Read(fBackground,sizeof(TColor));
  // background style
  Stream.Read(fBackgroundStyle,sizeof(TBrushStyle));
  // pos
  Stream.Read(fPos,sizeof(TIEMTextPos));
  // trunc side
  Stream.Read(fTruncSide,sizeof(TIEMTruncSide));

  result:=true;
end;

// end of TIEMText
///////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnMView.Style

<FM>Declaration<FC>
property Style:<A TIEMStyle>;

<FM>Description<FN>
Style specifies the thumbnails style. It can be flat or 3D.

<FM>Example<FC>

ImageEnMView1.Style:=iemsFlat;
<IMG help_images\60.bmp>

ImageEnMView1.Style:=iemsACD;
<IMG help_images\61.bmp>
!!}
procedure TImageEnMView.SetStyle(value: TIEMStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetStyle'); {$endif}
  if fStyle <> value then
  begin
    fStyle := value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectionStyle

<FM>Declaration<FC>
property SelectionStyle:<A TIESStyle>;

<FM>Description<FN>
SelectionStyle specifies how a selected thumbnail will be shown.

<FM>Example<FC>

ImageEnMView1.SelectionStyle:=iessAround;
<IMG help_images\62.bmp>

ImageEnMView1.SelectionStyle:=iessACD;
<IMG help_images\63.bmp>
!!}
procedure TImageEnMView.SetSelectionStyle(value: TIESStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetSelectionStyle'); {$endif}
  if fSelectionStyle <> value then
  begin
    fSelectionStyle := value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.EnableMultiSelect

<FM>Declaration<FC>
property EnableMultiSelect:boolean;

<FM>Description<FN>
EnableMultiSelect enables multiselections. Default is False (multiselection disabled).

<FM>Example<FC>
// select images 0 and 1 (you have to set at design time ImageEnMView1.EnableMultiSelect:=True)
ImageEnMView1.Deselect;
ImageEnMView1.MultiSelecting:=True;
ImageEnMView1.SelectedImage:=0;
ImageEnMView1.SelectedImage:=1;
ImageEnMView1.MultiSelecting:=False;
!!}
procedure TImageEnMView.SetEnableMultiSelect(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetEnableMultiSelect'); {$endif}
  if fEnableMultiSelect <> Value then
  begin
    fEnableMultiSelect := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbnailsBorderWidth

<FM>Declaration<FC>
property ThumbnailsBorderWidth:integer;

<FM>Description<FN>
ThumbnailsBorderWidth specifies the width of the thumbnail border. Default is 0.

This value should be less than <A TImageEnMView.ThumbWidth> and <A TImageEnMView.ThumbHeight>.
To specify the border color use <A TImageEnMView.ThumbnailsBorderColor> property.

<FM>Example<FC>
// draw a thin green border to all thumbnails
ImageEnMView1.ThumbnailsBorderWidth:=1;
ImageEnMView1.ThumbnailsBorderColor:=clGreen;
!!}
procedure TImageEnMView.SetThumbnailsBorderWidth(Value: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbnailsBorderWidth'); {$endif}
  if fThumbnailsBorderWidth <> Value then
  begin
    fThumbnailsBorderWidth := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbnailsBorderColor

<FM>Declaration<FC>
property ThumbnailsBorderColor:TColor;

<FM>Description<FN>
ThumbnailsBorderColor specifies the color of the thumbnail border.

<FM>Example<FC>
// draw a thin green border to all thumbnails
ImageEnMView1.ThumbnailsBorderWidth:=1;
ImageEnMView1.ThumbnailsBorderColor:=clGreen;
!!}
procedure TImageEnMView.SetThumbnailsBorderColor(Value: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbnailsBorderColor'); {$endif}
  if fThumbnailsBorderColor <> Value then
  begin
    fThumbnailsBorderColor := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbnailsInternalBorder

<FM>Declaration<FC>
property ThumbnailsInternalBorder: boolean;

<FM>Description<FN>
If True a border around thumbnails will be drawn. To specify the color use <A TImageEnMView.ThumbnailsInternalBorderColor>.
!!}
procedure TImageEnMView.SetThumbnailsInternalBorder(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbnailsInternalBorder'); {$endif}
  if fThumbnailsInternalBorder <> Value then
  begin
    fThumbnailsInternalBorder := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbnailsInternalBorderColor

<FM>Declaration<FC>
property ThumbnailsInternalBorderColor: TColor;

<FM>Description<FN>
Specifies the border color when <A TImageEnMView.ThumbnailsInternalBorder> is True.
!!}
procedure TImageEnMView.SetThumbnailsInternalBorderColor(Value: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbnailsInternalBorderColor'); {$endif}
  if fThumbnailsInternalBorderColor <> Value then
  begin
    fThumbnailsInternalBorderColor := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MultiSelectedImages

<FM>Declaration<FC>
property MultiSelectedImages[index:integer]:integer;

<FM>Description<FN>
MultiSelectedImages allows you know which images are selected. Use <A TImageEnMView.MultiSelectedImagesCount> to know how many images are selected.

<FM>Example<FC>

// replaces all selected images with 'new.jpg'
for i:=0 to ImageEnMView1.MultiSelectedImagesCount-1 do
begin
  selected := ImageEnMView1.MultiSelectedImages[ i ];
  ImageEnMView1.SetImageFromFile( selected , 'new.jpg' );
end;

!!}
function TImageEnMView.GetMultiSelectedImages(index: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMultiSelectedImages'); {$endif}
  result := -1;
  if (index >= 0) and (index < fMultiSelectedImages.Count) then
    result := integer(fMultiSelectedImages[index]);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MultiSelectedImagesCount

<FM>Declaration<FC>
property MultiSelectedImagesCount:integer;

<FM>Description<FN>
MultiSelectedImagesCount returns the number of selected images. Selected indexes are in <A TImageEnMView.MultiSelectedImages>.

<FM>Example<FC>

// replaces all selected images with �new.jpg�
for i:=0 to ImageEnMView1.MultiSelectedImagesCount-1 do begin
  selected := ImageEnMView1.MultiSelectedImages[ i ];
  ImageEnMView1.SetImageFromFile( selected , 'new.jpg' );
end;

!!}
function TImageEnMView.GetMultiSelectedImagesCount: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMultiSelectedImagesCount'); {$endif}
  result := fMultiSelectedImages.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.WallPaper

<FM>Declaration<FC>
property WallPaper:TPicture;

<FM>Description<FN>
The WallPaper property sets a background image under the thumbnails. Use <A TImageEnMView.WallPaperStyle> to specify how to paint the wallpaper.
!!}
procedure TImageEnMView.SetWallPaper(Value: TPicture);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetWallPaper'); {$endif}
  fWallPaper.Assign(Value);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.WallPaperStyle

<FM>Declaration<FC>
property WallPaperStyle:<A TIEWallPaperStyle>;

<FM>Description<FN>
WallPaperStyle specifies how to paint the wallpaper. <A TImageEnMView.WallPaper> specifies the image to use.
!!}
procedure TImageEnMView.SetWallPaperStyle(Value: TIEWallPaperStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetWallPaperStyle'); {$endif}
  if Value <> fWallPaperStyle then
  begin
    fWallPaperStyle := Value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SelectAll

<FM>Declaration<FC>
procedure SelectAll;

<FM>Description<FN>
Selects all images.
!!}
procedure TImageEnMView.SelectAll;
var
  q: integer;
  lMultiSelecting: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SelectAll'); {$endif}
  if fEnableMultiSelect then
  begin
    DeselectNU;
    lMultiSelecting := fMultiSelecting;
    fMultiSelecting := true;
    for q := 0 to fImageInfo.Count - 2 do
      fMultiSelectedImages.Add(pointer(q));
    SetSelectedItemNU(fImageInfo.Count - 1); // last item also is current selected item (own Bitmap object)
    fMultiSelecting := lMultiSelecting;
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.EnableResamplingOnMinor

<FM>Declaration<FC>
property EnableResamplingOnMinor:boolean;

<FM>Description<FN>
If EnableResamplingOnMinor is True (default), the images are resampled to fit thumbnail size, otherwise the image is resampled only if it is greater than thumbnail size.
!!}
procedure TImageEnMView.SetEnableResamplingOnMinor(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetEnableResamplingOnMinor'); {$endif}
  fEnableResamplingOnMinor := Value;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetImageEnMIO: TImageEnMIO;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageEnMIO'); {$endif}
  if not assigned(fImageEnMIO) then
  begin
    fImageEnMIO := TImageEnMIO.Create(self);
    fImageEnMIO.AttachedMView := self;
    fImageEnMIO.OnProgress := fOnProgress;
    fImageEnMIO.OnFinishWork := fOnFinishWork;
  end;
  result := fImageEnMIO;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetImageEnProc: TImageEnProc;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageEnProc'); {$endif}
  if not assigned(fImageEnProc) then
  begin
    fImageEnProc := TImageEnProc.Create(self);
    fImageEnProc.AttachedImageEn := self;
    fImageEnProc.OnProgress := fOnProgress;
    fImageEnProc.OnFinishWork:=fOnFinishWork;
  end;
  result := fImageEnProc;
  if fSelectedItem=-1 then
    SelectedImage:=0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetOnFinishWork(v: TNotifyEvent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetOnFinishWork'); {$endif}
  fOnFinishWork := v;
  if assigned(fImageEnMIO) then
    fImageEnMIO.OnFinishWork := v;
  if assigned(fImageEnProc) then
    fImageEnProc.OnFinishWork := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.GetOnFinishWork: TNotifyEvent;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetOnFinishWork'); {$endif}
  result := fOnFinishWork;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetOnProgress(v: TIEProgressEvent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetOnProgress'); {$endif}
  fOnProgress := v;
  if assigned(fImageEnMIO) then
    fImageEnMIO.OnProgress := v;
  if assigned(fImageEnProc) then
    fImageEnProc.OnProgress := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.OnProgress

<FM>Declaration<FC>
property OnProgress: <A TIEProgressEvent>;

<FM>Description<FN>
OnProgress event during on image processing or input/output operations. 

!!}
function TImageEnMView.GetOnProgress: TIEProgressEvent;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetOnProgress'); {$endif}
  result := fOnProgress;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MaximumViewX

<FM>Declaration<FC>
property MaximumViewX:integer;

<FM>Description<FN>
MaximumViewX returns the maximum value that you can assign to the <A TImageEnMView.ViewX> property.

!!}
function TImageEnMView.GetMaximumViewX: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMaximumViewX'); {$endif}
  result := imax(fVWidth - ClientWidth, 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MaximumViewY

<FM>Declaration<FC>
property MaximumViewY:integer;

<FM>Description<FN>
MaximumViewY returns the maximum value that you can assign to the <A TImageEnMView.ViewY> property.

!!}
function TImageEnMView.GetMaximumViewY: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetMaximumViewY'); {$endif}
  result := imax(fVHeight - ClientHeight, 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ClearImageCache

<FM>Declaration<FC>
procedure ClearImageCache(idx:integer);

<FM>Description<FN>
The ClearImageCache method clears the cache for image idx.
Image caching allows you to speed up the thumbnails painting, saving each drawn image to a cache.
You should call this method only if you have refreshing problems.

!!}
procedure TImageEnMView.ClearImageCache(idx: integer);
var
  info: PIEImageInfo;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ClearImageCache'); {$endif}
  info := PIEImageInfo(fImageInfo[idx]);
  if info^.cacheImage <> nil then
  begin
    fcacheList.Delete(info^.cacheImage);
    info^.cacheImage := nil;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.ClearCache;
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.ClearCache'); {$endif}
  for i := 0 to fImageInfo.Count - 1 do
    ClearImageCache(i);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.EnableImageCaching

<FM>Declaration<FC>
property EnableImageCaching:boolean;

<FM>Description<FN>
EnableImageCaching allows you to speed up thumbnails painting, saving each drawn image to a cache. This is enabled by default.

To disable image caching, set EnableImageCaching to False.
!!}
procedure TImageEnMView.SetEnableImageCaching(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetEnableImageCaching'); {$endif}
  fEnableImageCaching := v;
  if not fEnableImageCaching then
  begin
    ClearCache;
    update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.IsSelected

<FM>Declaration<FC>
function IsSelected(idx:integer):boolean;

<FM>Description<FN>
IsSelected returns true if the idx image is currently selected.
!!}
function TImageEnMView.IsSelected(idx: integer): boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.IsSelected'); {$endif}
  result := (fSelectedItem=idx) or (fMultiSelectedImages.IndexOf(pointer(idx)) > -1); // 2.3.1
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MultiSelectSortList

<FM>Declaration<FC>
procedure MultiSelectSortList;

<FM>Description<FN>
This method sorts the selected items list. In this way you have <A TImageEnMView.MultiSelectedImages> list sorted by image index.
!!}
procedure TImageEnMView.MultiSelectSortList;
//
  function comp(Item1, Item2: Pointer): Integer;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MultiSelectSortList.comp'); {$endif}
    result := integer(Item1) - integer(Item2);
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MultiSelectSortList'); {$endif}
  fMultiSelectedImages.Sort(@comp);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.EnableAlphaChannel

<FM>Declaration<FC>
property EnableAlphaChannel:boolean;

<FM>Description<FN>
Set EnableAlphaChannel to True to enable thumbnails' alpha channel (it is also requested to show soft shadows).
!!}
procedure TImageEnMView.SetEnableAlphaChannel(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetEnableAlphaChannel'); {$endif}
  fEnableAlphaChannel := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.BackgroundStyle

<FM>Declaration<FC>
property BackgroundStyle:<A TIEBackgroundStyle>;

<FM>Description<FN>
BackgroundStyle specifies the background style. The background is the component region not filled by the image or thumbnails.

<FM>Example<FC>
ImageEnMView1.BackgroundStyle:=iebsChessboard;
!!}
procedure TImageEnMView.SetBackgroundStyle(v: TIEBackgroundStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetBackgroundStyle'); {$endif}
  fBackgroundStyle := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ThumbnailsBackgroundStyle

<FM>Declaration<FC>
property ThumbnailsBackgroundStyle:<A TIEBackgroundStyle>

<FM>Description<FN>
ThumbnailsBackgroundStyle specifies the thumbnails background style. The thumbnails background region not filled by the image (only when <A TImageEnMView.EnableAlphaChannel> is true and the image has an alpha channel that makes it transparent).
!!}
procedure TImageEnMView.SetThumbnailsBackgroundStyle(v: TIEBackgroundStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetThumbnailsBackgroundStyle'); {$endif}
  fThumbnailsBackgroundStyle := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.SetChessboardStyle

<FM>Declaration<FC>
procedure SetChessboardStyle(Size:integer;BrushStyle:TBrushStyle);

<FM>Description<FN>
SetChessboardStyle specifies size and brush of the chessboard background (see <A TImageEnMView.BackgroundStyle>).

Size specifies the box size (default 16).
BrushStyle specifies the brush style of the boxes (default bsSolid).
!!}
procedure TImageEnMView.SetChessboardStyle(Size: integer; BrushStyle: TBrushStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetChessboardStyle'); {$endif}
  fChessboardSize := Size;
  fChessboardBrushStyle := BrushStyle;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.GradientEndColor

<FM>Declaration<FC>
property GradientEndColor:TColor

<FM>Description<FN>
GradientEndColor specifies the ending color of the gradient when <A TImageEnMView.BackgroundStyle> is iebsGradient.
!!}
procedure TImageEnMView.SetGradientEndColor(Value: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetGradientEndColor'); {$endif}
  fGradientEndColor := Value;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.FillThumbnail

<FM>Declaration<FC>
property FillThumbnail:boolean;

<FM>Description<FN>
When FillThumbnail is true (default), the thumbnail is filled with the background color (<A TImageEnMView.ThumbnailsBackgroundStyle>).
!!}
procedure TImageEnMView.SetFillThumbnail(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetFillThumbnail'); {$endif}
  fFillThumbnail := Value;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetShowText(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetShowText'); {$endif}
  fShowText := Value;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnMView.FillFromDirectory

<FM>Declaration<FC>
procedure FillFromDirectory(const Directory: WideString; Limit:integer=-1; AllowUnknownFormats:boolean=false);

<FM>Description<FN>
FillFromDirectory automatically loads all known images inside Directory. FillFromDirectory uses FindFirst/FindNext to get file names.
Set <A TImageEnMView.ImageFileName> with the image full path and <A TImageEnMView.ImageBottomText> with the file name.

Limit specifies the maximum number of images to load. -1 means no limit.

<FM>Example<FC>
ImageEnMView1.Clear;
ImageEnMView1.FillFromDirectory( 'c:\images' );

!!}
// If Limit=-1 this is disabled
procedure TImageEnMView.FillFromDirectory(const Directory: WideString; Limit:integer; AllowUnknownFormats:boolean);
var
  sr: TSearchRec;
  l,Found, idx: integer;
  fpath: string;
  count:integer;
  sep:string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.FillFromDirectory'); {$endif}
  LockPaint;
  l:=length(Directory);
  if (l=0) or (Directory[l]='\') then
    sep:=''
  else
    sep:='\';
  Found := FindFirst(Directory + sep + '*.*', $00000020, sr); // $00000020=faArchive
  if Found = 0 then
  begin
    count:=0;
    while Found = 0 do
    begin
      fpath := Directory + sep + sr.Name;
      if (IsKnownFormat(fpath) or AllowUnknownFormats) and (sr.Attr and $10=0) then
      begin
        if (Limit>-1) and (count=limit) then
          break;
        idx := AppendImage;
        ImageFileName[idx] := fpath;
        ImageBottomText[idx].Caption := extractfilename(fpath);
        inc(count);
      end;
      Found := FindNext(sr);
    end;
    FindClose(sr);
  end;
  UnLockPaint;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MoveImage

<FM>Declaration<FC>
procedure MoveImage(idx:integer; destination:integer);

<FM>Description<FN>
Moves an image from the index position idx to destination position.
If the destination index is equal to or greater than the image count, the idx image is moved to the position immediately after the last image.

<FM>Example<FC>

// exchange first and second images
ImageEnMView1.MoveImage(0,1);

// move first image after last image
ImageEnMView1.MoveImage(0,ImageEnMView1.ImageCount);

!!}
// move image idx to destination index
// changed in 2.2.5
procedure TImageEnMView.MoveImage(idx: integer; destination: integer);
var
  psel: integer;
  mm: TList;
  i,p:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.MoveImage'); {$endif}
  if (idx >= 0) and (idx < fImageInfo.Count) and (destination >= 0) and (destination <> idx) then
  begin
    SetPlaying(false);

    psel := fSelectedItem;
    mm:=TList.Create;
    for i:=0 to fMultiSelectedImages.Count-1 do
    begin
      p:=integer( fMultiSelectedImages[i] );
      if p=idx then
        p:=destination
      else
      begin
        if p>idx then dec(p);
        if p>=destination then inc(p);
      end;
      mm.Add( pointer(p) );
    end;

    if destination >= fImageInfo.Count then
    begin
      fImageInfo.Add(fImageInfo[idx]);
      fImageInfo.Delete(idx);
    end
    else
      fImageInfo.Move(idx, destination);

    fLastImOp := 3; // move...
    fLastImIdx := idx; //...image idx
    fLastImP1 := destination;
    CallBitmapChangeEvents;

    if (mm.Count>0) and ((idx = psel) or (fMultiSelectedImages.Count>0)) then
    begin
      fSelectedItem:=integer(mm[0]);
      for i:=0 to fMultiSelectedImages.Count-1 do
        fMultiSelectedImages[i]:=mm[i];
    end
    else
    begin
      DeselectNU;
      SetSelectedItemNU(psel);
    end;

    UpdateEx(false);

    mm.free;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.MoveSelectedImagesTo

<FM>Declaration<FC>
procedure MoveSelectedImagesTo(beforeImage:integer);

<FM>Description<FN>
Moves selected images before the specified image.
To move images after last image set beforeImage=<A TImageEnMView.ImageCount>.
!!}
// beforeImage can be 0 up to imagecount
procedure TImageEnMView.MoveSelectedImagesTo(beforeImage:integer);
var
  mm: TList;
  i:integer;
  sn:boolean;
begin
  if (beforeImage < 0) or (beforeImage > fImageInfo.Count) then
    exit;

  SetPlaying(false);

  sn := (fSelectedItem>-1) and (fMultiSelectedImages.Count=0);
  if sn then
    fMultiSelectedImages.Add(pointer(fSelectedItem));

  fLastImOp := 3; // move...
  fLastImIdx := fSelectedItem; //...image idx
  fLastImP1 := beforeImage;

  mm:=TList.Create;
  mm.Count:=fImageInfo.Count;
  for i:=0 to fImageInfo.Count-1 do
    mm[i]:=fImageInfo[i];

  for i:=0 to fMultiSelectedImages.Count-1 do
  begin
    fImageInfo[ fImageInfo.IndexOf( mm[MultiSelectedImages[i]] ) ]:=  pointer(-1); // mark as to remove
    fImageInfo.Insert( beforeImage, mm[MultiSelectedImages[i]] );
    inc(beforeImage);
  end;
  for i:=fImageInfo.Count-1 downto 0 do
    if fImageInfo[i]=pointer(-1) then
      fImageInfo.Delete(i);
  for i:=0 to fMultiSelectedImages.Count-1 do
    fMultiSelectedImages[i] := pointer(fImageInfo.IndexOf( mm[MultiSelectedImages[i]] ));

  CallBitmapChangeEvents;

  fSelectedItem:=MultiSelectedImages[0];

  if sn then
    fMultiSelectedImages.Clear;

  UpdateEx(false);

  mm.free;

end;

// no image must be selected
// doesn't restore selected image
// doesn't update
procedure TImageEnMView.SwapImages(idx1,idx2:integer);
var
  tmp:pointer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SwapImages'); {$endif}
  tmp:=fImageInfo[idx1];
  fImageInfo[idx1]:=fImageInfo[idx2];
  fImageInfo[idx2]:=tmp;

  fLastImOp := 4; // swap...
  fLastImIdx := idx1;
  fLastImP1 := idx2;
  CallBitmapChangeEvents;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnMView.SortCompareFunction(index1,index2:integer):integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SortCompareFunction'); {$endif}
  if assigned(fCurrentCompare) then
    result:=fCurrentCompare(index1,index2)
  else
    result:=fCurrentCompareEx(index1,index2)
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.Sort

<FM>Declaration<FC>
procedure Sort(Compare: <A TIEImageEnMViewSortCompare>);
procedure Sort(Compare: <A TIEImageEnMViewSortCompareEx>);

<FM>Description<FN>
Sorts all images using specified comparison function.

<FM>Example<FC>

function xcompare(i1,i2:integer):integer;
var
  s1,s2:integer;
begin
  with Form1.ImageEnMView1 do
  begin
    s1:=ImageOriginalWidth[i1]*ImageOriginalHeight[i1];
    s2:=ImageOriginalWidth[i2]*ImageOriginalHeight[i2];
  end;
  if s1<s2 then
    result:=-1
  else if s1>s2 then
    result:=1
  else
  result:=0;
end;

// Sort By Size
procedure TForm1.Button1Click(Sender: TObject);
begin
  ImageEnMView1.Sort( xcompare );
end;
!!}
procedure TImageEnMView.Sort(Compare: TIEImageEnMViewSortCompare);
begin
  Sort2(Compare,nil);
end;

procedure TImageEnMView.Sort(Compare: TIEImageEnMViewSortCompareEx);
begin
  Sort2(nil,Compare);
end;

procedure TImageEnMView.Sort2(Compare: TIEImageEnMViewSortCompare; CompareEx: TIEImageEnMViewSortCompareEx);
var
  psel: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.Sort'); {$endif}
  if fImageInfo.Count > 0 then
  begin
    SetPlaying(false);
    psel := fSelectedItem;
    DeselectNU;
    fCurrentCompare := Compare;
    fCurrentCompareEx := CompareEx;
    try
      EnterCriticalSection(fThreadCS);  // 3.0.0 b3
      IEQuickSort(fImageInfo.Count,SortCompareFunction,SwapImages);
    finally
      LeaveCriticalSection(fThreadCS);
    end;
    SetSelectedItemNU(psel);
    UpdateEx(false);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.DoImageSelect(idx: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DoImageSelect'); {$endif}
  if assigned(fOnImageSelect) and fUserAction then
    fOnImageSelect(self, idx);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.DoImageDeselect(idx: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.DoImageDeselect'); {$endif}
  if not fDestroying and assigned(fOnImageDeselect) and fUserAction then
    fOnImageDeselect(self, idx);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{$ifdef IEINCLUDEFLATSB}
{!!
<FS>TImageEnMView.FlatScrollBars

<FM>Declaration<FC>
property FlatScrollBars:boolean;

<FM>Description<FN>
Specifies whether the component's scroll bars are flat.
ImageEn only supports flat scroll bars if the system has version 472 or later of comctl32.dll and Delphi 5 or later and C++Builder 5 or later.
!!}
procedure TImageEnMView.SetFlatScrollBars(Value:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetFlatScrollBars'); {$endif}
  if Value<>fFlatScrollBars then
  begin
    fFlatScrollBars:=Value;
    if fFlatScrollBars then
    begin
      IESetScrollRange(Handle, SB_HORZ, 0, 65535, false, false);  // Why this? Please ask to Microsoft programmers!
      IESetScrollRange(Handle, SB_VERT, 0, 65535, false, false);  // Why this? Please ask to Microsoft programmers!
      InitializeFlatSB(Handle);
      IEShowScrollBar(handle, SB_HORZ, false, true); // Why this? Please ask to Microsoft programmers!
      IEShowScrollBar(handle, SB_VERT, false, true); // Why this? Please ask to Microsoft programmers!
    end
    else
      UninitializeFlatSB(Handle);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;
{$endif}

{!!
<FS>TImageEnMView.SetPresetThumbnailFrame

<FM>Declaration<FC>
procedure SetPresetThumbnailFrame(PresetIndex:integer; UnSelectedColor:TColor; SelectedColor:TColor);

<FM>Description<FN>
Specifies a bacground to draw for each thumbnail.
PresetIndex specifies an preset image index. Currently values from 0 to 3 are available.
UnSelectedColor specifies how modify the preset image when it is unselected.
SelectedColor specifies how modify the preset image when it is selected.

<FM>Examples<FC>

ImageEnMView1.SetPresetThumbnailFrame(0, clWhite, clGreen);
<IMG help_images\75.bmp>

ImageEnMView1.SetPresetThumbnailFrame(2, clWhite, clGreen);
<IMG help_images\76.bmp>

<FM>See demo<FN>
viewers\thumbnails2

!!}
procedure TImageEnMView.SetPresetThumbnailFrame(PresetIndex:integer; UnSelectedColor:TColor; SelectedColor:TColor);
var
  io:TImageEnIO;
  proc:TImageEnProc;
  rgb:TRGB;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.SetPresetThumbnailFrame'); {$endif}
  if (PresetIndex>=0) and (PresetIndex<iegPresetImages.Count) then
  begin
    EnableAlphaChannel:=true;
    FillThumbnail:=false;
    SelectionWidth:=0;
    ShowText:=false;
    Style:=iemsFlat;
    DrawImageBackground:=false;

    if assigned(fThumbnailFrame) then
      FreeAndNil(fThumbnailFrame);
    if assigned(fThumbnailFrameSelected) then
      FreeAndNil(fThumbnailFrameSelected);

    fThumbnailFrame:=TIEBitmap.Create;
    fThumbnailFrameSelected:=TIEBitmap.Create;

    io:=TImageEnIO.Create(self);
    io.AttachedIEBitmap:=fThumbnailFrame;
    with TIEPresetImage(iegPresetImages[PresetIndex]) do
    begin
      io.LoadFromBuffer( Data, Size, FileFormat );
      fThumbnailFrameRect:=ThumbRect;
    end;
    FreeAndNil(io);

    fThumbnailFrameSelected.Assign( fThumbnailFrame );

    proc:=TImageEnProc.Create(self);
    proc.AutoUndo:=false;

    // set selected color
    proc.AttachedIEBitmap:=fThumbnailFrameSelected;
    rgb:=TColor2TRGB(SelectedColor);
    proc.IntensityRGBall(rgb.r-255, rgb.g-255, rgb.b-255);

    // set unselected color
    proc.AttachedIEBitmap:=fThumbnailFrame;
    rgb:=TColor2TRGB(UnSelectedColor);
    proc.IntensityRGBall(rgb.r-255, rgb.g-255, rgb.b-255);

    FreeAndNil(proc);

    ThumbWidth:=fThumbnailFrame.Width;
    ThumbHeight:=fThumbnailFrame.Height;

    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{$ifdef IEDOTNETVERSION}
procedure TImageEnMView.WMContextMenu(var Message: TWMContextMenu);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.WMContextMenu'); {$endif}
  // just to remove Delphi default behavior
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;
{$endif}

{!!
<FS>TImageEnMView.IEBeginDrag

<FM>Declaration<FC>
procedure BeginDrag(Immediate: Boolean; Threshold: Integer = -1);

<FM>Description<FN>
This method must be used in replacement of BeginDrag, when you need to perform a drag&drop.

<FM>Demo<FN>
dragdrop\timageenmview_dragdrop

!!}
procedure TImageEnMView.IEBeginDrag(Immediate: Boolean; Threshold: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.IEBeginDrag'); {$endif}
  // why this? Because BeginDrag call MouseUp, but "Dragging" of VCL is still not True and MouseUp must know we are dragging
  fDragging:=true;
  {$ifdef IEDC3}
  BeginDrag(immediate);
  {$else}
  BeginDrag(immediate,Threshold);
  {$endif}
  fDragging:=Dragging;  // get the official dragging value
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.IEEndDrag

<FM>Declaration<FC>
procedure IEEndDrag;

<FM>Description<FN>
This method must be used in replacement of EndDrag, when you need to perform a drag&drop.

<FM>Demo<FN>
dragdrop\timageenmview_dragdrop
!!}
procedure TImageEnMView.IEEndDrag;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.IEEndDrag'); {$endif}
  EndDrag(true);
  fDragging:=false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.JobsRunning

<FM>Declaration<FC>
property JobsRunning:integer;

<FM>Description<FN>
JobsRunning returns the number of threads which currenly are loading thumbnails.

<FM>Demo<FN>
viewers/thumbnails

!!}
function TImageEnMView.GetJobsRunning:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetJobsRunning'); {$endif}
  result:=fThreadPoolIO.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.JobsWaiting

<FM>Declaration<FC>
property JobsWaiting:integer;

<FM>Description<FN>
JobsWaiting returns the number of images/thumbnails which waits to be loaded.

<FM>Demo<FN>
viewers/thumbnails

!!}
function TImageEnMView.GetJobsWaiting:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetJobsWaiting'); {$endif}
  result:=fThreadRequests.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.LoadFromFileOnDemand

<FM>Declaration<FC>
procedure LoadFromFileOnDemand(const FileName:WideString);

<FM>Description<FN>
LoadFromFileOnDemand fills <A TImageEnMView.ImageFileName> property with values like 'FileName::0', 'FileName::1', etc. to load the whole specified multipage file.
Frames will be loaded only when they are needed.

<FM>Example<FC>

ImageEnMView1.LoadFromFileOnDemand('input.mpeg');

<FM>Demo<FN>

Inputoutput/largevideos

!!}
procedure TImageEnMView.LoadFromFileOnDemand(const FileName:WideString);
var
  FramesCount,i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.LoadFromFileOnDemand'); {$endif}
  Clear;
  FramesCount:=IEGetFileFramesCount(FileName);
  LockPaint;
  for i:=0 to FramesCount-1 do
  begin
    InsertImageEx( i );
    ImageFileName[ i ]:=filename+'::'+IntToStr(i);
  end;
  UnLockPaint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function CreateLinesArray(vect:TImageEnVect):PIELineArray;
var
  i,hobj:integer;
  r:TRect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('CreateLinesArray'); {$endif}
  getmem(result, sizeof(TIELine)*vect.ObjectsCount);
  for i:=0 to vect.ObjectsCount-1 do
  begin
    hobj:=vect.GetObjFromIndex(i);
    vect.GetObjRect(hobj,r);
    result[i].P.x := r.Left;
    result[i].P.y := r.Top;
    result[i].Q.x := r.Right;
    result[i].Q.y := r.Bottom;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.CreateMorphingSequence

<FM>Declaration<FC>
procedure CreateMorphingSequence(Source:<A TImageEnVect>; Target:<A TImageEnVect>; FramesCount:integer);

<FM>Description<FN>
This method creates a sequence of frames which are the transformation of the Source image to Target image. Images <A TIEBitmap.PixelFormat> must be ie24RGB (true color) and have the same size.
Also Source and Target must contains iekLINE objects (the same number) which describe the transformation. You should create line objects in the same order on boths TImageEnVect components.
FramesCount specifies the number of frames to create.

<FM>Demo<FN>
Imageprocessing1/morphing

!!}
procedure TImageEnMView.CreateMorphingSequence(Source:TImageEnVect; Target:TImageEnVect; FramesCount:integer);
var
  source_lines,dest_lines:PIELineArray;
  outimages_src,outimages_trg:TList;
  outcount,i:integer;
  ie:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.CreateMorphingSequence'); {$endif}
  if (Source.ObjectsCount=0) or (Target.ObjectsCount=0) or (Source.ObjectsCount<>Target.ObjectsCount) then
    exit;
  if (Source.IEBitmap.PixelFormat<>ie24RGB) or (Target.IEBitmap.PixelFormat<>ie24RGB) then
    exit;

  source_lines:=CreateLinesArray(Source);
  dest_lines:=CreateLinesArray(Target);
  outimages_src:=TList.Create;
  outimages_trg:=TList.Create;

  IEFields_warp( Source.IEBitmap, source_lines, dest_lines, Source.ObjectsCount, FramesCount, outimages_src);
  IEFields_warp( Target.IEBitmap, dest_lines, source_lines, Target.ObjectsCount, FramesCount, outimages_trg);

  SetIEBitmapEx( AppendImage ,Source.IEBitmap);

  ie:=TImageEnView.Create(nil);
  outcount:=outimages_src.Count;
  for i:=0 to outcount-1 do
  begin
    ie.IEBitmap.Assign(outimages_src[i]);
    ie.Update;
    ie.Proc.MergeIEBitmap(outimages_trg[outcount-1-i], trunc((outcount-i)/outcount*100));
    SetIEBitmapEx( AppendImage , ie.IEBitmap );
  end;
  FreeAndNil(ie);

  SetIEBitmapEx( AppendImage ,Target.IEBitmap);

  for i:=0 to outcount-1 do
    TIEBitmap(outimages_src[i]).Free;
  FreeAndNil(outimages_src);
  for i:=0 to outcount-1 do
    TIEBitmap(outimages_trg[i]).Free;
  FreeAndNil(outimages_trg);

  freemem(dest_lines);
  freemem(source_lines);

  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnMView.ImageEnVersion

<FM>Declaration<FC>
property ImageEnVersion:string;

<FM>Description<FN>
This is a published property which returns the ImageEn version as string.

!!}
function TImageEnMView.GetImageEnVersion:string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnMView.GetImageEnVersion'); {$endif}
  result:=IEMAINVERSION;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnMView.SetImageEnVersion(Value:string);
begin
  // this is a read-only property, but it must be displayed in object inspector
end;

procedure TImageEnMView.SaveSnapshot(FileName:WideString; SaveCache:boolean; Compressed:boolean);
var
  fs:TIEWideFileStream;
begin
  fs := TIEWideFileStream.Create(FileName, fmCreate);
  try
    SaveSnapshot(fs,SaveCache,Compressed);
  finally
    fs.Free;
  end;
end;

function TImageEnMView.LoadSnapshot(FileName:WideString):boolean;
var
  fs:TIEWideFileStream;
begin
  fs := TIEWideFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    result:=LoadSnapshot(fs);
  finally
    fs.Free;
  end;
end;

{!!
<FS>TImageEnMView.SaveSnapshot

<FM>Declaration<FC>
procedure SaveSnapshot(Stream:TStream; SaveCache:boolean; Compressed:boolean);
procedure SaveSnapshot(FileName:WideString; SaveCache:boolean; Compressed:boolean);

<FM>Description<FN>
Saves all images, caches, texts and thumbnails size in the specified stream or file.
This is useful to create caching mechanism like Windows .db files, to load quickly an entire directory of images.
If SaveCache is true (default) the image caches are saved. This speedup display but require more space.
If Compressed is true an LZ compression algorithm is applied. This reduces space but slowdown saving.

You can reload a saved snapshot using <A TImageEnMView.LoadSnapshot>.
!!}
// versions:
//    2: 232
//    3: 300
procedure TImageEnMView.SaveSnapshot(Stream:TStream; SaveCache:boolean; Compressed:boolean);
var
  ver:byte;
  i,i32:integer;
  ii:PIEImageInfo;
  LZStream: TZCompressionStream;
begin
  // magick
  SaveStringToStream(Stream,'MVIEWSNAPSHOT');
  // version
  ver:=3;
  Stream.Write(ver,sizeof(byte));

  Stream.Write(Compressed,sizeof(boolean));

  if Compressed then
  begin
    LZStream := TZCompressionStream.Create(Stream, zcDefault);
    Stream:=LZStream;
  end
  else
    LZStream:=nil;

  // fThumbWidth and fThumbHeight
  Stream.Write(fThumbWidth,sizeof(integer));
  Stream.Write(fThumbHeight,sizeof(integer));

  // fUpperGap and fBottomGap
  Stream.Write(fUpperGap,sizeof(integer));
  Stream.Write(fBottomGap,sizeof(integer));

  // images
  fImageList.SaveToStream(Stream);
  // caches
  Stream.Write(SaveCache,sizeof(boolean));
  if SaveCache then
    fCacheList.SaveToStream(Stream);
  // images count
  i32:=fImageInfo.Count; Stream.Write(i32,sizeof(integer));
  // info
  for i:=0 to fImageInfo.Count-1 do
  begin
    ii:=PIEImageInfo(fImageInfo[i]);
    // index of images
    i32:=fImageList.FindImageIndex( ii^.image );
    Stream.Write(i32,sizeof(integer));
    // index of caches
    if SaveCache then
    begin
      i32:=fCacheList.FindImageIndex( ii^.cacheImage );
      Stream.Write(i32,sizeof(integer));
    end;
    // background
    Stream.Write( ii^.Background, sizeof(TColor) );
    // name
    SaveStringToStreamW(Stream,ii^.name);
    // ID
    Stream.Write( ii^.ID, sizeof(integer) );
    // DTime
    Stream.Write( ii^.DTime, sizeof(integer) );
    // text
    ii^.TopText.SaveToStream(Stream);
    ii^.InfoText.SaveToStream(Stream);
    ii^.BottomText.SaveToStream(Stream);
  end;

  if Compressed then
    LZStream.Free;
end;

{!!
<FS>TImageEnMView.LoadSnapshot

<FM>Declaration<FC>
function LoadSnapshot(Stream:TStream):boolean;
function LoadSnapshot(FileName:string):boolean;

<FM>Description<FN>
Loads images, caches, texts and thumbnails size from the specified stream or file, saved using <A TImageEnMView.SaveSnapshot>.
This is useful to create caching mechanism like Windows .db files, to load quickly an entire directory of images.
!!}
function TImageEnMView.LoadSnapshot(Stream:TStream):boolean;
var
  magick:string;
  ver:byte;
  i,i32,a32:integer;
  ii:PIEImageInfo;
  s:string;
  ws:WideString;
  LoadCache:boolean;
  Compressed:boolean;
  LZStream: TZDecompressionStream;
begin
  result:=false;
  // magick
  LoadStringFromStream(Stream,magick);
  if magick<>'MVIEWSNAPSHOT' then
    exit;
  // version
  Stream.Read(ver,sizeof(byte));

  Clear;

  Stream.Read(Compressed,sizeof(boolean));
  if Compressed then
  begin
    LZStream:=TZDecompressionStream.Create(Stream);
    Stream:=LZStream;
  end
  else
    LZStream:=nil;

  // fThumbWidth and fThumbHeight
  Stream.Read(fThumbWidth,sizeof(integer));
  Stream.Read(fThumbHeight,sizeof(integer));

  if ver>=3 then
  begin
    // fUpperGap and fBottomGap
    Stream.Read(fUpperGap,sizeof(integer));
    Stream.Read(fBottomGap,sizeof(integer));
  end;

  // images
  result:=fImageList.LoadFromStream(Stream);
  if not result then exit;
  // caches
  Stream.Read(LoadCache,sizeof(boolean));
  if LoadCache then
    result:=fCacheList.LoadFromStream(Stream);
  if not result then exit;
  // images count
  Stream.Read(i32,sizeof(integer));
  // info
  for i:=0 to i32-1 do
  begin
    getmem(ii,sizeof(TIEImageInfo));
    ii^.parent:=self;
    fImageInfo.Add(ii);
    // image
    Stream.Read(a32,sizeof(integer));
    ii^.image:=fImageList.GetImageFromIndex(a32);
    // cache
    ii^.cacheImage:=nil;
    if LoadCache then
    begin
      Stream.Read(a32,sizeof(integer));
      ii^.cacheImage:=fCacheList.GetImageFromIndex(a32)
    end;
    // background
    Stream.Read( ii^.Background, sizeof(TColor) );
    // name
    if ver=1 then
    begin
      LoadStringFromStream(Stream,s);
      ws:=s;
    end
    else
      LoadStringFromStreamW(Stream,ws);
    if length(ws)>0 then
    begin
      getmem(ii^.name, (length(ws) + 1)*sizeof(WideChar));
      iewstrcopy(ii^.name, pwchar(ws));
    end
    else
      ii^.name:=nil;
    // ID
    Stream.Read( ii^.ID, sizeof(integer) );
    // DTime
    Stream.Read( ii^.DTime, sizeof(integer) );
    // text
    ii^.TopText := TIEMText.Create(self, iemtpTop);
    ii^.BottomText := TIEMText.Create(self, iemtpBottom);
    ii^.InfoText := TIEMText.Create(self, iemtpInfo);
    ii^.TopText.LoadFromStream(Stream);
    ii^.InfoText.LoadFromStream(Stream);
    ii^.BottomText.LoadFromStream(Stream);

    fLastImOp := 1; // insert...
    fLastImIdx := i; //...image
    CallBitmapChangeEvents;
  end;

  if Compressed then
    LZStream.Free;

  if LoadCache then
    UpdateEx(false)
  else
    UpdateEx(true);
  result:=true;
end;

{$ELSE} // {$ifdef IEINCLUDEMULTIVIEW}

interface
implementation

{$ENDIF}

end.


