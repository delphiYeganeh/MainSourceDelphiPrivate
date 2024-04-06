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

unit imageenview;

{$IFDEF FPC}
  {$MODE DELPHI}
{$ENDIF}


{$R-}
{$Q-}
{$HINTS OFF}

interface

{$I ie.inc}

uses
  Windows, Messages, Graphics, Controls, Forms, Classes, SysUtils, StdCtrls,
  ExtCtrls, hyiedefs, hyieutils, imageenio, imageenproc, ieview

{$ifdef FPC}
  ,lmessages
{$endif}

  ;

type

{!!
<FS>TIEGrip

<FM>Declaration<FC>
}
  TIEGrip = (ieNone, ieTopLeft, ieTopRight, ieBottomRight, ieBottomLeft, ieLeftSide, ieRightSide, ieTopSide, ieBottomSide, ieRotationCenter);
{!!}

{!!
<FS>TIEAlignment

<FM>Declaration<FC>
}
  TIEAlignment = (iejLeft, iejRight, iejCenter, iejJustify);
{!!}

{!!
<FS>TViewChangeEvent

<FM>Declaration<FC>
type TViewChangeEvent = procedure(Sender: TObject; Change: integer) of object;

<FM>Description<FN>
If Change = 0 the event is ViewX or ViewY modification.
If Change = 1 the event is Zoom modification.

Note: a Zoom could also modify ViewX/Y.

!!}
  TViewChangeEvent = procedure(Sender: TObject; Change: integer) of object;

{!!
<FS>TIEMouseInResizingGripEvent

<FM>Declaration<FC>
TIEMouseInResizingGripEvent = procedure(Sender: TObject; Grip: <A TIEGrip>) of object;
!!}
  TIEMouseInResizingGripEvent = procedure(Sender: TObject; Grip: TIEGrip) of object;

{!!
<FS>TIEZoomEvent

<FM>Declaration<FC>
}
  TIEZoomEvent = procedure(Sender: TObject; var NewZoom: double) of object;
{!!}

{!!
<FS>TIESpecialKeyEvent

<FM>Declaration<FC>
}
  TIESpecialKeyEvent = procedure(Sender: TObject; CharCode:word; Shift:TShiftState; var Handled:boolean) of object;
{!!}

  TIEScrollCommand = (iescPosition, iescBottom, iescTop, iescLineDown, iescLineUp, iescPageDown, iescPageUp);

  TIEOnDrawCanvas = procedure(Sender: TObject; ACanvas:TCanvas; ARect:TRect) of object;

  TIEOnDrawBackground = procedure(Sender: TObject; ACanvas:TCanvas; ARect:TRect; var Handled: boolean) of object;

  TIEOnDrawPolygon = procedure(Sender:TObject; polygon:integer; point:integer; Canvas:TCanvas; x,y:integer) of object;

{!!
<FS>TIEWallPaperStyle

<FM>Declaration<FC>
TIEWallPaperStyle = (iewoNormal, iewoStretch, iewoTile);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iewoNormal</C> <C>paint the wall paper image at the top left side</C> </R>
<R> <C>iewoStretch</C> <C>paint the wall paper stretching to the component size</C> </R>
<R> <C>iewoTile</C> <C>paint the wall paper tiled to the component size</C> </R>
</TABLE>
!!}
  TIEWallPaperStyle = (iewoNormal, iewoStretch, iewoTile);

{!!
<FS>TIEMouseInteractItems

<FM>Declaration<FC>
TIEMouseInteractItems = (miZoom, miScroll, miSelect, miSelectPolygon, miSelectCircle, miSelectZoom, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers );

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>miZoom</C> <C>the left click zoom-in the image, otherwise right click zoom-out.</C> </R>
<R> <C>miScroll</C> <C>the user can navigate the image with a left click and mouse movement.</C> </R>
<R> <C>miSelect</C> <C>the user can select a rectangular area. Click and move mouse to select the rectangle. miSelect excludes miScroll and miSelectXXX. SHIFT key allows selection of multiple regions. Simultaneously pressing ALT causes the selection to maintain its aspect ratio.</C> </R>
<R> <C>miSelectZoom</C> <C>the user can select an area, which will be zoomed-in. Click and move mouse to zoom the rectangle.</C> </R>
<R> <C>miSelectPolygon</C> <C>the user can select a polygonal area. Press and release left mouse button for each vertex of polygon, otherwise press left button and move mouse to specify continuous irregular lines. The SHIFT key selects multiple regions.</C> </R>
<R> <C>miSelectCircle</C> <C>the user can select a circular (ellipse) area. Press left button and move mouse (press ALT to select a circle). SHIFT key selects multiple regions.</C> </R>
<R> <C>miSelectMagicWand</C> <C>the user can select an irregular region with similar colors. Press and release the left button over a point. SHIFT key selects multiple regions.</C> </R>
<R> <C>miSelectLasso</C> <C>the user can select a polygonal area. Press the left button and move mouse to specify continuous irregular region.</C> </R>
<R> <C>miMoveLayers</C> <C>the user can move layers. <A TImageEnView.LayersSync> must be False.</C> </R>
<R> <C>miResizeLayers</C> <C>the user can resize layers using grips. <A TImageEnView.LayersSync> must be False.</C> </R>
<R> <C>miRotateLayers</C> <C>the user can rotate layers using grips. <A TImageEnView.LayersSync> must be False.</C> </R>
</TABLE>
!!}
  TIEMouseInteractItems = (
    miZoom,               // Click-sx zoom-in / click-dx zoom-out
    miScroll,             // Hand navigation
    miSelect,             // Rectangular selection
    miSelectPolygon,      // Polygonal selection
    miSelectCircle,       // Circular selection
    miSelectZoom,         // Zoom in rectangle
    miSelectMagicWand,    // Magic Wand selection
    miSelectLasso,        // Polygonal selection
    miMoveLayers,         // Move layers
    miResizeLayers,       // Resize layers
    miRotateLayers        // Rotate layers
    );


{!!
<FS>TIEMouseInteract

<FM>Declaration<FC>
type TIEMouseInteract = set of <A TIEMouseInteractItems>;
!!}
  TIEMouseInteract = set of TIEMouseInteractItems;

{!!
<FS>TIESelectionBase

<FM>Declaration<FC>
}
  TIESelectionBase = (
    iesbClientArea, // select coordinates over client area
    iesbBitmap      // select coordinates over bitmap
    );
{!!}

{!!
<FS>TIEBackgroundStyle

<FM>Declaration<FC>
TIEBackgroundStyle = (iebsSolid, iebsHorizontal, iebsVertical, iebsFDiagonal, iebsBDiagonal, iebsCross, iebsDiagCross, iebsChessboard, iebsDiagonals, iebsCropped, iebsCropShadow, iebsGradient, iebsSoftShadow, iebsPhotoLike);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iebsCropped</C> <C>3d border around the image (instead of around the component). We suggest that BorderStyle is bsNone and Center is True.</C> </R>
<R> <C>iebsCropShadow</C> <C>shadow around the image</C> </R>
<R> <C>iebsChessboard</C> <C>a chessboard picture</C> </R>
<R> <C>iebsDiagonals</C> <C>two diagonals</C> </R>
<R> <C>iebsSolid</C> <C>like bsSolid of TBrushStyle</C> </R>
<R> <C>iebsHorizontal</C> <C>like bsHorizontal of TBrushStyle</C> </R>
<R> <C>iebsVertical</C> <C>like bsVertical of TBrushStyle</C> </R>
<R> <C>iebsFDiagonal</C> <C>like bsFDiagonal of TBrushStyle</C> </R>
<R> <C>iebsBDiagonal</C> <C>like bsBDiagonal of TBrushStyle</C> </R>
<R> <C>iebsCross</C> <C>like bsCross of TBrushStyle</C> </R>
<R> <C>iebsDiagCross</C> <C>like bsDiagCross of TBrushStyle</C> </R>
<R> <C>iebsGradient</C> <C>a gradient (only Windows98/Me/2000/Xp)</C> </R>
<R> <C>iebsSoftShadow</C> <C>soft (gaussian) shadow around the image</C> </R>
<R> <C>iebsPhotoLike</C> <C>a chessboard inside the image with a black border around</C> </R>
</TABLE>
!!}
  TIEBackgroundStyle = (iebsSolid, iebsHorizontal, iebsVertical, iebsFDiagonal, iebsBDiagonal, iebsCross, iebsDiagCross, iebsChessboard, iebsDiagonals, iebsCropped, iebsCropShadow, iebsGradient, iebsSoftShadow, iebsPhotoLike);


{!!
<FS>TIESelectionOptions

<FM>Declaration<FC>
type TIESelectionOptions=set of (iesoAnimated, iesoSizeable, iesoMoveable, iesoFilled, iesoCutBorders, iesoMarkOuter, iesoCanScroll, iesoSelectTranspLayers);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iesoAnimated</C> <C>the selection will be animated.</C> </R>
<R> <C>iesoSizeable</C> <C>user can resize the selection (display grips).</C> </R>
<R> <C>iesoMoveable</C> <C>user can move the selection (display grips).</C> </R>
<R> <C>iesoFilled</C> <C>the selection in filled with inverted image</C> </R>
<R> <C>iesoCutBorders</C> <C>user can drag the selection out of borders (cut the selection borders)</C> </R>
<R> <C>iesoMarkOuter</C> <C>makes grayed the unselected area (the area out of selection)</C> </R>
<R> <C>iesoCanScroll</C> <C>enables auto-scrolling of the image when selecting out of visible area</C> </R>
<R> <C>iesoSelectTranspLayers : if specified transparent areas of a layer are selectable</C> </R>
</TABLE>
!!}
  TIESelectionOptions = set of (iesoAnimated, iesoSizeable, iesoMoveable, iesoFilled, iesoCutBorders, iesoMarkOuter, iesoCanScroll, iesoSelectTranspLayers);

{!!
<FS>TIESelOp

<FM>Declaration<FC>
TIESelOp = (iespReplace, iespAdd);

<FM>Description<FN>
iespReplace replaces all previous selections.
iespAdd adds a new selection.
!!}
  TIESelOp = (iespReplace, iespAdd);

{!!
<FS>TIEMagicWandMode

<FM>Declaration<FC>
TIEMagicWandMode=(iewInclusive, iewExclusive, iewGlobal);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iewInclusive</C> <C>the selection is a closed polygon.</C> </R>
<R> <C>iewExclusive</C> <C>the selection includes only points that match the initial pixel, like a flood fill</C> </R>
<R> <C>iewGlobal</C> <C>the selection includes all points that match the initial pixel, looking for all pixels in the image.</C> </R>
</TABLE>
!!}
  TIEMagicWandMode = (iewInclusive, iewExclusive, iewGlobal);

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TIEVSoftShadow

{!!
<FS>TIEVSoftShadow

<FM>Description<FN>
This class specifies how a shadow will be rendered.

<FM>Fields<FN>

  <A TIEVSoftShadow.Enabled>
  <A TIEVSoftShadow.Radius>
  <A TIEVSoftShadow.OffsetX>
  <A TIEVSoftShadow.OffsetY>
!!}
  TIEVSoftShadow = class

{!!
<FS>TIEVSoftShadow.Enabled

<FM>Declaration<FC>
Enabled:boolean

<FM>Description<FN>
Enables/disables the shadow.
!!}
    Enabled: boolean;

{!!
<FS>TIEVSoftShadow.Radius

<FM>Declaration<FC>
Radius:double

<FM>Description<FN>
Sets the radius of the shadow.
!!}
    Radius: double;

{!!
<FS>TIEVSoftShadow.OffsetX

<FM>Declaration<FC>
OffsetX:integer

<FM>Description<FN>
Specifies the horizontal relative position of the shadow.
!!}
    OffsetX: integer;

{!!
<FS>TIEVSoftShadow.OffsetY

<FM>Declaration<FC>
OffsetY:integer

<FM>Description<FN>
Specifies the vertical relative position of the shadow.
!!}
    OffsetY: integer;

{!!
<FS>TIEVSoftShadow.Intensity

<FM>Declaration<FC>
Intensity:integer

<FM>Description<FN>
This is the shadow intensity, with values in the range 0 and 100 (maximum). Default is 100.
!!}
    Intensity: integer;

{!!
<FS>TIEVSoftShadow.ShadowColor

<FM>Declaration<FC>
ShadowColor:<A TRGB>;

<FM>Description<FN>
Specified the shadow color. Default is 0,0,0 (black).
!!}
    ShadowColor:TRGB;

  end;

// TIEVSoftShadow
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////



{!!
<FS>TIEMagnifyStyle

<FM>Declaration<FC>
}
  TIEMagnifyStyle = (iemRectangle, iemEllipse);
{!!}

{!!
<FS>TIEMagnifySource

<FM>Declaration<FC>
TIEMagnifySource = (iemBackgroundLayer, iemCanvas);

<FM>Description<FN>
iemBackgroundLayer gets data from the background layer.
iemCanvas gets data from the painted background.
If you want the magnify the layer 0 image, getting pixels directly from the bitmap use iemBackgroundLayer.
!!}
  TIEMagnifySource = (iemBackgroundLayer, iemCanvas);

{!!
<FS>TIELayerMagnification

<FM>Declaration<FC>
  TIELayerMagnification = record
    Enabled: boolean;
    Rate: double;
    Style: <A TIEMagnifyStyle>;
    Source: <A TIEMagnifySource>;
  end;

<FM>Description<FN>

<TABLE>
<R> <H>Field</H> <H>Description</H> </R>
<R> <C>Enabled</C> <C>If true this is a magnify layer. The bitmap of the layer is filled with the background zoomed according to Rate field. Valid only if <A TImageEnView.LayersSync>=False. This property doesn't apply to layer 0.</C> </R>
<R> <C>Rate</C> <C>Specifies the rate of the magnify layer (magnification). Allowed values greather than 1. Valid only if Enabled=True and <A TImageEnView.LayersSync>=False. This property doesn't apply to layer 0.</C> </R>
<R> <C>Style</C> <C>Specifies the magnify layer shape. Valid only if Enabled=True and <A TImageEnView.LayersSync>=False. This property doesn't apply to layer 0.</C> </R>
<R> <C>Source</C> <C>Specifies the magnify layer source. </C> </R>
</TABLE>
!!}
  TIELayerMagnification = record
    Enabled: boolean;
    Rate: double; // must be >=1
    Style: TIEMagnifyStyle;
    Source: TIEMagnifySource;
  end;

{!!
<FS>TIEDrawingInfo

<FM>Declaration<FC>
}
  TIEDrawingInfo=record
    XDst:integer;       // destination x  (output canvas)
    YDst:integer;       // destination y  (output canvas)
    WidthDst:integer;   // destionation width (output canvas)
    HeightDst:integer;  // destionation height (output canvas)
    XSrc:integer;       // source x (input bitmap)
    YSrc:integer;       // source y (input bitmap)
    WidthSrc:integer;   // source width (input bitmap)
    HeightSrc:integer;  // source height (input bitmap)
    RotatedDest:array [0..3] of TPoint; // destination rotated points (output canvas)
  end;
{!!}

{!!
<FS>TIEDrawLayerBoxEvent

<FM>Declaration<FC>
}
  TIEDrawLayerBoxEvent = procedure (Sender:TObject; ABitmap: TBitmap; layer: integer) of object;
{!!}

{!!
<FS>TIEDrawLayerGrip

<FM>Declaration<FC>
}
  TIEDrawLayerGrip = procedure (Sender:TObject; ABitmap: TBitmap; layer: integer; grip:integer; rect:TRect) of object;
{!!}

{!!
<FS>TIELayer

<FM>Description<FN>
This class contains a single layer of <A TImageEnView> object. A layer has a TIEBitmap, position, size, transparency and other properties.
You should create new layers using <A TImageEnView.LayersAdd>.

<FM>Methods<FN>

    <A TIELayer.ConvXScr2Bmp>
    <A TIELayer.ConvYScr2Bmp>
    <A TIELayer.ConvXBmp2Scr>
    <A TIELayer.ConvYBmp2Scr>
    <A TIELayer.Assign>

<FM>Properties and Fields<FN>

    <A TIELayer.Bitmap>
    <A TIELayer.Visible>
    <A TIELayer.VisibleBox>
    <A TIELayer.Transparency>
    <A TIELayer.PosX>
    <A TIELayer.PosY>
    <A TIELayer.ClientAreaBox>
    <A TIELayer.Cropped>
    <A TIELayer.Locked>
    <A TIELayer.Selectable>
    <A TIELayer.Magnify>
    <A TIELayer.Operation>
    <A TIELayer.UserData>
    <A TIELayer.UserDataLen>
    <A TIELayer.ResampleFilter>
    <A TIELayer.Rotate>
    <A TIELayer.RotateCenterX>
    <A TIELayer.RotateCenterY>
    <A TIELayer.UseResampleFilter>
    <A TIELayer.Name>
    <A TIELayer.IsMask>
    <A TIELayer.DrawingInfo>
    <A TIELayer.DrawOuter>
    <A TIELayer.Width>
    <A TIELayer.Height>

!!}
  TIELayer = class
  private
    ResizedWidth, ResizedHeight: integer; // 0=original sizes
    fRotate:double;
    fCachedLayerMask:TIEBitmap;
    function GetWidth: integer;
    function GetHeight: integer;
    procedure SetRotate(v:double);
  public
    fOwner:TObject; // must be TImageEnView

{!!
<FS>TIELayer.Bitmap

<FM>Declaration<FC>
property Bitmap:<A TIEBitmap>;

<FM>Description<FN>
Contains the image and alpha channel of the layer.
!!}
    Bitmap: TIEBitmap;

{!!
<FS>TIELayer.Visible

<FM>Declaration<FC>
property Visible:boolean;

<FM>Description<FN>
Set to True to make the layer visible, otherwise set to False to hide it.
!!}
    Visible: boolean; // if True the layer is visible

{!!
<FS>TIELayer.VisibleBox

<FM>Declaration<FC>
property VisibleBox: boolean;

<FM>Description<FN>
If True, a box around the layer will be displayed.
!!}
    VisibleBox: boolean;

{!!
<FS>TIELayer.Transparency

<FM>Declaration<FC>
property Transparency:integer;

<FM>Description<FN>
Allows to set the overall transparency of the layer (255=opaque..0=transparent)
!!}
    Transparency: integer; // 255=opaque 0=transparency

{!!
<FS>TIELayer.PosX

<FM>Declaration<FC>
property PosX:integer;

<FM>Description<FN>
Specifies the relative (to the layer 0 - background image) position of the layer. Valid only when <A TImageEnView.LayersSync>=False.
!!}
    PosX: integer;

{!!
<FS>TIELayer.PosY

<FM>Declaration<FC>
property PosY:integer;

<FM>Description<FN>
Specifies the relative (to the layer 0 - background image) position of the layer. Valid only when <A TImageEnView.LayersSync>=False.
!!}
    PosY: integer;

{!!
<FS>TIELayer.ClientAreaBox

<FM>Declaration<FC>
property ClientAreaBox:TRect;

<FM>Description<FN>
This is a read-only property which will contains where ImageEn drawn the layer.
The coordinates are relative to the component client area. Valid only if <A TImageEnView.LayersSync>=False.
!!}
    ClientAreaBox: TRect;

{!!
<FS>TIELayer.Cropped

<FM>Declaration<FC>
property Cropped:boolean;

<FM>Description<FN>
If true and the layer is out of background image (layer 0) area, this layer will be cut to the background.
Valid only if <A TImageenView.LayersSync>=False.
!!}
    Cropped: boolean;

{!!
<FS>TIELayer.Locked

<FM>Declaration<FC>
property Locked:boolean;

<FM>Description<FN>
If False user can move or resize the layer. Also this enables to show the layer border and resizing grips.
Valid only if <A TImageEnView.LayersSync>=False.
!!}
    Locked: boolean;

{!!
<FS>TIELayer.Selectable

<FM>Declaration<FC>
property Selectable: boolean;

<FM>Description<FN>
If true (default) the layer is selectable by user action.
!!}
    Selectable: boolean;

{!!
<FS>TIELayer.Magnify

<FM>Declaration<FC>
property Magnify: <A TIELayerMagnification>

<FM>Description<FN>
Sets properties when the layer is a magnification layer.
!!}
    Magnify: TIELayerMagnification;

{!!
<FS>TIELayer.Operation

<FM>Declaration<FC>
property Operation: <A TIERenderOperation>;

<FM>Description<FN>
Specifies the operation to execute between this layer and the background layer.
!!}
    Operation: TIERenderOperation;

{!!
<FS>TIELayer.UserData

<FM>Declaration<FC>
property UserData: pointer;

<FM>Description<FN>
Contains a pointer to user data buffer. Look also <A TIELayer.UserDataLen>.
!!}
    UserData: pointer;

{!!
<FS>TIELayer.UserDataLen

<FM>Declaration<FC>
property UserDataLen:integer;

<FM>Description<FN>
Specifies the length of UserData buffer.
If this value is >0 then when you save the layer (LayersSaveTo..) the content of <A TIELayer.UserData> buffer is saved (and restored with LayersLoadFrom..).
!!}
    UserDataLen:integer; // used when save. If >0 then saves UserData content. Also it UserData will be freed on destroy
    
    FreeBitmapOnDestroy: boolean;

{!!
<FS>TIELayer.ResampleFilter

<FM>Declaration<FC>
property ResampleFilter: <A TResampleFilter>;

<FM>Description<FN>
Actived only when <A TIELayer.UseResampleFilter> is true this property specifies a resample filter to use instead of default one (<A TImageEnView.ZoomFilter>).
!!}
    ResampleFilter:TResampleFilter;

{!!
<FS>TIELayer.UseResampleFilter

<FM>Declaration<FC>
property UseResampleFilter: boolean;

<FM>Description<FN>
This property active the value specified in <A TIELayer.ResampleFilter>.
!!}
    UseResampleFilter:boolean;  // if true uses this ResampleFilter instead of TImageEnView.ZoomFilter

{!!
<FS>TIELayer.Name

<FM>Declaration<FC>
property Name:string;

<FM>Description<FN>
Contains the layer name. Only applications use this field.
!!}
    Name:string;

{!!
<FS>TIELayer.IsMask

<FM>Declaration<FC>
property IsMask:boolean;

<FM>Description<FN>
If True this is a layer mask. A layer mask contains a gray scale image (ie8g) which is connected to the upper layer.
The layer mask specifies where the upper layer is visible (255=fully visible).
A layer mask should be invisible (<A TIELayer.Visible>=False).
!!}
    IsMask:boolean; // This is the "layer mask" of previous layer

{!!
<FS>TIELayer.DrawingInfo

<FM>Declaration<FC>
property DrawingInfo:<A TIEDrawingInfo>;

<FM>Description<FN>
Specifies the source and destination rectangle recorded on last drawing.
!!}
    DrawingInfo:TIEDrawingInfo; // filled by PaintToEx

{!!
<FS>TIELayer.DrawOuter

<FM>Declaration<FC>
property DrawOuter:boolean;

<FM>Description<FN>
If True draws unselected layers as 'grayed'. The selected layer is drawn normally.
!!}
    DrawOuter:boolean;

    GUID:TGuid; // Unique identifier for this layer

{!!
<FS>TIELayer.RotateCenterX

<FM>Declaration<FC>
property RotateCenterX:double;

<FM>Description<FN>
Specifies the horizontal rotation center, in percentage of layer size.
0.5 means center (default), while 0 is left side and 1 is right side.
Also allowed <0 and >1 values.
This value (and <A TIELayer.RotateCenterY>) is modified when user moves the central grip, when layers rotation is active.

Look also <A TIELayer.Rotate>.
!!}
    RotateCenterX:double; // in percentage. 0.5=center

{!!
<FS>TIELayer.RotateCenterY

<FM>Declaration<FC>
property RotateCenterY:double;

<FM>Description<FN>
Specifies the vertical rotation center, in percentage of layer size.
0.5 means center (default), while 0 is top side and 1 is bottom side.
Also allowed <0 and >1 values.
This value (and <A TIELayer.RotateCenterX>) is modified when user moves the central grip, when layers rotation is active.

Look also <A TIELayer.Rotate>.
!!}
    RotateCenterY:double; // in percentage. 0.5=center

{!!
<FS>TIELayer.Rotate

<FM>Declaration<FC>
property Rotate:double;

<FM>Description<FN>
Specifies the layer rotation angle in degrees.
It is not allowed Rotation and Resize in the same time.

To allow resize after a layer rotation, it must be maked effective, actually rotate the bitmap.
Viceversa to allow rotation after a resize, the resizing must be effective, actually resizing the bitmap.
To make effective layer rotation call <A TImageEnView.LayersFixRotations>.
To make effective layer resizing call <A TImageEnView.LayersFixSizes>.
Finally, multiple rotations can cause the bitmap add external, transparent, border. To remove this border call <A TImageEnView.LayersFixBorders>.

When rotations are handled by <A TImageEnView.MouseInteract> (setting miRotateLayers), you don't need to call LayersFixRotations, LayersFixSizes and LayersFixBorders.

<FM>Demo<FN>
imageprocessing1\layers
imageprocessing1\RotateLayers
!!}
    property Rotate:double read fRotate write SetRotate;

{!!
<FS>TIELayer.Width

<FM>Declaration<FC>
property Width:integer;

<FM>Description<FN>
Specifies the layer size (in bitmap sizes). Valid only if <A TImageEnView.LayersSync>=False.
!!}
    property Width: integer read GetWidth write ResizedWidth; // displayed width of the layer

{!!
<FS>TIELayer.Height

<FM>Declaration<FC>
property Height:integer;

<FM>Description<FN>
Specifies the layer size (in bitmap sizes). Valid only if <A TImageEnView.LayersSync>=False.
!!}
    property Height: integer read GetHeight write ResizedHeight; // displayed height of the layer

    constructor Create(Owner:TObject; TemplateBitmap: TIEBitmap; JustAssign: boolean);
    destructor Destroy; override;
    function ConvXScr2Bmp(x:integer):integer;
    function ConvYScr2Bmp(y:integer):integer;
    function ConvXBmp2Scr(x:integer):integer;
    function ConvYBmp2Scr(y:integer):integer;
    procedure Assign(Source:TIELayer);
    procedure SetDefaults;
    procedure SaveInfo(Stream:TStream; saveBitmap:boolean);
    procedure LoadInfo(Stream:TStream);
  end;

{!!
<FS>TIELayerEvent

<FM>Declaration<FC>
TIELayerEvent = (ielSelected, ielMoved, ielResized, ielMoving, ielResizing, ielRotating, ielRotated);

<FM>Description<FN>

<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ielSelected</C> <C>user selected the layer</C> </R>
<R> <C>ielMoved</C> <C>user moved the layer</C> </R>
<R> <C>ielResized</C> <C>user resized the layer</C> </R>
<R> <C>ielMoving</C> <C>user is moving the layer</C> </R>
<R> <C>ielResizing</C> <C>user is resizing the layer</C> </R>
<R> <C>ielRotating</C> <C>user is rotating the layer</C> </R>
<R> <C>ielRotated</C> <C>user rotated the layer</C> </R>
</TABLE>
!!}
  TIELayerEvent = (ielSelected, ielMoved, ielResized, ielMoving, ielResizing, ielRotating, ielRotated);

{!!
<FS>TIELayerNotify

<FM>Declaration<FC>
TIELayerNotify = procedure(Sender: TObject; layer: integer; event: <A TIELayerEvent>) of object;

<FM>Description<FN>
<FC>layer<FN> is the layer index that is selected, moved or resized.
<FC>event<FN> specifies the event type.
!!}
  TIELayerNotify = procedure(Sender: TObject; layer: integer; event: TIELayerEvent) of object;

{!!
<FS>TIERSOptions

<FM>Declaration<FC>
TIERSOptions = (iersNone, iersMoveToAdapt, iersSyncLayers);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iersNone</C> <C>no adaption</C> </R>
<R> <C>iersMoveToAdapt</C> <C>move the selection to fit inside the new size</C> </R>
<R> <C>iersSyncLayers</C> <C>used to maintain the selection in the same position among layers</C> </R>
</TABLE>
!!}
  TIERSOptions = (iersNone, iersMoveToAdapt, iersSyncLayers);

{!!
<FS>TIESoftCropMode

<FM>Declaration<FC>
}
  TIESoftCropMode = (iesfNone, iesfAlphaBlend, iesfGrid, iesfAdd);
{!!}


{!!
<FS>TIEGripShape

<FM>Declaration<FC>
}
TIEGripShape = (iegsBox, iegsCircle);
{!!}



/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TImageEnView

{!!
<FS>TImageEnView

<FM>Description<FN>
TImageEnView is an image container and viewer. TImageEnView allows zoom, scroll and can handle multiple layers.

TImageEnView encapsulates a <A TImageEnIO> (<A TImageEnView.IO> property) and a <A TImageEnProc> (<A TImageEnView.Proc> property) component, to allow input/output and image processing tasks without adding TImageEnIO and TImageEnProc components.

Using this component you do not need to put a TImageEnIO and TImageEnProc components on the form.



<FM>Properties<FN>

  <FI>Alpha channel<FN>

  <A TImageEnView.AlphaChannel>
  <A TImageEnView.EnableAlphaChannel>
  <A TImageEnView.HasAlphaChannel>

  <FI>Display<FN>

  <A TImageEnView.Center>
  <A TImageEnView.OffsetX>
  <A TImageEnView.OffsetY>
  <A TImageEnView.ViewX>
  <A TImageEnView.ViewY>
  <A TImageEnView.AutoShrink>
  <A TImageEnView.AutoStretch>
  <A TImageEnView.ExtentX>
  <A TImageEnView.ExtentY>
  <A TImageEnView.IdealComponentHeight>
  <A TImageEnView.IdealComponentWidth>
  <A TImageEnView.OffScreenPaint>
  <A TImageEnView.ZoomFilter>
  <A TImageEnView.Zoom>
  <A TImageEnView.ZoomX>
  <A TImageEnView.ZoomY>

  <FI>Others<FN>

  <A TImageEnView.BackBuffer>
  <A TImageEnView.DelayTimer>
  <A TImageEnView.DelayZoomFilter>
  <A TImageEnView.DelayZoomTime>
  <A TImageEnView.DisplayGrid>
  <A TImageEnView.DoubleBuffer>
  <A TImageEnView.DrawVersion>
  <A TImageEnView.HighlightedPixel>
  <A TImageEnView.LockPaintCount>

  <FI>Background<FN>

  <A TImageEnView.BackgroundStyle>
  <A TImageEnView.Background>
  <A TImageEnView.GradientEndColor>
  <A TImageEnView.WallPaperStyle>
  <A TImageEnView.WallPaper>

  <FI>Cursor<FN>

  <A TImageEnView.AutoCursors>

  <FI>Bitmap<FN>

  <A TImageEnView.Bitmap>
  <A TIEView.DpiX>
  <A TIEView.DpiY>
  <A TImageEnView.IEBitmap>
  <A TImageEnView.IsEmpty>
  <A TImageEnView.LegacyBitmap>

  <FI>User actions<FN>

  <A TImageEnView.EnableShiftKey>
  <A TImageEnView.EnableInteractionHints>
  <A TImageEnView.ForceALTkey>
  <A TImageEnView.MagicWandMaxFilter>
  <A TImageEnView.MagicWandMode>
  <A TImageEnView.MagicWandTolerance>
  <A TImageEnView.MouseInteract>
  <A TImageEnView.MouseScrollRate>
  <A TImageEnView.MouseWheelParams>
  <A TImageEnView.ZoomSelectionAspectRatio>

  <FI>Selections<FN>

  <A TImageEnView.DelayDisplaySelection>
  <A TImageEnView.PolySelCount>
  <A TImageEnView.PolySelPoints>
  <A TImageEnView.PolySel>
  <A TImageEnView.SavedSelectionsCount>
  <A TImageEnView.SelColor1>
  <A TImageEnView.SelColor2>
  <A TImageEnView.Selected>
  <A TImageEnView.SelectionAbsHeight>
  <A TImageEnView.SelectionAbsWidth>
  <A TImageEnView.SelectionAspectRatio>
  <A TImageEnView.SelectionBase>
  <A TImageEnView.SelectionIntensity>
  <A TImageEnView.SelectionMaskDepth>
  <A TImageEnView.SelectionMask>
  <A TImageEnView.SelectionOptions>
  <A TImageEnView.SelX1>
  <A TImageEnView.SelX2>
  <A TImageEnView.SelY1>
  <A TImageEnView.SelY2>
  <A TImageEnView.VisibleSelection>

  <FI>Transitions<FN>

  <A TImageEnView.TransitionEndRect>
  <A TImageEnView.TransitionRectMaintainAspectRatio>
  <A TImageEnView.TransitionRunning>
  <A TImageEnView.TransitionStartRect>
  <A TImageEnView.TransitionTiming>

  <FI>Layers<FN>

  <A TImageEnView.CurrentLayer>
  <A TImageEnView.LayersCount>
  <A TImageEnView.LayersCurrent>
  <A TImageEnView.LayersDrawBox>
  <A TImageEnView.LayersFixBorders>
  <A TImageEnView.LayersFixRotations>
  <A TImageEnView.LayersSync>
  <A TImageEnView.Layers>
  <A TImageEnView.MaxLayerHeight>
  <A TImageEnView.MaxLayerWidth>

  <FI>Scroll bars<FN>

  <A TImageEnView.FlatScrollBars>
  <A TImageEnView.HScrollBarParams>
  <A TImageEnView.ScrollBarsAlwaysVisible>
  <A TImageEnView.ScrollBars>
  <A TImageEnView.VScrollBarParams>

  <FI>Input/Output<FN>

  <A TImageEnView.IO>

  <FI>Image processing<FN>

  <A TImageEnView.Proc>



<FM>Methods<FN>

  <FI>Transition<FN>

  <A TImageEnView.AbortTransition>
  <A TImageEnView.PrepareTransition>
  <A TImageEnView.RunTransition>

  <FI>Selections<FN>

  <A TImageEnView.AddSelBreak>
  <A TImageEnView.AddSelPoint>
  <A TImageEnView.AssignSelTo>
  <A TImageEnView.CopySelectionToBitmap>
  <A TImageEnView.CopySelectionToIEBitmap>
  <A TImageEnView.DeSelect>
  <A TImageEnView.DiscardSavedSelection>
  <A TImageEnView.EndSelect>
  <A TImageEnView.InvertSelection>
  <A TImageEnView.IsPointInsideSelection>
  <A TImageEnView.LoadSelectionFromFile>
  <A TImageEnView.LoadSelectionFromStream>
  <A TImageEnView.MakeSelectionFeather>
  <A TImageEnView.MergeSelectionFromFile>
  <A TImageEnView.MergeSelectionFromStream>
  <A TImageEnView.MoveSelection>
  <A TImageEnView.RestoreSelection>
  <A TImageEnView.SaveSelection>
  <A TImageEnView.SaveSelectionToFile>
  <A TImageEnView.SaveSelectionToStream>
  <A TImageEnView.SelectCustom>
  <A TImageEnView.SelectEllipse>
  <A TImageEnView.SelectMagicWand>
  <A TImageEnView.SelectRoundRect>
  <A TImageEnView.Select>
  <A TImageEnView.SetSelectionGripStyle>

  <FI>Animated polygons<FN>

  <A TImageEnView.AnimPolygonAddPt>
  <A TImageEnView.AnimPolygonClear>
  <A TImageEnView.AnimPolygonDel>
  <A TImageEnView.AnimPolygonNew>

  <FI>Bitmap<FN>

  <A TImageEnView.Blank>
  <A TImageEnView.ChangeResolution>
  <A TImageEnView.Clear>
  <A TImageEnView.CopyFromPolygon>
  <A TImageEnView.CopyToPolygon>
  <A TImageEnView.DrawTo>
  <A TImageEnView.ImageChange>
  <A TIEView.SetDPI>
  <A TImageEnView.SetExternalBitmap>
  <A TImageEnView.SetNavigator>
  <A TImageEnView.SetSelectedPixelsColor>

  <FI>Bitmap Alpha Channel<FN>

  <A TImageEnView.CopyToBitmapWithAlpha>
  <A TImageEnView.RemoveAlphaChannel>
  <A TImageEnView.SetAlphaRangePixelsColor>
  <A TImageEnView.SetSelectedAreaAlpha>

  <FI>Display<FN>

  <A TImageEnView.CenterImage>
  <A TImageEnView.DisplayImageRect>
  <A TImageEnView.FitToHeight>
  <A TImageEnView.Fit>
  <A TImageEnView.FitToWidth>
  <A TImageEnView.GetIdealZoom>
  <A TImageEnView.GetRenderRectangles>
  <A TImageEnView.LockPaint>
  <A TImageEnView.LockUpdate>
  <A TImageEnView.PaintRect>
  <A TImageEnView.SetChessboardStyle>
  <A TImageEnView.SetViewXY>
  <A TImageEnView.Stretch>
  <A TImageEnView.UnLockPaint>
  <A TImageEnView.UnLockUpdate>
  <A TImageEnView.UpdateNoPaint>
  <A TImageEnView.UpdateRect>
  <A TImageEnView.Update>
  <A TImageEnView.XBmp2Scr>
  <A TImageEnView.XScr2Bmp>
  <A TImageEnView.YBmp2Scr>
  <A TImageEnView.YScr2Bmp>
  <A TImageEnView.ZoomAt>
  <A TImageEnView.ZoomSelection>

  <FI>Layers<FN>

  <A TImageEnView.FindLayerAt>
  <A TImageEnView.LayersAdd>
  <A TImageEnView.LayersClear>
  <A TImageEnView.LayersCreateFromSelection>
  <A TImageEnView.LayersCreateFromClipboard>
  <A TImageEnView.LayersDrawTo>
  <A TImageEnView.LayersFixSizes>
  <A TImageEnView.LayersInsert>
  <A TImageEnView.LayersLoadFromFile>
  <A TImageEnView.LayersLoadFromStream>
  <A TImageEnView.LayersMergeAll>
  <A TImageEnView.LayersMerge>
  <A TImageEnView.LayersMergeTo>
  <A TImageEnView.LayersMove>
  <A TImageEnView.LayersRemove>
  <A TImageEnView.LayersRotationFilter>
  <A TImageEnView.LayersSaveToFile>
  <A TImageEnView.LayersSaveToStream>
  <A TImageEnView.LayersAutoUndo>
  <A TImageEnView.SoftCrop>
  <A TImageEnView.SoftCropValue>

  <FI>Others<FN>

  <A TIEView.GetCanvas>
  <A TImageEnView.GetGripAt>
  <A TImageEnView.MoveContentTo>



<FM>Events<FN>

  <A TImageEnView.OnBeforeSelectionChange>
  <A TImageEnView.OnDrawBackBuffer>
  <A TImageEnView.OnDrawLayerBox>
  <A TImageEnView.OnDrawLayerGrip>
  <A TImageEnView.OnDShowEvent>
  <A TImageEnView.OnDShowNewFrame>
  <A TImageEnView.OnFinishWork>
  <A TImageEnView.OnImageChange>
  <A TImageEnView.OnLayerNotify>
  <A TIEView.OnMouseEnter>
  <A TImageEnView.OnMouseInResizingGrip>
  <A TImageEnView.OnMouseInSel>
  <A TIEView.OnMouseLeave>
  <A TImageEnView.OnPaint>
  <A TImageEnView.OnProgress>
  <A TImageEnView.OnSaveUndo>
  <A TImageEnView.OnSelectionChange>
  <A TImageEnView.OnSelectionChanging>
  <A TImageEnView.OnSpecialKey>
  <A TImageEnView.OnTransitionStep>
  <A TImageEnView.OnTransitionStop>
  <A TImageEnView.OnViewChange>
  <A TImageEnView.OnZoomIn>
  <A TImageEnView.OnZoomOut>
!!}
  TImageEnView = class(TIEView)
  private

    fLegacyBitmap: boolean; // false=use TIEBitmap, true=use TBitmap
    fUseDrawDibDraw: boolean; // for same behavior of old versions set it to True
    fLCursor: TCursor; // this is default cursor
    fCursor: TCursor; // this is current cursor
    fOnImageChange: TNotifyEvent;
    fOnViewChange: TViewChangeEvent;
    fCenter: boolean; // center image
    fZoomFilter: TResampleFilter;
    fSaveZoomFilter: TResampleFilter; // saved zoomfilter from mousedown to mouseup
    fDelayZoomFilter: boolean; // if true enables fStable, delay zoom filter
    fBackgroundStyle: TIEBackgroundStyle;
    fMagicWandMaxFilter: boolean; // if true apply a max filter to the selection
    fMagicWandTolerance: integer; // 0..255 tolerance
    fMagicWandMode: TIEMagicWandMode;
    fRXScroll, fRYScroll: double;
    fDisplayGrid: boolean;
    fHighlightedPixel:TPoint;
    fVScrollBarVisible, fHScrollBarVisible: boolean;
    fAniCounter: integer;
    fOnPaint: TNotifyEvent;
    fOnMouseInResizingGrip: TIEMouseInResizingGripEvent;
    fOnZoomIn, fOnZoomOut: TIEZoomEvent;
    fDelayDisplaySelection: boolean;
    fOnProgress: TIEProgressEvent;
    fOnFinishWork: TNotifyEvent;
    fFullUpdateRequest: boolean; // true when Paint requires to repaint full image without cliprect, Paint event set to False
    fBlockPaint: boolean;
    fRectMoving: boolean; // true if we are moving a rectangle
    fDrawVersion: boolean;
    fOnDrawBackBuffer: TNotifyEvent;
    fOnLayerNotify: TIELayerNotify;
    fSelectionAspectRatio: double; // -1 auto aspect , 0=absolute (fSelectionAbsWidth,fSelectionAbsHeight), >0 specify aspect
    fSelectionAbsWidth: integer;
    fSelectionAbsHeight: integer;
    fOnSpecialKey:TIESpecialKeyEvent;
    fNavigator:TImageEnView;
    fNavigatorInside:boolean;
    fUpdateInsideUpdate:boolean;	// true when Update call itself
    fInsideUpdate:boolean;	// true when it is inside Update
    fDelayTimer:integer;
    fLyrResizingClientAreaBox:TRect;  // ClientAreaBox when we begon resizing a layer
    fLyrResizingRotatedBox:array [0..3] of TPoint;  // box coordinates when we begon resizing a rotated layer
    fZoomSelectionAspectRatio:boolean;
    fMouseScrollRate:double;
    fOnDrawPolygon:TIEOnDrawPolygon;
    fLayersRotationFilter:TIEAntialiasMode;
    //
    fLutLastZoomX: double; // last zoom used by CreateCoordConvLUT
    fLutLastZoomY: double; // last zoom used by CreateCoordConvLUT
    fLutLastFRX: integer; // last frx used by CreateCoordConvLUT
    fLutLastFRY: integer; // last fry used by CreateCoordConvLUT
    fLutLastMaxLayerWidth: integer; // fMaxLayerWidth used by CreateCoordConvLUT
    fLutLastMaxLayerHeight: integer; // fMaxLayerHeight used by CreateCoordConvLUT
    // handscroll
    fHSVX1, fHSVY1: integer; // view in mouse down
    //
    fo1x, fo1y, fo2x, fo2y: integer;
    frx, fry: integer;
    //
    fBitmapWidth, fBitmapHeight: integer; // monitoring bitmap size
    // transition effects
    fTransition: TIETransitionEffects; // effect engine
    fTransitionEffect: TIETransitionType; // transition type
    fTransitionDuration: integer; // transition duration ms
    fMinBitmapSize:integer; // min bitmap size to make it displyed
    fTransitionRectMaintainAspectRatio:boolean;  // If true then when settings TransitionStartRect and TransitionEndRect it is automatically adjusted to correct aspect ratio (of the ImageEnView)
    //
{$IFDEF IEINCLUDEDIRECTSHOW}
    fOnDShowNewFrame: TNotifyEvent;
    fOnDShowEvent: TNotifyEvent;
{$ENDIF}
    fFlatScrollBars:boolean;
    fOnDrawBackground: TIEOnDrawBackground;
    fOnDrawCanvas: TIEOnDrawCanvas;
    fOldHandle:THandle;
    fOnDrawLayerBox:TIEDrawLayerBoxEvent;
    fOnDrawLayerGrip:TIEDrawLayerGrip;
    fVisibleSelection:boolean;
    fOffscreenPaint:boolean;
    fFirstTimeSetCursor:boolean;
    // Wall paper
    fWallPaper: TPicture;
    fWallPaperStyle: TIEWallPaperStyle;
    // setpixel replacement (due the Vista setpixel bug)
    fDrawPixelBitmap:TBitmap;
    fDrawPixelPtr:PRGB;
    // softcrop
    fSoftCrop:TIESoftCropMode;
    fSoftCropValue:integer;
    // hints
    fEnableInteractionHints:boolean;
    fInteractionHint:string;
    fInteractionHintX,fInteractionHintY:integer;
    fInteractionHintMinText:string;
    //
    procedure AniPolyFunc(Sender: TObject; UseLockPaint: boolean);
    procedure TimerEvent(Sender: TObject);
    procedure SetViewX(v: integer);
    procedure SetViewY(v: integer);
    procedure SetZoom(v: double);
    procedure SetZoomX(v: double);
    procedure SetZoomY(v: double);
    function GetSelX1: integer;
    function GetSelY1: integer;
    function GetSelX2: integer;
    function GetSelY2: integer;
    procedure SetCenter(v: boolean);
    function GetMouseInteract: TIEMouseInteract;
    procedure SetBackgroundStyle(v: TIEBackgroundStyle);
    procedure DoSelectionChange;
    procedure DoSelectionChanging;
    procedure DoBeforeSelectionChange;
    procedure DoMouseInResizingGrip(Grip: TIEGrip);
    procedure DoMouseInSel;
    procedure DoZoomIn(var NewZoom: double);
    procedure DoZoomOut(var NewZoom: double);
    procedure SetSelectionOptions(v: TIESelectionOptions);
    function GetResizingGrip(x, y: integer; Shift: TShiftState): TIEGrip;
    function GetMovingGrip(x, y: integer; Shift: TShiftState): integer;
    function SelectResizeEx(grip: TIEGrip; newx, newy: integer; aspectratio: boolean): TIEGrip;
    function SelectMoveEx(fMoving, ox, oy: integer; cutBorders:boolean): integer;
    function GetScrollBarsAlwaysVisible: boolean;
    procedure SetScrollBarsAlwaysVisible(v: boolean);
    procedure SetDisplayGrid(v: boolean);
    function GetTransitionRunning: boolean;
    function GetLayersCount: integer;
    function GetLayer(idx: integer): TIELayer;
    procedure PaintSelection(OutBitmap: TBitmap);
    procedure PaintGrid(OutBitmap: TBitmap);
    procedure SetCursor(Value: TCursor);
    procedure SetDelayTimer(Value: integer);
    function GetDelayTimer: integer;
    procedure SetGradientEndColor(Value: TColor);
    procedure DoDrawVersion;
    procedure SetDrawVersion(v: boolean);
    procedure SetSelectionMaskDepth(value: integer);
    procedure MouseResizeLayer(clientlx, cliently: integer; aspectratio:boolean);
{$IFDEF IEINCLUDEDIRECTSHOW}
    procedure DShowNewFrame(var Message: TMessage); message IEM_NEWFRAME;
    procedure DShowEvent(var Message: TMessage); message IEM_EVENT;
{$ENDIF}
    procedure MouseSelectCircle(x, y: integer; Shift: TShiftState);
    procedure MouseSelectRectangle(x, y: integer; Shift: TShiftState);
    procedure SetSelectionAspectRatio(value:double);
    function GetSavedSelectionsCount:integer;
    {$ifdef IEINCLUDEFLATSB}
    procedure SetFlatScrollBars(Value:boolean);
    {$endif}
    procedure SwapSelectionBase;
    procedure NavigatorSelectionChanging(Sender:TObject);
    procedure SetNavigatorRect;
    function GetImageEnVersion:string;
    procedure SetImageEnVersion(Value:string);
    {$ifdef IEDOTNETVERSION}
    procedure WMContextMenu(var Message: TWMContextMenu); message WM_CONTEXTMENU;
    {$endif}
    procedure SetTransitionStartRect(value:TRect);
    function GetTransitionStartRect:TRect;
    procedure SetTransitionEndRect(value:TRect);
    function GetTransitionEndRect:TRect;
    procedure SetOnTransitionStop(value:TNotifyEvent);
    function GetOnTransitionStop:TNotifyEvent;
    procedure SetOnTransitionStep(value:TIETransitionStepEvent);
    function GetOnTransitionStep:TIETransitionStepEvent;
    procedure SetTransitionTiming(value:TIETransitionTiming);
    function GetTransitionTiming:TIETransitionTiming;
    procedure SetWallPaper(Value: TPicture);
    procedure SetWallPaperStyle(Value: TIEWallPaperStyle);
    procedure SetTransitionRectMaintainAspectRatio(value:boolean);
    function AdjustRectToAspectRatio(ARect:TRect):TRect; // Returns an adjusted rect taking into account the aspect ratio of the image and display window
    procedure DoOnDrawPolygon(polygon:integer; point:integer; Canvas:TCanvas; x,y:integer);
    function GetBackBuffer:TBitmap;
    procedure SetOnSaveUndo(value:TIESaveUndoEvent);
    function GetOnSaveUndo:TIESaveUndoEvent;
    procedure ZoomSelectionEx(AspectRatio:boolean; FireDoZoomIn:boolean);
    procedure SetSoftCrop(v:TIESoftCropMode);
    procedure SetSoftCropValue(v:integer);
    procedure SetHighlightedPixel(v:TPoint);

  protected

    // view and selections stabilization
    fStableReset: integer; // initial fStable value (also available as public property)
    fStable2Reset: integer; // initial fStable2 value
    fStable: integer; // stability counter (0=stable) , decremented each AniPolyFunc
    // setted by SetZoom, SetView## (used for ZoomFilter)
    fStable2: integer; // secondary stablity counter (for selections)
    //
    fDBToDraw: boolean; // if true draw fTBitmap
    fTBitmap: TIEBitmap; // back buffer for DoubleBuffer
    fViewX, fViewY: integer;
    fZoomX: double; // zoom percentage (starting at 1)
    fZoomY: double; // zoom percentage (starting at 1)
    fZoomD100X: double; // fZoomX/100
    f100DZoomX: double; // 100/fZoomX
    fZoomD100Y: double; // fZoomX/100
    f100DZoomY: double; // 100/fZoomX
    fHDrawDib: HDRAWDIB; // direct draw on the screen
    fScrollBars: TScrollStyle;
    fLockPaint: integer; // 0=paint locked
    fOffX, fOffY: integer; // start of view (for centered images)
    fExtX, fExtY: integer; // view extent
    fZZWW, fZZHH: integer; // size of zoomed bitmap
    fBitmap: TBitmap;
    fBitmapInfoHeader256: TBitmapInfoHeader256; // used by DrawTo and PaintRect
    fDoubleBuffer: boolean; // always true (not used)
    fAutoFit: boolean;
    fUpdateInvalidate: boolean; // Se true (default) Update chiamerà Invalidate
    fAutoStretch: boolean;
    fAutoShrink: boolean;
    // selections
    fSel: boolean; // True when the selection is active
    fPolySelecting: boolean; // True on polygonal selection
    fLassoSelecting: boolean; // True on polygonal and lasso selection
    fRectSelecting: boolean; // True on rectangular selection
    fCircSelecting: boolean; // True on circular selection
    fRectResizing: TIEGrip; // if <>ieNone we are resizing rectangular selection
    fSelectMoving: integer; // if >-1 selection moving
    fMMoveX, fMMoveY: integer; // used on fPolySelecting
    fHSX0, fHSY0: integer; // mouse down coordinates (clipped at bakcground layer)
    fHSX1, fHSY1: integer; // mouse down coordinates (clipped at current layer)
    fPredX, fPredY: integer; // last call to MouseMove coordinates
    fPredLX, fPredLY: integer; // last call to MouseMove coordinates (real coordinates)
    fHPolySel: pointer; // pointer to the current animated polygon
    fSelectionBase: TIESelectionBase; // coordinate system for selection (bitmap or client area)
    fSavedSelectionBase: TIESelectionBase;
    fOnSelectionChanging: TNotifyEvent;
    fOnSelectionChange: TNotifyEvent;
    fOnBeforeSelectionChange: TNotifyEvent;
    fOnMouseInSel: TNotifyEvent;
    fSelectionOptions: TIESelectionOptions;
    fStartingPolyCount: integer; // polycount at MouseDown time
    fSelectionMask: TIEMask; // selection mask
    fSelectionMaskDepth: integer; // selection mask depth
    fSelectionIntensity: integer; // must be 1 if fSelectionMaskDepth is 1, otherwise a value from 0 to 255
    fSelColor1, fSelColor2: TColor; // selection colors

    fGripColor1, fGripColor2: TColor; // grip color
    fGripBrushStyle: TBrushStyle;
    fGripSize: integer;
    fGripShape:TIEGripShape;
    fExtendedGrips: boolean;

    fLyrGripColor1, fLyrGripColor2: TColor;
    fLyrGripBrushStyle: TBrushStyle;
    fLyrGripSize: integer;
    fLyrGripShape:TIEGripShape;

    fChessboardSize: integer;
    fChessboardBrushStyle: TBrushStyle;
    fForceALTkey: boolean;
    fMouseMoveScrolling: boolean; // true if we are inside MouseMoveScroll
    fSavedSelection: TList; // list of saved selections
    fEnableShiftKey: boolean; // Enable/disable shift key to add multi selections
    fGradientEndColor: TColor;
    fUpdateLocked: integer; // 0=unlocked
    // animated polygons
    fAnimPoly: TList; // animated polygons list (TIEAnimPoly)
    fAnimPolyTimer: TTimer; // animation timer
    //
    fMouseInteract: TIEMouseInteract;
    fScrollBarsAlwaysVisible: boolean; // true if the scrollbars are always visible
    fVScrollBarParams: TIEScrollBarParams;
    fHScrollBarParams: TIEScrollBarParams;
    fMouseWheelParams: TIEMouseWheelParams;
    flx1, fly1, flx2, fly2: integer;
    // alpha channel
    fEnableAlphaChannel: boolean;
    //
    fIEBitmap: TIEBitmap; // contains also the alpha channel
    // encapsulated components
    fImageEnIO: TImageEnIO;
    fImageEnProc: TImageEnProc;
    // layers
    fLayers: TList; // list of TIELayer objects
    fLayersCurrent: integer; // 0=first layer
    fMaxLayerWidth: integer;
    fMaxLayerHeight: integer;
    fLayersAutoUndo:boolean;
    //
    fLayersSync: boolean; // true=layers will have same size (default=false)
    fLayersDrawBox: boolean;
    fMovingLayer: integer; // -1/0 no layers moving, >0 moving a layer
    fRotatingLayer: integer;  // -1 no layers rotating, >=0 rotating layer
    fMovingRotationCenter: integer; // -1 no layers moving rotation center
    fLayerResizing: TIEGrip; // ieNone no layer grip
    fMovResRotLayerStarted:boolean;
    // conversion LUT
    fGXScr2Bmp, fGYScr2Bmp: pintegerarray; // LUT used to convert bitmap based coordinate to screen
    fXScr2Bmp, fYScr2Bmp: pintegerarray; // LUT used to convert bitmap based coordinate to screen
    fXScr2BmpSize, fYScr2BmpSize: integer; // size of fXScr2Bmp LUT
    fXBmp2Scr, fYBmp2Scr: pintegerarray; // LUT used to convert screen based coordinate to bitmap
    fGXBmp2Scr, fGYBmp2Scr: pintegerarray; // LUT used to convert screen based coordinate to bitmap
    fXBmp2ScrSize, fYBmp2ScrSize: integer; // size of fYScr2Bmp LUT
    //
    fAutoCursors:boolean; // If true (default) ImageEn handles mouse cursors
    //
    fOnSaveUndo:TIESaveUndoEvent;
    procedure CalcEdges(var EdgeX, EdgeY: integer; NoVertSB, NoHorizSB: boolean);
    procedure SetBackGround(cl: TColor); override;
    procedure PolyDraw1;
    procedure SetScrollBars(v: TScrollStyle); virtual;
    procedure GetMaxViewXY(var mx, my: integer);
    function GetOptimalZoom(ibitmapwidth, ibitmapheight, iwidth, iheight: integer; bolStretch, bolShrink: Boolean): double;
    // cross platform events
    procedure DoSize;
    procedure DoVertScroll(command: TIEScrollCommand; Position: integer);
    procedure DoHorizScroll(command: TIEScrollCommand; Position: integer);
    procedure DoMouseWheelScroll(Delta: integer; mouseX, mouseY: integer; CtrlPressed: boolean);
    procedure DoDoubleClickEx(Shift: boolean);
    // platform specific events
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TMessage); message WM_ERASEBKGND;
    procedure WMVScroll(var Message: TMessage); message WM_VSCROLL;
    procedure WMHScroll(var Message: TMessage); message WM_HSCROLL;
    procedure WMMouseWheel(var Message: TMessage); message WM_MOUSEWHEEL;
    function _CreatePalette: HPalette;
    function PaletteChanged(Foreground: Boolean): Boolean; {$ifndef FPC} override; {$endif}
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    procedure WMKillFocus(var Msg: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetFocus(var Msg: TWMSetFocus); message WM_SETFOCUS;
    procedure CMWantSpecialKey(var Msg: TCMWantSpecialKey); message CM_WANTSPECIALKEY;
    procedure WMNCPaint(var Message: TMessage); message WM_NCPAINT;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure IEMUpdate(var Message: TMessage); message IEM_UPDATE;
    procedure IEMProgress(var Message: TMessage); message IEM_PROGRESS;
    procedure IEMFinishWork(var Message: TMessage); message IEM_FINISHWORK;
    //
    procedure RestoreCursor;
    procedure ShowSelectionEx(d: boolean);
    procedure HideSelectionEx(dd: boolean);
    function GetIdealComponentWidth: integer;
    function GetIdealComponentHeight: integer;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    function GetPolySel(idx: integer): TPoint;
    function GetPolySelCount: integer;
    procedure SetMouseInteract(v: TIEMouseInteract); virtual;
    procedure AnimPolygonAddPtEx(ap: integer; x, y: integer);
    procedure AnimPolygonAddBreak(ap: integer);
    procedure AnimPolygonRemoveLast(ap: integer);
    procedure AnimPolygonRemoveLastPoint(ap: integer);
    procedure AnimPolygonMove(ap: integer; ox, oy: integer; max_x, max_y: integer; CutSel: boolean);
    procedure ViewChange(c: integer); virtual;
    procedure SetZoomFilter(v: TResampleFilter);
    procedure SubMouseMoveScroll(scx, scy: integer); virtual;
    function MouseMoveScroll: boolean;
    function GetFBitmap: TBitmap; override;
    function GetIEBitmap: TIEBitmap; override;
    procedure SetVisibleSelection(vv: boolean);
    function GetVisibleSelection: boolean;
    function GetPolySelArray: PPointArray;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure AddSelPointEx(x, y: integer);
    procedure AddSelBreakEx;
    procedure SelectEx(x1, y1, x2, y2: integer; Op: TIESelOp; aspectratio: boolean; adjRect:boolean);
    function GetClientWidth: integer; virtual;
    function GetClientHeight: integer; virtual;
    function HasParentWindow: boolean; virtual;
    procedure SetSelColor1(v: TColor);
    procedure SetSelColor2(v: TColor);
    function GetImageEnIO: TImageEnIO;
    function GetImageEnProc: TImageEnProc;
    procedure SetEnableAlphaChannel(v: boolean);
    procedure SetOnProgress(v: TIEProgressEvent); virtual;
    procedure SetOnFinishWork(v:TNotifyEvent); virtual;
    function GetOnProgress: TIEProgressEvent; virtual;
    function GetOnFinishWork:TNotifyEvent; virtual;
    function GetHasAlphaChannel: boolean; override;
    function GetAlphaChannel: TIEBitmap; override;
    function GetIsEmpty: boolean; virtual;
    function RequiresScrollBars: boolean;
    procedure SetLayersCurrent(Value: integer); virtual;
    procedure DoLayersSync;
    procedure SetLegacyBitmap(Value: boolean); virtual;
    procedure CreateCoordConvLUT; virtual;
    procedure CalcPaintCoords; virtual;
    procedure CalcPaintCoordsEx(var XSrc, YSrc, SrcWidth, SrcHeight: integer; var DstWidth, DstHeight: integer; tViewX, tViewY: integer);
    procedure UpdateLimits; virtual;
    function QuantizeViewX(vx: integer): integer;
    function QuantizeViewY(vy: integer): integer;
    procedure HideHorizScrollBar;
    procedure HideVertScrollBar;
    procedure SetSelectionIntensity(value: integer);
    procedure SetLayersSync(value: boolean);
    procedure SetLayersDrawBox(value: boolean);
    procedure DoLayerNotify(layer: integer; event: TIELayerEvent); virtual;
    procedure SetTempCursor(Value: TCursor);
    function GetCurrentLayer:TIELayer;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure GetFitValueXY(var x,y:double);
    function IsPointInsideLayer(x,y:integer; layer:integer):boolean;
    procedure SetInteractionHint(const Text:string; x,y:integer; const minText:string);

  public

    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    procedure Paint; override;
    procedure PaintToEx(ABitmap: TIEBitmap; ABitmapScanline: ppointerarray; UpdRect: PRect; drawBackground:boolean; drawGadgets:boolean); virtual;
    procedure GetRenderRectangles(var xDst, yDst, dxDst, dyDst: integer; var xSrc, ySrc, dxSrc, dySrc: integer);
    procedure SetZoomNoUpdate(v: double); virtual;
    procedure SetZoomXNoUpdate(v: double); virtual;
    procedure SetZoomYNoUpdate(v: double); virtual;
    function GetFitValue: double;
    procedure DrawBackgroundToCanvas(ACanvas:TCanvas);
    procedure MoveContentTo(Destination:TImageEnView);
    // Selection
    procedure Select(x1, y1, x2, y2: integer; Op: TIESelOp = iespReplace); virtual;
    procedure SelectMagicWand(x, y: integer; Op: TIESelOp = iespReplace);
    procedure SelectEllipse(CenterX, CenterY, Width, Height: integer; Op: TIESelOp = iespReplace);
    procedure SelectRoundRect(Left,Top,Right,Bottom,RoundWidth,RoundHeight: integer; Op: TIESelOp = iespReplace);
    procedure SelectCustom;
    procedure MoveSelection(OffsetX, OffsetY: integer);
    property SelectionAspectRatio: double read fSelectionAspectRatio write SetSelectionAspectRatio;

{!!
<FS>TImageEnView.SelectionAbsWidth

<FM>Declaration<FC>
property SelectionAbsWidth:integer;

<FM>Description<FN>
Specifies the fixed selection width, when SelectionAspectRatio is 0.

<FM>Example<FC>
// we want a fixed selection of 100 x 100 pixels
ImageEnView.SelectionAbsWidth:=100;
ImageEnView.SelectionAbsHeight:=100;
ImageEnView.SelectionAspectRatio:=0;
!!}
    property SelectionAbsWidth: integer read fSelectionAbsWidth write fSelectionAbsWidth;

{!!
<FS>TImageEnView.SelectionAbsHeight

<FM>Declaration<FC>
property SelectionAbsHeight:integer;

<FM>Description<FN>
Specifies the fixed selection height, when SelectionAspectRatio is 0.

<FM>Example<FC>

// we want a fixed selection of 100 x 100 pixels
ImageEnView.SelectionAbsWidth:=100;
ImageEnView.SelectionAbsHeight:=100;
ImageEnView.SelectionAspectRatio:=0;
!!}
    property SelectionAbsHeight: integer read fSelectionAbsHeight write fSelectionAbsHeight;

    procedure DeSelect;
    property SelX1: integer read GetSelx1;
    property SelY1: integer read GetSely1;
    property SelX2: integer read GetSelx2;
    property SelY2: integer read GetSely2;
    procedure AddSelPoint(x, y: integer); virtual;
    procedure AddSelBreak;
    property PolySel[idx: integer]: TPoint read GetPolySel;
    property PolySelCount: integer read GetPolySelCount;
    property PolySelPoints: PPointArray read GetPolySelArray;

{!!
<FS>TImageEnView.Selected

<FM>Declaration<FC>
property Selected: boolean;

<FM>Description<FN>
Selected is True if any portion of the image is selected. Selected is True after you have called the Select method. Selected is False after you have called DeSelect method.
If Selected is True, the properties SelX1, SelY1, SelX2, SelY2 are valid.

Read-only
!!}
    property Selected: boolean read fSel;

    property VisibleSelection: boolean read GetVisibleSelection write SetVisibleSelection;

{!!
<FS>TImageEnView.MagicWandMaxFilter

<FM>Declaration<FC>
property MagicWandMaxFilter:boolean;

<FM>Description<FN>
Set MagicWandMaxFilter to True (default is False) to apply a maximum filter to the magic wand selection (remove black hole).
!!}
    property MagicWandMaxFilter: boolean read fMagicWandMaxFilter write fMagicWandMaxFilter;

{!!
<FS>TImageEnView.MagicWandTolerance

<FM>Declaration<FC>
property MagicWandTolerance:integer;

<FM>Description<FN>
MagicWandTolerance specifies the color difference of original point and region point (default 15).
!!}
    property MagicWandTolerance: integer read fMagicWandTolerance write fMagicWandTolerance;

{!!
<FS>TImageEnView.MagicWandMode

<FM>Declaration<FC>
property MagicWandMode:<A TIEMagicWandMode>;

<FM>Description<FN>

MagicWandMode specifies how magic wand selection works. Default is iewInclusive.
!!}
    property MagicWandMode: TIEMagicWandMode read fMagicWandMode write fMagicWandMode;

    function IsPointInsideSelection(x, y: integer): boolean;

{!!
<FS>TImageEnView.SelectionMask

<FM>Declaration<FC>
property SelectionMask:<A TIEMask>;

<FM>Description<FN>
SelectionMask contains the current selection as a bit mask of 1 bit per pixel.

<FM>Example<FC>

// Excludes pixel 100,100 from selection
ImageEnView1.SelectionMask.SetPixel(100,100,0);

// To create a new selection using only SelectionMask (this select point 50,50 and 55,55)
ImageEnView1.AddSelPoint(0,0);
ImageEnView1.EndSelect;
ImageEnView1.SelectionMask.SetPixel(50,50,1);
ImageEnView1.SelectionMask.SetPixel(55,55,1);
!!}
    property SelectionMask: TIEMask read fSelectionMask;

    procedure InvertSelection;
    procedure SetSelectedAreaAlpha(Alpha: integer);
    procedure SetSelectionGripStyle(GripColor1:TColor=clBlack; GripColor2: TColor=clWhite; GripBrushStyle: TBrushStyle=bsSolid; GripSize: integer=5; ExtendedGrips: boolean=true; Shape:TIEGripShape=iegsCircle);
    procedure SetLayersGripStyle(GripColor1:TColor=clBlack; GripColor2: TColor=clWhite; GripBrushStyle: TBrushStyle=bsSolid; GripSize: integer=5; Shape:TIEGripShape=iegsCircle);
    procedure CopySelectionToBitmap(DestBitmap: TBitmap);
    procedure CopySelectionToIEBitmap(DestBitmap: TIEBitmap);
    procedure EndSelect; virtual;
    procedure SetSelectedPixelsColor(color: TRGB);
    procedure SetAlphaRangePixelsColor(alphaMin, alphaMax: integer; color: TRGB);
    procedure SaveSelectionToStream(Stream: TStream);
    function LoadSelectionFromStream(Stream: TStream; Options:TIERSOptions=iersMoveToAdapt): boolean;
    function MergeSelectionFromStream(Stream: TStream): boolean;
    procedure SaveSelectionToFile(const FileName:string);
    function LoadSelectionFromFile(const FileName:string; Options:TIERSOptions=iersMoveToAdapt): boolean;
    function MergeSelectionFromFile(const FileName:string):boolean;
    function RestoreSelection(Remove:boolean=true; Options:TIERSOptions=iersMoveToAdapt): boolean;
    procedure SaveSelection;
    function DiscardSavedSelection: boolean;
    property SavedSelectionsCount:integer read GetSavedSelectionsCount;

{!!
<FS>TImageEnView.EnableShiftKey

<FM>Declaration<FC>
property EnableShiftKey:boolean;

<FM>Description<FN>
EnableShiftKey enables or disables the shift key function (insert of multiple selections). The default is true.
!!}
    property EnableShiftKey: boolean read fEnableShiftKey write fEnableShiftKey;

{!!
<FS>TImageEnView.LayersRotationFilter

<FM>Declaration<FC>
property LayersRotationFilter:<A TIEAntialiasMode>;

<FM>Description<FN>
Specifies the rotation filter to use when layers rotation has finished and stabilizied.
!!}
    property LayersRotationFilter:TIEAntialiasMode read fLayersRotationFilter write fLayersRotationFilter;

    property SelectionMaskDepth: integer read fSelectionMaskDepth write SetSelectionMaskDepth;
    property SelectionIntensity: integer read fSelectionIntensity write SetSelectionIntensity;
    procedure MakeSelectionFeather(radius: double);
    // Animated polygons
    function AnimPolygonNew(VColor1, VColor2: TColor; VAnimated: boolean; VSizeable: boolean): integer;
    procedure AnimPolygonDel(ap: integer);
    procedure AnimPolygonAddPt(ap: integer; x, y: integer);
    procedure AnimPolygonClear(ap: integer);
    procedure AnimPolygonEnabled(ap:integer; Value:boolean);
    // Polygon process
    procedure CopyFromPolygon(Source: TBitmap; const Polygon: array of TPoint; PolygonLen: integer; const Position: TPoint);
    procedure CopyToPolygon(Dest: TBitmap; const Polygon: array of TPoint; PolygonLen: integer; const Position: TPoint);
    // Display
    procedure Update; override;
    procedure UpdateNoPaint;

{!!
<FS>TImageEnView.OffScreenPaint

<FM>Declaration<FC>
property OffScreenPaint:boolean;

<FM>Description<FN>
When Visible property is false (the component is not visible) the back buffer <A TImageEnView.BackBuffer> is not painted.
If you want the back buffer is correctly painted set OffScreenPaint=true.
!!}
    property OffScreenPaint:boolean read fOffscreenPaint write fOffscreenPaint;

    procedure Fit;
    procedure FitToWidth;
    procedure FitToHeight;
    procedure Stretch;
    function GetIdealZoom: double;
    property ViewX: integer read fViewX write SetViewX;
    property ViewY: integer read fViewY write SetViewY;
    procedure CenterImage;
    procedure SetViewXY(x, y: integer);
    property Zoom: double read fZoomX write SetZoom;
    property ZoomX:double read fZoomX write SetZoomX;
    property ZoomY:double read fZoomY write SetZoomY;
    procedure ZoomSelection(AspectRatio:boolean=true);
    procedure DisplayImageRect(ARect:TRect);
    procedure ZoomAt(x, y: integer; ZoomVal: double; Center:boolean=true);
    property ClientWidth read GetClientWidth;
    property ClientHeight read GetClientHeight;
    property IdealComponentWidth: integer read GetIdealComponentWidth;
    property IdealComponentHeight: integer read GetIdealComponentHeight;
    procedure LockPaint; override;
    function UnLockPaint: integer; override;
    function NPUnLockPaint: integer; override;

{!!
<FS>TImageEnView.LockPaintCount

<FM>Declaration<FC>
property LockPaintCount:integer;

<FM>Description<FN>
Returns lock painting state. 0=no lock, >0 locking.
LockPaint increases LockPaintCount, UnLockPaint decreases it.

Read only
!!}
    property LockPaintCount: integer read fLockPaint;

    procedure DrawTo(Canvas: TCanvas);

{!!
<FS>TImageEnView.OffsetX

<FM>Declaration<FC>
property OffsetX: integer;

<FM>Description<FN>
OffsetX gets the column where the image is shown.
If Center property is False, OffsetX will be 0.

Read-only
!!}
    property OffsetX: integer read fOffX;

{!!
<FS>TImageEnView.OffsetY

<FM>Declaration<FC>
property OffsetY: integer;

<FM>Description<FN>
OffsetY specifies the row where the image is shown.
If Center property is False, OffsetY will be 0.

Read-only
!!}
    property OffsetY: integer read fOffY;

{!!
<FS>TImageEnView.ExtentX

<FM>Declaration<FC>
property ExtentX: integer;

<FM>Description<FN>
ExtentX is the width of the area used to show current image.

Read-only

<FM>Example<FC>

// Copy the actual viewing of ImageEnView1 as current image of ImageEnView1
ImageEnView2.Bitmap.Width:=ImageEnView1.ExtentX;
ImageEnView2.Bitmap.Height:=ImageEnView1.ExtentY;
ImageEnView1.DrawTo(ImageEn2.Bitmap.Canvas);
!!}
    property ExtentX: integer read fExtX;

{!!
<FS>TImageEnView.ExtentY

<FM>Declaration<FC>
property ExtentY: integer;

<FM>Description<FN>
ExtentY is the height of the area used to show the current image.

Read-only

<FM>Example<FC>

// Copy the actual viewing of ImageEnView1 as current image of ImageEnView1
ImageEnView2.Bitmap.Width:=ImageEnView1.ExtentX;
ImageEnView2.Bitmap.Height:=ImageEnView1.ExtentY;
ImageEnView1.DrawTo(ImageEn2.Bitmap.Canvas);
!!}
    property ExtentY: integer read fExtY;

{!!
<FS>TImageEnView.ScrollBarsAlwaysVisible

<FM>Declaration<FC>
property ScrollBarsAlwaysVisible:boolean;

<FM>Description<FN>
When the ScrollBarsAlwaysVisible property is True, the scroll bars specified in <A TImageEnView.ScrollBars> property will be displayed, even if this is not necessary.

!!}
    property ScrollBarsAlwaysVisible: boolean read GetScrollBarsAlwaysVisible write SetScrollBarsAlwaysVisible default false;

{!!
<FS>TImageEnView.VScrollBarParams

<FM>Declaration<FC>
property VScrollBarParams:<A TIEScrollBarParams>;

<FM>Description<FN>
The VScrollBarParams property allows an application to customize the vertical scroll bar behavior like tracking (display refresh on mouse dragging), up/down buttons pixel scroll, pagedown/up pixel scroll.

<FM>Example:<FC>

// disable tracking
ImageEnView1.VScrollBarParams.Tracking:=False;
!!}
    property VScrollBarParams: TIEScrollBarParams read fVScrollBarParams;

{!!
<FS>TImageEnView.HScrollBarParams

<FM>Declaration<FC>
property HScrollBarParams:<A TIEScrollBarParams>;

<FM>Description<FN>
The HScrollBarParams property allows an application to customize the horizontal scroll bar behavior like tracking (display refresh on mouse dragging), left/right buttons pixel scroll, pageleft/pageright pixel scroll.

<FM>Example<FC>

// disable tracking
ImageEnView1.HScrollBarParams.Tracking:=False;
!!}
    property HScrollBarParams: TIEScrollBarParams read fHScrollBarParams;

    procedure UpdateRect(rclip: TRect);
    procedure PaintRect(const rc: TRect);
    procedure LockUpdate;
    procedure UnLockUpdate;
    property BackBuffer: TBitmap read GetBackBuffer;
    procedure SetNavigator(nav:TImageEnView);
    property MinBitmapSize:integer read fMinBitmapSize write fMinBitmapSize;
    procedure ChangeResolution(NewDPI:integer; ResampleFilter:TResampleFilter=rfNone);
    // layers
    property LayersCount: integer read GetLayersCount;
    property LayersCurrent: integer read fLayersCurrent write SetLayersCurrent;
    function LayersAdd: integer;
    procedure LayersInsert(Position: integer);
    procedure LayersRemove(idx: integer);
    procedure LayersClear;
    procedure LayersMove(CurIndex, NewIndex: integer);
    procedure LayersMerge(Layer0, Layer1: integer; RemoveUpperLayer:boolean=true);
    procedure LayersMergeTo(Layer0, Layer1: integer; Destination:TIEBitmap);
    procedure LayersDrawTo(Destination:TIEBitmap);
    procedure LayersMergeAll;
    property SoftCrop:TIESoftCropMode read fSoftCrop write SetSoftCrop;
    property SoftCropValue:integer read fSoftCropValue write SetSoftCropValue;

{!!
<FS>TImageEnView.Layers

<FM>Declaration<FC>
property Layers[idx:integer]:<A TIELayer>;

<FM>Description<FN>
The Layers property allows setting/getting some properties related to the specified layer.

<FM>Example<FC>

// set the transparency of the first layer to 50
ImageEnView.Layers[0].Transparency:=50;
ImageEnView.Update;

// hides the layer 1
ImageEnView.Layers[1].Visible:=False;
ImageEnView.Update;

// Creates a magnify layer
ImageEnView.LayersSync:=False;
idx := ImageEnView.LayersAdd;
with ImageEnView.Layers[idx] do begin
  Magnify.Enabled:=true;
  Magnify.Rate:=2;	// x2 magnification
  Width:=50;
  Height:=50;
end;
!!}
    property Layers[idx: integer]: TIELayer read GetLayer;

{!!
<FS>TImageEnView.LayersAutoUndo

<FM>Declaration<FC>
property LayersAutoUndo:boolean;

<FM>Description<FN>
Allows auto undo for layers modifications made by user actions like moving and resizing.
!!}
    property LayersAutoUndo:boolean read fLayersAutoUndo write fLayersAutoUndo;

    property LayersList:TList read fLayers;

{!!
<FS>TImageEnView.MaxLayerWidth

<FM>Declaration<FC>
property MaxLayerWidth:integer;

<FM>Description<FN>
MaxLayerWidth returns the maximum width among all layers.
!!}
    property MaxLayerWidth: integer read fMaxLayerWidth;

{!!
<FS>TImageEnView.MaxLayerHeight

<FM>Declaration<FC>
property MaxLayerHeight:integer;

<FM>Description<FN>
MaxLayerHeight returns the maximum height among all layers.
!!}
    property MaxLayerHeight: integer read fMaxLayerHeight;

    property LayersSync: boolean read fLayersSync write SetLayersSync;
    property LayersDrawBox: boolean read fLayersDrawBox write SetLayersDrawBox;
    function FindLayerAt(x, y: integer; SelectablesOnly:boolean=true): integer;
    property CurrentLayer: TIELayer read GetCurrentLayer;
    procedure LayersSaveToStream(Stream:TStream; CompressionFormat:TIOFileType=-1);
    procedure LayersSaveToFile(const FileName:string; CompressionFormat:TIOFileType=-1);
    function LayersLoadFromStream(Stream:TStream):boolean;
    function LayersLoadFromFile(const FileName:string):boolean;
    function LayersCreateFromSelection:integer;
    function LayersCreateFromClipboard:integer;
    procedure LayersFixSizes(layer:integer=-1);
    procedure LayersFixRotations(layer:integer=-1);
    procedure LayersFixBorders(layer:integer=-1);
    // Other
    procedure SetExternalBitmap(bmp:TIEBitmap);
    property GradientEndColor: TColor read fGradientEndColor write SetGradientEndColor;
    property MouseCapture;
    procedure Assign(Source: TPersistent); override;
    procedure AssignSelTo(Dest: TPersistent);
    procedure ImageChange; override;
    function YScr2Bmp(y: integer): integer;
    function XScr2Bmp(x: integer): integer;
    function YBmp2Scr(y: integer): integer;
    function XBmp2Scr(x: integer): integer;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    property SelColor1: TColor read fSelColor1 write SetSelColor1 default clBlack;
    property SelColor2: TColor read fSelColor2 write SetSelColor2 default clWhite;
    procedure Clear;
    procedure Blank;
    property DisplayGrid: boolean read fDisplayGrid write SetDisplayGrid;
    property HighlightedPixel:TPoint read fHighlightedPixel write SetHighlightedPixel;

{!!
<FS>TImageEnView.MouseWheelParams

<FM>Declaration<FC>
property MouseWheelParams:<A TIEMouseWheelParams>;

<FM>Description<FN>

The MouseWheelParams property allows application to customize the mouse wheel's behavior.

<FM>Example<FC>

// mouse wheel will scroll image of 15 % of component height
ImageEnView1.MouseWheelParams.Action:=iemwVScroll;
ImageEnView1.MouseWheelParams.Variation:=iemwPercentage;
ImageEnView1.MouseWheelParams.value:=15;

// mouse weel will scroll image of 1 pixel
ImageEnView1.MouseWheelParams.Action:=iemwVScroll;
ImageEnView1.MouseWheelParams.Variation:=iemwAbsolute;
ImageEnView1.MouseWheelParams.value:=1;
!!}
    property MouseWheelParams: TIEMouseWheelParams read fMouseWheelParams;

    procedure SetChessboardStyle(Size: integer=16; BrushStyle: TBrushStyle=bsSolid);

{!!
<FS>TImageEnView.ForceALTkey

<FM>Declaration<FC>
property ForceALTkey:boolean;

<FM>Description<FN>
Set ForceALTkey to True to emulate pressing the ALT key. It allows making and modifying selections or vectorial objects (for TImageEnVect component) always maintaining aspect ratio. Default is False.
!!}
    property ForceALTkey: boolean read fForceALTkey write fForceALTkey;

{!!
<FS>TImageEnView.DelayDisplaySelection

<FM>Declaration<FC>
property DelayDisplaySelection:boolean

<FM>Description<FN>
If DelayDisplaySelection is True, the selection is displayed with a delay. This allows you to quickly navigate the image (zoom and scroll) and only after you have finished the navigation the selection is displayed.
!!}
    property DelayDisplaySelection: boolean read fDelayDisplaySelection write fDelayDisplaySelection;

{!!
<FS>TImageEnView.DelayZoomTime

<FM>Declaration<FC>
property DelayZoomTime:integer;

<FM>Description<FN>
ImageEn has a timer that decrements a counter at each tick (you can set the tick delay using DelayTimer property). This timer controls the selection animation and the application of filters on scrolling (when DelayZoomFilter is true).
DelayZoomTime controls only the delay zoom filter application.
The default value for this property is 4 (apply the filter after 4 ticks since last scroll).
!!}
    property DelayZoomTime: integer read fStableReset write fStableReset;

    property DelayTimer: integer read GetDelayTimer write SetDelayTimer;
    procedure CopyToBitmapWithAlpha(Dest: TBitmap; DestX, DestY: integer);
    property UseDrawDibDraw: boolean read fUseDrawDibDraw write fUseDrawDibDraw;
    function GetGripAt(x, y: integer): TIEGrip;
    procedure RemoveAlphaChannel(Merge: boolean = false); override;
    property IsEmpty: boolean read GetIsEmpty;

{!!
<FS>TImageEnView.AutoCursors

<FM>Declaration<FC>
property AutoCursors:boolean;

<FM>Description<FN>

Set AutoCursors to False if you want handle mouse cursors by hand.
!!}
    property AutoCursors:boolean read fAutoCursors write fAutoCursors;

{!!
<FS>TImageEnView.ZoomSelectionAspectRatio

<FM>Declaration<FC>
property ZoomSelectionAspectRatio:boolean;

<FM>Description<FN>
This property is active when MouseInteract contains miSelectZoom. If true (default) the selected rectangle is adjusted to maintain aspect ratio. Otherwise (false) the image losses aspect ratio (ZoomX<>ZoomY and Zoom value is invalid) making it stretched inside the component.
!!}
    property ZoomSelectionAspectRatio:boolean read fZoomSelectionAspectRatio write fZoomSelectionAspectRatio;

{!!
<FS>TImageEnView.MouseScrollRate

<FM>Declaration<FC>
property MouseScrollRate:double;

<FM>Description<FN>
If MouseInteract contains miScroll then MouseScrollRate specifies the relation between mouse movement and image scroll. The default is 1, which means that one mouse point is one pixel (at 100%).

<FM>Example<FC>

// set double rate scroll
ImageEnView1.MouseScrollRate:=2;
ImageEnView1.MouseInteract:=[miScroll];
!!}
    property MouseScrollRate:double read fMouseScrollRate write fMouseScrollRate;

    // encapsulated components

{!!
<FS>TImageEnView.IO

<FM>Declaration<FC>
property IO:<A TImageEnIO>;

<FM>Description<FN>

The IO property encapsulates the TImageEnIO component inside TImageEnView. The TImageEnIO component is created the first time you use IO property.

This property makes obsolete the TImageEn component.

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('hello.jpeg');

ImageEnView1.IO.Acquire;
!!}
    property IO: TImageEnIO read GetImageEnIO;

{!!
<FS>TImageEnView.Proc

<FM>Declaration<FC>
property Proc:<A TImageEnProc>;

<FM>Description<FN>

The Proc property encapsulates the TImageEnProc component inside TImageEnView. The TImageEnProc component is created the first time you use Proc property.

With this property is obsolete use the TImageEn component.

<FM>Example<FC>
ImageEnView1.Proc.Negative;
!!}
    property Proc: TImageEnProc read GetImageEnProc;

    // transitions
    property TransitionRunning: boolean read GetTransitionRunning;
    procedure PrepareTransition;
    procedure RunTransition(Effect: TIETransitionType; duration: integer);
    procedure AbortTransition;
    procedure PrepareTransitionBitmap(OriginalBitmap,TargetBitmap:TBitmap; Effect:TIETransitionType);
    procedure CreateTransitionBitmapFrame(iStep:Integer; ToBitmap:TBitmap);
    property TransitionStartRect:TRect read GetTransitionStartRect write SetTransitionStartRect;
    property TransitionEndRect:TRect read GetTransitionEndRect write SetTransitionEndRect;
    property TransitionRectMaintainAspectRatio:boolean read fTransitionRectMaintainAspectRatio write SetTransitionRectMaintainAspectRatio;
    property TransitionTiming:TIETransitionTiming read GetTransitionTiming write SetTransitionTiming;
    // others undocumented
    procedure DrawLayerBox(ABitmap: TBitmap; idx: integer);
    procedure DrawLayerOuter(ABitmap:TBitmap; idx:integer);
    procedure DrawLayerGrips(ABitmap: TBitmap; idx: integer);
    procedure DrawLayerRotationCenter(ABitmap: TBitmap; idx: integer);
    procedure CalcLayerGripCoords(layeridx: integer; var coords: array of TRect);
    function FindLayerGrip(x, y: integer): TIEGrip;
    function FindLayerGripDist(x, y: integer; var Distance:double): TIEGrip;
  published

    property LegacyBitmap: boolean read fLegacyBitmap write SetLegacyBitmap default true;

{!!
<FS>TImageEnView.DoubleBuffer

<FM>Declaration<FC>
property DoubleBuffer:boolean;

<FM>Description<FN>
Not used. Always True.
!!}
    property DoubleBuffer: boolean read fDoubleBuffer write fDoubleBuffer default true; // not used

    property ZoomFilter: TResampleFilter read fZoomFilter write SetZoomFilter default rfNone;
    property ScrollBars: TScrollStyle read fScrollBars write SetScrollBars default ssBoth;

{!!
<FS>TImageEnView.OnViewChange

<FM>Declaration<FC>
property OnViewChange: <A TViewChangeEvent>;

<FM>Description<FN>
Notifies of a Zoom, ViewX or ViewY properties change.
!!}
    property OnViewChange: TViewChangeEvent read fOnViewChange write fOnViewChange;

{!!
<FS>TImageEnView.OnImageChange

<FM>Declaration<FC>
property OnImageChange: TNotifyEvent;

<FM>Description<FN>
The OnImageChange method notifies of an image change. Method ImageChange directly calls the event OnImageChange.
All image processing effects of <A TImageEnProc> call ImageChange (hence OnImageChange).
!!}
    property OnImageChange: TNotifyEvent read fOnImageChange write fOnImageChange;

    property SelectionOptions: TIESelectionOptions read fSelectionOptions write SetSelectionOptions default [iesoAnimated, iesoSizeable, iesoMoveable, iesoCanScroll];
    property Center: boolean read fCenter write SetCenter default true;
    property MouseInteract: TIEMouseInteract read GetMouseInteract write SetMouseInteract default [];

{!!
<FS>TImageEnView.AutoFit

<FM>Declaration<FC>
property AutoFit:boolean;

<FM>Description<FN>
If AutoFit is True and the image is updated (Update method) then Fit is called.
In this way you are not obliged to call fit each time you load a picture or each time the view is resized.
!!}
    property AutoFit: boolean read fAutoFit write fAutoFit default false;

{!!
<FS>TImageEnView.SelectionBase

<FM>Declaration<FC>
property SelectionBase:<A TIESelectionBase>;

<FM>Description<FN>
SelectionBase sets the selection coordinates base. If SelectionBase is iesbClientArea (default), all coordinates depend upon actual zoom and scrolling. Otherwise, if SelectionBase is iesbBitmap, all coordinates refer to bitmap pixels.

This property changes the coordinate specification for Select and AddSelPoint methods.

<FM>Example<FC>

// I want to select 0,0,100,100 rectangle in the bitmap
ImageEnView1.SelectionBase(iesbBitmap);
ImageEnView1.Select(0,0,100,100);

// I want to select 0,0,100,100 rectangle in the screen
ImageEnView1.SelectionBase(iesbClientArea);
ImageEnView1.Select(0,0,100,100);

note: When ImageEnView1.Zoom=100, ImageEnView1.ViewX=0 and ImageEnView1.ViewY=0, the preceeding examples are equivalent.
!!}
    property SelectionBase: TIESelectionBase read fSelectionBase write fSelectionBase default iesbClientArea;

    property BackgroundStyle: TIEBackgroundStyle read fBackgroundStyle write SetBackgroundStyle default iebsSolid;

{!!
<FS>TImageEnView.OnSelectionChange

<FM>Declaration<FC>
property OnSelectionChange:TNotifyEvent;

<FM>Description<FN>
The OnSelectionChange event is called whenever user finishes changinf the current selection. Other methods, as AddSelPoints or Select do not call the OnSelectionChange event.

<FM>Example<FC>

// Real time copy of user selected region to ImageEnView2 component
ImageEnView2.Clear;
ImageEnView2.CopyFromPolygon(ImageEnView2.Bitmap,ImageEnView2.GetPolySelArray^,ImageEnView2.PolySelCount,Point(0,0));

// An enhancement of above example: display current user selection as zoomed in ImageEnView2
ImageEnView2.Clear;
ImageEnView2.CopyFromPolygon(ImageEnView2.Bitmap,ImageEnView2.GetPolySelArray^,ImageEnView2.PolySelCount,Point(0,0));
ImageEnView2.Zoom:=200;
!!}
    property OnSelectionChange: TNotifyEvent read fOnSelectionChange write fOnSelectionChange;

{!!
<FS>TImageEnView.OnSelectionChanging

<FM>Declaration<FC>
property OnSelectionChanging:TNotifyEvent;

<FM>Description<FN>
OnSelectionChanging is called whenever a user changes the current selection. Other methods, such as AddSelPoints or Select do not call the OnSelectionChange event.
!!}
    property OnSelectionChanging: TNotifyEvent read fOnSelectionChanging write fOnSelectionChanging;

{!!
<FS>TImageEnView.OnMouseInSel

<FM>Declaration<FC>
property OnMouseInSel:TNotifyEvent;

<FM>Description<FN>
OnMouseInSel is called whenever the mouse is inside or on selection contours.
!!}
    property OnMouseInSel: TNotifyEvent read fOnMouseInSel write fOnMouseInSel;

{!!
<FS>TImageEnView.DelayZoomFilter

<FM>Declaration<FC>
property DelayZoomFilter:boolean

<FM>Description<FN>
If DelayZoomFilter is True, the filter is applied with delay. This allows you to quickly navigate the image (zoom and scroll) and only after you have finished the navigation is the filter (quality zoom) is applied.

Published
!!}
    property DelayZoomFilter: boolean read fDelayZoomFilter write fDelayZoomFilter default false;

{!!
<FS>TImageEnView.OnPaint

<FM>Declaration<FC>
property OnPaint: TNotifyEvent;

<FM>Description<FN>

OnPaint occurs when the component is redrawn. Use OnPaint to perform special processing when the component is redrawn.
!!}
    property OnPaint: TNotifyEvent read fOnPaint write fOnPaint;

    property EnableAlphaChannel: boolean read fEnableAlphaChannel write SetEnableAlphaChannel default true;

{!!
<FS>TImageEnView.OnMouseInResizingGrip

<FM>Declaration<FC>
property OnMouseInResizingGrip:<A TIEMouseInResizingGripEvent>;

<FM>Description<FN>
OnMouseInResizingGrip is called whenever the mouse moves and allows you to get the resizing grip where the mouse is positioned.
!!}
    property OnMouseInResizingGrip: TIEMouseInResizingGripEvent read fOnMouseInResizingGrip write fOnMouseInResizingGrip;

{!!
<FS>TImageEnView.OnZoomIn

<FM>Declaration<FC>
property OnZoomIn:<A TIEZoomEvent>;

<FM>Description<FN>
An OnZoomIn event occurs whenever the user zooms-in on the current image. Applications can customize zoom value changing the NewZoom parameter.

<FM>Example<FC>

// lock zoom-in to 50
Procedure Tform1.ImageEnView1ZoomIn(Sender:Tobject; var NewZoom: Double);
Begin
  NewZoom := 50;
End;
!!}
    property OnZoomIn: TIEZoomEvent read fOnZoomIn write fOnZoomIn;

{!!
<FS>TImageEnView.OnZoomOut

<FM>Declaration<FC>
property OnZoomOut:<A TIEZoomEvent>;

<FM>Description<FN>
An OnZoomOut event occurs whenever the user zooms-out on the current image. Applications can customize the zoom value changing the NewZoom parameter.

<FM>Example<FC>

// lock zoom-out to 200
Procedure Tform1.ImageEnView1ZoomOut(Sender:Tobject; var NewZoom: Double);
Begin
  NewZoom := 200;
End;
!!}
    property OnZoomOut: TIEZoomEvent read fOnZoomOut write fOnZoomOut;

{!!
<FS>TImageEnView.OnProgress

<FM>Declaration<FC>
property OnProgress: <A TIEProgressEvent>;

<FM>Description<FN>
The OnProgress event is called when image processing or input/output operations are executed.
!!}
    property OnProgress: TIEProgressEvent read GetOnProgress write SetOnProgress;

    property OnFinishWork: TNotifyEvent read GetOnFinishWork write SetOnFinishWork;

{!!
<FS>TImageEnView.AutoStretch

<FM>Declaration<FC>
property AutoStretch:boolean;

<FM>Description<FN>
When AutoStretch is True TImageEnView follows these rules:
- If an image is bigger than TImageEnView window it is displayed 100%;
- If an image is smaller than TImageEnView window it is stretched to fit
!!}
    property AutoStretch: boolean read fAutoStretch write fAutoStretch default false;

{!!
<FS>TImageEnView.AutoShrink

<FM>Declaration<FC>
property AutoShrink:boolean;

<FM>Description<FN>
When AutoShrink is True TImageEnView follows these rules:
- If an image is bigger than TImageEnView window it is Shrink to fit;
- If an image is smaller than TImageEnView window it is displayed 100%
!!}
    property AutoShrink: boolean read fAutoShrink write fAutoShrink default false;

{!!
<FS>TImageEnView.OnBeforeSelectionChange

<FM>Declaration<FC>
property OnBeforeSelectionChange:TNotifyEvent;

<FM>Description<FN>
OnBeforeSelectionChange occurs just before the selection changes.
!!}
    property OnBeforeSelectionChange: TNotifyEvent read fOnBeforeSelectionChange write fOnBeforeSelectionChange;

    property DrawVersion: boolean read fDrawVersion write SetDrawVersion default false;

{!!
<FS>TImageEnView.OnDrawBackBuffer

<FM>Declaration<FC>
property OnDrawBackBuffer:TNotifyEvent;

<FM>Description<FN>
OnDrawBackBuffer gets access to the back buffer where ImageEn will draw the image (and layers) just before the paint event. You can draw on BackBuffer handling the OnDrawBackBuffer event to paint custom graphics on it.
BackBuffer is updated whenever Update is called.

<FM>Example<FC>
Procedure Form1OnDrawBackBuffer(Sender:TObject);
Begin
  With ImageEnView1.BackBuffer.Canvas do begin
    Pen.Color:=clRed;
    MoveTo( 0,0 );
    LineTo( 100,100 );
  End;
End;
!!}
    property OnDrawBackBuffer: TNotifyEvent read fOnDrawBackBuffer write fOnDrawBackBuffer;

{!!
<FS>TImageEnView.OnLayerNotify

<FM>Declaration<FC>
property OnLayerNotify:<A TIELayerNotify>;

<FM>Description<FN>
The OnLayerNotify event occurs whenever a layer is selected, moved or resized. Only user actions can fire this event.
!!}
    property OnLayerNotify: TIELayerNotify read fOnLayerNotify write fOnLayerNotify;

{!!
<FS>TImageEnView.OnSpecialKey

<FM>Declaration<FC>
property OnSpecialKey:<A TIESpecialKeyEvent>;

TIESpecialKeyEvent = procedure(Sender: TObject; CharCode:word; Shift:TShiftState; var Handled:boolean) of object;

<FM>Description<FN>
OnSpecialKey is called whenever a special key is pressed. Special keys are arrows, "home", "end", etc.
If you have problems to receive OnSpecialKey events, it is suggested to put the TImageEnView (or inherited components) on a TPanel instead of TForm.
!!}
    property OnSpecialKey:TIESpecialKeyEvent read fOnSpecialKey write fOnSpecialKey;

    property ImageEnVersion:string read GetImageEnVersion write SetImageEnVersion;
    property OnDrawBackground: TIEOnDrawBackground read fOnDrawBackground write fOnDrawBackground;
    property OnDrawCanvas: TIEOnDrawCanvas read fOnDrawCanvas write fOnDrawCanvas;
    property WallPaper: TPicture read fWallPaper write SetWallPaper;
    property WallPaperStyle: TIEWallPaperStyle read fWallPaperStyle write SetWallPaperStyle default iewoNormal;
    property OnTransitionStop:TNotifyEvent read GetOnTransitionStop write SetOnTransitionStop;
    property OnTransitionStep:TIETransitionStepEvent read GetOnTransitionStep write SetOnTransitionStep;

{!!
<FS>TImageEnView.OnDrawLayerBox

<FM>Declaration<FC>
property OnDrawLayerBox:<A TIEDrawLayerBoxEvent>;

<FM>Description<FN>
This event occurs when a layer box must be painted. If you handle this event the default behavior is disabled.
Abitmap is the destination bitmap and layer is the layer index that we are drawing. Use Layers[].ClientAreaBox rectangle to get actual rectangle coordinates.

Look at layers demo for more details.

<FM>Example<FC>

procedure Tfmain.ImageEnView1DrawLayerBox(Sender: TObject;
  ABitmap: TBitmap; layer: Integer);
begin
  // a green line
  with ABitmap.Canvas do
  begin
    Pen.Style := psSolid;
    Pen.Width := 2;
    Pen.mode := pmCopy;
    Pen.Color := clGreen;
    Brush.Style := bsClear;
    with TIELayer(ImageEnView1.Layers[layer]).ClientAreaBox do
      Rectangle(Left-1, Top-1, Right+1, Bottom+1);
  end;
end;
!!}
    property OnDrawLayerBox:TIEDrawLayerBoxEvent read fOnDrawLayerBox write fOnDrawLayerBox;

{!!
<FS>TImageEnView.OnDrawLayerGrip

<FM>Declaration<FC>
property OnDrawLayerGrip:<A TIEDrawLayerGrip>;

<FM>Description<FN>
This event occurs when a layer grip must be painted. If you handle this event the default behavior is disabled.
Abitmap is the destination bitmap and layer is the layer index that we are drawing.
rect specifies the actual grip rectangle.

Look at layers demo for more details.

<FM>Example<FC>

procedure Tfmain.ImageEnView1DrawLayerGrip(Sender: TObject;
  ABitmap: TBitmap; layer, grip: Integer; rect: TRect);
begin
  with ABitmap.Canvas do
  begin
    Pen.Style := psSolid;
    Pen.Mode := pmCopy;
    Pen.Color := clGreen;
    Brush.Style := bsSolid;
    Brush.Color := $0000FF00;
    with rect do
      Ellipse(Left-1,Top-1,Right+1,Bottom+1);
  end;
end;
!!}
    property OnDrawLayerGrip:TIEDrawLayerGrip read fOnDrawLayerGrip write fOnDrawLayerGrip;

    property OnDrawPolygon:TIEOnDrawPolygon read fOnDrawPolygon write fOnDrawPolygon;
    property OnSaveUndo:TIESaveUndoEvent read GetOnSaveUndo write SetOnSaveUndo;
{$IFDEF IESUPPORTANCHORS}
    property Anchors;
{$ENDIF}
{$IFDEF IEMOUSEWHEELEVENTS}
    property OnMouseWheel;
    property OnMouseWheelDown;
    property OnMouseWheelUp;
{$ENDIF}
    property DragCursor;
{$IFDEF IEINCLUDEDIRECTSHOW}

{!!
<FS>TImageEnView.OnDShowNewFrame

<FM>Declaration<FC>
property OnDShowNewFrame: TNotifyEvent;

<FM>Description<FN>
OnDShowNewFrame occurs when a new frame is ready to be read. This event is active when you are using IO.DShowParams and EnableSampleGrabber is True.

<FM>Example<FC>

procedure Tfmain.ImageEnView1DShowNewFrame(Sender: TObject);
begin
   // copy current sample to ImageEnView bitmap
   ImageEnView1.IO.DShowParams.GetSample(ImageEnView1.IEBitmap);
   // refresh ImageEnView1
   ImageEnView1.Update;
end;
!!}
    property OnDShowNewFrame: TNotifyEvent read fOnDShowNewFrame write fOnDShowNewFrame;

{!!
<FS>TImageEnView.OnDShowEvent

<FM>Declaration<FC>
property OnDShowEvent: TNotifyEvent;

<FM>Description<FN>
OnDShowEvent occurs when one o more events are ready. You should call GetEventCode until it returns false (no more event available).

<FM>Example<FC>
procedure Tfmain.ImageEnView1DShowEvent;
var
  event:integer;
begin
  while ImageEnView1.IO.DShowParams.GetEventCode(event) do
    case event of
      IEEC_COMPLETE:
        begin
         ' end of stream!
         end;
    end;
end;
!!}
    property OnDShowEvent: TNotifyEvent read fOnDShowEvent write fOnDShowEvent;

{!!
<FS>TImageEnView.EnableInteractionHints

<FM>Declaration<FC>
property EnableInteractionHints:boolean;

<FM>Description<FN>
When true (default) enables mouse interaction hints (layers rotation angle, movement position...).
!!}
    property EnableInteractionHints:boolean read fEnableInteractionHints write fEnableInteractionHints;

{$ENDIF}
    property Cursor: TCursor read fCursor write SetCursor default 1785;
    {$ifdef IEINCLUDEFLATSB}
    property FlatScrollBars:boolean read fFlatScrollBars write SetFlatScrollBars default False;
    {$endif}
    property Align;
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

// TImageEnView
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


function IETryLYR(Stream:TStream):boolean;

function IEDrawGradient(R: TRect; DC: HDC; ColorStart, ColorStop: TColor; bVertical: boolean): Boolean;
function _IsRectangle(p: PPointArray; n: integer): boolean;

procedure IEDrawBackground(ComponentState: TComponentState; Canvas: TCanvas; Bitmap:TBitmap; fBackgroundStyle: TIEBackgroundStyle; fBackGround: TColor; DestX, DestY, Width, Height: integer; x1, y1, x2, y2: integer; fChessboardSize: integer; fChessboardBrushStyle: TBrushStyle; fGradientEndColor: TColor; WallPaper: TPicture; WallPaperStyle: TIEWallPaperStyle);

{!!
<FS>IELayersMerge

<FM>Declaration<FC>
procedure IELayersMerge(Layer0, Layer1, LayerMask:<A TIELayer>; Destination:<A TIEBitmap>; ZoomFilter:<A TResampleFilter>; Background:TColor);

<FM>Description<FN>
IELayersMerge merges two layers to the destination bitmap.
ZoomFilter specifies the filter to use when layers needs to be stretched.
Background is the color used to fill empty regions.
LayerMask is the upper layer's mask. This can be 'nil' if no layer mask exists.

<FM>Example<FC>
// this merges all layers of ImageEnView1 to tempIE (invisible), then saves to jpeg file
var
  tempIE:TImageEnView;
  tempBMP:TIEBitmap;
  i:integer;
begin
  tempIE:=TImageEnView.Create(nil);

  tempIE.Layers[0].Bitmap.Assign( ImageEnView1.Layers[0].Bitmap );

  tempBMP:=TIEBitmap.Create;

  for i:=1 to ImageEnView1.LayersCount-1 do
  begin
    IELayersMerge( tempIE.Layers[0], ImageEnView1.Layers[i], nil, tempBMP, rfNone,clBlack );
    tempIE.Layers[0].Bitmap.Assign( tempBMP );
  end;

  tempBMP.free;

  tempIE.BackGround:=clBlack;
  tempIE.RemoveAlphaChannel(true);

  with tempIE.IO do
  tempIE.IO.SaveToFile('output.jpg');

  tempIE.free;
end;

!!}
procedure IELayersMerge(Layer0, Layer1, LayerMask:TIELayer; Destination:TIEBitmap; ZoomFilter:TResampleFilter; Background:TColor; RelativePositions:boolean);

var

{!!
<FS>iegMINZOOMDISPLAYGRID

<FM>Declaration<FC>
iegMINZOOMDISPLAYGRID:integer;

<FM>Description<FN>
Specifies the minimum value of zoom to display grid (when <A TImageEnView.DisplayGrid> is True). Default value is 400.
!!}
  iegMINZOOMDISPLAYGRID:integer;

{!!
<FS>iegGRIDPEN

<FM>Declaration<FC>
iegGRIDPEN:TPen;

<FM>Description<FN>
Specifies the pen used to draw the grid.
!!}
  iegGRIDPEN:TPen;

implementation

uses NeurQuant, ievect, iezlib, iegdiplus
{$IFDEF IEINCLUDEDIRECTSHOW}
  , ieds
{$ENDIF}
  {$ifdef IEINCLUDEFLATSB}
  ,flatsb
  {$endif}
  ;

{$R IMRES.RES}

{$R-}

const
  GRADIENT_FILL_RECT_V = $00000001;
  GRADIENT_FILL_RECT_H = $00000000;

type
  Trivertex = packed record
    X, Y: DWORD;
    Red, Green, Blue, Alpha: Word;
  end;

  TGradientFill = function(DC: HDC; pVertex: Pointer; dwNumVertex: DWORD; pMesh: Pointer; dwNumMesh, dwMode: DWORD): LongBool; stdcall;

  TRGBRec = packed record
    case Integer of
      1: (RGBVal: LongInt);
      0: (Red, Green, Blue, None: Byte);
  end;

  TGradientRect = packed record
    UpperLeft: ULONG;
    LowerRight: ULONG;
  end;


var
  FhGradientFill: HMODULE;
  FGradientFill: TGradientFill;

function LoadGradLibrary: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('LoadGradLibrary'); {$endif}
  result := True;
  if FhGradientFill = 0 then
  begin
    FhGradientFill := LoadLibrary('MSIMG32.DLL');
    if FhGradientFill > 0 then
      FGradientFill := GetProcAddress(FhGradientFill, 'GradientFill')
    else
      result := false; // MSIMG32 could not be loaded
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif};
end;

function IEDrawGradient(R: TRect; DC: HDC; ColorStart, ColorStop: TColor; bVertical: boolean): Boolean;
var
  Gr: TGradientRect;
  Vert: array[0..1] of Trivertex;
  StartColor, StopColor: TRGBRec;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('IEDrawGradient'); {$endif}
  result := LoadGradLibrary;
  if not result then
    exit;
  StartColor.RGBVal := ColorToRGB(ColorStart);
  StopColor.RGBVal := ColorToRGB(ColorStop);

  Gr.UpperLeft := 0;
  Gr.LowerRight := 1;

  Vert[0].x := r.TopLeft.x;
  Vert[0].y := r.TopLeft.y;
  Vert[0].Red := StartColor.Red shl 8;
  Vert[0].Green := StartColor.Green shl 8;
  Vert[0].Blue := StartColor.Blue shl 8;
  Vert[0].Alpha := $0000;

  Vert[1].x := r.BottomRight.x;
  Vert[1].y := r.BottomRight.y;
  Vert[1].Red := StopColor.Red shl 8;
  Vert[1].Green := StopColor.Green shl 8;
  Vert[1].Blue := StopColor.Blue shl 8;
  Vert[1].Alpha := $0000;

  if bVertical then
    Result := FGradientFill(DC, @Vert, 2, @Gr, 1, GRADIENT_FILL_RECT_V)
  else
    Result := FGradientFill(DC, @Vert, 2, @Gr, 1, GRADIENT_FILL_RECT_H);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

type
  // animated polygons item
  // note: this item is replicated in ievect also
  TIEAnimPoly = record
    Poly: PPointArray; // coordinate (rif. al componente)
    PolyCount: integer; // vertex count
    Color1: TColor; // Color 1
    Color2: TColor; // Color 2
    //
    Animated: boolean; // Animated
    AniFt: integer; // frame counter
    C1: integer; // DDA counter
    Canvas: TCanvas; // destination canvas
    RX1, RY1, RX2, RY2: integer; // bounds of the polygon
    Enabled: boolean; // if True show the polygon
    Sizeable: boolean; // shows and use resizing grips
    DrawPixelPtr:PRGB; // to replace SetPixel
    DrawPixelBitmap:TBitmap;  // to replace SetPixel
  end;

  PIEAnimPoly = ^TIEAnimPoly;


// Initialize (load) corsors

procedure InitCursors;
const
  imcur = 1777;
  curnum = 37;
  curname: array[1..curnum] of string = (
    'ZOOMMENO', // 1778
    'ZOOMPIU', // 1779
    'CROCE', // 1780
    'GOMMA', // 1781
    'MANO', // 1782
    'PENNA', // 1783
    'CROCE1', // 1784
    'CROCE3', // 1785   // default
    'MOVE2', // 1786
    'MOVEY', // 1787
    'MOVE1', // 1788
    'MOVEX', // 1789
    'MOVE', // 1790
    'CROCE3+', // 1791
    'CROCE3-', // 1792
    'CROCE2', // 1793
    'CROCE2+', // 1794
    'CROCE2-', // 1795
    'CROCE2-', // 1796  (FREE ENTRY)
    '1795', // 1797
    '1796', // 1798
    '1797', // 1799
    '1798', // 1800
    '1799', // 1801
    '1800', // 1802
    '1801', // 1803
    '1802', // 1804
    '1803', // 1805
    '1803', // 1806 (FREE ENTRY)
    '1805', // 1807
    '1806', // 1808
    '1807', // 1809
    '1808', // 1810
    'ROT1', // 1811
    'ROT2', // 1812
    'ROT3', // 1813
    'ROT4'  // 1814
    );
var
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('InitCursors'); {$endif}
  for q := 1 to curnum do
    //Screen.Cursors[imcur+q]:=LoadCursor(GetModuleHandle(nil), pchar(curname[q]));
    Screen.Cursors[imcur + q] := LoadCursor(sysinit.hinstance, pchar(curname[q]));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////

constructor TImageEnView.Create(Owner: TComponent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Create'); {$endif}
  LockUpdate;
  fOffscreenPaint:=false;
  fGXScr2Bmp := nil;
  fGYScr2Bmp := nil;
  fGXBmp2Scr := nil;
  fGYBmp2Scr := nil;
  fXScr2BmpSize := 0;
  fYScr2BmpSize := 0;
  fXBmp2ScrSize := 0;
  fYBmp2ScrSize := 0;
  fXScr2Bmp := nil;
  fYScr2Bmp := nil;
  fXBmp2Scr := nil;
  fYBmp2Scr := nil;
  fBitmapWidth:=0;
  fBitmapHeight:=0;
  //
  fImageEnIO := nil;
  fImageEnProc := nil;
  fLegacyBitmap := true;
  fBitmap := TBitmap.create;
  fBitmap.pixelformat := pf24bit;
{$IFNDEF OCXVERSION}
  fBitmap.Width := Width;
  fBitmap.Height := Height;
{$ENDIF}
  inherited Create(Owner);
  IEGDIPLoadLibrary;
  fIEBitmap := TIEBitmap.Create;
  fIEBitmap.EncapsulateTBitmap(fBitmap, true);
  fMaxLayerWidth := fIEBitmap.Width;
  fMaxLayerHeight := fIEBitmap.Height;
  fUpdateInsideUpdate := false;
  fInsideUpdate := false;
  // layers
  fLayers := TList.Create;
  fLayers.Add(TIELayer.Create(self, fIEBitmap, true));
  with TIELayer(fLayers[0]) do
  begin
    VisibleBox := false;
    Locked := true;
  end;
  fLayersCurrent := 0;
  //
  fDrawPixelBitmap:=TBitmap.Create;
  fDrawPixelBitmap.Width:=1;
  fDrawPixelBitmap.Height:=1;
  fDrawPixelBitmap.PixelFormat:=pf24bit;
  fDrawPixelPtr:=PRGB(fDrawPixelBitmap.Scanline[0]);
  //
  fOldHandle:=0;
  fAutoCursors:= assigned(Owner);
  fTransition := TIETransitionEffects.Create(self);
  fTransitionEffect := iettNone;
  fTransitionDuration := 1000;
  fVScrollBarVisible := false;
  fHScrollBarVisible := false;
  fScrollBarsAlwaysVisible := false;
  fRXScroll := 1;
  fRYScroll := 1;
  fSelectionOptions := [iesoAnimated, iesoSizeable, iesoMoveable, iesoCanScroll];
  fOnViewChange := nil;
  fOnImageChange := nil;
  fOnDrawLayerBox := nil;
  fOnDrawLayerGrip := nil;
  fDelayZoomFilter := false;
  fZoomFilter := rfNone;
  fDBToDraw := true;
  fFullUpdateRequest := true;
  ZeroMemory(@fBitmapInfoHeader256, sizeof(TBitmapInfoHeader256));
  fMouseInteract := [];
  fLockPaint := 0;
  fHDrawDib := IEDrawDibOpen;
  InitCursors;
  fFirstTimeSetCursor:=true;
  fCursor:=1785;
  fScrollBars := ssBoth;
  fZoomX := 100;
  fZoomY := 100;
  fZoomD100X := fZoomX / 100;
  f100DZoomX := 100 / fZoomX;
  fZoomD100Y := fZoomY / 100;
  f100DZoomY := 100 / fZoomY;
  Height := 105;
  Width := 105;
  fOffX := 0;
  fOffY := 0;
  fExtX := 0;
  fExtY := 0;
  fCenter := true;
  fDoubleBuffer := true;
  SetDPI(gDefaultDPIX, gDefaultDPIY);
  fPolySelecting := False;
  fLassoSelecting := False;
  fRectSelecting := False;
  fCircSelecting := False;
  fRectResizing := ieNone;
  fSelectMoving := -1;
  fSel := false;
  fAnimPoly := TList.Create;
  fAnimPolyTimer := TTimer.Create(nil);
  fAnimPolyTimer.enabled := false;
  fDelayTimer:=-20; // maximum 20% of cpu for selections
  fAnimPolyTimer.Interval := 210;
  fAnimPolyTimer.OnTimer := TimerEvent;
  fHPolySel := PIEAnimPoly(AnimPolygonNew(clBlack, clWhite, True, True));
  if not (csDesigning in ComponentState) then
  begin
    fTBitmap := TIEBitmap.Create(10,10,ie24RGB); // back buffer
    fTBitmap.Location:=ieTBitmap;
    HideSelectionEx(false);
  end;
  fUpdateInvalidate := true;
  fSelectionBase := iesbClientArea;
  fSavedSelectionBase := fSelectionBase;
  fBackgroundStyle := iebsSolid;
  fOnSelectionChange := nil;
  fOnSelectionChanging := nil;
  fOnBeforeSelectionChange := nil;
  fMagicWandMaxFilter := false;
  fMagicWandMode := iewInclusive;
  fMagicWandTolerance := 15;
  fOnMouseInSel := nil;
  fOnMouseInResizingGrip := nil;
  fOnZoomIn := nil;
  fOnZoomOut := nil;
  fDisplayGrid := false;
  fVScrollBarParams := TIEScrollBarParams.Create;
  fHScrollBarParams := TIEScrollBarParams.Create;
  fMouseWheelParams := TIEMouseWheelParams.Create;
  fSelectionMaskDepth := 1;
  fSelectionIntensity := 1;
  fSelectionMask := TIEMask.Create;
  fSelectionMask.AllocateBits(fIEBitmap.Width, fIEBitmap.Height, fSelectionMaskDepth);
  fAniCounter := 0;
  SelColor1 := clBlack;
  SelColor2 := clWhite;

  fGripColor1 := clBlack;
  fGripColor2 := $00BAFFFF;
  fGripBrushStyle := bsSolid;
  fGripSize := 5;
  fGripShape := iegsCircle;
  fExtendedGrips := true;

  fLyrGripColor1 := clBlack;
  fLyrGripColor2 := $00BAFFFF;
  fLyrGripBrushStyle := bsSolid;
  fLyrGripSize := 5;
  fLyrGripShape := iegsCircle;

  fChessboardSize := 16;
  fChessboardBrushStyle := bsSolid;
  fOnPaint := nil;
  fOnProgress := nil;
  fOnFinishWork:=nil;
  fForceALTkey := false;
  fEnableAlphaChannel := true;
  fDelayDisplaySelection := true;
  fAutoStretch := false;
  fAutoShrink := false;
  fBlockPaint := false;
  fRectMoving := false;
  fMouseMoveScrolling := false;
  fSavedSelection := TList.Create;
  fEnableShiftKey := true;
  fStableReset := 4;
  fStable2Reset := 2;
  fLutLastZoomX := -1;
  fLutLastZoomY := -1;
  fLutLastFRX := -1;
  fLutLastFRY := -1;
  fLutLastMaxLayerWidth := -1;
  fLutLastMaxLayerHeight := -1;
  fGradientEndColor := clBlue;
  fUseDrawDibDraw := false; // for same behavior of old versions set it to True
  fDrawVersion := false;
  UnLockUpdate;
  fOnDrawBackBuffer := nil;
  fLayersSync := false;
  fLayersDrawBox := false;
  fMovingLayer := -1;
  fRotatingLayer := -1;
  fMovingRotationCenter := -1;
  fLayerResizing := ieNone;
  fMovResRotLayerStarted := false;
  fOnLayerNotify := nil;
{$IFDEF IEINCLUDEDIRECTSHOW}
  fOnDShowNewFrame := nil;
  fOnDShowEvent := nil;
{$ENDIF}
  fSelectionAspectRatio := -1;
  fSelectionAbsWidth := 100;
  fSelectionAbsHeight := 100;
  fOnSpecialKey:=nil;
  fFlatScrollBars:=false;
  fNavigator:=nil;
  fNavigatorInside:=false;
  fMinBitmapSize:=2;
  fOnDrawBackground:=nil;
  fOnDrawCanvas:=nil;
  fWallPaper := TPicture.Create;
  fWallPaperStyle := iewoNormal;
  fTransitionRectMaintainAspectRatio:=true;
  fZoomSelectionAspectRatio:=true;
  fMouseScrollRate:=1;
  fVisibleSelection:=true;
  fOnDrawPolygon:=nil;
  fOnSaveUndo:=nil;
  fSoftCrop:=iesfNone;
  fSoftCropValue:=60;
  fInteractionHint:='';
  fEnableInteractionHints:=true;
  fLayersRotationFilter:=ierFast;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

destructor TImageEnView.Destroy;
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Destroy'); {$endif}
  DoLayersSync;
  FreeAndNil(fTransition);
  if assigned(fNavigator) then
    SetNavigator(nil);
  if assigned(fImageEnIO) then
    FreeAndNil(fImageEnIO);
  if assigned(fImageEnProc) then
    FreeAndNil(fImageEnProc);
  (* removed because this is destroyed by "free layers" loop
  if assigned(fBitmap) then
  begin
    fBitmap.free;
    fBitmap := nil;
  end;
  fIEBitmap.free;
  fIEBitmap := nil;
  *)
  if not (csDesigning in ComponentState) then
  begin
    // free double buffer
    FreeAndNil(fTBitmap);
  end;
  FreeAndNil(fAnimPolyTimer);
  while fAnimPoly.Count > 0 do
  begin
    freemem(PIEAnimPoly(fAnimPoly[0])^.Poly); // free vertex array
    freemem(PIEAnimPoly(fAnimPoly[0])); // free TIEAnimPoly structure
    fAnimPoly.Delete(0);
  end;
  FreeAndNil(fAnimPoly);
  IEDrawDibClose(fHDrawDib);
  FreeAndNil(fVScrollBarParams);
  FreeAndNil(fHScrollBarParams);
  FreeAndNil(fMouseWheelParams);
  FreeAndNil(fSelectionMask);
  // free layers
  for i := 0 to fLayers.Count - 1 do
    TIELayer(fLayers[i]).Free;
  FreeAndNil(fLayers);
  // deleted by previous loop
  fBitmap := nil;
  fIEBitmap := nil;
  //
  while fSavedSelection.Count > 0 do
  begin
    TObject(fSavedSelection[0]).Free;
    fSavedSelection.Delete(0);
  end;
  FreeAndNil(fSavedSelection);
  //
  if fGXScr2Bmp <> nil then
    freemem(fGXScr2Bmp);
  if fGYScr2Bmp <> nil then
    freemem(fGYScr2Bmp);
  if fGXBmp2Scr <> nil then
    freemem(fGXBmp2Scr);
  if fGYBmp2Scr <> nil then
    freemem(fGYBmp2Scr);
  fGXScr2Bmp := nil;
  fGYScr2Bmp := nil;
  fGXBmp2Scr := nil;
  fGYBmp2Scr := nil;
  fXScr2BmpSize := 0;
  fYScr2BmpSize := 0;
  fXBmp2ScrSize := 0;
  fYBmp2ScrSize := 0;
  FreeAndNil(fWallPaper);
  fDrawPixelBitmap.Free;
  IEGDIPUnLoadLibrary;
  //
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Background

<FM>Declaration<FC>
property Background: TColor;

<FM>Description<FN>
This property sets the background color. The background color is the color shown in unoccupied area when the current image is less than the control's visual size. This color is used also in geometric processing (such as rotation) to fill blank areas.


<FM>Example<FC>

// Rotate of 30 degrees and fill blank spaces with clBlack color
ImageEnView1.Background:=clBlack;
ImageEnView1.Proc.Rotate(30,False);
!!}
procedure TImageEnView.SetBackGround(cl: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetBackGround'); {$endif}
  inherited SetBackGround(cl);
  if csDesigning in ComponentState then
    Clear;
  Update;
  ImageChange;
  if (ComponentState = [csDesigning]) then  // 3.0.0
    Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoSize;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoSize'); {$endif}
  if fTransition.Running then
    fTransition.stop;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ScrollBars

<FM>Declaration<FC>
property ScrollBars: TScrollType;

<FM>Description<FN>
ScrollBars determines whether the TImageEnView control displays any scroll bars.
If the component does not need scrollbars, they aren't shown.

Value
ssNone: The control has no scroll bars.
ssHorizontal: The control has a single scroll bar on the bottom edge when needed.
ssVertical: The control has a single scroll bar on the right edge when needed.
ssBoth: The control has a scroll bar on both the bottom and right edges when needed.
!!}
procedure TImageEnView.SetScrollBars(v: TScrollStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetScrollBars'); {$endif}
  fScrollBars := v;
  if (fScrollBars <> ssVertical) and (fScrollBars <> ssBoth) then
    IEShowScrollBar(handle, SB_VERT, false, fFlatScrollBars);
  if (fScrollBars <> ssHorizontal) and (fScrollBars <> ssBoth) then
    IEShowScrollBar(handle, SB_HORZ, false, fFlatScrollBars);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Zoom

<FM>Declaration<FC>
property Zoom: double;

<FM>Description<FN>
Use the Zoom property to zoom-in or zoom-out the image. No modifications are made to the image.
Zoom is expressed in 100*percentage of the zoom. Values less than 100 decrease the displayed size of the image and values greater than 100 increase the displayed size of the image.

<FM>Example<FC>

// 2 pixels of image is 1 pixel of displayed video
ImageEnView.Zoom:=50;

// 1 pixel of image is 2 pixels of view
ImageEnView.Zoom:=200;

// floating point zoom
ImageEnView.Zoom:=30.25;
!!}
procedure TImageEnView.SetZoomNoUpdate(v: double);
var
  zz: double;
  max_x, max_y: integer;
  x, y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomNoUpdate'); {$endif}
  zz := v / 100;
  x := GetClientWidth shr 1;
  x := trunc(round((x + fViewX - fOffX) * (f100DZoomX)) * zz - x);
  y := GetClientHeight shr 1;
  y := trunc(round((y + fViewY - fOffY) * (f100DZoomY)) * zz - y);
  GetMaxViewXY(max_x, max_y);
  if x > max_x then
    fViewX := max_x
  else if x < 0 then
    fViewX := 0
  else
    fViewX := x;
  if y > max_y then
    fViewY := max_y
  else if y < 0 then
    fViewY := 0
  else
    fViewY := y;
  //
  fZoomX := v;
  fZoomD100X := fZoomX / 100;
  f100DZoomX := 100 / fZoomX;
  fZoomY := v;
  fZoomD100Y := fZoomY / 100;
  f100DZoomY := 100 / fZoomY;
  //
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetZoom(v: double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoom'); {$endif}
  if (v > 0) and ((v <> fZoomX) or (v<>fZoomY)) then
  begin
    if (fDelayZoomFilter) and (fZoomFilter <> rfNone) and ((fZoomX <> 100) or (fZoomY<>100)) then
      fStable := fStableReset;
    fStable2 := fStable2Reset;
    LockPaint;
    SetZoomNoUpdate(v);
    Update; // initial update
    Update; // final update (without this scroll-bars aren't updated well)
    CalcPaintCoords;
    CreateCoordConvLUT; // recalculates coordinate conversion LUT
    NPUnLockPaint;
    Paint;
    ViewChange(1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetZoomXNoUpdate(v: double);
var
  zz: double;
  max_x, max_y: integer;
  x: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomXNoUpdate'); {$endif}
  zz := v / 100;
  x := GetClientWidth shr 1;
  x := trunc(round((x + fViewX - fOffX) * (f100DZoomX)) * zz - x);
  GetMaxViewXY(max_x, max_y);
  if x > max_x then
    fViewX := max_x
  else if x < 0 then
    fViewX := 0
  else
    fViewX := x;
  fZoomX := v;
  fZoomD100X := fZoomX / 100;
  f100DZoomX := 100 / fZoomX;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ZoomX

<FM>Declaration<FC>
property ZoomX:double;

<FM>Description<FN>
ZoomX specifies the horizontal Zoom. Using this property (and/or ZoomY) you loss the image aspect ratio and some functions, which require aspect ratio, may not properly work.
Setting ZoomX and ZoomY to the same value is equivalent to set Zoom.
!!}
procedure TImageEnView.SetZoomX(v: double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomX'); {$endif}
  if (v > 0) and (v <> fZoomX) then
  begin
    if (fDelayZoomFilter) and (fZoomFilter <> rfNone) and (fZoomX <> 100) then
      fStable := fStableReset;
    fStable2 := fStable2Reset;
    LockPaint;
    SetZoomXNoUpdate(v);
    Update; // initial update
    Update; // final update (without this scroll-bars aren't updated well)
    CalcPaintCoords;
    CreateCoordConvLUT; // recalculates coordinate conversion LUT
    NPUnLockPaint;
    Paint;
    ViewChange(1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetZoomYNoUpdate(v: double);
var
  zz: double;
  max_x, max_y: integer;
  y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomYNoUpdate'); {$endif}
  zz := v / 100;
  y := GetClientHeight shr 1;
  y := trunc(round((y + fViewY - fOffY) * (f100DZoomY)) * zz - y);
  GetMaxViewXY(max_x, max_y);
  if y > max_y then
    fViewY := max_y
  else if y < 0 then
    fViewY := 0
  else
    fViewY := y;
  fZoomY := v;
  fZoomD100Y := fZoomY / 100;
  f100DZoomY := 100 / fZoomY;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ZoomY

<FM>Declaration<FC>
property ZoomY:double;

<FM>Description<FN>
ZoomY specifies the vertical Zoom. Using this property (and/or ZoomX) you loss the image aspect ratio and some functions, which require aspect ratio, may not properly work.
Setting ZoomX and ZoomY to the same value is equivalent to set Zoom.
!!}
procedure TImageEnView.SetZoomY(v: double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomY'); {$endif}
  if (v > 0) and (v<>fZoomY) then
  begin
    if (fDelayZoomFilter) and (fZoomFilter <> rfNone) and (fZoomY<>100) then
      fStable := fStableReset;
    fStable2 := fStable2Reset;
    LockPaint;
    SetZoomYNoUpdate(v);
    Update; // initial update
    Update; // final update (without this scroll-bars aren't updated well)
    CalcPaintCoords;
    CreateCoordConvLUT; // recalculates coordinate conversion LUT
    NPUnLockPaint;
    Paint;
    ViewChange(1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;



// creates a palette for the current bitmap

type
  tpal = record
    palVersion: word;
    palNumEntries: word;
    PaletteEntry: array[0..255] of TPALETTEENTRY;
  end;
  plogpalette = ^tlogpalette;

function TImageEnView._CreatePalette: HPalette;
var
  pa: tpal;
  pp: array[0..255] of TRGB;
  q: integer;
  qt: TIEQuantizer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView._CreatePalette'); {$endif}
  qt := TIEQuantizer.Create(fIEBitmap, pp, 256);
  for q := 0 to 255 do
  begin
    pa.PaletteEntry[q].peRed := pp[q].r;
    pa.PaletteEntry[q].peGreen := pp[q].g;
    pa.PaletteEntry[q].peBlue := pp[q].b;
    pa.PaletteEntry[q].peFlags := 0;
  end;
  pa.palVersion := $300;
  pa.palNumEntries := 256;
  FreeAndNil(qt);
  result := CreatePalette(plogpalette(@pa)^);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// ideal horizontal component size
{!!
<FS>TImageEnView.IdealComponentWidth

<FM>Declaration<FC>
property IdealComponentWidth: integer;

<FM>Description<FN>
IdealComponentWidth is the width the image should have to fit exactly in TImageEnView component.

Read-only

<FM>Example<FC>

// Resize ImageEnView to fully contains Carlotta.jpg
ImageEnView.LoadFromFile('Carlotta.jpg');
ImageEnView1.Width := ImageEnView1.IdealComponentWidth;
ImageEnView1.Height := ImageEnView1.IdealComponentHeight;

!!}
function TImageEnView.GetIdealComponentWidth: integer;
var
  z1: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetIdealComponentWidth'); {$endif}
  z1 := trunc(fZoomX * (fMaxLayerWidth / 100)); // new width of the bitmap
  result := z1 + 1;
  if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
    inc(result, width - GetClientWidth);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// ideal vertical component size

{!!
<FS>TImageEnView.IdealComponentHeight

<FM>Declaration<FC>
property IdealComponentHeight: integer;

<FM>Description<FN>
IdealComponentHeight is the height the image should have to fit exactly in TImageEnView component.

Read-only

<FM>Example<FC>

// Resize ImageEnView to fully contains Carlotta.jpg
ImageEnView.LoadFromFile('Carlotta.jpg');
ImageEnView1.Width := ImageEnView1.IdealComponentWidth;
ImageEnView1.Height := ImageEnView1.IdealComponentHeight;

!!}
function TImageEnView.GetIdealComponentHeight: integer;
var
  z2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetIdealComponentHeight'); {$endif}
  z2 := trunc(fZoomY * (fMaxLayerHeight / 100)); // new height of the bitmap
  result := z2 + 1;
  if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
    inc(result, height - GetClientHeight);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoMouseWheelScroll(Delta: integer; mouseX, mouseY: integer; CtrlPressed: boolean);
var
  zDelta, nPos, xTmp: integer;
  dPos: double;
  dir: integer;
  mx,my:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoMouseWheelScroll'); {$endif}
  if (fMouseWheelParams.Action = iemwNone) or (fAutoFit) then
    exit;
  zDelta := Delta;
  if zDelta > 0 then
    dir := -1
  else
    dir := 1;
  if fMouseWheelParams.InvertDirection then
    dir := -1 * dir;
  case fMouseWheelParams.Action of
    iemwVScroll:
      begin
        GetMaxViewXY(mx,my);
        case fMouseWheelParams.Variation of
          iemwAbsolute: // bitmap based
            if CtrlPressed or ((mx>0) and (my=0)) then
            begin
              // horizontal
              nPos := fViewX + dir * fMouseWheelParams.Value * imax(trunc(fZoomD100X), 1);
              SetViewX(nPos);
            end
            else
            begin
              // vertical
              nPos := fViewY + dir * fMouseWheelParams.Value * imax(trunc(fZoomD100Y), 1);
              SetViewY(nPos);
            end;
          iemwPercentage: // client based
            if CtrlPressed or ((mx>0) and (my=0))  then
            begin
              // horizontal
              xTmp := imax(round(GetClientWidth * fMouseWheelParams.Value / 100), 1);
              nPos := fViewX + dir * xTmp;
              SetViewX(nPos);
            end
            else
            begin
              // vertical
              xTmp := imax(round(GetClientHeight * fMouseWheelParams.Value / 100), 1);
              nPos := fViewY + dir * xTmp;
              SetViewY(nPos);
            end;
        end;
      end;
    iemwZoom:
      begin
        dPos := fZoomX;
        case fMouseWheelParams.Variation of
          iemwAbsolute:
            dPos := fZoomX + dir * fMouseWheelParams.Value;
          iemwPercentage:
            dPos := fZoomX + imax(round(fZoomX * fMouseWheelParams.Value / 100), 1) * dir;
        end;
        if (dPos > fZoomX) then
          DoZoomIn(dPos);
        if (dPos < fZoomX) then
          DoZoomOut(dPos);
        if fMouseWheelParams.ZoomPosition = iemwCenter then
          SetZoom(dPos)
        else
          ZoomAt(mouseX, mouseY, dPos, false);
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Position is valid on when command is iescPosition

procedure TImageEnView.DoVertScroll(command: TIEScrollCommand; Position: integer);
var
  nPos: integer;
  mx, my: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoVertScroll'); {$endif}
  nPos := 0;
  case command of
    iescPosition:
      nPos := Position;
    iescBottom:
      begin
        GetMaxViewXY(mx, my);
        nPos := my;
      end;
    iescTop:
      nPos := 0;
    iescLineDown:
      if fVScrollBarParams.LineStep = -1 then
        nPos := fViewY + imax(trunc(fZoomD100Y), 1)
      else
        nPos := fViewY + fVScrollBarParams.LineStep * imax(trunc(fZoomD100Y), 1);
    iescLineUp:
      if fVScrollBarParams.LineStep = -1 then
        nPos := fViewY - imax(trunc(fZoomD100Y), 1)
      else
        nPos := fViewY - fVScrollBarParams.LineStep * imax(trunc(fZoomD100Y), 1);
    iescPageDown:
      if fVScrollBarParams.PageStep = -1 then
        nPos := fViewY + GetClientHeight
      else
        nPos := fViewY + fVScrollBarParams.PageStep * imax(trunc(fZoomD100Y), 1);
    iescPageUp:
      if fVScrollBarParams.PageStep = -1 then
        nPos := fViewY - GetClientHeight
      else
        nPos := fViewY - fVScrollBarParams.PageStep * imax(trunc(fZoomD100Y), 1);
  end;
  SetViewY(nPos);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Position is valid on when command is scPosition

procedure TImageEnView.DoHorizScroll(command: TIEScrollCommand; Position: integer);
var
  nPos: integer;
  mx, my: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoHorizScroll'); {$endif}
  nPos := 0;
  case command of
    iescPosition:
      nPos := Position;
    iescBottom:
      begin
        GetMaxViewXY(mx, my);
        nPos := mx;
      end;
    iescTop:
      nPos := 0;
    iescLineDown:
      if fHScrollBarParams.LineStep = -1 then
        nPos := fViewX + imax(trunc(fZoomD100X), 1)
      else
        nPos := fViewX + fHScrollBarParams.LineStep * imax(trunc(fZoomD100X), 1);
    iescLineUp:
      if fHScrollBarParams.LineStep = -1 then
        nPos := fViewX - imax(trunc(fZoomD100X), 1)
      else
        nPos := fViewX - fHScrollBarParams.LineStep * imax(trunc(fZoomD100X), 1);
    iescPageDown:
      if fHScrollBarParams.PageStep = -1 then
        nPos := fViewX + GetClientWidth
      else
        nPos := fViewX + fHScrollBarParams.PageStep * imax(trunc(fZoomD100X), 1);
    iescPageUp:
      if fHScrollBarParams.PageStep = -1 then
        nPos := fViewX - GetClientWidth
      else
        nPos := fViewX - fHScrollBarParams.PageStep * imax(trunc(fZoomD100X), 1);
  end;
  SetViewX(nPos);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMVScroll(var Message: TMessage);
var
  cmd: TIEScrollCommand;
  pos: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMVScroll'); {$endif}
  inherited;
  pos := 0;
  case Message.WParamLo of
    SB_THUMBTRACK, SB_THUMBPOSITION:
      begin
        if (not fVScrollBarParams.Tracking) and (Message.WParamLo = SB_THUMBTRACK) then
          exit;
        cmd := iescPosition;
        pos := round(Message.WParamHi * fRYScroll); // 3.0.0 ("round" to avoid scroll with a single click)
      end;
    SB_BOTTOM: cmd := iescBottom;
    SB_TOP: cmd := iescTop;
    SB_LINEDOWN: cmd := iescLineDown;
    SB_LINEUP: cmd := iescLineUp;
    SB_PAGEDOWN: cmd := iescPageDown;
    SB_PAGEUP: cmd := iescPageUp;
  else
    begin
      cmd := iescPosition;
      pos := fViewY;
    end;
  end;
  DoVertScroll(cmd, pos);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMHScroll(var Message: TMessage);
var
  cmd: TIEScrollCommand;
  pos: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMHScroll'); {$endif}
  inherited;
  pos := 0;
  case Message.WParamLo of
    SB_THUMBTRACK, SB_THUMBPOSITION:
      begin
        if (not fHScrollBarParams.Tracking) and (Message.WParamLo = SB_THUMBTRACK) then
          exit;
        cmd := iescPosition;
        pos := round(Message.WParamHi * fRXScroll);  // 3.0.0 ("round" to avoid scroll with a single click)
      end;
    SB_BOTTOM: cmd := iescBottom;
    SB_TOP: cmd := iescTop;
    SB_LINEDOWN: cmd := iescLineDown;
    SB_LINEUP: cmd := iescLineUp;
    SB_PAGEDOWN: cmd := iescPageDown;
    SB_PAGEUP: cmd := iescPageUp;
  else
    begin
      cmd := iescPosition;
      pos := fViewX;
    end;
  end;
  DoHorizScroll(cmd, pos);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMMouseWheel(var Message: TMessage);
var
   pt:TPoint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMMouseWheel'); {$endif}
  inherited;
  pt.x:=Message.LParamLo;
  pt.y:=Message.LParamHi;
  pt:=ScreenToClient(pt);
  DoMouseWheelScroll(smallint($FFFF and (Message.wParam shr 16)), pt.x, pt.y, GetKeyState(VK_CONTROL) < 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// double click - end of polygonal selection

procedure TImageEnView.WMLButtonDblClk(var Message: TWMLButtonDblClk);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMLButtonDblClk'); {$endif}
  inherited;
  DoDoubleClickEx((MK_SHIFT and Message.Keys) <> 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMKillFocus(var Msg: TWMKillFocus);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMKillFocus'); {$endif}
  inherited;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMSetFocus(var Msg: TWMSetFocus);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMSetFocus'); {$endif}
  inherited;
  invalidate;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// this could not fired if the component is on TForm. Putting TImageEnView on TPanel it works.
procedure TImageEnView.CMWantSpecialKey(var Msg: TCMWantSpecialKey);
var
  handled:boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CMWantSpecialKey'); {$endif}
  inherited;
  handled:=false;
  if assigned(fOnSpecialKey) then
    fOnSpecialKey(self,Msg.CharCode,KeyDataToShiftState(Msg.KeyData),handled);
  if not handled then
  begin
    // changed in 2.2.4
    {$IFDEF OCXVERSION}
    case msg.CharCode of
      VK_LEFT, VK_RIGHT, VK_UP, VK_DOWN, VK_PRIOR, VK_NEXT, VK_HOME, VK_END:
        begin
          msg.Result := 1;
          KeyUp(Msg.CharCode, KeyDataToShiftState(Msg.KeyData));
        end;
    end;
    {$ENDIF}
  end else
    msg.Result := 1;  // handled
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMNCPaint(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMNCPaint'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMPaint(var Message: TWMPaint);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMPaint'); {$endif}
  {$IFDEF IEINCLUDEDIRECTSHOW}
  if assigned(fImageEnIO) and assigned(fImageEnIO.DShowParams) and fImageEnIO.DShowParams.RenderVideo and (fImageEnIO.DShowParams.State<>gsStopped) then
    fImageEnIO.DShowParams.RepaintVideo(handle,Canvas.Handle);
  {$ENDIF}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.IEMUpdate(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.IEMUpdate'); {$endif}
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.IEMProgress(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.IEMProgress'); {$endif}
  if assigned(fOnProgress) then
    fOnProgress(self, Message.wParam);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.IEMFinishWork(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.IEMFinishWork'); {$endif}
  if assigned(fOnFinishWork) then
    fOnFinishWork(self);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMSize(var Message: TWMSize);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMSize'); {$endif}
  inherited;
  if not fInsideUpdate then
	  DoSize;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.WMEraseBkgnd(var Message: TMessage);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.WMEraseBkgnd'); {$endif}
  Message.Result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetViewXY

<FM>Declaration<FC>
procedure SetViewXY(x, y: integer);

<FM>Description<FN>
Sets <A TImageEnView.ViewX> and <A TImageEnView.ViewY> in one step.

!!}
procedure TImageEnView.SetViewXY(x, y: integer);
var
  max_x, max_y: integer;
  lviewx, lviewy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetViewXY'); {$endif}
  lviewx := fViewX;
  lviewy := fViewY;
  if (x = fViewX) and (y = fViewY) then
    exit;
  GetMaxViewXY(max_x, max_y);
  if x > max_x then
    fViewX := max_x
  else if x < 0 then
    fViewX := 0
  else
    fViewX := x;
  if y > max_y then
    fViewY := max_y
  else if y < 0 then
    fViewY := 0
  else
    fViewY := y;
  if (fViewX = lviewx) and (fViewY = lviewy) then
    exit;
  if fDelayZoomFilter and (fZoomFilter <> rfNone) and ((fZoomX <> 100) or (fZoomY<>100)) then
    fStable := fStableReset;
  fStable2 := fStable2Reset;
  fDBToDraw := true;
  fFullUpdateRequest := true;
  paint;
  //CalcPaintCoords;
  ViewChange(0);
  if fSel then
    AniPolyFunc(self, true);
  if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), true, fFlatScrollBars);
  if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ViewX

<FM>Declaration<FC>
property ViewX: integer;

<FM>Description<FN>
ViewX and <A TImageEnView.ViewY> are the first column and the first line to display.
Use ViewX/Y instead of scroll bars to scroll images bigger than TImageEnView component sizes.

<FM>Example<FC>

ImageEnView1.ViewX:=20; // view from column 20 of bitmap
ImageEnView1.Zoom:=200; // zoom image to 200%
ImageEnView1.ViewX:=20; // view from column 40 of bitmap
!!}
procedure TImageEnView.SetViewX(v: integer);
var
  max_x, max_y: integer;
  lviewx:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetViewX'); {$endif}
  if v = fViewX then
    exit;
  lviewx:=fViewX;
  GetMaxViewXY(max_x, max_y);
  if v > max_x then
    fViewX := max_x
  else if v < 0 then
    fViewX := 0
  else
    fViewX := v;
  if fViewX=lviewx then
    exit;
  if fDelayZoomFilter and (fZoomFilter <> rfNone) and ((fZoomX <> 100) or (fZoomY<>100)) then
    fStable := fStableReset;
  fStable2 := fStable2Reset;
  fDBToDraw := true;
  fFullUpdateRequest := true;
  paint;
  ViewChange(0);
  if fSel then
    AniPolyFunc(self, true);
  if (fScrollBars = ssHorizontal) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ViewY

<FM>Declaration<FC>
property ViewY: integer;

<FM>Description<FN>
<A TImageEnView.ViewX> and ViewY are the first column and the first line to display.
Use ViewX/Y instead of scroll bars to scroll images bigger than TImageEnView component sizes.

<FM>Example<FC>

ImageEnView1.ViewX:=20; // view from column 20 of bitmap
ImageEnView1.Zoom:=200; // zoom image to 200%
ImageEnView1.ViewX:=20; // view from column 40 of bitmap
!!}
procedure TImageEnView.SetViewY(v: integer);
var
  max_x, max_y: integer;
  lviewy:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetViewY'); {$endif}
  if v = fViewY then
    exit;
  lviewy:=fViewY;
  GetMaxViewXY(max_x, max_y);
  if v > max_y then
    fViewY := max_y
  else if v < 0 then
    fViewY := 0
  else
    fViewY := v;
  if fViewY=lviewy then
    exit;
  if fDelayZoomFilter and (fZoomFilter <> rfNone) and ((fZoomX <> 100) or (fZoomY<>100)) then
    fStable := fStableReset;
  fStable2 := fStable2Reset;
  fDBToDraw := true;
  fFullUpdateRequest := true;
  paint;
  ViewChange(0);
  if fSel then
    AniPolyFunc(self, true);
  if (fScrollBars = ssVertical) or (fScrollBars = ssBoth) then
    IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), true, fFlatScrollBars);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.GetMaxViewXY(var mx, my: integer);
var
  zx, zy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetMaxViewXY'); {$endif}

  if fZoomX<>fZoomY then
  begin
    zx := trunc(fMaxLayerWidth * fZoomD100X); // new bitmap width (zoom)
    zy := trunc(fMaxLayerHeight * fZoomD100Y); // new bitmap height (zoom)
    if zx > (GetClientWidth + 10) then
      // this avoids to cut last right/bottom pixel
      zx := trunc((fMaxLayerWidth+1) * fZoomD100X); // new bitmap width (zoom)
    if zy > (GetClientHeight + 10) then
      // this avoids to cut last right/bottom pixel
      zy := trunc((fMaxLayerHeight+1) * fZoomD100Y); // new bitmap height (zoom)
    mx := 0;
    my := 0;
    if (zx > 0) and (zy > 0) then
    begin
      mx := zx - GetClientWidth;
      my := zy - GetClientHeight;
      if (mx < 0) or (XScr2Bmp(mx) = 0) then
        mx := 0;
      if (my < 0) or (YScr2Bmp(my) = 0) then
        my := 0;
      if zx<=Width then
        mx:=0;
      if zy<=Height then
        my:=0;
    end;
  end
  else
  begin
    zx := trunc(fMaxLayerWidth * fZoomD100X);  // new bitmap width (zoom)
    zy := trunc(fMaxLayerHeight * fZoomD100Y); // new bitmap height (zoom)
    if ((zx > (GetClientWidth + 10)) or (zy > (GetClientHeight + 10))) and (ScrollBars<>ssNone) then
    begin
      // this avoid to cut last right/bottom pixel
      zx := trunc((fMaxLayerWidth+1) * fZoomD100X);  // new bitmap width (zoom)
      zy := trunc((fMaxLayerHeight+1) * fZoomD100Y); // new bitmap height (zoom)
    end;
    mx := 0;
    my := 0;
    if (zx > 0) and (zy > 0) then
    begin
      mx := zx - GetClientWidth;
      my := zy - GetClientHeight;
      if (mx < 0) or (XScr2Bmp(mx) = 0) then
        mx := 0;
      if (my < 0) or (YScr2Bmp(my) = 0) then
        my := 0;
      if (zx <= Width) and (zy <= Height) then
      begin
        mx := 0;
        my := 0;
      end;
    end;
  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.PaletteChanged(Foreground: Boolean): Boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaletteChanged'); {$endif}
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

// makes an event OnImageChange
{!!
<FS>TImageEnView.ImageChange

<FM>Declaration<FC>
procedure ImageChange; virtual;

<FM>Description<FN>
The ImageChange method generates an <A TImageEnView.OnImageChange> event.
!!}
procedure TImageEnView.ImageChange;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ImageChange'); {$endif}
  inherited;
  if assigned(fOnImageChange) then
    fOnImageChange(self);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Clear

<FM>Declaration<FC>
procedure Clear;

<FM>Description<FN>
Clear fills current image with <A TImageEnView.Background> color.

<FM>Example<FC>

ImageEn1.Background:=clWhite;
ImageEn1.Clear;

!!}
procedure TImageEnView.Clear;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Clear'); {$endif}
  fIEBitmap.Fill(BackGround);
  RemoveAlphaChannel(false);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Blank

<FM>Declaration<FC>
procedure Blank;

<FM>Description<FN>
Blank sets the image size to 1x1 (Width x Height).


<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('image.tif');  // load image
...
ImageEnView1.Blank;	 // free memory

!!}
procedure TImageEnView.Blank;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Blank'); {$endif}
  if fTransition.Running then
    fTransition.stop;
  fIEBitmap.Width := 1;
  fIEBitmap.Height := 1;
  Clear;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.IsEmpty

<FM>Declaration<FC>
property IsEmpty:boolean;

<FM>Description<FN>
IsEmpty returns True if the image is empty.

!!}
function TImageEnView.GetIsEmpty: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetIsEmpty'); {$endif}
  result := (fIEBitmap.Width < 2) and (fIEBitmap.Height < 2);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelX1

<FM>Declaration<FC>
property SelX1: integer;

<FM>Description<FN>
SelX1 is the top-left X (column) coordinate of the selected area.
The coordinate has same dimension of the Bitmap (independent from <A TImageenView.Zoom> and <A TImageenView.ViewX>, <A TImageenView.ViewY> values).
The selected area can be selected with <A TImageEnView.Select> method.

Read-only

!!}
function TImageEnView.GetSelX1: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetSelX1'); {$endif}
  if fPolySelecting or fRectSelecting or fCircSelecting or (fRectResizing <> ieNone) or fRectMoving then
    result := PIEAnimPoly(fHPolySel)^.rx1
  else
    result := fSelectionMask.X1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelY1

<FM>Declaration<FC>
property SelY1: integer;

<FM>Description<FN>
SelY1 is the top-left Y (row) coordinate of the selected area.
The coordinate has same dimension of the Bitmap (independent from <A TImageenView.Zoom> and <A TImageenView.ViewX>, <A TImageenView.ViewY> values).
The selected area can be selected with <A TImageEnView.Select> method.

Read-only

!!}
function TImageEnView.GetSelY1: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetSelY1'); {$endif}
  if fPolySelecting or fRectSelecting or fCircSelecting or (fRectResizing <> ieNone) or fRectMoving then
    result := PIEAnimPoly(fHPolySel)^.ry1
  else
    result := fSelectionMask.Y1;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelX2

<FM>Declaration<FC>
property SelX2: integer;

<FM>Description<FN>
SelX2 is bottom-right X (column) coordinate of the selected area.
The coordinate has same dimension of the Bitmap (independent from <A TImageenView.Zoom> and <A TImageenView.ViewX>, <A TImageenView.ViewY> values).
The selected area can be selected with <A TImageEnView.Select> method.

Read-only

!!}
function TImageEnView.GetSelX2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetSelX2'); {$endif}
  if fPolySelecting or fRectSelecting or fCircSelecting or (fRectResizing <> ieNone) or fRectMoving then
    result := PIEAnimPoly(fHPolySel)^.rx2 - 1
  else
    result := fSelectionMask.X2;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelY2

<FM>Declaration<FC>
property SelY2: integer;

<FM>Description<FN>
SelY2 is the bottom-right Y (row) coordinate of the selected area.
The coordinate has same dimension of the Bitmap (independent from <A TImageenView.Zoom> and <A TImageenView.ViewX>, <A TImageenView.ViewY> values).
The selected area can be selected with <A TImageEnView.Select> method.
Read-only

!!}
function TImageEnView.GetSelY2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetSelY2'); {$endif}
  if fPolySelecting or fRectSelecting or fCircSelecting or (fRectResizing <> ieNone) or fRectMoving then
    result := PIEAnimPoly(fHPolySel)^.ry2 - 1
  else
    result := fSelectionMask.Y2;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.XBmp2Scr

<FM>Declaration<FC>
function XBmp2Scr(x:integer):integer;

<FM>Description<FN>
<A TImageEnView.YBmp2Scr> or <A TImageEnView.XBmp2Scr> methods convert a bitmap coordinate to the window coordinate (applying Zoom and View status). x and y are bitmap coordinates.

Returns a window coordinate.
These methods are useful to select a bitmap region independently from the <A TImageEnView.Zoom>, <A TImageEnView.ViewX> and <A TImageEnView.ViewY> properties.
If you are using multiple layers please use instead TImageEnView.Layers[].<A TIELayer.ConvXBmp2Scr> method.

<FM>Example<FC>

// Select rect 10,10,100,100 of bitmap
ImageEnView1.Zoom(300);
x1:=XBmp2Scr(10);
y1:=YBmp2Scr(10);
x2:=XBmp2Scr(100);
y2:=YBmp2Scr(100);
ImageEnView1.Select( x1,y1,x2,y2);

// Select rect 10,10,100,100 of the window
ImageEnView1.Select(10,10,100,100)

!!}
function TImageEnView.XBmp2Scr(x: integer): integer;
var
  xx: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.XBmp2Scr'); {$endif}
  xx := x - fo1x;
  if (xx < 0) or (xx >= fXBmp2ScrSize) then
    // aproximated value
    result := round(fOffX + (x + round((-QuantizeViewX(fViewX)) * f100DZoomX)) * fZoomD100X)
  else
    result := fOffX + fXBmp2Scr[xx];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.YBmp2Scr

<FM>Declaration<FC>
function YBmp2Scr(y:integer):integer;

<FM>Description<FN>
<A TImageEnView.YBmp2Scr> or <A TImageEnView.XBmp2Scr> methods convert a bitmap coordinate to the window coordinate (applying Zoom and View status). x and y are bitmap coordinates.

Returns a window coordinate.
These methods are useful to select a bitmap region independently from the <A TImageEnView.Zoom>, <A TImageEnView.ViewX> and <A TImageEnView.ViewY> properties.
If you are using multiple layers please use instead TImageEnView.Layers[].<A TIELayer.ConvYBmp2Scr> method.

<FM>Example<FC>

// Select rect 10,10,100,100 of bitmap
ImageEnView1.Zoom(300);
x1:=XBmp2Scr(10);
y1:=YBmp2Scr(10);
x2:=XBmp2Scr(100);
y2:=YBmp2Scr(100);
ImageEnView1.Select( x1,y1,x2,y2);

// Select rect 10,10,100,100 of the window
ImageEnView1.Select(10,10,100,100)

!!}
function TImageEnView.YBmp2Scr(y: integer): integer;
var
  yy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.YBmp2Scr'); {$endif}
  yy := y - fo1y;
  if (yy < 0) or (yy >= fYBmp2ScrSize) then
  begin
    // aproximated value
    result := round(fOffY + (y + round((-QuantizeViewY(fViewY)) * f100DZoomY)) * fZoomD100Y);
  end
  else
    result := fOffY + fYBmp2Scr[yy];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.XScr2Bmp

<FM>Declaration<FC>
function XScr2Bmp(x: integer): integer;

<FM>Description<FN>
This method converts a window coordinate to the corresponding bitmap coordinate (applying <A TImageEnView.Zoom> and <A TImageEnView.ViewX>, <A TImageEnView.ViewY> status).
x is a window coordinate.
Returns a bitmap coordinate which can be negative or larger than bitmap size if the window coordinate is beyond the displayed image's boundaries.
If you are using multiple layers please use instead TImageEnView.Layers[].<A TIELayer.ConvXScr2Bmp> method.

<FM>Example<FC>

// X and Y are MOUSE coordinates
bx:=ImageEnView1.XScr2Bmp(X);
by:=ImageEnView1.YScr2Bmp(Y);
// now bx and by are Bitmap coordinates (referred to the ImageEnView1.Bitmap)
!!}
function TImageEnView.XScr2Bmp(x: integer): integer;
var
  xx: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.XScr2Bmp'); {$endif}
  xx := x - fOffX;
  if (xx < 0) or (xx >= fXScr2BmpSize) then
    // aproximated value
    result := trunc((X - fOffX) * f100DZoomX + fo1x)
  else
    result := fXScr2Bmp[xx];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.YScr2Bmp

<FM>Declaration<FC>
function YScr2Bmp(y: integer): integer;

<FM>Description<FN>
This method converts a window coordinate to the corresponding bitmap coordinate (applying <A TImageEnView.Zoom> and <A TImageEnView.ViewX>, <A TImageEnView.ViewY> status).
y is a window coordinate.
Returns a bitmap coordinate which can be negative or larger than bitmap size if the window coordinate is beyond the displayed image's boundaries.
If you are using multiple layers please use instead TImageEnView.Layers[].<A TIELayer.ConvYScr2Bmp> method.

<FM>Example<FC>

// X and Y are MOUSE coordinates
bx:=ImageEnView1.XScr2Bmp(X);
by:=ImageEnView1.YScr2Bmp(Y);
// now bx and by are Bitmap coordinates (referred to the ImageEnView1.Bitmap)

!!}
function TImageEnView.YScr2Bmp(y: integer): integer;
var
  yy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.YScr2Bmp'); {$endif}
  yy := y - fOffY;
  if (yy < 0) or (yy >= fYScr2BmpSize) then
    // aproximated value
    result := trunc((Y - fOffY) * f100DZoomY + fo1y)
  else
    result := fYScr2Bmp[yy];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.GetIdealZoom

<FM>Declaration<FC>
function TImageEnView.GetIdealZoom:double;

<FM>Description<FN>
GetIdealZoom returns the best zoom value to stretch the image in the component.

<FM>Example<FC>
// following code make the same result
ImageEnView.Zoom := ImageEnView.GetIdealZoom;
..or..
ImageEnView.Fit;

!!}
function TImageEnView.GetIdealZoom: double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetIdealZoom'); {$endif}
  //result:=GetOptimalZoom(IEBitmap.Width,IEBitmap.Height,Width,Height,true,true);
  Result := dmin(Width / (fMaxLayerWidth / 100), Height / (fMaxLayerHeight / 100));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.CalcEdges(var EdgeX, EdgeY: integer; NoVertSB, NoHorizSB: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CalcEdges'); {$endif}
  case fBackgroundStyle of
    iebsCropped:
      begin
        EdgeX := gEdgeX;
        EdgeY := gEdgeY;
      end;
    iebsCropShadow:
      begin
        EdgeX := 5;
        EdgeY := 5;
      end;
    iebsSoftShadow:
      begin
        EdgeX := 9;
        EdgeY := 9;
      end;
  else
    begin
      if NoVertSB then
      begin
        if BorderStyle=bsNone then
          EdgeX := 0
        else if Ctl3D then
          EdgeX := gEdgeX
        else
          EdgeX := gBorderX;
      end
      else
        EdgeX := (Width - GetClientWidth) div 2;
      if NoHorizSB then
      begin
        if BorderStyle=bsNone then
          EdgeY:=0
        else if Ctl3D then
          EdgeY := gEdgeY
        else
          EdgeY := gBorderY;
      end
      else
        EdgeY := (Height - GetClientHeight) div 2;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.GetFitValueXY(var x,y: double);
var
  EdgeX, EdgeY: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetFitValueXY'); {$endif}
  CalcEdges(EdgeX, EdgeY, true, true);
  x := (Width - EdgeX * 2) / (fMaxLayerWidth / 100);
  y := (Height - EdgeY * 2) / (fMaxLayerHeight / 100);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetFitValue: double;
var
  x,y: double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetFitValue'); {$endif}
  GetFitValueXY(x,y);
  Result := dmin(x,y);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Fit

<FM>Declaration<FC>
procedure Fit;

<FM>Description<FN>
This method adjusts Zoom so that the image fits (with aspect ratio) the client area of the component.
!!}
procedure TImageEnView.Fit;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Fit'); {$endif}
  if (fMaxLayerWidth <> 0) and (fMaxLayerHeight <> 0) then
  begin
    HideHorizScrollBar;
    HideVertScrollBar;
    Zoom := GetFitValue;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Stretch

<FM>Declaration<FC>
procedure Stretch;

<FM>Description<FN>
This method sets ZoomX and ZoomY values to stretch the image inside component borders.
Using this method you loss the image aspect ratio and some functions, which require aspect ratio, may not properly work.

!!}
procedure TImageEnView.Stretch;
var
  x,y:double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Fit'); {$endif}
  if (fMaxLayerWidth <> 0) and (fMaxLayerHeight <> 0) then
  begin
    HideHorizScrollBar;
    HideVertScrollBar;
    GetFitValueXY(x,y);
    LockPaint;
    ZoomX := x;
    ZoomY := y;
    UnlockPaint;
    HideHorizScrollBar;
    HideVertScrollBar;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.FitToWidth

<FM>Declaration<FC>
procedure FitToWidth;

<FM>Description<FN>
FitToWidth resizes the image (zoom) to fit the width of the control.
!!}
procedure TImageEnView.FitToWidth;
var
  EdgeX, EdgeY: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.FitToWidth'); {$endif}
  CalcEdges(EdgeX, EdgeY, false, true);
  if (fMaxLayerWidth <> 0) and (fMaxLayerHeight <> 0) then
  begin
    LockPaint;
    Zoom := (Width - EdgeX * 2) / (fMaxLayerWidth / 100);
    Zoom := (GetClientWidth) / (fMaxLayerWidth / 100); // second time needed for scrollbars
    UnLockPaint;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.FitToHeight

<FM>Declaration<FC>
procedure FitToHeight;

<FM>Description<FN>
FitToHeight resizes the image (zoom) to fit the height of the control.

!!}
procedure TImageEnView.FitToHeight;
var
  EdgeX, EdgeY: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.FitToHeight'); {$endif}
  CalcEdges(EdgeX, EdgeY, true, false);
  if (fMaxLayerWidth <> 0) and (fMaxLayerHeight <> 0) then
  begin
    LockPaint;
    Zoom := (Height - EdgeY * 2) / (fMaxLayerHeight / 100);
    Zoom := (GetClientHeight) / (fMaxLayerHeight / 100); // second time needed for scrollbars
    UnLockPaint;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetOptimalZoom(ibitmapwidth, ibitmapheight, iwidth, iheight: integer; bolStretch, bolShrink: Boolean): double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetOptimalZoom'); {$endif}
  result := 100;
  try
    if (iwidth = 0) or (iheight = 0) or (ibitmapwidth = 0) or (ibitmapheight = 0) then
      exit;
    if (iBitmapHeight / iHeight) < (iBitmapWidth / iWidth) then
    begin // width is important
      if iBitmapWidth > iWidth then
      begin
        if bolShrink = False then
          result := 100
        else
          result := GetFitValue;
      end
      else
      begin
        if bolStretch = False then
          result := 100
        else
          result := GetFitValue;
      end;
    end
    else
    begin // height is important
      if iBitmapHeight > iHeight then
      begin
        if bolShrink = False then
          result := 100
        else
          result := GetFitValue;
      end
      else
      begin
        if bolStretch = False then
          result := 100
        else
          result := GetFitValue;
      end;
    end; // if wider than high
  except
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// makes a zoom inside the selected area

{!!
<FS>TImageEnView.ZoomSelection

<FM>Declaration<FC>
procedure ZoomSelection(AspectRatio:boolean);

<FM>Description<FN>
The ZoomSelection method zooms to a rectangular area specified with Select method.
If the optional parameter (default=true) AspectRatio is False the image area is stretched to the component sizes.


<FM>Example<FC>

ImageEnView1.Select(10,10,100,100);
ImageEnView1.ZoomSelection; // fill client area (if possible) with rectangle 10,10,100,100

!!}
procedure TImageEnView.ZoomSelection(AspectRatio:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ZoomSelection'); {$endif}
  ZoomSelectionEx(AspectRatio,false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.ZoomSelectionEx(AspectRatio:boolean; FireDoZoomIn:boolean);
var
  dx, dy: integer;
  x1, y1: integer;
  cx, cy: integer;
  zx,zy: double;
  zm:double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ZoomSelectionEx'); {$endif}
  if fSel then
  begin
    dx := Selx2 - Selx1 + 1;
    dy := Sely2 - Sely1 + 1;
    x1 := SelX1;
    y1 := SelY1;
    if (x1 < 0) or (y1 < 0) or (dx < 2) or (dy < 2) then
      exit;
    Deselect;
    zm:=dmin(Width / (dx / 100), Height / (dy / 100));  // zoom with aspect ratio
    if FireDoZoomIn then
      DoZoomIn(zm);
    if AspectRatio then
    begin
      Zoom := zm;
    end
    else
    begin
      ZoomX := Width / (dx / 100);
      ZoomY := Height / (dy / 100);
    end;
    zx := ZoomX / 100;
    zy := ZoomY / 100;
    x1 := trunc(x1 * zx);
    dx := trunc(dx * zx);
    y1 := trunc(y1 * zy);
    dy := trunc(dy * zy);
    cy := (GetClientHeight - dy) div 2;
    cx := (GetClientWidth - dx) div 2;
    SetViewXY(x1 - cx, y1 - cy);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// called by "initialization"

procedure InitImageEnView;
var
  hdc: THANDLE;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('InitImageEnView'); {$endif}
  // bits per pixel of display
  hdc := getdc(0);
  gSystemColors := GetDeviceCaps(hdc, BITSPIXEL);
  gIsRemoteSession := IEIsRemoteSession;
  releasedc(0, hdc);
  // find DPI
  hdc := GetDC(0);
  gSystemDPIX:=GetDeviceCaps(hdc,LOGPIXELSX);
  gSystemDPIY:=GetDeviceCaps(hdc,LOGPIXELSY);
  gDefaultDPIX := 300;
  gDefaultDPIY := 300;
  ReleaseDC(0, hdc);
  // verify MMX
  gMMX := IEMMXSupported;
  //
  gEdgeX := GetSystemMetrics(SM_CXEDGE);
  gEdgeY := GetSystemMetrics(SM_CYEDGE);
  gBorderX := GetSystemMetrics(SM_CXBORDER);
  gBorderY := GetSystemMetrics(SM_CYBORDER);
  gVScrollWidth := GetSystemMetrics(SM_CYHSCROLL);
  gHScrollHeight := GetSystemMetrics(SM_CXVSCROLL);
  FhGradientFill := 0;
  //
  iegMINZOOMDISPLAYGRID:=400;
  iegGRIDPEN:=TPen.Create;
  with iegGRIDPEN do
  begin
    Mode := pmNot;
    Style := psSolid;
    Width := 1;
  end;
  //
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.LockPaint

<FM>Declaration<FC>
procedure LockPaint;

<FM>Description<FN>
The LockPaint method increases the lock counter's value.

<FM>Example<FC>

ImageEnView1.LockPaint;
ImageEnView1.ViewX:=10;
ImageEnView1.ViewY:=20;
ImageEnView1.Zoom:=300;
ImageEnView1.UnLockPaint;

!!}
// Inc fLockPaint counter
procedure TImageEnView.LockPaint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LockPaint'); {$endif}
  inc(fLockPaint);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.UnLockPaint

<FM>Declaration<FC>
function UnLockPaint: integer;

<FM>Description<FN>
Use the UnLockPaint method to decrease the lock counter's value. If the lock count is zero, then the Update method is called.

Returns the lock count.

<FM>Example<FC>

ImageEnView1.LockPaint;
ImageEnView1.ViewX:=10;
ImageEnView1.ViewY:=20;
ImageEnView1.Zoom:=300;
ImageEnView1.UnLockPaint;
!!}
// Dec fLockPaint counter
// return current fLockPaint value (after Dec)
// Call Update if fLockPaint=0
function TImageEnView.UnLockPaint: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.UnLockPaint'); {$endif}
  if fLockPaint > 0 then
    dec(fLockPaint);
  if fLockPaint = 0 then
    Update;
  result := fLockPaint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Dec fLockPaint counter
// return current fLockPaint value (after Dec)

function TImageEnView.NPUnLockPaint: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.NPUnLockPaint'); {$endif}
  if fLockPaint > 0 then
    dec(fLockPaint);
  result := fLockPaint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// zoom to ZoomVal at x,y coordinates (client area coordinates)

{!!
<FS>TImageEnView.ZoomAt

<FM>Declaration<FC>
procedure ZoomAt(x, y: integer; ZoomVal: double; Center:boolean=true);

<FM>Description<FN>
This method zooms by the ZoomVal percentage centered at the point x,y.
If the optional Center parameter if False, the zooming center is x,y, otherwise (the default) it is the center of image.

!!}
procedure TImageEnView.ZoomAt(x, y: integer; ZoomVal: double; Center:boolean);
var
  zz: double;
  bx,by:integer;
  w2,h2:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ZoomAt'); {$endif}
  LockPaint;
  bx := XScr2Bmp(x);
  by := YScr2Bmp(y);

  Zoom := ZoomVal;
  zz := Zoom / 100;
  w2:=(GetClientWidth div 2);
  h2:=(GetClientHeight div 2);

  if Center then
    SetViewXY(trunc(bx * zz - w2), trunc(by * zz - h2))
  else
    SetViewXY(trunc(bx*zz - x +Zoom/100), trunc(by*zz - y+Zoom/100));

  UnLockPaint;

  CalcPaintCoords;
  CreateCoordConvLUT; // recalculates coordinate conversion LUT
  ViewChange(1);

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DrawTo

<FM>Declaration<FC>
procedure DrawTo(Canvas: TCanvas);

<FM>Description<FN>
This method draws the current view in Canvas. The background isn't painted, and the image has up-left alignment.


<FM>Example<FC>

// draw in ImageEn2 all what is displayed in ImageEnView1
ImageEnView1.DrawTo(ImageEnView2.Bitmap.Canvas);
ImageEnView2.Update;

!!}
procedure TImageEnView.DrawTo(Canvas: TCanvas);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DrawTo'); {$endif}
  Canvas.CopyRect(Rect(0, 0, frx, fry), fTBitmap.Canvas, Rect(fOffX, fOffY, fOffX + frx, fOffY + fry));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.HasParentWindow: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.HasParentWindow'); {$endif}
  result := (GetParentForm(self) <> nil) or (ParentWindow <> 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.UpdateNoPaint

<FM>Declaration<FC>
procedure UpdateNoPaint;

<FM>Description<FN>
Update method updates the TImageEnView component with the actual image.
You have to call Update method whenever the Bitmap field is modified.
UpdateNoPaint doesn't paint the image, but just refreshes the bitmap info.
!!}
procedure TImageEnView.UpdateNoPaint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.UpdateNoPaint'); {$endif}
  try
    fBlockPaint := true;
    Update;
  finally
    fBlockPaint := false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.RequiresScrollBars: boolean;
var
  max_x, max_y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.RequiresScrollBars'); {$endif}
  GetMaxViewXY(max_x, max_y);
  result := (max_x > 0) or (max_y > 0);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.HideHorizScrollBar;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.HideHorizScrollBar'); {$endif}
  if fHScrollBarVisible then
  begin
    fHScrollBarVisible := false;
    IEShowScrollBar(handle, SB_HORZ, false, fFlatScrollBars);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.HideVertScrollBar;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.HideVertScrollBar'); {$endif}
  if fVScrollBarVisible then
  begin
    fVScrollBarVisible := false;
    IEShowScrollBar(handle, SB_VERT, false, fFlatScrollBars);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Update

<FM>Declaration<FC>
procedure Update;

<FM>Description<FN>
Update method updates the TImageEnView component with the actual image and redraws the client area.

You have to call Update method whenever the Bitmap field is modified. Update is called automatically when an image processing or input operation is executed.

<FM>Example<FC>

// Draw a rectangle on the image and show it
ImageEnView1.Bitmap.Canvas.Rectangle(5,5,100,100);
ImageEnView1.Update;
!!}
procedure TImageEnView.Update;
var
  max_x, max_y: integer;
  lClientWidth, lClientHeight: integer;
  bb: boolean;
  EdgeX, EdgeY: integer;
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Update'); {$endif}
  if fUpdateLocked<>0 then
    exit;
  if (ComponentState = [csDesigning]) then  // 2.3.2
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

  fInsideUpdate:=true;

  // empty layer mask caches
  for i:=0 to fLayers.Count-1 do
    FreeAndNil( TIELayer(fLayers[i]).fCachedLayerMask );

  // check layers sizes
  DoLayersSync;

  if (fAutoStretch or fAutoShrink or fAutoFit) and (fMaxLayerWidth <> 0) and (fMaxLayerHeight <> 0) then
  begin
    case fBackgroundStyle of
      iebsCropped:
        begin
          EdgeX := gEdgeX;
          EdgeY := gEdgeY;
        end;
      iebsCropShadow:
        begin
          EdgeX := 5;
          EdgeY := 5;
        end;
      iebsSoftShadow:
        begin
          EdgeX := 9;
          EdgeY := 9;
        end;
    else
      begin
        EdgeX := (Width - GetClientWidth) div 2;
        EdgeY := (Height - GetClientHeight) div 2;
      end;
    end;
    if (fMaxLayerWidth < 2) and (fMaxLayerHeight < 2) then
    begin
      fZoomX := 100;
      FZoomY := 100;
    end
    else
    begin
      fZoomX := GetOptimalZoom(fMaxLayerWidth, fMaxLayerHeight, (GetClientWidth - EdgeX * 2), (GetClientHeight - EdgeY * 2), fAutoStretch or fautofit, fAutoShrink or fautofit);
      fZoomY := fZoomX;
    end;
    if (fZoomX) < 1 then
      fZoomX := 1;
    if (fZoomY) < 1 then
      fZoomY := 1;
    fZoomD100X := fZoomX / 100;
    f100DZoomX := 100 / fZoomX;
    fZoomD100Y := fZoomY / 100;
    f100DZoomY := 100 / fZoomY;
    CalcPaintCoords;
    CreateCoordConvLUT; // recalculates coordinate conversion LUT
    ViewChange(1);
    // to avoid flickering
    fStable := 0;
    fStable2 := 0;
  end;

  // check bitmap size changes
  if (fBitmapWidth <> fIEBitmap.Width) or (fBitmapHeight <> fIEBitmap.Height) then
  begin
    fBitmapWidth := fIEBitmap.Width;
    fBitmapHeight := fIEBitmap.Height;

    // 2.2.4, 3.0.0b3
    if (fSelectionMask.Width<>fIEBitmap.Width) or (fSelectionMask.Height<>fIEBitmap.Height) then
    begin
      if fSel then
      begin
        fSelectionMask.Resize(fIEBitmap.Width,fIEBitmap.Height);
        fSelectionMask.SyncFull;
        fSelectionMask.SyncRect;
      end
      else
        fSelectionMask.AllocateBits(fIEBitmap.Width, fIEBitmap.Height, fSelectionMaskDepth);
    end;

    if fIEBitmap.HasAlphaChannel and ((fIEBitmap.AlphaChannel.Width <> fIEBitmap.Width) or (fIEBitmap.AlphaChannel.Height <> fIEBitmap.Height)) then
    begin
      fIEBitmap.AlphaChannel.Allocate(fIEBitmap.Width, fIEBitmap.Height, ie8g);
      fIEBitmap.AlphaChannel.Fill(255);
    end;
  end;

  if not (csDesigning in ComponentState) and (HasParentWindow) then
  begin
    // Save client sizes because the scrollbar changes the client area, then we have to recall Update (recursive call)
    lClientWidth := GetClientWidth;
    lClientHeight := GetClientHeight;
    //
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
      if HasParentWindow and ((fScrollBars = ssHorizontal) or (fScrollBars = ssBoth)) then
      begin
        if max_x > 0 then
        begin
          // we need horizontal scroll bar
          fHScrollBarVisible := true;
          fRXScroll := (max_x + GetClientWidth) / 65536;
          IESetScrollRange(Handle, SB_HORZ, 0, 65535, false, fFlatScrollBars);
          IESetSBPageSize(Handle, SB_HORZ, trunc(GetClientWidth / fRXScroll), true, fFlatScrollBars);
          IESetScrollPos(Handle, SB_HORZ, trunc(fViewX / fRXScroll), false, fFlatScrollBars);
          IEEnableScrollBar(Handle, SB_HORZ, ESB_ENABLE_BOTH, fFlatScrollBars);
          IEShowScrollBar(handle, SB_HORZ, true, fFlatScrollBars);
        end
        else if fScrollBarsAlwaysVisible then
        begin
          // the scroll bar is always visible
          fHScrollBarVisible := true;
          IEEnableScrollBar(Handle, SB_HORZ, ESB_DISABLE_BOTH, fFlatScrollBars);
          IEShowScrollBar(handle, SB_HORZ, true, fFlatScrollBars);
        end
        else
        begin
          // we don't need the horizontal scroll bar
          HideHorizScrollBar;
        end;
      end;
      if HasParentWindow and ((fScrollBars = ssVertical) or (fScrollBars = ssBoth)) then
      begin
        if max_y > 0 then
        begin
          // we need vertical scroll bar
          fVScrollBarVisible := true;
          fRYScroll := (max_y + GetClientHeight) / 65536;
          IESetScrollRange(Handle, SB_VERT, 0, 65535, false, fFlatScrollBars);
          IESetSBPageSize(Handle, SB_VERT, trunc(GetClientHeight / fRYScroll), true, fFlatScrollBars);
          IESetScrollPos(Handle, SB_VERT, trunc(fViewY / fRYScroll), false, fFlatScrollBars);
          IEEnableScrollBar(Handle, SB_VERT, ESB_ENABLE_BOTH, fFlatScrollBars);
          IEShowScrollBar(handle, SB_VERT, true, fFlatScrollBars);
        end
        else if fScrollBarsAlwaysVisible then
        begin
          // the scroll bar is always visible
          fVScrollBarVisible := true;
          IEEnableScrollBar(Handle, SB_VERT, ESB_DISABLE_BOTH, fFlatScrollBars);
          IEShowScrollBar(handle, SB_VERT, true, fFlatScrollBars);
        end
        else
        begin
          // we don't need the vertical scroll bar
          HideVertScrollBar;
        end;
      end;
    except
    end;
    if ((lClientWidth <> GetClientWidth) or (lClientHeight <> GetClientHeight)) and not fUpdateInsideUpdate then
    begin
    	fUpdateInsideUpdate:=true;
      Update; // recursive, see above
      fUpdateInsideUpdate:=false;
    end;
  end;

  UpdateLimits;

  fDBToDraw := true;
  fFullUpdateRequest := true;
  if HasParentWindow and (fBlockPaint = false) and fUpdateInvalidate then
    invalidate;
  //
  if assigned(fNavigator) then
  begin
    fNavigator.Update;
    SetNavigatorRect;
  end;

  fInsideUpdate:=false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.UpdateLimits;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.UpdateLimits'); {$endif}
  fZZWW := round(fMaxLayerWidth * fZoomD100X); // new Bitmap width
  fZZHH := round(fMaxLayerHeight * fZoomD100Y); // new Bitmap height
  fOffX := 0;
  fOffY := 0;
  if not (csDesigning in ComponentState) then
  begin
    fExtX := imin(fZZWW, GetClientWidth); // width of target bitmap
    fExtY := imin(fZZHH, GetClientHeight); // height of target bitmap
    if fCenter then
    begin
      // center the image
      if fExtx < GetClientWidth then
        fOffX := (GetClientWidth - fExtx) div 2;
      if fExty < GetClientHeight then
        fOffY := (GetClientHeight - fExty) div 2;
    end;
  end
  else
  begin
    fExtX := imin(fZZWW, Width);
    fExtY := imin(fZZHH, Height);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Center

<FM>Declaration<FC>
property Center: boolean;

<FM>Description<FN>
If Center isTrue, the image is centered the control's client area.
!!}
procedure TImageEnView.SetCenter(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetCenter'); {$endif}
  if v <> fCenter then
  begin
    fCenter := v;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetMouseInteract(v: TIEMouseInteract);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetMouseInteract'); {$endif}
  if v <> fMouseInteract then
  begin

    if fPolySelecting and (miSelectPolygon in fMouseInteract) then
    begin
      AnimPolygonRemoveLastPoint(integer(fHPolySel));
      fSelectionMask.Empty;
      EndSelect;
      fPolySelecting := False;
      invalidate;
    end;

    if (miScroll in v) and not (miScroll in fMouseInteract) then // miScroll
      v := v - [miSelect, miSelectPolygon, miSelectCircle, miSelectZoom, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelect in v) and not (miSelect in fMouseInteract) then // miSelect
      v := v - [miSelectPolygon, miSelectCircle, miScroll, miSelectZoom, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelectPolygon in v) and not (miSelectPolygon in fMouseInteract) then // miSelectPolygon
      v := v - [miSelect, miScroll, miSelectCircle, miSelectZoom, miZoom, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelectCircle in v) and not (miSelectCircle in fMouseInteract) then // miSelectCircle
      v := v - [miSelect, miSelectPolygon, miScroll, miSelectZoom, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelectLasso in v) and not (miSelectLasso in fMouseInteract) then // miSelectLasso
      v := v - [miSelect, miSelectPolygon, miScroll, miSelectZoom, miSelectMagicWand, miSelectCircle, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelectZoom in v) and not (miSelectZoom in fMouseInteract) then // miSelectZoom
      v := v - [miScroll, miSelect, miSelectCircle, miSelectPolygon, miSelectMagicWand, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miZoom in v) and not (miZoom in fMouseInteract) then // miZoom
      v := v - [miSelectPolygon, miSelectMagicWand, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miSelectMagicWand in v) and not (miSelectMagicWand in fMouseInteract) then // miSelectMagicWand
      v := v - [miSelect, miScroll, miSelectCircle, miSelectZoom, miZoom, miSelectPolygon, miSelectLasso, miMoveLayers, miResizeLayers, miRotateLayers]
    else if (miRotateLayers in v) then // miRotateLayers
      v := v - [miSelect, miScroll, miSelectCircle, miSelectZoom, miZoom, miSelectPolygon, miSelectLasso, miSelectMagicWand, miResizeLayers]
    else if (miMoveLayers in v) then // miMoveLayers
    begin
      v := v - [miSelect, miScroll, miSelectCircle, miSelectZoom, miZoom, miSelectPolygon, miSelectLasso, miSelectMagicWand];
      if miResizeLayers in v then
        v:=v-[miRotateLayers];
    end
    else if (miResizeLayers in v) then // miResizeLayers
      v := v - [miSelect, miScroll, miSelectCircle, miSelectZoom, miZoom, miSelectPolygon, miSelectLasso, miSelectMagicWand, miRotateLayers];

    if not (miRotateLayers in v) then
      LayersFixRotations  // exiting from rotation mode? Anyway fix rotations.
    else
      LayersFixBorders; // entering in rotation mode, fix borders

    fMouseInteract := v;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// track mouse move for polygonal selection
procedure TImageEnView.PolyDraw1;
var
  x, y: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PolyDraw1'); {$endif}
  if fPolySelecting and (not fLassoSelecting) then
  begin
    canvas.pen.mode := pmNot;
    canvas.pen.width := 1;
    canvas.pen.style := psSolid;
    with PIEAnimPoly(fHPolySel)^ do
      if PolyCount > 0 then
      begin
        canvas.moveto(fMMoveX, fMMoveY);
        x := CurrentLayer.ConvXBmp2Scr(Poly^[PolyCount - 1].x);
        y := CurrentLayer.ConvYBmp2Scr(Poly^[PolyCount - 1].y);
        canvas.lineto(x, y);
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.PaintRect

<FM>Declaration<FC>
procedure PaintRect(const rc:TRect);

<FM>Description<FN>
PaintRect repaints only the rectangle rc without waiting for the Windows Paint message.

<FM>Example<FC>

// this code paints an image (width=50 height=50) at bitmap coordinates 10,10
ImageEnView1.Bitmap.Canvas.Draw(10,10, MyBitmap);
// map the bitmap coordinates to view coordinates (rc is a TRect type)
With ImageEnView1 do
   rc := rect( XBmp2Scr(10), YBmp2Scr(10), XBmp2Scr(10+50), YBmp2Scr(10+50) );
ImageEnView1.UpdateRect(rc);	// update internal ImageEn state
ImageEnView1.PaintRect(rc);	// paint the changes on the screen

!!}
procedure TImageEnView.PaintRect(const rc: TRect);
var
  dx, dy: integer;
  ur: trect;
{$IFDEF IEDEBUG}
  t1: dword;
{$ENDIF}
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaintRect'); {$endif}
  if (not HasParentWindow) and (not fOffscreenPaint) then
    exit;
{$IFDEF IEDEBUG}
  t1 := gettickcount;
{$ENDIF}
  // prepare the back buffer
  if (fTBitmap.Width <> GetClientWidth) or (fTBitmap.Height <> GetClientHeight) then
  begin
    fTBitmap.Allocate(GetClientWidth,GetClientHeight,ie24RGB);
    fDBToDraw := true;
  end;
  // draw on the back buffer
  if fDBToDraw then
  begin
    ur := rc;
    PaintToEx(fTBitmap, fTBitmap.TBitmapScanlines, @ur, true, true);
    if assigned(fOnDrawBackBuffer) then
      fOnDrawBackBuffer(self);
{$IFDEF DEMOVERSION}
    ie_ctrlview(ftbitmap.canvas);
{$ENDIF}
    fDBToDraw := false;
  end;
  // draw the back buffer to the canvas
  with fBitmapInfoHeader256 do
  begin
    biSize := sizeof(TBitmapInfoHeader);
    biWidth := GetClientWidth;
    biHeight := GetClientHeight;
    biPlanes := 1;
    if fTBitmap.PixelFormat = ie1g then
    begin
      biBitCount := 1;
      Palette[1].rgbRed := 255;
      Palette[1].rgbGreen := 255;
      Palette[1].rgbBlue := 255;
    end
    else
      biBitCount := 24;
    biCompression := BI_RGB;
  end;

  {$IFDEF IEINCLUDEDIRECTSHOW}
  if assigned(fImageEnIO) and assigned(fImageEnIO.DShowParams) and fImageEnIO.DShowParams.RenderVideo and (fImageEnIO.DShowParams.State<>gsStopped) then
    with CurrentLayer.DrawingInfo do
      ExcludeClipRect(Canvas.Handle,XDst,YDst,XDst+WidthDst,YDst+HeightDst);
  {$ENDIF}

  with rc do
  begin
    dx := imin(right - left, GetClientWidth);
    dy := imin(bottom - top, GetClientHeight);

    if (fUseDrawDibDraw or (gSystemColors <= 8)) and not gIsRemoteSession then
      // drawdibdraw. Good for dithering in system with <=256 colors (2.2.8)
      IEDrawDibDraw(fHDrawDib, canvas.handle, left, top, dx, dy, PBitmapInfoHeader(@fBitmapInfoHeader256)^, fTBitmap.Scanline[fTBitmap.Height - 1], left, top, dx, dy, 0)
    else
    begin
      // new mode
      if (gSystemColors < 24) and not gIsRemoteSession then
      begin
        // dithering needed (for example display with 16bit depth need dithering)
        SetStretchBltMode(Canvas.Handle, HALFTONE);
        StretchBlt(canvas.Handle, left, top, dx, dy, fTBitmap.Canvas.Handle, left, top, dx, dy, SRCCOPY);
      end
      else
      begin
        // no dithering needed (fastest way)
        BitBlt(canvas.handle, left, top, dx, dy, fTBitmap.Canvas.Handle, left, top, SRCCOPY);
      end;
    end;

  end;
{$IFDEF IEDEBUG}
  //OutputDebugString(pchar('PaintRect: '+inttostr(gettickcount-t1)+' ms'));
{$ENDIF}
  if fPolySelecting then
    PolyDraw1;
  if (fOldHandle<>0) and (fOldHandle<>Handle) then
    IO.RecreatedTImageEnViewHandle;
  fOldHandle:=Handle;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoDrawVersion;
var
  x, y: integer;
  ss: string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoDrawVersion'); {$endif}
  with Canvas do
  begin
    Font.Name := 'Arial';
    Font.Height := 13;
    Font.Color := clBlack;
    Brush.style := bsSolid;
    Brush.Color := clWhite;
    ss := 'ImageEn Version ' + IEMAINVERSION + ' - ' + inttostr(IEMAINDATEDD) + '/' + inttostr(IEMAINDATEMM) + '/' + inttostr(IEMAINDATEYY);
    y := ClientHeight - TextHeight(ss);
    x := ClientWidth - TextWidth(ss);
    TextOut(x, y, ss);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.Paint;
var
  rc: TRect;
  x1,y1,nw,nh:integer;
  zw,zh:double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Paint'); {$endif}

  try
    if (not HandleAllocated) or ((not HasParentWindow) or (GetClientWidth = 0) or (GetClientHeight = 0)) and not fOffscreenPaint then
      exit; // environment not ready. 3.0.0
    if csDesigning in ComponentState then
    begin
      // draws only the background
      IEDrawBackGround(ComponentState, Canvas, nil, fBackgroundStyle, fBackground, 0, 0, Width, Height, 0, 0, 0, 0, fChessboardSize, fChessboardBrushStyle, fGradientEndColor, fWallPaper,fWallPaperStyle);
    end
    else
    begin
      if fLockPaint = 0 then
      begin
        // ready to draw
        if fFullUpdateRequest then
          rc := Rect(0, 0, GetClientWidth, GetClientHeight)
        else
        begin
          rc := Canvas.ClipRect;
{$IFDEF IEDEBUG}
          //OutputDebugString(pchar('Partial paint: '+inttostr(rc.left)+','+inttostr(rc.top)+','+inttostr(rc.right)+','+inttostr(rc.bottom)));
{$ENDIF}
          if (rc.Right = 0) or (rc.bottom = 0) then
          begin
            rc.Right := GetClientWidth;
            rc.Bottom := GetClientHeight;
          end;
        end;
        PaintRect(rc);
        if Assigned(fOnDrawCanvas) then
          FOnDrawCanvas(self,Canvas,Rect(0, 0, GetClientWidth, GetClientHeight));
      end;
      fFullUpdateRequest := False;
      if not fRectMoving then
        AniPolyFunc(self, false);
      if assigned(fOnPaint) then
        OnPaint(self);
    end;
  except
{$IFDEF IEDEBUG}
    on e: Exception do
      OutputDebugString(pchar('[Paint] ' + e.message + #13#10));
{$ENDIF}
  end;
  if fDrawVersion then
    DoDrawVersion;

  if (fInteractionHint<>'') and (fEnableInteractionHints) then
    IEDrawHint2(Canvas,fInteractionHintX,fInteractionHintY,fInteractionHint,fInteractionHintMinText);

  {$IFDEF IEINCLUDEDIRECTSHOW}
  // synchronize directshow video rendering with current layer
  if assigned(fImageEnIO) and assigned(fImageEnIO.DShowParams) and fImageEnIO.DShowParams.RenderVideo and (fImageEnIO.DShowParams.State<>gsStopped) then
  begin
    with CurrentLayer.DrawingInfo do
    begin
      fImageEnIO.DShowParams.GetVideoRenderNativeSize(nw,nh);
      if (nw>0) and (nh>0) then
      begin
        zw:=CurrentLayer.Bitmap.Width/nw;
        zh:=CurrentLayer.Bitmap.Height/nh;
        x1:=trunc(XSrc/zw);
        y1:=trunc(YSrc/zh);
        nw:=trunc(WidthSrc/zw);
        nh:=trunc(HeightSrc/zh);
        fImageEnIO.DShowParams.SetVideoRenderRect( Rect(x1,y1,x1+nw,y1+nh), Rect(XDst, YDst, XDst+WidthDst, YDst+HeightDst) );
      end;
    end;
  end;
  {$ENDIF}

  // 2.3.2
  if fAutoCursors and fFirstTimeSetCursor then
  begin
    SetCursor( Cursor );
    fFirstTimeSetCursor:=false;
  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoDoubleClickEx(Shift: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoDoubleClickEx'); {$endif}
  if fPolySelecting and (not fLassoSelecting) then
  begin
    AnimPolygonRemoveLastPoint(integer(fHPolySel));
    if (not Shift) or (not fEnableShiftKey) then
      fSelectionMask.Empty;
    EndSelect;
    Update;
    fPolySelecting := False;
    DoSelectionChange;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetBounds'); {$endif}
  inherited;
  {$IFNDEF OCXVERSION}
  if (csReading in ComponentState) or (csDesigning in ComponentState) or (csLoading in ComponentState) then
    if assigned(fIEBitmap) then
    begin
      fIEBitmap.Width := Width;
      fIEBitmap.Height := Height;
      Clear;
    end;
  {$ENDIF}
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.PolySelPoints

<FM>Declaration<FC>
property PolySelPoints:<A PPointArray>;

<FM>Description<FN>
PolySelPoints returns the current selection as a pointer to an array of TPoint.

<FM>Example<FC>

// Copies current selection to ImageEnView2. Then enhance contrast of ImageEnView2 and copy back to ImageEnView1 (in some selection).
ImageEnView2.CopyFromPolygon(ImageEnView1.Bitmap,ImageEnView2.PolySelPoints^,ImageEnView2.PolySelCount,Point(0,0));
ImageEnView2.Proc.Contrast(30);
ImageEnView2.CopyToPolygon(ImageEnView1.Bitmap,ImageEnView1.PolySelPoints^,ImageEnView1.PolySelCount,Point(0,0));
ImageEnView1.Update;
!!}
function TImageEnView.GetPolySelArray: PPointArray;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetPolySelArray'); {$endif}
  result := PIEAnimPoly(fHPolySel)^.Poly;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.PolySel


<FM>Declaration<FC>
property PolySel[idx:integer]:TPoint;

<FM>Description<FN>
Returns the idx point of the current polygonal selection. The point is specified in bitmap coordinates.
See also <A TImageEnView.PolySelCount>.

Read only

!!}
function TImageEnView.GetPolySel(idx: integer): TPoint;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetPolySel'); {$endif}
  result := Point(0, 0);
  with PIEAnimPoly(fHPolySel)^ do
    if (idx >= 0) and (idx <= PolyCount) then
    begin
      if Poly^[idx].X = IESELBREAK then
        result := Poly^[idx] // break code
      else
        result := Point(Poly^[idx].X, Poly^[idx].Y);
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.PolySelCount

<FM>Declaration<FC>
property PolySelCount:integer;

<FM>Description<FN>
Returns the points number of the current polygonal selection (size of PolySel array).
See also <A TImageEnView.PolySel>.

Read only

!!}
function TImageEnView.GetPolySelCount: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetPolySelCount'); {$endif}
  result := PIEAnimPoly(fHPolySel)^.PolyCount;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DeSelect

<FM>Declaration<FC>
procedure DeSelect;

<FM>Description<FN>
This method removes current selection. After DeSelect is called, the Selected property will be false.
!!}
procedure TImageEnView.DeSelect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DeSelect'); {$endif}
  if fSel then
  begin
    fSel := false;
    HideSelectionEx(true);
  end;
  AnimPolygonClear(integer(fHPolySel));
  fSelectionMask.Empty;
  fSel := false;
  fPolySelecting := false;
  fLassoSelecting := false;
  fRectSelecting := False;
  fCircSelecting := False;
  fRectResizing := ieNone;
  fSelectMoving := -1;
  RestoreCursor;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// x2,y2 represent the right/bottom margin (not selected)
// to select an area of 1x1 pixels we need to select using 0,0,1,1 (the column 1 and the
// row 1 aren't selected)

{!!
<FS>TImageEnView.Select

<FM>Declaration<FC>
procedure Select(x1, y1, x2, y2: integer; Op:<A TIESelOp>); virtual;

<FM>Description<FN>
This method selects a portion of the image.
The selected area will be outlined with a white-black animated rectangle.
If <A TImageEnView.SelectionBase> is iesbClientArea (default) all coordinates depend on actual Zoom and scrolling.
If SelectionBase is iesbBitmap, all coordinates refer to bitmap pixels.

x1, y1, x2, y2 is the selected rectangle.
x2,y2 represent the right/bottom margin (not selected). To select an area of 1x1 pixels we need to select using 0,0,1,1 (the column 1 and the row 1 aren't selected).

If Op is iespReplace, Select replaces all previous selections. If Op is iespAdd, Select adds a new selection.
!!}
procedure TImageEnView.Select(x1, y1, x2, y2: integer; Op: TIESelOp);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Select'); {$endif}
  SelectEx(x1, y1, x2, y2, Op, false, false);
  if Op = iespReplace then
    fSelectionMask.Empty;
  EndSelect;
  fDBToDraw := true;
  Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectEllipse

<FM>Declaration<FC>
procedure SelectEllipse(CenterX,CenterY,Width,Height:integer; Op:<A TIESelOp>=iespReplace);

<FM>Description<FN>
SelectEllipse makes an elliptical selection, centered at CenterX and CenterY, and with size specified by Width and Height. Op specifies if you want to add a new selection or replace the current one (iespAdd or iespReplace).

<FM>Example<FC>
ImageEnView.SelectEllipse( 100,100, 20,20 );

!!}
procedure TImageEnView.SelectEllipse(CenterX, CenterY, Width, Height: integer; Op: TIESelOp);
var
  dx, dy, p, g, xx, yy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectEllipse'); {$endif}
  if fSelectionBase = iesbClientArea then
  begin
    CenterX := CurrentLayer.ConvXScr2Bmp(CenterX);
    CenterY := CurrentLayer.ConvYScr2Bmp(CenterY);
    Width := trunc(Width * f100DZoomX);
    Height := trunc(Height * f100DZoomY);
  end;
  if (Width <= 0) or (Height <= 0) then
    exit;
  fSel := true;
  if (Op = iespAdd) and (PIEAnimPoly(fHPolySel)^.PolyCount > 0) then
    AnimPolygonAddBreak(integer(fHPolySel))
  else
  begin
    AnimPolygonClear(integer(fHPolySel));
  end;
  dx := Width div 2;
  dy := Height div 2;
  p := trunc(2 * pi * imin(dx, dy)) shr 2;
  if p < 3 then
    p := 3;
  for g := 0 to p - 1 do
  begin
    xx := round(CenterX + cos((2 * pi / p) * g) * dx);
    yy := round(CenterY + sin((2 * pi / p) * g) * dy);
    xx := imax(0, imin(fIEBitmap.Width, xx));
    yy := imax(0, imin(fIEBitmap.Height, yy));
    AnimPolygonAddPtEx(integer(fHPolySel), xx, yy);
  end;
  if Op = iespReplace then
    fSelectionMask.Empty;
  EndSelect;
  fDBToDraw := true;
  Paint;
  ShowSelectionEx(true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectRoundRect

<FM>Declaration<FC>
procedure SelectRoundRect(Left,Top,Right,Bottom,RoundWidth,RoundHeight: integer; Op: <A TIESelOp> = iespReplace);

<FM>Description<FN>
Creates a rounded selection.
Left, Top, Right, Bottom are the rectangle coordiantes.
RoundWidth and RoundHeight specify round size.
Op specifies if you want to add a new selection or replace the current one (iespAdd or iespReplace).

<FM>Example<FC>

ImageEnView1.SelectRoundRect(100,100,250,250,20,20);

!!}
procedure TImageEnView.SelectRoundRect(Left,Top,Right,Bottom,RoundWidth,RoundHeight: integer; Op: TIESelOp);
var
  nsteps:integer;
  ptr:ppointarray;
  i:integer;
  xrect:TRect;

  procedure AddPt(xx,yy:integer);
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectRoundRect.AddPt'); {$endif}
    xx := imax(0, imin(fIEBitmap.Width, xx));
    yy := imax(0, imin(fIEBitmap.Height, yy));
    AnimPolygonAddPtEx(integer(fHPolySel), xx, yy);
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;

begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectRoundRect'); {$endif}
  if fSelectionBase = iesbClientArea then
  begin
    Left := CurrentLayer.ConvXScr2Bmp(Left);
    Top := CurrentLayer.ConvYScr2Bmp(Top);
    Right := CurrentLayer.ConvXScr2Bmp(Right);
    Bottom := CurrentLayer.ConvYScr2Bmp(Bottom);
    RoundWidth := trunc(RoundWidth * f100DZoomX);
    RoundHeight := trunc(RoundHeight * f100DZoomY);
  end;
  fSel := true;
  if (Op = iespAdd) and (PIEAnimPoly(fHPolySel)^.PolyCount > 0) then
    AnimPolygonAddBreak(integer(fHPolySel))
  else
    AnimPolygonClear(integer(fHPolySel));

  xrect:=rect(Left,Top,Right,Bottom);
  nsteps:=RoundWidth*RoundHeight;
  getmem(ptr,sizeof(TPoint)*nsteps);
  // top-left round
  IEBezier2D4Controls(Point(xrect.Left,xrect.Top+RoundHeight),xrect.TopLeft,Point(xrect.Left+RoundWidth,xrect.Top),Point(xrect.Left+RoundWidth,xrect.Top),ptr,nsteps);
  for i:=0 to nsteps-1 do
    AddPt( ptr[i].x,ptr[i].y );
  // top-right round
  IEBezier2D4Controls(Point(xrect.Right,xrect.Top+RoundHeight),Point(xrect.Right,xrect.Top),Point(xrect.Right-RoundWidth,xrect.Top),Point(xrect.Right-RoundWidth,xrect.Top),ptr,nsteps);
  for i:=nsteps-1 downto 0 do
    AddPt( ptr[i].x,ptr[i].y );
  // bottom-right round
  IEBezier2D4Controls(Point(xrect.Right,xrect.Bottom-RoundHeight),Point(xrect.Right,xrect.Bottom),Point(xrect.Right-RoundWidth,xrect.Bottom),Point(xrect.Right-RoundWidth,xrect.Bottom),ptr,nsteps);
  for i:=0 to nsteps-1 do
    AddPt( ptr[i].x,ptr[i].y );
  // bottom-left round
  IEBezier2D4Controls(Point(xrect.Left,xrect.Bottom-RoundHeight),Point(xrect.Left,xrect.Bottom),Point(xrect.Left+RoundWidth,xrect.Bottom),Point(xrect.Left+RoundWidth,xrect.Bottom),ptr,nsteps);
  for i:=nsteps-1 downto 0 do
    AddPt( ptr[i].x,ptr[i].y );
  freemem(ptr);

  if Op = iespReplace then
    fSelectionMask.Empty;
  EndSelect;
  fDBToDraw := true;
  Paint;
  ShowSelectionEx(true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure AdjustRectangle(var x1,y1,x2,y2:integer; Width,Height:integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('AdjustRectangle'); {$endif}
  if x1<0 then
  begin
    x2:=x2-x1;
    x1:=0;
  end;
  if y1<0 then
  begin
    y2:=y2-y1;
    y1:=0;
  end;
  if x2>=Width then
  begin
    x1:=x1-(x2-Width+1);
    x2:=Width-1;
  end;
  if y2>=Height then
  begin
    y1:=y1-(y2-Height+1);
    y2:=Height-1;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// x2,y2 represent the right/bottom margin (not selected)
// to select an area of 1x1 pixels we need to select using 0,0,1,1 (the column 1 and the
// row 1 aren't selected)
// IT DO NOT CALL "EndSelect"
// if adjRect is true, move the rectangle to make it inside the bitmap
procedure TImageEnView.SelectEx(x1, y1, x2, y2: integer; Op: TIESelOp; aspectratio: boolean; adjRect:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectEx'); {$endif}
  if (x1 = x2) or (y1 = y2) then
  begin
    exit;
  end;
  if fSelectionBase = iesbClientArea then
  begin
    x1 := CurrentLayer.ConvXScr2Bmp(x1);
    y1 := CurrentLayer.ConvYScr2Bmp(y1);
    x2 := CurrentLayer.ConvXScr2Bmp(x2);
    y2 := CurrentLayer.ConvYScr2Bmp(y2);
  end;
  fSel := true;
  if (Op = iespAdd) and (PIEAnimPoly(fHPolySel)^.PolyCount > 0) then
    AnimPolygonAddBreak(integer(fHPolySel))
  else
  begin
    AnimPolygonClear(integer(fHPolySel));
  end;
  if (Op = iespReplace) then
    fSelectionMask.Empty;
  if aspectratio and (fSelectionAspectRatio = -1) then
    y2 := round(x2 - x1 + 1 + y1 - 1)
  else if fSelectionAspectRatio > 0 then
  begin
    y2 := y1 + round((x2 - x1) * fSelectionAspectRatio);
    if y2>=fIEBitmap.Height then
      x2:=round( (fIEBitmap.Height-1-y1+x1*fSelectionAspectRatio)/fSelectionAspectRatio );
    if y2<0 then
      x2:=round( (0-y1+x1*fSelectionAspectRatio)/fSelectionAspectRatio );
  end;
  if adjRect then
    AdjustRectangle(x1,y1,x2,y2,fIEBitmap.Width,fIEBitmap.Height);

  OrdCor(x1, y1, x2, y2);

  x1 := imax(0, imin(fIEBitmap.Width - 1, x1));
  y1 := imax(0, imin(fIEBitmap.Height - 1, y1));
  x2 := imax(0, imin(fIEBitmap.Width - 0, x2));
  y2 := imax(0, imin(fIEBitmap.Height - 0, y2));

  AnimPolygonAddPtEx(integer(fHPolySel), x1, y1);
  AnimPolygonAddPtEx(integer(fHPolySel), x2, y1);
  AnimPolygonAddPtEx(integer(fHPolySel), x2, y2);
  AnimPolygonAddPtEx(integer(fHPolySel), x1, y2);
  ShowSelectionEx(true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectCustom

<FM>Declaration<FC>
procedure SelectCustom;

<FM>Description<FN>

Call SelectCustom after you have specified a pixmap of selected pixels of the image. To select a pixmap use <A TImageEnView.SelectionMask> methods like <A TIEMask.SetPixel>.

<FM>Example<FC>

// only pixels at 10,10 and 15,15 are selected
ImageEnView.SelectionMask.SetPixel(10,10, 1);
ImageEnView.SelectionMask.SetPixel(15,15, 1);
ImageEnView.SelectCustom;

!!}
procedure TImageEnView.SelectCustom;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectCustom'); {$endif}
  fSel := not fSelectionMask.IsEmpty;
  ShowSelectionEx(true);
  fDBToDraw := true;
  Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectMagicWand

<FM>Declaration<FC>
procedure SelectMagicWand(x,y:integer; Op:<A TIESelOp>);

<FM>Description<FN>
SelectMagicWand select s an irregular region that has similar colors. x, y is the base point. If Op is iespReplace the region replaces the existing selection, otherwise if Op is iespAdd, the region is appended to the existing selection.

<FM>Example<FC>

ImageEnView1.SelectMagicWand(10,10,iespReplace);
!!}
procedure TImageEnView.SelectMagicWand(x, y: integer; Op: TIESelOp);
var
  pts: ppointarray;
  npt, q: integer;
  xx, yy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectMagicWand'); {$endif}
  if fSelectionBase = iesbClientArea then
  begin
    x := CurrentLayer.ConvXScr2Bmp(x);
    y := CurrentLayer.ConvYScr2Bmp(y);
  end;
  if (x < 0) or (x > fIEBitmap.Width) or (y < 0) or (y > fIEBitmap.Height) then
    exit;
  case fMagicWandMode of
    iewInclusive:
      begin
        pts := _MakeMagicWandPoints(fIEBitmap, x, y, fMagicWandMaxFilter, fMagicWandTolerance, npt);
        if npt > 0 then
        begin
          fSel := true;
          if (Op = iespAdd) and (PIEAnimPoly(fHPolySel)^.PolyCount > 0) then
            AnimPolygonAddBreak(integer(fHPolySel))
          else
          begin
            AnimPolygonClear(integer(fHPolySel));
            fSelectionMask.Empty;
          end;
          for q := 0 to npt - 1 do
          begin
            xx := imin(imax(0, pts^[q].x), fIEBitmap.Width);
            yy := imin(imax(0, pts^[q].y), fIEBitmap.Height);
            AnimPolygonAddPtEx(integer(fHPolySel), xx, yy);
          end;
          freemem(pts);
          if Op = iespReplace then
            fSelectionMask.Empty;
          EndSelect;
          ShowSelectionEx(true);
        end;
      end;
    iewExclusive:
      begin
        if (Op = iespReplace) then
        begin
          AnimPolygonClear(integer(fHPolySel));
          fSelectionMask.Empty;
        end;
        _MakeMagicWandPointsEx(fIEBitmap, x, y, fMagicWandMaxFilter, fMagicWandTolerance, fSelectionMask, fSelectionIntensity);
        fSel := not fSelectionMask.IsEmpty;
        ShowSelectionEx(true);
      end;
    iewGlobal:
      begin
        if (Op = iespReplace) then
        begin
          AnimPolygonClear(integer(fHPolySel));
          fSelectionMask.Empty;
        end;
        _MakeMagicWandPointsEx2(fIEBitmap, x, y, fMagicWandTolerance, fSelectionMask,fSelectionIntensity);
        fSel := not fSelectionMask.IsEmpty;
        ShowSelectionEx(true);
      end;
  end;
  fDBToDraw := true;
  Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure AdjustRectWithRatio(var x1,y1,x2,y2:integer; lx1,ly1,lx2,ly2:integer; Width,Height:integer; z:double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('AdjustRectWithRatio'); {$endif}
  z:=1/z;
  if y2>=Height then
    x2:=round( (Height-1-y1+x1*z)/z )
  else if y1<0 then
    x1:=round( (-y2+0+x2*z)/z )
  else if x2>=Width then
    y2:=round( y1+(Width-1-x1)*z )
  else if x1<0 then
    y1:=round( y2-(x2-0)*z );
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Resize selection
// newx,newy: new point in client coords
// return new grip if changed
//
// grip:  0=left-top  1=right-top  2=right-bottom  3=left-bottom
// 4=left side
// 5=right side
// 6=top side
// 7=bottom side

function TImageEnView.SelectResizeEx(grip: TIEGrip; newx, newy: integer; aspectratio: boolean): TIEGrip;
var
  x1, y1, x2, y2, w, h: integer;
  z: double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectResizeEx'); {$endif}
  z:=1;
  result := grip;
  with PIEAnimPoly(fHPolySel)^ do
    if _IsRectangle(Poly, PolyCount) then
    begin
      newx := CurrentLayer.Convxscr2bmp(newx);
      newy := CurrentLayer.Convyscr2bmp(newy);
      if aspectratio then
      begin
        w := flx2 - flx1 + 1;
        h := fly2 - fly1 + 1;
        if h = 0 then
          exit;
        if fSelectionAspectRatio>0 then
          z:=1/fSelectionAspectRatio
        else
          z := w / h;
        case grip of
          ieTopLeft: // left-top
            while true do
            begin
              newy := round((-flx2 + newx - 1 + z * fly2 + z) / z);
              if newy>=0 then
                break;
              inc(newx);
            end;
          ieTopRight: // right-top
            while true do
            begin
              newy := round((-newx + flx1 - 1 + z * fly2) / z);
              if newy>=0 then
                break;
              dec(newx);
            end;
          ieBottomRight: // right-bottom
            newy := round((newx - flx1 + 1 + z * fly1 - z) / z);
          ieBottomLeft: // left-bottom
            while true do
            begin
              newy := round((flx2 - newx + 1 + fly1 * z + z) / z);
              if newy<=fIEBitmap.Height then
                break;
              inc(newx);
            end;
          ieLeftSide: // left side
            begin
              while true do
              begin
                newy := round((-flx2 + newx - 1 + z * fly2 + z) / z);
                if newy>=0 then
                  break;
                inc(newx);
              end;
              grip := ieTopLeft;
            end;
          ieRightSide: // right side
            begin
              newy := round((newx - flx1 + 1 + z * fly1 - z) / z);
              grip := ieBottomRight;
            end;
          ieTopSide: // top side
            begin
              while true do
              begin
                newx := round(-z * fly2 + z * newy - z + flx2 + 1);
                if newx>=0 then
                  break;
                inc(newy);
              end;
              grip := ieTopLeft;
            end;
          ieBottomSide: // bottom side
            begin
              while true do
              begin
                newx := round(z * newy - z * fly1 + z + flx1 - 1);
                if newx<=fIEBitmap.Width then
                  break;
                dec(newy);
              end;
              grip := ieBottomRight;
            end;
        end;
      end;

      if (grip = ieTopRight) or (grip = ieBottomRight) or (grip = ieRightSide) then
        inc(newx);
      if (grip = ieBottomRight) or (grip = ieBottomLeft) or (grip = ieBottomSide) then
        inc(newy);

      x1 := RX1;
      y1 := RY1;
      x2 := RX2;
      y2 := RY2;
      case grip of
        ieTopLeft, ieBottomLeft, ieLeftSide: // left
          begin
            x1 := newx;
            if x1 = x2 then
              dec(x1);
          end;
        ieTopRight, ieBottomRight, ieRightSide: // right
          begin
            x2 := newx;
            if x1 = x2 then
              inc(x2);
          end;
      end;
      case grip of
        ieTopLeft, ieTopRight, ieTopSide: // top
          begin
            y1 := newy;
            if y1 = y2 then
              dec(y1);
          end;
        ieBottomRight, ieBottomLeft, ieBottomSide: // bottom
          begin
            y2 := newy;
            if y1 = y2 then
              inc(y2);
          end;
      end;

      if x1 > x2 then
      begin
        if (result = ieTopLeft) then
          result := ieTopRight // from left-top to right-top
        else if (result = ieBottomLeft) then
          result := ieBottomRight // from left-bottom to right-bottom
        else if (result = ieTopRight) then
          result := ieTopLeft // from right-top to left-top
        else if (result = ieBottomRight) then
          result := ieBottomLeft // from right-bottom to left-bottom
        else if (result = ieLeftSide) then
          result := ieRightSide // from left side to right side
        else if (result = ieRightSide) then
          result := ieLeftSide; // from right side to left side
      end;
      if y1 > y2 then
      begin
        if (result = ieTopRight) then
          result := ieBottomRight // from right-top to right-bottom
        else if (result = ieTopLeft) then
          result := ieBottomLeft // from left-top to left-bottom
        else if (result = ieBottomRight) then
          result := ieTopRight // from right-bottom to right-top
        else if (result = ieBottomLeft) then
          result := ieTopLeft // from left-bottom to left-top
        else if (result = ieTopSide) then
          result := ieBottomSide // from top side to bottom side
        else if (result = ieBottomSide) then
          result := ieTopSide; // from bottom side to top side
      end;
      AnimPolygonClear(integer(fHPolySel));
      OrdCor(x1, y1, x2, y2);

      if aspectratio then
        AdjustRectWithRatio(x1,y1,x2,y2,flx1,fly1,flx2,fly2,fIEBitmap.Width,fIEBitmap.Height,z);

      x1 := imax(0, imin(fIEBitmap.Width, x1));
      y1 := imax(0, imin(fIEBitmap.Height, y1));
      x2 := imax(0, imin(fIEBitmap.Width, x2));
      y2 := imax(0, imin(fIEBitmap.Height, y2));
      OrdCor(x1, y1, x2, y2);
      AnimPolygonAddPtEx(integer(fHPolySel), x1, y1);
      AnimPolygonAddPtEx(integer(fHPolySel), x2, y1);
      AnimPolygonAddPtEx(integer(fHPolySel), x2, y2);
      AnimPolygonAddPtEx(integer(fHPolySel), x1, y2);
      ShowSelectionEx(true);
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Move selection
// fMoving must be 0
// ox,oy are moving offsets

function TImageEnView.SelectMoveEx(fMoving, ox, oy: integer; cutBorders:boolean): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SelectMoveEx'); {$endif}
  result := fMoving;
  with PIEAnimPoly(fHPolySel)^ do
    fRectMoving := _IsRectangle(Poly, PolyCount);
  if not fRectMoving then
  begin
    fSelectionMask.TranslateBitmap(ox, oy, cutBorders); // modify ox and oy
  end
  else
  begin
    fSelectionMask.Empty; // moving a rectangle, full handled by AnimPolygonMove (2.2.4)
  end;
  if (ox = 0) and (oy = 0) then
    exit;
  AnimPolygonMove(integer(fHPolySel), ox, oy, fIEBitmap.Width, fIEBitmap.Height, cutBorders);
  AniPolyFunc(self, true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.MoveSelection

<FM>Declaration<FC>
procedure MoveSelection(OffsetX,OffsetY:integer);

<FM>Description<FN>
MoveSelection moves the current selection by the specified horizontal and vertical offsets.

<FM>Example<FC>
ImageEnVIew.MoveSelection(-5,-5);

!!}
procedure TImageEnVIew.MoveSelection(OffsetX, OffsetY: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MoveSelection'); {$endif}
  SelectMoveEx(0, OffsetX, OffsetY, iesoCutBorders in fSelectionOptions);
  EndSelect;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a point to current selection
// To deselect use Deselect

{!!
<FS>TImageEnView.AddSelPoint

<FM>Declaration<FC>
procedure AddSelPoint(x,y:integer);

<FM>Description<FN>
AddSelPoint adds a point to the current polygonal selection. If <A TImageEnView.SelectionBase> is iesbClientArea (default), all coordinates depend upon actual Zoom and scrolling. Otherwise, if SelectionBase is iesbBitmap all coordinates refer to bitmap pixels.

Use <A TImageEnView.EndSelect> to terminate selection by code.

!!}
procedure TImageEnView.AddSelPoint(x, y: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AddSelPoint'); {$endif}
  AddSelPointEx(x, y);
  fDBToDraw := true;
  Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Same of AddSelPoint
// add a point to current selection
// To deselect use Deselect
// DO NOT CALL "EndSelect"

procedure TImageEnView.AddSelPointEx(x, y: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AddSelPointEx'); {$endif}
  if fSelectionBase = iesbClientArea then
  begin
    x := CurrentLayer.ConvXScr2Bmp(x);
    y := CurrentLayer.ConvYScr2Bmp(y);
    x := imax(0, imin(fIEBitmap.Width, x));
    y := imax(0, imin(fIEBitmap.Height, y));
  end;
  AnimPolygonAddPt(integer(fHPolySel), x, y);
  ShowSelectionEx(true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a "break" to insert a new selection

{!!
<FS>TImageEnView.AddSelBreak

<FM>Declaration<FC>
procedure AddSelBreak;

<FM>Description<FN>
AddSelBreak breaks current selection to begin a new selection.

<FM>Example<FC>

// this makes two selections
ImageEnView1.Select(10,10,100,100);
ImageEnView1.AddSelBreak;
ImageEnView1.Select(200,200,250,250);

!!}
procedure TImageEnView.AddSelBreak;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AddSelBreak'); {$endif}
  AddSelBreakEx;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a "break" to insert a new selection
// DO NOT CALL "EndSelect"

procedure TImageEnView.AddSelBreakEx;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AddSelBreakEx'); {$endif}
  if PIEAnimPoly(fHPolySel)^.PolyCount > 0 then
    AnimPolygonAddBreak(integer(fHPolySel));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Show current selection
// d=true : draw now
// d=false : draw at next timer tick

procedure TImageEnView.ShowSelectionEx(d: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ShowSelectionEx'); {$endif}
  PIEAnimPoly(fHPolySel)^.Enabled := True;
  if d then
    AniPolyFunc(self, true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Hides current selection
// dd=true : remove selection performing a Paint
// dd=false : do not remove selection now

procedure TImageEnView.HideSelectionEx(dd: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.HideSelectionEx'); {$endif}
  PIEAnimPoly(fHPolySel)^.Enabled := False;
  if dd and (fLockPaint = 0) then
    Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetVisibleSelection(vv: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetVisibleSelection'); {$endif}
  fVisibleSelection:=vv;
  if vv then
    ShowSelectionEx(true)
  else
    HideSelectionEx(true);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.VisibleSelection

<FM>Declaration<FC>
property VisibleSelection:boolean;

<FM>Description<FN>
VisibleSelection shows (True) or hides (False) the current selection.  When selection is hidden, this property is still valid.

Run Time
!!}
function TImageEnView.GetVisibleSelection: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetVisibleSelection'); {$endif}
  result:=fVisibleSelection;
  //result := PIEAnimPOly(fHPolySel)^.Enabled;  // changed in 2.2.2b
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectionOptions

<FM>Declaration<FC>
property SelectionOptions:<A TIESelectionOptions>;

<FM>Description<FN>
SelectionOptions controls the behavior of the selections.
!!}
procedure TImageEnView.SetSelectionOptions(v: TIESelectionOptions);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectionOptions'); {$endif}
  fSelectionOptions := v;
  with PIEAnimPoly(fHPolySel)^ do
  begin
    Animated := iesoAnimated in fSelectionOptions;
    Sizeable := iesoSizeable in fSelectionOptions;
  end;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// reset vertex number of the animated polygon "ap"

{!!
<FS>TImageEnView.AnimPolygonClear

<FM>Declaration<FC>
procedure AnimPolygonClear(ap:integer);

<FM>Description<FN>
Removes all points of polygon ap.
!!}
procedure TImageEnView.AnimPolygonClear(ap: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonClear'); {$endif}
  with PIEAnimPOly(ap)^ do
  begin
    freemem(Poly);
    GetMem(Poly, 0);
    PolyCount := 0;
  end;
  if fLockPaint = 0 then
    Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Removes last added sub-polygon

procedure TImageEnView.AnimPolygonRemoveLast(ap: integer);
var
  q: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonRemoveLast'); {$endif}
  with PIEAnimPoly(ap)^ do
    for q := PolyCount - 1 downto 0 do
      if (Poly^[q].x = IESELBREAK) or (q = 0) then
      begin
        PolyCount := q;
        if PolyCount = 0 then
          AnimPolygonClear(ap)
        else if fLockPaint = 0 then
          Paint;
        break;
      end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// removes last point

procedure TImageEnView.AnimPolygonRemoveLastPoint(ap: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonRemoveLastPoint'); {$endif}
  with PIEAnimPoly(ap)^ do
  begin
    dec(PolyCount);
    while (PolyCount > 0) and (Poly^[PolyCount - 1].x = IESELBREAK) do
      dec(PolyCount);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Add a "break" in the animated polygon

procedure TImageEnView.AnimPolygonAddBreak(ap: integer);
var
  tmp: PPointArray;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonAddBreak'); {$endif}
  with PIEAnimPoly(ap)^ do
  begin
    if (PolyCount mod 64) = 0 then
    begin
      // allocate 64 points block
      GetMem(tmp, sizeof(TPoint) * (PolyCount + 64));
      if PolyCount > 0 then
      begin
        CopyMemory(tmp, Poly, sizeof(TPoint) * PolyCount);
        FreeMem(Poly);
      end;
      Poly := tmp;
    end;
    if (PolyCount > 0) and (Poly^[PolyCount - 1].x = IESELBREAK) then
      exit;
    Poly^[PolyCount] := Point(IESELBREAK, IESELBREAK);
    inc(PolyCount);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a vertex to animated polygon "ap", doesn't paint

procedure TImageEnView.AnimPolygonAddPtEx(ap: integer; x, y: integer);
var
  tmp: PPointArray;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonAddPtEx'); {$endif}
  // add a point
  with PIEAnimPoly(ap)^ do
  begin
    if (PolyCount and 63) = 0 then
    begin
      // allocate block of 64 points
      GetMem(tmp, sizeof(TPoint) * (PolyCount + 64));
      if PolyCount > 0 then
      begin
        CopyMemory(tmp, Poly, sizeof(TPoint) * PolyCount);
        FreeMem(Poly);
      end;
      Poly := tmp;
    end;
    Poly^[PolyCount] := Point(x, y);
    inc(PolyCount);
    // calc rectangle
    if PolyCount = 2 then
    begin
      // only two points
      RX1 := Poly^[0].x;
      RY1 := Poly^[0].y;
      RX2 := Poly^[1].x;
      RY2 := Poly^[1].y;
      OrdCor(RX1, RY1, RX2, RY2);
    end
    else if PolyCount > 2 then
    begin
      // more than two points (R__ are already valid)
      RX1 := imin(RX1, x);
      RY1 := imin(RY1, y);
      RX2 := imax(RX2, x);
      RY2 := imax(RY2, y);
    end;
  end;
  fSel := true;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.AnimPolygonEnabled(ap:integer; Value:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonEnabled'); {$endif}
  with PIEAnimPoly(ap)^ do
    Enabled:=Value;
  AniPolyFunc(self,true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// move the polygon

procedure TImageEnView.AnimPolygonMove(ap: integer; ox, oy: integer; max_x, max_y: integer; CutSel: boolean);
var
  q: integer;
  procedure LimitOXOY;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonMove.LimitOXOY'); {$endif}
    with PIEAnimPoly(ap)^ do
    begin
      if (ox + RX1) < 0 then
        dec(ox, (ox + RX1));
      if (ox + RX2) >= max_x then
        dec(ox, (ox + RX2 - max_x + 0));
      if (oy + RY1) < 0 then
        dec(oy, (oy + RY1));
      if (oy + RY2) >= max_y then
        dec(oy, (oy + RY2 - max_y + 0));
    end;
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonMove'); {$endif}
  if (ox = 0) and (oy = 0) then
    exit;
  if fLockPaint = 0 then
    Paint;
  with PIEAnimPoly(ap)^ do
  begin
    if not CutSel then
    begin
      LimitOXOY;
      if RX1 + ox >= max_x then
        exit;
      if RY1 + oy >= max_y then
        exit;
      if RX2 + ox <= 0 then
        exit;
      if RY2 + oy <= 0 then
        exit;
    end
    else
    begin
      if RX1 + ox >= max_x then
        LimitOXOY;
      if RY1 + oy >= max_y then
        LimitOXOY;
      if RX2 + ox <= 0 then
        LimitOXOY;
      if RY2 + oy <= 0 then
        LimitOXOY;
    end;
    RX1 := ilimit(RX1 + ox, 0, max_x);
    RY1 := ilimit(RY1 + oy, 0, max_y);
    RX2 := ilimit(RX2 + ox, 0, max_x);
    RY2 := ilimit(RY2 + oy, 0, max_y);
    for q := 0 to PolyCount - 1 do
      with Poly^[q] do
        if x <> IESELBREAK then
        begin
          x := ilimit(x + ox, 0, max_x);
          y := ilimit(y + oy, 0, max_y);
        end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a vertex to the polygon "ap"
// x and y are bitmap based coordinate

{!!
<FS>TImageEnView.AnimPolygonAddPt

<FM>Declaration<FC>
procedure AnimPolygonAddPt(ap:integer; x,y:integer);

<FM>Description<FN>
Adds a new point to the polygon ap.
x,y are the point coordinates (bitmap based coordinates).

!!}
procedure TImageEnView.AnimPolygonAddPt(ap: integer; x, y: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonAddPt'); {$endif}
  AnimPolygonAddPtEx(ap, x, y);
  if fLockPaint = 0 then
    Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Create a new animated polygon
// return the polygon handle

{!!
<FS>TImageEnView.AnimPolygonNew

<FM>Declaration<FC>
function TImageEnView.AnimPolygonNew(VColor1,VColor2:TColor; VAnimated:boolean; VSizeable:boolean):integer;

<FM>Description<FN>
Creates a new animated polygon.

VColor1 and VColor2 specify the two colors of animation.
If VAnimated is True, the polygon is animated.
If VSizeable is True, the polygon is sizeable.

Returns an index of the new polygon.

!!}
function TImageEnView.AnimPolygonNew(VColor1, VColor2: TColor; VAnimated: boolean; VSizeable: boolean): integer;
var
  pp: PIEAnimPoly;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonNew'); {$endif}
  getmem(pp, sizeof(TIEAnimPoly));
  fAnimPoly.Add(pp);
  with pp^ do
  begin
    PolyCount := 0;
    getmem(Poly, 0);
    Color1 := VColor1;
    Color2 := VColor2;
    Animated := VAnimated;
    Sizeable := VSizeable;
    AniFt := 0;
    if not (csDesigning in ComponentState) then
      Canvas := self.Canvas;
    Enabled := True;
    RX1 := 0;
    RY1 := 0;
    RX2 := 0;
    RY2 := 0;
    DrawPixelPtr:=fDrawPixelPtr;
    DrawPixelBitmap:=fDrawPixelBitmap;
  end;
  if (fAnimPoly.Count = 1) and not (csDesigning in ComponentState) then
    fAnimPolyTimer.Enabled := True;
  result := integer(pp);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// removes the animated polygon "ap"

{!!
<FS>TImageEnView.AnimPolygonDel

<FM>Declaration<FC>
procedure AnimPolygonDel(ap:integer);

<FM>Description<FN>
Removes animated polygon ap (value returned from AnimPolygonNew).

!!}
procedure TImageEnView.AnimPolygonDel(ap: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AnimPolygonDel'); {$endif}
  if ap<>0 then
  begin
    freemem(PIEAnimPoly(ap)^.Poly);
    freemem(PIEAnimPoly(ap));
    fAnimPoly.Delete(fAnimPoly.IndexOf(pointer(ap)));
    if fAnimPoly.Count = 0 then
      fAnimPolyTimer.Enabled := False;
    if fLockPaint = 0 then
      Paint;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure LineDDAProc(x, y: integer; self: PIEAnimPoly); stdcall;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LineDDAProc'); {$endif}
  with self^ do
  begin
    // 2.3.1 (due SetPixel bug on Vista - as Window Classic theme)
    if C1 < 4 then
      DrawPixelPtr^:= TColor2TRGB(Color1)
    else if C1 < 7 then
      DrawPixelPtr^:= TColor2TRGB(Color2)
    else
    begin // fC1=6
      DrawPixelPtr^:= TColor2TRGB(Color2);
      C1 := -1;
    end;
    Canvas.Draw(x,y,DrawPixelBitmap);
    inc(C1);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// this makes selection animated

procedure TImageEnView.TimerEvent(Sender: TObject);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.TimerEvent'); {$endif}
  AniPolyFunc(Sender, true);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoOnDrawPolygon(polygon:integer; point:integer; Canvas:TCanvas; x,y:integer);
begin
  if assigned(fOnDrawPolygon) then
    fOnDrawPolygon(self,polygon,point,Canvas,x,y);
end;

// Draw the selection

procedure TImageEnView.AniPolyFunc(Sender: TObject; UseLockPaint: boolean);
var
  q, p: integer;
  pp: PIEAnimPoly;
  x1, y1, x2, y2: integer;
  lbreak: TPoint;
  grx1, gry1, grx2, gry2: integer;
  xanimated: boolean;
  xtime:dword;
  invisible:boolean;
  iec:TIECanvas;
  procedure DrawGrip(x1,y1,x2,y2:integer);
  begin
    case fGripShape of
      iegsBox:
        iec.Rectangle(x1,y1,x2,y2);
      iegsCircle:
        iec.Ellipse(x1,y1,x2,y2);
    end;
  end;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AniPolyFunc'); {$endif}
  if not HasParentWindow then
    exit;
  if not fVisibleSelection then
    exit;
  xanimated := false;
  for q := 0 to fAnimPoly.Count - 1 do
  begin
    pp := PIEAnimPoly(fAnimPoly[q]);
    with pp^ do
      if Enabled then
      begin

        if Animated then
          xanimated := true;

        if Animated and (not fRectSelecting) and (not fPolySelecting)
          and (not fCircSelecting) and (Sender is TTimer) and (fRectResizing = ieNone) and (fSelectMoving < 0) then
        begin
          inc(AniFt);
          if AniFt >= 10 then
            AniFt := 0;
          inc(fAniCounter);
        end;

        with Canvas.ClipRect do
          invisible:=(Left=0) and (Top=0) and (Right=0) and (Bottom=0);

        if (not invisible) and (fLockPaint = 0) and ((Canvas.LockCount = 0) or (not UseLockPaint)) and (not fMouseMoveScrolling) then
        begin

          // draw grips
          if Sizeable and _IsRectangle(Poly, PolyCount) and (not fRectSelecting) and (fSelectMoving = -1) then
          begin
            iec:=TIECanvas.Create(Canvas,true,true);
            with iec do
            begin
              Brush.Style := fGripBrushStyle;
              Brush.Color := fGripColor2;
              Pen.Color := fGripColor1;
              grx1 := 10000000;
              gry1 := grx1;
              gry2 := -1000000;
              grx2 := gry2;
              for p := 0 to PolyCount - 1 do
              begin
                if Poly^[p].x <> IESELBREAK then
                begin
                  x1 := CurrentLayer.ConvXBmp2Scr(Poly^[p].x);
                  y1 := CurrentLayer.ConvYBmp2Scr(Poly^[p].y);
                  Ellipse(x1 - fGripSize, y1 - fGripSize, x1 + fGripSize, y1 + fGripSize);
                  if x1 < grx1 then
                    grx1 := x1;
                  if y1 < gry1 then
                    gry1 := y1;
                  if x1 > grx2 then
                    grx2 := x1;
                  if y1 > gry2 then
                    gry2 := y1;
                end;
              end;
              if fExtendedGrips then
              begin
                x1 := (grx2 + grx1) div 2;
                y1 := (gry2 + gry1) div 2;
                Ellipse(x1 - fGripSize, gry1 - fGripSize, x1 + fGripSize, gry1 + fGripSize);
                Ellipse(grx1 - fGripSize, y1 - fGripSize, grx1 + fGripSize, y1 + fGripSize);
                Ellipse(grx2 - fGripSize, y1 - fGripSize, grx2 + fGripSize, y1 + fGripSize);
                Ellipse(x1 - fGripSize, gry2 - fGripSize, x1 + fGripSize, gry2 + fGripSize);
              end;
            end;
            iec.Free;
          end; // end draw grips

          if (pp = fHPolySel) and (not fSelectionMask.IsEmpty) and (fRectResizing = ieNone) and (not fRectSelecting)
            and (not fCircSelecting) and (not fPolySelecting) and (not fRectMoving) then
          begin
            // draw selection
            if (not fDelayDisplaySelection) or (fStable2 = 0) then
            begin
              xtime:=GetTickCount;
              with CurrentLayer.DrawingInfo do
                fSelectionMask.DrawOutline(Canvas, XDst, YDst, WidthDst, HeightDst, XSrc, YSrc, WidthSrc, HeightSrc, fAniCounter, fSelColor1, fSelColor2);

              xtime:=GetTickCount-xtime;
              if fDelayTimer<0 then
                fAnimPolyTimer.Interval:=imax(210,trunc(xtime*100/(-fDelayTimer)));
            end;
          end
          else
          begin
            C1 := AniFt;
            Canvas.pen.mode := pmCopy;
            // draw user polygon or building selection
            if PolyCount > 0 then
            begin
              if _IsRectangle(Poly, PolyCount) then
              begin
                // it is a rectangle
                x1 := CurrentLayer.ConvXBmp2Scr(Poly^[0].x);
                y1 := CurrentLayer.ConvYBmp2Scr(Poly^[0].y);
                x2 := CurrentLayer.ConvXBmp2Scr(Poly^[2].x) - 1;
                y2 := CurrentLayer.ConvYBmp2Scr(Poly^[2].y) - 1;
                if q=0 then
                  C1 := 0;
                LineDDA(x1, y1, x2, y1, @LineDDAProc, integer(pp));
                DoOnDrawPolygon(q,1,Canvas,x2,y1);
                if q=0 then
                  C1 := 0;
                LineDDA(x2, y1, x2, y2, @LineDDAProc, integer(pp));
                DoOnDrawPolygon(q,2,Canvas,x2,y2);
                if q=0 then
                  C1 := 0;
                LineDDA(x2, y2, x1, y2, @LineDDAProc, integer(pp));
                DoOnDrawPolygon(q,3,Canvas,x1,y2);
                if q=0 then
                  C1 := 0;
                LineDDA(x1, y1, x1, y2, @LineDDAProc, integer(pp));

                DoOnDrawPolygon(q,0,Canvas,x1,y1);
              end
              else
              begin
                // this is a polygon
                lbreak := Poly^[0];
                p := 1;
                while p < PolyCount do
                begin
                  if Poly^[p].x = IESELBREAK then
                  begin
                    // closes sub-polygon
                    x1 := CurrentLayer.ConvXBmp2Scr(Poly^[p - 1].x);
                    y1 := CurrentLayer.ConvYBmp2Scr(Poly^[p - 1].y);
                    x2 := CurrentLayer.ConvXBmp2Scr(lbreak.x);
                    y2 := CurrentLayer.ConvYBmp2Scr(lbreak.y);
                    LineDDA(x1, y1, x2, y2, @LineDDAProc, integer(pp));
                    DoOnDrawPolygon(q,p-1,Canvas,x1,y1);
                    inc(p);
                    lbreak := Poly^[p];
                  end
                  else
                  begin
                    x1 := CurrentLayer.ConvXBmp2Scr(Poly^[p - 1].x);
                    y1 := CurrentLayer.ConvYBmp2Scr(Poly^[p - 1].y);
                    x2 := CurrentLayer.ConvXBmp2Scr(Poly^[p].x);
                    y2 := CurrentLayer.ConvYBmp2Scr(Poly^[p].y);
                    LineDDA(x1, y1, x2, y2, @LineDDAProc, integer(pp));
                    DoOnDrawPolygon(q,p-1,Canvas,x1,y1);
                  end;
                  inc(p);
                end;
                // closes last sub-polygon
                if (not fPolySelecting) then
                begin
                  x1 := CurrentLayer.ConvXBmp2Scr(Poly^[PolyCount - 1].x);
                  y1 := CurrentLayer.ConvYBmp2Scr(Poly^[PolyCount - 1].y);
                  x2 := CurrentLayer.ConvXBmp2Scr(lbreak.x);
                  y2 := CurrentLayer.ConvYBmp2Scr(lbreak.y);
                  LineDDA(x1, y1, x2, y2, @LineDDAProc, integer(pp));
                  DoOnDrawPolygon(q,p-1,Canvas,x1,y1);
                end;
              end;
            end;
          end;
        end;
      end;  // end of polygon "enabled"

  end;

  if (fStable = 0) and (fStable2 = 0) and (not xanimated) then
    fAnimPolyTimer.Enabled := false
  else if fAnimPolyTimer.Enabled = false then
    fAnimPolyTimer.Enabled := true;
  if fStable > 0 then
  begin
    dec(fStable);
    if fStable = 0 then
      Update;
  end;
  if fStable2 > 0 then
    dec(fStable2);

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.GetGripAt

<FM>Declaration<FC>
function GetGripAt(x,y:integer):<A TIEGrip>;

<FM>Description<FN>
Returns the selection grip at mouse position specified by x, y.

!!}
function TImageEnView.GetGripAt(x, y: integer): TIEGrip;
var
  p, x1, y1, x2, y2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetGripAt'); {$endif}
  result := ieNone;
  with PIEAnimPoly(fHPolySel)^ do
    if Enabled and Sizeable and _IsRectangle(Poly, PolyCount) and not fRectSelecting then
    begin
      // try grips
      for p := 0 to PolyCount - 1 do
      begin
        if Poly^[p].x <> IESELBREAK then
        begin
          x1 := CurrentLayer.ConvXBmp2Scr(Poly^[p].x);
          y1 := CurrentLayer.ConvYBmp2Scr(Poly^[p].y);
          if _InRect(x, y, x1 - fGripSize, y1 - fGripSize, x1 + fGripSize, y1 + fGripSize) then
          begin
            result := TIEGrip(p + 1);
            break;
          end;
        end;
      end;
      if result = ieNone then
      begin
        // try sides
        x1 := CurrentLayer.ConvXBmp2Scr(RX1);
        y1 := CurrentLayer.ConvYBmp2Scr(RY1);
        x2 := CurrentLayer.ConvXBmp2Scr(RX2);
        y2 := CurrentLayer.ConvYBmp2Scr(RY2);
        if _DistPoint2Seg(x, y, x1, y1, x1, y2) < 3 then
          result := ieLeftSide // left
        else if _DistPoint2Seg(x, y, x2, y1, x2, y2) < 3 then
          result := ieRightSide // right
        else if _DistPoint2Seg(x, y, x1, y1, x2, y1) < 3 then
          result := ieTopSide // top
        else if _DistPoint2seg(x, y, x1, y2, x2, y2) < 3 then
          result := ieBottomSide; // bottom
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Return the grip on position x,y
// ieNone if none or Shift is pressed

function TImageEnView.GetResizingGrip(x, y: integer; Shift: TShiftState): TIEGrip;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetResizingGrip'); {$endif}
  if (ssShift in Shift) then
    result := ieNone
  else
    result := GetGripAt(x, y);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// return 0 if x,y is inside selection and shift is not pressed
// -1 otherwise

function TImageEnView.GetMovingGrip(x, y: integer; Shift: TShiftState): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetMovingGrip'); {$endif}
  result := -1;
  if (not (ssShift in Shift)) and (not fSelectionMask.IsEmpty) and (not fRectSelecting) and (not fPolySelecting) and (not fCircSelecting) and
    fSelectionMask.IsPointInside(CurrentLayer.Convxscr2bmp(x), CurrentLayer.Convyscr2bmp(y)) and (iesoMoveable in fSelectionOptions) then
    result := 0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnView.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  lx, ly, i: integer;
  {$IFNDEF OCXVERSION}
  ParForm:TCustomForm;
  {$ENDIF}
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseDown'); {$endif}
  inherited;

{$IFDEF OCXVERSION}
  SetFocus;
{$ELSE}
  ParForm:=GetParentForm(Self);
  if (ParForm<>nil) and (ParForm.Visible) and CanFocus then
    SetFocus;
{$ENDIF}

  fSaveZoomFilter := fZoomFilter;

  if (Button = mbRight) and (ssLeft in Shift) then
    // left button pressed
    exit;

  if (Button = mbLeft) or (miZoom in fMouseInteract) then
  begin

    if (not (miScroll in fMouseInteract)) and fDelayZoomFilter then
      fZoomFilter := rfNone;

    fSavedSelectionBase := fSelectionBase;
    fSelectionBase := iesbClientArea;

    lx := x;
    ly := y;
    fHSX0 := ilimit(lx, fOffX, fOffX + fExtX);
    fHSY0 := ilimit(ly, fOffY, fOffY + fExtY);
    x:=ilimit(lx, CurrentLayer.ClientAreaBox.Left, CurrentLayer.ClientAreaBox.Right+1); // 2.2.2
    y:=ilimit(ly, CurrentLayer.ClientAreaBox.Top, CurrentLayer.ClientAreaBox.Bottom+1); // 2.2.2

    fPredLX := lx;
    fPredLY := ly;
    fPredX := x;
    fPredY := y;
    fHSX1 := x;
    fHSY1 := y;
    fHSVX1 := ViewX;
    fHSVY1 := ViewY;
    fMMoveX := x;
    fMMoveY := y;
    fStartingPolyCount := PIEAnimPoly(fHPolySel)^.PolyCount;
    if (Button = mbLeft) and ((miSelectPolygon in fMouseInteract) or (miSelectLasso in fMouseInteract)) then
    begin
      LayersFixRotations;
      DoBeforeSelectionChange;
      fSelectMoving := GetMovingGrip(x, y, Shift);
      if fSelectMoving = -1 then
      begin
        if (ssAlt in Shift) or fForceALTkey then
          with PIEAnimPoly(fHPolySel)^ do
            if (PolyCount > 0) and (Poly^[PolyCount - 1].x <> IESELBREAK) then
              _CastPolySelCC(Poly^[PolyCount - 1].x - fViewX + fOffX, Poly^[PolyCount - 1].y - fViewY + fOffY, x, y);
        if (not fPolySelecting) then
        begin
          if (ssShift in Shift) and (fEnableShiftKey) then
            AddSelBreakEx
          else
            DeSelect;
        end;
        AddSelPointEx(X, Y);
        fPolySelecting := true;
        fLassoSelecting := miSelectLasso in fMouseInteract;
        DoSelectionChanging;
      end;
    end
    else if (Button = mbLeft) and (miSelect in fMouseInteract) then
    begin
      LayersFixRotations;
      DoBeforeSelectionChange;
      fRectResizing := GetResizingGrip(lx, ly, Shift);
      if fRectResizing = ieNone then
        fSelectMoving := GetMovingGrip(lx, ly, Shift);
      if (fRectResizing = ieNone) and (fSelectMoving = -1) then
      begin
        // new rectangular selection
        fRectSelecting := True;
        if (fSelectionAspectRatio = 0) then
        begin
          // fixed selection
          MouseSelectRectangle(x, y, Shift);
        end;
        DoSelectionChanging;
      end;
      if fRectResizing <> ieNone then
        with PIEAnimPoly(fHPolySel)^ do
        begin
          flx1 := RX1;
          flx2 := RX2;
          fly1 := RY1;
          fly2 := RY2;
        end;
    end
    else if (Button = mbLeft) and (miSelectZoom in fMouseInteract) then
    begin
      fRectSelecting := True;
      DoSelectionChanging;
      if miSelectZoom in fMouseInteract then
        SaveSelection;
    end
    else if (Button = mbLeft) and (miSelectCircle in fMouseInteract) then
    begin
      LayersFixRotations;
      DoBeforeSelectionChange;
      fSelectMoving := GetMovingGrip(x, y, Shift);
      if fSelectMoving = -1 then
      begin
        fCircSelecting := True;
        ShowSelectionEx(false);
        if (fSelectionAspectRatio = 0) then
        begin
          // fixed selection
          MouseSelectCircle(x, y, Shift);
        end;
        DoSelectionChanging;
      end;
    end
    else if (Button = mbLeft) and (miSelectMagicWand in fMouseInteract) then
    begin
      LayersFixRotations;
      DoBeforeSelectionChange;
      fSelectMoving := GetMovingGrip(x, y, Shift);
    end
    else if (Button = mbLeft) and (((miMoveLayers in fMouseInteract) or (miResizeLayers in fMouseInteract) or (miRotateLayers in fMouseInteract))) then
    begin
      fMovResRotLayerStarted:=false;
      if miResizeLayers in fMouseInteract then
        fLayerResizing := FindLayerGrip(lx, ly)
      else
        fLayerResizing := ieNone;
      if (fLayerResizing <> ieNone) then
      begin
        LayersFixRotations;
        with TIELayer(fLayers[fLayersCurrent]) do
        begin
          fLyrResizingClientAreaBox := ClientAreaBox;
          for i:=0 to 3 do
            fLyrResizingRotatedBox[i]:= DrawingInfo.RotatedDest[i];
        end;
      end;
      if (fLayerResizing = ieNone) and ((miMoveLayers in fMouseInteract) or (miRotatelayers in fMouseInteract)) then
      begin
        if (miRotateLayers in fMouseInteract) and (FindLayerGrip(lx,ly)=ieRotationCenter) then
          // begin rotation center moving
          fMovingRotationCenter:=LayersCurrent
        else
        begin
          if (miRotateLayers in fMouseInteract) and (LayersCurrent>-1) and not IsPointInsideLayer(lx,ly,LayersCurrent) then
          begin
            // start layer rotating current layer
            fRotatingLayer := LayersCurrent;
          end
          else
          begin
            // begin layer moving
            fMovingLayer := FindLayerAt(lx, ly);
            if fMovingLayer > -1 then
            begin
              SetLayersCurrent(fMovingLayer);
              DoLayerNotify(fLayersCurrent, ielSelected);
            end;
            if (fMovingLayer > -1) and (not TIELayer(fLayers[fLayersCurrent]).Locked) then
              SetTempCursor(1790);
          end;
        end;
      end;
    end;
    if (Button = mbLeft) and (miScroll in fMouseInteract) and RequiresScrollBars then // warning, not follows the previous if..then...else
      SetTempCursor(1782);
    fSelectionBase := fSavedSelectionBase;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Called by MouseMoveScroll, when it is scrolled the view (ViewXY)
// of scx and scy pixels.

procedure TImageEnView.SubMouseMoveScroll(scx, scy: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SubMouseMoveScroll'); {$endif}
  dec(fMMoveX, scx);
  dec(fMMoveY, scy);
  dec(fPredX, scx);
  dec(fPredY, scy);
  dec(fPredLX, scx);
  dec(fPredLY, scy);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// calls SubMouseMoveScroll method
// scroll if the mouse is out of the component

function TImageEnView.MouseMoveScroll: boolean;
var
  pt: Tpoint;
  scx, scy, lvx, lvy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseMoveScroll'); {$endif}
  fMouseMoveScrolling := true;
  try
    result := false;
    repeat
      // calc movement
      getcursorpos(pt);
      pt := ScreenToClient(pt);
      if pt.x < fOffX then
        scx := pt.x - fOffX
      else if pt.x > (fOffX + fExtX - 1) then
        scx := pt.x - (fOffX + fExtX - 1)
      else
        scx := 0;
      if pt.y < fOffY then
        scy := pt.y - fOffY
      else if pt.y > (fOffY + fExtY - 1) then
        scy := pt.y - (fOffY + fExtY - 1)
      else
        scy := 0;
      if (scx = 0) and (scy = 0) then
      begin
        break; // EXIT POINT!
      end;
      lvx := fViewX;
      lvy := fViewY;
      SetViewXY(fViewX + scx, fViewY + scy);
      if (lvx = fViewX) and (lvy = fViewY) then
      begin
        break; // EXIT POINT!
      end;
      result := true;
      dec(lvx, fViewX);
      dec(lvy, fViewY);
      inc(fHSX1, lvx);
      inc(fHSY1, lvy);
      inc(fHSX0, lvx);
      inc(fHSY0, lvy);
      SubMouseMoveScroll(scx, scy);
    until false;
  finally
    fMouseMoveScrolling := false;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.MouseResizeLayer(clientlx, cliently: integer; aspectratio:boolean);
var
  w, h, lx,ly: integer;
  layer: TIELayer;
  plx,ply:integer;
  lr:TIEGrip;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseResizeLayer'); {$endif}
  layer := TIELayer(fLayers[fLayersCurrent]);
  if layer.ResizedWidth = 0 then
    w := layer.Bitmap.Width
  else
    w := layer.ResizedWidth;
  if layer.ResizedHeight = 0 then
    h := layer.Bitmap.Height
  else
    h := layer.ResizedHeight;

  lx  := XScr2Bmp(clientlx);
  ly  := YScr2Bmp(cliently);
  plx := XScr2Bmp(fPredLX);
  ply := YScr2Bmp(fPredLY);

  lr := fLayerResizing;

  if aspectratio then
    case lr of
      ieTopLeft: // left-top
        begin
          ly := YScr2Bmp( trunc( (clientlx-fLyrResizingClientAreaBox.Left)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Top );
        end;
      ieTopRight: // right-top
        begin
          ly := YScr2Bmp( trunc( (-clientlx+fLyrResizingClientAreaBox.Right)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Top );
        end;
      ieBottomRight: // right-bottom
        begin
          ly := YScr2Bmp( trunc( (clientlx-fLyrResizingClientAreaBox.Left)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Top );
        end;
      ieBottomLeft: // left-bottom
        begin
          ly := YScr2Bmp( trunc( (-clientlx+fLyrResizingClientAreaBox.Left)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Bottom );
        end;
      ieLeftSide: // left side
        begin
          ly := YScr2Bmp( trunc( (-clientlx+fLyrResizingClientAreaBox.Left)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Bottom );
          lr := ieBottomLeft;
        end;
      ieRightSide: // right side
        begin
          ly := YScr2Bmp( trunc( (clientlx-fLyrResizingClientAreaBox.Left)*(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Top );
          lr := ieBottomRight;
        end;
      ieTopSide: // top side
        begin
          lx := XScr2Bmp( trunc( (cliently-fLyrResizingClientAreaBox.Top)/(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Left );
          lr := ieTopLeft;
        end;
      ieBottomSide: // bottom side
        begin
          lx := XScr2Bmp( trunc( (cliently-fLyrResizingClientAreaBox.Top)/(layer.Bitmap.Height/layer.Bitmap.Width) ) +fLyrResizingClientAreaBox.Left );
          lr := ieBottomRight;
        end;
      else
    end;

  case lr of
    ieTopLeft: // left-top
      begin
        layer.ResizedWidth  := imax(1, w + (layer.PosX-lx) );
        layer.ResizedHeight := imax(1, h + (layer.PosY-ly));
        if layer.ResizedWidth > 1 then
          layer.PosX := lx;
        if layer.ResizedHeight > 1 then
          layer.PosY := ly;
      end;
    ieTopRight: // right-top
      begin
        layer.ResizedWidth  := imax(1, lx-layer.PosX );
        layer.ResizedHeight := imax(1, h + (layer.PosY-ly));
        if layer.ResizedHeight > 1 then
          layer.PosY := ly;
      end;
    ieBottomRight: // right-bottom
      begin
        //if layer.Rotate=0 then
        //begin
          layer.ResizedWidth  := imax(1, (lx - XScr2Bmp(fLyrResizingClientAreaBox.Left)));
          layer.ResizedHeight := imax(1, (ly - YScr2Bmp(fLyrResizingClientAreaBox.Top)));
        //end
        //else
        //begin
        //  IERotatePoint(lx,ly,-layer.Rotate,trunc(layer.Width*layer.RotateCenterX),trunc(layer.Height*layer.RotateCenterY));
        //  layer.ResizedWidth  := imax(1, (lx - XScr2Bmp(fLyrResizingRotatedBox[0].X)));
        //  layer.ResizedHeight := imax(1, (ly - YScr2Bmp(fLyrResizingRotatedBox[0].Y)));
        //end;
      end;
    ieBottomLeft: // left-bottom
      begin
        layer.ResizedWidth  := imax(1, w + (layer.PosX-lx) );
        layer.ResizedHeight := imax(1, (ly - YScr2Bmp(fLyrResizingClientAreaBox.Top)));
        if layer.ResizedWidth > 1 then
          layer.PosX := lx;
      end;
    ieLeftSide: // left side
      begin
        layer.ResizedWidth := imax(1, w - (lx - plx));
        if layer.ResizedWidth > 1 then
          layer.PosX := layer.PosX + (lx - plx);
      end;
    ieRightSide: // right side
      begin
        layer.ResizedWidth := imax(1, (lx - XScr2Bmp(fLyrResizingClientAreaBox.Left)));
      end;
    ieTopSide: // top side
      begin
        layer.ResizedHeight := imax(1, h + (layer.PosY-ly));
        if layer.ResizedHeight > 1 then
          layer.PosY := ly;
      end;
    ieBottomSide: // bottom side
      begin
        layer.ResizedHeight := imax(1, h - (-ly + ply));
      end;
    else
      exit;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.MouseSelectCircle(x, y: integer; Shift: TShiftState);
var
  dx, dy, p, g: integer;
  xx, yy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseSelectCircle'); {$endif}
  MouseMoveScroll;
  if (fSelectionAspectRatio = 0) then
  begin
    // fixed selection
    dx := round(fSelectionAbsWidth * fZoomD100X) div 2;
    dy := round(fSelectionAbsHeight * fZoomD100Y) div 2;
    fHSX1 := x;
    fHSY1 := y;
    x := x + dx;
    y := y + dy;
  end;
  if (ssShift in Shift) and (fEnableShiftKey) then
  begin
    if fStartingPolyCount <> PIEAnimPoly(fHPolySel)^.PolyCount then
      AnimPolygonRemoveLast(integer(fHPolySel));
    AddSelBreakEx;
  end
  else
    AnimPolygonClear(integer(fHPolySel));
  if ((ssAlt in Shift) or fForceALTkey) and (fSelectionAspectRatio = -1) then
  begin
    // circle (pressing ALT)
    dx := imax(abs(fHSX1 - X), abs(fHSY1 - Y));
    dy := dx;
  end
  else if fSelectionAspectRatio>0 then
  begin
    dx := imax(abs(fHSX1 - X), abs(fHSY1 - Y));
    dy := round(dx * fSelectionAspectRatio);
  end
  else
  begin
    dx := abs(fHSX1 - X);
    dy := abs(fHSY1 - Y);
  end;
  dx := trunc(dx * f100DZoomX);
  dy := trunc(dy * f100DZoomY);
  p := trunc(2 * pi * imin(dx, dy));
  if p < 50 then
    p := 50;
  for g := 0 to p - 1 do
  begin
    xx := round(CurrentLayer.ConvXScr2Bmp(fHSX1) + cos((2 * pi / p) * g) * dx);
    yy := round(CurrentLayer.ConvYScr2Bmp(fHSY1) + sin((2 * pi / p) * g) * dy);
    xx := imax(0, imin(fIEBitmap.Width, xx));
    yy := imax(0, imin(fIEBitmap.Height, yy));
    AnimPolygonAddPtEx(integer(fHPolySel), xx, yy);
  end;
  AniPolyFunc(self, true);
  DoSelectionChanging;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.MouseSelectRectangle(x, y: integer; Shift: TShiftState);
var
  dx, dy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseSelectRectangle'); {$endif}
  MouseMoveScroll;
  if (fSelectionAspectRatio = 0) then
  begin
    dx := round(fSelectionAbsWidth * fZoomD100X) div 2;
    dy := round(fSelectionAbsHeight * fZoomD100Y) div 2;
    fHSx1 := x - dx;
    fHsy1 := y - dy;
    x := x + dx - 1;
    y := y + dy - 1;
  end;
  if (ssShift in Shift) and (fEnableShiftKey) then
  begin
    if fStartingPolyCount <> PIEAnimPoly(fHPolySel)^.PolyCount then
      AnimPolygonRemoveLast(integer(fHPolySel));
    SelectEx(fHSx1, fHSy1, x, y, iespAdd, (ssAlt in Shift) or fForceALTkey, not(iesoSizeable in fSelectionOptions) )
  end
  else
    SelectEx(fHSx1, fHSy1, x, y, iespReplace, (ssAlt in Shift) or fForceALTkey, not(iesoSizeable in fSelectionOptions) );
  DoSelectionChanging;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  lx, ly: integer;
  grip: TIEGrip;
  ii: integer;
  layer: TIELayer;
  cx,cy:integer;
  dx,dy:double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseMove'); {$endif}

  inherited;

  fSavedSelectionBase := fSelectionBase;
  fSelectionBase := iesbClientArea;

  lx := x;
  ly := y;

  //x := ilimit(lx, fOffX, fOffX + fExtX);
  //y := ilimit(ly, fOffY, fOffY + fExtY);
  x:=ilimit(lx, CurrentLayer.ClientAreaBox.Left, CurrentLayer.ClientAreaBox.Right+1); // 2.2.2
  y:=ilimit(ly, CurrentLayer.ClientAreaBox.Top, CurrentLayer.ClientAreaBox.Bottom+1); // 2.2.2

  if MouseCapture then
  begin

    // inside Mouse Capture

    if miScroll in fMouseInteract then
    begin
      // panning
      SetViewXY(fHSVX1 - trunc((lx - fHSx1)*fMouseScrollRate), fHSVY1 - trunc((ly - fHSy1)*fMouseScrollRate) );
    end

    else if fRectResizing <> ieNone then
    begin
      // resize rectangular selection
      MouseMoveScroll;
      fRectResizing := SelectResizeEx(fRectResizing, x, y, (ssAlt in Shift) or fForceALTkey or (fSelectionAspectRatio>0));
      DoSelectionChanging;
    end

    else if fSelectMoving > -1 then
    begin
      // move selection
      if iesoCanScroll in fSelectionOptions then
        MouseMoveScroll;
      fSelectMoving := SelectMoveEx(fSelectMoving, CurrentLayer.Convxscr2bmp(x) - CurrentLayer.Convxscr2bmp(fPredX), CurrentLayer.Convyscr2bmp(y) - CurrentLayer.Convyscr2bmp(fPredY), iesoCutBorders in fSelectionOptions);
      DoSelectionChanging;
    end

    else if fRectSelecting then
    begin
      // select rectangle
      MouseSelectRectangle(x, y, Shift);
    end

    else if fPolySelecting then
    begin
      // select polygon
      MouseMoveScroll;
      Paint;
      PolyDraw1;
      AnimPolygonAddPtEx(integer(fHPolySel), CurrentLayer.ConvXScr2Bmp(x), CurrentLayer.ConvYScr2Bmp(y));
      AniPolyFunc(self, true);
      DoSelectionChanging;
    end

    else if fCircSelecting then
    begin
      // select circle
      MouseSelectCircle(x, y, Shift);
    end

    else if (fMovingLayer > -1) then
    begin
      // Moving a layer
      layer := TIELayer(fLayers[fMovingLayer]);
      if not layer.Locked then
      begin
        if not fMovResRotLayerStarted and fLayersAutoUndo then
          Proc.SaveUndo(ieuLayer);
        fMovResRotLayerStarted:=true;
        MouseMoveScroll;
        layer.PosX := Layer.PosX + (XScr2Bmp(lx) - XScr2Bmp(fPredLX));
        layer.PosY := Layer.PosY + (YScr2Bmp(ly) - YScr2Bmp(fPredLY));
        SetInteractionHint('X='+IntToStr(Layer.PosX)+' Y='+IntToStr(Layer.PosY),lx,ly,'X=000 Y=000');
        Update;
        DoLayerNotify(fLayersCurrent, ielMoving);
      end;
    end

    else if fMovingRotationCenter > -1 then
    begin
      // moving rotation center
      layer := TIELayer(fLayers[fMovingRotationCenter]);
      layer.RotateCenterX := layer.ConvXScr2Bmp(lx) / layer.Bitmap.Width;
      layer.RotateCenterY := layer.ConvYScr2Bmp(ly) / layer.Bitmap.Height;
      SetInteractionHint('X='+IntToStr(trunc(layer.RotateCenterX*layer.Width)) + ' Y='+IntToStr(trunc(layer.RotateCenterY*layer.Height)),lx,ly,'X=000 Y=000');
      Update;
    end

    else if (fRotatingLayer > -1) then
    begin
      // Rotating a layer
      layer := TIELayer(fLayers[fRotatingLayer]);
      if not layer.Locked then
      begin
        if not fMovResRotLayerStarted and fLayersAutoUndo then
          Proc.SaveUndo(ieuFullLayer);
        fMovResRotLayerStarted:=true;
        dx:=((XScr2Bmp(lx) - XScr2Bmp(fPredLX)))/4;
        dy:=((YScr2Bmp(ly) - YScr2Bmp(fPredLY)))/4;
        cx := CurrentLayer.ConvXBmp2Scr( trunc(CurrentLayer.RotateCenterX * CurrentLayer.Bitmap.Width) );
        cy := CurrentLayer.ConvYBmp2Scr( trunc(CurrentLayer.RotateCenterY * CurrentLayer.Bitmap.Height) );
        if lx>cx then
          dy:=-dy;
        if ly<cy then
          dx:=-dx;
        layer.Rotate := layer.Rotate +dx +dy;
        SetInteractionHint(FloatToStr(layer.Rotate)+'°',lx,ly,'0000°');
        Update;
        DoLayerNotify(fLayersCurrent, ielRotating);
      end;
    end

    else if (fLayerResizing <> ieNone) and (not TIELayer(fLayers[fLayersCurrent]).Locked) then
    begin
      // Resizing a layer
      if not fMovResRotLayerStarted and fLayersAutoUndo then
        Proc.SaveUndo(ieuLayer);
      fMovResRotLayerStarted:=true;
      MouseMoveScroll;
      MouseResizeLayer(lx, ly, (ssAlt in Shift) or fForceALTkey);
      SetInteractionHint(IntToStr(CurrentLayer.Width)+' x '+IntToStr(CurrentLayer.Height),lx,ly,'0000 x 0000');
      Update;
      DoLayerNotify(fLayersCurrent, ielResizing);
    end;

    // out of Mouse Capture

  end
  else if fPolySelecting and not (fLassoSelecting) then
  begin
    PolyDraw1;
    if (ssAlt in Shift) or fForceALTkey then
      with PIEAnimPoly(fHPolySel)^ do
        if (PolyCount > 0) and (Poly^[PolyCount - 1].x <> IESELBREAK) then
          _CastPolySelCC(Poly^[PolyCount - 1].x - fViewX + fOffX, Poly^[PolyCount - 1].y - fViewY + fOffY, x, y);
    fMMoveX := X;
    fMMoveY := Y;
    PolyDraw1;
    DoSelectionChanging;
  end
  else if (miSelect in fMouseInteract) or (miSelectPolygon in fMouseInteract) or
    (miSelectCircle in fMouseInteract) (*or (miSelectZoom in fMouseInteract)*) or
  (miSelectMagicWand in fMouseInteract) or (miSelectLasso in fMouseInteract) then
  begin
    grip := GetResizingGrip(lx, ly, Shift);
    DoMouseInResizingGrip(grip);
    if grip = ieNone then
    begin
      ii := GetMovingGrip(lx, ly, Shift);
      if ii > -1 then
        // moving cursor
        SetTempCursor(1790)
      else
      begin
        // default cursor
        if (ssShift in Shift) and fEnableShiftKey then
        begin
          case cursor of
            1785: SetTempCursor(1791);
            1793: SetTempCursor(1794);
          end;
        end
        else
          RestoreCursor;
      end;
    end
    else
    begin
      // resizing cursors
      case grip of
        ieTopLeft, ieBottomRight: SetTempCursor(1786);
        ieTopRight, ieBottomLeft: SetTempCursor(1788);
        ieLeftSide, ieRightSide: SetTempCursor(1789);
        ieTopSide, ieBottomSide: SetTempCursor(1787);
      end;
    end;
  end
  else if (miRotateLayers in fMouseInteract) then
  begin
    // layers rotation. Rotate only the currently selected layer.
    if IsPointInsideLayer(lx,ly,LayersCurrent) then
      RestoreCursor
    else
    begin
      cx := CurrentLayer.ConvXBmp2Scr( trunc(CurrentLayer.RotateCenterX * CurrentLayer.Bitmap.Width) );
      cy := CurrentLayer.ConvYBmp2Scr( trunc(CurrentLayer.RotateCenterY * CurrentLayer.Bitmap.Height) );
      if (lx<cx) and (ly<cy) then
        SetTempCursor(1814)
      else if (lx<cx) and (ly>cy) then
        SetTempCursor(1811)
      else if (lx>cx) and (ly<cy) then
        SetTempCursor(1812)
      else if (lx>cx) and (ly>cy) then
        SetTempCursor(1813);
    end;
  end
  else if ((miResizeLayers in fMouseInteract) or (miMoveLayers in fMouseInteract)) then
  begin
    grip := ieNone;
    if (miResizeLayers in fMouseInteract) and (not TIELayer(fLayers[fLayersCurrent]).Locked) then
      grip := FindLayerGrip(lx, ly);
    if grip = ieNone then
    begin
      ii := FindLayerAt(lx, ly);
      if (ii > -1) and (not TIELayer(fLayers[ii]).Locked) and (miMoveLayers in fMouseInteract) then
        // moving cursor
        SetTempCursor(1790)
      else
        // default cursor
        RestoreCursor;
    end
    else
    begin
      // resizing cursors
      case grip of
        ieTopLeft, ieBottomRight: SetTempCursor(1786);
        ieTopRight, ieBottomLeft: SetTempCursor(1788);
        ieLeftSide, ieRightSide: SetTempCursor(1789);
        ieTopSide, ieBottomSide: SetTempCursor(1787);
      end;
    end;
  end;

  if fSelectionMask.IsPointInside(CurrentLayer.ConvXScr2Bmp(x), CurrentLayer.ConvYScr2Bmp(y)) then
    DoMouseInSel;
  fMMoveX := x;
  fMMoveY := y;
  fSelectionBase := fSavedSelectionBase;
  fPredX := x;
  fPredY := y;
  fPredLx := lx;
  fPredLy := ly;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.IsPointInsideSelection

<FM>Declaration<FC>
function IsPointInsideSelection(x,y:integer):boolean;

<FM>Description<FN>

IsPointInsideSelection returns true if the point specified with x, y is inside the current selection.

!!}
function TImageEnView.IsPointInsideSelection(x, y: integer): boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.IsPointInsideSelection'); {$endif}
  if fSelectionBase = iesbClientArea then
  begin
    x := CurrentLayer.ConvXScr2Bmp(x);
    y := CurrentLayer.ConvYScr2Bmp(y);
  end;
  result := fSelectionMask.IsPointInside(x, y);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
  NUMSCALES = 8;
  scales: array[1..NUMSCALES] of integer = (2, 5, 10, 25, 33, 50, 75, 100);
var
  w: integer;
  d: double;
  ix, iy: integer;
  callselectionchange: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MouseUp'); {$endif}
  inherited;
  fInteractionHint:='';
  callselectionchange := false;
  //ix := ilimit(x, fOffX, fOffX + fExtX);
  //iy := ilimit(y, fOffY, fOffY + fExtY);
  ix:=ilimit(x, CurrentLayer.ClientAreaBox.Left, CurrentLayer.ClientAreaBox.Right+1); // 2.2.2
  iy:=ilimit(y, CurrentLayer.ClientAreaBox.Top, CurrentLayer.ClientAreaBox.Bottom+1); // 2.2.2
  fSavedSelectionBase := fSelectionBase;
  fSelectionBase := iesbClientArea;
  d := 0;
  if (miZoom in fMouseInteract) and (fHSx1 = x) and (fHSy1 = y) and not IsEmpty then
  begin
    if Button = mbLeft then
    begin
      if (miScroll in fMouseInteract) then
        RestoreCursor;
      // zoom-in (MOUSE LEFT)
      if Zoom < 100 then
      begin
        for w := 1 to NUMSCALES do
          if scales[w] > Zoom then
          begin
            d := scales[w];
            break;
          end;
      end
      else
        d := Zoom + 100;
      DoZoomIn(d);
      if (d <> fZoomX) or (d<>fZoomY) then
        ZoomAt(x, y, d, false)
    end
    else if (Button = mbRight) then
    begin
      // zoom-out (MOUSE RIGHT)
      if Zoom < 200 then
      begin
        d := 2;
        for w := NUMSCALES downto 1 do
          if scales[w] < Zoom then
          begin
            d := scales[w];
            break;
          end;
      end
      else
        d := Zoom - 100;
      DoZoomOut(d);
      if (d <> fZoomX) or (d<>fZoomY) then
        ZoomAt(x, y, d, false);
    end;
    fPolySelecting := false;
  end
  else if (Button = mbLeft) and (miScroll in fMouseInteract) and RequiresScrollBars then
  begin
    SetViewXY(fHSVX1 - trunc((x - fHSx1)*fMouseScrollRate), fHSVY1 - trunc((y - fHSy1)*fMouseScrollRate)); // set "view", free by MouseCapture
    RestoreCursor;
  end
  else if (Button = mbLeft) and (miSelectZoom in fMouseInteract) then
  begin
    ZoomSelectionEx(fZoomSelectionAspectRatio,true);
    fRectSelecting := false;
    RestoreSelection(true,iersMoveToAdapt);
  end
  else if (Button = mbLeft) and (miSelect in fMouseInteract) then
  begin
    if (fHSX1 = ix) and (fHSY1 = iy) and (fRectResizing = ieNone) and (fSelectMoving = -1) then
    begin
{$IFDEF IESINGLE_CLICK_SELECTION_REMOVE}
      DeSelect;
      callselectionchange := true;
{$ENDIF}
    end
    else
    begin
      if fRectSelecting or (fRectResizing <> ieNone) then
      begin
        if (not (ssShift in Shift)) or (not fEnableShiftKey) then
          fSelectionMask.Empty;
        EndSelect;
      end;
      fRectSelecting := false;
      fRectResizing := ieNone;
      fSelectMoving := -1;
      callselectionchange := true;
      Update;
    end;
  end
  else if (Button = mbLeft) and (miSelectCircle in fMouseInteract) then
  begin
    if (fHSX1 = ix) and (fHSY1 = iy) and (fSelectMoving = -1) and (fSelectionAspectRatio <> 0) then
      DeSelect
    else
    begin
      if fCircSelecting then
      begin
        if (not (ssShift in Shift)) or (not fEnableShiftKey) then
          fSelectionMask.Empty;
        EndSelect;
      end;
      fCircSelecting := False;
      fSelectMoving := -1;
      callselectionchange := true;
      Update;
    end;
  end
  else if (Button = mbLeft) and (miSelectLasso in fMouseInteract) then
  begin
    if (fHSX1 = ix) and (fHSY1 = iy) and (fSelectMoving = -1) then
      DeSelect
    else
    begin
      if fLassoSelecting then
      begin
        if (not (ssShift in Shift)) or (not fEnableShiftKey) then
          fSelectionMask.Empty;
        EndSelect;
      end;
      fLassoSelecting := false;
      fPolySelecting := false;
      fSelectMoving := -1;
      callselectionchange := true;
      Update;
    end;
  end
  else if (Button = mbLeft) and (miSelectPolygon in fMouseInteract) then
  begin
    if (fSelectMoving > -1) then
    begin
      fSelectMoving := -1;
      callselectionchange := true;
    end;
    Update;
  end
  else if (Button = mbLeft) and (miSelectMagicWand in fMouseInteract) then
  begin
    if fSelectMoving > -1 then
    begin
      fSelectMoving := -1;
      callselectionchange := true;
    end
    else
    begin
      SetTempCursor(crHourGlass);
      if (ssShift in Shift) and fEnableShiftKey then
        SelectMagicWand(x, y, iespAdd)
      else
        SelectMagicWand(x, y, iespReplace);
      RestoreCursor;
      callselectionchange := true;
    end;
    Update;
  end;

  if Button = mbLeft then
  begin
    if fRectMoving then
    begin
      fSelectionMask.Empty;
      EndSelect;
      fRectMoving := false;
    end;
    if fMovingLayer > -1 then
    begin
      fMovingLayer := -1;
      RestoreCursor;
      DoLayerNotify(fLayersCurrent, ielMoved);
      invalidate;
    end;
    if fRotatingLayer > -1 then
    begin
      fRotatingLayer := -1;
      DoLayerNotify(fLayersCurrent, ielRotated);
      invalidate;
    end;
    if (fMovingRotationCenter > -1) then
    begin
      fMovingRotationCenter := -1;
    end;
    if fLayerResizing <> ieNone then
    begin
      fLayerResizing := ieNone;
      DoLayerNotify(fLayersCurrent, ielResized);
      Update; // needed to update magnify-resized layer
    end;
    fSelectMoving := -1;
    fRectResizing := ieNone;
    fRectSelecting := false;
    fCircSelecting := false;
    fLassoSelecting := false;
    if callselectionchange then
      DoSelectionChange;
  end;
  fZoomFilter := fSaveZoomFilter;
  fSelectionBase := fSavedSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Called whenever the zoom or viewx/y changes.
// It changes fOnViewChange

procedure TImageEnView.ViewChange(c: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ViewChange'); {$endif}
  if assigned(fOnViewChange) then
    fOnViewChange(self, c);

  if assigned(fNavigator) then
    SetNavigatorRect;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// draw backgrouns on Width and Height area
procedure IEDrawBackground(ComponentState: TComponentState; Canvas: TCanvas; Bitmap:TBitmap; fBackgroundStyle: TIEBackgroundStyle; fBackGround: TColor; DestX, DestY, Width, Height: integer; x1, y1, x2, y2: integer; fChessboardSize: integer; fChessboardBrushStyle: TBrushStyle; fGradientEndColor: TColor; WallPaper: TPicture; WallPaperStyle: TIEWallPaperStyle);
const
  BS: array[iebsSolid..iebsDiagCross] of TBrushStyle = (bsSolid, bsHorizontal,
    bsVertical, bsFDiagonal, bsBDiagonal, bsCross, bsDiagCross);
var
  x, y, i1,i2: integer;
  b1, b2: boolean;
  rc: trect;
  px:PRGB;
  c:array [0..1] of TRGB;
  hh:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('IEDrawBackground'); {$endif}
  with Canvas do
    case fBackgroundStyle of
      iebsGradient:
        IEDrawGradient(Rect(DestX, DestY, width + DestX, height + DestY), Canvas.handle, fBackGround, fGradientEndColor, true);
      iebsSolid..iebsDiagCross:
        begin
          Brush.Color := fBackGround;
          Brush.Style := BS[fBackgroundStyle];
          FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
        end;
      iebsChessBoard, iebsPhotoLike:
        begin
          if fBackgroundStyle=iebsPhotoLike then
          begin
            IEDrawBackground(ComponentState,Canvas,Bitmap,iebsSolid,$B0B0B0,DestX,DestY,Width,Height,x1,y1,x2,y2,fChessboardSize,fChessboardBrushStyle,fGradientEndColor,WallPaper,WallPaperStyle);
            Canvas.Pen.Color:=clBlack;
            Canvas.Pen.Mode:=pmCopy;
            Canvas.Pen.Width:=1;
            Canvas.Pen.Style:=psSolid;
            Canvas.Brush.Style:=bsClear;
            Canvas.Rectangle(x1-1,y1-1,x2+1,y2+1);
            DestX:=x1;
            DestY:=y1;
            Width:=x2-x1;
            Height:=y2-y1;
          end;
          if (Bitmap<>nil) and (fChessboardBrushStyle=bsSolid) and (Bitmap.PixelFormat=pf24bit) then
          begin
            c[0]:=TColor2TRGB(fBackground);
            c[1]:=TColor2TRGB(not fBackground);
            b1:=false;
            i2:=0;
            hh:=Bitmap.Height;
            for y:=DestY to DestY+Height-1 do
            begin
              b2:=b1;
              if y<0 then
                px:=Bitmap.Scanline[0]
              else if y>=hh then
                px:=Bitmap.Scanline[hh-1]
              else
                px:=Bitmap.Scanline[y];
              inc(px,DestX);
              i1:=0;
              for x:=0 to Width-1 do
              begin
                px^:=c[integer(b2)];
                if i1=fChessboardSize then
                begin
                  b2:=not b2;
                  i1:=0;
                end;
                inc(i1);
                inc(px);
              end;
              if i2=fChessboardSize then
              begin
                b1:=not b1;
                i2:=0;
              end;
              inc(i2);
            end;
          end
          else
          begin
            Brush.Style := fChessboardBrushStyle;
            y := DestY;
            b1 := false;
            while y < Height + DestY do
            begin
              b2 := b1;
              b1 := not b1;
              x := DestX;
              while x < Width + DestX do
              begin
                if b2 then
                  Brush.Color := fBackground
                else
                  Brush.Color := not fBackground;
                b2 := not b2;
                FillRect(rect(x, y, imin(x + fChessboardSize, DestX + Width), imin(y + fChessboardSize, DestY + Height)));
                inc(x, fChessboardSize);
              end;
              inc(y, fChessboardSize);
            end;
          end;
        end;
      iebsDiagonals:
        begin
          Brush.Color := fBackGround;
          Brush.Style := bsSolid;
          FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
          Pen.Color := not fBackground;
          Pen.Style := psSolid;
          moveto(DestX, DestY);
          lineto(Width + DestX, Height + DestY);
          moveto(Width + DestX, DestY);
          lineto(DestX, Height + DestY);
        end;
      iebsCropped:
        begin
          if (csDesigning in ComponentState) then
          begin
            Brush.Color := fBackGround;
            Brush.Style := bsSolid;
            FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
          end
          else
          begin
            Brush.Color := clBtnFace;
            Brush.Style := bsSolid;
            FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
            if ((x2 - x1) > 1) and ((y2 - y1) > 1) then
            begin
              rc := rect(x1 - gedgex, y1 - gedgey, x2 + gedgex, y2 + gedgey);
              DrawEdge(Canvas.Handle, rc, EDGE_SUNKEN, BF_RECT);
            end;
          end;
        end;
      iebsCropShadow:
        begin
          if (csDesigning in ComponentState) then
          begin
            Brush.Color := fBackGround;
            Brush.Style := bsSolid;
            FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
          end
          else
          begin
            Brush.Color := fBackGround;
            Brush.Style := bsSolid;
            FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
            if ((x2 - x1) > 1) and ((y2 - y1) > 1) then
            begin
              IERightShadow(Canvas, Bitmap, x2, y1, x2 + 5, y2 + 3, iestSmooth1, fBackground);
              IEBottomShadow(Canvas, Bitmap, x1, y2, x2 + 4, y2 + 5, iestSmooth1, fBackground);
            end;
          end;
        end;
      iebsSoftShadow:
        begin
          if (csDesigning in ComponentState) then
          begin
            Brush.Color := fBackGround;
            Brush.Style := bsSolid;
            FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
          end
          else
          begin
            if assigned(Bitmap) then
            begin
              Brush.Color := fBackGround;
              Brush.Style := bsSolid;
              FillRect(rect(DestX, DestY, Width + DestX, Height + DestY));
              if ((x2 - x1) > 1) and ((y2 - y1) > 1) then
                IERectShadow(Bitmap,x1,y1,x2,y2,fBackground);
            end;
          end;
        end;
    end;
  // draw wallpaper
  if assigned(WallPaper) and assigned(WallPaper.Graphic) then
  begin
    case WallPaperStyle of
      iewoNormal:
        begin
          Canvas.Draw(0, 0, WallPaper.Graphic);
        end;
      iewoStretch:
        begin
          Canvas.StretchDraw(rect(0, 0, Width, Height), WallPaper.Graphic);
        end;
      iewoTile:
        begin
          x1 := 0;
          y1 := 0;
          while (y1 < Height) do
          begin
            Canvas.Draw(x1, y1, WallPaper.Graphic);
            inc(x1, WallPaper.Graphic.Width);
            if x1 >= Width then
            begin
              x1 := 0;
              inc(y1, WallPaper.Graphic.Height);
            end;
          end;
        end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// fo1x,fo1y,fo2x,fo2y ,frx,fry

procedure TImageEnView.CalcPaintCoordsEx(var XSrc, YSrc, SrcWidth, SrcHeight: integer; var DstWidth, DstHeight: integer; tViewX, tViewY: integer);
var
  rr: double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CalcPaintCoordsEx'); {$endif}
  XSrc := 0;
  SrcWidth := 0;
  YSrc := 0;
  SrcHeight := 0;
  if fZZWW <> 0 then
  begin
    rr := fMaxLayerWidth / fZZWW;
    XSrc := round(QuantizeViewX(tViewX) * rr);
    SrcWidth := round(fExtx * rr);
    if (XSrc + SrcWidth) > fMaxLayerWidth then
      dec(SrcWidth);
  end;
  if fZZHH <> 0 then
  begin
    rr := fMaxLayerHeight / fZZHH;
    YSrc := round(QuantizeViewY(tViewY) * rr);
    SrcHeight := round(fExty * rr);
    if (YSrc + SrcHeight) > fMaxLayerHeight then
      dec(SrcHeight);
  end;
  if fZoomX > 100 then
  begin
    DstWidth := trunc(SrcWidth * fZoomD100X);
    if (DstWidth < fExtX) and (XSrc + SrcWidth + 1 <= fMaxLayerWidth) then
    begin
      inc(SrcWidth);
      DstWidth := trunc(SrcWidth * fZoomD100X);
    end;
  end
  else
    DstWidth := fExtX;
  if fZoomY>100 then
  begin
    DstHeight := trunc(SrcHeight * fZoomD100Y);
    if (DstHeight < fExtY) and (YSrc + SrcHeight + 1 <= fMaxLayerHeight) then
    begin
      inc(SrcHeight);
      DstHeight := trunc(SrcHeight * fZoomD100Y);
    end;
  end
  else
    DstHeight := fExtY;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.CalcPaintCoords;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CalcPaintCoords'); {$endif}
  CalcPaintCoordsEx(fo1x, fo1y, fo2x, fo2y, frx, fry, fViewX, fViewY);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.ZoomFilter

<FM>Declaration<FC>
property ZoomFilter:<A TResampleFilter>;

<FM>Description<FN>
ZoomFilter specifies the filter to apply in zoom-in (<A TImageEnView.Zoom> property) operations.
The fastest way to zoom a picture is to set ZoomFilter to rfNone (default).

<FM>Example<FC>

// Performs a 400% quality zoom
ImageEnView1.ZoomFilter:=rfFastLinear;
ImageEnView1.Zoom:=400;
!!}
procedure TImageEnView.SetZoomFilter(v: TResampleFilter);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetZoomFilter'); {$endif}
  fSaveZoomFilter := v; // used in MouseUp (but also setted in MouseDown)
  if fZoomFilter <> v then
  begin
    fZoomFilter := v;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.Assign(Source: TPersistent);
var
  si: TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Assign'); {$endif}
  if Source = nil then
    Clear
  else if Source is TImageEnView then
  begin
    si := (Source as TImageEnView);
    fIEBitmap.Assign(si.fIEBitmap);
    fBackGround := si.fBackGround;
    SetDPI(si.fDPIX, si.fDPIY);
    Update;
    ImageChange;
  end
  else if Source is TBitmap then
  begin
    fIEBitmap.CopyFromTBitmap(source as TBitmap);
    if (fIEBitmap.PixelFormat <> ie1g) and (fIEBitmap.PixelFormat <> ie24RGB) then
      fIEBitmap.PixelFormat := ie24RGB;
    Update;
    ImageChange;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// ret True is the polygon is a rectangle
// "n" is the number of vertex

function _IsRectangle(p: PPointArray; n: integer): boolean;
var
  q: integer;
  vv: boolean; // vv=false (x equals)   vv=true (y equals)
begin
  {$ifdef IEPROFILE} try IEProfileBegin('_IsRectangle'); {$endif}
  result := false;
  if (n = 4) then
  begin
    if (p^[3].x = p^[0].x) and (p^[3].y <> p^[0].y) then
      vv := true
    else if (p^[3].x <> p^[0].x) and (p^[3].y = p^[0].y) then
      vv := false
    else
      exit;
    for q := 0 to 2 do
      if (p^[q].x = p^[q + 1].x) and (p^[q].y <> p^[q + 1].y) and (not vv) then
        vv := true
      else if (p^[q].x <> p^[q + 1].x) and (p^[q].y = p^[q + 1].y) and vv then
        vv := false
      else
        exit;
    result := true;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.MouseInteract

<FM>Declaration<FC>
property MouseInteract: <A TIEMouseInteract>;

<FM>Description<FN>
MouseInteract determines which mouse activities TImageEnView is to handle automatically.

<FM>Example<FC>

// Single left click zoom-in image, single right click zoom-out image, click and // drag scroll the image (if it is bigger than client area).
ImageEnView1.MouseInteract:=[miZoom,miScroll];

!!}
function TImageEnView.GetMouseInteract: TIEMouseInteract;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetMouseInteract'); {$endif}
  result := fMouseInteract;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.BackgroundStyle

<FM>Declaration<FC>
property BackgroundStyle:<A TIEBackgroundStyle>;

<FM>Description<FN>
BackgroundStyle specifies the background style. The background is the component region not filled by the image or thumbnails.

<FM>Example<FC>
ImageEnView1.BackgroundStyle:=iebsPhotoLike;
!!}
procedure TImageEnView.SetBackgroundStyle(v: TIEBackgroundStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetBackgroundStyle'); {$endif}
  fBackgroundStyle := v;
  invalidate;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoSelectionChanging;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoSelectionChanging'); {$endif}
  SwapSelectionBase;
  if Assigned(fOnSelectionChanging) then
    OnSelectionChanging(self);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoSelectionChange;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoSelectionChange'); {$endif}
  if Assigned(fOnSelectionChange) then
    OnSelectionChange(self);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoBeforeSelectionChange;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoBeforeSelectionChange'); {$endif}
  SwapSelectionBase;
  if Assigned(fOnBeforeSelectionChange) then
    OnBeforeSelectionChange(self);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Copy the polygon Polygon of Source in Position of fBitmap

{!!
<FS>TImageEnView.CopyFromPolygon

<FM>Declaration<FC>
procedure CopyFromPolygon(Source:TBitmap; const Polygon:array of TPoint; PolygonLen:integer; const Position:TPoint);

<FM>Description<FN>
CopyFromPolygon copies a region (Polygon) of Source bitmap inside current image.

Polygon is an array of TPoint (pixel coordinates related to Source bitmap) and PolygonLen is the number of point in Polygon.
Position is the destination point (pixel coordinate related to current image). The destination point is the top-left side of the rectangle that encloses source polygon.
CopyFromPolygon enlarge current bitmap when needed.


<FM>Example<FC>

// Copies current selected area of ImageEnView1 to ImageEnView2 at position 0,0
ImageEnView2.CopyFromPolygon(ImageEnView1.Bitmap,ImageEnView1.PolySelPoints^,ImageEnView1.PolySelCount,Point(0,0));

// Copies the rect 0,0,100,100 in ImageEnView2 at position 0,0
ImageEnView2.CopyFromPolygon(ImageEnView1.Bitmap,[Point(0,0),Point(100,0),Point(100,100),Point(0,100)],4,Point(0,0));

// Copies current selection to ImageEnView2. Then enhance contrast of ImageEnView2 and copy back to ImageEnView1 (in some selection).
ImageEnView2.CopyFromPolygon(ImageEnView1.Bitmap,ImageEnView2.PolySelPoints^,ImageEnView2.PolySelCount,Point(0,0));
ImageEnView2.Proc.Contrast(30);
ImageEnView2.CopyToPolygon(ImageEnView1.Bitmap,ImageEnView1.PolySelPoints^,ImageEnView1.PolySelCount,Point(0,0));
ImageEnView1.Update;

!!}
procedure TImageEnView.CopyFromPolygon(Source: TBitmap; const Polygon: array of TPoint; PolygonLen: integer; const Position: TPoint);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CopyFromPolygon'); {$endif}
  _CopyPolygonToPoint(Source, @Polygon, PolygonLen, fBitmap, Position);
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// copy the rect at Position of fBitmap in Polygon of Dest

{!!
<FS>TImageEnView.CopyToPolygon

<FM>Declaration<FC>
procedure CopyToPolygon(Dest:TBitmap; const Polygon:array of TPoint; PolygonLen:integer; const Position:TPoint);

<FM>Description<FN>
CopyToPolygon copies a region (Polygon) of current image inside Dest bitmap.

Polygon is an array of TPoint (pixel coordinates related to Dest bitmap) and PolygonLen is the number of point in Polygon.
Position is the source point (pixel coordinate related to current image). The source point is the top-left side of the rectangle that encloses destination polygon.
CopyToPolygon enlarge destination bitmap when needed.


<FM>Example<FC>

// Copies current selection to ImageEnView2. Then enhance contrast of ImageEnView2 and copy back to ImageEnView1 (in some selection).
ImageEnView2.CopyFromPolygon(ImageEnView1.Bitmap,ImageEnView2.PolySelPoints^,ImageEnView2.PolySelCount,Point(0,0));
ImageEnView2.Proc.Contrast(30);
ImageEnView2.CopyToPolygon(ImageEnView1.Bitmap,ImageEnView1.PolySelPoints^,ImageEnView1.PolySelCount,Point(0,0));
ImageEnView1.Update;

!!}
procedure TImageEnView.CopyToPolygon(Dest: TBitmap; const Polygon: array of TPoint; PolygonLen: integer; const Position: TPoint);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CopyToPolygon'); {$endif}
  _CopyPointToPolygon(fBitmap, @Polygon, PolygonLen, Dest, Position);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetScrollBarsAlwaysVisible: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetScrollBarsAlwaysVisible'); {$endif}
  result := fScrollBarsAlwaysVisible;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetScrollBarsAlwaysVisible(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetScrollBarsAlwaysVisible'); {$endif}
  fScrollBarsAlwaysVisible := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DisplayGrid

<FM>Declaration<FC>
property DisplayGrid:boolean;

<FM>Description<FN>
When DisplayGrid is True and the Zoom is equal to or greater than 400, a grid is drawn. Each grid box is equivalent to a bitmap pixel.

!!}
procedure TImageEnView.SetDisplayGrid(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetDisplayGrid'); {$endif}
  fDisplayGrid := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.KeyDown(var Key: Word; Shift: TShiftState);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.KeyDown'); {$endif}
  inherited;
  if (ssShift in Shift) and fEnableShiftKey then
  begin
    case cursor of
      1785: SetTempCursor(1791);
      1793: SetTempCursor(1794);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.KeyUp(var Key: Word; Shift: TShiftState);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.KeyUp'); {$endif}
  inherited;
  if (not (ssShift in Shift)) and fEnableShiftKey then
  begin
    RestoreCursor;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.KeyPress(var Key: Char);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.KeyPress'); {$endif}
  inherited;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// finalize selection (update fSelectionMask)

{!!
<FS>TImageEnView.EndSelect

<FM>Declaration<FC>
procedure EndSelect;

<FM>Description<FN>
EndSelect terminates a selection specified by code using AddSelPoint and AddSelBreak methods.

<FM>Example<FC>
ImageEnView1.AddSelPoint(0,0);
ImageEnView1.AddSelPoint(100,100);
ImageEnView1.AddSelPoint(50,50);
ImageEnView1.EndSelect;

!!}
procedure TImageEnView.EndSelect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.EndSelect'); {$endif}
  fSelectionMask.DrawPolygon(fSelectionIntensity, PIEAnimPoly(fHPolySel)^.Poly, PIEAnimPoly(fHPolySel)^.PolyCount); // update mask
  if fSelectionMask.IsEmpty then
  begin
    // empty selection
    fSel := false;
    AnimPolygonClear(integer(fHPolySel));
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetClientWidth: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetClientWidth'); {$endif}
  if fOffscreenPaint then
    result := Width
  else if HasParentWindow then
    result := inherited ClientWidth
  else
    result := 50;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetClientHeight: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetClientHeight'); {$endif}
  if fOffscreenPaint then
    result := Height
  else if HasParentWindow then
    result := inherited Clientheight
  else
    result := 50;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelColor1

<FM>Declaration<FC>
property SelColor1:TColor

<FM>Description<FN>
Sets first color of the animated selection polygon.
!!}
procedure TImageEnView.SetSelColor1(v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelColor1'); {$endif}
  PIEAnimPoly(fHPolySel)^.Color1 := v;
  fSelColor1 := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelColor2

<FM>Declaration<FC>
property SelColor2:TColor

<FM>Description<FN>
Sets second color of the animated selection polygon.
!!}
procedure TImageEnView.SetSelColor2(v: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelColor2'); {$endif}
  PIEAnimPOly(fHPolySel)^.Color2 := v;
  fSelColor2 := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetImageEnIO: TImageEnIO;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetImageEnIO'); {$endif}
  if not assigned(fImageEnIO) then
  begin
    fImageEnIO := TImageEnIO.Create(self);
    fImageEnIO.AttachedImageEn := self;
    fImageEnIO.OnProgress := fOnProgress;
    fImageEnIO.OnFinishWork := fOnFinishWork;
  end;
  result := fImageEnIO;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetImageEnProc: TImageEnProc;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetImageEnProc'); {$endif}
  if not assigned(fImageEnProc) then
  begin
    fImageEnProc := TImageEnProc.Create(self);
    fImageEnProc.AttachedImageEn := self;
    fImageEnProc.OnProgress := fOnProgress;
    fImageEnProc.OnFinishWork:=fOnFinishWork;
    fImageEnProc.OnSaveUndo:=fOnSaveUndo;
  end;
  result := fImageEnProc;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetOnProgress(v: TIEProgressEvent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetOnProgress'); {$endif}
  fOnProgress := v;
  if assigned(fImageEnIO) then
    fImageEnIO.OnProgress := v;
  if assigned(fImageEnProc) then
    fImageEnProc.OnProgress := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetOnProgress: TIEProgressEvent;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetOnProgress'); {$endif}
  result := fOnProgress;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetOnFinishWork(v: TNotifyEvent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetOnFinishWork'); {$endif}
  fOnFinishWork := v;
  if assigned(fImageEnIO) then
    fImageEnIO.OnFinishWork := v;
  if assigned(fImageEnProc) then
    fImageEnProc.OnFinishWork := v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.OnFinishWork

<FM>Declaration<FC>
property OnFinishWork: TNotifyEvent;

<FM>Description<FN>
This event occurs whenever an image processing task or input/output terminates.
This event is called after the last call to <A TImageEnView.OnProgress>, so you can reset here your progress bar.
!!}
function TImageEnView.GetOnFinishWork: TNotifyEvent;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetOnFinishWork'); {$endif}
  result := fOnFinishWork;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.TransitionRunning

<FM>Declaration<FC>
property TransitionRunning:boolean;

<FM>Description<FN>
TransitionRunning is True whenever a transition is running.
!!}
function TImageEnView.GetTransitionRunning: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetTransitionRunning'); {$endif}
  result := fTransition.Running;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.PrepareTransition

<FM>Declaration<FC>
procedure PrepareTransition;

<FM>Description<FN>
PrepareTransition copies the currently displayed image to an internal buffer. This allows you to change current image (load, update, etc.) before starting the transition with RunTransition.

<FM>Example<FC>

// we suppose that ImageEnView1 already contains an image
ImageEnView1.PrepareTransition;	 // this prepare the transition
ImageEnView1.IO.LoadFromFile('image2.jpg');	 // load the image, but it is not displayed until next paint
ImageEnView1.RunTransition(iettRandompoints,500);	 // this executes the transition

!!}
procedure TImageEnView.PrepareTransition;
var
  iebmp:TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PrepareTransition'); {$endif}
  if (GetClientWidth = 0) or (GetClientHeight = 0) then
    exit;
  fTransition.SetSizes(ClientWidth, ClientHeight);
  iebmp:=TIEBitmap.Create;
  iebmp.EncapsulateTBitmap(fTransition.SourceShot,false);
  PaintToEx(iebmp, nil, nil, true, true);
  iebmp.free;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.RunTransition

<FM>Declaration<FC>
procedure RunTransition(Effect:<A TIETransitionType>; duration:integer);

<FM>Description<FN>
RunTransition starts the transition using Effect and Duration parameters.

Effect specifies the effect.

Duration specifies the duration of the transition in milliseconds.

<FM>Example<FC>

// we suppose that ImageEnView1 already contains an image
ImageEnView1.PrepareTransition;	 // this prepare the transition
ImageEnView1.IO.LoadFromFile('image2.jpg');	 // load the image, but it is not displayed until next paint
ImageEnView1.RunTransition(iettRandompoints,500);	 // this executes the transition

!!}
procedure TImageEnView.RunTransition(Effect: TIETransitionType; duration: integer);
var
  iebmp:TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.RunTransition'); {$endif}
  if (GetClientWidth = 0) or (GetClientHeight = 0) then
    exit;
  if (duration<1) then
    duration:=1;
  fTransitionEffect := Effect;
  fTransitionDuration := duration;
  fTransition.Transition := fTransitionEffect;
  fTransition.Duration := fTransitionDuration;
  iebmp:=TIEBitmap.Create;
  iebmp.EncapsulateTBitmap(fTransition.TargetShot,false);
  PaintToEx(iebmp, nil, nil, true, true);
  iebmp.free;
  fTransition.FullImage:=fIEBitmap;
  fTransition.Run(true);

  // Now adjust the display to match the end position of the transition
  if Effect=iettPanZoom then
    DisplayImageRect(TransitionEndRect);

  fTransitionEffect := iettNone;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.PrepareTransitionBitmap(OriginalBitmap,TargetBitmap:TBitmap; Effect:TIETransitionType);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PrepareTransitionBitmap'); {$endif}
  fTransition.Transition:=Effect;
  fTransition.FullImage:=fIEBitmap;
  fTransition.PrepareBitmap(OriginalBitmap,TargetBitmap);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// iStep: a value out of 100
// ToBitmap: the bimtap to write it to
procedure TImageEnView.CreateTransitionBitmapFrame(iStep:Integer; ToBitmap:TBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CreateTransitionBitmapFrame'); {$endif}
  fTransition.CreateBitmapFrame(iStep,ToBitmap);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.AbortTransition

<FM>Declaration<FC>
procedure AbortTransition;

<FM>Description<FN>
This method aborts current transition started with RunTransition.

!!}
procedure TImageEnView.AbortTransition;
begin
  fTransition.Stop;
end;

procedure TImageEnView.SetOnTransitionStop(value:TNotifyEvent);
begin
  fTransition.OnTransitionStop:=value;
end;

{!!
<FS>TImageEnView.OnTransitionStop

<FM>Declaration<FC>
property OnTransitionStop:TNotifyEvent;

<FM>Description<FN>
This event occurs when the transition (runned using RunTransition) has finished its job, that is the transition is finished.

!!}
function TImageEnView.GetOnTransitionStop:TNotifyEvent;
begin
  result:=fTransition.OnTransitionStop;
end;

procedure TImageEnView.SetOnTransitionStep(value:TIETransitionStepEvent);
begin
  fTransition.OnTransitionStep:=value;
end;

{!!
<FS>TImageEnView.OnTransitionStep

<FM>Declaration<FC>
property OnTransitionStep:<A TIETransitionStepEvent>;

<FM>Description<FN>
This event occurs just before a new transition frame is painted. Step assumes values from 0 to 1024.
!!}
function TImageEnView.GetOnTransitionStep:TIETransitionStepEvent;
begin
  result:=fTransition.OnTransitionStep;
end;

procedure TImageEnView.SetTransitionTiming(value:TIETransitionTiming);
begin
  fTransition.Timing:=value;
end;

{!!
<FS>TImageEnView.TransitionTiming

<FM>Declaration<FC>
property TransitionTiming:<A TIETransitionTiming>;

<FM>Description<FN>
TransitionTiming allows you to select how the transition progresses.
!!}
function TImageEnView.GetTransitionTiming:TIETransitionTiming;
begin
  result:=fTransition.Timing;
end;

procedure TImageEnView.SetTransitionStartRect(value:TRect);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetTransitionStartRect'); {$endif}
  if FTransitionRectMaintainAspectRatio then
    fTransition.StartRect:=AdjustRectToAspectRatio(value)
  else
    fTransition.StartRect:=value;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.TransitionStartRect

<FM>Declaration<FC>
property TransitionStartRect:TRect;

<FM>Description<FN>
Specifies the starting rectangle of iettPanZoom transition. Coordinates are in bitmap coordinates.
To specify the ending rectangle set TransitionEndRect;

!!}
function TImageEnView.GetTransitionStartRect:TRect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetTransitionStartRect'); {$endif}
  result:=fTransition.StartRect;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetTransitionEndRect(value:TRect);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetTransitionEndRect'); {$endif}
  if FTransitionRectMaintainAspectRatio then
    fTransition.EndRect:=AdjustRectToAspectRatio(value)
  else
    fTransition.EndRect:=value;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.TransitionEndRect

<FM>Declaration<FC>
property TransitionEndRect:TRect;

<FM>Description<FN>
Specifies the ending rectangle of iettPanZoom transition. Coordinates are in bitmap coordinates.
To specify the starting rectangle set TransitionStartRect;

!!}
function TImageEnView.GetTransitionEndRect:TRect;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetTransitionEndRect'); {$endif}
  result:=fTransition.EndRect;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.TransitionRectMaintainAspectRatio

<FM>Declaration<FC>
property TransitionRectMaintainAspectRatio:boolean;

<FM>Description<FN>
This property is used when you set a value for TransitionStartRect property. If TransitionRectMaintainAspectRatio is true (default), the transition rectangle is adjusted to maintain aspect ratio.
!!}
procedure TImageEnView.SetTransitionRectMaintainAspectRatio(value:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetTransitionRectMaintainAspectRatio'); {$endif}
  if FTransitionRectMaintainAspectRatio=value then exit;
  FTransitionRectMaintainAspectRatio:=value;
  if FTransitionRectMaintainAspectRatio then
  begin
    fTransition.StartRect:=AdjustRectToAspectRatio(fTransition.StartRect);
    fTransition.EndRect:=AdjustRectToAspectRatio(fTransition.EndRect);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Returns an adjusted rect taking into account the aspect ratio of the image and display window
function TImageEnView.AdjustRectToAspectRatio(ARect:TRect):TRect;

  function _AdjustRect(InRect:TRect;
                       iImageEnWidth,iImageEnHeight:Integer;
                       iImageWidth,iImageHeight:Integer):TRect;
  {.$.DEFINE CLIP_DISPLAY_TO_IMAGE_AREA} // If defined only ever displays an area within the image itself, i.e. you will NEVER see the whole image (unless it is the same ratio as the ImageEnView)
  var
    iNewLeft,iNewTop,iNewWidth,iNewHeight: Integer;
    iObjLeft,iObjTop,iObjHeight,iObjWidth:Integer;
  begin
    iObjLeft    := imax(0,InRect.left);
    iObjTop     := imax(0,InRect.Top);
    iObjWidth   := imin(iImageWidth,InRect.Right-InRect.Left);
    iObjHeight  := imin(iImageHeight,InRect.Bottom-InRect.Top);

    if (iObjHeight / iImageEnHeight){$IFDEF CLIP_DISPLAY_TO_IMAGE_AREA}<{$ELSE}>{$ENDIF}(iObjWidth / iImageEnWidth) then
    // ADJUST WIDTH
    begin
      iNewHeight:= iObjHeight;
      iNewTop:= iObjTop;
      iNewWidth:= round(iObjHeight * iImageEnWidth / iImageEnHeight);
      iNewLeft:= iObjLeft-((iNewWidth-iObjWidth) div 2);

      {$IFDEF CLIP_DISPLAY_TO_IMAGE_AREA}
      if iNewLeft<0 then iNewLeft:=0;
      if iNewWidth>iImageWidth then
        begin
          iNewWidth:=iImageWidth;
          iNewHeight:= round(iNewWidth * iImageEnHeight / iImageEnWidth);
          iNewTop:= iObjTop-((iNewHeight-iObjHeight) div 2);
        end;
      {$ENDIF}
    end
    ELSE
    // ADJUST HEIGHT
    begin
      iNewWidth:= iObjWidth;
      iNewLeft:= iObjLeft;
      iNewHeight:= round(iObjWidth * iImageEnHeight / iImageEnWidth);
      iNewTop:= iObjTop-((iNewHeight-iObjHeight) div 2);

      {$IFDEF CLIP_DISPLAY_TO_IMAGE_AREA}
      if iNewTop<0 then iNewTop:=0;
      if iNewHeight>iImageHeight then
        begin
          iNewHeight:=iImageHeight;
          iNewWidth:= round(iNewHeight * iImageEnWidth / iImageEnHeight);
          iNewLeft:= iObjLeft-((iNewWidth-iObjWidth) div 2);
        end;
      {$ENDIF}
    end;

    {$IFDEF CLIP_DISPLAY_TO_IMAGE_AREA}
    if iNewLeft+iNewWidth>iImageWidth then iNewLeft:= iImageWidth-iNewWidth;
    if iNewTop+iNewHeight>iImageHeight then iNewTop:= iNewHeight-iImageHeight;
    {$ENDIF}

    result:=rect(iNewLeft,iNewTop,iNewLeft+iNewWidth,iNewTop+iNewHeight);
  end;

begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AdjustRectToAspectRatio'); {$endif}
  if IsEmpty then
    result:=ARect
  else
    result:=_AdjustRect(ARect,ClientWidth,ClientHeight,fIEBitmap.Width,fIEBitmap.Height);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.AlphaChannel

<FM>Declaration<FC>
property AlphaChannel:<A TIEBitmap>;

<FM>Description<FN>
Some formats like GIF, PNG, PSD, TIFF,  ICO, CUR and TGA contains an alpha channel that specifies the image's pixels transparency.
The alpha channel is stored in the AlphaChannel property and in IEBitmap.AlphaChannel property.
!!}
function TImageEnView.GetAlphaChannel: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetAlphaChannel'); {$endif}
  result := fIEBitmap.AlphaChannel;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.HasAlphaChannel

<FM>Declaration<FC>
property HasAlphaChannel:boolean;

<FM>Description<FN>
The property HasAlphaChannel returns True if the current image has an alpha channel.

Read-only

!!}
function TImageEnView.GetHasAlphaChannel: boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetHasAlphaChannel'); {$endif}
  result := fIEBitmap.HasAlphaChannel;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.InvertSelection

<FM>Declaration<FC>
procedure InvertSelection;

<FM>Description<FN>
InvertSelection inverts current selection.

<FM>Example<FC>

ImageEnView1.Select(10,10,100,100, iespReplace);	// select box 10,10,100,100
ImageEnView1.InvertSelection;	// select all excluding the box 10,10,100,100

!!}
procedure TImageEnView.InvertSelection;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.InvertSelection'); {$endif}
  fSelectionMask.SyncFull;
  if fSelectionMask.Full then
    Deselect
  else
  begin
    AnimPolygonClear(integer(fHPolySel));
    ShowSelectionEx(true);
    fSelectionMask.Negative(fSelectionIntensity);
    fDBToDraw := true;
    Paint;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.EnableAlphaChannel

<FM>Declaration<FC>
property EnableAlphaChannel:boolean;

<FM>Description<FN>
If EnableAlphaChannel is True, ImageEn shows the image using the alpha channel. Some formats like Gif, Png, Tiff, Ico, Cur and Tga contain an alpha channel that specifies the image's pixels transparency.
The alpha channel is stored in the <A TImageEnView.AlphaChannel> property (a <A TIEBitmap> object) and in TIEBitmap.<A TIEBitmap.AlphaChannel> property.
!!}
procedure TImageEnView.SetEnableAlphaChannel(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetEnableAlphaChannel'); {$endif}
  fEnableAlphaChannel := v;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.UpdateRect

<FM>Declaration<FC>
procedure UpdateRect(rclip:TRect);

<FM>Description<FN>
UpdateRect updates the rectangle rclip. Use this function instead of Update when Bitmap objects change.

<FM>Example<FC>
// we assume that Zoom=100
ImageEnView1.Bitmap.Canvas.Fill(0,0,10,10);
ImageEnView1.UpdateRect(rect(0,0,10,10));
!!}
procedure TImageEnView.UpdateRect(rclip: TRect);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.UpdateRect'); {$endif}
  fDBToDraw := true;
  InvalidateRect(handle, @rclip, false);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetSelectedAreaAlpha

<FM>Declaration<FC>
procedure SetSelectedAreaAlpha(Alpha:integer);

<FM>Description<FN>
SetSelectedAreaAlpha sets the specified Alpha (alpha channel, transparency) value for all pixels inside current selection.

To activate alpha channel (transparency), set EnableAlphaChannel to True.

<FM>Example<FC>

// set transparency to 180 inside 10,10,100,100 rectangle
ImageEnView1.Select(10,10,100,100);
ImageEnVIew1.SetSelectedAreaAlpha(180);
ImageEnView1.io.SaveToFile('image.png');	// saves with alpha channel

!!}
procedure TImageEnView.SetSelectedAreaAlpha(Alpha: integer);
var
  y, x: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectedAreaAlpha'); {$endif}
  if fSelectionMask.IsEmpty then
    // entire image
    GetAlphaChannel.Fill(Alpha)
  else
  begin
    // selected area
    for y := 0 to fSelectionMask.Height - 1 do
      for x := 0 to fSelectionMask.Width - 1 do
        if fSelectionMask.GetPixel(x, y) <> 0 then
          GetAlphaChannel.Pixels_ie8[x, y] := Alpha;
  end;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetSelectionGripStyle

<FM>Declaration<FC>
procedure SetSelectionGripStyle(GripColor1,GripColor2:TColor; GripBrushStyle:TBrushStyle; GripSize:integer; ExtendedGrips:boolean; boolean; Shape:<A TIEGripShape>);

<FM>Description<FN>
SetSelectionGripStyle determines the appearance of selection grips.
GripColor1 : grip border color (default clBlack)
GripColor2 : grip brush color (default clWhite)
GripBrushStyle : brush style (default bsSolid)
GripSize : size in pixels of the grip (default 5)
ExtendedGrips : if true enables grips on border with 8 resizing grips (deault false)
Shape : specifies the grip shape

<FM>Example<FC>

ImageEnView1.SetSelectionGripStyle(clWhite, clWhite, bsSolid, 5, true, iegsCircle);
!!}
procedure TImageEnView.SetSelectionGripStyle(GripColor1, GripColor2: TColor; GripBrushStyle: TBrushStyle; GripSize: integer; ExtendedGrips: boolean; Shape:TIEGripShape);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectionGripStyle'); {$endif}
  fGripColor1 := GripColor1;
  fGripColor2 := GripColor2;
  fGripBrushStyle := GripBrushStyle;
  fGripSize := GripSize;
  fGripShape := Shape;
  fExtendedGrips := ExtendedGrips;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetLayersGripStyle

<FM>Declaration<FC>
procedure SetLayersGripStyle(GripColor1,GripColor2:TColor; GripBrushStyle:TBrushStyle; GripSize:integer; boolean; Shape:<A TIEGripShape>);

<FM>Description<FN>
SetLayersGripStyle determines the appearance of layers grips.
GripColor1 : grip border color (default clBlack)
GripColor2 : grip brush color (default clWhite)
GripBrushStyle : brush style (default bsSolid)
GripSize : size in pixels of the grip (default 5)
Shape : specifies the grip shape

<FM>Example<FC>

ImageEnView1.SetLayersGripStyle(clWhite, clWhite, bsSolid, 5, iegsCircle);
!!}
procedure TImageEnView.SetLayersGripStyle(GripColor1, GripColor2: TColor; GripBrushStyle: TBrushStyle; GripSize: integer; Shape:TIEGripShape);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetLayersGripStyle'); {$endif}
  fLyrGripColor1 := GripColor1;
  fLyrGripColor2 := GripColor2;
  fLyrGripBrushStyle := GripBrushStyle;
  fLyrGripSize := GripSize;
  fLyrGripShape := Shape;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetChessboardStyle

<FM>Declaration<FC>
procedure SetChessboardStyle(Size:integer;BrushStyle:TBrushStyle);

<FM>Description<FN>
SetChessboardStyle specifies size and brush of the chessboard background (see BackgroundStyle).

Size specifies the box size (default 16).
BrushStyle specifies the brush style of the boxes (default bsSolid).

!!}
procedure TImageEnView.SetChessboardStyle(Size: integer; BrushStyle: TBrushStyle);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetChessboardStyle'); {$endif}
  fChessboardSize := Size;
  fChessboardBrushStyle := BrushStyle;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// note: doesn't copy alpha channel

{!!
<FS>TImageEnView.CopySelectionToBitmap

<FM>Declaration<FC>
procedure CopySelectionToBitmap(DestBitmap:TBitmap);

<FM>Description<FN>
CopySelectionToBitmap copies the current selection to the specified bitmap.

<FM>Example<FC>
ImageEnView1.CopySelectionToBitmap( ImageEnView2.Bitmap );

!!}
procedure TImageEnView.CopySelectionToBitmap(DestBitmap: TBitmap);
var
  tempbmp: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CopySelectionToBitmap'); {$endif}
  tempbmp := TIEBitmap.Create;

  if DestBitmap.PixelFormat<>pf1bit then
    DestBitmap.PixelFormat:=pf24bit;

  tempbmp.EncapsulateTBitmap(DestBitmap, true);
  CopySelectionToIEBitmap(tempbmp);
  FreeAndNil(tempbmp);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.CopySelectionToIEBitmap

<FM>Declaration<FC>
procedure CopySelectionToIEBitmap(DestBitmap:<A TIEBitmap>);

<FM>Description<FN>
CopySelectionToIEBitmap copies the current selection to the specified bitmap.

<FM>Example<FC>
ImageEnView1.CopySelectionToIEBitmap( ImageEnView2.IEBitmap );

!!}
procedure TImageEnView.CopySelectionToIEBitmap(DestBitmap: TIEBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CopySelectionToIEBitmap'); {$endif}
  if (fRectResizing <> ieNone) or (fSelectMoving > -1) or fRectSelecting then
  begin
    fSelectionMask.Empty;
    EndSelect;
  end;
  fIEBitmap.CopyWithMask1(DestBitmap,fSelectionMask); // 2.3.1
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Assign selection to Dest
// Dest can be TImageEnView, TBitmap, TImage
// Copy also DPIX,Y and background

{!!
<FS>TImageEnView.AssignSelTo

<FM>Declaration<FC>
procedure AssignSelTo(Dest: TPersistent);

<FM>Description<FN>
Assigns the selected area to the Dest object (can be a <A TImageEnView> or TBitmap).


<FM>Example<FC>

// Create a triangular selection
ImageEnView1.DeSelect;
ImageEnView1.AddSelPoint(100,100);
ImageEnView1.AddSelPoint(200,100);
ImageEnView1.AddSelPoint(150,50);
ImageEnView1.EndSelect;

// assign selection to ImageEnView2
ImageEnView1.AssignSelTo( ImageEnView2 );

// assign selection to mybitmap (TBitmap)
ImageEnView1.AssignSelTo( mybitmap );

!!}
procedure TImageEnView.AssignSelTo(Dest: TPersistent);
var
  di: TImageEnView;
  db: tbitmap;
  im: TImage;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.AssignSelTo'); {$endif}
  if Dest is TImageEnView then
  begin
    di := Dest as TImageEnView;
    if fSelectionMask.IsEmpty then
      //IECopyBitmap(fBitmap,di.Bitmap)
      di.IEBitmap.Assign(fIEBItmap)
    else
      CopySelectionToIEBitmap(di.IEBitmap);
    di.fBackground := Background;
    di.SetDPI(fDPIx, fDPIy);
    di.Update;
    di.ImageChange;
  end
  else if Dest is TBitmap then
  begin
    db := Dest as TBitmap;
    if fSelectionMask.IsEmpty then
      IECopyBitmap(fBitmap, db)
    else
      CopySelectionToBitmap(db);
    db.Modified := true;
  end
  else if Dest is TImage then
  begin
    im := Dest as TImage;
    if fSelectionMask.IsEmpty then
      IECopyBitmap(fBitmap, im.picture.bitmap)
    else
      CopySelectionToBitmap(im.picture.bitmap);
    im.picture.bitmap.Modified := true;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Dest must be pf24bit

{!!
<FS>TImageEnView.CopyToBitmapWithAlpha

<FM>Declaration<FC>
procedure TImageEnView.CopyToBitmapWithAlpha(Dest:TBitmap; DestX,DestY:integer);

<FM>Description<FN>
CopyToBitmapWithAlpha copies the current image inside the Dest bitmap, at DestX, DestY position. If the image has an alpha channel, CopyToBitmapWithAlpha copies only visible area.

<FM>Example<FC>
ImageEnView1.CopyToBitmapWithAlpha( ImageEnView2.Bitmap, 0,0);
ImageEnView2.Update;

!!}
procedure TImageEnView.CopyToBitmapWithAlpha(Dest: TBitmap; DestX, DestY: integer);
var
  dummy1: ppointerarray;
  dummy2, dummy3: PInteger;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CopyToBitmapWithAlpha'); {$endif}
  if Dest.PixelFormat <> pf24bit then
    Dest.PixelFormat := pf24bit;
  if fIEBitmap.HasAlphaChannel then
  begin
    dummy1 := nil;
    dummy2 := nil;
    dummy3 := nil;
    fIEBitmap.RenderToTBitmap(Dest, dummy1, dummy2, dummy3, nil, DestX, DestY, fIEBitmap.Width, fIEBitmap.Height, 0, 0, fIEBitmap.Width, fIEBitmap.Height, true, false, 255, rfNone, true, ielNormal);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.SetSelectedPixelsColor

<FM>Declaration<FC>
procedure SetSelectedPixelsColor(color:<A TRGB>);

<FM>Description<FN>
SetSelectedPixelsColor sets selected pixels to the specified color.

<FM>Example<FC>
// select all pixels like pixel at (0,0), then fills all selected pixels using the White color.
ImageEnView.SelectMagicWand(0,0, iespReplace);
ImageEnView.SetSelectedPixelsColor( CreateRGB(255,255,255) );

!!}
procedure TImageEnView.SetSelectedPixelsColor(color: TRGB);
var
  col, row: integer;
  px: PRGB;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectedPixelsColor'); {$endif}
  if fIEBitmap.PixelFormat=ie24RGB then begin
    for row := 0 to fIEBitmap.Height - 1 do
    begin
      px := fIEBitmap.Scanline[row];
      for col := 0 to fIEBitmap.Width - 1 do
      begin
        if fSelectionMask.IsPointInside(col, row) then
          px^ := color;
        inc(px);
      end;
    end;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetAlphaRangePixelsColor

<FM>Declaration<FC>
procedure SetAlphaRangePixelsColor(alphaMin, alphaMax:integer; color:<A TRGB>);

<FM>Description<FN>
SetAlphaRangePixelsColor sets all pixels that have an alpha channel value between alphaMin and alphaMax to the specified color.

<FM>Example<FC>
// this example loads an image with alpha channel, then paints all transparent pixels (0...254 alpha values) using White color, finally saves in a jpeg where we cannot save the alpha channel.
ImageEnView.IO.LoadFromFile('test.png');
ImageEnView.SetAlphaRangePixelsColor(0,254,CreateRGB(255,255,255));
ImageEnView.IO.SaveToFIle('output.jpg');

!!}
procedure TImageEnView.SetAlphaRangePixelsColor(alphaMin, alphaMax: integer; color: TRGB);
var
  col, row: integer;
  px: PRGB;
  al: pbyte;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetAlphaRangePixelsColor'); {$endif}
  if not HasAlphaChannel then
    exit;
  for row := 0 to fIEBitmap.Height - 1 do
  begin
    px := fIEBitmap.Scanline[row];
    al := fIEBitmap.AlphaChannel.ScanLine[row];
    for col := 0 to fIEBitmap.Width - 1 do
    begin
      if (al^ >= alphaMin) and (al^ <= alphaMax) then
        px^ := color;
      inc(px);
      inc(al);
    end;
  end;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Layers

{!!
<FS>TImageEnView.LayersCount

<FM>Declaration<FC>
property LayersCount:integer;

<FM>Description<FN>
LayersCount returns the number of layers.

!!}
function TImageEnView.GetLayersCount: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetLayersCount'); {$endif}
  result := fLayers.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.GetLayer(idx: integer): TIELayer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetLayer'); {$endif}
  result := TIELayer(fLayers[idx]);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.CurrentLayer

<FM>Declaration<FC>
property CurrentLayer:<A TIELayer>;

<FM>Description<FN>
Gets access to the current layer info. This is the same of:

ImageEnView.Layers[ ImageEnView.LayersCurrent ]

Look at Layers property for more info.

<FM>Example<FC>

ImageEnView.LayersAdd;
ImageEnView.CurrentLayer.Transparency := 200;

!!}
function TImageEnView.GetCurrentLayer:TIELayer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetCurrentLayer'); {$endif}
  result := TIELayer(fLayers[fLayersCurrent]);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersCurrent

<FM>Declaration<FC>
property LayersCurrent:integer;

<FM>Description<FN>
LayersCurrent get/set the current layer.
The first layer starts at 0, the last is <A TImageEnView.LayersCount>-1.
Making a layer current changes the <A TImageEnView.IEBitmap> and <A TImageEnView.Bitmap> properties, so they point to the current layer (allowing specification of which layer is active for input/output and image processing operations).

<FM>Example<FC>
// load 'first.jpg' in layer 0 and 'second.jpg' in layer 1
ImageEnView1.LayersCurrent := 0;
ImageEnView1.IO.LoadFromFile('first.jpg');
ImageEnView1.LayersCurrent:=1;
ImageEnView1.IO.LoadFromFile('second.jpg');
!!}
procedure TImageEnView.SetLayersCurrent(Value: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetLayersCurrent'); {$endif}
  if (Value >= 0) and (Value < fLayers.Count) and (Value<>fLayersCurrent) then
  begin
    // sync current layer (fLayersCurrent=-1 is a temporary state, where no layer is selected)
    if fLayersCurrent > -1 then
    begin
      Layers[fLayersCurrent].Bitmap := fIEBitmap;
      // 2.2.4
      if fSel then
        SaveSelection;
    end;

    // set new layer

    while true do
    begin
      fLayersCurrent := Value;
      if (Layers[Value].Selectable=true) or (Value=0) then
        break;
      dec(Value);
    end;

    fIEBitmap := Layers[Value].Bitmap;
    if fIEBitmap.EncapsulatedFromTBitmap then
      fBitmap := fIEBitmap.VclBitmap
    else
      fBitmap := nil;

    // 2.2.4
    if fSel then
      RestoreSelection(true,iersSyncLayers);

    CallBitmapChangeEvents;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// add a new layer and return its index
// create the bitmap and nil alpha channel

{!!
<FS>TImageEnView.LayersAdd

<FM>Declaration<FC>
function LayersAdd:integer;

<FM>Description<FN>
LayersAdd appends a new layer in the layers list. The layer becomes the current layer, assumes the size of others and the pixel format of the last layer.
LayersAdd returns the index of the added layer.

<FM>Example<FC>
ImageEnView1.IO.LoadFromFile('first.jpg');   // load 'first' in first layer (or current layer)
ImageEnView1.LayersAdd;   // append a new layer
ImageEnView1.IO.LoadFromFile('second.jpg');   // load 'second.jpg' in the new append layer

!!}
function TImageEnView.LayersAdd: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersAdd'); {$endif}
  result := fLayers.Add(TIELayer.Create(self,fIEBitmap, false));
  LayersCurrent := result; // this call update
  Clear;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// insert a new layer and return its index
// create the bitmap and nil alpha channel

{!!
<FS>TImageEnView.LayersInsert

<FM>Declaration<FC>
procedure LayersInsert(Position:integer);

<FM>Description<FN>
LayersInsert inserts a new layer in the layers list at the position Position. The layer becomes the current layer, assumes the size of others and the pixel format of the last layer.

!!}
procedure TImageEnView.LayersInsert(Position: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersInsert'); {$endif}
  // sync current layer
  Layers[fLayersCurrent].Bitmap := fIEBitmap;
  //
  if Layers[Position].IsMask then
    dec(Position);
  fLayers.Insert(Position, TIELayer.Create(self,fIEBitmap, false));
  fLayersCurrent := -1;
  LayersCurrent := Position; // this call update
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// one layer musts remain

{!!
<FS>TImageEnView.LayersRemove

<FM>Declaration<FC>
procedure LayersRemove(idx:integer);

<FM>Description<FN>
LayersRemove removes the specified layer and frees the related bitmap. At the least one layer must be present.

!!}
procedure TImageEnView.LayersRemove(idx: integer);
var
  l: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersRemove'); {$endif}
  if (fLayers.Count > 1) and (idx > -1) and (idx < fLayers.Count) then
  begin // fLayers.Count>1 is not a bug
    // sync current layer
    Layers[fLayersCurrent].Bitmap := fIEBitmap;
    // free idx+1 layer if it is a layer mask
    if (idx<fLayers.Count-1) and (Layers[idx+1].IsMask) then
    begin
      Layers[idx+1].Free;
      fLayers.Delete(idx+1);
    end;
    // free idx layer
    Layers[idx].Free;
    fLayers.Delete(idx);
    // set new current layer
    if (fLayersCurrent = idx) then
    begin
      fLayersCurrent := -1;
      SetLayersCurrent(imin(idx, fLayers.Count - 1));
    end
    else if (fLayersCurrent > idx) then
    begin
      l := fLayersCurrent;
      fLayersCurrent := -1;
      SetLayersCurrent(l - 1);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// remove all layers
{!!
<FS>TImageEnView.LayersClear

<FM>Declaration<FC>
procedure LayersClear;

<FM>Description<FN>
LayersClear removes all layers. At the end this method creates a new layer, which will be the background layer. This because at least one layer must exist.

!!}
procedure TImageEnView.LayersClear;
var
  i:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersClear'); {$endif}
  for i:=fLayers.Count-1 downto 1 do
  begin
    Layers[i].Free;
    fLayers.Delete(i);
    fLayersCurrent:=-1;
    SetLayersCurrent(0);
    Layers[0].SetDefaults;
  end;
  Clear;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersMove

<FM>Declaration<FC>
procedure LayersMove(CurIndex,NewIndex:integer);

<FM>Description<FN>
LayersMove moves CurIndex layer to the position specified in NewIndex.

!!}
procedure TImageEnView.LayersMove(CurIndex, NewIndex: integer);
var
  curLayer,layerMask,movingLayer:TIELayer;
  a,b:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersMove'); {$endif}
  if (NewIndex < 0) or (NewIndex >= fLayers.Count) then
    exit;
  // sync current layer
  Layers[fLayersCurrent].Bitmap := fIEBitmap;
  // save current layer index and make no current layer
  if fLayersCurrent>-1 then
    curLayer:=Layers[fLayersCurrent]
  else
    curLayer:=nil;
  fLayersCurrent := -1;
  // check if it has a layer mask
  if (CurIndex<fLayers.Count-1) and (Layers[CurIndex+1].IsMask) then
  begin
    layerMask:=Layers[CurIndex+1];
    if NewIndex=CurIndex+1 then
      inc(NewIndex);
  end
  else
    layerMask:=nil;
  // move layer
  movingLayer:=Layers[CurIndex];
  fLayers.Move(CurIndex, NewIndex);
  // move layer mask if exists
  if layerMask<>nil then
  begin
    a:=fLayers.IndexOf(layerMask);
    b:=fLayers.IndexOf(movingLayer);
    if b<fLayers.Count-1 then
      inc(b);
    fLayers.Move( a,  b);
  end;
  // set old current layer
  if curLayer<>nil then
    SetLayersCurrent( fLayers.IndexOf(curLayer) );
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// make sure all layers have same sizes (if fLayerSync=true)
// synchornize current fBitmap and fAlphaChannel with layers list
procedure TImageEnView.DoLayersSync;
var
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoLayersSync'); {$endif}
  if fBitmap <> nil then
    fIEBitmap.EncapsulateTBitmap(fBitmap, false); // only sync properties
  // sync current layer
  Layers[fLayersCurrent].Bitmap := fIEBitmap;

  fMaxLayerWidth := Layers[0].Bitmap.Width;
  fMaxLayerHeight := Layers[0].Bitmap.Height;

  if fLayersSync and (fLayers.Count > 1) then
  begin // useful only for more than one layer
    // search for maximum sizes
    for i := 1 to fLayers.Count - 1 do
    begin
      if Layers[i].Bitmap.Width > fMaxLayerWidth then
        fMaxLayerWidth := Layers[i].Bitmap.Width;
      if Layers[i].Bitmap.Height > fMaxLayerHeight then
        fMaxLayerHeight := Layers[i].Bitmap.Height;
    end;
    // set all layers same sizes
    for i := 0 to fLayers.Count - 1 do
    begin
      if (Layers[i].Bitmap.Width <> fMaxLayerWidth) or (Layers[i].Bitmap.Height <> fMaxLayerHeight) then
      begin
        Layers[i].Bitmap.AlphaChannel; // this create alpha channel (requested when resizing layers)
        Layers[i].Bitmap.Resize(fMaxLayerWidth, fMaxLayerHeight, Background, 0, iehLeft, ievTop);
      end;
      if Layers[i].Bitmap.HasAlphaChannel and ((Layers[i].Bitmap.AlphaChannel.Width <> fMaxLayerWidth) or (Layers[i].Bitmap.AlphaChannel.Height <> fMaxLayerHeight)) then
        Layers[i].Bitmap.AlphaChannel.Resize(fMaxLayerWidth, fMaxLayerHeight, 0, 0, iehLeft, ievTop);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.FindLayerAt

<FM>Declaration<FC>
function FindLayerAt(x,y:integer; SelectablesOnly:boolean=true):integer;

<FM>Description<FN>
FindLayerAt returns the layer index under the position x, y (in client area coordinates).
If SelectablesOnly is true, discards layers which aren't selectable.
Returns -1 if no layer was found.

!!}
function TImageEnView.FindLayerAt(x, y: integer; SelectablesOnly:boolean): integer;
var
  rect: TRect;
  lyr:TIELayer;
  xx,yy:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.FindLayerAt'); {$endif}
  for result := fLayers.Count - 1 downto 0 do
  begin
    lyr:=TIELayer(fLayers[result]);
    rect := lyr.ClientAreaBox;
    if (lyr.Selectable or not SelectablesOnly) and lyr.Visible and _InRect(x, y, rect.Left, rect.Top, rect.Right, rect.Bottom) then
      if (not lyr.Bitmap.HasAlphaChannel) or (iesoSelectTranspLayers in fSelectionOptions) then
        break
      else
      begin
        xx:=ilimit( lyr.ConvXScr2Bmp(x), 0,lyr.Bitmap.Width-1 );
        yy:=ilimit( lyr.ConvYScr2Bmp(y), 0,lyr.Bitmap.Height-1 );
        if lyr.Bitmap.Alpha[ xx,yy ] >0 then
          break;
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.IsPointInsideLayer(x,y:integer; layer:integer):boolean;
var
  lyr:TIELayer;
begin
  result:=false;
  if layer>-1 then
  begin
    lyr:=TIELayer(fLayers[layer]);
    if lyr.Rotate=0 then
      with lyr.ClientAreaBox do
        result:=lyr.Visible and _InRect(x, y, Left, Top, Right, Bottom)
    else
      result:=lyr.Visible and IEISPointInPoly(x, y, lyr.DrawingInfo.RotatedDest);
  end;
end;

// 2.3.1
function CoCreateGuid(out guid: TGUID): HResult; stdcall; external 'ole32.dll' name 'CoCreateGuid';

constructor TIELayer.Create(Owner:TObject; TemplateBitmap: TIEBitmap; JustAssign: boolean);
var
  bmp: TBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.Create'); {$endif}
  inherited Create;
  CoCreateGuid(GUID);
  fOwner:=Owner;
  fCachedLayerMask:=nil;
  if JustAssign then
  begin
    Bitmap := TemplateBitmap;
  end
  else
  begin
    Bitmap := TIEBitmap.Create;
    if assigned(TemplateBitmap) then
    begin
      if TemplateBitmap.EncapsulatedFromTBitmap then
      begin
        bmp := TBitmap.Create;
        bmp.Width := 1;
        bmp.Height := 1;
        bmp.PixelFormat := TemplateBitmap.VclBitmap.PixelFormat;
        bmp.Width := TemplateBitmap.Width;
        bmp.Height := TemplateBitmap.Height;
        Bitmap.EncapsulateTBitmap(bmp, true);
      end
      else
      begin
        Bitmap.Location := TemplateBitmap.Location;
        Bitmap.Allocate(TemplateBitmap.Width, TemplateBitmap.Height, TemplateBitmap.PixelFormat);
      end;
    end;
  end;
  FreeBitmapOnDestroy := true;
  SetDefaults;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIELayer.SetDefaults;
begin
  Visible := true;
  Transparency := 255; // full opaque
  PosX := 0;
  PosY := 0;
  ClientAreaBox := Rect(0, 0, 0, 0);
  ResizedWidth := 0;
  ResizedHeight := 0;
  Cropped := false;
  VisibleBox := true;
  Selectable := true;
  Locked := false;
  Magnify.Enabled := false;
  Magnify.Rate := 2;
  Magnify.Style := iemRectangle;
  Magnify.Source := iemCanvas;
  Operation := ielNormal;
  UserData:=nil;
  UserDataLen:=0;
  IsMask:=false;
  DrawOuter:=false;
  FillChar( DrawingInfo, sizeof(DrawingInfo), 0);
  Rotate:=0;
  RotateCenterX:=0.5;
  RotateCenterY:=0.5;
end;

destructor TIELayer.Destroy;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.Destroy'); {$endif}
  inherited;
  if FreeBitmapOnDestroy then
  begin
    if Bitmap.EncapsulatedFromTBitmap then
    begin
      Bitmap.VclBitmap.Free;
      Bitmap.VclBitmap:=nil;
    end;
    FreeAndNil(Bitmap);
  end;
  if UserDataLen>0 then
    freemem(UserData);
  if assigned(fCachedLayerMask) then
    FreeAndNil(fCachedLayerMask);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIELayer.Assign

<FM>Declaration<FC>
procedure Assign(Source:<A TIELayer>);

<FM>Description<FN>
Copies the content of Source layer in the current one.
!!}
procedure TIELayer.Assign(Source:TIELayer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.Assign'); {$endif}
  ResizedWidth:=Source.ResizedWidth;
  ResizedHeight:=Source.ResizedHeight;
  Bitmap.Assign(Source.Bitmap);
  Visible:=Source.Visible;
  VisibleBox:=Source.VisibleBox;
  Selectable:=Source.Selectable;
  Transparency:=Source.Transparency;
  PosX:=Source.PosX;
  PosY:=Source.PosY;
  ClientAreaBox:=Source.ClientAreaBox;
  Cropped:=Source.Cropped;
  Locked:=Source.Locked;
  Magnify:=Source.Magnify;
  Operation:=Source.Operation;
  UserData:=Source.UserData;
  ResampleFilter:=Source.ResampleFilter;
  UseResampleFilter:=Source.UseResampleFilter;
  Name:=Source.Name;
  IsMask:=Source.IsMask;
  DrawOuter:=Source.DrawOuter;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIELayer.SaveInfo(Stream:TStream; SaveBitmap:boolean);
var
  l,sz:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.SaveInfo'); {$endif}
  sz:=0;
  l:=Stream.Position;
  Stream.Write(l,sizeof(integer));
  Stream.Write(GUID,sizeof(TGuid));
  Stream.Write(ResizedWidth,sizeof(ResizedWidth));
  Stream.Write(ResizedHeight,sizeof(ResizedHeight));
  Stream.Write(Visible,sizeof(Visible));
  Stream.Write(VisibleBox,sizeof(VisibleBox));
  Stream.Write(Selectable,sizeof(Selectable));
  Stream.Write(Transparency,sizeof(Transparency));
  Stream.Write(PosX,sizeof(PosX));
  Stream.Write(PosY,sizeof(PosY));
  Stream.Write(ClientAreaBox,sizeof(ClientAreaBox));
  Stream.Write(Cropped,sizeof(Cropped));
  Stream.Write(Locked,sizeof(Locked));
  Stream.Write(Magnify,sizeof(Magnify));
  Stream.Write(Operation,sizeof(Operation));
  Stream.Write(UserData,sizeof(UserData));
  Stream.Write(ResampleFilter,sizeof(ResampleFilter));
  Stream.Write(UseResampleFilter,sizeof(UseResampleFilter));
  SaveStringToStream(Stream,Name);
  Stream.Write(IsMask,sizeof(IsMask));
  Stream.Write(DrawOuter,sizeof(DrawOuter));
  Stream.Write(fRotate,sizeof(double));
  Stream.Write(RotateCenterX,sizeof(double));
  Stream.Write(RotateCenterY,sizeof(double));
  Stream.Write(SaveBitmap,sizeof(boolean));
  if SaveBitmap then
    Bitmap.SaveRAWToBufferOrStream(nil,Stream);
  sz:=Stream.Position-l;
  Stream.Position:=l;
  Stream.Write(sz,sizeof(integer));
  Stream.Position:=l+sz;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIELayer.LoadInfo(Stream:TStream);
var
  sz:integer;
  BitmapSaved:boolean;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.LoadInfo'); {$endif}
  Stream.Read(sz,sizeof(sz));
  Stream.Read(GUID,sizeof(TGuid));
  Stream.Read(ResizedWidth,sizeof(ResizedWidth));
  Stream.Read(ResizedHeight,sizeof(ResizedHeight));
  Stream.Read(Visible,sizeof(Visible));
  Stream.Read(VisibleBox,sizeof(VisibleBox));
  Stream.Read(Selectable,sizeof(Selectable));
  Stream.Read(Transparency,sizeof(Transparency));
  Stream.Read(PosX,sizeof(PosX));
  Stream.Read(PosY,sizeof(PosY));
  Stream.Read(ClientAreaBox,sizeof(ClientAreaBox));
  Stream.Read(Cropped,sizeof(Cropped));
  Stream.Read(Locked,sizeof(Locked));
  Stream.Read(Magnify,sizeof(Magnify));
  Stream.Read(Operation,sizeof(Operation));
  Stream.Read(UserData,sizeof(UserData));
  Stream.Read(ResampleFilter,sizeof(ResampleFilter));
  Stream.Read(UseResampleFilter,sizeof(UseResampleFilter));
  LoadStringFromStream(Stream,Name);
  Stream.Read(IsMask,sizeof(IsMask));
  Stream.Read(DrawOuter,sizeof(DrawOuter));
  Stream.Read(fRotate,sizeof(double));
  Stream.Read(RotateCenterX,sizeof(double));
  Stream.Read(RotateCenterY,sizeof(double));
  Stream.Read(BitmapSaved,sizeof(boolean));
  if BitmapSaved then
    Bitmap.LoadRAWFromBufferOrStream(nil,Stream);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


function TIELayer.GetWidth: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.GetWidth'); {$endif}
  if ResizedWidth = 0 then
    result := Bitmap.Width
  else
    result := ResizedWidth;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TIELayer.GetHeight: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.GetHeight'); {$endif}
  if ResizedHeight = 0 then
    result := Bitmap.Height
  else
    result := ResizedHeight;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TIELayer.SetRotate(v:double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.SetRotate'); {$endif}
  if (frac(v)=0) and (trunc(v) mod 360 = 0) then
    fRotate:=0
  else
    fRotate:=v;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIELayer.ConvXScr2Bmp

<FM>Declaration<FC>
function ConvXScr2Bmp(x:integer):integer;

<FM>Description<FN>
Converts screen coordinates to bitmap coordinates, taking care the layer position and size.
!!}
function TIELayer.ConvXScr2Bmp(x:integer):integer;
var
  ieview:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.ConvXScr2Bmp'); {$endif}
  ieview:= (fOwner as TImageEnView);
  if Width<>0 then
    //result:= trunc( ieview.XScr2Bmp(x - trunc(PosX*ieview.fZoomD100X)) * Bitmap.Width / Width)
    result:= trunc( ieview.XScr2Bmp(x - trunc(PosX*ieview.fZoomD100X)) / Width * Bitmap.Width )
  else
    result:=0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIELayer.ConvYScr2Bmp

<FM>Declaration<FC>
function ConvYScr2Bmp(y:integer):integer;

<FM>Description<FN>
Converts screen coordinates to bitmap coordinates, taking care the layer position and size.
!!}
function TIELayer.ConvYScr2Bmp(y:integer):integer;
var
  ieview:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.ConvYScr2Bmp'); {$endif}
  ieview:= (fOwner as TImageEnView);
  if Height<>0 then
    //result:= trunc( ieview.YScr2Bmp(y - trunc(PosY*ieview.fZoomD100Y)) * Bitmap.Height / Height)
    result:= trunc( ieview.YScr2Bmp(y - trunc(PosY*ieview.fZoomD100Y)) / Height * Bitmap.Height )
  else
    result:=0;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIELayer.ConvXBmp2Scr

<FM>Declaration<FC>
function ConvXBmp2Scr(x:integer):integer;

<FM>Description<FN>
Converts bitmap coordinates to screen coordinates, taking care the layer position and size.
!!}
function TIELayer.ConvXBmp2Scr(x:integer):integer;
var
  ieview:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.ConvXBmp2Scr'); {$endif}
  ieview:= (fOwner as TImageEnView);
  //result:= ieview.XBmp2Scr(trunc(x*Width/Bitmap.Width))+trunc(PosX*ieview.fZoomD100X);
  result:= ieview.XBmp2Scr(trunc(x/Bitmap.Width*Width))+trunc(PosX*ieview.fZoomD100X);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TIELayer.ConvYBmp2Scr

<FM>Declaration<FC>
function ConvYBmp2Scr(y:integer):integer;

<FM>Description<FN>
Converts bitmap coordinates to screen coordinates, taking care the layer position and size.
!!}
function TIELayer.ConvYBmp2Scr(y:integer):integer;
var
  ieview:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TIELayer.ConvYBmp2Scr'); {$endif}
  ieview:= (fOwner as TImageEnView);
  //result:= ieview.YBmp2Scr(trunc(y*Height/Bitmap.Height))+trunc(PosY*ieview.fZoomD100Y);
  result:= ieview.YBmp2Scr(trunc(y/Bitmap.Height*Height))+trunc(PosY*ieview.fZoomD100Y);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// LayerMask can be nil
// If RelativePositions=false the output layer should have posx=0 and posy=0 because the required space is added to the destination bitmap.
procedure IELayersMerge(Layer0, Layer1, LayerMask:TIELayer; Destination:TIEBitmap; ZoomFilter:TResampleFilter; Background:TColor; RelativePositions:boolean);
var
  // l0...is layer 0 (down layer)
  // l1...is layer 1 (up layer)
  // l2...is layer mask of layer 1
  l0bitmap, l1bitmap, l2bitmap: TIEBitmap;
  l0alpha, l1alpha: TIEBitmap;
  l0transp, l1transp: integer;
  l0palpha, l1palpha: pbyte;
  l0prgb, l1prgb: PRGB;
  l2pbyte:pbyte;
  l0posx, l1posx, l2posx: integer;
  l0posy, l1posy, l2posy: integer;
  l0row, l1row, l2row: integer;
  l0col, l1col, l2col: integer;
  proc0, proc1: TImageEnProc;
  l0width, l1width, l2width: integer;
  l0height, l1height, l2height: integer;
  outbitmap: TIEBitmap;
  outalpha: TIEBitmap;
  outwidth, outheight:integer;
  row, col: integer;
  SimAlphaRow0, SimAlphaRow1: pbyte;
  ConvRGBRow0, ConvRGBRow1: PRGB;
  pdestalpha: pbyte;
  al, al10, destalpha10: integer;
  pdest: PRGB;
  df: integer;
  aa, bb, cc, opt1: double;
  maxwidth, maxheight: integer;
  minposx, minposy:integer;
  all0: pbyte;
  allBak:PRGB;
  vv: TRGB;
  op: TIERenderOperation;
  i,a,r,g,b,m:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('IELayersMerge'); {$endif}
  op := Layer1.Operation;

  proc0 := TImageEnProc.Create(nil);
  proc1 := TImageEnProc.Create(nil);

  // layer 0 vars
  l0bitmap := Layer0.Bitmap;
  l0width := Layer0.Width;
  l0height := Layer0.Height;
  if (l0width <> l0bitmap.Width) or (l0height <> l0bitmap.Height) then
  begin
    // resize the layer
    proc0.AttachedIEBitmap := l0bitmap;
    proc0.Resample(l0width, l0height, ZoomFilter);
  end;
  l0posx :=Layer0.PosX;
  l0posy := Layer0.PosY;
  if Layer0.Bitmap.HasAlphaChannel then
    l0alpha := Layer0.Bitmap.AlphaChannel
  else
    l0alpha := nil;
  l0transp := Layer0.Transparency;
  getmem(SimAlphaRow0, l0bitmap.Width);
  fillchar(SimAlphaRow0^, l0bitmap.Width, 255);
  getmem(ConvRGBRow0, l0bitmap.Width * sizeof(TRGB));

  // layer 1 vars
  l1bitmap := Layer1.Bitmap;
  l1width := Layer1.Width;
  l1height := Layer1.Height;
  if (l1width <> l1bitmap.Width) or (l1height <> l1bitmap.Height) then
  begin
    // resize the layer
    proc1.AttachedIEBitmap := l1bitmap;
    proc1.Resample(l1width, l1height, ZoomFilter);
  end;
  l1posx := Layer1.PosX;
  l1posy := Layer1.PosY;
  if Layer1.Bitmap.HasAlphaChannel then
    l1alpha := Layer1.Bitmap.AlphaChannel
  else
    l1alpha := nil;
  l1transp := Layer1.Transparency;
  getmem(SimAlphaRow1, l1bitmap.Width);
  fillchar(SimAlphaRow1^, l1bitmap.Width, 255);
  getmem(ConvRGBRow1, l1bitmap.Width * sizeof(TRGB));

  // layer mask vars (of layer 1)
  if LayerMask<>nil then
  begin
    l2width := LayerMask.Width;
    l2height := LayerMask.Height;
    if (l2width <> LayerMask.Bitmap.Width) or (l2height <> LayerMask.Bitmap.Height) then
    begin
      // resize the layer
      l2bitmap := TIEBitmap.Create;
      l2bitmap.Allocate(l2width,l2height,ie8g);
      _IEBmpStretchEx(LayerMask.Bitmap,l2bitmap,nil,nil);
    end
    else
      l2bitmap := LayerMask.Bitmap;
    l2posx := LayerMask.PosX;
    l2posy := LayerMask.PosY;
  end
  else
  begin
    l2posx:=0;
    l2posy:=0;
  end;

  // output vars
  if l0posx < 0 then
  begin
    inc(l1posx, -l0posx);
    inc(l2posx, -l0posx);
    l0posx := 0;
  end;
  if l0posy < 0 then
  begin
    inc(l1posy, -l0posy);
    inc(l2posy, -l0posy);
    l0posy := 0;
  end;
  if l1posx < 0 then
  begin
    inc(l0posx, -l1posx);
    inc(l2posx, -l1posx);
    l1posx := 0;
  end;
  if l1posy < 0 then
  begin
    inc(l0posy, -l1posy);
    inc(l2posy, -l1posy);
    l1posy := 0;
  end;

  maxwidth  := imax(l0width + l0posx, l1width + l1posx);
  maxheight := imax(l0height + l0posy, l1height + l1posy);

  if RelativePositions then
  begin
    minposx := imin(l0posx, l1posx);
    minposy := imin(l0posy, l1posy);
  end
  else
  begin
    minposx := 0;
    minposy := 0;
  end;

  outwidth:=maxwidth-minposx;
  outheight:=maxheight-minposy;

  outbitmap := Destination;
  if (outwidth<>outbitmap.Width) or (outheight<>outbitmap.Height) or (outbitmap.PixelFormat<>ie24RGB) then
    outbitmap.Allocate(outwidth,outheight,ie24RGB);
  outalpha := outbitmap.AlphaChannel; // this creates alpha channel
  outalpha.Full := false;

  getmem(all0, outwidth * 4);
  fillchar(all0^, outwidth * 4, 0);

  // set background row
  vv:=TColor2TRGB(Background);
  getmem(allBak, outwidth *4);
  pdest:=allBak;
  for i:=1 to outwidth do
  begin
    pdest^:=vv;
    inc(pdest);
  end;

  // combine images
  for row := minposy to minposy+outheight - 1 do
  begin

    // set layer 0 pointers
    l0row := row - l0posy;
    if (l0row >= 0) and (l0row < l0bitmap.Height) then
    begin
      if assigned(l0alpha) then
        l0palpha := l0alpha.Scanline[l0row]
      else
        l0palpha := SimAlphaRow0;
      if l0bitmap.PixelFormat = ie24RGB then
        l0prgb := l0bitmap.Scanline[l0row]
      else
      begin
        // convert one row of l0bitmap to 24bit
        _ConvRow1To24(l0bitmap.Scanline[l0row], pbyte(ConvRGBRow0), l0Width);
        l0prgb := ConvRGBRow0;
      end;
    end
    else
    begin
      l0palpha := all0;
      l0prgb := allBak;
    end;

    // set layer 1 pointers
    l1row := row - l1posy;
    if (l1row >= 0) and (l1row < l1Height) then
    begin
      if assigned(l1alpha) then
        l1palpha := l1alpha.ScanLine[l1row]
      else
        l1palpha := SimAlphaRow1;
      if l1bitmap.PixelFormat = ie24RGB then
        l1prgb := l1bitmap.Scanline[l1row]
      else
      begin
        // convert one row of l1bitmap to 24bit
        _ConvRow1To24(l1bitmap.Scanline[l1row], pbyte(ConvRGBRow1), l1Width);
        l1prgb := ConvRGBRow1;
      end;
    end
    else
    begin
      l1palpha := all0;
      l1prgb := allBak;
    end;

    // set layer mask pointers
    if LayerMask<>nil then
    begin
      l2row := row - l2posy;
      if (l2row >= 0) and (l2row < l2Height) then
        l2pbyte := l2bitmap.Scanline[l2row]
      else
        l2pbyte := all0;
    end
    else
    begin
      l2pbyte:=all0;
    end;

    // set output pointers
    pdest := outbitmap.Scanline[row-minposy];
    pdestalpha := outalpha.Scanline[row-minposy];

    // main loop
    for col := minposx to minposx+outwidth - 1 do
    begin
      l0col := col - l0posx;
      l1col := col - l1posx;
      l2col := col - l2posx;
      // combine pixels
      if (l0col >= 0) and (l1col >= 0) and (l0col < l0Width) and (l1col < l1Width) then
      begin
        aa := imin(l0palpha^, l0transp) / 255;
        if LayerMask<>nil then
        begin
          if (l2col>=0) and (l2col<l2Width) then
          begin
            bb := imin(imin(l1palpha^,l2pbyte^), l1transp) / 255;
            inc(l2pbyte);
          end
          else
            bb:= 0;
        end
        else
          bb := imin(l1palpha^, l1transp) / 255;
        opt1 := (1 - bb) * aa;
        cc := bb + opt1;

        vv.r := l0prgb^.r;
        vv.g := l0prgb^.g;
        vv.b := l0prgb^.b;
        IEBlend(l1prgb^, vv, op);
        if cc<>0 then
        begin
          r:=round((bb * vv.r + opt1 * l0prgb^.r) / cc);
          g:=round((bb * vv.g + opt1 * l0prgb^.g) / cc);
          b:=round((bb * vv.b + opt1 * l0prgb^.b) / cc);
          if r<0 then pdest^.r:=0 else if r>255 then pdest^.r:=255 else pdest^.r:=r;
          if g<0 then pdest^.g:=0 else if g>255 then pdest^.g:=255 else pdest^.g:=g;
          if b<0 then pdest^.b:=0 else if b>255 then pdest^.b:=255 else pdest^.b:=b;
        end
        else
          pdest^:=vv;

        a:=round(cc * 255);
        if a<0 then pdestalpha^:=0 else if a>255 then pdestalpha^:=255 else pdestalpha^:=a;

        inc(l0palpha);
        inc(l0prgb);
        inc(l1palpha);
        inc(l1prgb);
      end
      else if (l0col >= 0) and (l0col < l0Width) then
      begin
        // copy only l0bitmap
        pdest^.r := l0prgb^.r;
        pdest^.g := l0prgb^.g;
        pdest^.b := l0prgb^.b;
        pdestalpha^ := imin(l0palpha^, l0transp);
        inc(l0palpha);
        inc(l0prgb);
      end
      else if (l1col >= 0) and (l1col < l1Width) then
      begin
        // copy only l1bitmap
        pdest^.r := l1prgb^.r;
        pdest^.g := l1prgb^.g;
        pdest^.b := l1prgb^.b;
        if LayerMask<>nil then
        begin
          if (l2col>=0) and (l2col<l2Width) then
          begin
            pdestalpha^ := imin(imin(l1palpha^,l2pbyte^), l1transp);
            inc(l2pbyte);
          end
          else
            pdestalpha^ := 0;
        end
        else
          pdestalpha^ := imin(l1palpha^, l1transp);
        inc(l1palpha);
        inc(l1prgb);
      end
      else
      begin
        // transparent area
        pdestalpha^ := 0;
        pdest^ := TColor2TRGB(BackGround);
      end;
      inc(pdest);
      inc(pdestalpha);
    end;
  end;

  freemem(SimAlphaRow0);
  freemem(SimAlphaRow1);
  freemem(ConvRGBRow0);
  freemem(ConvRGBRow1);
  freemem(all0);
  freemem(allBak);
  if proc0.CanUndo then
    proc0.Undo;
  if proc1.CanUndo then
    proc1.Undo;
  FreeAndNil(proc0);
  FreeAndNil(proc1);
  if (LayerMask<>nil) and (LayerMask.Bitmap<>l2bitmap) then
    FreeAndNil(l2bitmap);

  // verify if outalpha is full and remove it if not needed
  outalpha.SyncFull;
  if outalpha.Full then
  begin
    // remove alpha
    outbitmap.RemoveAlphaChannel;
  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersMergeTo

<FM>Declaration<FC>
procedure LayersMergeTo(Layer0, Layer1: integer; Destination:<A TIEBitmap>);

<FM>Description<FN>
LayersMergeTo merges Layer0 and Layer1 into a TIEBitmap object.
LayersMerge makes the new image looking at Layers[].<A TIELayer.Transparency> and at the bitmap's alpha channels.
Resulting bitmap will be always 24 bit (ie24RGB).

<FM>Example<FC>
// we want to get a background image and then merge over it another image in semitransparency.

ImageEnView.IO.LoadFromFile('background.jpg');
ImageEnView.LayersAdd;
ImageEnView.IO.LoadFromFile('foreground.jpg');
ImageEnView.Layers[1].Transparency:=128; // the second layer has 128 of transparency
ImageEnView.LayersMergeTo(0,1, ImageEnView2.IEBitmap);
ImageEnView2.IO.SaveToFile('output.jpg');

!!}
procedure TImageEnView.LayersMergeTo(Layer0, Layer1: integer; Destination:TIEBitmap);
var
  UpLayer,DownLayer:integer;
  LayerMask:TIELayer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersMergeTo'); {$endif}
  DownLayer:=imin(Layer0,Layer1);
  UpLayer  :=imax(Layer0,Layer1);
  if (UpLayer<fLayers.Count-1) and Layers[UpLayer+1].IsMask then
    LayerMask:=Layers[UpLayer+1]
  else
    LayerMask:=nil;
  IELayersMerge(Layers[DownLayer],Layers[UpLayer],LayerMask,Destination,fZoomFilter,fBackground, DownLayer>0)
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersMerge

<FM>Declaration<FC>
procedure LayersMerge(Layer0, Layer1: integer; RemoveUpperLayer:boolean=true);

<FM>Description<FN>
LayersMerge merges Layer0 and Layer1 into one layer. The new layer has the minor index of Layer0 and Layer1.
LayersMerge makes the new layer looking at Layers[].Transparency and at the bitmap's alpha channels.
If RemoveUpperLayer is False, the upper layer will not be removed.

<FM>Example<FC>
// we want to get a background image and then merge over it another image in semitransparency.

ImageEnView.IO.LoadFromFile('background.jpg');
ImageEnView.LayersAdd;
ImageEnView.IO.LoadFromFile('foreground.jpg');
ImageEnView.Layers[1].Transparency:=128; // the second layer has 128 of transparency
ImageEnView.LayersMerge(0,1);   // from now we have only one layer
ImageEnView.IO.SaveToFile('output.jpg');

!!}
procedure TImageEnView.LayersMerge(Layer0, Layer1: integer; RemoveUpperLayer:boolean);
var
  outlayer: TIELayer;
  lamin, lamax: integer;
  oldnav:TImageEnView;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersMerge'); {$endif}

  oldnav:=fNavigator;
  SetNavigator(nil);

  lamin := imin(Layer0, Layer1);
  lamax := imax(Layer0, Layer1);

  outlayer := TIELayer.Create(self,Layers[Layer0].Bitmap, false);

  LayersMergeTo(Layer0,Layer1,outlayer.Bitmap);

  if lamin>0 then
  begin
    outlayer.PosX:=imin( Layers[Layer0].PosX, Layers[Layer1].PosX );
    outlayer.PosY:=imin( Layers[Layer0].PosY, Layers[Layer1].PosY );
  end;

  outlayer.Locked := TIELayer(Layers[lamin]).Locked;
  outlayer.VisibleBox := TIELayer(Layers[lamin]).VisibleBox;
  outlayer.Selectable:= TIELayer(Layers[lamin]).Selectable;
  // remove old layers
  if RemoveUpperLayer then
  begin
    if (lamax<fLayers.Count-1) and Layers[lamax+1].IsMask then
    begin
      // remove layer mask
      Layers[lamax+1].Free;
      fLayers.Delete(lamax+1);
    end;
    Layers[lamax].Free;
    fLayers.Delete(lamax);
  end;
  Layers[lamin].Free;
  fLayers.Delete(lamin);
  // insert new one
  fLayersCurrent := -1;
  fLayers.Insert(lamin, outlayer);
  //
  LayersCurrent := lamin; // this call update

  SetNavigator(oldnav);

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// Layers
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnView.Bitmap

<FM>Declaration<FC>
property Bitmap: TBitmap;

<FM>Description<FN>
Bitmap contains the image (current layer) to display.
If LegacyBitmap is True, <A TImageEnView.IEBitmap> is just a wrapper for TBitmap that may be accessed using the Bitmap property).
!!}
// after changing sizes using Bitmap, we should call Update to sync fIEBitmap
function TImageEnView.GetFBitmap: TBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetFBitmap'); {$endif}
  result := fBitmap;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.IEBitmap

<FM>Declaration<FC>
property IEBitmap:<A TIEBitmap>;

<FM>Description<FN>
IEBitmap contains the image (current layer) to display. The object TIEBitmap also contains the alpha channel of the image.

If LegacyBitmap is True, IEBitmap is just a wrapper for TBitmap that may be accessed using the Bitmap property).

!!}
function TImageEnView.GetIEBitmap: TIEBitmap;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetIEBitmap'); {$endif}
  result := fIEBitmap;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LegacyBitmap

<FM>Declaration<FC>
property LegacyBitmap:boolean;

<FM>Description<FN>
If LegacyBitmap is True, ImageEn uses TBitmap to store the image, otherwise ImageEn uses TIEBitmap.
TIEBitmap handles images using memory mapped file (for large images) or main memory. This allows handling of large images and to include input/output and image processing in a multi-threaded environment.
!!}
procedure TImageEnView.SetLegacyBitmap(Value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetLegacyBitmap'); {$endif}
  if Value <> fLegacyBitmap then
  begin
    if fLegacyBitmap = true then
    begin
      // from fBitmap to fIEBitmap
      fIEBitmap.EncapsulatedFromTBitmap := false; // this allows fIEBitmap to full own fBitmap
      fIEBitmap.Location := ieFile;
      fBitmap := nil; // fBitmap freedom by fIEBitmap
    end
    else
    begin
      // from fIEBitmap to fBitmap
      fIEBitmap.Location := ieTBitmap;
      fIEBitmap.EncapsulatedFromTBitmap := true; // this deny fIEBitmap to own fBitmap
      fBitmap := fIEBitmap.VclBitmap;
    end;
    fLegacyBitmap := Value;
    CallBitmapChangeEvents;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// fOffX,fOffY,frx,fry,fo1x,fo1y,fo2x,fo2y must be valid

procedure TImageEnView.PaintSelection(OutBitmap: TBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaintSelection'); {$endif}

  if fVisibleSelection then
  begin

    if (iesoFilled in fSelectionOptions) and PIEAnimPoly(fHPolySel)^.Enabled then
      //fSelectionMask.InvertCanvas(OutBitmap.Canvas, fOffX, fOffY, frx, fry, fo1x, fo1y, fo2x, fo2y);
      with CurrentLayer.DrawingInfo do
        fSelectionMask.InvertCanvas(OutBitmap.Canvas,XDst, YDst, WidthDst, HeightDst, XSrc, YSrc, WidthSrc, HeightSrc);  // 2.2.2

    if (iesoMarkOuter in fSelectionOptions) and PIEAnimPoly(fHPolySel)^.Enabled then
      //fSelectionMask.DrawOuter(OutBitmap, fOffX, fOffY, frx, fry, fo1x, fo1y, fo2x, fo2y);
      with CurrentLayer.DrawingInfo do
        fSelectionMask.DrawOuter(OutBitmap, XDst, YDst, WidthDst, HeightDst, XSrc, YSrc, WidthSrc, HeightSrc);  // 2.2.2

  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// fOffX,fOffY,frx,fry,fo1x,fo1y,fo2x,fo2y must be valid

procedure TImageEnView.PaintGrid(OutBitmap: TBitmap);
var
  x1, y1, x2, y2, y, x: integer;
  dd:double;
  iec:TIECanvas;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaintGrid'); {$endif}
  // 2.2.4
  if fDisplayGrid and CurrentLayer.Visible and ((fZoomX >= iegMINZOOMDISPLAYGRID) or (fZoomY>=iegMINZOOMDISPLAYGRID)) and ((MaxLayerWidth > 1) or (MaxLayerHeight > 1)) then
  begin
    with OutBitmap.Canvas do
    begin
      Pen.Assign(iegGRIDPEN);
      y1:=CurrentLayer.DrawingInfo.YDst;
      y2:=CurrentLayer.DrawingInfo.YDst+CurrentLayer.DrawingInfo.HeightDst;
      dd:=CurrentLayer.DrawingInfo.WidthDst/CurrentLayer.DrawingInfo.WidthSrc;
      for x:=0 to CurrentLayer.DrawingInfo.WidthSrc do
      begin
        x1:=round(CurrentLayer.DrawingInfo.XDst + x*dd);
        MoveTo(x1,y1);
        LineTo(x1,y2);
      end;
      x1:=CurrentLayer.DrawingInfo.XDst;
      x2:=CurrentLayer.DrawingInfo.XDst+CurrentLayer.DrawingInfo.WidthDst;
      dd:=CurrentLayer.DrawingInfo.HeightDst/CurrentLayer.DrawingInfo.HeightSrc;
      for y:=0 to CurrentLayer.DrawingInfo.HeightSrc do
      begin
        y1:=round(CurrentLayer.DrawingInfo.YDst + y*dd);
        MoveTo(x1,y1);
        LineTo(x2,y1);
      end;
    end;

    if (fHighlightedPixel.X>=0) and (fHighlightedPixel.Y>=0) then
    begin
      x1:=XBmp2Scr(fHighlightedPixel.X);
      y1:=YBmp2Scr(fHighlightedPixel.Y);
      x2:=XBmp2Scr(fHighlightedPixel.X+1);
      y2:=YBmp2Scr(fHighlightedPixel.Y+1);
      iec:=TIECanvas.Create(OutBitmap.Canvas,true,true);
      iec.Pen.Color:=clRed;
      iec.Pen.Width:=2;
      iec.Brush.Style:=bsClear;
      iec.RoundRect(x1,y1,x2,y2,5,5);
      iec.Free;
    end;

  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.GetRenderRectangles

<FM>Declaration<FC>
procedure GetRenderRectangles(var xDst, yDst, dxDst, dyDst: integer; var xSrc, ySrc, dxSrc, dySrc: integer);

<FM>Description<FN>
Returns the rendered rectangle related to the client area and the source rectangle related to the bitmap of current layer.

xDst, yDst, dxDst, dyDst : the destination x,y and width,height where the image has been rendered

xSrc, ySrc, dxSrc, dySrc : the source x,y and width,height of the source image.

!!}
procedure TImageEnView.GetRenderRectangles(var xDst, yDst, dxDst, dyDst: integer; var xSrc, ySrc, dxSrc, dySrc: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetRenderRectangles'); {$endif}
  DoLayersSync; // make sure all layers have same sizes
  CalcPaintCoords;
  CreateCoordConvLUT; // recalculates coordinate conversion LUT
  xDst:=fOffX;
  yDst:=fOffY;
  dxDst:=frx;
  dyDst:=fry;
  xSrc:=fo1x;
  ySrc:=fo1y;
  dxSrc:=fo2x;
  dySrc:=fo2y;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// ABitmap must be pf24bit, width=clientwidth height=clientheight
// ABitmapScanline can be "nil"
// If UpdRect=nil updates entire ABitmap width*height
procedure TImageEnView.PaintToEx(ABitmap: TIEBitmap; ABitmapScanline: ppointerarray; UpdRect: PRect; drawBackground:boolean; drawGadgets:boolean);
var
  i,j: integer;
  lBitmap: TIEBitmap;
  IsFirst: boolean;
  Transparency: integer; // the value of TIELayer.Transpacency field
  zf: TResampleFilter; // effective zoom filter
  XSrc, YSrc, WidthSrc, HeightSrc: integer;
  XDst, YDst, WidthDst, HeightDst: integer;
  dummy2, dummy3: PInteger;
  layer: TIELayer;
  w, h: integer;
  x1, y1, x2, y2: integer;
  x,y:integer;
  layerMask:TIELayer;
  oldAlpha:TIEBitmap;
  newAlpha:TIEBitmap;
  FreeLayerMask:boolean;
  px:PRGB;
  rotbmp,tmpbmp:TIEBitmap;
  lresw,lresh:integer;
  lposx,lposy:integer;
  //
  procedure SubDrawBackground(force: boolean);
  var
    bHandledBG:boolean;
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaintToEx.SubDrawBackground'); {$endif}
    if force or (fOffX > 0) or (fOffY > 0) or (frx < ABitmap.Width) or (fry < ABitmap.Height) or
      (fEnableAlphaChannel and lBitmap.HasAlphaChannel and (not lBitmap.AlphaChannel.Full)) or (Transparency < 255) then
    begin
      if UpdRect <> nil then
      begin
        with UpdRect^ do
          IntersectClipRect(ABitmap.Canvas.Handle, left, top, right + 1, bottom + 1);
      end;
      bHandledBG:=false;
      if assigned(fOnDrawBackground) then
        fOnDrawBackground(self, ABitmap.Canvas, Rect(0, 0, ABitmap.Width, ABitmap.Height), bHandledBG);
      if bHandledBG=false then
        IEDrawBackground(ComponentState, ABitmap.Canvas, ABitmap.VclBitmap, fBackgroundStyle, fBackGround, 0, 0, ABitmap.Width, ABitmap.Height, fOffX, fOffY, fOffX + frx, fOffY + fry, fChessboardSize, fChessboardBrushStyle, fGradientEndColor, fWallPaper,fWallPaperStyle);
      SelectClipRgn(ABitmap.canvas.handle, 0);
    end;
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;
  //
  procedure SetLayerMask;
  var
    pold,pnew:pbyte;
    i,j:integer;
    aw,ah:integer;  // alpha width and height
    mw,mh:integer;  // mask width and height
    v:integer;
    rx,ry:double;
    zx,zy:double;
    mx,my:integer;
    mxarr:pintegerarray;
    msk_p:pbytearray;
    l0width,l0height:integer;
    rmy:integer;
    armx:pintegerarray;
    doloop:boolean;
  begin
    if layerMask=nil then
      exit;
    if layer.fCachedLayerMask<>nil then
    begin
      // cached
      oldAlpha:=lBitmap.AlphaChannel;
      lBitmap.AlphaChannel:=layer.fCachedLayerMask;
      newAlpha:=layer.fCachedLayerMask;
    end
    else
    begin
      // check pixelformat of layer mask
      if layerMask.Bitmap.PixelFormat<>ie8g then
      begin
        layerMask.Bitmap.PixelFormat:=ie8g;
        if layerMask.Bitmap.HasAlphaChannel then
          layerMask.Bitmap.RemoveAlphaChannel;  // a layer mask cannot have alpha channel
      end;
      //
      l0width:=Layers[0].Bitmap.Width;
      l0height:=Layers[0].Bitmap.Height;
      oldAlpha:=lBitmap.AlphaChannel;
      newAlpha:=TIEBitmap.Create;
      newAlpha.Allocate(oldAlpha.Width,oldAlpha.Height,ie8g);
      lBitmap.AlphaChannel:=newAlpha;
      aw:=newAlpha.Width;
      ah:=newAlpha.Height;
      mw:=layerMask.Bitmap.Width;
      mh:=layerMask.Bitmap.Height;
      zx:=(layer.Width/layer.Bitmap.Width);
      zy:=(layer.Height/layer.Bitmap.Height);
      rx:=(layerMask.Width/layerMask.Bitmap.Width);
      ry:=(layerMask.Height/layerMask.Bitmap.Height);
      armx:=nil;

      getmem(mxarr,sizeof(integer)*aw);
      for j:=0 to aw-1 do
        mxarr[j]:=round((j*zx/rx-layerMask.PosX/rx)+layer.PosX/rx);

      if fSoftCrop=iesfAlphaBlend then
      begin
        getmem(armx,sizeof(integer)*aw);
        for j:=0 to aw-1 do
        begin
          i:=round(mxarr[j]*rx)+layer.PosX;
          if (i<0) or (i>l0width) then
            armx[j]:=0
          else
            armx[j]:=-1;
        end;
      end;

      for i:=0 to ah-1 do
      begin
        pold:=oldAlpha.Scanline[i];
        pnew:=newAlpha.Scanline[i];
        my:=round((i*zy/ry-layerMask.PosY/ry)+layer.PosY/ry);
        msk_p:=layerMask.Bitmap.Scanline[imin(imax(0,my),layerMask.Bitmap.Height-1)];
        doloop:=true;
        if fSoftCrop=iesfAlphaBlend then
        begin
          rmy:=round(my*ry)+layer.PosY;
          if (rmy<0) or (rmy>l0height) then
          begin
            FillChar(pnew^,aw,fSoftCropValue);
            doloop:=false;
          end;
        end;
        if doloop then
          for j:=0 to aw-1 do
          begin

            if (fSoftCrop=iesfAlphaBlend) and (armx[j]=0) then
              v:=fSoftCropValue
            else
            begin
              mx:=mxarr[j];
              if (my<mh) and (my>=0) and (mx<mw) and (mx>=0) then
                v:=msk_p[mx]
              else
                v:=0;
            end;

            if pold^<v then
              pnew^:=pold^
            else
              pnew^:=v;

            inc(pold);
            inc(pnew);
          end;
      end;
      freemem(mxarr);
      if fSoftCrop=iesfAlphaBlend then
        freemem(armx);
    end;
  end;
  procedure UnSetLayerMask;
  begin
    if layerMask<>nil then
    begin
      layer.bitmap.AlphaChannel:=oldAlpha;
      if layer.fCachedLayerMask=nil then
        layer.fCachedLayerMask:=newAlpha
      else if layer.fCachedLayerMask<>newAlpha then
      begin
        // this should never happen
        FreeAndNil(layer.fCachedLayerMask);
        layer.fCachedLayerMask:=newAlpha;
      end;
    end;
  end;
  function AlignYBmp2Scr(v:integer; ref:integer):integer;
  begin
    if YScr2Bmp(v)<ref then
      result:=v+1
    else if YScr2Bmp(v)>ref then
      result:=v-1
    else
      result:=v;
  end;
  function AlignXBmp2Scr(v:integer; ref:integer):integer;
  begin
    if XScr2Bmp(v)<ref then
      result:=v+1
    else if XScr2Bmp(v)>ref then
      result:=v-1
    else
      result:=v;
  end;

begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.PaintToEx'); {$endif}

  DoLayersSync;
  CalcPaintCoords;
  CreateCoordConvLUT; // recalculates coordinate conversion LUT

  // check for errors in current layer
  if (csDesigning in ComponentState) or (fIEBitmap.Height = 0) or (fIEBitmap.Width = 0) then
    exit; // EXIT!
  if fIEBitmap.HasAlphaChannel and ((fIEBitmap.AlphaChannel.Width <> fIEBitmap.Width) or (fIEBitmap.AlphaChannel.Height <> fIEBitmap.Height)) then
    exit; // EXIT!

  lposx:=0;
  lposy:=0;

  // draw layers
  IsFirst := true;
  for i := 0 to fLayers.Count - 1 do
  begin
    layer := TIELayer(fLayers[i]);
    lBitmap := layer.Bitmap;

    if layer.Visible and (frx <> 0) and (fry <> 0) and ((lBitmap.Width >= fMinBitmapSize) or (lBitmap.Height >= fMinBitmapSize)) then
    begin

      // layer mask and softcropping
      layerMask:=nil;
      FreeLayerMask:=false;
      if (i<fLayers.Count-1) and Layers[i+1].IsMask and (not layer.IsMask) and (layer.Rotate=0) then
        layerMask:=Layers[i+1];
      if (i>0) and (layerMask=nil) and (fSoftCrop=iesfAlphaBlend) then
      begin
        FreeLayerMask:=true;
        layerMask:=TIELayer.Create(self,nil,false);
        layerMask.Bitmap.Allocate(lBitmap.Width,lBitmap.Height,ie8g);
        layerMask.Bitmap.Fill(255);
        layerMask.PosX:=layer.PosX;
        layerMask.PosY:=layer.PosY;
        layerMask.ResizedWidth:=layer.ResizedWidth;
        layerMask.ResizedHeight:=layer.ResizedHeight;
      end;
      SetLayerMask;

      Transparency := layer.Transparency;
      if IsFirst and drawBackground then
        SubDrawBackground(false);

      if (fStable > 0) or ((layer.ResizedWidth = 0) and (layer.ResizedHeight = 0) and (fZoomX = 100) and (fZoomY=100)) then
      begin
        zf := rfNone;
      end
      else
      begin
        if layer.UseResampleFilter then
          zf:=layer.ResampleFilter
        else
          zf := fZoomFilter;
      end;

      if (fLayersSync or ((fLayers.Count=1) and (layer.ResizedWidth=0) and (layer.ResizedHeight=0) and (layer.PosX=0) and (layer.PosY=0))) then // 2.3.3 (test case1002)
      begin
        lBitmap.RenderToTIEBitmap(ABitmap, ABitmapScanline, pinteger(fXScr2Bmp), pinteger(fYScr2Bmp), UpdRect, fOffX, fOffY, frx, fry, fo1x, fo1y, fo2x, fo2y, fEnableAlphaChannel, (fBackgroundStyle = iebsSolid) and IsFirst, Transparency, zf, true, layer.Operation);
        layer.ClientAreaBox := Rect(fOffX, fOffY, fOffX + frx, fOffY + fry);
        layer.DrawingInfo.XDst:=fOffX;
        layer.DrawingInfo.YDst:=fOffY;
        layer.DrawingInfo.WidthDst:=frx;
        layer.DrawingInfo.HeightDst:=fry;
        layer.DrawingInfo.XSrc:=fo1x;
        layer.DrawingInfo.YSrc:=fo1y;
        layer.DrawingInfo.WidthSrc:=fo2x;
        layer.DrawingInfo.HeightSrc:=fo2y;
      end
      else
      begin

        // rotate
        if layer.Rotate<>0 then
        begin
          // here ResizedWidth and ResizedHeight should be 0, but anyway here we accept other values
          lresw:=layer.ResizedWidth;
          lresh:=layer.ResizedHeight;
          lposx:=layer.PosX;
          lposy:=layer.PosY;
          w:=layer.Width;
          h:=layer.Height;
          tmpbmp:=TIEBitmap.create(w,h,lbitmap.PixelFormat);
          _IEResampleIEBitmap(lbitmap,tmpbmp,rfNone,nil,nil);
          tmpbmp.AlphaChannel;
          rotbmp:=TIEBitmap.Create;
          IEGRotateTo(tmpbmp,rotbmp,layer.Rotate,clBlack,nil,nil);
          IEGRotateTo(tmpbmp.AlphaChannel,rotbmp.AlphaChannel,layer.Rotate,clBlack,nil,nil);
          lbitmap:=rotbmp;
          tmpbmp.free;
          layer.ResizedWidth:=lbitmap.Width;
          layer.ResizedHeight:=lbitmap.Height;
          with layer.Drawinginfo do
          begin
            RotatedDest[0].X:=0;
            RotatedDest[0].Y:=0;
            RotatedDest[1].X:=w;
            RotatedDest[1].Y:=0;
            RotatedDest[2].X:=w;
            RotatedDest[2].Y:=h;
            RotatedDest[3].X:=0;
            RotatedDest[3].Y:=h;
            IERotatePoints(RotatedDest,layer.Rotate,trunc(layer.RotateCenterX*w),trunc(layer.RotateCenterY*h));
            layer.PosX:= lposx+imin(imin(imin(RotatedDest[0].X,RotatedDest[1].X),RotatedDest[2].X),RotatedDest[3].X);
            layer.PosY:= lposy+imin(imin(imin(RotatedDest[0].Y,RotatedDest[1].Y),RotatedDest[2].Y),RotatedDest[3].Y);
            for j:=0 to 3 do
            begin
              RotatedDest[j].X:=fOffX + trunc( (lposx+RotatedDest[j].X) * fZoomD100X ) - fViewX;
              RotatedDest[j].Y:=fOffY + trunc( (lposy+RotatedDest[j].Y) * fZoomD100Y ) - fViewY;
            end;
          end;
        end
        else
          rotbmp:=nil;

        if (i > 0) and (layer.Magnify.Enabled) and (layer.Magnify.Rate >= 1) then
        begin
          // magnify layer
          if (fLayerResizing=ieNone) then // needed because aspectratio-resizing doesn't work with magnify layers
          begin
            if layer.ResizedWidth > 0 then
              lBitmap.Width := layer.ResizedWidth;
            if layer.ResizedHeight > 0 then
              lBitmap.Height := layer.ResizedHeight;
          end;

          w := trunc(lBitmap.Width / (layer.Magnify.Rate / fZoomD100X));
          h := trunc(lBitmap.Height / (layer.Magnify.Rate / fZoomD100Y));
          x1 := XBmp2Scr(layer.PosX) + trunc(lBitmap.Width * fZoomD100X / 2);
          y1 := YBmp2Scr(layer.PosY) + trunc(lBitmap.Height * fZoomD100Y / 2);
          x2 := x1 + w;
          y2 := y1 + h;
          x1 := x1 - w div 2;
          y1 := y1 - h div 2;
          x2 := x2 - w div 2;
          y2 := y2 - h div 2;

          case layer.Magnify.Source of
            iemCanvas:
              begin
                // gets all from current canvas (already painted layers and the background)
                lBitmap.Location := ieTBitmap;
                lBitmap.VclBitmap.Canvas.CopyRect(Rect(0, 0, lBitmap.Width, lBitmap.Height), ABitmap.Canvas, Rect(x1, y1, x2, y2));
              end;
            iemBackgroundLayer:
              begin
                // gets image from layer 0
                if lBitmap.PixelFormat<>ie24RGB then
                  lBitmap.PixelFormat:=ie24RGB;
                x1 := XScr2Bmp(x1);
                y1 := YScr2Bmp(y1);
                x2 := XScr2Bmp(x2);
                y2 := YScr2Bmp(y2);
                w := x2-x1+1;
                h := y2-y1+1;
                if (y1>=0) and (x1>=0) and (x1<Layers[0].Bitmap.Width-w) and (y1<Layers[0].Bitmap.Height-h) and (w<Layers[0].Bitmap.Width) and (h<Layers[0].Bitmap.Height) then
                begin
                  lBitmap.Fill(0);
                  Layers[0].Bitmap.RenderToTIEBitmapEx(lBitmap, 0,0,lBitmap.Width,lBitmap.Height, x1,y1,w,h, 255,zf,ielNormal);
                end;
              end;
          end;

          case layer.Magnify.Style of
            iemRectangle:
              lBitmap.AlphaChannel.Fill(255); // do nothing
            iemEllipse:
              begin
                lBitmap.AlphaChannel.Location := ieTBitmap;
                lBitmap.AlphaChannel.Fill(0);
                lBitmap.AlphaChannel.Full := false;
                with lBitmap.AlphaChannel.VclBitmap.Canvas do
                begin
                  Brush.Style := bsSolid;
                  Brush.Color := $01000000 or $FF;
                  Pen.Style := psSolid;
                  Pen.Mode := pmCopy;
                  Pen.Color := $01000000 or $FF;
                  Pen.Width := 1;
                  Ellipse(0, 0, lBitmap.Width - 1, lBitmap.Height - 1);
                end;
              end;
          end;
        end;  // end of magnify layer support

        XDst := XBmp2Scr(layer.PosX);
        YDst := YBmp2Scr(layer.PosY);

        YDst:=AlignYBmp2Scr(YDst,layer.PosY);
        XDst:=AlignXBmp2Scr(XDst,layer.PosX);

        w := layer.ResizedWidth;
        if w = 0 then
          w := lbitmap.Width;
        WidthDst := XBmp2Scr(layer.PosX + w);
        WidthDst := AlignXBmp2Scr(WidthDst,layer.PosX+w);
        dec(WidthDst,XDst);
        h := layer.ResizedHeight;
        if h = 0 then
          h := lbitmap.Height;
        HeightDst := YBmp2Scr(layer.PosY + h);
        HeightDst := AlignYBmp2Scr(HeightDst,layer.Posy+h);
        dec(HeightDst,YDst);
        XSrc := 0;
        YSrc := 0;
        WidthSrc := lbitmap.Width;
        HeightSrc := lbitmap.Height;

        layer.ClientAreaBox := Rect(XDst, YDst, XDst + WidthDst, YDst + HeightDst);

        if layer.Cropped then
        begin
          // cropped
          if XScr2Bmp(XDst) < 0 then
          begin
            XSrc := -trunc(layer.PosX * (lbitmap.width / w));
            WidthSrc := lbitmap.width - XSrc;
            XDst := XBmp2Scr(0);
            WidthDst := XBmp2Scr(w + layer.posX) - XDst;
          end;
          if YScr2Bmp(YDst) < 0 then
          begin
            YSrc := -trunc(layer.PosY * (lbitmap.height / h));
            HeightSrc := lbitmap.height - YSrc;
            YDst := YBmp2Scr(0);
            HeightDst := YBmp2Scr(h + layer.posY) - YDst;
          end;

          if XScr2Bmp(XDst + WidthDst) > Layers[0].Bitmap.Width then
          begin
            WidthDst := XBmp2Scr(Layers[0].Bitmap.Width) - XDst;
            WidthSrc := trunc(WidthDst* (lbitmap.Width/(layer.ClientAreaBox.Right - layer.ClientAreaBox.Left)));
          end;
          if YScr2Bmp(YDst + HeightDst) > Layers[0].Bitmap.Height then
          begin
            HeightDst := YBmp2Scr(Layers[0].Bitmap.Height) - YDst;
            HeightSrc := trunc(HeightDst * (lbitmap.Height/(layer.ClientAreaBox.Bottom - layer.ClientAreaBox.Top )));
          end;

        end;

        dummy2 := nil;
        dummy3 := nil;

        lBitmap.RenderToTIEBitmap(ABitmap, ABitmapScanline, dummy2, dummy3, UpdRect, XDst, YDst, WidthDst, HeightDst, XSrc, YSrc, WidthSrc, HeightSrc, fEnableAlphaChannel, (fBackgroundStyle = iebsSolid) and IsFirst, Transparency, zf, true, layer.Operation);
        layer.DrawingInfo.XDst:=XDst;
        layer.DrawingInfo.YDst:=YDst;
        layer.DrawingInfo.WidthDst:=WidthDst;
        layer.DrawingInfo.HeightDst:=HeightDst;
        layer.DrawingInfo.XSrc:=XSrc;
        layer.DrawingInfo.YSrc:=YSrc;
        layer.DrawingInfo.WidthSrc:=WidthSrc;
        layer.DrawingInfo.HeightSrc:=HeightSrc;

        if assigned(rotbmp) then
        begin
          FreeAndNil(rotbmp);
          layer.ResizedWidth:=lresw;
          layer.ResizedHeight:=lresh;
          layer.PosX:=lposx;
          layer.PosY:=lposy;
        end;

      end;

      if drawGadgets then
      begin
        if (layer.VisibleBox) then
        begin
          if (i = fLayersCurrent) then
          begin
            if (miMoveLayers in fMouseInteract) or (miResizeLayers in fMouseInteract) then
              DrawLayerBox(ABitmap.VclBitmap, i);
            if (miResizeLayers in fMouseInteract) and (not TIELayer(fLayers[fLayersCurrent]).Locked) then
              DrawLayerGrips(ABitmap.VclBitmap, i);
            if (miRotateLayers in fMouseInteract) then
              DrawLayerRotationCenter(ABitmap.VclBitmap, i);
          end
          else if fLayersDrawBox then
            DrawLayerBox(ABitmap.VclBitmap, i);
        end;
        if (layer.DrawOuter) and (i=fLayersCurrent) then
          DrawLayerOuter(ABitmap.VclBitmap,i);
      end;

      UnSetLayerMask;
      if FreeLayerMask then
      begin
        layerMask.Free;
      end;

      IsFirst := False;
    end; // end of Visible and (frx<>0) and (fry<>0)
  end;

  if (fSoftCrop=iesfGrid) or (fSoftCrop=iesfAdd) then
  begin
    w:=ABitmap.Width;
    h:=ABitmap.Height;
    x1:=Layers[0].DrawingInfo.XDst;
    y1:=Layers[0].DrawingInfo.YDst;
    x2:=x1+Layers[0].DrawingInfo.WidthDst;
    y2:=y1+Layers[0].DrawingInfo.HeightDst;
    for y:=0 to h-1 do
    begin
      px:=ABitmap.Scanline[y];
      case fSoftCrop of
        iesfGrid:
          for x:=0 to w-1 do
          begin
            if (y<y1) or (y>y2) or (x<x1) or (x>x2) then
              if (x+y) and 1 = 0 then
              with px^ do
              begin
                r:=128;
                g:=128;
                b:=128;
              end;
            inc(px);
          end;
        iesfAdd:
          for x:=0 to w-1 do
          begin
            if (y<y1) or (y>=y2) or (x<x1) or (x>=x2) then
              with px^ do
              begin
                r:=blimit(r+fSoftCropValue);
                g:=blimit(g+fSoftCropValue);
                b:=blimit(b+fSoftCropValue);
              end;
            inc(px);
          end;
      end;
    end;
  end;

  // check if no layer is displayed
  if IsFirst and drawBackground then
    SubDrawBackground(true);

  if drawGadgets then
  begin

    // draw selection
    PaintSelection(ABitmap.VclBitmap);

    // draw grid
    PaintGrid(ABitmap.VclBitmap);

  end;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersMergeAll

<FM>Declaration<FC>
procedure LayersMergeAll;

<FM>Description<FN>
Call LayersMergeAll to merge all layers in one step. This method does the same job of LayersDrawTo, but replacing all layers with the merged result.

This method is fast and work with all layer options, so you should use it to merge layers before print or save to disk.

!!}
procedure TImageEnView.LayersMergeAll();
var
  bmp:TIEBitmap;
begin
  bmp:=TIEBitmap.Create(fIEBitmap.Width,fIEBitmap.Height);
  LayersDrawTo(bmp);
  LayersClear;
  fIEBitmap.Assign(bmp);
  bmp.free;
  Update;
end;

{!!
<FS>TImageEnView.LayersDrawTo

<FM>Declaration<FC>
procedure LayersDrawTo(Destination:<A TIEBitmap>);

<FM>Description<FN>
Merges all layers and draws the result to Destination bitmap.
This function should replace a sequence of LayersMerge calls. The destination bitmap will not have transparency channel.

<FM>Example<FC>

// draws all layers of ImageEnView1 to ImageEnView2
ImageEnView1.LayersDrawTo( ImageEnView2.IEBitmap );
ImageEnView2.Update;

!!}
procedure TImageEnView.LayersDrawTo(Destination:TIEBitmap);
var
  i:integer;
  mxwidth,mxheight:integer;
  dstWidth,dstHeight:integer;
  lzoomx,lzoomy:double;
  lviewx,lviewy:integer;
  lMaxLayerWidth,lMaxLayerHeight:integer;
begin
  // calculates maximum extension and minimum left/top coordinates
  mxwidth:=Layers[0].PosX+Layers[0].Width;
  mxheight:=Layers[0].PosY+Layers[0].Height;
  for i:=0 to LayersCount-1 do
  begin
    if not Layers[i].Cropped then
    begin
      if (mxwidth<Layers[i].PosX+Layers[i].Width) then
        mxwidth:=Layers[i].PosX+Layers[i].Width;
      if (mxheight<Layers[i].PosY+Layers[i].Height) then
        mxheight:=Layers[i].PosY+Layers[i].Height;
    end;
  end;
  dstWidth:=mxWidth;
  dstHeight:=mxHeight;
  Destination.Resize(dstWidth,dstHeight,Background,255,iehLeft,ievTop);
  // paint layers
  lzoomx:=fZoomX;
  lzoomy:=fZoomY;
  fZoomX:=100;
  fZoomY:=100;
  fZoomD100X:=1;
  fZoomD100Y:=1;
  f100DZoomX:=1;
  f100DZoomY:=1;
  lviewx:=fViewX;
  lviewy:=fViewY;
  fViewX:=0;
  fViewY:=0;
  fOffX:=0;
  fOffY:=0;
  fExtX:=Layers[0].Bitmap.Width;
  fExtY:=Layers[0].Bitmap.Height;
  fZZWW:=Layers[0].Bitmap.Width;
  fZZHH:=Layers[0].Bitmap.Height;
  lMaxLayerWidth:=fMaxLayerWidth;
  lMaxLayerHeight:=fMaxLayerHeight;
  fMaxLayerWidth:=Layers[0].Bitmap.Width;
  fMaxLayerHeight:=Layers[0].Bitmap.Height;

  PaintToEx(Destination,nil,nil, false,false);

  fMaxLayerWidth:=lMaxLayerWidth;
  fMaxLayerHeight:=lMaxLayerHeight;
  fViewX:=lviewx;
  fViewY:=lviewy;
  fZoomX:=lzoomx;
  fZoomY:=lzoomy;
  fZoomD100X := fZoomX / 100;
  f100DZoomX := 100 / fZoomX;
  fZoomD100Y := fZoomY / 100;
  f100DZoomY := 100 / fZoomY;
  Update; // restores other old values
end;

procedure TImageEnView.DrawLayerBox(ABitmap: TBitmap; idx: integer);
var
  lyr:TIELayer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DrawLayerBox'); {$endif}
  if assigned(fOnDrawLayerBox) then
    fOnDrawLayerBox(self, ABitmap, idx)
  else
    with ABitmap.Canvas do
    begin
      Pen.Style := psDot;
      Pen.mode := pmNot;
      Brush.Style := bsClear;
      lyr:=TIELayer(fLayers[idx]);
      if lyr.Rotate=0 then
      begin
        with lyr.ClientAreaBox do
          Rectangle(Left, Top, Right, Bottom);
      end
      else
      begin
        Polygon(lyr.DrawingInfo.RotatedDest);
      end;
    end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DrawLayerOuter(ABitmap:TBitmap; idx:integer);
var
  i,j:integer;
  rgb:PRGB;
  width,height:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DrawLayerOUter'); {$endif}
  with ABitmap.Canvas do
  begin
    with TIELayer(fLayers[idx]).ClientAreaBox do
    begin
      width:=ABitmap.Width;
      height:=ABitmap.Height;
      for i:=0 to height-1 do
      begin
        rgb:=ABitmap.Scanline[i];
        for j:=0 to width-1 do
        begin
          if ((j<Left) or (j>Right) or (i<Top) or (i>Bottom)) and ((((i and 1) = 0) and ((j and 1) = 0)) or (((i and 1) = 1) and ((j and 1) = 1))) then
            with rgb^ do
            begin
              r := 97;
              g := 97;
              b := 97;
            end;
          inc(rgb);
        end;
      end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// a layer must be selected (fLayersCurrent must be >-1)
function TImageEnView.FindLayerGrip(x, y: integer): TIEGrip;
var
  coords: array[0..8] of TRect;
  i: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.FindLayerGrip'); {$endif}
  result := ieNone;
  if fLayersCurrent > -1 then
  begin
    CalcLayerGripCoords(fLayersCurrent, coords);
    for i := 0 to 8 do
    begin
      with coords[i] do
        if _InRect(x, y, left, top, right, bottom) then
        begin
          result := TIEGrip(i + 1);
          break;
        end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.FindLayerGripDist(x, y: integer; var Distance:double): TIEGrip;
var
  coords: array[0..8] of TRect;
  i: integer;
  d:double;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.FindLayerGrip'); {$endif}
  result := ieNone;
  Distance:=10000000;
  if fLayersCurrent > -1 then
  begin
    CalcLayerGripCoords(fLayersCurrent, coords);
    for i := 0 to 8 do
      with coords[i] do
      begin
        d:=sqrt(sqr(x-((Left+Right)/2))+sqr(y-((Top+Bottom)/2)));
        if d<Distance then
        begin
          Distance := d;
          result := TIEGrip(i + 1);
        end;
      end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


// 0=left-top  1=right-top  2=right-bottom  3=left-bottom
// 4=left side
// 5=right side
// 6=top side
// 7=bottom side
// 8=rotation center grip
procedure TImageEnView.CalcLayerGripCoords(layeridx: integer; var coords: array of TRect);
var
  lyr:TIELayer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CalcLayerGripCoords'); {$endif}
  lyr:=TIELayer(fLayers[layeridx]);
  if lyr.Rotate=0 then
  begin
    with lyr.ClientAreaBox do
    begin
      // left | top
      coords[0].Left := left - fLyrGripSize;
      coords[0].Top := top - fLyrGripSize;
      coords[0].Right := left + fLyrGripSize;
      coords[0].Bottom := top + fLyrGripSize;
      // right | top
      coords[1].Left := right - fLyrGripSize;
      coords[1].Top := top - fLyrGripSize;
      coords[1].Right := right + fLyrGripSize;
      coords[1].Bottom := top + fLyrGripSize;
      // right | bottom
      coords[2].Left := right - fLyrGripSize;
      coords[2].Top := bottom - fLyrGripSize;
      coords[2].Right := right + fLyrGripSize;
      coords[2].Bottom := bottom + fLyrGripSize;
      // left | bottom
      coords[3].Left := left - fLyrGripSize;
      coords[3].Top := bottom - fLyrGripSize;
      coords[3].Right := left + fLyrGripSize;
      coords[3].Bottom := bottom + fLyrGripSize;
      // left | center
      coords[4].Left := left - fLyrGripSize;
      coords[4].Top := ((top + bottom) div 2) - fLyrGripSize;
      coords[4].Right := left + fLyrGripSize;
      coords[4].Bottom := ((top + bottom) div 2) + fLyrGripSize;
      // right | center
      coords[5].Left := right - fLyrGripSize;
      coords[5].Top := ((top + bottom) div 2) - fLyrGripSize;
      coords[5].Right := right + fLyrGripSize;
      coords[5].Bottom := ((top + bottom) div 2) + fLyrGripSize;
      // top | center
      coords[6].Left := ((left + right) div 2) - fLyrGripSize;
      coords[6].Top := top - fLyrGripSize;
      coords[6].Right := ((left + right) div 2) + fLyrGripSize;
      coords[6].Bottom := top + fLyrGripSize;
      // bottom | center
      coords[7].Left := ((left + right) div 2) - fLyrGripSize;
      coords[7].Top := bottom - fLyrGripSize;
      coords[7].Right := ((left + right) div 2) + fLyrGripSize;
      coords[7].Bottom := bottom + fLyrGripSize;
    end;
  end
  else
  begin
    with lyr.DrawingInfo do
    begin
      // left | top
      coords[0].Left := RotatedDest[0].X - fLyrGripSize;
      coords[0].Top := RotatedDest[0].Y - fLyrGripSize;
      coords[0].Right := RotatedDest[0].X + fLyrGripSize;
      coords[0].Bottom := RotatedDest[0].Y + fLyrGripSize;
      // right | top
      coords[1].Left := RotatedDest[1].X - fLyrGripSize;
      coords[1].Top := RotatedDest[1].Y - fLyrGripSize;
      coords[1].Right := RotatedDest[1].X + fLyrGripSize;
      coords[1].Bottom := RotatedDest[1].Y + fLyrGripSize;
      // right | bottom
      coords[2].Left := RotatedDest[2].X - fLyrGripSize;
      coords[2].Top := RotatedDest[2].Y - fLyrGripSize;
      coords[2].Right := RotatedDest[2].X + fLyrGripSize;
      coords[2].Bottom := RotatedDest[2].Y + fLyrGripSize;
      // left | bottom
      coords[3].Left := RotatedDest[3].X - fLyrGripSize;
      coords[3].Top := RotatedDest[3].Y - fLyrGripSize;
      coords[3].Right := RotatedDest[3].X + fLyrGripSize;
      coords[3].Bottom := RotatedDest[3].Y + fLyrGripSize;
      // left | center
      coords[4].Left   := ((RotatedDest[0].X+RotatedDest[3].X) div 2) - fLyrGripSize;
      coords[4].Top    := ((RotatedDest[0].Y+RotatedDest[3].Y) div 2) - fLyrGripSize;
      coords[4].Right  := coords[4].Left + fLyrGripSize*2;
      coords[4].Bottom := coords[4].Top + fLyrGripSize*2;
      // right | center
      coords[5].Left   := ((RotatedDest[1].X+RotatedDest[2].X) div 2) - fLyrGripSize;
      coords[5].Top    := ((RotatedDest[1].Y+RotatedDest[2].Y) div 2) - fLyrGripSize;
      coords[5].Right  := coords[5].Left + fLyrGripSize*2;
      coords[5].Bottom := coords[5].Top + fLyrGripSize*2;
      // top | center
      coords[6].Left   := ((RotatedDest[0].X+RotatedDest[1].X) div 2) - fLyrGripSize;
      coords[6].Top    := ((RotatedDest[0].Y+RotatedDest[1].Y) div 2) - fLyrGripSize;
      coords[6].Right  := coords[6].Left + fLyrGripSize*2;
      coords[6].Bottom := coords[6].Top + fLyrGripSize*2;
      // bottom | center
      coords[7].Left   := ((RotatedDest[2].X+RotatedDest[3].X) div 2) - fLyrGripSize;
      coords[7].Top    := ((RotatedDest[2].Y+RotatedDest[3].Y) div 2) - fLyrGripSize;
      coords[7].Right  := coords[7].Left + fLyrGripSize*2;
      coords[7].Bottom := coords[7].Top + fLyrGripSize*2;
    end;
  end;
  // rotation center
  coords[8].Left := lyr.ConvXBmp2Scr( round(lyr.Bitmap.Width * lyr.RotateCenterX ) ) - fLyrGripSize;
  coords[8].Top := lyr.ConvYBmp2Scr( round(lyr.Bitmap.Height * lyr.RotateCenterY ) ) - fLyrGripSize;
  coords[8].Right  := coords[8].Left + fLyrGripSize*2;
  coords[8].Bottom := coords[8].Top + fLyrGripSize*2;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DrawLayerGrips(ABitmap: TBitmap; idx: integer);
var
  i: integer;
  coords: array[0..8] of TRect;
  iec:TIECanvas;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DrawLayerGrips'); {$endif}
  CalcLayerGripCoords(idx, coords);
  if assigned(fOnDrawLayerGrip) then
  begin
    for i := 0 to 8 do
      fOnDrawLayerGrip(self,ABitmap,idx,i,coords[i]);
  end
  else
  begin
    iec:=TIECanvas.Create(ABitmap.Canvas,true,true);
    with iec do
    begin
      Pen.Style := psSolid;
      Pen.Mode := pmCopy;
      Pen.Color := fLyrGripColor1;
      Brush.Style := fLyrGripBrushStyle;
      Brush.Color := fLyrGripColor2;
      for i := 0 to 7 do
        with coords[i] do
          case fLyrGripShape of
            iegsBox:Rectangle(Left, Top, Right, Bottom);
            iegsCircle:Ellipse(Left, Top, Right, Bottom);
          end;
    end;
    iec.Free;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DrawLayerRotationCenter(ABitmap: TBitmap; idx: integer);
var
  coords: array[0..8] of TRect;
  iec:TIECanvas;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DrawLayerRotationCenter'); {$endif}
  CalcLayerGripCoords(idx, coords);
  iec:=TIECanvas.Create(ABitmap.Canvas,true,true);
  with iec do
  begin
    Pen.Style := psSolid;
    Pen.Mode := pmCopy;
    Pen.Color := fLyrGripColor1;
    Brush.Style := fLyrGripBrushStyle;
    Brush.Color := fLyrGripColor2;
    Ellipse(coords[8]);
  end;
  iec.Free;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.SaveSelectionToStream

<FM>Declaration<FC>
procedure SaveSelectionToStream(Stream:TStream);

<FM>Description<FN>
SaveSelectionToStream saves the current selection to the specified stream.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToStream(sel1);
..
sel1.Position:=0;
ImageEnView1.LoadSelectionFromStream(sel1);   // this is like Select(10,10,100,100)
!!}
procedure TImageEnView.SaveSelectionToStream(Stream: TStream);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SaveSelectionToStream'); {$endif}
  // main sizes
  Stream.Write(fSelectionMask.Width, sizeof(fSelectionMask.Width));
  Stream.Write(fSelectionMask.Height, sizeof(fSelectionMask.Height));
  // TImageEnView
  Stream.Write(PIEAnimPoly(fHPolySel)^.PolyCount, sizeof(PIEAnimPoly(fHPolySel)^.PolyCount));
  if PIEAnimPoly(fHPolySel)^.Poly <> nil then
    Stream.Write(PIEAnimPoly(fHPolySel)^.Poly^, sizeof(TPoint) * PIEAnimPoly(fHPolySel)^.PolyCount);
  Stream.Write(PIEAnimPoly(fHPolySel)^.RX1, sizeof(PIEAnimPoly(fHPolySel)^.RX1));
  Stream.Write(PIEAnimPoly(fHPolySel)^.RY1, sizeof(PIEAnimPoly(fHPolySel)^.RY1));
  Stream.Write(PIEAnimPoly(fHPolySel)^.RX2, sizeof(PIEAnimPoly(fHPolySel)^.RX2));
  Stream.Write(PIEAnimPoly(fHPolySel)^.RY2, sizeof(PIEAnimPoly(fHPolySel)^.RY2));
  Stream.Write(fSel, sizeof(fSel));
  Stream.Write(CurrentLayer.PosX,sizeof(integer));
  Stream.Write(CurrentLayer.PosY,sizeof(integer));
  // TIEMask
  Stream.Write(fSelectionMask.BitsPerPixel, sizeof(fSelectionMask.BitsPerPixel));
  Stream.Write(fSelectionMask.X1, sizeof(fSelectionMask.X1));
  Stream.Write(fSelectionMask.Y1, sizeof(fSelectionMask.Y1));
  Stream.Write(fSelectionMask.X2, sizeof(fSelectionMask.X2));
  Stream.Write(fSelectionMask.Y2, sizeof(fSelectionMask.Y2));
  Stream.Write(fSelectionMask.Full, sizeof(fSelectionMask.Full));
  Stream.Write(fSelectionMask.Bits^, fSelectionMask.Height * fSelectionMask.RowLen);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LoadSelectionFromStream

<FM>Declaration<FC>
function LoadSelectionFromStream(Stream: TStream; Options:<A TIERSOptions>=iersMoveToAdapt): boolean;;

<FM>Description<FN>
LoadSelectionFromStream loads a selection from a stream (saved using <A TImageEnView.SaveSelectionToStream> or <A TImageEnView.SaveSelectionToFile>). Returns False if it fails.
Options specifies how the selection is adapted when it comes from an image with different size or position.

If you want share the same selection among layers you have to use iersSyncLayers.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToStream(sel1);
..
sel1.Position:=0;
ImageEnView1.LoadSelectionFromStream(sel1);   // this is like Select(10,10,100,100)
!!}
// return false if cannot load the selection (the background bitmap has wrong sizes)
function TImageEnView.LoadSelectionFromStream(Stream: TStream; Options:TIERSOptions): boolean;
var
  w, h, b, x1, y1, x2, y2: integer;
  f: boolean;
  psx,psy:integer;
  ix,iy:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LoadSelectionFromStream'); {$endif}
  // main sizes
  result := true;
  Stream.Read(w, sizeof(fSelectionMask.Width));
  Stream.Read(h, sizeof(fSelectionMask.Height));

  // TImageEnView
  if PIEAnimPoly(fHPolySel)^.Poly <> nil then
    freemem(PIEAnimPoly(fHPolySel)^.Poly);
  PIEAnimPoly(fHPolySel)^.Poly := nil;
  Stream.Read(PIEAnimPoly(fHPolySel)^.PolyCount, sizeof(PIEAnimPoly(fHPolySel)^.PolyCount));
  getmem(PIEAnimPoly(fHPolySel)^.Poly, sizeof(TPoint) * (PIEAnimPoly(fHPolySel)^.PolyCount + 64));
  if PIEAnimPoly(fHPolySel)^.Poly <> nil then
    Stream.Read(PIEAnimPoly(fHPolySel)^.Poly^, sizeof(TPoint) * PIEAnimPoly(fHPolySel)^.PolyCount);
  Stream.Read(PIEAnimPoly(fHPolySel)^.RX1, sizeof(PIEAnimPoly(fHPolySel)^.RX1));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RY1, sizeof(PIEAnimPoly(fHPolySel)^.RY1));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RX2, sizeof(PIEAnimPoly(fHPolySel)^.RX2));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RY2, sizeof(PIEAnimPoly(fHPolySel)^.RY2));
  Stream.Read(fSel, sizeof(fSel));
  Stream.Read(psx,sizeof(integer));
  Stream.Read(psy,sizeof(integer));
  // TIEMask
  Stream.Read(b, sizeof(fSelectionMask.BitsPerPixel));
  fSelectionMask.AllocateBits(w, h, b);
  Stream.Read(x1, sizeof(fSelectionMask.X1));
  Stream.Read(y1, sizeof(fSelectionMask.Y1));
  Stream.Read(x2, sizeof(fSelectionMask.X2));
  Stream.Read(y2, sizeof(fSelectionMask.Y2));
  fSelectionMask.X1 := x1;
  fSelectionMask.Y1 := y1;
  fSelectionMask.X2 := x2;
  fSelectionMask.Y2 := y2;
  Stream.Read(f, sizeof(fSelectionMask.Full));
  fSelectionMask.Full := f;
  Stream.Read(fSelectionMask.Bits^, fSelectionMask.Height * fSelectionMask.RowLen);

  LockUpdate;

  // sync layers
  if (Options=iersSyncLayers) then
  begin
    AnimPolygonClear(integer(fHPolySel));
    fSelectionMask.Resize(fIEBitmap.Width+imax(0,psx)+w,fIEBitmap.Height+imax(0,psy)+h);
    fSelectionMask.TranslateBitmap(psx,psy,true);
    ix:=-CurrentLayer.PosX;
    iy:=-CurrentLayer.PosY;
    fSelectionMask.TranslateBitmap(ix,iy, true );
    fSelectionMask.Resize(fIEBitmap.Width,fIEBitmap.Height);
    fSelectionMask.SyncFull;
    fSelectionMask.SyncRect;
  end
  else
  begin

    if ((w <> fIEBitmap.Width) or (h <> fIEBitmap.Height)) then
    begin
      if (not fSelectionMask.IsEmpty) then
      begin
        // try to move the selection
        if (Options=iersMoveToAdapt) and (x2>fIEBitmap.Width) then
        begin
          x1:=fIEBitmap.Width- (fSelectionMask.X2-fSelectionMask.X1+1);
          MoveSelection( -(fSelectionMask.X1-x1), 0 );
        end;
        if (Options=iersMoveToAdapt) and (y2>fIEBitmap.Height) then
        begin
          y1:=fIEBitmap.Height- (fSelectionMask.Y2-fSelectionMask.Y1+1);
          MoveSelection( 0, -(fSelectionMask.Y1-y1) );
        end;
        fSelectionMask.Resize(fIEBitmap.Width,fIEBitmap.Height);
        fSelectionMask.SyncFull;
        fSelectionMask.SyncRect;
      end
      else
        fSelectionMask.Resize(fIEBitmap.Width,fIEBitmap.Height);
    end;

  end;

  if fSelectionMask.IsEmpty then
    Deselect
  else
    fSel:=true;

  ShowSelectionEx(true);

  UnLockUpdate;

  Update;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SaveSelectionToFile

<FM>Declaration<FC>
procedure SaveSelectionToFile(const FileName:string);

<FM>Description<FN>
SaveSelectionToFile saves the current selection to the specified file.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToFile('selection1');
..
sel1.Position:=0;
ImageEnView1.LoadSelectionFromFile('selection1');   // this is like Select(10,10,100,100)
!!}
procedure TImageEnView.SaveSelectionToFile(const FileName:string);
var
  fs: TFileStream;
begin
  fs := TFileStream.Create(FileName, fmCreate);
  try
    SaveSelectionToStream(fs);
  finally
    FreeAndNil(fs);
  end;
end;

{!!
<FS>TImageEnView.LoadSelectionFromFile

<FM>Declaration<FC>
function LoadSelectionFromFile(const FileName:string; Options:<A TIERSOptions>=iersMoveToAdapt): boolean;

<FM>Description<FN>
LoadSelectionFromFile loads a selection from a file (saved using <A TImageEnView.SaveSelectionToStream> or <A TImageEnView.SaveSelectionToFile>).
Returns False if it fails.
Options specifies how the selection is adapted when it comes from an image with different size or position.

If you want share the same selection among layers you have to use iersSyncLayers.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToFile('selection1');
..
sel1.Position:=0;
ImageEnView1.LoadSelectionFromFile('selection1');   // this is like Select(10,10,100,100)
!!}
function TImageEnView.LoadSelectionFromFile(const FileName:string; Options:TIERSOptions=iersMoveToAdapt): boolean;
var
  fs: TFileStream;
begin
  fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    result:=LoadSelectionFromStream(fs,Options);
  finally
    FreeAndNil(fs);
  end;
end;

{!!
<FS>TImageEnView.MergeSelectionFromFile

<FM>Declaration<FC>
function MergeSelectionFromFile(const FileName:string):boolean;

<FM>Description<FN>
MergeSelectionFromFile loads a selection from a file (saved using <A TImageEnView.SaveSelectionToStream> or <A TImageEnView.SaveSelectionToFile>) merging it with the currently one.
Returns False if it fails.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToFile('selection1');
..
sel1.Position:=0;
ImageEnView1.MergeSelectionFromFile('selection1');   // this is like Select(10,10,100,100, iespAdd)
!!}
function TImageEnView.MergeSelectionFromFile(const FileName:string):boolean;
var
  fs: TFileStream;
begin
  fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    result:=MergeSelectionFromStream(fs);
  finally
    FreeAndNil(fs);
  end;
end;

{!!
<FS>TImageEnView.MergeSelectionFromStream

<FM>Declaration<FC>
function MergeSelectionFromStream(Stream:TStream):boolean;

<FM>Description<FN>
MergeSelectionFromStream loads a selection from a stream (saved using <A TImageEnView.SaveSelectionToStream> or <A TImageEnView.SaveSelectionToFile>) merging it with the currently one.
Returns False if it fails.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelectionToStream(sel1);
..
sel1.Position:=0;
ImageEnView1.MergeSelectionFromStream(sel1);   // this is like Select(10,10,100,100, iespAdd)
!!}
function TImageEnView.MergeSelectionFromStream(Stream: TStream): boolean;
var
  w, h, b, x1, y1, x2, y2: integer;
  f: boolean;
  msk2:TIEMask;
  src,dst,x,y:integer;
  psx,psy:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MergeSelectionFromStream'); {$endif}
  // main sizes
  result := true;
  Stream.Read(w, sizeof(fSelectionMask.Width));
  Stream.Read(h, sizeof(fSelectionMask.Height));

  // TImageEnView
  if PIEAnimPoly(fHPolySel)^.Poly <> nil then
    freemem(PIEAnimPoly(fHPolySel)^.Poly);
  PIEAnimPoly(fHPolySel)^.Poly := nil;
  Stream.Read(PIEAnimPoly(fHPolySel)^.PolyCount, sizeof(PIEAnimPoly(fHPolySel)^.PolyCount));
  getmem(PIEAnimPoly(fHPolySel)^.Poly, sizeof(TPoint) * (PIEAnimPoly(fHPolySel)^.PolyCount + 64));
  if PIEAnimPoly(fHPolySel)^.Poly <> nil then
    Stream.Read(PIEAnimPoly(fHPolySel)^.Poly^, sizeof(TPoint) * PIEAnimPoly(fHPolySel)^.PolyCount);
  Stream.Read(PIEAnimPoly(fHPolySel)^.RX1, sizeof(PIEAnimPoly(fHPolySel)^.RX1));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RY1, sizeof(PIEAnimPoly(fHPolySel)^.RY1));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RX2, sizeof(PIEAnimPoly(fHPolySel)^.RX2));
  Stream.Read(PIEAnimPoly(fHPolySel)^.RY2, sizeof(PIEAnimPoly(fHPolySel)^.RY2));
  Stream.Read(fSel, sizeof(fSel));
  Stream.Read(psx,sizeof(integer));
  Stream.Read(psy,sizeof(integer));

  AnimPolygonClear(integer(fHPolySel));

  // TIEMask
  Stream.Read(b, sizeof(fSelectionMask.BitsPerPixel));
  msk2:=TIEMask.Create;
  msk2.AllocateBits(w, h, b);
  Stream.Read(x1, sizeof(fSelectionMask.X1));
  Stream.Read(y1, sizeof(fSelectionMask.Y1));
  Stream.Read(x2, sizeof(fSelectionMask.X2));
  Stream.Read(y2, sizeof(fSelectionMask.Y2));
  msk2.X1 := x1;
  msk2.Y1 := y1;
  msk2.X2 := x2;
  msk2.Y2 := y2;
  Stream.Read(f, sizeof(fSelectionMask.Full));
  msk2.Full := f;
  Stream.Read(msk2.Bits^, msk2.Height * msk2.RowLen);

  for y:=y1 to y2 do
    for x:=x1 to x2 do
    begin
      src:=msk2.GetPixel(x,y);
      dst:=fSelectionMask.GetPixel(x,y);
      fSelectionMask.SetPixel(x,y, imax(src,dst) );
    end;
  fSelectionMask.Full:=msk2.Full and fSelectionMask.Full;

  SelectCustom;

  FreeAndNil(msk2);

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.SavedSelectionsCount

<FM>Declaration<FC>
property SavedSelectionsCount:integer

<FM>Description<FN>
Returns the number of saved selections.

!!}
function TImageEnView.GetSavedSelectionsCount:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetSavedSelectionsCount'); {$endif}
  result:=fSavedSelection.Count;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// push current selection in fSavedSelection list

{!!
<FS>TImageEnView.SaveSelection

<FM>Declaration<FC>
procedure SaveSelection;

<FM>Description<FN>
SaveSelection pushes the current selection in a stack.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelection;
ImageEnView1.Select(200,200,150,150);
ImageEnView1.SaveSelection;
ImageEnView1.Deselect;

ImageEnView1.RestoreSelection;  // reload 200,200,150,150
..
ImageEnView1.RestoreSelection;  // reload 10,10,100,100
!!}
procedure TImageEnView.SaveSelection;
var
  ms: TMemoryStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SaveSelection'); {$endif}
  ms := TMemoryStream.Create;
  SaveSelectionToStream(ms);
  fSavedSelection.Add(ms);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// pop a selection from fSavedSelection list

{!!
<FS>TImageEnView.RestoreSelection

<FM>Declaration<FC>
function RestoreSelection(Remove:boolean=true; Options:<A TIERSOptions>=iersMoveToAdapt): boolean;

<FM>Description<FN>
RestoreSelection restores a saved selection from the selections stack. RestoreSelection returns false when there aren't selections saved in the stack.

Options specifies how the selection is adapted when it comes from an image with different size or position.

If you want share the same selection among layers you have to use iersSyncLayers.

Remove allows you to remove restored selection from selections stack.

<FM>Example<FC>
ImageEnView1.Select(10,10,100,100);
ImageEnView1.SaveSelection;
ImageEnView1.Select(200,200,150,150);
ImageEnView1.SaveSelection;
ImageEnView1.Deselect;

ImageEnView1.RestoreSelection;  // reload 200,200,150,150
..
ImageEnVIew1.RestoreSelection;  // reload 10,10,100,100
!!}
function TImageEnView.RestoreSelection(Remove:boolean; Options:TIERSOptions): boolean;
var
  ms: TMemoryStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.RestoreSelection'); {$endif}
  result := false;
  if fSavedSelection.Count > 0 then
  begin
    ms := fSavedSelection[fSavedSelection.Count - 1];
    ms.Position := 0;
    result := LoadSelectionFromStream(ms, Options);
    if Remove then
    begin
      fSavedSelection.Delete(fSavedSelection.Count - 1);
      FreeAndNil(ms);
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DiscardSavedSelection

<FM>Declaration<FC>
function DiscardSavedSelection: boolean;

<FM>Description<FN>

DiscardSavedSelection removes the last saved selection from the stack (saved using SaveSelection).
You can use this method if you don't want restore the saved selection.

!!}
function TImageEnView.DiscardSavedSelection: boolean;
var
  ms: TMemoryStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DiscardSavedSelection'); {$endif}
  result := false;
  if fSavedSelection.Count > 0 then
  begin
    ms := fSavedSelection[fSavedSelection.Count - 1];
    FreeAndNil(ms);
    fSavedSelection.Delete(fSavedSelection.Count - 1);
    result:=true;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// if merge is true merges the alpha channel with the background color

{!!
<FS>TImageEnView.RemoveAlphaChannel

<FM>Declaration<FC>
procedure RemoveAlphaChannel(Merge:boolean=false);

<FM>Description<FN>
The RemoveAlphaChannel procedure removes alpha channel and the memory allocated for it. RemoveAlphaChannel sets HasAlphaChannel to false.
If Merge is true the image is merges with the background color using its alpha channel.

<FM>Example<FC>
// remove alpha channel from a gif
ImageEnView.io.LoadFromFile('test.gif');
ImageEnView.RemoveAlphaChannel;

// this add a shadow (that uses the alpha channel) then save it to a jpeg (that cannot support alpha channel)
ImageEnView.Proc.AddSoftShadow(4,3,3);
ImageEnView.RemoveAlphaChannel( True );  // merge the alpha channel
ImageEnView.IO.SaveToFile('output.jpg');

!!}
procedure TImageEnView.RemoveAlphaChannel(Merge: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.RemoveAlphaChannel'); {$endif}
  fIEBitmap.RemoveAlphaChannel(Merge,fBackground);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.QuantizeViewX(vx: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.QuantizeViewX'); {$endif}
  result := vx;
  if result < 0 then
    result := 0;
  if (result < fZZWW) and (fGXBmp2Scr <> nil) and (fXScr2BmpSize > 0) then
    result := fGXBmp2Scr[fGXScr2Bmp[result]];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function TImageEnView.QuantizeViewY(vy: integer): integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.QuantizeViewY'); {$endif}
  result := vy;
  if result < 0 then
    result := 0;
  if (result < fZZHH) and (fGYBmp2Scr <> nil) and (fYScr2BmpSize > 0) then
    result := fGYBmp2Scr[fGYScr2Bmp[result]];
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.CreateCoordConvLUT;
var
  i, v: integer;
  scrx, scry, bmpx, bmpy: integer;
  qviewx, qviewy: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CreateCoordConvLUT'); {$endif}
  if (fLutLastZoomX <> fZoomX) or (fLutLastZoomY<>fZoomY) or (fLutLastFRX <> frx) or (fLutLastFRY <> fry) or (fLutLastMaxLayerWidth <> fMaxLayerWidth) or (fLutLastMaxLayerHeight <> fMaxLayerHeight) then
  begin
    // free olds
    if fGXScr2Bmp <> nil then
      freemem(fGXScr2Bmp);
    if fGYScr2Bmp <> nil then
      freemem(fGYScr2Bmp);
    if fGXBmp2Scr <> nil then
      freemem(fGXBmp2Scr);
    if fGYBmp2Scr <> nil then
      freemem(fGYBmp2Scr);
    fGXScr2Bmp := nil;
    fGYScr2Bmp := nil;
    fGXBmp2Scr := nil;
    fGYBmp2Scr := nil;
    fXScr2Bmp := nil;
    fYScr2Bmp := nil;
    fXBmp2Scr := nil;
    fYBmp2Scr := nil;
    fXScr2BmpSize := 0;
    fYScr2BmpSize := 0;
    fXBmp2ScrSize := 0;
    fYBmp2ScrSize := 0;
    // check validity
    if (fry = 0) or (frx = 0) then
      exit;
    if (IEBitmap.Width = 0) or (IEBitmap.Height = 0) then
      exit;
    // sizes
    fXScr2BmpSize := frx;
    fYScr2BmpSize := fry;
    fXBmp2ScrSize := trunc(frx * f100DZoomX);
    fYBmp2ScrSize := trunc(fry * f100DZoomY);

    scrx := fZZWW + fXScr2BmpSize + 1;
    scry := fZZHH + fYScr2BmpSize + 1;
    bmpx := trunc(scrx * f100DZoomX) + 1;
    bmpy := trunc(scry * f100DZoomY) + 1;
    getmem(fGXScr2Bmp, (scrx + 1) * sizeof(integer));
    getmem(fGYScr2Bmp, (scry + 1) * sizeof(integer));
    getmem(fGXBmp2Scr, (bmpx + 1) * sizeof(integer));
    getmem(fGYBmp2Scr, (bmpy + 1) * sizeof(integer));

    if fZoomX > 100 then
    begin
      for i := scrx - 1 downto 0 do
      begin
        v := trunc(i * f100DZoomX);
        fGXBmp2Scr[v] := i;
        fGXScr2Bmp[i] := imin(v, imax(fMaxLayerWidth - 1, 0));
      end;
    end
    else
    begin
      for i := bmpx - 1 downto 0 do
      begin
        v := trunc(i * fZoomD100X);
        fGXBmp2Scr[i] := v;
        fGXScr2Bmp[v] := imin(i, imax(fMaxLayerWidth - 1, 0));
      end;
    end;
    if fZoomY > 100 then
    begin
      for i := scry - 1 downto 0 do
      begin
        v := trunc(i * f100DZoomY);
        fGYBmp2Scr[v] := i;
        fGYScr2Bmp[i] := imin(v, imax(fMaxLayerHeight - 1, 0));
      end;
    end
    else
    begin
      for i := bmpy - 1 downto 0 do
      begin
        v := trunc(i * fZoomD100Y);
        fGYBmp2Scr[i] := v;
        fGYScr2Bmp[v] := imin(i, imax(fMaxLayerHeight - 1, 0));
      end;
    end;

    fLutLastZoomX := fZoomX;
    fLutLastZoomY := fZoomY;
    fLutLastFRX := frx;
    fLutLastFRY := fry;
    fLutLastMaxLayerWidth := fMaxLayerWidth;
    fLutLastMaxLayerHeight := fMaxLayerHeight;
  end;
  if fXScr2BmpSize > 0 then
  begin // check one for all (don't care YScr2BmpSize...)
    qviewx := QuantizeViewX(fViewX);
    qviewy := QuantizeViewY(fViewY);

    fXBmp2Scr := @fGXBmp2Scr[imax(0,fGXScr2Bmp[qViewX] - fo1x)];
    fYBmp2Scr := @fGYBmp2Scr[imax(0,fGYScr2Bmp[qViewY] - fo1y)];
    fXScr2Bmp := @fGXScr2Bmp[qViewX];
    fYScr2Bmp := @fGYScr2Bmp[qViewY];
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.Cursor

<FM>Declaration<FC>
property Cursor:TCursor;

<FM>Description<FN>
Cursor specifies the image used to represent the mouse pointer when it passes into the region covered by the control.

ImageEn presets:

 1778 <IMG help_images\2.bmp>
 1779 <IMG help_images\3.bmp>
 1780 <IMG help_images\4.bmp>
 1781 <IMG help_images\5.bmp>
 1782 <IMG help_images\6.bmp>
 1783 <IMG help_images\7.bmp>
 1784 <IMG help_images\8.bmp>
 1785 <IMG help_images\9.bmp>
 1786 <IMG help_images\10.bmp>
 1787 <IMG help_images\11.bmp>
 1788 <IMG help_images\12.bmp>
 1789 <IMG help_images\13.bmp>
 1790 <IMG help_images\14.bmp>
 1791 <IMG help_images\15.bmp>
 1792 <IMG help_images\16.bmp>
 1793 <IMG help_images\17.bmp>
 1794 <IMG help_images\18.bmp>
 1795 <IMG help_images\19.bmp>
 1796 <IMG help_images\20.bmp>
 1797 <IMG help_images\21.bmp>
 1798 <IMG help_images\22.bmp>
 1799 <IMG help_images\23.bmp>
 1800 <IMG help_images\24.bmp>
 1801 <IMG help_images\25.bmp>
 1802 <IMG help_images\26.bmp>
 1803 <IMG help_images\27.bmp>
 1804 <IMG help_images\28.bmp>
 1805 <IMG help_images\29.bmp>
 1806 <IMG help_images\30.bmp>
 1807 <IMG help_images\31.bmp>
 1808 <IMG help_images\32.bmp>
 1809 <IMG help_images\33.bmp>
 1810 <IMG help_images\34.bmp>

System:

 -1 <IMG help_images\35.bmp>
 -2 <IMG help_images\36.bmp>
 -3 <IMG help_images\37.bmp>
 -4 <IMG help_images\38.bmp>
 -6 <IMG help_images\39.bmp>
 -7 <IMG help_images\40.bmp>
 -8 <IMG help_images\41.bmp>
 -9 <IMG help_images\42.bmp>
 -10 <IMG help_images\43.bmp>
 -11 <IMG help_images\44.bmp>
 -12 <IMG help_images\45.bmp>
 -13 <IMG help_images\46.bmp>
 -14 <IMG help_images\47.bmp>
 -15 <IMG help_images\48.bmp>
 -16 <IMG help_images\49.bmp>
 -17 <IMG help_images\50.bmp>
 -18 <IMG help_images\51.bmp>
 -19 <IMG help_images\52.bmp>
 -20 <IMG help_images\53.bmp>
 -21 <IMG help_images\54.bmp>
 -22 <IMG help_images\55.bmp>
!!}
procedure TImageEnView.SetCursor(Value: TCursor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetCursor'); {$endif}
  fLCursor := Value;
  inherited Cursor := Value;
  fCursor := Value;
  Windows.SetCursor(Screen.Cursors[Value]);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetTempCursor(Value: TCursor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetTempCursor'); {$endif}
  if fAutoCursors then
  begin
    inherited Cursor := Value;
    fCursor := Value;
    Windows.SetCursor(Screen.Cursors[Value]);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// restore the cursor for fLCursor (default cursor)
procedure TImageEnView.RestoreCursor;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.RestoreCursor'); {$endif}
  SetTempCursor(fLCursor);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetDelayTimer(Value: integer);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetDelayTimer'); {$endif}
  fDelayTimer:=Value;
  if fDelayTimer>0 then
    fAnimPolyTimer.Interval := Value;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DelayTimer

<FM>Declaration<FC>
property DelayTimer:integer;

<FM>Description<FN>
ImageEn has a timer that decrements a counter at each tick (you can set the tick delay using DelayTimer property). This timer controls the selection animation and the application of filters on scrolling (when DelayZoomFilter is True).
If you set negative values DelayTimer changes its behavior. Negative values represent the maximum CPU time that ImageEn can use to show selections. For example setting:
ImageEnView.DelayTimer:=-10;
ImageEn will not use much more of 10% of the CPU time.

The default DelayTimer's value is -20 (maximum 20% of the CPU time).

!!}
function TImageEnView.GetDelayTimer: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetDelayTimer'); {$endif}
  result := fDelayTImer;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.GradientEndColor

<FM>Declaration<FC>
property GradientEndColor:TColor

<FM>Description<FN>
GradientEndColor specifies the ending color of the gradient when BackgroundStyle is iebsGradient.
!!}
procedure TImageEnView.SetGradientEndColor(Value: TColor);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetGradientEndColor'); {$endif}
  fGradientEndColor := Value;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.CenterImage

<FM>Declaration<FC>
procedure CenterImage;

<FM>Description<FN>
If the image is larger than the component client area, CenterImage will scroll the image making it centered.

!!}
procedure TImageEnView.CenterImage;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.CenterImage'); {$endif}
  SetViewXY(trunc((fIEBitmap.Width*fZoomD100X - ClientWidth)/2), trunc((fIEBitmap.Height*fZoomD100Y - ClientHeight)/2));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LockUpdate

<FM>Declaration<FC>
procedure LockUpdate;

<FM>Description<FN>
LockUpdate disables all calls to the <A TImageEnView.Update> method. LockUpdate and <A TImageEnView.UnLockUpdate> are useful, for example, when resampling multiple layers.

<FM>Example<FC>
ImageEnView1.LockUpdate;
for i:=0 to ImageEnView1.LayersCount-1 do begin
  ImageEnView1.LayersCurrent:=i;
  ImageEnView1.Proc.Resample(300,-1,rfNone); // withtout LockUpdate this call resizes all other layers
end;
ImageEnView1.UnLockUpdate;

!!}
procedure TImageEnView.LockUpdate;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LockUpdate'); {$endif}
  inc(fUpdateLocked);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.UnLockUpdate

<FM>Declaration<FC>
procedure UnLockUpdate;

<FM>Description<FN>
UnLockUpdate re-Enables all calls to the <A TImageEnView.Update> method, after a call to <A TImageEnView.LockUpdate>.
LockUpdate and UnLockUpdate are useful, for example, when you need to resample multiple layers.

<FM>Example<FC>
ImageEnView1.LockUpdate;
for i:=0 to ImageEnView1.LayersCount-1 do begin
  ImageEnView1.LayersCurrent:=i;
  ImageEnView1.Proc.Resample(300,-1,rfNone); // without LockUpdate this call resizes all other layers
end;
ImageEnView1.UnLockUpdate;

!!}
procedure TImageEnView.UnLockUpdate;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.UnLockUpdate'); {$endif}
  if fUpdateLocked>0 then
    dec(fUpdateLocked);
  if fUpdateLocked=0 then
    Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.DrawVersion

<FM>Declaration<FC>
property DrawVersion:boolean;

<FM>Description<FN>
When DrawVersion is True, display the ImageEn version and release date on bottom-left side of the client area of the ImageEn component.
!!}
procedure TImageEnView.SetDrawVersion(v: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetDrawVersion'); {$endif}
  fDrawVersion := v;
  Paint;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectionMaskDepth

<FM>Declaration<FC>
property SelectionMaskDepth:integer;

<FM>Description<FN>
The SelectionMaskDepth property allows specifying the selection depth in bits. The default is 1 bit, then a pixel can be "unselected"=0 or "selected"=1.
With setting 8 (8 bit), a pixel can be unselected=0, 'semi-selected' from 1 to 254, or fully selected =255. This allows creating soft selections or feathering selections.

Note: SelectionOptions=iesoFilled not supported when SelectionMaskDepth=8

<FM>Example<FC>
ImageEnView.SelectionMaskDepth := 8;
ImageEnView.SelectionIntensity := 128;
ImageEnView.Select( 10,10,100,100 );
ImageEnView.Proc.Negative;	// the negative is applied at 50 % (128=semi selected)

<IMG help_images\72.bmp>
!!}
procedure TImageEnView.SetSelectionMaskDepth(value: integer);
var
  owidth,oheight:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectionMaskDepth'); {$endif}
  if (value <> fSelectionMaskDepth) and ((value=1) or (value=8)) then
  begin
    if fSel then
      Deselect;
    fSelectionMaskDepth := value;
    owidth:=fSelectionMask.Width;
    oheight:=fSelectionMask.Height;
    fSelectionMask.AllocateBits(owidth, oheight, fSelectionMaskDepth);
    case value of
      1: fSelectionIntensity := 1;
      8: fSelectionIntensity := 255;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SelectionIntensity

<FM>Declaration<FC>
property SelectionIntensity:integer;

<FM>Description<FN>
The SelectionIntensity property allows specifying the selection intensity and it is valid only when SelectionMaskDepth is 8 (8 bit), otherwise this must be 1.
You can assign a value from 0 to 255 which will be applied to the next or current selection.

See also <A TImageEnView.SelectionMaskDepth>.

<FM>Example<FC>
ImageEnView.SelectionMaskDepth := 8;
ImageEnView.SelectionIntensity := 128;
ImageEnView.Select( 10,10,100,100 );
ImageEnView.Proc.Negative;	// the negative is applied at 50 % (128=semi selected)
!!}
procedure TImageEnView.SetSelectionIntensity(value: integer);
var
  px: pbyte;
  i, j: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectionIntensity'); {$endif}
  fSelectionIntensity := value;
  if fSel and (fSelectionMask.BitsPerPixel = 8) then
  begin
    // changes current selection
    with fSelectionMask do
    begin
      for i := y1 to y2 do
      begin
        px := Scanline[i];
        inc(px, x1);
        for j := x1 to x2 do
        begin
          if px^ > 0 then
            px^ := value;
          inc(px);
        end;
      end;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.MakeSelectionFeather

<FM>Declaration<FC>
procedure MakeSelectionFeather(radius:double);

<FM>Description<FN>
MakeSelectionFeather modifies the current selection by applying a blur effect to make borders soft.
This property works only if SelectionMaskDepth is 8.
Radius specifies the feathering intensity (blur intensity).

<FM>Example<FC>
ImageEnView.SelectionMaskDepth := 8;
ImageEnView.Select( 10,10, 100,100 );
ImageEnView.MakeSelectionFeather( 4 );

<IMG help_images\73.bmp>
!!}
procedure TImageEnView.MakeSelectionFeather(radius: double);
var
  bmp: TIEBitmap;
  ww, x1, y1, x2, y2: integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.MakeSelectionFeather'); {$endif}
  if fSel and (fSelectionMask.BitsPerPixel = 8) then
  begin
    AnimPolygonClear(integer(fHPolySel));
    bmp := TIEBitmap.Create;
    bmp.EncapsulateMemory(fSelectionMask.Bits, fSelectionMask.Width, fSelectionmask.Height, ie8g, false);
    ww := imax(trunc(radius * 5), 1);
    x1 := imax(fSelectionMask.X1 - ww, 0);
    y1 := imax(fSelectionMask.Y1 - ww, 0);
    x2 := imin(fSelectionMask.X2 + ww, fSelectionMask.Width - 1);
    y2 := imin(fSelectionMask.Y2 + ww, fSelectionMask.Height - 1);
    _IEGBlurRect8(bmp, x1, y1, x2, y2, radius);
    FreeAndNil(bmp);
    fSelectionMask.SyncRect;
    ShowSelectionEx(true);
    fDBToDraw := true;
    Paint;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersSync

<FM>Declaration<FC>
property LayersSync:boolean;

<FM>Description<FN>
If LayersSync is true. all layers must have the same size. If false (the default), layers can have different sizes and can be moved by code or user interaction (see MouseInteract).

<FM>Example<FC>
// make layers moveable and sizeable
ImageEnView.LayersSync:=False;
ImageEnView.MouseInteract:=[miMoveLayers, miResizeLayers];
// load a background layer and another layer
ImageEnView.IO.LoadFromFile('background.jpg');	// layer 0
ImageEnView.LayersAdd;
ImageEnView.IO.LoadFromFile('layer0.jpg');	// layer 1
!!}
procedure TImageEnView.SetLayersSync(value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetLayersSync'); {$endif}
  if not fLayersSync then
    exit; // you cannot set LayersSync=true (default), but only LayersSync=false
  if value <> fLayersSync then
  begin
    fLayersSync := value;
    if fLayersSync then
      DoLayersSync;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersDrawBox

<FM>Declaration<FC>
property LayersDrawBox:boolean;

<FM>Description<FN>
If LayersDrawBox is true, a box is drawn around layers.
If Layers[].VisibleBox is false, no box is displayed (LayersDrawBox doesn't care).
If Layers[].VisibleBox is true and LayersDrawBox is false, a box is drawn only on the selected layer.
If Layers[].VisibleBox is true and LayersDrawBox is true, a box is drawn on all layers.
!!}
procedure TImageEnView.SetLayersDrawBox(value: boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetLayersDrawBox'); {$endif}
  if value <> fLayersDrawBox then
  begin
    fLayersDrawBox := value;
    Update;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoLayerNotify(layer: integer; event: TIELayerEvent);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoLayerNotify'); {$endif}
  SwapSelectionBase;
  if assigned(fOnLayerNotify) then
    fOnLayerNotify(self, layer, event);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{$IFDEF IEINCLUDEDIRECTSHOW}
procedure TImageEnView.DShowNewFrame(var Message: TMessage);
var
  dshow: TIEDirectShow;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DShowNewFrame'); {$endif}
  dshow := TIEDirectShow(pointer(Message.LParam));
  if assigned(dshow) and dshow.Connected and assigned(fOnDShowNewFrame) then
    fOnDShowNewFrame(self);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DShowEvent(var Message: TMessage);
var
  dshow: TIEDirectShow;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DShowEvent'); {$endif}
  dshow := TIEDirectShow(pointer(Message.LParam));
  if assigned(dshow) and dshow.Connected and assigned(fOnDShowEvent) then
    fOnDShowEvent(self);
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;
{$ENDIF}

{!!
<FS>TImageEnView.SelectionAspectRatio

<FM>Declaration<FC>
property SelectionAspectRatio:double;

<FM>Description<FN>
Specifies the selection aspect ratio.
If SelectionAspectRatio is -1, the aspect ratio is active only when user press the ALT key, and it is automatically calculated.
If SelectionAspectRatio is 0, the size of the selection is fixed and determined by SelectionAbsWidth and SelectionAbsHeight properties.
If SelectionAspectRatio is >0, ImageEn maintains the specified aspect.

<FM>Example<FC>
// we want standard behavior
ImageEnView.SelectionAspectRatio:=-1;

// we want a fixed selection of 100 x 100 pixels
ImageEnView.SelectionAbsWidth:=100;
ImageEnView.SelectionAbsHeight:=100;
ImageEnView.SelectionAspectRatio:=0;

// we want a fixed aspect ratio of 2 (height=2*width)
ImageEnView.SelectionAspectRatio:=2;
!!}
procedure TImageEnView.SetSelectionAspectRatio(value:double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetSelectionAspectRatio'); {$endif}
  if value<>fSelectionAspectRatio then
  begin
    fSelectionAspectRatio:=value;
    if fSelectionAspectRatio=0 then
      SelectionOptions:=SelectionOptions - [iesoSizeable]
    else
      SelectionOptions:=SelectionOptions + [iesoSizeable];
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{$ifdef IEINCLUDEFLATSB}
{!!
<FS>TImageEnView.FlatScrollBars

<FM>Declaration<FC>
property FlatScrollBars:boolean;

<FM>Description<FN>
Specifies whether the component's scroll bars are flat.
ImageEn only supports flat scroll bars if the system has version 472 or later of comctl32.dll and Delphi 5/6/7 and C++Builder 5/6.
This property must be set at Design Time, not at run-time
!!}
procedure TImageEnView.SetFlatScrollBars(Value:boolean);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetFlatScrollBars'); {$endif}
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

procedure TImageEnView.SwapSelectionBase;
var
  x:TIESelectionBase;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SwapSelectionBase'); {$endif}
  x:=fSavedSelectionBase;
  fSavedSelectionBase:=fSelectionBase;
  fSelectionBase:=x;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoZoomIn(var NewZoom: double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoZoomIn'); {$endif}
  SwapSelectionBase;
  if assigned(fOnZoomIn) then
    fOnZoomIn(self, NewZoom);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoZoomOut(var NewZoom: double);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoZoomOut'); {$endif}
  SwapSelectionBase;
  if assigned(fOnZoomOut) then
    fOnZoomOut(self, NewZoom);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoMouseInResizingGrip(Grip: TIEGrip);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoMouseInResizingGrip'); {$endif}
  SwapSelectionBase;
  if assigned(fOnMouseInResizingGrip) then
    fOnMouseInResizingGrip(self, Grip);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.DoMouseInSel;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.DoMouseInSel'); {$endif}
  SwapSelectionBase;
  if assigned(fOnMouseInSel) then
    fOnMouseInSel(self);
  SwapSelectionBase;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.NavigatorSelectionChanging(Sender:TObject);
var
  x,y:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.NavigatorSelectionChanging'); {$endif}
  if fNavigatorInside then exit;
  fNavigatorInside:=true;
  x:=round( Zoom/100 * fNavigator.SelX1 );
  y:=round( Zoom/100 * fNavigator.SelY1 );
  SetViewXY(x,y);
  fNavigatorInside:=false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetNavigatorRect;
var
  x1,y1,x2,y2:integer;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetNavigatorRect'); {$endif}
  if fNavigatorInside then exit;
  fNavigatorInside:=true;

  Paint;  // this updates offsets
  x1:=XScr2Bmp( OffsetX );
  y1:=YScr2Bmp( OffsetY );
  x2:=XScr2Bmp( OffsetX+ExtentX );
  y2:=YScr2Bmp( OffsetY+ExtentY );

  fNavigator.SelectionAbsWidth:=x2-x1;
  fNavigator.SelectionAbsHeight:=y2-y1;
  fNavigator.SelectionAspectRatio:=0;

  fNavigator.Select(x1,y1,x2,y2,iespReplace);

  fNavigatorInside:=false;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetNavigator

<FM>Declaration<FC>
procedure SetNavigator(nav:<A TImageEnView>);

<FM>Description<FN>
SetNavigator specifies a TImageEnView component which works as navigator of current image. A navigator shows a selection that controls the zoom and scroll of the main control.
Look at 'navigator' example for more info.

<FM>Example<FC>

ImageEnView1.SetNavigator( ImageEnView2 );
ImageEnView1.IO.LoadFromFile('input.jpg');

!!}
procedure TImageEnView.SetNavigator(nav:TImageEnView);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetNavigator'); {$endif}
  if fNavigator<>nil then
  begin
    fNavigator.OnSelectionChanging:=nil;
    fNavigator.SetExternalBitmap(nil);
  end;
  fNavigator:=nav;
  if fNavigator<>nil then
  begin
    fNavigator.EnableAlphaChannel:=EnableAlphaChannel;
    fNavigator.AutoFit:=True;
    fNavigator.MouseInteract:=[miSelect];
    fNavigator.SelectionBase:=iesbBitmap;
    fNavigator.SelectionOptions:=[iesoMoveable,iesoCanScroll];
    fNavigator.SetExternalBitmap( IEBitmap );
    fNavigator.fOnSelectionChanging:=NavigatorSelectionChanging;
    fNavigator.FreeNotification(self);
    SetNavigatorRect;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.Notification(AComponent: TComponent; Operation: TOperation);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.Notification'); {$endif}
  inherited Notification(AComponent, Operation);
  if (AComponent = fNavigator) and (Operation = opRemove) then
  begin
    fNavigator:=nil;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.SetExternalBitmap

<FM>Declaration<FC>
procedure SetExternalBitmap(bmp:<A TIEBitmap>);

<FM>Description<FN>
SetExternalBitmap makes it possible to connect a TImageEnView component to another one, sharing the same bitmap. This is useful to view the same image with multiple TImageEnView components, loading the image only one time.

<FM>Example<FC>

ImageEnView1.IO.LoadFromFile('input.jpg');
ImageEnView2.SetExternalBitmap( ImageEnView1.IEBitmap );

..ImageEnView1 shows input.jpg. Also ImageEnView2 shows the same image.

!!}
procedure TImageEnView.SetExternalBitmap(bmp:TIEBitmap);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.SetExternalBitmap'); {$endif}
  if fLayersCurrent>-1 then
  begin
    if bmp<>nil then
    begin
      if CurrentLayer.FreeBitmapOnDestroy then
      begin
        if fIEBitmap.EncapsulatedFromTBitmap then
          FreeAndNil(fBitmap);
        FreeAndNil(fIEBitmap);
      end;

      CurrentLayer.Bitmap:=bmp;
      CurrentLayer.FreeBitmapOnDestroy:=false;

      fIEBitmap:=CurrentLayer.Bitmap;
      if fIEBitmap.EncapsulatedFromTBitmap then
        fBitmap := fIEBitmap.VclBitmap
      else
        fBitmap := nil;
      CallBitmapChangeEvents;
      Update;
    end
    else
    begin
      CurrentLayer.FreeBitmapOnDestroy:=true;
      fIEBitmap:=TIEBitmap.Create;
      fBitmap:=nil;
    end;
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;


{!!
<FS>TImageEnView.ImageEnVersion

<FM>Declaration<FC>
property ImageEnVersion:string;

<FM>Description<FN>
This is a published property which returns the ImageEn version as string.

!!}
function TImageEnView.GetImageEnVersion:string;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.GetImageEnVersion'); {$endif}
  result:=IEMAINVERSION;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

procedure TImageEnView.SetImageEnVersion(Value:string);
begin
  // this is a read-only property, but it must be displayed in object inspector
end;

{$ifdef IEDOTNETVERSION}
procedure TImageEnView.WMContextMenu(var Message: TWMContextMenu);
begin
  // just to remove Delphi default behavior
end;
{$endif}

{!!
<FS>TImageEnView.ChangeResolution

<FM>Declaration<FC>
procedure ChangeResolution(NewDPI:integer; ResampleFilter:<A TResampleFilter>);

<FM>Description<FN>

ChangeResolution changes the DPI of the image, resamping it and setting new DPI values.

<FM>Example<FC>

// load input.jpg which has 100 dpi
ImageEnView1.IO.LoadFromFile('input.jpg');
// we want 75 dpi
ImageEnView1.ChangeResolution(75,rfTriangle);
// save back as 75 dpi
ImageEnView1.IO.SaveToFile('output.jpg');

!!}
procedure TImageEnView.ChangeResolution(NewDPI:integer; ResampleFilter:TResampleFilter);
var
  olddpi:integer;
  newheight:integer;
  proc:TImageEnProc;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.ChangeResolution'); {$endif}
  if (DPIX=0) or (DPIY=0) then
    exit;
  olddpi:=DPIY;
  newheight:=round(fIEBitmap.Height/olddpi*NewDPI);
  proc:=TImageEnProc.Create(nil);
  proc.AttachedIEBitmap:=fIEBitmap;
  proc.AutoUndo:=False;
  proc.OnProgress:=fOnProgress;
  proc.OnFinishWork:=fOnFinishWork;
  proc.Resample(-1,newheight,ResampleFilter);
  FreeAndNil(proc);
  DPIY:=NewDPI;
  DPIX:=round(DPIX/olddpi*NewDPI);
  CallBitmapChangeEvents;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersSaveToFile


<FM>Declaration<FC>
procedure LayersSaveToFile(const FileName:string; CompressionFormat: <A TIOFileType>);

<FM>Description<FN>
LayersSaveToFile saves all layers included bitmap, position, size, etc.. in a unique file. It allows TImageEnView to rebuild a previous saved layers configuration.
All images will be compressed to the specified format, but the file which contains all layers is an ImageEn custom file format.

If CompressionFormat is -1, an internal compressed format is used. This format preserves pixel format and alpha channel.

Note: CompresionFormat cannot be ioTIFF

<FM>Example<FC>

// saves current layers configuration (compress images as jpeg)
ImageEnView1.LayersSaveToFile('layers.lyr', -1);

// loads saved layers
ImageEnView1.LayersLoadFromFile('layers.lyr');

!!}
// warning: ioTIFF not supported
// if compressionFormat=-1 then use internal compressed format (preserves pixelformat and transparency)
procedure TImageEnView.LayersSaveToFile(const FileName:string; CompressionFormat:TIOFileType);
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersSaveToFile'); {$endif}
  fs := TFileStream.Create(FileName, fmCreate);
  try
    LayersSaveToStream(fs,CompressionFormat);
  finally
    FreeAndNil(fs);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.LayersLoadFromFile

<FM>Declaration<FC>
function LayersLoadFromFile(const FileName:string):boolean;

<FM>Description<FN>
LayersLoadFromFile loads all layers included bitmap, position, size, etc.. from a file saved using LayersSaveToStream/LayersSaveToFile. It allows TImageEnView to rebuild a previous saved layers configuration.
All images will be compressed to the specified format, but the file which contains all layers is an ImageEn custom file format.

Returns True on success.

<FM>Example<FC>

// saves current layers configuration (compress images as jpeg)
ImageEnView1.LayersSaveToFile('layers.lyr', ioJPEG);

// loads saved layers
ImageEnView1.LayersLoadFromFile('layers.lyr');

!!}
function TImageEnView.LayersLoadFromFile(const FileName:string):boolean;
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersLoadFromFile'); {$endif}
  fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    result:=LayersLoadFromStream(fs); // this calls Update
  finally
    FreeAndNil(fs);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

type

TLayerHeader=packed record
  Magic:array [0..12] of char;  // must be IELAYERSFILEMAGIC
  Version:integer;              // must be IELAYERSFILEVER
  FileFormat:TIOFileType;
  LayersCount:integer;
end;

const
  IELAYERSFILEVER:integer=6;
  IELAYERSFILEMAGIC='IMAGEENLAYERS';

{!!
<FS>TImageEnView.LayersSaveToStream

<FM>Declaration<FC>
procedure LayersSaveToStream(Stream:TStream; CompressionFormat: <A TIOFileType>);

<FM>Description<FN>
LayersSaveToStream saves all layers included bitmap, position, size, etc.. in a unique file. It allows TImageEnView to rebuild a previous saved layers configuration.
All images will be compressed to the specified format, but the file which contains all layers is an ImageEn custom file format.

If CompressionFormat is -1, an internal compressed format is used. This format preserves pixel format and alpha channel.

Note: CompresionFormat cannot be ioTIFF

<FM>Example<FC>

// saves current layers configuration (compress images as jpeg)
ImageEnView1.LayersSaveToFile('layers.lyr', -1);

// loads saved layers
ImageEnView1.LayersLoadFromFile('layers.lyr');

!!}
// warning: ioTIFF not supported
// if compressionFormat=-1 then use internal compressed format (preserves pixelformat and transparency)
procedure TImageEnView.LayersSaveToStream(Stream:TStream; CompressionFormat:TIOFileType);
var
  recHead:TLayerHeader;
  i,k:integer;
  p1:int64;
  p2:TList;
  ll,hh:dword;
  lcurrent:integer;
  LZStream: TZCompressionStream;
  ms:TMemoryStream;
  dw:dword;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersSaveToStream'); {$endif}

  lcurrent:=LayersCurrent;

  {$ifdef IEINCLUDEPNG}
  if CompressionFormat=ioTIFF then
    CompressionFormat:=ioPNG;
  {$endif}

  // prepare header
  recHead.Version:=IELAYERSFILEVER;
  recHead.LayersCount:=fLayers.Count;
  recHead.FileFormat:=CompressionFormat;
  move( IELAYERSFILEMAGIC, recHead.Magic[0], length(IELAYERSFILEMAGIC) );

  // write header
  Stream.Write(recHead,sizeof(TLayerHeader));

  // write layers data
  p2:=TList.Create;
  for i:=0 to fLayers.Count-1 do
  begin
    Stream.Write(Layers[i].Visible,sizeof(boolean));
    Stream.Write(Layers[i].VisibleBox,sizeof(boolean));
    Stream.Write(Layers[i].Transparency,sizeof(integer));
    Stream.Write(Layers[i].PosX,sizeof(integer));
    Stream.Write(Layers[i].PosY,sizeof(integer));
    Stream.Write(Layers[i].Cropped,sizeof(boolean));
    Stream.Write(Layers[i].Locked,sizeof(boolean));
    Stream.Write(Layers[i].Magnify.Enabled,sizeof(boolean));
    Stream.Write(Layers[i].Magnify.Rate,sizeof(double));
    Stream.Write(Layers[i].Magnify.Style,sizeof(TIEMagnifyStyle));
    Stream.Write(Layers[i].Magnify.Source,sizeof(TIEMagnifySource));  // v.3
    Stream.Write(Layers[i].Operation,sizeof(TIERenderOperation));
    Stream.Write(Layers[i].ResizedWidth,sizeof(integer));
    Stream.Write(Layers[i].ResizedHeight,sizeof(integer));
    Stream.Write(Layers[i].ResampleFilter,sizeof(TResampleFilter));   // v.3
    Stream.Write(Layers[i].UseResampleFilter,sizeof(boolean));        // v.3
    SaveStringToStream(Stream,Layers[i].Name);                        // v.3
    Stream.Write(Layers[i].UserDataLen,sizeof(integer));              // v.3
    if Layers[i].UserDataLen>0 then
      Stream.Write(pbyte(Layers[i].UserData)^,Layers[i].UserDataLen); // v.3
    Stream.Write(Layers[i].IsMask,sizeof(boolean));                   // v.3
    Stream.Write(Layers[i].Selectable,sizeof(boolean));               // v.4
    Stream.Write(Layers[i].DrawOuter,sizeof(boolean));                // v.6
    k:=Stream.Position;
    p2.Add( pointer(k) ); // save position of fileposition field
    Stream.Seek(8,soFromCurrent); // unknown position (lo and hi)
  end;

  // write images
  for i:=0 to fLayers.Count-1 do
  begin
    p1:=Stream.Position;

    // save image position
    Stream.Position:=integer(p2[i]);
    ll:=p1 and $FFFFFFFF;
    hh:=(p1 shr 32) and $FFFFFFFF;
    Stream.Write(ll,sizeof(dword));
    Stream.Write(hh,sizeof(dword));

    Stream.Position:=p1;
    LayersCurrent:=i;

    if CompressionFormat=-1 then
    begin
      // use internal format (preserve pixelformat and alpha channel). Also this is LZ compressed.
      ms:=TMemoryStream.Create;
      LZStream := TZCompressionStream.Create(ms, zcDefault);
      fIEBitmap.SaveRAWToBufferOrStream(nil,LZStream);
      FreeAndNil(LZStream);
      dw:=ms.Size; Stream.Write(dw,sizeof(dword));  // write compressed stream size
      ms.Position:=0;
      Stream.CopyFrom(ms,ms.Size);
      FreeAndNil(ms);
    end
    else
    begin
      // use standard image formats
      case fIEBitmap.PixelFormat of
        ie1g:
          begin
            IO.Params.BitsPerSample:=1;
            IO.Params.SamplesPerPixel:=1;
          end;
        ie8g:
          begin
            IO.Params.BitsPerSample:=8;
            IO.Params.SamplesPerPixel:=1;
          end;
        else
          begin
            IO.Params.BitsPerSample:=8;
            IO.Params.SamplesPerPixel:=3;
          end;
      end;
      IO.SaveToStream(Stream, CompressionFormat);
    end;
    Stream.Seek(0,soFromEnd);
  end;

  FreeAndNil(p2);

  LayersCurrent:=lcurrent;

  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

function IETryLYR(Stream:TStream):boolean;
var
  l:int64;
  recHead:TLayerHeader;
begin
  l:=Stream.Position;
  result:=true;
  Stream.Read(recHead,sizeof(TLayerHeader));
  if (StrLComp(recHead.Magic,IELAYERSFILEMAGIC,length(IELAYERSFILEMAGIC))<>0) or (recHead.Version<=0) then
    result:=false;
  Stream.Position:=l;
end;

{!!
<FS>TImageEnView.LayersLoadFromStream

<FM>Declaration<FC>
function LayersLoadFromStream(Stream:TStream):boolean;

<FM>Description<FN>
LayersLoadFromStream loads all layers included bitmap, position, size, etc.. from a file saved using LayersSaveToStream/LayersSaveToFile. It allows TImageEnView to rebuild a previous saved layers configuration.
All images will be compressed to the specified format, but the file which contains all layers is an ImageEn custom file format.

Returns True on success.

<FM>Example<FC>

// saves current layers configuration (compress images as jpeg)
ImageEnView1.LayersSaveToFile('layers.lyr', ioJPEG);

// loads saved layers
ImageEnView1.LayersLoadFromFile('layers.lyr');

!!}
function TImageEnView.LayersLoadFromStream(Stream:TStream):boolean;
var
  recHead:TLayerHeader;
  i:integer;
  p1:int64;
  poslo,poshi:dword;
  lnative:boolean;
  LZStream: TZDecompressionStream;
  ms:TMemoryStream;
  dw:dword;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnView.LayersLoadFromStream'); {$endif}
  result:=false;

  // read header
  Stream.Read(recHead,sizeof(TLayerHeader));
  if StrLComp(recHead.Magic,IELAYERSFILEMAGIC,length(IELAYERSFILEMAGIC))<>0 then
    exit;
  if recHead.Version>0 then
  begin
    for i:=fLayers.Count-1 downto 1 do
      LayersRemove(i);

    // read layers data and images
    for i:=0 to recHead.LayersCount-1 do
    begin
      if i>0 then
        LayersAdd;

      Stream.Read(CurrentLayer.Visible,sizeof(boolean));
      Stream.Read(CurrentLayer.VisibleBox,sizeof(boolean));
      Stream.Read(CurrentLayer.Transparency,sizeof(integer));
      Stream.Read(CurrentLayer.PosX,sizeof(integer));
      Stream.Read(CurrentLayer.PosY,sizeof(integer));
      Stream.Read(CurrentLayer.Cropped,sizeof(boolean));
      Stream.Read(CurrentLayer.Locked,sizeof(boolean));
      Stream.Read(CurrentLayer.Magnify.Enabled,sizeof(boolean));
      Stream.Read(CurrentLayer.Magnify.Rate,sizeof(double));
      Stream.Read(CurrentLayer.Magnify.Style,sizeof(TIEMagnifyStyle));
      if recHead.Version>=3 then
        Stream.Read(CurrentLayer.Magnify.Source,sizeof(TIEMagnifySource));
      Stream.Read(CurrentLayer.Operation,sizeof(TIERenderOperation));
      Stream.Read(CurrentLayer.ResizedWidth,sizeof(integer));
      Stream.Read(CurrentLayer.ResizedHeight,sizeof(integer));
      if recHead.Version>=3 then
      begin
        Stream.Read(CurrentLayer.ResampleFilter,sizeof(TResampleFilter));
        Stream.Read(CurrentLayer.UseResampleFilter,sizeof(boolean));
        LoadStringFromStream(Stream,CurrentLayer.Name);
        Stream.Read(CurrentLayer.UserDataLen,sizeof(integer));
        if CurrentLayer.UserDataLen>0 then
        begin
          getmem(CurrentLayer.UserData,CurrentLayer.UserDataLen);
          Stream.Read(pbyte(CurrentLayer.UserData)^,CurrentLayer.UserDataLen);
        end;
        Stream.Read(CurrentLayer.IsMask,sizeof(boolean));
      end;
      if recHead.Version>=4 then
        Stream.Read(CurrentLayer.Selectable,sizeof(boolean));
      if recHead.Version>=6 then
        Stream.Read(CurrentLayer.DrawOuter,sizeof(boolean));
      CurrentLayer.ClientAreaBox := Rect(0, 0, 0, 0);
      Stream.Read(poslo,sizeof(dword));
      Stream.Read(poshi,sizeof(dword));

      p1:=Stream.Position;
      Stream.Position:=poslo+(poshi shl 32);
      LayersCurrent:=i;

      if recHead.FileFormat=-1 then
      begin
        // use internal file format
        Stream.Read(dw,sizeof(dword));  // compressed stream size
        ms:=TMemoryStream.Create;
        ms.SetSize(dw); // speedup loading (2.3.3)
        ms.CopyFrom(Stream,dw);
        ms.Position:=0;
        LZStream := TZDecompressionStream.Create(ms);
        fIEBitmap.LoadRAWFromBufferOrStream(nil,LZStream);
        FreeAndNil(LZStream);
        FreeAndNil(ms);
      end
      else
      begin
        // use standard file formats
        lnative:=IO.NativePixelFormat;
        if CurrentLayer.IsMask then
          IO.NativePixelFormat:=true;
        IO.LoadFromStreamFormat(Stream,recHead.FileFormat);
        IO.NativePixelFormat:=lnative;
      end;

      Stream.Position:=p1;

    end;

    result:=true;
  end;
  if assigned(fImageEnIO) then
  begin
    IO.Params.Width:=Layers[0].Bitmap.Width;
    IO.Params.Height:=Layers[0].Bitmap.Height;
  end;
  Update;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

{!!
<FS>TImageEnView.WallPaper

<FM>Declaration<FC>
property WallPaper:TPicture;

<FM>Description<FN>
The WallPaper property sets a background image under the main image and layers. Use WallPaperStyle to specify how to paint the wallpaper.
!!}
procedure TImageEnView.SetWallPaper(Value: TPicture);
begin
  fWallPaper.Assign(Value);
  Update;
end;

{!!
<FS>TImageEnView.WallPaperStyle

<FM>Declaration<FC>
property WallPaperStyle:<A TIEWallPaperStyle>;

<FM>Description<FN>
WallPaperStyle (defined in imageenview unit) specifies how to paint the wallpaper.
!!}
procedure TImageEnView.SetWallPaperStyle(Value: TIEWallPaperStyle);
begin
  if Value <> fWallPaperStyle then
  begin
    fWallPaperStyle := Value;
    Update;
  end;
end;

procedure TImageEnView.DrawBackgroundToCanvas(ACanvas:TCanvas);
begin
  // draws only the background
  IEDrawBackGround(ComponentState, ACanvas, nil, fBackgroundStyle, fBackground, 0, 0, Width, Height, 0, 0, 0, 0, fChessboardSize, fChessboardBrushStyle, fGradientEndColor, fWallPaper,fWallPaperStyle);
end;

// 2.2.5
{!!
<FS>TImageEnView.DisplayImageRect

<FM>Declaration<FC>
procedure DisplayImageRect(ARect:TRect);

<FM>Description<FN>
DisplayImageRect shows the specified image rectangle adjusting zoom and pan. The rectangle will be adjusted to get right aspect ratio.

!!}
procedure TImageEnView.DisplayImageRect(ARect:TRect);
var
  dZoom: Double;
begin
  LockPaint;
  try
    ARect:= AdjustRectToAspectRatio(ARect);
    if (ARect.Bottom-ARect.Top)=0 then
      exit;
    dZoom:= ClientHeight / (ARect.Bottom-ARect.Top);
    Zoom:= dZoom * 100;
    ViewX:= round(ARect.left * dZoom);
    ViewY:= round(ARect.top * dZoom );
  finally
    UnlockPaint;
  end;
end;

{!!
<FS>TImageEnView.LayersCreateFromSelection

<FM>Declaration<FC>
function LayersCreateFromSelection:integer;

<FM>Description<FN>
LayersCreateFromSelection creates a new layer from current selection.
This is useful, for example, to implement typical copy & paste selections.
Returns index of the new layer.

<FM>Example<FC>

// select an ellipse
ImageEnView1.SelectEllipse(150,150,50,50);
// copy selected area and create a new layer
ImageEnView1.LayersCreateFromSelection;
// move the new layer
ImageEnView1.CurrentLayer.PosX:=100;
ImageEnView1.CurrentLayer.PosY:=100;
// paste to the background
ImageEnView1.LayersMerge(0,1);

!!}
function TImageEnView.LayersCreateFromSelection:integer;
var
  baseLayer:integer;
begin
  baseLayer:=LayersCurrent;
  result:=LayersAdd;
  LayersCurrent:=baseLayer;
  if Selected then
  begin
    CopySelectionToIEBitmap( Layers[result].Bitmap );
    Layers[result].PosX:=SelX1 + CurrentLayer.PosX;
    Layers[result].PosY:=SelY1 + CurrentLayer.posY;
  end
  else
  begin
    Layers[Result].Bitmap.Assign( CurrentLayer.Bitmap );
    Layers[result].PosX:=CurrentLayer.PosX;
    Layers[result].PosY:=CurrentLayer.posY;
  end;
  LayersCurrent:=result;  // this disables selection
end;

{!!
<FS>TImageEnView.LayersCreateFromClipboard

<FM>Declaration<FC>
function LayersCreateFromClipboard:integer;

<FM>Description<FN>
Creates a new layer with the content of clipboard.
Returns index of the new layer.
!!}
function TImageEnView.LayersCreateFromClipboard:integer;
begin
  result:=LayersAdd;
  Proc.PasteFromClipboard;
end;


{!!
<FS>TImageEnView.BackBuffer

<FM>Declaration<FC>
property BackBuffer:TBitmap;

<FM>Description<FN>
BackBuffer gets access to the back buffer where ImageEn will draw the image (and layers) just before the paint event. You can draw on BackBuffer handling the OnDrawBackBuffer event to paint custom graphics on it.
BackBuffer is updated whenever Update is called.

<FM>Example<FC>
Procedure Form1OnDrawBackBuffer(Sender:TObject);
Begin
  With ImageEnView1.BackBuffer.Canvas do begin
    Pen.Color:=clRed;
    MoveTo( 0,0 );
    LineTo( 100,100 );
  End;
End;

!!}
function TImageEnView.GetBackBuffer:TBitmap;
begin
  result:=fTBitmap.VclBitmap;
end;

procedure TImageEnView.SetOnSaveUndo(value:TIESaveUndoEvent);
begin
  fOnSaveUndo:=value;
  if assigned(fImageEnProc) then
    fImageEnProc.OnSaveUndo := value;
end;

{!!
<FS>TImageEnView.OnSaveUndo

<FM>Declaration<FC>
property OnSaveUndo: <A TIESaveUndoEvent>;

<FM>Description<FN>

OnSaveUndo is called after <A TImageEnProc.SaveUndo> is called by user action or by code.
source is the same parameter used calling <A TImageEnProc.SaveUndo>.

!!}
function TImageEnView.GetOnSaveUndo:TIESaveUndoEvent;
begin
  result:=fOnSaveUndo;
end;

{!!
<FS>TImageEnView.LayersFixSizes

<FM>Declaration<FC>
procedure LayersFixSizes(layer:integer=-1);

<FM>Description<FN>

Resizes the bitmap associated to each layer (or the specified layer) to the actual layer size.
layer=-1 means All layers.
!!}
// layer=-1 : all layers
procedure TImageEnView.LayersFixSizes(layer:integer);
var
  lyr:TIELayer;
  i,l:integer;
  rf:TResampleFilter;
  tempproc:TImageEnProc;
begin
  tempproc:=TImageEnProc.Create(nil);
  l:=fLayersCurrent;
  for i:=0 to fLayers.Count-1 do
  begin
    lyr:=TIELayer(fLayers[i]);
    if ((lyr.ResizedWidth<>0) or (lyr.ResizedHeight<>0)) and ((layer=-1) or (i=layer)) then
    begin
      LayersCurrent:=i;
      if lyr.UseResampleFilter then
        rf:=lyr.ResampleFilter
      else
        rf:=fZoomFilter;
      tempproc.AttachedIEBitmap:=lyr.Bitmap;
      tempproc.Resample(lyr.Width,lyr.Height,rf);
      lyr.ResizedWidth:=0;
      lyr.ResizedHeight:=0;
    end;
  end;
  LayersCurrent:=l;
  tempproc.Free;
end;

{!!
<FS>TImageEnView.LayersFixBorders

<FM>Declaration<FC>
procedure LayersFixBorders(layer:integer=-1);

<FM>Description<FN>
This method removes the transparent border around the bitmap.
A transparent border can be caused by multiple rotations.
layer=-1 means All layers.
!!}
procedure TImageEnView.LayersFixBorders(layer:integer=-1);
var
  lyr:TIELayer;
  i:integer;
  p:TImageEnProc;
begin
  p:=TImageEnProc.Create(nil);
  p.AutoUndo:=false;
  for i:=0 to fLayers.Count-1 do
  begin
    lyr:=TIELayer(fLayers[i]);
    if ((layer=-1) or (i=layer)) then
    begin
      p.AttachedIEBitmap:=lyr.Bitmap;
      p.CutTransparentBorder;
    end;
  end;
  p.Free;
end;

{!!
<FS>TImageEnView.LayersFixRotations

<FM>Declaration<FC>
procedure LayersFixRotations(layer:integer=-1);

<FM>Description<FN>
Rotates the bitmap associated to each layer (or the specified layer) to the actual rotation angle.
This method call <A TImageEnView.LayersFixSizes> for each layer to rotate.
layer=-1 means All layers.
!!}
// layer=-1 : all layers
procedure TImageEnView.LayersFixRotations(layer:integer);
var
  lyr:TIELayer;
  i,l:integer;
  pts:array [0..3] of TPoint;
  lposx,lposy,lresw,lresh:integer;
  r:TRect;
  tempproc:TImageEnProc;
begin
  tempproc:=TImageEnProc.Create(nil);
  l:=fLayersCurrent;
  for i:=0 to fLayers.Count-1 do
  begin
    lyr:=TIELayer(fLayers[i]);
    if (lyr.Rotate<>0) and ((layer=-1) or (i=layer)) then
    begin

      LayersFixSizes(i);

      LayersCurrent:=i;

      lresw:=lyr.Width;
      lresh:=lyr.Height;
      pts[0].X:=0;
      pts[0].Y:=0;
      pts[1].X:=lyr.Width;
      pts[1].Y:=0;
      pts[2].X:=lyr.Width;
      pts[2].Y:=lyr.height;
      pts[3].X:=0;
      pts[3].Y:=lyr.Height;
      lposx:=lyr.PosX;
      lposy:=lyr.PosY;
      lyr.Bitmap.AlphaChannel;  // creates alpha channel
      tempproc.AttachedIEBitmap:=lyr.Bitmap;
      tempproc.Rotate(lyr.Rotate,true,fLayersRotationFilter);
      IERotatePoints(pts,lyr.Rotate,trunc(lyr.RotateCenterX*lresw),trunc(lyr.RotateCenterY*lresh));
      lyr.PosX:= lposx+imin(imin(imin(pts[0].X,pts[1].X),pts[2].X),pts[3].X);
      lyr.PosY:= lposy+imin(imin(imin(pts[0].Y,pts[1].Y),pts[2].Y),pts[3].Y);

      lyr.ResizedWidth:=  0;
      lyr.ResizedHeight:= 0;

      lyr.Rotate:=0;

      r:=IEGetVisibleArea(fIEBitmap,nil,nil);
      tempproc.Crop(r);
      lyr.PosX:=lyr.PosX+r.Left;
      lyr.PosY:=lyr.posY+r.Top;

    end;
  end;
  LayersCurrent:=l;
  tempproc.Free;
end;

{!!
<FS>TImageEnView.SoftCrop

<FM>Declaration<FC>
property SoftCrop:<A TIESoftCropMode>;

<FM>Description<FN>
SoftCrop specifies the operation to do when an upper layer is out of layer 0.
When this is iesfAlphaBlend you can set the transparency using <A TImageEnView.SoftCropValue>.
Also, when this is iesfAdd you can specify the addend with <A TImageEnView.SoftCropValue>.
!!}
procedure TImageEnView.SetSoftCrop(v:TIESoftCropMode);
begin
  fSoftCrop:=v;
  Update;
end;

{!!
<FS>TImageEnView.SoftCropValue

<FM>Declaration<FC>
property SoftCropValue:integer;

<FM>Description<FN>
Sets the transparency of cut areas, when <A TImageEnView.SoftCrop> is iesfAlphaBlend.
Also sets the addend value when <A TImageEnView.SoftCrop> is iesfAdd.
!!}
procedure TImageEnView.SetSoftCropValue(v:integer);
begin
  fSoftCropValue:=v;
  Update;
end;

procedure TImageEnView.SetInteractionHint(const Text:string; x,y:integer; const minText:string);
begin
  fInteractionHint:=Text;
  fInteractionHintX:=x;
  fInteractionHintY:=y;
  fInteractionHintMinText:=minText;
end;

{!!
<FS>TImageEnView.HighlightedPixel

<FM>Declaration<FC>
property HighlightedPixel:TPoint;

<FM>Description<FN>
When coordinates are >-1 then a colored box is painted around the specified pixel.

<FM>Demo<FN>
viewers\imagecomp
!!}
procedure TImageEnView.SetHighlightedPixel(v:TPoint);
var
  x1,y1,x2,y2:integer;
begin
  if (fHighlightedPixel.X>-1) and (fHighlightedPixel.Y>-1) then
  begin
    x1:=XBmp2Scr(fHighlightedPixel.X);
    y1:=YBmp2Scr(fHighlightedPixel.Y);
    x2:=XBmp2Scr(fHighlightedPixel.X+1);
    y2:=YBmp2Scr(fHighlightedPixel.Y+1);
    fHighlightedPixel:=Point(-1,-1);
    UpdateRect(Rect(x1-5,y1-5,x2+5,y2+5));
  end;
  fHighlightedPixel:=v;
  Paint;
end;

{!!
<FS>TImageEnView.MoveContentTo

<FM>Declaration<FC>
procedure TImageEnView.MoveContentTo(Destination:<A TImageEnView>);

<FM>Description<FN>
Transfers current image, all layers and input/output parameters to destination TImageEnView component.
This methods doesn't copy images, but just transfer pointers to images buffer.
Source component will be empty, and Destination previous images will be removed.
!!}
procedure TImageEnView.MoveContentTo(Destination:TImageEnView);
var
  src_oldnav,dst_oldnav:TImageEnView;
  i:integer;
begin
  // disable navigator
  src_oldnav:=fNavigator;
  SetNavigator(nil);
  dst_oldnav:=Destination.fNavigator;
  Destination.SetNavigator(nil);

  // assign IO params
  Destination.IO.Params.Assign( IO.Params );

  // free destination images
  for i := 0 to Destination.fLayers.Count - 1 do
    TIELayer(Destination.fLayers[i]).Free;
  FreeAndNil(Destination.fLayers);

  // copy pointers to destination
  Destination.fLayers := fLayers;
  Destination.fIEBitmap := fIEBitmap;
  Destination.fBitmap := fBitmap;
  Destination.fLayersCurrent := fLayersCurrent;

  // change destination layers owner
  for i:=0 to Destination.fLayers.Count-1 do
    TIELayer(Destination.fLayers[i]).fOwner := Destination;

  // create empty images in source
  fIEBitmap := TIEBitmap.Create;
  if fLegacyBitmap then
  begin
    fBitmap := TBitmap.create;
    fBitmap.pixelformat := pf24bit;
    fIEBitmap.EncapsulateTBitmap(fBitmap, true);
  end;
  fLayers := TList.Create;
  fLayers.Add(TIELayer.Create(self, fIEBitmap, true));
  with TIELayer(fLayers[0]) do
  begin
    VisibleBox := false;
    Locked := true;
  end;
  fLayersCurrent := 0;

  Destination.CallBitmapChangeEvents;
  CallBitmapChangeEvents;

  Destination.Update;
  Update;

  // enable navigators
  SetNavigator(src_oldnav);
  Destination.SetNavigator(dst_oldnav);
end;

initialization
  {$ifdef IEPROFILE} try IEProfileBegin('imageenview.initialization'); {$endif}
  InitImageEnView;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}

finalization
  begin
    {$ifdef IEPROFILE} try IEProfileBegin('imageenview finalization'); {$endif}
    iegGRIDPEN.Free;
    try
      if FhGradientFill > 0 then
        FreeLibrary(fhGradientFill);
    except
    end;
    {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
  end;

end.




