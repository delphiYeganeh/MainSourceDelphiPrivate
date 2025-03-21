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

unit ievect;

{$R-}
{$Q-}

{$I ie.inc}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Menus, ExtCtrls, ImageEnView,
  Controls, StdCtrls, Forms, hyieutils, hyiedefs, ietextc, imageenio, iegdiplus;

const
  strunits: array[0..7] of string = ('pixels', 'inches', 'km', 'mt', 'cm', 'mm', 'microns', 'nanometers');
  NULLOBJ = -4;
  DEFWIDTH = 64;
  DEFHEIGHT = 64;
  IEVECTCLIPFORMAT_NAME: string = 'IMAGEEN VECT';
  // IEV file format
  IEVMAGIC = 'IEV'; // magic number
  IEVVER: byte = 80; // current version

var
  IEVECTCLIPFORMAT: integer;

type

{!!
<FS>TIEMemoEditCharInfo

<FM>Declaration<FC>
}
  // specifies the char info (font, color, alignment)
  TIEMemoEditCharInfo = class
    Font:TFont;
    Align:TIEAlignment;
    constructor Create;
    destructor Destroy; override;
  end;
{!!}

{!!
<FS>TIERotateCenter

<FM>Declaration<FC>
IERotateCenter = (ierObject, ierImage);

<FM>Description<FN>

<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ierObject</C> <C>rotation center is the object</C> </R>
<R> <C>ierImage</C> <C>rotation center is the image</C> </R>
</TABLE>

!!}
  TIERotateCenter = (ierObject, ierImage);

{!!
<FS>TIECurve

<FM>Declaration<FC>
TIECurve = (iecNone, iecEllipse, iecCosine, iecVertical, iecHorizontal, iecArc);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iecNone</C> <C>no curve (useful to remove a curve also created with SetObjTextCurve)</C> </R>
<R> <C>iecEllipse</C> <C>create an ellipting curve</C> </R>
<R> <C>iecCosine</C> <C>create a cosine curve</C> </R>
<R> <C>iecVertical</C> <C>create a vertical text</C> </R>
<R> <C>iecHorizontal</C> <C>create an horizontal text</C> </R>
<R> <C>iecArc</C> <C>create an arc</C> </R>
</TABLE>
!!}
  TIECurve = (iecNone, iecEllipse, iecCosine, iecVertical, iecHorizontal, iecArc);


{!!
<FS>TDPoint

<FM>Declaration<FC>
}
  TDPoint = record
    X, y: double;
  end;
{!!}

{!!
<FS>TDPointArray

<FM>Declaration<FC>
type TDPointArray = array[0 . . Maxint div 32] of <A TDPoint>;
!!}
  TDPointArray = array[0..Maxint div 32] of TDPoint;

{!!
<FS>PDPointArray

<FM>Declaration<FC>
type PDPointArray = ^<A TDPointArray>;
!!}
  PDPointArray = ^TDPointArray;

{!!
<FS>TIEVObjectKind

<FM>Declaration<FC>
type TIEVObjectKind = (iekNONE, iekLINE, iekBOX, iekELLIPSE, iekARC, iekBITMAP, iekTEXT, iekRULER, iekPOLYLINE, iekANGLE, iekMEMO, iekLINELABEL);

<FM>Description<FN>
Object type.
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iekLINE</C> <C>line object</C> </R>
<R> <C>iekBOX</C> <C>box object</C> </R>
<R> <C>iekELLIPSE</C> <C>ellipse object</C> </R>
<R> <C>iekARC</C> <C>arc object (only to read DXF)</C> </R>
<R> <C>iekBITMAP</C> <C>bitmap object</C> </R>
<R> <C>iekTEXT</C> <C>text object</C> </R>
<R> <C>iekRULER</C> <C>ruler object</C> </R>
<R> <C>iekPOLYLINE</C> <C>poly line (open polygon), also good for free hand painting</C> </R>
<R> <C>iekANGLE</C> <C>an angle measurement object</C> </R>
<R> <C>iekMEMO</C> <C>a multiline text object</C> </R>
<R> <C>iekLINELABEL</C> <C>a line object with a text associated</C> </R>
</TABLE>
!!}
  TIEVObjectKind = (iekNONE, iekLINE, iekBOX, iekELLIPSE, iekARC, iekBITMAP, iekTEXT, iekRULER, iekPOLYLINE, iekANGLE, iekMEMO, iekLINELABEL, iekEXTENDED);

  // shape types for iekLINE/iekLINELABEL (initial and ending shapes)
{!!
<FS>TIEShape

<FM>Declaration<FC>
type TIEShape = (iesNONE, iesINARROW, iesOUTARROW);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iesNONE</C> <C>no shape</C> </R>
<R> <C>iesINARROW</C> <C>arrow toward the center of object</C> </R>
<R> <C>iesOUTARROW</C> <C>arrow toward the extremes of object</C> </R>
</TABLE>
!!}
  TIEShape = (iesNONE, iesINARROW, iesOUTARROW);

{!!
<FS>TIEVRulerType

<FM>Declaration<FC>
TIEVRulerType = (iertRULER, iertQUOTEBEGIN, iertQUOTECENTER, iertQUOTEEND);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>iertRULER</C> <C>the standard ruler</C> </R>
<R> <C>iertQUOTEBEGIN</C> <C>display the length value on the left</C> </R>
<R> <C>iertQUOTECENTER</C> <C>display the length value on the center</C> </R>
<R> <C>iertQUOTEEND</C> <C>display the length value on the right</C> </R>
</TABLE>
!!}
  TIEVRulerType = (iertRULER, iertQUOTEBEGIN, iertQUOTECENTER, iertQUOTEEND);



{!!
<FS>TIEVBitmap

<FM>Declaration<FC>
type TIEVBitmap = record fBitmap: TBitmap; fRefCount: integer; end;

!!}
  // Bitmap for a iekBitmap object
  TIEVBitmap = record
    fBitmap: TIEBitmap;
    fRefCount: integer; // objects count that own this bitmap (0 is not allowed)
  end;
  
{!!
<FS>PIEVBitmap

<FM>Declaration<FC>
type PIEVBitmap = ^<A TIEVBitmap>;

!!}
  PIEVBitmap = ^TIEVBitmap;

{!!
<FS>TIEVBitmapArray

<FM>Declaration<FC>
type TIEVBitmapArray = array[0 . . MaxInt div 128] of <A TIEVBitmap>;

!!}
  TIEVBitmapArray = array[0..MaxInt div 128] of TIEVBitmap;

{!!
<FS>PIEVBitmapArray

<FM>Declaration<FC>
type PIEVBitmapArray = ^<A TIEVBitmapArray>;

!!}
  PIEVBitmapArray = ^TIEVBitmapArray;

{!!
<FS>TIEVStyle

<FM>Declaration<FC>
TIEVStyle = set of (ievsSelectable, ievsMoveable, ievsSizeable, ievsVisible);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ievsSelectable</C> <C>the object is selectable (user can select it)</C> </R>
<R> <C>ievsMoveable</C> <C>the object is moveable (draggable) - requires ievsSelectable</C> </R>
<R> <C>ievsSizeable</C> <C>the object is sizeable (user can change borders) - requires ievsSelectable</C> </R>
<R> <C>ievsVisible</C> <C>the object is visible</C> </R>
</TABLE>
!!}
  TIEVStyle = set of (ievsSelectable, ievsMoveable, ievsSizeable, ievsVisible);


{!!
<FS>PIEVObject

<FM>Declaration<FC>
!!}
  PIEVObject = ^TIEVObject;

{!!
<FS>TIEUnits

<FM>Declaration<FC>
type TIEUnits = (ieuPIXELS, ieuINCHES, ieuKM, ieuMETERS, ieuCENTIMETERS, ieuMILLIMETERS, ieuMICRONS, ieuNANOMETERS);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ieuPIXELS</C> <C>pixels</C> </R>
<R> <C>ieuINCHES</C> <C>inches</C> </R>
<R> <C>ieuKM</C> <C>kilometers</C> </R>
<R> <C>ieuMETERS</C> <C>meters</C> </R>
<R> <C>ieuCENTIMETERS</C> <C>centimeters</C> </R>
<R> <C>ieuMILLIMETERS</C> <C>millimeters</C> </R>
<R> <C>ieuMICRONS</C> <C>microns</C> </R>
<R> <C>ieuNANOMETERS</C> <C>nanometers</C> </R>
</TABLE>
!!}
  TIEUnits = (ieuPIXELS, ieuINCHES, ieuKM, ieuMETERS, ieuCENTIMETERS, ieuMILLIMETERS, ieuMICRONS, ieuNANOMETERS);

{!!
<FS>TIELabelPos

<FM>Declaration<FC>
TIELabelPos = (ielBegin, ielEnd);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ielBegin</C> <C>show the text at the beginning of the line</C> </R>
<R> <C>ielEnd</C> <C>show the text at the end of the line</C> </R>
</TABLE>
!!}
  TIELabelPos = (ielBegin, ielEnd);

{!!
<FS>TIELabelBorder

<FM>Declaration<FC>
TIELabelBorder = (ielNone, ielRectangle);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>ielNone</C> <C>no border</C> </R>
<R> <C>ielRectangle</C> <C>show a rectangle border</C> </R>
<R> <C>ielRoundRect</C> <C>show a rounded rectangle border</C> </R>
<R> <C>ielEllipse</C> <C>show an elliptic border</C> </R>
</TABLE>
!!}
  TIELabelBorder = (ielNone, ielRectangle, ielRoundRect, ielEllipse);


  // note: do not define a constructor on inherited classes. Instead override "Initializa" method.
  TIEExtendedObject = class
    private
      fParent:TObject;
      fObject:PIEVObject;
      fHOBJ:integer;
      hfont: THandle;
      hpred: THandle;
      fMouseOver:boolean;
    public
      constructor Create;

      property Parent:TObject read fParent write fParent;
      property HOBJ:integer read fHOBJ;
      property MouseOver:boolean read fMouseOver;

      // helper functions
      procedure Repaint;
      procedure CreateFont(Canvas:TCanvas; Height:integer); overload;
      procedure CreateFont(Canvas:TIECanvas; Height:integer); overload;
      procedure DestroyFont(Canvas:TCanvas); overload;
      procedure DestroyFont(Canvas:TIECanvas); overload;

      procedure Initialize; virtual;
      procedure Finalize; virtual;
      procedure Instance(AssignedHOBJ:integer); virtual;
      procedure SaveToStream(Stream:TStream); virtual;
      function LoadFromStream(Stream:TStream):boolean; virtual;
      function Clone:TIEExtendedObject; virtual;
      procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); virtual;
      procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); virtual;
      procedure MouseMove(Shift: TShiftState; X, Y: Integer); virtual;
      procedure MouseEnter; virtual;
      procedure MouseLeave; virtual;
      procedure KeyDown(CharCode:word; Shift:TShiftState); virtual;
      procedure Draw(Bitmap:TBitmap; x1,y1,x2,y2:integer; isAlpha:boolean; ZoomX,ZoomY:double); virtual;

  end;

  TIEExtendedObjectClass = class of TIEExtendedObject;


  TIEVObject = record
    // shared fields
    x1, y1, x2, y2: integer; // object rectangle (in pixel, with zoom at 100%). The coordinates are sorted (but not for Kind=iekLINE,iekLINELABEL).
    Kind: TIEVObjectKind; // object type
    Transparency: integer;
    UserData:pointer;
    UserDataLength:integer;
    AspectRatio:boolean;
    // iekLINE / iekLINELABEL
    BeginShape: TIEShape;
    EndShape: TIEShape;
    ShapeWidth: integer;
    ShapeHeight: integer;
    // iekLINELABEL
    LabelBrushColor: TColor;
    LabelBrushStyle: TBrushStyle;
    LabelPosition: TIELabelPos;
    LabelBorder: TIELabelBorder;
    DrawedLabelBox:TRect; // where the label text has been drawed (to allow selection)
    // pen
    PenColor: TColor;
    PenStyle: TPenStyle;
    PenWidth: integer;
    // brush
    BrushColor: TColor;
    BrushStyle: TBrushStyle;
    BoxHighlight: boolean;
    // iekARC
    a1, a2: double; // starting and ending angle (radians)
    // iekBITMAP
    BitmapIdx: integer; // also valid for iekMEMO when MemoHasBitmap is true
    BitmapBorder:boolean;
    // iekTEXT / iekMEMO / iekLINELABEL / iekRULER / iekANGLE / iekEXTENDED
    Text: pchar; // allocated
    LogFont: PLogFont; // allocated
    TextAlign: TIEAlignment;
    TextAutoSize: boolean;
    FontLocked: boolean;
    CurvedPos: PDPointArray;
    CurvedLen: integer;
    CurvedCharRot: integer;
    TextEditable:boolean;
    // iekMEMO
    TextFormatRef: pintegerarray; // allocated
    TextFormat: TList; // allocated
    LineSpace: integer;
    MemoBorderColor: TColor;
    MemoBorderStyle: TPenStyle;
    MemoFixedHeight: integer;
    MemoHasBitmap: boolean;
    MemoMarginLeft:double;
    MemoMarginTop:double;
    MemoMarginRight:double;
    MemoMarginBottom:double;
    MemoCharsBrushStyle:TBrushStyle;
    // others
    Name: pchar; // object user name (allocated)
    ID: integer; // object user ID
    Style: TIEVStyle;
    // iekRULER
    RulerUnit: TIEUnits;
    RulerType: TIEVRulerType;
    // iekPOLYLINE
    PolyPoints: pointer; // array of TPoint. Coordinates are in bitmap pixels, they are never translated or resized.
                         // C++Builder doesn't work with PolyPoints as PPointArray
    PolyPointsCount: integer; // PolyPoints count
    PolyBaseX1, PolyBaseY1, PolyBaseX2, PolyBaseY2: integer; // original rectangle
    PolyClosed: boolean; // the polygon is closes (filled with a brush)
    DrawnPoints: pointer;
    DrawnPointsCount: integer;
    // iekANGLE
    AnglePoints: array[0..2] of TPoint;
    // working fields
    lx1, ly1, lx2, ly2: integer; // used when resizing objects to store original coordinates
    plim: trect; // paint limits (last paint limits)
    pwidth: integer; // painted width
    // softshadow
    softShadow: TIEVSoftShadow; // allocated
    // extended object
    extendedObject:TIEExtendedObject; // can be nil
  end;

  TIEVObjectArray = array[0..MaxInt div 512] of TIEVObject;
  PIEVObjectArray = ^TIEVObjectArray;

  // automatic mouse interactions
{!!
<FS>TIEMouseInteractVtItems

<FM>Declaration<FC>
type TIEMouseInteractVtItems = (miArea, miLineLen, miPutLine, miPutBox, miPutEllipse, miPutBitmap, miPutText, miObjectSelect, miDragLen, miPutRuler, miPutPolyline, miPutAngle, miPutMemo, miPutLineLabel, miEditPolyline, miUnStampMode);

<FM>Description<FN>
<TABLE>
<R> <H>Value</H> <H>Description</H> </R>
<R> <C>miArea</C> <C>Rectangle/polygon area measurement</C> </R>
<R> <C>miLineLen</C> <C>Line length (or distance of two points)</C> </R>
<R> <C>miPutLine</C> <C>Insert a line object</C> </R>
<R> <C>miPutBox</C> <C>Insert a rectangle object</C> </R>
<R> <C>miPutEllipse</C> <C>Insert a ellipse/circle object</C> </R>
<R> <C>miPutBitmap</C> <C>Insert a bitmap object</C> </R>
<R> <C>miPutText</C> <C>Insert a text object</C> </R>
<R> <C>miObjectSelect</C> <C>Objects select or modify (resizing an object pressing ALT key the object will maintain the aspect ratio)</C> </R>
<R> <C>miDragLen</C> <C>Dynamically measure distance without selection</C> </R>
<R> <C>miPutRuler</C> <C>Insert a ruler object</C> </R>
<R> <C>miPutPolyLine</C> <C>Insert a polyline (open polygon, or free hand painting)</C> </R>
<R> <C>miPutAngle</C> <C>Insert an angle measurement object ( three single clicks )</C> </R>
<R> <C>miPutMemo</C> <C>Insert a multi line text object</C> </R>
<R> <C>miPutLineLabel</C> <C>Insert a line with a label</C> </R>
<R> <C>miEditPolyline</C> <C>Edit (add/move/delete) points of a poyline. Press CTRL to remove a point</C> </R>
<R> <C>miUnStampMode</C> <C>Single click doesn't insert a new object</C> </R>
</TABLE>
!!}
  TIEMouseInteractVtItems = (
    miArea,           // Area of rectangle/polygon
    miLineLen,        // Measure line length
    miPutLine,        // Insert a line object
    miPutBox,         // Insert a rectangle object
    miPutEllipse,     // Insert a ellipse object
    miPutBitmap,      // Insert a bitmap object
    miPutText,        // Insert a text object
    miObjectSelect,   // Select/modify object
    miDragLen,        // dynamically measure distance
    miPutRuler,       // Insert a ruler object
    miPutPolyLine,    // Insert a polyline object
    miPutAngle,       // Insert an angle object
    miPutMemo,        // Insert a multi line text object
    miPutLineLabel,   // Insert a line with a label
    miEditPolyline,   // Edit points of a polyline
    miUnStampMode,    // single click doesn't insert a new object
    miPutExtendedObject // Insert a extended (custom) object defined by ExtendedObjectToPut property
    );

{!!
<FS>TIEMouseInteractVt

<FM>Declaration<FC>
type TIEMouseInteractVt = set of <A TIEMouseInteractVtItems>;
!!}
  TIEMouseInteractVt = set of TIEMouseInteractVtItems;

{!!
<FS>TIEVMeasureHintEvent

<FM>Declaration<FC>
TIEVMeasureHintEvent = procedure(Sender: TObject; var Text: string; Value: double) of object;

<FM>Description<FN>
Text is the text to display. Application can change it by customiizing hint.
Value is the measure value to display.
!!}
  TIEVMeasureHintEvent = procedure(Sender: TObject; var Text: string; Value: double) of object;

{!!
<FS>TIEVDragLenEndEvent

<FM>Declaration<FC>
TIEVDragLenEndEvent = procedure(Sender: TObject; Value: double) of object;

<FM>Description<FN>
Value is the measured length.
!!}
  TIEVDragLenEndEvent = procedure(Sender: TObject; Value: double) of object;

{!!
<FS>TIEVNewObject

<FM>Declaration<FC>
TIEVNewObject = procedure(Sender: TObject; hobj: integer) of object;

<FM>Description<FN>
hobj is the handle of the new created object.
!!}
  TIEVNewObject = procedure(Sender: TObject; hobj: integer) of object;

{!!
<FS>TIEUserSelectObject

<FM>Declaration<FC>
}
  TIEUserSelectObject = procedure(Sender:TObject; hobj:integer) of object;
{!!}

TIEVGripping = (iegrNone, iegrTopLeft, iegrBottomRight, iegrTranslation, iegrTopRight, iegrBottomLeft, iegrLeft, iegrRight, iegrUpper, iegrBottom,
                iegrAngle0, iegrAngle1, iegrAngle2);


{!!
<FS>TIEVObjectMoveResizeEvent

<FM>Declaration<FC>
TIEVObjectMoveResizeEvent = procedure(Sender: TObject; hobj: integer; Grip: integer; var OffsetX, OffsetY: integer) of object;

<FM>Description<FN>
hobj is the moved or resized object
Grip is the grip number when resized (1=top-left, 2=bottom-right, 3=center-translation, 4=top-right, 5=bottom-left, 6=left side, 7=right side, 8=upper side, 9=bottom side).
OffsetX, OffsetY : the translation offsets when moved
!!}
  TIEVObjectMoveResizeEvent = procedure(Sender: TObject; hobj: integer; Grip: integer; var OffsetX, OffsetY: integer) of object;

{!!
<FS>TIEVObjectClickEvent

<FM>Declaration<FC>
TIEVObjectClickEvent = procedure(Sender: TObject; hobj: integer) of object;

<FM>Description<FN>
hobj is the clicked object.
!!}
  TIEVObjectClickEvent = procedure(Sender: TObject; hobj: integer) of object;

  TIESelectObjectEvent = procedure(Sender: TObject; hobj: integer) of object;

{!!
<FS>TIEDrawObjectEvent

<FM>Declaration<FC>
TIEDrawObjectEvent = procedure(Sender:TObject; hobj:integer; destination:TBitmap; destRect:TRect; drawingAlpha:boolean; var handled:boolean) of object;

<FM>Description<FN>
If you set handled=true, ImageEn doesn't draw the object.
hobj is the object to draw.
destination is the destination bitmap.
destRect is the destination rectangle inside the bitmap.
DrawingAlpha is true when it is needed to draw the alpha channel.
!!}
  TIEDrawObjectEvent = procedure(Sender:TObject; hobj:integer; destination:TBitmap; destRect:TRect; drawingAlpha:boolean; var handled:boolean) of object;

{!!
<FS>TIEPolylineEndingMode

<FM>Declaration<FC>
}
  TIEPolylineEndingMode = (ieemDoubleClick, ieemManual, ieemMouseUp);
{!!}


{!!
<FS>TIEMemoShortCut

<FM>Declaration<FC>
}
  TIEMemoShortCut = (iesLEFTALIGN, iesCENTERALIGN, iesRIGHTALIGN, iesJUSTIFIED, iesCOPY, iesCUT, iesPASTE, iesFONTSELECT, iesBOLD, iesITALIC, iesUNDERLINE, iesBACKCOLORSELECT);
{!!}

{!!
<FS>TIEMemoShortCuts

<FM>Declaration<FC>
TIEMemoShortCuts = array [<A TIEMemoShortCut>] of TShortCut;
!!}
  TIEMemoShortCuts = array [TIEMemoShortCut] of TShortCut;

{!!
<FS>TIEVUndoMode

<FM>Declaration<FC>
TIEVUndoMode = (ieumSeparated, ieumShared);

<FM>Description<FN>
Value <FC>ieumShared<FN> activates the unique Undo/Redo system for image processing and vectorial objects.
<FM>ieumSeparated<FN> separates image processing and vectorial undo/redo systems.
!!}
  TIEVUndoMode = (ieumSeparated, ieumShared);

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// TImageEnVect

{!!
<FS>TImageEnVect

<FM>Description<FN>
TImageEnVect inherits from <A TImageEnView> (has all method and properties), and handles vectorial objects and measurements.

Like TImageEnView, TImageEnVect can be linked to <A TImageEnProc> and <A TImageEnIO>, for image processing and input/output of the background image.
Anyway you can also use embedded objects in <A TImageEnView.IO> and <A TImageEnView.Proc> properties, without use further TImageEnIO and TImageEnProc components.
TImageEnVect has methods to load and save vectorial objects (doesn't need TImageEnIO for vectorial load/save).

<FM>Properties<FN>

  <A TImageEnVect.AllObjectsHidden>
  <A TImageEnVect.AllowOutOfBitmapMoving>
  <A TImageEnVect.AllowOutOfBitmapPolylines>
  <A TImageEnVect.BitmapResampleFilter>
  <A TImageEnVect.CenterNewObjects>
  <A TImageEnVect.EnableRangeObjectsSelection>
  <A TImageEnVect.FloatDigits>
  <A TImageEnVect.FloatPrecision>
  <A TImageEnVect.ObjGripBrush>
  <A TImageEnVect.ObjGripImage>
  <A TImageEnVect.ObjGripPen>
  <A TImageEnVect.ObjGripShape>
  <A TImageEnVect.ObjGripSize>
  <A TImageEnVect.MaxSelectionDistance>
  <A TImageEnVect.MeasureCoefX>
  <A TImageEnVect.MeasureCoefY>
  <A TImageEnVect.MeasureHintBorder1>
  <A TImageEnVect.MeasureHintBorder2>
  <A TImageEnVect.MeasureHintBrush>
  <A TImageEnVect.MeasureHintFont>
  <A TImageEnVect.MeasureTrack>
  <A TImageEnVect.MouseInteractVt>
  <A TImageEnVect.MUnit>
  <A TImageEnVect.ObjAngleShowSmall>
  <A TImageEnVect.ObjAntialias>
  <A TImageEnVect.ObjArcEndingAngle>
  <A TImageEnVect.ObjArcStartingAngle>
  <A TImageEnVect.ObjAspectRatio>
  <A TImageEnVect.ObjAutoUndo>
  <A TImageEnVect.ObjBeginShape>
  <A TImageEnVect.ObjBitmapAlpha>
  <A TImageEnVect.ObjBitmapBorder>
  <A TImageEnVect.ObjBitmap>
  <A TImageEnVect.ObjBoxHighLight>
  <A TImageEnVect.ObjBoxInnerSelectable>
  <A TImageEnVect.ObjBrushColor>
  <A TImageEnVect.ObjBrushStyle>
  <A TImageEnVect.ObjCanUndo>
  <A TImageEnVect.ObjectsCount>
  <A TImageEnVect.ObjectsExtents>
  <A TImageEnVect.ObjEditOnNewText>
  <A TImageEnVect.ObjEndShape>
  <A TImageEnVect.ObjFontAngle>
  <A TImageEnVect.ObjFontHeight>
  <A TImageEnVect.ObjFontLocked>
  <A TImageEnVect.ObjFontName>
  <A TImageEnVect.ObjFontStyles>
  <A TImageEnVect.ObjGraphicRender>
  <A TImageEnVect.ObjHeight>
  <A TImageEnVect.ObjID>
  <A TImageEnVect.ObjIsVisible>
  <A TImageEnVect.ObjKind>
  <A TImageEnVect.ObjLabelBorder>
  <A TImageEnVect.ObjLabelBrushColor>
  <A TImageEnVect.ObjLabelBrushStyle>
  <A TImageEnVect.ObjLabelPosition>
  <A TImageEnVect.ObjLeft>
  <A TImageEnVect.ObjMemoBorderColor>
  <A TImageEnVect.ObjMemoBorderStyle>
  <A TImageEnVect.ObjMemoCharsBrushStyle>
  <A TImageEnVect.ObjMemoFixedHeight>
  <A TImageEnVect.ObjMemoHasBitmap>
  <A TImageEnVect.ObjMemoLineSpace>
  <A TImageEnVect.ObjMemoMarginBottom>
  <A TImageEnVect.ObjMemoMarginLeft>
  <A TImageEnVect.ObjMemoMarginRight>
  <A TImageEnVect.ObjMemoMarginTop>
  <A TImageEnVect.ObjName>
  <A TImageEnVect.ObjPenColor>
  <A TImageEnVect.ObjPenStyle>
  <A TImageEnVect.ObjPenWidth>
  <A TImageEnVect.ObjPolylineClosed>
  <A TImageEnVect.ObjPolylinePointsCount>
  <A TImageEnVect.ObjPolylinePoints>
  <A TImageEnVect.ObjRulerQuoteHorizon>
  <A TImageEnVect.ObjRulerType>
  <A TImageEnVect.ObjRulerUnit>
  <A TImageEnVect.ObjShapeHeight>
  <A TImageEnVect.ObjShapeWidth>
  <A TImageEnVect.ObjSoftShadow>
  <A TImageEnVect.ObjStyle>
  <A TImageEnVect.ObjTextAlign>
  <A TImageEnVect.ObjTextAutoSize>
  <A TImageEnVect.ObjTextCurveCharRot>
  <A TImageEnVect.ObjTextEditable>
  <A TImageEnVect.ObjText>
  <A TImageEnVect.ObjTop>
  <A TImageEnVect.ObjTransparency>
  <A TImageEnVect.ObjUndoCount>
  <A TImageEnVect.ObjUndoLimit>
  <A TImageEnVect.ObjUndoMode>
  <A TImageEnVect.ObjUserDataLength>
  <A TImageEnVect.ObjUserData>
  <A TImageEnVect.ObjWidth>
  <A TImageEnVect.PolylineEndingMode>
  <A TImageEnVect.ShareBitmaps>
  <A TImageEnVect.ScaleFactor>
  <A TImageEnVect.SelectOnMouseDown>
  <A TImageEnVect.SelObjectsCount>
  <A TImageEnVect.SelObjects>
  <A TImageEnVect.UseCentralGrip>
  <A TImageEnVect.ZoomObjectsWidth>

<FM>Methods<FN>

  <A TImageEnVect.AddNewObject>
  <A TImageEnVect.AddSelObject>
  <A TImageEnView.AddSelPoint>
  <A TImageEnVect.CancelInteracts>
  <A TImageEnVect.CopyAllObjectsTo>
  <A TImageEnVect.CopyObjectsToBack>
  <A TImageEnVect.CopyObjectToBack>
  <A TImageEnVect.CopyObjectTo>
  <A TImageEnVect.CopySelectedObjectsTo>
  <A TImageEnVect.CreateImageFromSelectedArea>
  <A TImageEnVect.CreatePolygonFromEdge>
  <A TImageEnVect.CreatePolygonsFromSelection>
  <A TImageEnVect.DrawObjectsToBitmap>
  <A TImageEnVect.DrawOneObjectToBitmap>
  <A TImageEnVect.FindObjectAt>
  <A TImageEnVect.GetAngleValue>
  <A TImageEnVect.GetMemoFormattedString>
  <A TImageEnVect.GetObjDiagLen>
  <A TImageEnVect.GetObjFromID>
  <A TImageEnVect.GetObjFromIndex>
  <A TImageEnVect.GetObjFromName>
  <A TImageEnVect.GetObjRect>
  <A TImageEnVect.GetPolylineArea>
  <A TImageEnVect.GetPolylineCentroid>
  <A TImageEnVect.GetPolylineLen>
  <A TImageEnVect.GetSelectionArea>
  <A TImageEnVect.GetSelectionCentroid>
  <A TImageEnVect.GetSelectionLen>
  <A TImageEnVect.ImportDXF>
  <A TImageEnVect.IsEditMode>
  <A TImageEnVect.IsSelObject>
  <A TImageEnVect.LoadFromFileAll>
  <A TImageEnVect.LoadFromFileIEV>
  <A TImageEnVect.LoadFromStreamAll>
  <A TImageEnVect.LoadFromStreamIEV>
  <A TImageEnVect.LoadObjectsFromTIFF>
  <A TImageEnVect.MemoEditingGetCharInfo>
  <A TImageEnVect.MemoEditingSetCharInfo>
  <A TImageEnVect.ObjClearAllUndo>
  <A TImageEnVect.ObjClearUndo>
  <A TImageEnVect.ObjCopyToClipboard>
  <A TImageEnVect.ObjCutToClipboard>
  <A TImageEnVect.ObjPasteFromClipboard>
  <A TImageEnVect.ObjSaveUndo>
  <A TImageEnVect.ObjSetTBitmap>
  <A TImageEnVect.ObjTextEditMode>
  <A TImageEnVect.ObjUndoAt>
  <A TImageEnVect.ObjUndo>
  <A TImageEnVect.RemoveAllObjects>
  <A TImageEnVect.RemoveObject>
  <A TImageEnVect.RemovePolygonJaggedEdges>
  <A TImageEnVect.RotateAllObjects>
  <A TImageEnVect.RotateObject>
  <A TImageEnVect.SaveObjectsToTIFF>
  <A TImageEnVect.SaveToFileAll>
  <A TImageEnVect.SaveToFileIEV>
  <A TImageEnVect.SaveToStreamAll>
  <A TImageEnVect.SaveToStreamIEV>
  <A TImageEnVect.SelAllObjects>
  <A TImageEnVect.SetObjBackTo>
  <A TImageEnVect.SetObjBitmapFromFile>
  <A TImageEnVect.SetObjBitmapFromStream>
  <A TImageEnVect.SetObjBitmapICO>
  <A TImageEnVect.SetObjFont>
  <A TImageEnVect.SetObjFrontOf>
  <A TImageEnVect.SetObjPolylinePoints>
  <A TImageEnVect.SetObjRect>
  <A TImageEnVect.SetObjTextCurveFromPolyline>
  <A TImageEnVect.SetObjTextCurveShape>
  <A TImageEnVect.SetObjTextCurve>
  <A TImageEnVect.SetScaleFromPixels>
  <A TImageEnVect.SetScaleFromSelectionLen>
  <A TImageEnVect.SimplifyPolygon>
  <A TImageEnVect.UnSelAllObjects>
  <A TImageEnVect.UnSelObject>

<FM>Events<FN>

  <A TImageEnVect.OnActivateTextEdit>
  <A TImageEnVect.OnAfterDrawObject>
  <A TImageEnVect.OnBeforeDrawObject>
  <A TImageEnVect.OnBeforeVectorialChanged>
  <A TImageEnVect.OnDeactivateTextEdit>
  <A TImageEnVect.OnDragLenEnd>
  <A TImageEnVect.OnMeasureHint>
  <A TImageEnVect.OnNewObject>
  <A TImageEnVect.OnObjectClick>
  <A TImageEnVect.OnObjectDblClick>
  <A TImageEnVect.OnObjectMoveResize>
  <A TImageEnVect.OnObjectOver>
  <A TImageEnVect.OnSelectObject>
  <A TImageEnVect.OnTextEditCursorMoved>
  <A TImageEnVect.OnTextKeyDown>
  <A TImageEnVect.OnUserDeselectObject>
  <A TImageEnVect.OnUserSelectObject>
  <A TImageEnVect.OnVectorialChanged>
!!}
  TImageEnVect = class(TImageEnView)
  private
    fCacheBitmap: TIEBitmap;
    fMouseInteractVt: TIEMouseInteractVt;
    fExtendedObjectToPut:string;
    fScale: double; // scale factor (e.g. for 1/100000 is 100000)
    fMUnit: TIEUnits; // measure unit for all tasks
    fCoefX, fCoefY: double; // Coef measure unit (includes DPI,Scale and MUnit)
    fFloatPrecision: integer; // to display values
    fFloatDigits: integer; // to display values
    fMeasureTrack: boolean; // nelle misure considera coordinate temporanee
    fVMoveX, fVMoveY: integer; // coordinate mousemove
    fOnSelectObject: TNotifyEvent;
    fOnUserSelectObject: TIEUserSelectObject;
    fOnUserDeselectObject: TIEUserSelectObject;
    fOnMeasureHint: TIEVMeasureHintEvent;
    fOnDragLenEnd: TIEVDragLenEndEvent;
    fZoomObjectsWidth: boolean;
    fOnVectorialChanged: TNotifyEvent;
    fOnBeforeVectorialChanged: TNotifyEvent;
    fLastHintValue: double;
    fMaxSelectionDistance: integer;
    flx, fly: integer;
    fHintSaveBitmap: TBitmap;
    fShowHint: boolean;
    fHintX, fHintY: integer;
    fMovX, fMovY: integer;
    fMeasureHintFont: TFont;
    fMeasureHintBrush: TBrush;
    fMeasureHintBorder1: TColor;
    fMeasureHintBorder2: TColor;
    fObjGripShape: TIEGripShape;
    fObjGripSize: integer;
    fObjGripPen: TPen;
    fObjGripBrush: TBrush;
    fMemoWriteFormattedString: PIEVObject; // nil no write, otherwise is an object pointer
    fMemoFormattedString: string;
    fUseCentralGrip: boolean;
    fCurPolylineGrip: integer;
    fCurPolylineIntraGrip: integer;
    fSelectOnMouseDown: boolean;
    fSelectOnMouseDown_WasSelected:boolean;
    fDoubleClicking:boolean; // used to fix double click on memo objects (they become unselected) look at note 5/11/2004 14.27
    fVectorialChanged:boolean;
    fObjGripImage:TPicture;
    fObjBoxInnerSelectable:boolean;  // false=select iekBOX only when brush is bsSolid  true=always select internal
    // Contains a list of PIEVObject. The order of the objects indicates the display order.
    // The first obejct [0] is painted first.
    fObjCount: integer; // TIEVObject objects count
    fObj: pintegerarray; // object indexes
    // Objects
    fVectorialChanging: boolean;
    fInserting: TIEVObjectKind; // Current inserting object kind (none=iekNONE)
    fInsertingPolylineObject: integer;
    fInsertingPolylineLastX, fInsertingPolylineLastY: integer;
    fInsertingAngleObject: integer;
    fNewObj: TIEVObject; // data of next object to insert
    fSelObj: pintegerarray; // selected objects
    fSelObjCount: integer; // selected objects count
    fGripping: TIEVGripping; // changing selected objects
    fTextEditing: integer; // >=0 object iekTEXT/iekMEMO that we are editing (-1=nothing)
    fTextEdit: TIEEdit; // Component for editing (fTextEditing)
    fMemoEdit: TIETextControl;
    fObjAntialias: boolean;
    // objects storage
    // Objects are allocated in sequence. Free items are reused for new objects.
    fObjHeap: PIEVObjectArray; // here are objects
    fObjHeapCount: integer; // allocated objects (could be not equal to existing objects)
    // Bitmaps
    fBitmaps: PIEVBitmapArray; // bitmap array (iebBITMAP)
    fBitmapsCount: integer; // fBitmaps count
    fShareBitmaps: boolean; // Se false ogni bitmap � individuale
    //
    fAllObjectsHidden: boolean; // true if we temporarily hide all objects
    fOnNewObject: TIEVNewObject;
    fBitmapResampleFilter: TResampleFilter;
    fOnObjectMoveResize: TIEVObjectMoveResizeEvent;
    fOnObjectClick: TIEVObjectClickEvent;
    fOnObjectDblClick: TIEVObjectClickEvent;
    fOnObjectOver: TIEVObjectClickEvent;
    fOnTextKeyDown: TKeyEvent;
    fObjDrawed: integer; // drawn objects at last paint
    fObjGraphicRender: boolean;
    fCenterNewObjects:boolean;
    fOnActivateTextEdit:TNotifyEvent;
    fOnDeactivateTextEdit:TNotifyEvent;
    fAllowOutOfBitmapMoving:boolean;
    fEnableRangeObjectsSelection:boolean;
    fObjEditOnNewText:boolean;
    fOnBeforeDrawObject:TIEDrawObjectEvent;
    fOnAfterDrawObject:TIEDrawObjectEvent;
    fPolylineEndingMode:TIEPolylineEndingMode;
    fAllowOutOfBitmapPolylines:boolean;
    fMouseOver:integer; // index of last object with mouse over (-1 no object)
    fObjRulerQuoteHorizon:boolean;
    fObjAngleShowSmall:boolean;
    fFastDrawing:boolean;
    // Undo
    fObjUndoList: TList;
    fObjUndoLimit: integer;
    fObjAutoUndo: boolean;
    fObjUndoMode: TIEVUndoMode;
    fSavedUndo:boolean;
    //
    procedure HintRestore;
    procedure HintShow(x, y: integer);
    procedure SetAllObjectsHidden(Value: boolean);
    procedure TextEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TextEditOnChange(Sender: TObject);
    procedure MemoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    //
    procedure CalcCoef(var cx, cy: double; mu: TIEUnits);
    procedure DrawLineInserting;
    procedure DrawBoxInserting;
    procedure DrawEllipseInserting;
    procedure DrawRulerInserting;
    procedure DrawAngleInserting;
    procedure DrawRuler(wcanvas: TIECanvas; QuoteLength:double; x1, y1, x2, y2: integer; um: TIEUnits; Color: TColor; PW: integer; RulerType: TIEVRulerType; zx,zy: double; var plim: trect; logfont: PLogFont);
    procedure DrawAngle(wcanvas: TIECanvas; AnglePoints: array of TPoint; Color: TColor; PW: integer; var plim: trect; usezoom: boolean; mul: integer; zx,zy: double; logfont: PLogFont);
    // Objects
    procedure RemoveVObjData(var obj: TIEVObject);
    procedure RemoveMemoTextData(var obj: TIEVObject);
    procedure RemoveVObjDataAll;
    function AddVObject(const aObj: TIEVObject): integer;
    procedure RemoveVObject(hobj: integer);
    function GetObj(hobj: integer): PIEVObject;
    function DrawObject(var aobj: TIEVObject; hobj:integer; BBitmap: TBitmap; CheckLimits: boolean; UseZoom: boolean; DrawOnTIEBitmap: TIEBitmap; mul: integer; drawingalpha: boolean): boolean;
    procedure DrawObjects(BackGroundBitmap:TIEBitmap; re: boolean; BBitmap: TBitmap; antialias: boolean; OnlyThis:integer);
    procedure DrawObjectText(wcanvas: TIECanvas; x1, y1, x2, y2: integer; var aobj: TIEVObject; hobj:integer; zx,zy: double; drawingalpha: boolean; var plim: trect);
    procedure DrawObjectGrips(Canvas: TCanvas; const aobj: TIEVObject);
    function FindNearObj(x, y: integer; var ds: double; mustbeselectable: boolean): integer;
    function FindPolylineIntraPoint(x, y: integer): integer;
    function CalcDistPtObj(Obj: PIEVObject; x, y: integer): double;
    procedure DrawSelGrips(Canvas: TCanvas);
    function FindSelGrip(x, y: integer; var gr: TIEVGripping): integer;
    procedure TraslateObject(o: integer; ox, oy: integer);
    procedure ChangeObjectCoor(o: integer; ox1, oy1, ox2, oy2: integer; DoAspectRatio: boolean; grip: integer);
    procedure SelInRect(aobj: integer; xx1, yy1, xx2, yy2: integer);
    procedure DrawLineShape(aobj: TIEVObject; Canvas: TIECanvas; x1, y1, x2, y2: integer; Shape: TIEShape; w, h: integer; var plim: trect);
    procedure DrawObjectLineLabel(wcanvas: TIECanvas; lx1, ly1, lx2, ly2: integer; var aobj: TIEVObject; zx,zy: double; var plim: trect);
    procedure AddSelObjectNS(hobj: integer);
    procedure ActivateTextEdit;
    procedure RemoveTextEdit;
    procedure SaveObj(Stream: TStream; hobj: integer);
    function ReadObj(Stream: TStream; ver: byte; LoadBitmapIdx: boolean): integer;
    procedure CalcZxZyPolyline(Obj: PIEVObject; var zx, zy: double);
    //
    function GetObjKind(hobj: integer): TIEVObjectKind;
    procedure SetObjKind(hobj: integer; v: TIEVObjectKind);
    function GetObjPenColor(hobj: integer): TColor;
    procedure SetObjPenColor(hobj: integer; v: TColor);
    function GetObjPenStyle(hobj: integer): TPenStyle;
    procedure SetObjPenStyle(hobj: integer; v: TPenStyle);
    function GetObjPenWidth(hobj: integer): integer;
    procedure SetObjPenWidth(hobj: integer; v: integer);
    function GetObjBrushColor(hobj: integer): TColor;
    procedure SetObjBrushColor(hobj: integer; v: TColor);
    function GetObjBrushStyle(hobj: integer): TBrushStyle;
    procedure SetObjBrushStyle(hobj: integer; v: TBrushStyle);
    function GetObjBoxHighLight(hobj: integer): boolean;
    procedure SetObjBoxHighLight(hobj: integer; v: boolean);
    function GetObjBitmap(hobj: integer): TIEBitmap;
    procedure SetObjBitmap(hobj: integer; v: TIEBitmap);
    function GetObjBitmapAlpha(hobj: integer): TIEBitmap;
    procedure SetObjBitmapAlpha(hobj: integer; v: TIEBitmap);
    function GetSelObjects(idx: integer): integer;
    procedure SetObjBeginShape(hobj: integer; v: TIEShape);
    function GetObjBeginShape(hobj: integer): TIEShape;
    procedure SetObjEndShape(hobj: integer; v: TIEShape);
    function GetObjEndShape(hobj: integer): TIEShape;
    procedure SetObjLabelPos(hobj: integer; v: TIELabelPos);
    function GetObjLabelPos(hobj: integer): TIELabelPos;
    procedure SetObjLabelBorder(hobj: integer; v: TIELabelBorder);
    function GetObjLabelBorder(hobj: integer): TIELabelBorder;
    procedure SetObjShapeWidth(hobj: integer; v: integer);
    function GetObjShapeWidth(hobj: integer): integer;
    procedure SetObjShapeHeight(hobj: integer; v: integer);
    function GetObjShapeHeight(hobj: integer): integer;
    procedure SetObjText(hobj: integer; v: string);
    function GetObjText(hobj: integer): string;
    procedure SetObjName(hobj: integer; v: string);
    function GetObjName(hobj: integer): string;
    procedure SetObjUserData(hobj:integer; v:pointer);
    function GetObjUserData(hobj:integer):pointer;
    procedure SetObjAspectRatio(hobj:integer; v:boolean);
    function GetObjAspectRatio(hobj:integer):boolean;
    procedure SetObjUserDataLength(hobj:integer; v:integer);
    function GetObjUserDataLength(hobj:integer):integer;
    procedure SetObjFontAngle(hobj: integer; v: double);
    function GetObjFontAngle(hobj: integer): double;
    function GetObjFontHeight(hobj: integer): integer;
    procedure SetObjFontHeight(hobj: integer; v: integer);
    function GetObjFontName(hobj: integer): string;
    procedure SetObjFontName(hobj: integer; v: string);
    function GetObjFontStyles(hobj: integer): TFontStyles;
    procedure SetObjFontStyles(hobj: integer; v: TFontStyles);
    procedure SetObjTextAlign(hobj: integer; v: TIEAlignment);
    function GetObjTextAlign(hobj: integer): TIEAlignment;
    procedure SetObjTextAutoSize(hobj: integer; v: boolean);
    function GetObjTextAutoSize(hobj: integer): boolean;
    procedure SetObjTextCurveCharRot(hobj: integer; v: double);
    function GetObjTextCurveCharRot(hobj: integer): double;
    procedure SetObjTextEditable(hobj: integer; v: boolean);
    function GetObjTextEditable(hobj: integer): boolean;
    procedure SetObjMemoLineSpace(hobj: integer; v: integer);
    function GetObjMemoLineSpace(hobj: integer): integer;
    procedure SetObjMemoHasBitmap(hobj: integer; v: boolean);
    function GetObjMemoHasBitmap(hobj: integer): boolean;
    procedure SetObjMemoCharsBrushStyle(hobj: integer; v: TBrushStyle);
    function GetObjMemoCharsBrushStyle(hobj: integer): TBrushStyle;
    procedure SetObjMemoMarginLeft(hobj: integer; v: double);
    function GetObjMemoMarginLeft(hobj: integer): double;
    procedure SetObjMemoMarginTop(hobj: integer; v: double);
    function GetObjMemoMarginTop(hobj: integer): double;
    procedure SetObjMemoMarginRight(hobj: integer; v: double);
    function GetObjMemoMarginRight(hobj: integer): double;
    procedure SetObjMemoMarginBottom(hobj: integer; v: double);
    function GetObjMemoMarginBottom(hobj: integer): double;
    procedure SetObjLeft(hobj: integer; v: integer);
    function GetObjLeft(hobj: integer): integer;
    procedure SetObjTop(hobj: integer; v: integer);
    function GetObjTop(hobj: integer): integer;
    procedure SetObjWidth(hobj: integer; v: integer);
    function GetObjWidth(hobj: integer): integer;
    procedure SetObjHeight(hobj: integer; v: integer);
    function GetObjHeight(hobj: integer): integer;
    procedure SetObjRulerUnit(hobj: integer; v: TIEUnits);
    function GetObjRulerUnit(hobj: integer): TIEUnits;
    procedure SetObjRulerType(hobj: integer; v: TIEVRulerType);
    function GetObjRulerType(hobj: integer): TIEVRulerType;
    procedure SetObjTransparency(hobj: integer; v: integer);
    function GetObjTransparency(hobj: integer): integer;
    procedure SetObjID(hobj: integer; v: integer);
    function GetObjID(hobj: integer): integer;
    procedure SetObjStyle(hobj: integer; v: TIEVStyle);
    function GetObjStyle(hobj: integer): TIEVStyle;
    procedure SetZoomObjectsWidth(Value: boolean);
    function GetObjectsExtents: TRect;
    function GetObjPolylinePoints(hobj, index: integer): TPoint;
    function GetObjPolylinePointsCount(hobj: integer): integer;
    function GetObjPolylineClosed(hobj: integer): boolean;
    procedure SetObjPolylineClosed(hobj: integer; Value: boolean);
    function GetObjSoftShadow(hobj: integer): TIEVSoftShadow;
    procedure DrawGrip(destcanvas: TCanvas; destiecanvas:TIECanvas; x, y: integer; ty: integer);
    function InGrip(xg, yg, xp, yp: integer): boolean;
    function GetObjLabelBrushColor(hobj: integer): TColor;
    procedure SetObjLabelBrushColor(hobj: integer; v: TColor);
    function GetObjLabelBrushStyle(hobj: integer): TBrushStyle;
    procedure SetObjLabelBrushStyle(hobj: integer; v: TBrushStyle);
    function GetObjFontLocked(hobj: integer): boolean;
    procedure SetObjFontLocked(hobj: integer; value: boolean);
    function GetObjMemoBorderColor(hobj: integer): TColor;
    procedure SetObjMemoBorderColor(hobj: integer; value: TColor);
    function GetObjMemoBorderStyle(hobj: integer): TPenStyle;
    procedure SetObjMemoBorderStyle(hobj: integer; value: TPenStyle);
    procedure SetObjMemoFixedHeight(hobj: integer; value: integer);
    function GetObjMemoFixedHeight(hobj: integer): integer;
    function GetObjBitmapBorder(hobj: integer): boolean;
    procedure SetObjBitmapBorder(hobj: integer; value: boolean);
    function GetObjArcStartingAngle(hobj:integer):double;
    procedure SetObjArcStartingAngle(hobj:integer; v:double);
    function GetObjArcEndingAngle(hobj:integer):double;
    procedure SetObjArcEndingAngle(hobj:integer; v:double);
    function GetObjExtendedObject(hobj:integer):TIEExtendedObject;
    procedure SetExtendedObjectToPut(value:string);
    procedure SetObjRulerQuoteHorizon(value:boolean);
    procedure SetObjAngleShowSmall(value:boolean);
    //
    function GetBitmap(idx: integer): TIEBitmap;
    function GetBitmapAlpha(idx: integer): TIEBitmap;
    procedure FreeBitmap(idx: integer);
    function AllocBitmap: integer;
    procedure PackBMP;
    function FindBitmap(SBitmap: TIEBitmap): integer;
    procedure SetObjBitmapNU(hobj: integer; v: TIEBitmap);
    procedure SetObjBitmapIdxNU(hobj: integer; idx: integer);
    procedure SetBitmapResampleFilter(v: TResampleFilter);
    //
    function GetObjCanUndo: boolean;
    function GetObjUndoCount: integer;
    procedure SetObjAntialias(value: boolean);
    procedure MouseSelect(Shift: TShiftState; x, y: integer; MouseDown:boolean);
    procedure SetObjTextEditMode(hobj:integer);
    function GetObjTextEditMode:integer;
    procedure SetOnTextEditCursorMoved(value:TNotifyEvent);
    function GetOnTextEditCursorMoved:TNotifyEvent;
    function GetSelectedObjectsRect:TRect;
    procedure DrawObjectsToBitmapEx(target: TIEBitmap; Antialias: boolean; OnlyThis:integer);
    procedure SetObjGripImage(Value:TPicture);
    procedure DoObjSaveUndo;
  protected
    fVStable: integer;
    fObjLockPaint: integer;  // >0 locked
    fMouseStableTimer:TTimer;

    procedure MouseStableTimerEvent(Sender:TObject);

    procedure VPaintTo(BBitmap: TBitmap);

    procedure SetMouseInteract(v: TIEMouseInteract); override;
    procedure SetMouseInteractVt(v: TIEMouseInteractVt);
    function GetMouseInteract: TIEMouseInteractVt;
    procedure SetMUnit(v: TIEUnits);
    procedure SetScale(v: double);
    procedure SetFloatDigits(v: integer);
    procedure SetFloatPrecision(v: integer);
    procedure UpdateHint(x, y: integer);
    procedure ViewChange(c: integer); override;
    procedure SubMouseMoveScroll(scx, scy: integer); override;
    function GetObjPos(hobj: integer): integer;
    procedure ReInsertVObject(hobj: integer; pos: integer);
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMKillFocus(var Msg: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMSetFocus(var Msg: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKeyDown(var Msg:TWMKeyDown); message WM_KEYDOWN;
    procedure WMGetDlgCode(var message: TMessage); message WM_GETDLGCODE;
    procedure DoVectorialChanged; virtual;
    procedure UpdateTextEdit; virtual;
    procedure DrawBitmapObject(BBitmap: TBitmap; aobj: TIEVObject; x1, y1, x2, y2: integer; DrawOnTIEBitmap: TIEBitmap; realPenWidth:integer);
    procedure DoObjectMoveResize(hobj: integer; Grip: TIEVGripping; var OffsetX, OffsetY: integer); virtual;
    procedure DoObjectClick(hobj: integer); virtual;
    procedure DoObjectDblClick(hobj: integer); virtual;
    procedure DoObjectOver(hobj: integer); virtual;
    procedure AddPolyLinePoint(hobj: integer; X, Y: integer);
    function CountAnglePoints(AnglePoints: array of TPoint): integer;
    function AdjustCoords(const aobj: TIEVObject; var x1, y1, x2, y2, x3, y3: integer; zx,zy: double): integer;
    procedure SetObjGraphicRender(Value: boolean); virtual;
    function VXBmp2Scr(x: integer; UseZoom: boolean; mul: integer): integer;
    function VYBmp2Scr(y: integer; UseZoom: boolean; mul: integer): integer;
    procedure DoBeforeVectorialChange; virtual;
    procedure DrawPolylinePoints(Canvas: TCanvas);
    function FindPolylinePoint(x, y: integer): integer;
    procedure RecalcPolylineBox(Obj: PIEVObject);
    procedure RotateObjectEx(obj:PIEVObject; angle:double; vsin,vcos:double; basex,basey:integer);
    procedure CalcRotateValues(obj:PIEVObject; angle:double; center:TIERotateCenter; var basex,basey:integer; var vsin,vcos:double);
    procedure UnSelAllObjectsNU;
    procedure AddSelObjectEx(hobj: integer);
    procedure DoNewObject(hobj: integer); virtual;
    procedure DoUserSelectObject(hobj:integer); virtual;
    procedure DoUserDeselectObject(hobj:integer); virtual;
  public
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    constructor Create(Owner: TComponent); override;
    destructor Destroy; override;
    procedure Paint; override;
    procedure PaintToEx(ABitmap: TIEBitmap; ABitmapScanline: ppointerarray; UpdRect: PRect; drawBackground:boolean; drawGadgets:boolean); override;
    procedure Assign(Source: TPersistent); override;
    procedure Update; override;
    property MouseInteractVt: TIEMouseInteractVt read GetMouseInteract write SetMouseInteractVt default [];
    property ExtendedObjectToPut:string read fExtendedObjectToPut write SetExtendedObjectToPut;
    procedure SetDPIX(dpiX: integer); override;
    procedure SetDPIY(dpiY: integer); override;
    property ObjGraphicRender: boolean read fObjGraphicRender write SetObjGraphicRender;
    property ObjGripping:TIEVGripping read fGripping;

{!!
<FS>TImageEnVect.UseCentralGrip

<FM>Declaration<FC>
property UseCentralGrip:boolean;

<FM>Description<FN>
If UseCentralGrip is true (default is False), allows the user to move an object only by using the central grip. If False, it allows the user to move an object by just clicking on it (the central grip disappears).
!!}
    property UseCentralGrip: boolean read fUseCentralGrip write fUseCentralGrip;

{!!
<FS>TImageEnVect.ObjGripSize

<FM>Declaration<FC>
property ObjGripSize:integer;

<FM>Description<FN>

Specifies the grip's size as shown when an object is selected.
!!}
    property ObjGripSize: integer read fObjGripSize write fObjGripSize;

{!!
<FS>TImageEnVect.ObjGripShape

<FM>Declaration<FC>
property ObjGripShape:<A TIEGripShape>;

<FM>Description<FN>

Specifies the grip's shape as shown when an object is selected.
!!}
    property ObjGripShape:TIEGripShape read fObjGripShape write fObjGripShape;

{!!
<FS>TImageEnVect.ObjGripPen

<FM>Declaration<FC>
property ObjGripPen:TPen;

<FM>Description<FN>

Specifies the grip's pen as shown when an object is selected.
!!}
    property ObjGripPen: TPen read fObjGripPen;

{!!
<FS>TImageEnVect.ObjGripBrush

<FM>Declaration<FC>
property ObjGripBrush:TBrush;

<FM>Description<FN>

Specifies the grip's brush as shown when an object is selected.
!!}
    property ObjGripBrush: TBrush read fObjGripBrush;

{!!
<FS>TImageEnVect.CenterNewObjects

<FM>Declaration<FC>
property CenterNewObjects:boolean;

<FM>Description<FN>

When user inserts new objects with a single click, this property controls if the new object is centered at mouse position (True) or if its top-left side is on the mouse position (False - default).
!!}
    property CenterNewObjects:boolean read fCenterNewObjects write fCenterNewObjects;

    // Measure
    function GetSelectionArea: double;
    function GetSelectionLen: double;
    function GetSelectionCentroid: TPoint;
    function GetPolylineLen(hobj: integer): double;
    function GetPolylineArea(hobj: integer): double;
    function GetPolylineCentroid(hobj: integer): TPoint;

{!!
<FS>TImageEnVect.MeasureTrack

<FM>Declaration<FC>
property MeasureTrack: boolean;

<FM>Description<FN>
If MeasureTrack is true, on measurement tasks will be calculated as the mouse moves.
!!}
    property MeasureTrack: boolean read fMeasureTrack write fMeasureTrack default true;

    procedure SetScaleFromPixels(px: integer; mm: double);
    property ScaleFactor: double read fScale write SetScale;
    procedure SetScaleFromSelectionLen(mm: double);

{!!
<FS>TImageEnVect.MeasureCoefX

<FM>Declaration<FC>
property MeasureCoefX:double;

<FM>Description<FN>
MeasureCoefX specifies a coefficient to convert a bitmap length to a real world length.

<FM>Example<FC>

// convert 10 horizontal pixels to the specified measure unit (Munit)
Real_length := ImageEnVect.MeasureCoefX * 10;

!!}
    property MeasureCoefX: double read fCoefX;

{!!
<FS>TImageEnVect.MeasureCoefY

<FM>Declaration<FC>
property MeasureCoefX:double;

<FM>Description<FN>
MeasureCoefX specifies a coefficient to convert a bitmap length to a real world length.

<FM>Example<FC>

// convert 10 vertical pixels to the specified measure unit (Munit)
Real_length := ImageEnVect.MeasureCoefY * 10;

!!}
    property MeasureCoefY: double read fCoefY;

    function GetObjDiagLen(hobj: integer): double;
    //
    procedure AddSelPoint(x, y: integer); override;
    procedure Select(x1, y1, x2, y2: integer; Op: TIESelOp = iespReplace); override;
    procedure CancelInteracts;
    // objects

{!!
<FS>TImageEnVect.ObjectsCount

<FM>Declaration<FC>
property ObjectsCount:integer;

<FM>Description<FN>
Read ObjectsCount to determine the number of objects in the TImageEnVect component.

Read-Only

!!}
    property ObjectsCount: integer read fObjCount;

    property ObjectsExtents: TRect read GetObjectsExtents;
    property ObjKind[hobj: integer]: TIEVObjectKind read GetObjKind write SetObjKind;
    property ObjPenColor[hobj: integer]: TColor read GetObjPenColor write SetObjPenColor;
    property ObjPenStyle[hobj: integer]: TPenStyle read GetObjPenStyle write SetObjPenStyle;
    property ObjPenWidth[hobj: integer]: integer read GetObjPenWidth write SetObjPenWidth;
    property ObjBrushColor[hobj: integer]: TColor read GetObjBrushColor write SetObjBrushColor;
    property ObjBrushStyle[hobj: integer]: TBrushStyle read GetObjBrushStyle write SetObjBrushStyle;
    property ObjBoxHighlight[hobj: integer]: boolean read GetObjBoxHighlight write SetObjBoxHighlight;
    property ObjLabelBrushColor[hobj: integer]: TColor read GetObjLabelBrushColor write SetObjLabelBrushColor;
    property ObjLabelBrushStyle[hobj: integer]: TBrushStyle read GetObjLabelBrushStyle write SetObjLabelBrushStyle;
    property ObjBitmap[hobj: integer]: TIEBitmap read GetObjBitmap write SetObjBitmap;
    property ObjBitmapAlpha[hobj: integer]: TIEBitmap read GetObjBitmapAlpha write SetObjBitmapAlpha;
    property ObjBeginShape[hobj: integer]: TIEShape read GetObjBeginShape write SetObjBeginShape;
    property ObjEndShape[hobj: integer]: TIEShape read GetObjEndShape write SetObjEndShape;
    property ObjShapeWidth[hobj: integer]: integer read GetObjShapeWidth write SetObjShapeWidth;
    property ObjShapeHeight[hobj: integer]: integer read GetObjShapeHeight write SetObjShapeHeight;
    property ObjLabelPosition[hobj: integer]: TIELabelPos read GetObjLabelPos write SetObjLabelPos;
    property ObjLabelBorder[hobj: integer]: TIELabelBorder read GetObjLabelBorder write SetObjLabelBorder;
    property ObjText[hobj: integer]: string read GetObjText write SetObjText;
    property ObjTextAutoSize[hobj: integer]: boolean read GetObjTextAutoSize write SetObjTextAutoSize;
    property ObjTextCurveCharRot[hobj: integer]: double read GetObjTextCurveCharRot write SetObjTextCurveCharRot;
    property ObjTextEditable[hobj:integer]:boolean read GetObjTextEditable write SetObjTextEditable;
    property ObjMemoLineSpace[hobj: integer]: integer read GetObjMemoLineSpace write SetObjMemoLineSpace;
    property ObjFontAngle[hobj: integer]: double read GetObjFontAngle write SetObjFontAngle;
    property ObjFontHeight[hobj: integer]: integer read GetObjFontHeight write SetObjFontHeight;
    property ObjFontName[hobj: integer]: string read GetObjFontName write SetObjFontName;
    property ObjFontStyles[hobj: integer]: TFontStyles read GetObjFontStyles write SetObjFontStyles;
    property ObjTextAlign[hobj: integer]: TIEAlignment read GetObjTextAlign write SetObjTextAlign;
    property ObjLeft[hobj: integer]: integer read GetObjLeft write SetObjLeft;
    property ObjTop[hobj: integer]: integer read GetObjTop write SetObjTop;
    property ObjWidth[hobj: integer]: integer read GetObjWidth write SetObjWidth;
    property ObjHeight[hobj: integer]: integer read GetObjHeight write SetObjHeight;
    property ObjName[hobj: integer]: string read GetObjName write SetObjName;
    property ObjID[hobj: integer]: integer read GetObjID write SetObjID;
    property ObjStyle[hobj: integer]: TIEVStyle read GetObjStyle write SetObjStyle;
    property ObjRulerUnit[hobj: integer]: TIEUnits read GetObjRulerUnit write SetObjRulerUnit;
    property ObjRulerType[hobj: integer]: TIEVRulerType read GetObjRulerType write SetObjRulerType;
    property ObjTransparency[hobj: integer]: integer read GetObjTransparency write SetObjTransparency;
    property ObjPolylinePoints[hobj: integer; index: integer]: TPoint read GetObjPolylinePoints;
    property ObjPolylinePointsCount[hobj: integer]: integer read GetObjPolylinePointsCount;
    property ObjPolylineClosed[hobj: integer]: boolean read GetObjPolylineClosed write SetObjPolylineClosed;
    property ObjSoftShadow[hobj: integer]: TIEVSoftShadow read GetObjSoftShadow;
    property ObjFontLocked[hobj: integer]: boolean read GetObjFontLocked write SetObjFontLocked;
    property ObjMemoBorderColor[hobj: integer]: TColor read GetObjMemoBorderColor write SetObjMemoBorderColor;
    property ObjMemoBorderStyle[hobj: integer]: TPenStyle read GetObjMemoBorderStyle write SetObjMemoBorderStyle;
    property ObjMemoFixedHeight[hobj: integer]: integer read GetObjMemoFixedHeight write SetObjMemoFixedHeight;
    property ObjMemoHasBitmap[hobj:integer]:boolean read GetObjMemoHasBitmap write SetObjMemoHasBitmap;
    property ObjMemoCharsBrushStyle[hobj:integer]:TBrushStyle read GetObjMemoCharsBrushStyle write SetObjMemoCharsBrushStyle;
    property ObjMemoMarginLeft[hobj:integer]:double read GetObjMemoMarginLeft write SetObjMemoMarginLeft;
    property ObjMemoMarginTop[hobj:integer]:double read GetObjMemoMarginTop write SetObjMemoMarginTop;
    property ObjMemoMarginRight[hobj:integer]:double read GetObjMemoMarginRight write SetObjMemoMarginRight;
    property ObjMemoMarginBottom[hobj:integer]:double read GetObjMemoMarginBottom write SetObjMemoMarginBottom;
    property ObjTextEditMode:integer read GetObjTextEditMode write SetObjTextEditMode;
    property ObjBitmapBorder[hobj:integer]:boolean read GetObjBitmapBorder write SetObjBitmapBorder;
    property ObjArcStartingAngle[hobj:integer]:double read GetObjArcStartingAngle write SetObjArcStartingAngle;
    property ObjArcEndingAngle[hobj:integer]:double read GetObjArcEndingAngle write SetObjArcEndingAngle;
    property ObjUserData[hobj:integer]:pointer read GetObjUserData write SetObjUserData;
    property ObjUserDataLength[hobj:integer]:integer read GetObjUserDataLength write SetObjUserDataLength;
    property ObjAspectRatio[hobj:integer]:boolean read GetObjAspectRatio write SetObjAspectRatio;
    property ObjExtendedObject[hobj:integer]:TIEExtendedObject read GetObjExtendedObject;
    procedure ObjSetTBitmap(hobj: integer; bmp: TBitmap);
    function GetAngleValue(hobj: integer): double;
    procedure SetObjPolylinePoints(hobj: integer; Points: array of TPoint);
    procedure GetObjRect(hobj: integer; var Rect: TRect);
    procedure SetObjRect(hobj: integer; const Rect: TRect);
    property AllObjectsHidden: boolean read fAllObjectsHidden write SetAllObjectsHidden;
    procedure SetObjFont(hobj: integer; v: TFont);
    procedure SetObjBitmapICO(hobj: integer; ico: integer; iwidth, iheight: integer);
    function SetObjBitmapFromFile(hobj: integer; const FileName: string): boolean;
    function SetObjBitmapFromStream(hobj:integer; Stream:TStream; FileFormat: TIOFileType=0):boolean;
    procedure SetObjFrontOf(hobj: integer; refobj: integer);
    procedure SetObjBackTo(hobj: integer; refobj: integer);
    function ObjIsVisible(hobj:integer):boolean;

    // text and memo objects

{!!
<FS>TImageEnVect.ObjEditOnNewText

<FM>Declaration<FC>
property ObjEditOnNewText:boolean;

<FM>Description<FN>
When user inserts a new text object ImageEn begins editing on it. If you don't want this, set ObjEditOnNewText=False: this will allow to insert text objects without automatic editing.
!!}
    property ObjEditOnNewText:boolean read fObjEditOnNewText write fObjEditOnNewText;

    // memo objects
    function MemoEditingGetCharInfo:TIEMemoEditCharInfo;
    procedure MemoEditingSetCharInfo(info:TIEMemoEditCharInfo);
    // selections
    function IsSelObject(hobj: integer): boolean;
    procedure UnSelObject(hobj: integer);
    procedure AddSelObject(hobj: integer);
    procedure UnSelAllObjects;
    procedure SelAllObjects;

{!!
<FS>TImageEnVect.MaxSelectionDistance

<FM>Declaration<FC>
property MaxSelectionDistance:integer;

<FM>Description<FN>
MaxSelectionDistance indicates the maximum distance (in bitmap pixels) from which an object may be selected.  If the user left clicks at a location beyond this distance, no object will be selected.

A value of -1 (the default) disables the maximum selection distance calculation (a click always selects some object).

<FM>Example<FC>

ImageEnVect1.MaxSelectionDistance:=-1; // disables maximum distance

ImageEnVect1.MaxSelectionDistance:=10; // set maximum distance to 10 bitmap pixels

!!}
    property MaxSelectionDistance: integer read fMaxSelectionDistance write fMaxSelectionDistance;

    property SelObjects[idx: integer]: integer read GetSelObjects;

{!!
<FS>TImageEnVect.SelObjectsCount

<FM>Declaration<FC>
property SelObjectsCount: integer;

<FM>Description<FN>
SelObjectsCount returns how many objects are selected.

Read-only

<FM>Example<FC>

// Sets pen color to clRed for all selected objects.
for i:=0 to ImageEnVect1.SelObjectsCount-1 do
  ImageEnVect1.ObjPenColor[ ImageEnVect1.SelObjects[i] ] := clGreen;

!!}
    property SelObjectsCount: integer read fSelObjCount;

{!!
<FS>TImageEnVect.EnableRangeObjectsSelection

<FM>Declaration<FC>
property EnableRangeObjectsSelection:boolean;

<FM>Description<FN>

If True (default) you can select multiple objects dragging a rectangle with the mouse.
!!}
    property EnableRangeObjectsSelection:boolean read fEnableRangeObjectsSelection write fEnableRangeObjectsSelection;

{!!
<FS>TImageEnVect.ObjBoxInnerSelectable

<FM>Declaration<FC>
property ObjBoxInnerSelectable:Boolean;

<FM>Description<FN>

When false (default) iekBOX objects are selectable only clicking on the border, unless BrushStyle is bsSolid. When true iekBOX objects are always selectable inside the bounding box (even with BrushStyle=bsClear).
!!}
    property ObjBoxInnerSelectable:boolean read fObjBoxInnerSelectable write fObjBoxInnerSelectable;

    //
    procedure RemoveAllObjects;
    procedure RemoveObject(hobj: integer);
    function AddNewObject: integer; overload;
    function AddNewObject(Kind:TIEVObjectKind; Rect:TRect; Color:TColor):integer; overload;
    function GetObjFromName(const oName: string): integer;
    function GetObjFromID(oID: integer): integer;
    function GetObjFromIndex(idx: integer): integer;
    function CopyObjectTo(hobj: integer; Dest: TImageEnVect):integer;
    procedure CopyAllObjectsTo(Dest: TImageEnVect);
    procedure CopySelectedObjectsTo(Dest: TImageEnVect);
    function FindObjectAt(x, y: integer; var Distance: double): integer;
    function CreatePolygonFromEdge(x, y: integer; maxfilter: boolean; tolerance: integer): integer;
    function CreatePolygonsFromSelection:integer;
    procedure SetObjTextCurve(hobj: integer; x, y: double);
    procedure SetObjTextCurveShape(hobj: integer; shape: TIECurve; phase: integer; dforward: boolean);
    procedure SetObjTextCurveFromPolyline(hobj: integer; source: integer);
    function CreateImageFromSelectedArea(feather: integer = 0; smooth: boolean = false): integer;
    procedure CopyObjectsToBack(Antialias: boolean = true);
    procedure CopyObjectToBack(hobj:integer; Antialias:boolean=true);
    procedure DrawObjectsToBitmap(target: TIEBitmap; Antialias: boolean=true);
	  procedure DrawOneObjectToBitmap(hobj: integer; target: TIEBitmap; Antialias: boolean=true);
    function RemovePolygonJaggedEdges(hobj: integer): boolean;
    procedure SimplifyPolygon(hobj: integer; MaxPoints: integer);
    function GetMemoFormattedString(hobj: integer): string;
    //procedure CalcPolygonMoments(hobj:integer; var Centroid:TPoint; var MajorAxis,MinorAxis:TRect; var m00,m10,m01,m11,m20,m02:double; var mu00,mu11,mu20,mu02:double; var rad_gyr:double; var phi_1,phi_2:double; var tg_th1,tg_th2:double; var BoundingQuad:array of TPoint);
    property ObjDrawed: integer read fObjDrawed;
    function IsEditMode: boolean;
    procedure RotateAllObjects(angle:double; center:TIERotateCenter);
    procedure RotateObject(hobj:integer; angle:double; center:TIERotateCenter);

{!!
<FS>TImageEnVect.ObjRulerQuoteHorizon

<FM>Declaration<FC>
property ObjRulerQuoteHorizon:boolean;

<FM>Description<FN>
If True (default) ruler-quote objects maintain text on horizon.
!!}
    property ObjRulerQuoteHorizon:boolean read fObjRulerQuoteHorizon write SetObjRulerQuoteHorizon;

{!!
<FS>TImageEnVect.ObjAngleShowSmall

<FM>Declaration<FC>
property ObjAngleShowSmall:boolean;

<FM>Description<FN>
If True angle objects shows only the small angle.
!!}
    property ObjAngleShowSmall:boolean read fObjAngleShowSmall write SetObjAngleShowSmall;

{!!
<FS>TImageEnVect.AllowOutOfBitmapMoving

<FM>Declaration<FC>
property AllowOutOfBitmapMoving:boolean;

<FM>Description<FN>
If True (default) objects can go out of background bitmap.
!!}
    property AllowOutOfBitmapMoving:boolean read fAllowOutOfBitmapMoving write fAllowOutOfBitmapMoving;

{!!
<FS>TImageEnVect.AllowOutOfBitmapPolylines

<FM>Declaration<FC>
property AllowOutOfBitmapPolylines:boolean;

<FM>Description<FN>
When true polylines can be painted out of background bitmap bounding box.
!!}
    property AllowOutOfBitmapPolylines:boolean read fAllowOutOfBitmapPolylines write fAllowOutOfBitmapPolylines;
    
    // measure hint

{!!
<FS>TImageEnVect.MeasureHintFont

<FM>Declaration<FC>
property MeasureHintFont:TFont;

<FM>Description<FN>
MeasureHintFont specifies the font used for measures hint.

!!}
    property MeasureHintFont: TFont read fMeasureHintFont;

{!!
<FS>TImageEnVect.MeasureHintBrush

<FM>Declaration<FC>
property MeasureHintBrush:TBrush;

<FM>Description<FN>
MeasureHintBrush specifies the brush used for measures hint. It is used to draw the hint background.

!!}
    property MeasureHintBrush: TBrush read fMeasureHintBrush;

{!!
<FS>TImageEnVect.MeasureHintBorder1

<FM>Declaration<FC>
property MeasureHintBorder1:TColor;

<FM>Description<FN>
MeasureHintBorder1 specifies the border color used for measures hint. It is used to draw the top-left sides.

!!}
    property MeasureHintBorder1: TColor read fMeasureHintBorder1 write fMeasureHintBorder1;

{!!
<FS>TImageEnVect.MeasureHintBorder2

<FM>Declaration<FC>
property MeasureHintBorder2:TColor;

<FM>Description<FN>
MeasureHintBorder2 specifies the border color used for measures hint. It is used to draw the bottom-right sides.

!!}
    property MeasureHintBorder2: TColor read fMeasureHintBorder2 write fMeasureHintBorder2;
    // I/O
    procedure SaveToFileIEV(const nf: string);
    procedure SaveToStreamIEV(Stream: TStream);
    function LoadFromFileIEV(const nf: string): boolean;
    function LoadFromStreamIEV(Stream: TStream): boolean;
    function ImportDXF(const nf: string): boolean;
    procedure SaveObjectsToTIFF(const fileName:string; pageIndex:integer=0);
    procedure LoadObjectsFromTIFF(const fileName:string; pageIndex:integer=0);
    procedure SaveToFileAll(const fileName:string; imageCompression:TIOFileType=-1);
    procedure SaveToStreamAll(Stream:TStream; imageCompression:TIOFileType=-1);
    function LoadFromFileAll(const fileName:string):boolean;
    function LoadFromStreamAll(Stream:TStream):boolean;
    // Cut/Copy/Paste
    procedure ObjCopyToClipboard;
    procedure ObjCutToClipboard;
    procedure ObjPasteFromClipboard(OffsetX, OffsetY: integer);
    // Undo
    procedure ObjSaveUndo;
    procedure ObjClearUndo;
    procedure ObjClearAllUndo;
    property ObjCanUndo: boolean read GetObjCanUndo;
    property ObjUndoCount: integer read GetObjUndoCount;
    procedure ObjUndoAt(Position: integer);
    procedure ObjUndo;
    //
    procedure ObjLockPaint;
    procedure ObjUnLockPaint;

{!!
<FS>TImageEnVect.PolylineEndingMode

<FM>Declaration<FC>
property PolylineEndingMode:<A TIEPolylineEndingMode>;

<FM>Description<FN>
Specifies how terminate a polyline. Default is ieemDoubleClick.
Using ieemManual you have to interrupt manually the inserting call CancelInteracts or setting a new value in MouseInteractVt.
!!}
    property PolylineEndingMode:TIEPolylineEndingMode read fPolylineEndingMode write fPolylineEndingMode;

  published
    property MUnit: TIEUnits read fMUnit write SetMUnit default ieuPIXELS;
    property FloatDigits: integer read fFloatDigits write SetFloatDigits default 2;
    property FloatPrecision: integer read fFloatPrecision write SetFloatPrecision default 15;

{!!
<FS>TImageEnVect.ShareBitmaps

<FM>Declaration<FC>
property ShareBitmaps: boolean;

<FM>Description<FN>
If ShareBitmaps is true, ShareBitmaps activates 'equal images' sharing.
In this mode, each image inserted with <A TImageEnVect.ObjBitmap> is compared (pixel per pixel) with already inserted images.
If the new image is already present, it will be marked as a reference to the old image.

For these reasons each change made to a shared image will be made to all objects that use it.

!!}
    property ShareBitmaps: boolean read fShareBitmaps write fShareBitmaps default true;

{!!
<FS>TImageEnVect.OnSelectObject

<FM>Declaration<FC>
property OnSelectObject: TNotifyEvent;

<FM>Description<FN>
The OnSelectObject event is called whenever an object is selected or deselected.

!!}
    property OnSelectObject: TNotifyEvent read fOnSelectObject write fOnSelectObject;

{!!
<FS>TImageEnVect.OnUserSelectObject

<FM>Declaration<FC>
property OnUserSelectObject: <A TIEUserSelectObject>;

<FM>Description<FN>
This event occurs whenever user select an object (not the application!) by means of a mouse action.
!!}
    property OnUserSelectObject: TIEUserSelectObject read fOnUserSelectObject write fOnUserSelectObject;

{!!
<FS>TImageEnVect.OnUserDeselectObject

<FM>Declaration<FC>
property OnUserDeselectObject: <A TIEUserSelectObject>;

<FM>Description<FN>
This event occurs whenever user de-select an object (not the application!) by means of a mouse action.
!!}
    property OnUserDeselectObject: TIEUserSelectObject read fOnUserDeselectObject write fOnUserDeselectObject;

{!!
<FS>TImageEnVect.OnMeasureHint

<FM>Declaration<FC>
property OnMeasureHint:<A TIEVMeasureHintEvent>;

<FM>Description<FN>
The OnMeasureHint event is called whenever the measurement hint is shown.

<FM>Example<FC>

// display measure value to the Label1 (and repaint it to perform real-time measurement).
procedure TForm1.ImageEnVect1MeasureHint(Sender: TObject; var Text: String;
  Value: Double);
begin
  Label1.Caption:=Text;
  Label1.Repaint;
end;
!!}
    property OnMeasureHint: TIEVMeasureHintEvent read fOnMeasureHint write fOnMeasureHint;

    property ZoomObjectsWidth: boolean read fZoomObjectsWidth write SetZoomObjectsWidth default true;

{!!
<FS>TImageEnVect.OnVectorialChanged

<FM>Declaration<FC>
property OnVectorialChanged:TNotifyEvent;

<FM>Description<FN>
OnVectorialChanged is called whenever an object is added, removed or modified by a user's action.
!!}
    property OnVectorialChanged: TNotifyEvent read fOnVectorialChanged write fOnVectorialChanged;

{!!
<FS>TImageEnVect.OnBeforeVectorialChanged

<FM>Declaration<FC>
property OnBeforeVectorialChanged:TNotifyEvent;

<FM>Description<FN>
OnBeforeVectorialChanged event occurs just before an object is added, removed or modified by a user action.
!!}
    property OnBeforeVectorialChanged: TNotifyEvent read fOnBeforeVectorialChanged write fOnBeforeVectorialChanged;

{!!
<FS>TImageEnVect.OnDragLenEnd

<FM>Declaration<FC>
property OnDragLenEnd:<A TIEVDragLenEndEvent>;

<FM>Description<FN>
OnDragLenEnd event is called whenever the user releases the mouse button during dynamic distance measurement task (miDragLen).
!!}
    property OnDragLenEnd: TIEVDragLenEndEvent read fOnDragLenEnd write fOnDragLenEnd;

{!!
<FS>TImageEnVect.OnNewObject

<FM>Declaration<FC>
property OnNewObject:<A TIEVNewObject>;

<FM>Description<FN>
OnNewObject is called whenever a new object is created by some user interaction.
!!}
    property OnNewObject: TIEVNewObject read fOnNewObject write fOnNewObject;

    property BitmapResampleFilter: TResampleFilter read fBitmapResampleFilter write SetBitmapResampleFilter default rfNone;

{!!
<FS>TImageEnVect.OnObjectMoveResize

<FM>Declaration<FC>
property OnObjectMoveResize:<A TIEVObjectMoveResizeEvent>;

<FM>Description<FN>
OnObjectMoveResize is called whenever an object is moved or resized.
!!}
    property OnObjectMoveResize: TIEVObjectMoveResizeEvent read fOnObjectMoveResize write fOnObjectMoveResize;

{!!
<FS>TImageEnVect.OnObjectClick

<FM>Declaration<FC>
property OnObjectClick:<A TIEVObjectClickEvent>;

<FM>Description<FN>
OnObjectClick is called whenever an object is clicked.
!!}
    property OnObjectClick: TIEVObjectClickEvent read fOnObjectClick write fOnObjectClick;

{!!
<FS>TImageEnVect.OnObjectDblClick

<FM>Declaration<FC>
property OnObjectDblClick:<A TIEVObjectClickEvent>;

<FM>Description<FN>
OnObjectDblClick is called whenever an object is double clicked.
!!}
    property OnObjectDblClick: TIEVObjectClickEvent read fOnObjectDblClick write fOnObjectDblClick;

{!!
<FS>TImageEnVect.OnObjectOver

<FM>Declaration<FC>
property OnObjectOver:<A TIEVObjectClickEvent>;

<FM>Description<FN>
OnObjectOver is called whenever the mouse is over an object.
!!}
    property OnObjectOver: TIEVObjectClickEvent read fOnObjectOver write fOnObjectOver;

{!!
<FS>TImageEnVect.ObjUndoLimit

<FM>Declaration<FC>
property ObjUndoLimit:integer;

<FM>Description<FN>
ObjUndoLimit specifies how many images (groups of objects) can be saved using <A TImageEnVect.ObjSaveUndo> method. Default value is 1.
When you call ObjSaveUndo, ImageEn pushes the current image (group of objects) onto an image stack.
Calling ObjUndo causes ImageEn to restore the last saved image. Calling <A TImageEnVect.ObjClearUndo> causes ImageEn to remove the last saved image.
!!}
    property ObjUndoLimit: integer read fObjUndoLimit write fObjUndoLimit default 1;

{!!
<FS>TImageEnVect.ObjAutoUndo

<FM>Declaration<FC>
property ObjAutoUndo:boolean;

<FM>Description<FN>
If ObjAutoUndo is true, <A TImageEnVect.ObjSaveUndo> is called automatically before the user changes objects.
!!}
    property ObjAutoUndo: boolean read fObjAutoUndo write fObjAutoUndo default false;

    property ObjAntialias: boolean read fObjAntialias write SetObjAntialias default true;

{!!
<FS>TImageEnVect.SelectOnMouseDown

<FM>Declaration<FC>
property SelectOnMouseDown:boolean;

<FM>Description<FN>
If SelectOnMouseDown is True (default from version 2.1.5), then a mouse down action selects an object, otherwise it waits mouse up to select.
!!}
    property SelectOnMouseDown: boolean read fSelectOnMouseDown write fSelectOnMouseDown default true;

{!!
<FS>TImageEnVect.OnTextKeyDown

<FM>Declaration<FC>
property OnTextKeyDown:TKeyEvent;

<FM>Description<FN>
This event occurs whenever a key is pressed inside a TEXT or MEMO object.
!!}
    property OnTextKeyDown:TKeyEvent read fOnTextKeyDown write fOnTextKeyDown;

{!!
<FS>TImageEnVect.OnActivateTextEdit

<FM>Declaration<FC>
property OnActivateTextEdit:TNotifyEvent;

<FM>Description<FN>
This event occurs whenever a text edit (memo or text) is activated.

<FM>Demo<FN>
Imageprocessing1\advancedtext
!!}
    property OnActivateTextEdit:TNotifyEvent read fOnActivateTextEdit write fOnActivateTextEdit;

{!!
<FS>TImageEnVect.OnDeactivateTextEdit

<FM>Declaration<FC>
property OnDeactivateTextEdit:TNotifyEvent;

<FM>Description<FN>
This event occurs whenever a text edit (memo or text) is disactivated.

<FM>Demo<FN>
Imageprocessing1\advancedtext
!!}
    property OnDeactivateTextEdit:TNotifyEvent read fOnDeactivateTextEdit write fOnDeactivateTextEdit;

    property OnTextEditCursorMoved:TNotifyEvent read GetOnTextEditCursorMoved write SetOnTextEditCursorMoved;

{!!
<FS>TImageEnVect.OnBeforeDrawObject

<FM>Declaration<FC>
property OnBeforeDrawObject:<A TIEDrawObjectEvent>;

<FM>Description<FN>

This event occurs just before an object is painted.
This event is useful to draw custom objects.
!!}
    property OnBeforeDrawObject:TIEDrawObjectEvent read fOnBeforeDrawObject write fOnBeforeDrawObject;

{!!
<FS>TImageEnVect.OnAfterDrawObject

<FM>Declaration<FC>
property OnAfterDrawObject:<A TIEDrawObjectEvent>;

<FM>Description<FN>

This event occurs just after an object is painted.
<FC>handled<FN> parameter is not used.

This event is useful to draw custom objects.
!!}
    property OnAfterDrawObject:TIEDrawObjectEvent read fOnAfterDrawObject write fOnAfterDrawObject;

    property ObjGripImage:TPicture read fObjGripImage write SetObjGripImage;

{!!
<FS>TImageEnVect.ObjUndoMode

<FM>Declaration<FC>
property ObjUndoMode:<A TIEVUndoMode>;

<FM>Description<FN>

This property allows to share the Undo/Redo system between image processing and vectorial objects.
The default value (ieumSeparated) separates the two systems.

<FM>Example<FC>

ImageEnVect1.ObjUndoMode:=ieumShared;
ImageEnVect1.ObjAutoUndo:=true;
ImageEnVect1.Proc.UndoLimit:=10;

<FN>From now you can do Undo of image processing or vectorial objects just calling:<FC>

ImageEnVect1.Proc.Undo;
ImageEnVect1.Proc.ClearUndo;
!!}
    property ObjUndoMode:TIEVUndoMode read fObjUndoMode write fObjUndoMode default ieumSeparated;

  end;

// TImageEnVect
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////



var

{!!
<FS>iegMemoShortCuts

<FM>Declaration<FC>
iegMemoShortCuts:<A TIEMemoShortCuts>;

<FM>Description<FN>
This public variable contains all key shortcuts used in Memo objects. Defaults are:

    iegMemoShortCuts[iesLEFTALIGN]       := ShortCut(Word('L'),[ssCtrl]);
    iegMemoShortCuts[iesCENTERALIGN]     := ShortCut(Word('E'),[ssCtrl]);
    iegMemoShortCuts[iesRIGHTALIGN]      := ShortCut(Word('R'),[ssCtrl]);
    iegMemoShortCuts[iesJUSTIFIED]       := ShortCut(Word('J'),[ssCtrl]);
    iegMemoShortCuts[iesCOPY]            := ShortCut(Word('C'),[ssCtrl]);
    iegMemoShortCuts[iesCUT]             := ShortCut(Word('X'),[ssCtrl]);
    iegMemoShortCuts[iesPASTE]           := ShortCut(Word('V'),[ssCtrl]);
    iegMemoShortCuts[iesFONTSELECT]      := ShortCut(Word('F'),[ssCtrl]);
    iegMemoShortCuts[iesBOLD]            := ShortCut(Word('B'),[ssCtrl]);
    iegMemoShortCuts[iesITALIC]          := ShortCut(Word('I'),[ssCtrl]);
    iegMemoShortCuts[iesUNDERLINE]       := ShortCut(Word('U'),[ssCtrl]);
    iegMemoShortCuts[iesBACKCOLORSELECT] := ShortCut(Word('G'),[ssCtrl]);

Change one of above lines to set your custom short cut.

The following table specifies the default key map:
<TABLE>
<R> <H>Shortcut</H> <H>Function</H> </R>
<R> <C>F2</C> <C>Increase font size</C> </R>
<R> <C>F1</C> <C>Decrease font size</C> </R>
<R> <C>CTRL - L</C> <C>Left align</C> </R>
<R> <C>CTRL - E</C> <C>Center align</C> </R>
<R> <C>CTRL - R</C> <C>Right align</C> </R>
<R> <C>CTRL - J</C> <C>Justified</C> </R>
<R> <C>CTRL - C</C> <C>Copy</C> </R>
<R> <C>CTRL - X</C> <C>Cut</C> </R>
<R> <C>CTRL - V</C> <C>Paste</C> </R>
<R> <C>CTRL - F</C> <C>Open font dialog</C> </R>
<R> <C>CTRL - B</C> <C>Bold</C> </R>
<R> <C>CTRL - I</C> <C>Italic</C> </R>
<R> <C>CTRL - U</C> <C>Underline</C> </R>
<R> <C>CTRL - G</C> <C>Set background color (open dialog)</C> </R>
</TABLE>
!!}
  iegMemoShortCuts:TIEMemoShortCuts;


function IETryIEV(Stream:TStream):boolean;
function IETryALL(Stream:TStream):boolean;

procedure IEVRegisterExtendedObject(classType:TClass; name:string);
procedure IEVRemoveExtendedObjects;
function IEVCreateExtendedObject(name:string):TIEExtendedObject;
function IEVGetExtendedObjectName(classType:TClass):string;

implementation

uses
  ImageEnProc, iezlib, ieview, dialogs;

{$R-}

const

  ALLOCBLOCK = 512; // number of object allocated. High values increases performance, but requires much more memory

  A90 = PI / 2;

  POLYLINEGDIM = 3;

type
  TIEExtendedObjectInfo = class
    Info_Name:string;
    Info_ClassType:TClass;
  end;

var
  gExtendedObjects:TList; // list of TIEExtendedObjectInfo

  // animated polygons item
  // note: this item is replicated in imageenview also
type
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

function _DistPoint2Ellipse(x, y, x1, y1, x2, y2: integer; filled:boolean): double; forward;

// like moveto/lineto but draw also last point
procedure DrawLine(Canvas: TCanvas; x1, y1, x2, y2: integer);
var
  p2: array[0..1] of TPoint;
begin
  p2[0].x := x1;
  p2[0].y := y1;
  p2[1].x := x2;
  p2[1].y := y2;
  Canvas.Polygon(p2);
end;

// duplicate pchar string

function _StrDup(s: pchar): pchar;
begin
  if s <> nil then
  begin
    getmem(result, strlen(s) + 1);
    StrCopy(result, s);
  end
  else
    result := nil;
end;

constructor TImageEnVect.Create(Owner: TComponent);
begin
  fTextEditing := -1; // no iekTEXT/iekMEMO in editing
  fTextEdit := TIEEdit.Create(self);
  fTextEdit.Visible := false;

  fMemoEdit := TIETextControl.Create(self);
  fMemoEdit.Visible := false;
  inherited;
  fObjGripImage := TPicture.Create;
  fCacheBitmap := nil;
  fObjGraphicRender := false;
  fOnDragLenEnd := nil;
  fOnVectorialChanged := nil;
  fOnBeforeVectorialChanged := nil;
  fZoomObjectsWidth := true;
  fAllObjectsHidden := false;
  fBitmaps := nil;
  fBitmapsCount := 0;
  fObjCount := 0;
  fShareBitmaps := True;
  fObjHeap := nil;
  fObjHeapCount := 0;
  getmem(fSelObj, 0);
  fSelObjCount := 0;
  fScale := 1;
  fMouseInteractVt := [];
  fExtendedObjectToPut := '';
  fMUnit := ieuPIXELS;
  fFloatDigits := 2;
  fFloatPrecision := 15;
  fMeasureTrack := true;
  CalcCoef(fCoefX, fCoefY, fMUnit);
  // new object initial values
  with fNewObj do
  begin
    x1 := 0;
    y1 := 0;
    x2 := DEFWIDTH - 1;
    y2 := DEFHEIGHT - 1;
    a1 := 0;
    a2 := 2 * pi;
    PenColor := clWhite;
    PenStyle := psSolid;
    PenWidth := 1;
    BrushColor := clWhite;
    BrushStyle := bsClear;
    BoxHighLight := false;
    LabelBrushColor := clWhite;
    LabelBrushStyle := bsSolid;
    BeginShape := iesNONE;
    EndShape := iesNONE;
    ShapeWidth := 10;
    ShapeHeight := 20;
    LabelPosition := ielEnd;
    LabelBorder := ielRectangle;
    DrawedLabelBox := Rect(0,0,0,0);
    BitmapIdx := -1;
    SetObjBitmapICO(-1, OIC_HAND, DEFWIDTH, DEFHEIGHT);
    LogFont := nil;
    TextFormatRef := nil;
    TextFormat := nil;
    TextEditable := true;
    CurvedPos := nil;
    CurvedLen := 0;
    UserData := nil;
    UserDataLength:=0;
    AspectRatio := false;
    Canvas.Font.Name := 'Arial';
    SetObjFont(-1, Canvas.Font);
    Text := nil;
    Name := nil;
    ID := 0;
    TextAlign := iejLeft;
    TextAutoSize := false;
    LineSpace := 0;
    MemoBorderColor := clWhite;
    MemoBorderStyle := psSolid;
    MemoFixedHeight := 0;
    MemoHasBitmap := false;
    MemoCharsBrushStyle := bsSolid;
    MemoMarginLeft := 0;
    MemoMarginTop := 0;
    MemoMarginRight := 0;
    MemoMarginBottom := 0;
    CurvedCharRot := -10;
    FontLocked := true;
    BitmapBorder := false;
    Style := [ievsSelectable, ievsMoveable, ievsSizeable, ievsVisible];
    RulerUnit := fMUnit;
    RulerType := iertQUOTECENTER;
    PolyPoints := nil;
    PolyPointsCount := 0;
    PolyBaseX1 := 0;
    PolyBaseY1 := 0;
    PolyBaseX2 := 0;
    PolyBaseY2 := 0;
    PolyClosed := false;
    DrawnPoints := nil;
    DrawnPointsCount := 0;
    AnglePoints[0] := Point(0, 0);
    AnglePoints[0] := Point(50, 0);
    AnglePoints[0] := Point(50, 50);
    Transparency := 255;
    softShadow := TIEVSoftShadow.Create;
    with softShadow do
    begin
      Enabled := false;
      Radius := 3;
      OffsetX := 0;
      OffsetY := 0;
      Intensity := 100;
      ShadowColor := CreateRGB(0,0,0);
    end;
    extendedObject:=nil;
  end;
  //
  fInserting := iekNONE;
  fGripping := iegrNone;;
  fOnSelectObject := nil;
  fOnUserSelectObject := nil;
  fOnUserDeselectObject := nil;
  fOnMeasureHint := nil;
  fLastHintValue := 0;
  fOnNewObject := nil;
  fBitmapResampleFilter := rfNone;
  fVStable := 0;
  MaxSelectionDistance := -1;
  fOnObjectMoveResize := nil;
  fOnObjectClick := nil;
  fOnObjectDblClick := nil;
  fOnObjectOver := nil;
  fHintSaveBitmap := TBitmap.Create;
  fShowHint := false;
  fHintX := 0;
  fHintY := 0;
  fMeasureHintFont := TFont.Create;
  fMeasureHintFont.Color := clBlack;
  fMeasureHintFont.Style := [fsBold];
  fMeasureHintBrush := TBrush.Create;
  fMeasureHintBrush.Color := $0060FFFF;
  fMeasureHintBrush.Style := bsSolid;
  fMeasureHintBorder2 := clGray;
  fMeasureHintBorder1 := clWhite;
  fMovX := 0;
  fMovY := 0;
  // grips properties
  fObjGripSize := 5;
  fObjGripPen := TPen.Create;
  fObjGripPen.Color := clBlack;
  fObjGripPen.Style := psSolid;
  fObjGripPen.Mode := pmCopy;
  fObjGripPen.Width := 1;
  fObjGripBrush := TBrush.Create;
  fObjGripBrush.Color := $00BAFFFF;
  fObjGripBrush.Style := bsSolid;
  fObjGripShape:=iegsCircle;
  //
  fObjUndoList := TList.Create;
  fObjUndoLimit := 1;
  fMemoWriteFormattedString := nil;
  fMemoFormattedString := '';
  fUseCentralGrip := false;
  fVectorialChanging := false;
  fObjAutoUndo := false;
  fObjAntialias := true;
  fCurPolylineGrip := -1;
  fCurPolylineIntraGrip := -1;
  fSelectOnMouseDown := true;
  fSelectOnMouseDown_WasSelected:=false;
  fObjLockPaint:=0;
  fCenterNewObjects:=false;
  fOnTextKeyDown:=nil;
  fDoubleClicking:=false;
  fOnActivateTextEdit:=nil;
  fOnDeactivateTextEdit:=nil;
  fAllowOutOfBitmapMoving:=true;
  fAllowOutOfBitmapPolylines:=false;
  fEnableRangeObjectsSelection:=true;
  fObjEditOnNewText:=true;
  fOnBeforeDrawObject:=nil;
  fOnAfterDrawObject:=nil;
  fPolylineEndingMode:=ieemDoubleClick;
  fObjBoxInnerSelectable:=false;
  fObjUndoMode:=ieumSeparated;
  fMouseOver:=-1;
  fObjRulerQuoteHorizon:=true;
  fObjAngleShowSmall:=false;
  fSavedUndo:=false;
  fFastDrawing:=false;
  fMouseStableTimer:=TTimer.Create(nil);
  fMouseStableTimer.Enabled:=false;
  fMouseStableTimer.Interval:=50;
  fMouseStableTimer.OnTimer:=MouseStableTimerEvent;
end;

destructor TImageEnVect.Destroy;
var
  q: integer;
begin
  RemoveTextEdit;
  RemoveVObjDataAll; // free objects data
  RemoveVObjData(fNewObj); // free new object data
  freemem(fSelObj);
  freemem(fObjHeap); // remove heap memory of objects
  // free bitmaps
  for q := 0 to fBitmapsCount - 1 do
    if fBitmaps^[q].fBitmap <> nil then
      FreeAndNil(fBitmaps^[q].fBitmap);
  freemem(fBitmaps);
  FreeAndNil(fHintSaveBitmap);
  FreeAndNil(fMeasureHintFont);
  FreeAndNil(fMeasureHintBrush);
  FreeAndNil(fTextEdit);
  FreeAndNil(fMemoEdit);
  if assigned(fCacheBitmap) then
    FreeAndNil(fCacheBitmap);
  // undo
  ObjClearAllUndo;
  FreeAndNil(fObjUndoList);
  //
  FreeAndNil(fObjGripPen);
  FreeAndNil(fObjGripBrush);
  FreeAndNil(fObjGripImage);

  fMouseStableTimer.Free;

  inherited;
end;

// Cancel:
//   fInserting (object inserting)
//   fGripping (coordinate/size changing)
//   fTextEditing (text inserting)

{!!
<FS>TImageEnVect.CancelInteracts

<FM>Declaration<FC>
procedure CancelInteracts;

<FM>Description<FN>
CancelInteracts cancels all current mouse interaction (inserting or modifying objects).

!!}
procedure TImageEnVect.CancelInteracts;
begin
  fMouseOver:=-1; // 2.3.2 (case1000)
  fInserting := iekNONE;
  fGripping := iegrNone;
  RemoveTextEdit;
  if fTextEditing >= 0 then
  begin
    fTextEditing := -1;
    Update;
  end;
end;

// MouseInteract of TImageEnView

procedure TImageEnVect.SetMouseInteract(v: TIEMouseInteract);
begin
  inherited;
  if v <> [] then
    fMouseInteractVt := fMouseInteractVt -
      [miPutLine, miPutBox, miPutEllipse,
      miPutBitmap, miPutText, miObjectSelect,
      miPutRuler, miDragLen, miPutPolyLine,
      miPutAngle, miPutMemo, miPutLineLabel, miEditPolyLine, miPutExtendedObject
      ];
  CancelInteracts;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetMouseInteractVt(v: TIEMouseInteractVt);
var
  ToUpdate: boolean;
  x:TIEMouseInteractVt;
begin
  ToUpdate := false;
  CancelInteracts;
  if v <> fMouseInteractVt then
  begin
    if miEditPolyLine in fMouseInteractVt then
      ToUpdate := true;

    if (miUnStampMode in v) then
      x:=[miUnStampMode]
    else
      x:=[];

    if (miArea in v) and not (miArea in fMouseInteractVt) then
    begin
      // miArea
      v := [miArea];
    end
    else if (miLineLen in v) and not (miLineLen in fMouseInteractVt) then
    begin
      // miLineLen
      v := [miLineLen];
    end
    else if (miPutLine in v) and not (miPutLine in fMouseInteractVt) then
    begin
      // miPutLine
      v := [miPutLine];
      SetMouseInteract([]);
    end
    else if (miPutLineLabel in v) and not (miPutLineLabel in fMouseInteractVt) then
    begin
      // miPutLineLabel
      v := [miPutLineLabel];
      SetMouseInteract([]);
    end
    else if (miPutBox in v) and not (miPutBox in fMouseInteractVt) then
    begin
      // miPutBox
      v := [miPutBox];
      SetMouseInteract([]);
    end
    else if (miPutEllipse in v) and not (miPutEllipse in fMouseInteractVt) then
    begin
      // miPutEllipse
      v := [miPutEllipse];
      SetMouseInteract([]);
    end
    else if (miPutBitmap in v) and not (miPutBitmap in fMouseInteractVt) then
    begin
      // miPutBitmap
      v := [miPutBitmap];
      SetMouseInteract([]);
    end
    else if (miPutText in v) and not (miPutText in fMouseInteractVt) then
    begin
      // miPutText
      v := [miPutText];
      SetMouseInteract([]);
    end
    else if (miPutMemo in v) and not (miPutMemo in fMouseInteractVt) then
    begin
      // miPutMemo
      v := [miPutMemo];
      SetMouseInteract([]);
    end
    else if (miObjectSelect in v) and not (miObjectSelect in fMouseInteractVt) then
    begin
      // miSelectObject
      v := [miObjectSelect];
      SetMouseInteract([]);
    end
    else if (miDragLen in v) and not (miDragLen in fMouseInteractVt) then
    begin
      // miDragLen - measure distance by dragging a temporary line
      v := [miDragLen];
      SetMouseInteract([]);
    end
    else if (miPutRuler in v) and not (miPutRuler in fMouseInteractVt) then
    begin
      // miPutRuler
      v := [miPutRuler];
      SetMouseInteract([]);
    end
    else if (miPutPolyLine in v) and not (miPutPolyLine in fMouseInteractVt) then
    begin
      // miPutPolyLine
      v := [miPutPolyLine];
      SetMouseInteract([]);
    end
    else if (miPutAngle in v) and not (miPutAngle in fMouseInteractVt) then
    begin
      // miPutAngle
      v := [miPutAngle];
      SetMouseInteract([]);
    end
    else if (miPutExtendedObject in v) and not (miPutExtendedObject in fMouseInteractVt) then
    begin
      // miPutExtendedObject
      v := [miPutExtendedObject];
      SetMouseInteract([]);
    end
    else if (miEditPolyLine in v) and not (miEditPolyLine in fMouseInteractVt) then
    begin
      // miEditPolyLine
      v := [miEditPolyLine];
      SetMouseInteract([]);
      ToUpdate := true;
    end;
    fMouseInteractVt := v + x;
    if (not (miArea in v)) and (not (miLineLen in v)) then
    begin
      HintRestore;
      fShowHint := false;
      fLastHintValue := 0;
    end
    else
    begin
      fLastHintValue := 0;
      HintRestore;
      fShowHint := True;
      HintShow(width div 2, height div 2);
    end;
  end;
  if ToUpdate then
    Update;
end;

procedure TImageEnVect.SetDPIX(dpiX: integer);
begin
  inherited;
  CalcCoef(fCoefX, fCoefY, fMUnit);
  UpdateHint(-1000000, -1000000);
  Update;
end;

procedure TImageEnVect.SetDPIY(dpiY: integer);
begin
  inherited;
  CalcCoef(fCoefX, fCoefY, fMUnit);
  UpdateHint(-1000000, -1000000);
  Update;
end;

{!!
<FS>TImageEnVect.MUnit

<FM>Declaration<FC>
property MUnit: TIEUnits;

<FM>Description<FN>
MUnit specifies the measurement unit used for displaying measurement tasks and for the return values of <A TImageEnVect.GetSelectionArea> and <A TImageEnVect.GetSelectionLen> methods.
!!}
procedure TImageEnVect.SetMUnit(v: TIEUnits);
begin
  fNewObj.RulerUnit := v;
  fMUnit := v;
  CalcCoef(fCoefX, fCoefY, fMUnit);
  UpdateHint(-1000000, -1000000);
end;

{!!
<FS>TImageEnVect.FloatDigits

<FM>Declaration<FC>
property FloatDigits: integer;

<FM>Description<FN>
FloatDigits is the number of decimal digits will be shown on measurement tasks (distances and areas).
!!}
procedure TImageEnVect.SetFloatDigits(v: integer);
begin
  fFloatDigits := v;
  UpdateHint(-1000000, -1000000);
end;

{!!
<FS>TImageEnVect.FloatPrecision

<FM>Declaration<FC>
property FloatPrecision: integer;

<FM>Description<FN>
FloatPrecision is the total number of digits (including decimals) that are shown on measurement tasks (distances and areas).

!!}
procedure TImageEnVect.SetFloatPrecision(v: integer);
begin
  fFloatPrecision := v;
  UpdateHint(-1000000, -1000000);
end;


// Recalculates fCoefX and fCoefY
// fCoef? represents number of fMUnit for each pixel
procedure TImageEnVect.CalcCoef(var cx, cy: double; mu: TIEUnits);
begin
  if mu = ieuPIXELS then
  begin
    cx := 1;
    cy := 1;
  end
  else
  begin
    cx := 1 / fDPIX;
    cy := 1 / fDPIY;
    case mu of
      ieuKM:
        begin
          cx := (cx * 2.54) / 100000;
          cy := (cy * 2.54) / 100000;
        end;
      ieuMETERS:
        begin
          cx := (cx * 2.54) / 100;
          cy := (cy * 2.54) / 100;
        end;
      ieuCENTIMETERS:
        begin
          cx := cx * 2.54;
          cy := cy * 2.54;
        end;
      ieuMILLIMETERS:
        begin
          cx := (cx * 2.54) * 10;
          cy := (cy * 2.54) * 10;
        end;
      ieuMICRONS:
        begin
          cx := (cx * 2.54) * 10000;
          cy := (cy * 2.54) * 10000;
        end;
      ieuNANOMETERS:
        begin
          cx := (cx * 2.54) * 10000000;
          cy := (cy * 2.54) * 10000000;
        end;
    end;
  end;
  cx := cx * fScale;
  cy := cy * fScale;
end;

procedure TImageEnVect.AddSelPoint(x, y: integer);
begin
  inherited;
end;

procedure TImageEnVect.Select(x1, y1, x2, y2: integer; Op: TIESelOp);
begin
  inherited;
end;

{!!
<FS>TImageEnVect.GetSelectionLen

<FM>Declaration<FC>
function GetSelectionLen: double;

<FM>Description<FN>
GetSelectionLen returns the length (perimeter) of current selection. If the selection is composed of only two points, GetSelectionLen calculates the line length; if the selection is composed of three or more points, GetSelectionLen calculates the perimeter.
!!}
// Calculates perimeter of current selection
// Note: If fPolySelecting is True (polygon selection in progress), the perimeter
// does not include the segment from last point and the first one.
// If fPRectSelecting is False, it is calculates the entire perimeter (of closed polygon).
function TImageEnVect.GetSelectionLen: double;
var
  i: integer;
  dx, dy: double;
  lx, ly: double;
  lbreak: integer;
begin
  dx := fCoefX;
  dy := fCoefY;
  result := 0;
  with PIEAnimPoly(fHPolySel)^ do
  begin
    if PolyCount > 1 then
    begin
      lbreak := 0;
      i := 0;
      while i < PolyCount - 1 do
      begin
        if Poly^[i + 1].x = IESELBREAK then
        begin
          lx := abs(Poly^[lbreak].x - Poly^[i].x) * dx;
          ly := abs(Poly^[lbreak].y - Poly^[i].y) * dy;
          result := result + sqrt(lx * lx + ly * ly);
          inc(i);
          lbreak := i + 1;
        end
        else
        begin
          lx := abs(Poly^[i + 1].x - Poly^[i].x) * dx;
          ly := abs(Poly^[i + 1].y - Poly^[i].y) * dy;
          result := result + sqrt(lx * lx + ly * ly);
        end;
        inc(i);
      end;
      if (not fPolyselecting) and (PolyCount > 2) then
      begin
        // includes the final segment (end of selecting)
        lx := abs(Poly^[lbreak].x - Poly^[PolyCount - 1].x) * dx;
        ly := abs(Poly^[lbreak].y - Poly^[PolyCount - 1].y) * dy;
        result := result + sqrt(lx * lx + ly * ly);
      end
    end;
    if fMeasureTrack and (PolyCount > 0) and fPolySelecting then
    begin
      // fMMoveX and fMMoveY are current mouse coordinates
      lx := abs(XScr2Bmp(fMMoveX) - Poly^[PolyCount - 1].x) * dx;
      ly := abs(YScr2Bmp(fMMoveY) - Poly^[PolyCount - 1].y) * dy;
      result := result + sqrt(lx * lx + ly * ly);
    end;
  end;
end;

// draws ruler on inserting
procedure TImageEnVect.DrawRulerInserting;
var
  DestCanvas:TIECanvas;
begin
  DestCanvas:=TIECanvas.Create(Canvas,false,true);
  DrawRuler(DestCanvas, -1, fHSX0, fHSY0, fVMoveX, fVMoveY, fNewObj.RulerUnit, fNewObj.PenColor, fNewObj.PenWidth, fNewObj.RulerType, f100DZoomX, f100DZoomY, fNewObj.plim, fNewObj.LogFont);
  DestCanvas.Free;
end;

procedure TImageEnVect.DrawAngleInserting;
var
  tmp_points: array[0..2] of TPoint;
  i: integer;
  DestCanvas:TIECanvas;
begin
  with GetObj(fInsertingAngleObject)^ do
  begin
    move(AnglePoints[0], tmp_points[0], sizeof(TPoint) * 3);
    for i := 0 to 2 do
      if AnglePoints[i].x = -1000000 then
      begin
        tmp_points[i] := Point(XScr2Bmp(fVMoveX), YScr2Bmp(fVMoveY));
        break;
      end;
    DestCanvas:=TIECanvas.Create(Canvas,false,true);
    DrawAngle(DestCanvas, tmp_points, PenColor, PenWidth, plim, true, 1, 100 / fZoomX, 100/fZoomY, LogFont );
    DestCanvas.Free;
  end;
end;

// Paints a line when user are inserting it
procedure TImageEnVect.DrawLineInserting;
begin
  with canvas do
  begin
    pen.Mode := pmNot;
    pen.width := 1;
    pen.style := psSolid;
    moveto(fHSX0, fHSY0);
    lineto(fVMoveX, fVMoveY);
  end;
end;

// Paints a box when user are inserting it
procedure TImageEnVect.DrawBoxInserting;
begin
  with canvas do
  begin
    pen.Mode := pmNot;
    pen.width := 1;
    pen.style := psSolid;
    moveto(fHSX0, fHSY0);
    lineto(fVMoveX, fHSY0);
    lineto(fVMoveX, fVMoveY);
    lineto(fHSX0, fVMoveY);
    lineto(fHSX0, fHSY0);
  end;
end;

// Paints an ellipse when user are inserting it
procedure TImageEnVect.DrawEllipseInserting;
var
  x1, y1, x2, y2: integer;
begin
  with canvas do
  begin
    pen.Mode := pmNot;
    pen.width := 1;
    pen.style := psSolid;
    brush.style := bsClear;
    x1 := fHSX0;
    y1 := fHSY0;
    x2 := fVMoveX;
    y2 := fVMoveY;
    OrdCor(x1, y1, x2, y2);
    Ellipse(x1, y1, x2 + 1, y2 + 1);
  end;
end;

{!!
<FS>TImageEnVect.ObjKind

<FM>Declaration<FC>
property ObjKind[hobj:integer]: <A TIEVObjectKind>;

<FM>Description<FN>
ObjKind is the type (line, ellipse...) of object hobj.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjKind(hobj: integer): TIEVObjectKind;
begin
  with GetObj(hobj)^ do
    result := Kind;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjKind(hobj: integer; v: TIEVObjectKind);
var
  pobj: PIEVObject;
  //
  procedure AllocLogFont;
  begin
    with pobj^ do
      if LogFont = nil then
      begin
        getmem(LogFont, sizeof(TLogFont));
        copymemory(LogFont, fNewObj.LogFont, sizeof(TLogFont));
      end;
  end;
  //
begin
  pobj := GetObj(hobj);
  with pobj^ do
  begin
    Kind := v;
    case Kind of
      iekTEXT, iekLINELABEL, iekEXTENDED:
        begin
          AllocLogFont;
          if Text = nil then
            Text := _StrDup('');
        end;
      iekMEMO, iekRULER, iekANGLE:
        AllocLogFont;
    end;
  end;
  if hobj <> -1 then
    Update;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
{!!
<FS>TImageEnVect.ObjPenColor

<FM>Declaration<FC>
property ObjPenColor[hobj:integer]: TColor;

<FM>Description<FN>
ObjPenColor specifies the pen color for hobj object.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
function TImageEnVect.GetObjPenColor(hobj: integer): TColor;
begin
  with GetObj(hobj)^ do
    result := PenColor;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjPenColor(hobj: integer; v: TColor);
begin
  with GetObj(hobj)^ do
    PenColor := v;
  if hobj <> -1 then
    Update;
end;

procedure TImageEnVect.SetObjUserData(hobj:integer; v:pointer);
begin
  with GetObj(hobj)^ do
    UserData := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjUserData

<FM>Declaration<FC>
property ObjUserData[hobj:integer]:pointer;

<FM>Description<FN>
Applications can store custom data ObjUserData. ObjUserData contains a pointer to a user buffer which length is in <A TImageEnVect.ObjUserDataLength>.
Load/save and clipboard methods save this field allocating the buffer when needed and freeing it when an object is destroyed.

!!}
function TImageEnVect.GetObjUserData(hobj:integer):pointer;
begin
  with GetObj(hobj)^ do
    result := UserData;
end;

procedure TImageEnVect.SetObjAspectRatio(hobj:integer; v:boolean);
begin
  with GetObj(hobj)^ do
    AspectRatio := v;
  if hobj <> -1 then
    Update;
end;


{!!
<FS>TImageEnVect.ObjAspectRatio

<FM>Declaration<FC>
property ObjAspectRatio[hobj:integer]:Boolean;

<FM>Description<FN>
When true, the object maintain the aspect ratio when resized (like ALT key).

!!}
function TImageEnVect.GetObjAspectRatio(hobj:integer):boolean;
begin
  with GetObj(hobj)^ do
    result := AspectRatio;
end;

procedure TImageEnVect.SetObjUserDataLength(hobj:integer; v:integer);
begin
  with GetObj(hobj)^ do
    UserDataLength := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjUserDataLength

<FM>Declaration<FC>
property ObjUserDataLength[hobj:integer]:integer;

<FM>Description<FN>
Applications can store custom data <A TImageEnVect.ObjUserData>. ObjUserData contains a pointer to a user buffer which length is in ObjUserDataLength.
Load/save and clipboard methods save this field allocating the buffer when needed and freeing it when an object is destroyed.

!!}
function TImageEnVect.GetObjUserDataLength(hobj:integer):integer;
begin
  with GetObj(hobj)^ do
    result := UserDataLength;
end;


// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
{!!
<FS>TImageEnVect.ObjStyle

<FM>Declaration<FC>
property ObjStyle[hobj:integer]:<A TIEVStyle>;

<FM>Description<FN>
ObjStyle sets some properties of the hobj object.

The default value is: [ievsSelectable, ievsMoveable, ievsSizeable, ievsVisible]

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// Hides the object called "cloud"
hobj:=ImageEnVect1.GetObjFromName('cloud');  // hobj is an integer
ImageEnVect1.ObjStyle[hobj]:=ImageEnVect1.ObjStyle[hobj] - [ievsVisible];

!!}
function TImageEnVect.GetObjStyle(hobj: integer): TIEVStyle;
begin
  with GetObj(hobj)^ do
    result := Style;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjStyle(hobj: integer; v: TIEVStyle);
begin
  if not (ievsSelectable in v) then
    UnSelObject(hobj);
  with GetObj(hobj)^ do
    Style := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.GetObjRect

<FM>Declaration<FC>
procedure GetObjRect(hobj:integer; var Rect:TRect);

<FM>Description<FN>
GetObjRect returns the coordinates of hobj object.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
procedure TImageEnVect.GetObjRect(hobj: integer; var Rect: TRect);
begin
  with GetObj(hobj)^ do
  begin
    Rect.Left := x1;
    Rect.Top := y1;
    Rect.Right := x2;
    Rect.Bottom := y2;
  end;
end;

{!!
<FS>TImageEnVect.SetObjRect

<FM>Declaration<FC>
procedure SetObjRect(hobj:integer; const Rect:TRect);

<FM>Description<FN>
SetObjRect specifies the coordinates of hobj object.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
procedure TImageEnVect.SetObjRect(hobj: integer; const Rect: TRect);
begin
  with GetObj(hobj)^ do
  begin
    x1 := Rect.Left;
    y1 := Rect.Top;
    x2 := Rect.Right;
    y2 := Rect.Bottom;
  end;
  if hobj <> -1 then
    Update;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjLeft(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
  begin
    inc(x2, v - x1);
    inc(x1, v - x1);
  end;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjLeft

<FM>Declaration<FC>
property ObjLeft[hobj:integer]:integer;

<FM>Description<FN>
Specifies the left offset of <FC>hobj<FN> object. The coordinates are in pixels with zoom = 100%.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// This code creates a Box at 10, 10 of 50x50 pixels.
ImageEnVect1.ObjKind[-1]:=iekBOX;
ImageEnVect1.ObjLeft[-1]:=10;
ImageEnVect1.ObjTop[-1]:=10;
ImageEnVect1.ObjWidth[-1]:=50;
ImageEnVect1.ObjHeight[-1]:=50;
ImageEnVect1.AddNewObject;
!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjLeft(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := x1;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjRulerUnit(hobj: integer; v: TIEUnits);
begin
  with GetObj(hobj)^ do
    RulerUnit := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjRulerUnit

<FM>Declaration<FC>
property ObjRulerUnit[hobj:integer]: <A TIEUnits>;

<FM>Description<FN>
ObjRulerUnit specifies the measurement unit of the ruler object hobj.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjRulerUnit(hobj: integer): TIEUnits;
begin
  with GetObj(hobj)^ do
    result := RulerUnit;
end;

procedure TImageEnVect.SetObjPolylineClosed(hobj: integer; Value: boolean);
begin
  with GetObj(hobj)^ do
    PolyClosed := Value;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjPolylineClosed

<FM>Declaration<FC>
property ObjPolylineClosed[hobj:integer]:boolean;

<FM>Description<FN>

ObjPolylineClosed is True if we want close the polyline (so it is like a polygon).

!!}
function TImageEnVect.GetObjPolylineClosed(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := PolyClosed;
end;

{!!
<FS>TImageEnVect.ObjSoftShadow

<FM>Declaration<FC>
property ObjSoftShadow[hobj:integer]:<A TIEVSoftShadow>;

<FM>Description<FN>
ObjSoftShadow enables and sets the object shadow properties.

<FM>Example<FC>

ImageEnVect.ObjSoftShadow[-1].Enabled:=True;
!!}
function TImageEnVect.GetObjSoftShadow(hobj: integer): TIEVSoftShadow;
begin
  with GetObj(hobj)^ do
    result := softShadow;
end;

function TImageEnVect.GetObjExtendedObject(hobj:integer):TIEExtendedObject;
begin
  with GetObj(hobj)^ do
    result:=extendedObject;
end;

procedure TImageEnVect.SetExtendedObjectToPut(value:string);
begin
  if assigned(fNewObj.extendedObject) then
    FreeAndNil(fNewObj.extendedObject);
  fExtendedObjectToPut:=value;
  fNewObj.extendedObject:=IEVCreateExtendedObject(value);
  fNewObj.extendedObject.fParent:=self;
  fNewObj.extendedObject.Initialize;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjRulerType(hobj: integer; v: TIEVRulerType);
begin
  with GetObj(hobj)^ do
    RulerType := v;
  if hobj <> -1 then
    Update;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
{!!
<FS>TImageEnVect.ObjRulerType

<FM>Declaration<FC>
property ObjRulerType[hobj:integer]: <A TIEVRulerType>;

<FM>Description<FN>
ObjRulerType specifies the type of the ruler object hobj.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
function TImageEnVect.GetObjRulerType(hobj: integer): TIEVRulerType;
begin
  with GetObj(hobj)^ do
    result := RulerType;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjTransparency(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    Transparency := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjTransparency

<FM>Declaration<FC>
property ObjTransparency[hobj:integer]:integer;

<FM>Description<FN>
ObjTransparency sets the transparency of the specified object. 0=fully transparent, 255=fully opaque.
!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjTransparency(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := Transparency;
end;

{!!
<FS>TImageEnVect.ObjFontLocked

<FM>Declaration<FC>
property ObjFontLocked[hobj:integer]:boolean;

<FM>Description<FN>
When the object is a Memo (iekMemo), ObjFontLocked locks the alignment, color and font, allowing all characters to have the same visual characteristics.

If the ObjFontLocked property is disabled (False) the user can modify font and alignment using the control keys in <A iegMemoShortCuts>.
!!}
function TImageEnVect.GetObjFontLocked(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := FontLocked;
end;

{!!
<FS>TImageEnVect.ObjBitmapBorder

<FM>Declaration<FC>
property ObjBitmapBorder[hobj:integer]:boolean;

<FM>Description<FN>
If True a border around the bitmap object will be painted.

!!}
function TImageEnVect.GetObjBitmapBorder(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := BitmapBorder;
end;


{!!
<FS>TImageEnVect.ObjMemoBorderColor

<FM>Declaration<FC>
property ObjMemoBorderColor[hobj:integer]:TColor;

<FM>Description<FN>
ObjMemoBorderColor specifies the color of the memo border.

!!}
function TImageEnVect.GetObjMemoBorderColor(hobj: integer): TColor;
begin
  with GetObj(hobj)^ do
    result := MemoBorderColor;
end;

procedure TImageEnVect.SetObjMemoBorderColor(hobj: integer; value: TColor);
begin
  with GetObj(hobj)^ do
    MemoBorderColor := value;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoHasBitmap

<FM>Declaration<FC>
property ObjMemoHasBitmap[hobj:integer]:boolean;

<FM>Description<FN>

When true, the memo object has a background image.
You can set the bitmap using <A TImageEnVect.ObjBitmap>, <A TImageEnVect.ObjSetTBitmap>, <A TImageEnVect.SetObjBitmapICO> and <A TImageEnVect.SetObjBitmapFromFile> methods.
The <A TImageEnVect.ObjBrushStyle> must be bsClear and fonts must not have filled background.
!!}
function TImageEnVect.GetObjMemoHasBitmap(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := MemoHasBitmap;
end;

procedure TImageEnVect.SetObjMemoHasBitmap(hobj: integer; v: boolean);
begin
  with GetObj(hobj)^ do
    MemoHasBitmap := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoMarginLeft

<FM>Declaration<FC>
property ObjMemoMarginLeft[hobj:integer]:double;

<FM>Description<FN>
Specifies the left margin in percentage of horizontal width. This applies only to memo objects.

<FM>Example<FC>

ImageEnVect1.ObjMemoMarginLeft[h]:=10;	// 10% left
ImageEnVect1.ObjMemoMarginTop[h]:=10;	// 10% top
ImageEnVect1.ObjMemoMarginRight[h]:=10;	// 10% right
ImageEnVect1.ObjMemoMarginBottom[h]:=10;	// 10% bottom

!!}
function TImageEnVect.GetObjMemoMarginLeft(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    result := MemoMarginLeft;
end;

procedure TImageEnVect.SetObjMemoMarginLeft(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    MemoMarginLeft := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoCharsBrushStyle

<FM>Declaration<FC>
property ObjMemoCharsBrushStyle[hobj:integer]:TBrushStyle;

<FM>Description<FN>
This property allows to set the default brush style when <A TImageEnVect.ObjFontLocked> is false.
The default is bsSolid, which means that when you change the memo background color the characters remains with their unchanged background color.
!!}
function TImageEnVect.GetObjMemoCharsBrushStyle(hobj: integer): TBrushStyle;
begin
  with GetObj(hobj)^ do
    result := MemoCharsBrushStyle;
end;

procedure TImageEnVect.SetObjMemoCharsBrushStyle(hobj: integer; v: TBrushStyle);
begin
  with GetObj(hobj)^ do
    MemoCharsBrushStyle := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoMarginTop

<FM>Declaration<FC>
property ObjMemoMarginTop[hobj:integer]:double;

<FM>Description<FN>
Specifies the top margin in percentage of vertical height. This applies only to memo objects.

<FM>Example<FC>

ImageEnVect1.ObjMemoMarginLeft[h]:=10;	// 10% left
ImageEnVect1.ObjMemoMarginTop[h]:=10;	// 10% top
ImageEnVect1.ObjMemoMarginRight[h]:=10;	// 10% right
ImageEnVect1.ObjMemoMarginBottom[h]:=10;	// 10% bottom

!!}
function TImageEnVect.GetObjMemoMarginTop(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    result := MemoMarginTop;
end;

procedure TImageEnVect.SetObjMemoMarginTop(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    MemoMarginTop := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoMarginRight

<FM>Declaration<FC>
property ObjMemoMarginRight[hobj:integer]:double;

<FM>Description<FN>
Specifies the right margin in percentage of horizontal width. This applies only to memo objects.

<FM>Example<FC>

ImageEnVect1.ObjMemoMarginLeft[h]:=10;	// 10% left
ImageEnVect1.ObjMemoMarginTop[h]:=10;	// 10% top
ImageEnVect1.ObjMemoMarginRight[h]:=10;	// 10% right
ImageEnVect1.ObjMemoMarginBottom[h]:=10;	// 10% bottom

!!}
function TImageEnVect.GetObjMemoMarginRight(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    result := MemoMarginRight;
end;

procedure TImageEnVect.SetObjMemoMarginRight(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    MemoMarginRight := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoMarginBottom

<FM>Declaration<FC>
property ObjMemoMarginBottom[hobj:integer]:double;

<FM>Description<FN>
Specifies the bottom margin in percentage of vertical height. This applies only to memo objects.

<FM>Example<FC>

ImageEnVect1.ObjMemoMarginLeft[h]:=10;	// 10% left
ImageEnVect1.ObjMemoMarginTop[h]:=10;	// 10% top
ImageEnVect1.ObjMemoMarginRight[h]:=10;	// 10% right
ImageEnVect1.ObjMemoMarginBottom[h]:=10;	// 10% bottom

!!}
function TImageEnVect.GetObjMemoMarginBottom(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    result := MemoMarginBottom;
end;

procedure TImageEnVect.SetObjMemoMarginBottom(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    MemoMarginBottom := v;
  if hobj <> -1 then
    Update;
end;


{!!
<FS>TImageEnVect.ObjArcStartingAngle

<FM>Declaration<FC>
property ObjArcStartingAngle[hobj:integer]:double;

<FM>Description<FN>
Specifies the starting angle in radians for an iekARC object.
!!}
function TImageEnVect.GetObjArcStartingAngle(hobj:integer):double;
begin
  with GetObj(hobj)^ do
    result:= a1;
end;

procedure TImageEnVect.SetObjArcStartingAngle(hobj:integer; v:double);
begin
  with GetObj(hobj)^ do
    a1:=v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjArcEndingAngle

<FM>Declaration<FC>
property ObjArcEndingAngle[hobj:integer]:double;

<FM>Description<FN>
Specifies the ending angle in radians for an iekARC object.
!!}
function TImageEnVect.GetObjArcEndingAngle(hobj:integer):double;
begin
  with GetObj(hobj)^ do
    result:= a2;
end;

procedure TImageEnVect.SetObjArcEndingAngle(hobj:integer; v:double);
begin
  with GetObj(hobj)^ do
    a2:=v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjMemoBorderStyle

<FM>Declaration<FC>
property ObjMemoBorderStyle[hobj:integer]:TPenStyle;

<FM>Description<FN>
ObjMemoBorderStyle specifies the style of the memo border.

!!}
function TImageEnVect.GetObjMemoBorderStyle(hobj: integer): TPenStyle;
begin
  with GetObj(hobj)^ do
    result := MemoBorderStyle;
end;

procedure TImageEnVect.SetObjMemoBorderStyle(hobj: integer; value: TPenStyle);
begin
  with GetObj(hobj)^ do
    MemoBorderStyle := value;
  if hobj <> -1 then
    Update;
end;

procedure TImageEnVect.SetObjMemoFixedHeight(hobj: integer; value: integer);
begin
  with GetObj(hobj)^ do
    MemoFixedHeight := value;
end;

{!!
<FS>TImageEnVect.ObjMemoFixedHeight

<FM>Declaration<FC>
property ObjMemoFixedHeight[hobj:integer]:integer;

<FM>Description<FN>
ObjMemoFixedHeight specifies the interline space between lines. By setting a value of 0 (default), ObjMemoFixedHeight is automatically calculated.

!!}
function TImageEnVect.GetObjMemoFixedHeight(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := MemoFixedHeight;

end;

procedure TImageEnVect.SetObjFontLocked(hobj: integer; value: boolean);
begin
  with GetObj(hobj)^ do
    FontLocked := value;
  if hobj <> -1 then
    Update;
end;

procedure TImageEnVect.SetObjBitmapBorder(hobj: integer; value: boolean);
begin
  with GetObj(hobj)^ do
    BitmapBorder := value;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjPolylinePoints

<FM>Declaration<FC>
property ObjPolylinePoints[hobj:integer; index:integer]:TPoint;

<FM>Description<FN>
ObjPolylinePoints specifies the points that compose the hobj polyline.

Use <A TImageEnVect.ObjPolylinePointsCount> to know how many points the polyline contains.

!!}
function TImageEnVect.GetObjPolylinePoints(hobj, index: integer): TPoint;
var
  zx, zy: double;
begin
  with GetObj(hobj)^ do
    if index < PolyPointsCount then
    begin
      CalcZxZyPolyline(GetObj(hobj), zx, zy);
      result.x := round((PPointArray(PolyPoints)[index].x - PolyBaseX1) * zx) + x1;
      result.y := round((PPointArray(PolyPoints)[index].y - PolyBaseY1) * zy) + y1;
    end;
end;

{!!
<FS>TImageEnVect.ObjPolylinePointsCount

<FM>Declaration<FC>
property ObjPolylinePointsCount[hobj:integer]:integer;

<FM>Description<FN>
ObjPolylinePointsCount specifies the count of points that compose the hobj polyline.
Use <A TImageEnVect.ObjPolylinePoints> to obtain the coordinates of point that compose the polyline.

!!}
function TImageEnVect.GetObjPolylinePointsCount(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := PolyPointsCount;
end;

{!!
<FS>TImageEnVect.SetObjPolylinePoints

<FM>Declaration<FC>
procedure SetObjPolylinePoints(hobj:integer; Points:array of TPoint);

<FM>Description<FN>
SetObjPolylinePoints specifies the points that compose the polyline for the polyline object hobj.
The points are specified in bitmap coordinates.
!!}
procedure TImageEnVect.SetObjPolylinePoints(hobj: integer; Points: array of TPoint);
var
  i: integer;
begin
  with GetObj(hobj)^ do
  begin
    if PolyPoints <> nil then
      freemem(PolyPoints);
    PolyPoints := nil;
    PolyPointsCount := 0;
    PolyBaseX1 := 0;
    PolyBaseY1 := 0;
    PolyBaseX2 := 0;
    PolyBaseY2 := 0;
    x1 := 1000000;
    y1 := 1000000;
    x2 := -1000000;
    y2 := -1000000;
    for i := 0 to High(Points) do
      AddPolyLinePoint(hobj, Points[i].x, Points[i].y);
    Update;
  end;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjTop(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
  begin
    inc(y2, v - y1);
    inc(y1, v - y1);
  end;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjTop

<FM>Declaration<FC>
property ObjTop[hobj:integer]:integer;

<FM>Description<FN>
Specifies the top offset of <FC>hobj<FN> object. The coordinates are in pixels with zoom = 100%.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// This code creates a Box at 10, 10 of 50x50 pixels.
ImageEnVect1.ObjKind[-1]:=iekBOX;
ImageEnVect1.ObjLeft[-1]:=10;
ImageEnVect1.ObjTop[-1]:=10;
ImageEnVect1.ObjWidth[-1]:=50;
ImageEnVect1.ObjHeight[-1]:=50;
ImageEnVect1.AddNewObject;
!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjTop(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := y1;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjWidth(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    x2 := x1 + v - 1;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjWidth

<FM>Declaration<FC>
property ObjWidth[hobj:integer]:integer;

<FM>Description<FN>
Specifies the width of <FC>hobj<FN> object. The coordinates are in pixels with zoom = 100%.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// This code creates a Box at 10, 10 of 50x50 pixels.
ImageEnVect1.ObjKind[-1]:=iekBOX;
ImageEnVect1.ObjLeft[-1]:=10;
ImageEnVect1.ObjTop[-1]:=10;
ImageEnVect1.ObjWidth[-1]:=50;
ImageEnVect1.ObjHeight[-1]:=50;
ImageEnVect1.AddNewObject;
!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjWidth(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := x2 - x1 + 1;
end;

{!!
<FS>TImageEnVect.ObjHeight

<FM>Declaration<FC>
property ObjHeight[hobj:integer]:integer;

<FM>Description<FN>
Specifies the height of <FC>hobj<FN> object. The coordinates are in pixels with zoom = 100%.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// This code creates a Box at 10, 10 of 50x50 pixels.
ImageEnVect1.ObjKind[-1]:=iekBOX;
ImageEnVect1.ObjLeft[-1]:=10;
ImageEnVect1.ObjTop[-1]:=10;
ImageEnVect1.ObjWidth[-1]:=50;
ImageEnVect1.ObjHeight[-1]:=50;
ImageEnVect1.AddNewObject;
!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjHeight(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    y2 := y1 + v - 1;
  if hobj <> -1 then
    Update;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjHeight(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := y2 - y1 + 1;
end;

procedure TImageEnVect.SetObjID(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    ID := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjID

<FM>Declaration<FC>
property ObjID[hobj:integer]:integer;

<FM>Description<FN>
ObjID is a identification value for the object hobj. ImageEn doesn't use this value directly, but saves and loads it like other properties.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjID(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := ID;
end;

{!!
<FS>TImageEnVect.ObjPenStyle

<FM>Declaration<FC>
property ObjPenStyle[hobj:integer]: TPenStyle;

<FM>Description<FN>
ObjPenStyle sets the pen style of hobj object.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjPenStyle(hobj: integer): TPenStyle;
begin
  with GetObj(hobj)^ do
    result := PenStyle;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjPenStyle(hobj: integer; v: TPenStyle);
begin
  with GetObj(hobj)^ do
    PenStyle := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjPenWidth

<FM>Declaration<FC>
property ObjPenWidth[hobj:integer]: integer;

<FM>Description<FN>
ObjPenWidth sets the pen width of hobj object.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjPenWidth(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := PenWidth;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjPenWidth(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    PenWidth := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjBrushColor

<FM>Declaration<FC>
property ObjBrushColor[hobj:integer]: TColor;

<FM>Description<FN>
ObjBrushColor is the brush color of hobj object.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// Set clRed as brush (background) color for the next object to insert
ImageEnVect1.ObjBrushColor[-1]:=clRed;

!!}
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
function TImageEnVect.GetObjBrushColor(hobj: integer): TColor;
begin
  with GetObj(hobj)^ do
    result := BrushColor;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjBrushColor(hobj: integer; v: TColor);
begin
  with GetObj(hobj)^ do
    BrushColor := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjBrushStyle

<FM>Declaration<FC>
property ObjBrushStyle[hobj:integer]: TBrushStyle;

<FM>Description<FN>
ObjBrushStyle is the brush style of hobj object.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// Sets bsSolid as brush style for the next object to insert
ImageEnVect1.ObjBrushStyle[-1]:=bsSolid;

!!}
function TImageEnVect.GetObjBrushStyle(hobj: integer): TBrushStyle;
begin
  with GetObj(hobj)^ do
    result := BrushStyle;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjBrushStyle(hobj: integer; v: TBrushStyle);
begin
  with GetObj(hobj)^ do
    BrushStyle := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjBoxHighLight

<FM>Declaration<FC>
property ObjBoxHighlight[hobj:integer]:boolean;

<FM>Description<FN>
Introduced to increase support for Imaging Annotations. When ObjBoxHighlight is true, it makes a filled box as a highlight box (highlight the background with the fill color).

!!}
function TImageEnVect.GetObjBoxHighLight(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := BoxHighLight;
end;

procedure TImageEnVect.SetObjBoxHighLight(hobj: integer; v: boolean);
begin
  with GetObj(hobj)^ do
    BoxHighLight := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjLabelBrushColor

<FM>Declaration<FC>
property ObjLabelBrushColor[hobj:integer]: TColor;

<FM>Description<FN>
ObjLabelBrushColor is the brush color of hobj object (iekLINELABEL)
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjLabelBrushColor(hobj: integer): TColor;
begin
  with GetObj(hobj)^ do
    result := LabelBrushColor;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjLabelBrushColor(hobj: integer; v: TColor);
begin
  with GetObj(hobj)^ do
    LabelBrushColor := v;
  if hobj <> -1 then
    Update;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
{!!
<FS>TImageEnVect.ObjLabelBrushStyle

<FM>Declaration<FC>
property ObjLabelBrushStyle[hobj:integer]: TBrushStyle;

<FM>Description<FN>
ObjLabelBrushStyle is the brush style of hobj object (iekLINELABEL).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjLabelBrushStyle(hobj: integer): TBrushStyle;
begin
  with GetObj(hobj)^ do
    result := LabelBrushStyle;
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
procedure TImageEnVect.SetObjLabelBrushStyle(hobj: integer; v: TBrushStyle);
begin
  with GetObj(hobj)^ do
    LabelBrushStyle := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjBitmap

<FM>Declaration<FC>
property ObjBitmap[hobj:integer]: <A TIEBitmap>;

<FM>Description<FN>
ObjBitmap is the image (bitmap) that hobj shows. hobj is iekBITMAP type.

If <A TImageEnVect.ShareBitmaps> is true, all identical images are stored in the some memory space (this frees much memory).
However ObjBitmap always makes a copy of the specified TIEBitmap object.
hobj is a value indentifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// Copy the image of ImageEnView1 to the next object to insert
ImageEnVect1.ObjBitmap[-1]:=ImageEnView1.IEBitmap;

!!}
function TImageEnVect.GetObjBitmap(hobj: integer): TIEBitmap;
begin
  with GetObj(hobj)^ do
    result := GetBitmap(BitmapIdx);
end;

// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
// This method creates a copy of "v"
// If v is nil then Cancel previous assignment
procedure TImageEnVect.SetObjBitmap(hobj: integer; v: TIEBitmap);
begin
  SetObjBitmapNU(hobj, v);
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjSetTBitmap

<FM>Declaration<FC>
procedure ObjSetTBitmap(hobj:integer; bmp:TBitmap);

<FM>Description<FN>
ObjSetTBitmap assigns (copies) a TBitmap object to the specified image object.

!!}
procedure TImageEnVect.ObjSetTBitmap(hobj: integer; bmp: TBitmap);
var
  iebmp: TIEBitmap;
begin
  iebmp := TIEBitmap.Create;
  iebmp.EncapsulateTBitmap(bmp, false);
  SetObjBitmap(hobj, iebmp);
  FreeAndNil(iebmp);
end;

{!!
<FS>TImageEnVect.ObjBitmapAlpha

<FM>Declaration<FC>
property ObjBitmapAlpha[hobj:integer]:<A TIEBitmap>;

<FM>Description<FN>

ObjBitmapAlpha contains the alpha channel of the specified object (which must be a iekBitmap object).

You can obtain the same value using ObjBitmap[hobj].AlphaChannel.

!!}
function TImageEnVect.GetObjBitmapAlpha(hobj: integer): TIEBitmap;
begin
  with GetObj(hobj)^ do
    result := GetBitmapAlpha(BitmapIdx);
end;

procedure TImageEnVect.SetObjBitmapAlpha(hobj: integer; v: TIEBitmap);
begin
  with GetObj(hobj)^ do
    GetBitmapAlpha(BitmapIdx).assign(v);
  if hobj <> -1 then
    Update;
end;

procedure TImageEnVect.SetObjBeginShape(hobj: integer; v: TIEShape);
begin
  with GetObj(hobj)^ do
    BeginShape := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjBeginShape

<FM>Declaration<FC>
property ObjBeginShape[hobj:integer]: <A TIEShape>;

<FM>Description<FN>
Use ObjBeginShape to specify the beginning shape of hobj object (iekLINE object type).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// next object (iekLINE) has two out-arrows to the extremities
ImageEnVect1.ObjBeginShape[-1]:=iesOUTARROW;
ImageEnVect1.ObjEndShape[-1]:=iesOUTARROW;

!!}
function TImageEnVect.GetObjBeginShape(hobj: integer): TIEShape;
begin
  with GetObj(hobj)^ do
    result := BeginShape;
end;

procedure TImageEnVect.SetObjLabelPos(hobj: integer; v: TIELabelPos);
begin
  with GetObj(hobj)^ do
    LabelPosition := v;
  if hobj <> -1 then
    Update;
end;

procedure TImageEnVect.SetObjLabelBorder(hobj: integer; v: TIELabelBorder);
begin
  with GetObj(hobj)^ do
    LabelBorder := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjLabelPosition

<FM>Declaration<FC>
property ObjLabelPosition[hobj:integer]: <A TIELabelPos>;

<FM>Description<FN>
ObjLabelPosition is the label (text) position of hobj object (iekLINELABEL).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
function TImageEnVect.GetObjLabelPos(hobj: integer): TIELabelPos;
begin
  with GetObj(hobj)^ do
    result := LabelPosition;
end;

{!!
<FS>TImageEnVect.ObjLabelBorder

<FM>Declaration<FC>
property ObjLabelBorder[hobj:integer]: <A TIELabelBorder>;

<FM>Description<FN>
ObjLabelBorder is the label (text) border of hobj object (iekLINELABEL).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).
!!}
function TImageEnVect.GetObjLabelBorder(hobj: integer): TIELabelBorder;
begin
  with GetObj(hobj)^ do
    result := LabelBorder;
end;

procedure TImageEnVect.SetObjEndShape(hobj: integer; v: TIEShape);
begin
  with GetObj(hobj)^ do
    EndShape := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjEndShape

<FM>Declaration<FC>
property ObjEndShape[hobj:integer]: <A TIEShape>;

<FM>Description<FN>
ObjEndShape is the end shape of hobj object (iekLINE).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// These set the next iekLINE object sides to out-arrow
ImageEnVect1.ObjBeginShape[-1]:=iesOUTARROW;
ImageEnVect1.ObjEndShape[-1]:=iesOUTARROW;

!!}
function TImageEnVect.GetObjEndShape(hobj: integer): TIEShape;
begin
  with GetObj(hobj)^ do
    result := EndShape;
end;

procedure TImageEnVect.SetObjShapeWidth(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    ShapeWidth := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjShapeWidth

<FM>Declaration<FC>
property ObjShapeWidth[hobj:integer]: integer;

<FM>Description<FN>
ObjShapeWidth sets the shape width of iekLINE hobj object. The shape is set with ObjBeginShape and ObjEndShape properties.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjShapeWidth(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := ShapeWidth;
end;

{!!
<FS>TImageEnVect.ObjShapeHeight

<FM>Declaration<FC>
property ObjShapeHeight[hobj:integer]: integer;

<FM>Description<FN>
ObjShapeHeight sets the shape height of iekLINE hobj object. The shape is set with ObjBeginShape and ObjEndShape properties.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjShapeHeight(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := ShapeHeight;
end;

procedure TImageEnVect.SetObjShapeHeight(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    ShapeHeight := v;
  if hobj <> -1 then
    Update;
end;

// sets also pencolor
{!!
<FS>TImageEnVect.SetObjFont

<FM>Declaration<FC>
procedure SetObjFont(hobj: integer; v: TFont);

<FM>Description<FN>
SetObjFont sets the font of hobj (iekTEXT) object.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
procedure TImageEnVect.SetObjFont(hobj: integer; v: TFont);
var
  xlog: TLogFont;
begin
  with GetObj(hobj)^ do
  begin
    if LogFont = nil then
      getmem(LogFont, sizeof(TLogFont));
    GetObject(v.Handle, sizeof(TLogFont), @xlog);
    copymemory(LogFont, @xlog, sizeof(TLogFont));
    PenColor := v.Color;
  end;
  if hobj <> -1 then
    Update;
end;

// replaces 1310 with 10
function Adjust1310(const v: string): string;
var
  i: integer;
begin
  result := '';
  for i := 1 to length(v) do
    if (v[i] <> #13) then
      result := result + v[i];
end;

procedure TImageEnVect.SetObjText(hobj: integer; v: string);
var
  pobj:PIEVObject;
begin
  pobj:=GetObj(hobj);
  with pobj^ do
  begin
    RemoveMemoTextData(pobj^);
    Text := _StrDup(pchar(Adjust1310(v)));
  end;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjText

<FM>Declaration<FC>
property ObjText[hobj:integer]: string;

<FM>Description<FN>
ObjText is the text shown by hobj object (iekTEXT).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjText(hobj: integer): string;
begin
  with GetObj(hobj)^ do
    result := Text;
end;

procedure TImageEnVect.SetObjName(hobj: integer; v: string);
begin
  with GetObj(hobj)^ do
  begin
    if Name <> nil then
      freemem(Name);
    Name := _StrDup(pchar(v));
  end;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjName

<FM>Declaration<FC>
property ObjName[hobj:integer]:string

<FM>Description<FN>
ObjName is an application string for the object hobj. ImageEn doesn't use this value, but saves and loads it like other properties.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjName(hobj: integer): string;
begin
  with GetObj(hobj)^ do
    result := Name;
end;

{!!
<FS>TImageEnVect.ObjFontAngle

<FM>Declaration<FC>
property ObjFontAngle[hobj:integer]: double;

<FM>Description<FN>
ObjFontAngle is the rotation angle of iekTEXT object hobj. The angle is in degrees (positive values rotate counter clockwise).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

!!}
function TImageEnVect.GetObjFontAngle(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      result := LogFont^.lfEscapement / 10
    else
      result := 0;
end;

// like AddSelObjectEx but call Update and doesn't select an object twice
{!!
<FS>TImageEnVect.AddSelObject
                             
<FM>Declaration<FC>
procedure AddSelObject(hobj: integer);

<FM>Description<FN>
AddSelObject insert hobj object into the selected objects list.

!!}
procedure TImageEnVect.AddSelObject(hobj: integer);
begin
  if not IsSelObject(hobj) then
  begin
    AddSelObjectEx(hobj);
    Update;
  end;
end;


// Appens an object to the selected objects.
// If hobj is -2 then it represents the last inserted object
procedure TImageEnVect.AddSelObjectEx(hobj: integer);
begin
  AddSelObjectNS(hobj);
  if assigned(fOnSelectObject) then
    fOnSelectObject(Self);
end;

// Select all objects
{!!
<FS>TImageEnVect.SelAllObjects

<FM>Declaration<FC>
procedure SelAllObjects;

<FM>Description<FN>
SelAllObjects select all objects.

!!}
procedure TImageEnVect.SelAllObjects;
begin
  UnSelAllObjects;
  SelInRect(-3, 0, 0, 1000000, 1000000);
  if assigned(fOnSelectObject) then
    fOnSelectObject(Self);
  Update;
end;

// Appens object to the selected objects list.
// If hobj is -2 then it represents the last inserted object.
// This method doesn't call fOnSelectObject (this is the difference from AddSelectObject)
procedure TImageEnVect.AddSelObjectNS(hobj: integer);
var
  tmp: pintegerarray;
begin
  if hobj = -2 then
    hobj := fObjHeapCount - 1;
  if ievsSelectable in GetObj(hobj)^.Style then
  begin
    getmem(tmp, sizeof(integer) * (fSelObjCount + 1));
    copymemory(tmp, fSelObj, sizeof(integer) * fSelObjCount);
    freemem(fSelObj);
    fSelObj := tmp;
    fSelObj^[fSelObjCount] := hobj;
    inc(fSelObjCount);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Rest. true se l'oggetto specificato � selezionato
// Se hobj � -2 rappresenta l'ultimo oggetto inserito

{!!
<FS>TImageEnVect.IsSelObject

<FM>Declaration<FC>
function IsSelObject(hobj: integer): boolean;

<FM>Description<FN>
IsSelObject returns true if hobj object is selected.
Last inserted object (-1) is always selected.

!!}
function TImageEnVect.IsSelObject(hobj: integer): boolean;
var
  q: integer;
begin
  result := false;
  if hobj = -2 then
    hobj := fObjHeapCount - 1;
  for q := 0 to fSelObjCount - 1 do
    if fSelObj^[q] = hobj then
    begin
      result := true;
      break;
    end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Elimina l'oggetto specificato dalla lista di oggetti selezionati
// Se hobj � -2 rappresenta l'ultimo oggetto inserito

{!!
<FS>TImageEnVect.UnSelObject

<FM>Declaration<FC>
procedure UnSelObject(hobj: integer);

<FM>Description<FN>
UnSelObject deselects hobj object.

!!}
procedure TImageEnVect.UnSelObject(hobj: integer);
var
  tmp: pintegerarray;
  idx: integer;
begin
  if hobj = -2 then
    hobj := fObjHeapCount - 1;
  // trova oggetto
  idx := 0;
  while (idx < fSelObjCount) and (fSelObj^[idx] <> hobj) do
    inc(idx);
  if idx = fSelObjCount then
    exit; // oggetto non trovato
  // elimina oggetto idx
  dec(fSelObjCount);
  getmem(tmp, sizeof(integer) * fSelObjCount);
  // copia da 0 a idx-1
  copymemory(tmp, fSelObj, sizeof(integer) * idx);
  // copia da idx+1 a SelObjCount
  copymemory(@(tmp^[idx]), @(fSelObj^[idx + 1]), sizeof(integer) * (fSelObjCount - idx));
  freemem(fSelObj);
  fSelObj := tmp;
  if assigned(fOnSelectObject) then
    fOnSelectObject(Self);
end;

/////////////////////////////////////////////////////////////////////////////////////
// Annulla tutte le selezioni

{!!
<FS>TImageEnVect.UnSelAllObjects

<FM>Declaration<FC>
procedure UnSelAllObjects;

<FM>Description<FN>
UnSelAllObjects deselects all objects.

!!}
procedure TImageEnVect.UnSelAllObjects;
begin
  UnSelAllObjectsNU;
  Update;
end;

procedure TImageEnVect.UnSelAllObjectsNU;
begin
  freemem(fSelObj);
  fSelObj := nil;
  fSelObjCount := 0;
  if assigned(fOnSelectObject) then
    fOnSelectObject(Self);
end;

// free (or decreases reference count) bitmap in fBitmaps
procedure TImageEnVect.FreeBitmap(idx: integer);
begin
  if idx >= 0 then
  begin
    if fBitmaps^[Idx].fRefCount = 1 then
    begin
      // free bitmap
      FreeAndNil(fBitmaps^[Idx].fBitmap); // from here the cell idx is free
      fBitmaps^[Idx].fRefCount := 0;
    end
    else
      // decrease reference count
      dec(fBitmaps^[Idx].fRefCount);
  end;
end;

// Alloc a TIEVBitmap in fBitmaps.
// Find a free cell (fBitmap=nil)
// Return index of allocated object
function TImageEnVect.AllocBitmap: integer;
var
  p: PIEVBitmapArray;
begin
  for result := 0 to fBitmapsCount - 1 do
    if fBitmaps^[result].fBitmap = nil then
      exit;
  // increase fBitmaps
  getmem(p, sizeof(TIEVBitmap) * (fBitmapsCount + 1));
  copymemory(p, fBitmaps, sizeof(TIEVBitmap) * (fBitmapsCount));
  freemem(fBitmaps);
  fBitmaps := p;
  result := fBitmapsCount;
  inc(fBitmapsCount);
end;

/////////////////////////////////////////////////////////////////////////////////////
// Assegna o copia la bitmap idx all'oggetto hobj
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
// Idx pu� essere -1 per rappresentare nessuna bitmap
// NO UPDATE

procedure TImageEnVect.SetObjBitmapIdxNU(hobj: integer; idx: integer);
var
  i: integer;
begin
  with GetObj(hobj)^ do
  begin
    if BitmapIdx >= 0 then
      // libera precedente bitmap (se necessario)
      FreeBitmap(BitmapIdx);
    if idx >= 0 then
    begin
      if not fShareBitmaps then
      begin
        // non condividere, aggiungi alla lista
        i := AllocBitmap;
        fBitmaps^[i].fRefCount := 1;
        fBitmaps^[i].fBitmap := TIEBitmap.Create;
        fBitmaps^[i].fBitmap.Assign(fBitmaps^[idx].fBitmap);
        BitmapIdx := i;
      end
      else
      begin
        // condividi, aumenta reference count
        BitmapIdx := idx;
        inc(fBitmaps^[BitmapIdx].fRefCount);
      end;
    end
    else
      BitmapIdx := idx;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// hobj=-1 is the next obejct to insert
// hobj=-2 is the last object inserted
// Se v � nil, annulla precedente assegnazione
// Alpha can be nil
// NO UPDATE

procedure TImageEnVect.SetObjBitmapNU(hobj: integer; v: TIEBitmap);
var
  q: integer;
  i: integer;
begin
  with GetObj(hobj)^ do
  begin
    if BitmapIdx >= 0 then
      // libera precedente bitmap (se necessario)
      FreeBitmap(BitmapIdx);
    if v <> nil then
    begin
      if fShareBitmaps then
        q := FindBitmap(v) // cerca se bitmap � gi� presente
      else
        q := -1; // no, non cercare, non condividiamo bitmaps...
      if q = -1 then
      begin
        // no, non � presente oppure fShareBitmaps=false, aggiungi alla lista
        i := AllocBitmap;
        fBitmaps^[i].fRefCount := 1;
        fBitmaps^[i].fBitmap := TIEBitmap.Create;
        fBitmaps^[i].fBitmap.Assign(v);
        //
        BitmapIdx := i;
      end
      else
      begin
        // si, presente, aumenta reference count
        BitmapIdx := q;
        inc(fBitmaps^[BitmapIdx].fRefCount);
      end;
    end
    else
      BitmapIdx := -1;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Converte hobj in puntatore a TIEVObject
// hobj=-1 is the next object to insert (fNewObjXXXXX).
// hobj=-2 is the last object inserted
// hobj=-3 is all objects (return nil)
// hobj=-4 return nil

function TImageEnVect.GetObj(hobj: integer): PIEVObject;
begin
  case hobj of
    -1: result := @fNewObj;
    -2: result := @(fObjHeap^[fObjHeapCount - 1]);
    -3: result := nil;
    -4: result := nil;
  else
    result := @(fObjHeap^[hobj]);
  end;
end;

{!!
<FS>TImageEnVect.SetObjBitmapICO

<FM>Declaration<FC>
procedure SetObjBitmapICO(hobj: integer; ico: integer; iwidth, iheight: integer);

<FM>Description<FN>
SetObjBitmapICO sets the hobj (iekBITMAP) image as standard windows icon.
ico can be OIC_SAMPLE, OIC_HAND, OIC_QUES, OIC_BANG, OIC_NOTE, OIC_WINLOGO, OIC_WARNING, OIC_ERROR, OIC_INFORMATION (look at windows.pas).
iwidth and iheight are icon width and height.

<FM>Example<FC>

// Sets system icon OIC_HAND of 64x64 as images of next inserted object iekBITMAP
ImageEnVect1.SetObjBitmapICO(-1,OIC_HAND,64,64);

!!}
procedure TImageEnVect.SetObjBitmapICO(hobj: integer; ico: integer; iwidth, iheight: integer);
var
  hic: HICON;
  OBitmap: TBitmap;
  en: TIEBitmap;
begin
  with GetObj(hobj)^ do
  begin
    OBitmap := TBitmap.Create;
    OBitmap.PixelFormat := pf24bit;
    OBitmap.Width := iwidth;
    OBitmap.Height := iheight;
    hic := LoadImage(0, pchar(ico), IMAGE_ICON, iwidth, iheight, LR_SHARED);
    if hic <> 0 then
    begin
      DrawIconEx(OBitmap.Canvas.Handle, 0, 0, hic, iwidth, iheight, 0, 0, DI_NORMAL);
      DestroyIcon(hic);
    end;
    en := TIEBitmap.Create;
    en.EncapsulateTBitmap(OBitmap, false);
    SetObjBitmapNU(hobj, en);
    FreeAndNil(en);
    FreeAndNil(OBitmap);
  end;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.SetObjBitmapFromFile

<FM>Declaration<FC>
function SetObjBitmapFromFile(hobj:integer; const FileName:string):boolean;

<FM>Description<FN>
SetObjBitmapFromFile loads an image from FileName and assigns it to the hobj bitmap object.

It returns True if a file is successfully loaded.
This function also loads and assigns the alpha channel if present.

<FM>Example<FC>

ImageEnVect1.SetObjBitmapFromFile(-1, 'image.gif' );
ImageEnVect1.ObjKind[-1]:=iekBitmap;
ImageEnVect1.AddNewObject;
!!}
function TImageEnVect.SetObjBitmapFromFile(hobj: integer; const FileName: string): boolean;
var
  io: TImageEnIO;
  bmp: TIEBitmap;
begin
  bmp := TIEBitmap.Create;
  io := TImageEnIO.Create(self);
  io.AttachedIEBitmap := bmp;
  io.LoadFromFile(FileName);
  result := not io.Aborting;
  if result then
    SetObjBitmapNU(hobj, bmp);
  FreeAndNil(io);
  FreeAndNil(bmp);
end;

{!!
<FS>TImageEnVect.SetObjBitmapFromStream

<FM>Declaration<FC>
function SetObjBitmapFromStream(hobj: integer; Stream:TStream; FileFormat: TIOFileType): boolean;

<FM>Description<FN>
SetObjBitmapFromStream loads an image from Stream and assigns it to the hobj bitmap object.

It returns True if a file is successfully loaded.
This function also loads and assigns the alpha channel if present.

If you set FileFormat=ioUnknown then the format is autodetected.

Look also <A TImageEnVect.SetObjBitmapFromFile>.
!!}
function TImageEnVect.SetObjBitmapFromStream(hobj: integer; Stream:TStream; FileFormat: TIOFileType): boolean;
var
  io: TImageEnIO;
  bmp: TIEBitmap;
begin
  bmp := TIEBitmap.Create;
  io := TImageEnIO.Create(self);
  io.AttachedIEBitmap := bmp;
  io.LoadFromStreamFormat(Stream,FileFormat);
  result := not io.Aborting;
  if result then
    SetObjBitmapNU(hobj, bmp);
  FreeAndNil(io);
  FreeAndNil(bmp);
end;


// Disegna un grip (x,y sono coordinate del componente)
// x,y � il centro del grip, mentre la dimensione � data dalla costante fObjGripSize
// ty=0 grip quadrato
// ty=1 grip rombo
procedure TImageEnVect.DrawGrip(destcanvas: TCanvas; destiecanvas:TIECanvas; x, y: integer; ty: integer);
begin
  with destiecanvas do
  begin
    if assigned(fObjGripImage) and assigned(fObjGripImage.Graphic) then
    begin
      // draw grip image
      if assigned(fObjGripImage) and assigned(fObjGripImage.Graphic) then
        fObjGripSize:=imax( fObjGripImage.Width, fObjGripImage.Height ) div 2; // updates fObjGripSize
      destcanvas.Draw( x- fObjGripImage.Width div 2, y- fObjGripImage.Height div 2, fObjGripImage.Graphic );
    end
    else
    begin
      // paint the grip
      Pen.Width:=fObjGripPen.Width;
      Pen.Color:=fObjGripPen.Color;
      Pen.Style:=fObjGripPen.Style;
      Pen.Mode:=fObjGripPen.Mode;
      Brush.Color:=fObjGripBrush.Color;
      Brush.Style:=fObjGripBrush.Style;
      Brush.Transparency:=180;
      Pen.Transparency:=180;
      if ty = 0 then
      begin
        // normal grip
        case fObjGripShape of
          iegsBox: Rectangle(x - fObjGripSize, y - fObjGripSize, x + fObjGripSize, y + fObjGripSize);
          iegsCircle: Ellipse(x - fObjGripSize, y - fObjGripSize, x + fObjGripSize, y + fObjGripSize);
        end;
      end
      else if ty = 1 then
      begin
        // triangular grip
        pen.width := 1; // fObjGripPen.Width doesn't work with central grip
        MoveTo(x, y - fObjGripSize);
        LineTo(x + fObjGripSize, y);
        LineTo(x, y + fObjGripSize);
        LineTo(x - fObjGripSize, y);
        LineTo(x, y - fObjGripSize);
      end;
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Rest. true se la coordinata xp,yp � nel grip xg,yg

function TImageEnVect.InGrip(xg, yg, xp, yp: integer): boolean;
var
  rc: trect;
begin
  rc := rect(xg - fObjGripSize, yg - fObjGripSize, xg + fObjGripSize, yg + fObjGripSize);
  result := PtInRect(rc, point(xp, yp));
end;

/////////////////////////////////////////////////////////////////////////////////////
// Draw grips of specified object

procedure TImageEnVect.DrawObjectGrips(Canvas: TCanvas; const aobj: TIEVObject);
var
  x1, y1, x2, y2, x3, y3: integer;
  x,y:integer;
  i:integer;
  iec:TIECanvas;
begin
  // convert bitmap coordinates to client
  x1 := XBmp2Scr(aobj.x1);
  y1 := YBmp2Scr(aobj.y1);
  x2 := XBmp2Scr(aobj.x2);
  y2 := YBmp2Scr(aobj.y2);
  x3 := XBmp2Scr(aobj.x2 + 1);
  y3 := YBmp2Scr(aobj.y2 + 1);
  // adjust with pen width
  AdjustCoords(aobj, x1, y1, x2, y2, x3, y3, fZoomD100X,fZoomD100Y);
  // check rectangles intersection
  if _RectXRect(x1, y1, x2, y2, fOffX, fOffY, fOffX + fExtX, fOffY + fExtY) then
  begin
    // draw grips
    iec:=TIECanvas.Create(Canvas,true,true);
    if (ievsSelectable in aobj.Style) then  // 2.2.9
    begin
      if aobj.Kind <> iekANGLE then
      begin
        DrawGrip(Canvas, iec, x1, y1, 0);
        DrawGrip(Canvas, iec, x2, y2, 0);
        if (aobj.Kind <> iekLINE) and (aobj.Kind <> iekRULER) and (aobj.Kind <> iekLINELABEL) then
        begin
          DrawGrip(Canvas, iec, x2, y1, 0);
          DrawGrip(Canvas, iec, x1, y2, 0);
          // side grips
          DrawGrip(Canvas, iec, x1, (y1 + y2) div 2, 0); // left
          DrawGrip(Canvas, iec, x2, (y1 + y2) div 2, 0); // right
          DrawGrip(Canvas, iec, (x1 + x2) div 2, y1, 0); // top
          DrawGrip(Canvas, iec, (x1 + x2) div 2, y2, 0); // bottom
        end;
      end else
      begin
        // draw iekANGLE grips
        for i:=0 to 2 do
        begin
          x:=XBmp2Scr(aobj.AnglePoints[i].x);
          y:=YBmp2Scr(aobj.AnglePoints[i].y);
          DrawGrip(Canvas,iec,x,y,0);
        end;
      end;
    end;
    ordcor(x1, y1, x2, y2);
    if fUseCentralGrip then
      DrawGrip(Canvas, iec, x1 + ((x2 - x1 + 1) div 2), y1 + ((y2 - y1 + 1) div 2), 1);
    iec.Free;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Trova l'oggetto pi� vicino alle coordinate x e y (bitmap 100%)
// Rest. -3 se nessun oggetto trovato
// ds � la distanza di x,y dall'oggetto restituito (valore di output).
// Esclude tutti gli oggetti che sono fuori dal campo visivo
// mustbeselectable: true if the object must be selectable

function TImageEnVect.FindNearObj(x, y: integer; var ds: double; mustbeselectable: boolean): integer;
var
  q: integer;
  tds: double;
  cx1, cy1, cx2, cy2: integer;
  aobj: PIEVObject;
begin
  cx1 := trunc(fViewX * f100DZoomX);
  cy1 := trunc(fViewY * f100DZoomY);
  cx2 := trunc((fViewX + fExtX) * f100DZoomX);
  cy2 := trunc((fViewY + fExtY) * f100DZoomY);
  if cx2=0 then
    cx2:=MAXINT;
  if cy2=0 then
    cy2:=MAXINT;
  ds := 2147483647; // maximum distance
  result := -3;
  for q := fObjCount - 1 downto 0 do
  begin
    aobj := GetObj(fObj^[q]);
    with aobj^ do
    begin
      if (ievsVisible in Style) and ((ievsSelectable in Style) or not mustbeselectable) and _RectXRect(x1, y1, x2, y2, cx1, cy1, cx2, cy2) then
      begin
        // the object is visible
        tds := CalcDistPtObj(aobj, x, y);
        if tds < ds then
        begin
          ds := tds;
          result := fObj^[q];
        end;
      end;
    end;
  end;
  if (fMaxSelectionDistance > -1) then
  begin
    tds := fMaxSelectionDistance * f100DZoomX;
    if ds > tds then
      result := -3;
  end;
end;

function IEDist2Box(x,y, x1,y1,x2,y2:integer; filled:boolean):double;
begin
  result := dmin(_DistPoint2Seg(x, y, x1, y1, x2, y1),
    dmin(_DistPoint2Seg(x, y, x2, y1, x2, y2),
    dmin(_DistPoint2Seg(x, y, x2, y2, x1, y2),
    _DistPoint2Seg(x, y, x1, y2, x1, y1))));
  if filled and _InRect(x, y, x1, y1, x2, y2) then
    result := 0;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Calculate the distance (in bitmap pixels 100%) between a point and specified object
function TImageEnVect.CalcDistPtObj(Obj: PIEVObject; x, y: integer): double;
var
  zx, zy: double;
begin
  with Obj^ do
    case Kind of
      iekBITMAP, iekBOX, iekTEXT, iekMEMO, iekEXTENDED:
        begin
          result := IEDist2Box(x,y, x1,y1,x2,y2,
                    (Kind = iekBITMAP) or (Kind = iekTEXT) or (Kind = iekMEMO) or (Kind = iekEXTENDED) or ((Kind = iekBOX) and ((BrushStyle <> bsClear) or fObjBoxInnerSelectable)));
        end;
      iekLINE, iekLINELABEL:
        begin
          result := _DistPoint2Seg(x, y, x1, y1, x2, y2);
          if (PenWidth>1) then
          begin
            if result< (PenWidth/2) then
              result:=0
            else
              result:=result-(PenWidth/2);
          end;
          if Kind=iekLINELABEL then
            result := dmin( result, IEDist2Box(x,y, obj.DrawedLabelBox.Left,obj.DrawedLabelBox.Top,obj.DrawedLabelBox.Right,obj.DrawedLabelBox.Bottom,true) );
        end;
      iekRULER: result := _DistPoint2Seg(x, y, x1, y1, x2, y2);
      iekELLIPSE:
        begin
          result := _DistPoint2Ellipse(x, y, x1, y1, x2, y2, BrushStyle<>bsClear);
        end;
      iekARC: result := _DistPoint2Ellipse(x, y, x1, y1, x2, y2, false);
      iekPOLYLINE:
        begin
          CalcZxZyPolyline(Obj, zx, zy);
          if PolyClosed and (BrushStyle<>bsClear) and IEISPointInPoly2(x, y, PolyPoints, PolyPointsCount, PolyBaseX1, PolyBaseY1, x1, y1, zx, zy) then
            result := 0
          else
            result := _DistPoint2Polyline(x, y, PolyPoints, PolyPointsCount, PolyBaseX1, PolyBaseY1, x1, y1, zx, zy);
        end;
      iekANGLE:
        result := _DistPoint2Polyline(x, y, @(AnglePoints[0]), CountAnglePoints(AnglePoints), 0, 0, 0, 0, 1, 1);
    else
      result := -1; // ...it is impossible
    end;
end;

procedure TImageEnVect.DrawSelGrips(Canvas: TCanvas);
var
  q: integer;
begin
  for q := 0 to fSelObjCount - 1 do
    DrawObjectGrips(Canvas, GetObj(fSelObj^[q])^);
end;

{!!
<FS>TImageEnVect.AddNewObject

<FM>Declaration<FC>
function AddNewObject:integer;
function AddNewObject(Kind:<A TIEVObjectKind>; Rect:TRect; Color:TColor):integer; overload;

<FM>Description<FN>
AddNewObject inserts a new object and returns a handle to the object.

The second overload allows to specify object Kind, rectangle and pen color.

<FM>Example<FN>

Following three blocks of code produces the same result:

1)
<FC>h:=ImageEnVect.AddNewObject;
ImageEnVect.ObjKind[h]:=iekBOX;
ImageEnVect.SetObjRect(h, Rect(10,10,100,100));
ImageEnVect.ObjPenColor[h]:=clRed;<FN>

2)
<FC>ImageEnVect.ObjKind[-1]:=iekBOX;
ImageEnVect.SetObjRect(-1, Rect(10,10,100,100));
ImageEnVect.ObjPenColor[-1]:=clRed;
ImageEnVect.AddNewObject;<FN>

3)
<FC>ImageEnVect.AddNewObject(iekBOX, Rect(10,10,100,100), clRed);<FN>


<FM>Example<FC>

// this example paint a red line from 10, 10 inside a rectangle of 100,100
with ImageEnVect1 do begin
  hobj:=AddNewObject;	 // hobj is an integer
  ObjKind[hobj]:=iekLINE;
  ObjLeft[hobj]:=10;
  ObjTop[hobj]:=10;
  ObjWidth[hobj]:=100;
  ObjHeight[hobj]:=100;
  ObjPenColor[hobj]:=clRed;
end;

// this example paint a red line from 10,10 inside a rectangle of 100,100
// The -1 index is the next image to create
with ImageEnVect1 do begin
  ObjKind[-1]:=iekLINE;
  ObjLeft[-1]:=10;
  ObjTop[-1]:=10;
  ObjWidth[-1]:=100;
  ObjHeight[-1]:=100;
  ObjPenColor[-1]:=clRed;
  AddNewObject;
end;

// this example paint a red line from 10,10 inside a rectangle of 100,100
// The -2 index is the lastest image created
with ImageEnVect1 do begin
  AddNewObject; // first create the object, then set its properties
  ObjKind[-2]:=iekLINE;
  ObjLeft[-2]:=10;
  ObjTop[-2]:=10;
  ObjWidth[-2]:=100;
  ObjHeight[-2]:=100;
  ObjPenColor[-2]:=clRed;
end;

!!}
function TImageEnVect.AddNewObject: integer;
begin
  result := AddVObject(fNewObj);
  Update;
end;

function TImageEnVect.AddNewObject(Kind:TIEVObjectKind; Rect:TRect; Color:TColor):integer;
begin
  result := AddVObject(fNewObj);
  ObjKind[result]:=Kind;
  SetObjRect(result,Rect);
  ObjPenColor[result]:=Color;
end;

// Add the object "Obj"
// It copies all data of Obj (but not of UserData and UserDataLength)
// Increases fObjCount
// Returns the handle of the object

function TImageEnVect.AddVObject(const aObj: TIEVObject): integer;
var
  tmp: pintegerarray;
  pobj: PIEVObject;
  heap: PIEVObjectArray;
  i, l: integer;
  ci: PIECharInfo;
  //
  procedure AllocLogFont;
  begin
    with pobj^ do
      if aObj.LogFont <> nil then
      begin
        getmem(LogFont, sizeof(TLogFont));
        copymemory(LogFont, aObj.LogFont, sizeof(TLogFont));
      end;
  end;
  //
begin
  // resize array
  if (fObjCount mod ALLOCBLOCK) = 0 then
  begin
    getmem(tmp, sizeof(integer) * (fObjCount + ALLOCBLOCK + 10));
    copymemory(tmp, fObj, sizeof(integer) * fObjCount);
    freemem(fObj);
    fObj := tmp;
  end;
  // add the object to the heap
  if (fObjHeapCount mod ALLOCBLOCK) = 0 then
  begin
    getmem(heap, sizeof(TIEVObject) * (fObjHeapCount + ALLOCBLOCK + 10));
    copymemory(heap, fObjHeap, sizeof(TIEVObject) * fObjHeapCount);
    freemem(fObjHeap);
    fObjHeap := heap;
  end;
  pobj := @(fObjHeap^[fObjHeapCount]); // new object address
  copymemory(pobj, @aObj, sizeof(TIEVObject)); // copy Obj to the new object
  fObj^[fObjCount] := fObjHeapCount; // assign new object index
  result := fObjHeapCount;
  inc(fObjHeapCount);
  inc(fObjCount);
  with pobj^ do
  begin
    BitmapIdx := -1;
    Text := nil;
    LogFont := nil;
    TextFormatRef := nil;
    TextFormat := nil;
    CurvedPos := nil;
    CurvedLen := 0;
    DrawnPoints := nil;
    DrawnPointsCount := 0;
    UserData:=nil;
    UserDataLength:=0;
    AspectRatio:=aObj.AspectRatio;
    softShadow := TIEVSoftShadow.Create;
    softShadow.Enabled := aObj.softShadow.Enabled;
    softShadow.Radius := aObj.softShadow.Radius;
    softShadow.OffsetX := aObj.softShadow.OffsetX;
    softShadow.OffsetY := aObj.softShadow.OffsetY;
    softShadow.Intensity := aObj.softShadow.Intensity;
    softShadow.ShadowColor := aObj.softShadow.ShadowColor;
    if (Kind = iekEXTENDED) and assigned(extendedObject) then
    begin
      extendedObject := aObj.extendedObject.Clone;
      extendedObject.fObject := pobj;
      extendedObject.Instance( result );
    end;
    if (Kind = iekBITMAP) or ((Kind=iekMEMO) and (MemoHasBitmap)) then
      // clone the bitmap
      SetObjBitmapIdxNU(fObjHeapCount - 1, aObj.BitmapIdx);
    if (Kind = iekTEXT) or (Kind = iekLINELABEL) or (Kind = iekEXTENDED) then
    begin
      // clone text and font
      if aObj.Text <> nil then
        Text := _StrDup(aObj.Text)
      else
        Text := _StrDup(''); // set empty string
      AllocLogFont;
      if aObj.CurvedLen > 0 then
      begin
        CurvedLen := aObj.CurvedLen;
        getmem(CurvedPos, sizeof(TDPoint) * CurvedLen);
        move(aObj.CurvedPos[0], CurvedPos[0], sizeof(TDPoint) * CurvedLen);
      end;
    end;
    if Kind = iekMEMO then
    begin
      Text := _StrDup(aObj.Text);
      AllocLogFont;
      if aObj.TextFormatRef <> nil then
      begin
        l := strlen(Text);
        getmem(TextFormatRef, sizeof(integer) * (l + 1));
        move(aObj.TextFormatRef^, TextFormatRef^, sizeof(integer) * l);
        TextFormat := TList.Create;
        for i := 0 to aObj.TextFormat.Count - 1 do
        begin
          getmem(ci, sizeof(TIECharInfo));
          move(PIECharInfo(aObj.TextFormat[i])^, ci^, sizeof(TIECharInfo));
          TextFormat.Add(ci);
        end;
      end;
    end;
    if (Kind = iekRULER) or (Kind=iekANGLE) then
      AllocLogFont;
    if aObj.Name <> nil then
      Name := _StrDup(aObj.Name)
    else
      Name := _StrDup('');
    if (Kind <> iekLINE) and (Kind <> iekRULER) and (Kind <> iekPOLYLINE) and (Kind <> iekLINELABEL) then
      OrdCor(x1, y1, x2, y2);
    if Kind = iekPOLYLINE then
    begin
      PolyPointsCount := aobj.PolyPointsCount;
      getmem(PolyPoints, PolyPointsCount * sizeof(TPoint));
      copymemory(PolyPoints, aobj.PolyPoints, PolyPointsCount * sizeof(TPoint));
      PolyBaseX1 := aobj.PolyBaseX1;
      PolyBaseY1 := aobj.PolyBaseY1;
      PolyBaseX2 := aobj.PolyBaseX2;
      PolyBaseY2 := aobj.PolyBaseY2;
    end
    else
    begin
      PolyPoints := nil;
      PolyPointsCount := 0;
      PolyBaseX1 := 0;
      PolyBaseY1 := 0;
      PolyBaseX2 := 0;
      PolyBaseY2 := 0;
      move(aobj.AnglePoints[0], AnglePoints[0], 3 * sizeof(TPoint));
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Rimuove (distacca) l'oggetto "hobj"
// Non libera la memoria per l'oggetto hobj

procedure TImageEnVect.RemoveVObject(hobj: integer);
var
  tmp: pintegerarray;
  idx: integer; // indice di hobj
begin
  for idx := 0 to fObjCount - 1 do
    if fObj^[idx] = hobj then
      break;
  dec(fObjCount);
  getmem(tmp, sizeof(integer) * (fObjCount + ALLOCBLOCK + 10));
  // copia da 0 a idx-1
  copymemory(tmp, fObj, sizeof(integer) * idx);
  // copia da idx+1 a ObjCount
  copymemory(@(tmp^[idx]), @(fObj^[idx + 1]), sizeof(integer) * (fObjCount - idx));
  freemem(fObj);
  fObj := tmp;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Rimuove i dati allocati dinamicamente di tutti gli oggetti
// Gli oggetti stessi non vengono rimossi.

procedure TImageEnVect.RemoveVObjDataAll;
var
  q: integer;
begin
  for q := 0 to fObjCount - 1 do
    RemoveVObjData(GetObj(fObj^[q])^);
  freemem(fobj); // memoria array
  fObjCount := 0;
  fObj := nil;
end;

procedure TImageEnVect.RemoveMemoTextData(var obj: TIEVObject);
begin
  if obj.Text <> nil then
    freemem(obj.Text);
  obj.Text := nil;
  if obj.TextFormatRef <> nil then
    freemem(obj.TextFormatRef);
  obj.TextFormatRef := nil;
  if obj.TextFormat <> nil then
  begin
    while obj.TextFormat.Count > 0 do
    begin
      freemem(obj.TextFormat[obj.TextFormat.Count - 1]);
      obj.TextFormat.Delete(obj.TextFormat.Count - 1);
    end;
    FreeAndNil(obj.TextFormat);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Rimuove i dati allocati dinamicamente di un oggetto TIEVObject
// L'oggetto stesso non viene rimosso.

procedure TImageEnVect.RemoveVObjData(var obj: TIEVObject);
begin
  if obj.BitmapIdx >= 0 then
  begin
    // Libera dati immagine
    FreeBitmap(obj.BitmapIdx);
    obj.BitmapIdx := -1;
  end;
  // free name
  if obj.Name <> nil then
    freemem(obj.Name);
  // text and memo
  if obj.LogFont <> nil then
    freemem(obj.LogFont);
  obj.LogFont := nil;
  RemoveMemoTextData(obj);
  //
  if obj.CurvedLen > 0 then
    freemem(obj.CurvedPos);
  obj.CurvedLen := 0;
  obj.CurvedPos := nil;
  // polypoints
  if obj.PolyPoints <> nil then
    freemem(obj.PolyPoints);
  obj.PolyPoints := nil;
  obj.PolyPointsCount := 0;
  obj.PolyBaseX1 := 0;
  obj.PolyBaseY1 := 0;
  obj.PolyBaseX2 := 0;
  obj.PolyBaseY2 := 0;
  if obj.DrawnPoints <> nil then
  begin
    freemem(obj.DrawnPoints);
    obj.DrawnPoints := nil;
  end;
  obj.DrawnPointsCount := 0;
  // softshadow
  FreeAndNil(obj.softShadow);
  // extendedObject
  if assigned(obj.extendedObject) then
    FreeAndNil(obj.extendedObject);
  // User data
  if obj.UserDataLength>0 then
  begin
    freemem(obj.UserData);
    obj.UserData:=nil;
    obj.UserDataLength:=0;
  end;
end;


// Removes all objects and their data
// Frees objects heap (fObjHeap)
// Removes objects selection
{!!
<FS>TImageEnVect.RemoveAllObjects

<FM>Declaration<FC>
procedure RemoveAllObjects;

<FM>Description<FN>
RemoveAllObjects removes all objects.

!!}
procedure TImageEnVect.RemoveAllObjects;
var
  q: integer;
  NewObjBitmap:TIEBitmap;
begin
  CancelInteracts;
  //
  DoObjSaveUndo;
  // free data
  RemoveVObjDataAll;
  // free selection
  freemem(fSelObj);
  fSelObj := nil;
  fSelObjCount := 0;
  // free heap
  freemem(fObjHeap); // free objects heap
  fObjHeap := nil;
  fObjHeapCount := 0;
  // save bitmap used by fNewObj
  if (fNewObj.BitmapIdx>-1) and (fNewObj.BitmapIdx<fBitmapsCount) then
  begin
    NewObjBitmap:=fBitmaps^[ fNewObj.BitmapIdx ].fBitmap;
    fBitmaps^[ fNewObj.BitmapIdx ].fBitmap:=nil;
    fNewObj.BitmapIdx:=-1;
  end
  else
    NewObjBitmap:=nil;
  // free bitmaps
  for q := 0 to fBitmapsCount - 1 do
    if fBitmaps^[q].fBitmap <> nil then
    begin
      FreeAndNil(fBitmaps^[q].fBitmap);
    end;
  freemem(fBitmaps);
  fBitmaps := nil;
  fBitmapsCount := 0;
  // set bitmap used by fNewObj
  fNewObj.BitmapIdx:=-1;
  if NewObjBitmap<>nil then
  begin
    SetObjBitmapNU(-1, NewObjBitmap);
    FreeAndNil(NewObjBitmap);
  end;
  //
  fObjCount := 0;
  DoVectorialChanged;
  //
  Update;
end;

// changes PolyLinePoints, PolyLineCount, x1,y1,x2,y2, PolyBaseWidth, PolyBaseHeight
// x,y must be in bitmap coordinates

procedure TImageEnVect.AddPolyLinePoint(hobj: integer; X, Y: integer);
var
  nn: PPointArray;
begin
  with GetObj(hobj)^ do
    if (PolyPointsCount = 0) or (X <> PPointarray(PolyPoints)[PolyPointsCount - 1].x) or (Y <> PPointarray(PolyPoints)[PolyPointsCount - 1].Y) then
    begin
      inc(PolyPointsCount);
      getmem(nn, PolyPointsCount * sizeof(TPoint));
      move(PPointArray(PolyPoints)[0], nn[0], (PolyPointsCount - 1) * sizeof(TPoint));
      freemem(PolyPoints);
      PolyPoints := nn;
      PPointArray(PolyPoints)[PolyPointsCount - 1].x := X;
      PPointArray(PolyPoints)[PolyPointsCount - 1].y := Y;
      if X < x1 then
        x1 := X;
      if X > x2 then
        x2 := X;
      if Y < y1 then
        y1 := Y;
      if Y > y2 then
        y2 := Y;
      PolyBaseX1 := x1;
      PolyBaseY1 := y1;
      PolyBaseX2 := x2;
      PolyBaseY2 := y2;
    end;
end;

procedure CalcAngleBox(AnglePoints: array of TPoint; var x1, y1, x2, y2: integer);
var
  xc, yc, mx, my: integer;
begin
  x1 := 1000000;
  y1 := 1000000;
  x2 := -1000000;
  y2 := -1000000;
  xc := AnglePoints[1].x;
  yc := AnglePoints[1].y;
  mx := abs(xc - imax(AnglePoints[0].x, AnglePoints[2].x));
  my := abs(yc - imax(AnglePoints[0].y, AnglePoints[2].y));
  x1 := xc - mx;
  y1 := yc - my;
  x2 := xc + mx;
  y2 := yc + my;
end;

// From TImageEnView:
//	fHSX0	: starting mousedown X coordinate
// 	fHSY0 : starting mousedown Y coordinate
procedure TImageEnVect.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  nobj, q: integer;
  xx, yy: integer;
  ds: double;
  CallUserSelectObject:boolean;
  ix,iy:integer;
begin
  inherited;
  fDoubleClicking:=(ssDouble in Shift);
  ix := ilimit(x, fOffX, fOffX + fExtX - 1);
  iy := ilimit(y, fOffY, fOffY + fExtY - 1);
  fSavedUndo:=false;
  if (Button = mbLeft) then
  begin

    q:=fTextEditing;
    RemoveTextEdit;
    fTextEditing := -1;
    if q>-1 then
      Update; // needed to update memo content when UnStampMode is active and you click out of memo

    fCurPolyLineIntraGrip := -1;

    fVectorialChanged:=false;
    DoObjSaveUndo; // this will be removed if fVectorialChanged will remain false, at mouseup

    if miPutLine in fMouseInteractVt then
      fInserting := iekLINE
    else if miPutLineLabel in fMouseInteractVt then
      fInserting := iekLINELABEL
    else if miPutRuler in fMouseInteractVt then
      fInserting := iekRULER
    else if miPutBox in fMouseInteractVt then
      fInserting := iekBOX
    else if miPutEllipse in fMouseInteractVt then
      fInserting := iekELLIPSE
    else if miPutBitmap in fMouseInteractVt then
      fInserting := iekBITMAP
    else if miPutText in fMouseInteractVt then
      fInserting := iekTEXT
    else if miPutMemo in fMouseInteractVt then
      fInserting := iekMEMO
    else if miDragLen in fMouseInteractVt then
      fInserting := iekLINE
    else if miPutExtendedObject in fMouseInteractVt then
      fInserting := iekEXTENDED
    else if (miPutAngle in fMouseInteractVt) and (not (ssDouble in Shift))  then
    begin
      if (fInserting <> iekANGLE) and (not (ssDouble in Shift)) then
      begin
        // begin iekANGLE inserting
        fInserting := iekANGLE;
        xx := xScr2Bmp(x);
        yy := yScr2Bmp(y);
        with fNewObj do
        begin
          Kind := iekANGLE;
          AnglePoints[0] := Point(xx, yy);
          AnglePoints[1] := Point(-1000000, -1000000);
          AnglePoints[2] := Point(-1000000, -1000000);
          x1 := 1000000;
          y1 := 1000000;
          x2 := -1000000;
          y2 := -1000000;
        end;
        fInsertingAngleObject := AddVObject(fNewObj);
        UnSelAllObjects;
        Update;
      end
      else
      begin
        // continue iekANGLE inserting
        with GetObj(fInsertingAngleObject)^ do
        begin

          xx := xScr2Bmp(x);
          yy := yScr2Bmp(y);
          if AnglePoints[1].x = -1000000 then
          begin
            if (ssCtrl in Shift) then
            begin
              _CastPolySelCC(AnglePoints[0].x, AnglePoints[0].y, xx, yy);
              fHSX0:=xBmp2Scr(xx);
              fHSY0:=yBmp2Scr(yy);
            end;
            AnglePoints[1] := Point(xx, yy);
          end
          else
          begin
            // finalize iekANGLE inserting
            if (ssCtrl in Shift) then
              _CastPolySelCC(AnglePoints[1].x, AnglePoints[1].y, xx, yy);
            AnglePoints[2] := Point(xx, yy);
            CalcAngleBox(AnglePoints, x1, y1, x2, y2);

            // this avoid newobject to have wrong values
            fNewObj.x1:=x1;
            fNewObj.y1:=y1;
            fNewObj.x2:=x2;
            fNewObj.y2:=y2;

            AddSelObjectEx(-2);
            DoVectorialChanged;
            DoNewObject(fObjHeapCount - 1);
            fInserting := iekNONE;
          end;

        end;
        Update;
      end;
    end
    else if miPutPolyLine in fMouseInteractVt then
    begin
      if not fAllowOutOfBitmapPolylines then
      begin
        x:=ix;
        y:=iy;
      end;
      if fInserting <> iekPOLYLINE then
      begin
        // begin iekPOLYLINE inserting
        fInserting := iekPOLYLINE;
        with fNewObj do
        begin
          Kind := iekPOLYLINE;
          x1 := 1000000;
          y1 := 1000000;
          x2 := -1000000;
          y2 := -1000000;
        end;
        fVectorialChanged := true;  // want Undo for this action
        fInsertingPolylineObject := AddVObject(fNewObj);
        fInsertingPolylineLastX := X;
        fInsertingPolylineLastY := Y;
        AddPolyLinePoint(fInsertingPolylineObject, xScr2Bmp(X), yScr2Bmp(Y));
        UnSelAllObjects;
        Update;
      end
      else
      begin
        // continue iekPOLYLINE inserting
        if (ssCtrl in Shift) then
        begin
          _CastPolySelCC(fInsertingPolylineLastX, fInsertingPolylineLastY, X, Y);
          fHSX0:=X;
          fHSY0:=Y;
        end;
        fInsertingPolylineLastX := X;
        fInsertingPolylineLastY := Y;
        AddPolyLinePoint(fInsertingPolylineObject, xScr2Bmp(X), yScr2Bmp(Y));
        if (ssDouble in Shift) and (fPolylineEndingMode=ieemDoubleClick) then
        begin
          // double click, finalize the polyline inserting
          with GetObj(fInsertingPolylineObject)^ do
          begin
            fNewObj.x1 := x1;
            fNewObj.y1 := y1;
            fNewObj.x2 := x2;
            fNewObj.y2 := y2;
          end;
          AddSelObjectEx(-2);
          DoVectorialChanged;
          fVectorialChanged := false; // don't want Undo for this action
          DoNewObject(fObjHeapCount - 1);
          fInserting := iekNONE;
        end;
        Update;
      end;
    end
    else if miEditPolyLine in fMouseInteractVt then
    begin
      if not fAllowOutOfBitmapPolylines then
      begin
        x:=ix;
        y:=iy;
      end;
      fCurPolylineGrip := FindPolyLinePoint(x, y);
      if fCurPolylineGrip = -1 then
        fCurPolylineIntraGrip := FindPolyLineIntraPoint(x, y)
      else
        fCurPolylineIntraGrip := -1;
    end
    else if miObjectSelect in fMouseInteractVt then
    begin
      if (ssDouble in Shift) then
      begin
        // double click
        xx := XScr2Bmp(x);
        yy := YScr2Bmp(y);
        nobj := FindNearObj(xx, yy, ds, true);
        if nobj >= 0 then
          DoObjectDblClick(nobj);
        if (GetObj(nobj) <> nil) and ((GetObj(nobj)^.Kind = iekTEXT) or (GetObj(nobj)^.Kind = iekMEMO)) and (ds = 0) then
        begin
          // double click on iekTEXT or iekMEMO object
          // enables text modify
          DrawSelGrips(Canvas);
          // object selection
          for q:=0 to fSelObjCount-1 do
            if fSelObj[q]<>nobj then
              DoUserDeselectObject(fSelObj[q]);
          CallUserSelectObject:=not IsSelObject(nobj);
          UnSelAllObjects;
          AddSelObjectEx(nobj);
          if CallUserSelectObject then
            DoUserSelectObject(nobj);
          DrawSelGrips(Canvas);
          //
          fTextEditing := nobj;
          ActivateTextEdit;
          Update;
        end;
      end
      else
      begin
        FindSelGrip(x, y, fGripping);
        if ((fGripping = iegrNone) or (fGripping = iegrTranslation)) and fSelectOnMouseDown then
        begin
          MouseSelect(Shift, x, y, true);
          FindSelGrip(x, y, fGripping);
        end;
        if fGripping <> iegrNone then
        begin
          for q := 0 to fSelObjCount - 1 do
            with GetObj(fSelObj^[q])^ do
            begin
              lx1 := x1;
              ly1 := y1;
              lx2 := x2;
              ly2 := y2;
            end;
        end;
      end;

      // extended object mouse down
      nobj := FindObjectAt(X,Y,ds);
      if (nobj>-1) and (ds=0) and (GetObj(nobj)^.Kind=iekEXTENDED) and assigned(GetObj(nobj)^.extendedObject) then
        GetObj(nobj)^.extendedObject.MouseDown(Button,Shift,X,Y);

    end;
    fVMoveX := x;
    fVMoveY := y;
    flx := 0;
    fly := 0;
  end;
end;

// update Hint if present

procedure TImageEnVect.UpdateHint(x, y: integer);
begin
  HintRestore;
  HintShow(x, y);
end;

procedure TImageEnVect.HintRestore;
begin
  if fShowHint and (fHintSaveBitmap.Width > 1) then
  begin
    Canvas.Draw(fHintX, fHintY, fHintSaveBitmap);
    fHintSaveBitmap.Width := 1; // this invalidates the hint
  end;
end;

procedure TImageEnVect.HintShow(x, y: integer);
var
  ss: string;
  vv: double;
  dx, dy: double;
  lx, ly: double;
begin
  if fShowHint then
  begin
    if x = -1000000 then
      x := fHintX;
    if y = -1000000 then
      y := fHintY;
    if x < 0 then
      x := 0;
    if y < 0 then
      y := 0;
    if (miArea in fMouseInteractVt) then
    begin
      // AREA
      vv := GetSelectionArea;
      if vv = 0 then
        vv := fLastHintValue;
      fLastHintValue := vv;
      ss := floattostrf(vv, ffFixed, fFloatPrecision, fFloatDigits) + ' ' + strunits[ord(fMUnit)] + chr(178);
      if assigned(fOnMeasureHint) then
        fOnMeasureHint(self, ss, vv);
    end
    else if (miLineLen in fMouseInteractVt) then
    begin
      // PERIMETER
      vv := GetSelectionLen;
      if vv = 0 then
        vv := fLastHintValue;
      fLastHintValue := vv;
      ss := floattostrf(vv, ffFixed, fFloatPrecision, fFloatDigits) + ' ' + strunits[ord(fMUnit)];
      if assigned(fOnMeasureHint) then
        fOnMeasureHint(self, ss, vv);
    end
    else if (miDragLen in fMouseInteractVt) then
    begin
      // LINE LEN
      dx := fCoefX * f100DZoomX;
      dy := fCoefY * f100DZoomY;
      lx := (x - fHSX0 + 1) * dx;
      ly := (y - fHSY0 + 1) * dy;
      vv := Sqrt(lx * lx + ly * ly);
      if vv = 0 then
        vv := fLastHintValue;
      fLastHintValue := vv;
      ss := floattostrf(vv, ffFixed, fFloatPrecision, fFloatDigits) + ' ' + strunits[ord(fMUnit)];
      if assigned(fOnMeasureHint) then
        fOnMeasureHint(self, ss, vv);
    end;
    IEDrawHint(Canvas, x, y, ss, fMeasureHintFont, fMeasureHintBrush, fHintSaveBitmap, ClientWidth, ClientHeight, fMeasureHintBorder1, fMeasureHintBorder2);
    fHintX := x;
    fHintY := y;
  end;
end;

// of selected polyline
// -1 no grip

function TImageEnVect.FindPolylinePoint(x, y: integer): integer;
var
  i: integer;
  pobj: PIEVObject;
  pts: ppointarray;
begin
  result := -1;
  if (fSelObjCount = 1) then
  begin
    pobj := GetObj(fSelObj^[0]);
    if (pobj^.Kind = iekPOLYLINE) then
      with pobj^ do
        for i := 0 to DrawnPointsCount - 1 do
        begin
          pts := ppointarray(DrawnPoints);
          if _InRect(x, y, pts[i].x - POLYLINEGDIM, pts[i].y - POLYLINEGDIM, pts[i].x + POLYLINEGDIM, pts[i].y + POLYLINEGDIM) then
          begin
            result := i;
            break;
          end;
        end;
  end;
end;

// of selected polyline
// -1 no grip

function TImageEnVect.FindPolylineIntraPoint(x, y: integer): integer;
var
  i: integer;
  pobj: PIEVObject;
  pts: ppointarray;
  d: double;
begin
  result := -1;
  if (fSelObjCount = 1) then
  begin
    pobj := GetObj(fSelObj^[0]);
    if (pobj^.Kind = iekPOLYLINE) then
      with pobj^ do
      begin
        pts := ppointarray(DrawnPoints);
        for i := 0 to DrawnPointsCount - 2 do
        begin
          d := _DistPoint2Seg(x, y, pts[i].x, pts[i].y, pts[i + 1].x, pts[i + 1].y);
          if d < 1.5 then
          begin
            result := i;
            exit;
          end;
        end;
        if PolyClosed then
        begin
          d := _DistPoint2Seg(x, y, pts[DrawnPointsCount - 1].x, pts[DrawnPointsCount - 1].y, pts[0].x, pts[0].y);
          if d < 1.5 then
            result := DrawnPointsCount - 1;
        end;
      end;
  end;
end;

// returns the overall rectangle of all selected objects
function TImageEnVect.GetSelectedObjectsRect:TRect;
var
  q:integer;
begin
  result:=Rect(fIEBitmap.Width,fIEBitmap.Height,0,0);
  for q := 0 to fSelObjCount - 1 do
    with GetObj(fSelObj^[q])^ do
    begin
      result.Left   := imin(imin(x1,result.Left),x2);
      result.Top    := imin(imin(y1,result.Top),y2);
      result.Right  := imax(imax(x2,result.Right),x1);
      result.Bottom := imax(imax(y2,result.Bottom),y1);
    end;
end;


procedure TImageEnVect.MouseMove(Shift: TShiftState; X, Y: Integer);
var
  dx: integer;
  q, ox, oy, lx, ly: integer;
  nobj: integer;
  xx, yy: integer;
  ds: double;
  ux1, uy1, ux2, uy2: integer;
  orect:TRect;
  asratio:boolean;
  gg:TIEVGripping;
  tempPoint: TPoint;

  function Sizeable:boolean;
  begin
    if not (ievsSizeable in fNewObj.Style) then
    begin
      fHSX0:=X;
      fHSY0:=Y;
      fVMoveX:=X;
      fVMoveY:=Y;
      result:=false;
    end
    else
      result:=true;
  end;

  // verify that orect+ox+oy is inside the bitmap
  function IsORectInsideBitmap:boolean;
  begin
    result:= (orect.Left+ox>=0) and (orect.Left+ox<fIEBitmap.Width) and
       (orect.Top+oy>=0) and (orect.Top+oy<fIEBitmap.Height) and
       (orect.Right+ox<fIEBitmap.Width) and
       (orect.Bottom+oy<fIEBitmap.Height);
  end;

begin

  if fDoubleClicking then
  begin
    fDoubleClicking:=false;
    exit;
  end;

  HintRestore;
  inherited;

  // adjust point
  fMovX := x;
  fMovY := y;
  x := ilimit(x, fOffX, fOffX + fExtX - 1);
  y := ilimit(y, fOffY, fOffY + fExtY - 1);
  if MouseCapture then
  begin

    // inside mouse capture

    if fInserting <> iekNONE then
    begin
      fVStable := 1;
      // inserting objects
      case fInserting of
        iekLINE, iekLINELABEL:
          begin
            if Sizeable then
            begin
              if (miDragLen in fMouseInteractVt) then
              begin
                x := fMovX;
                y := fMovY;
                fShowHint := true;
              end;
              DrawLineInserting; // remove old line
              MouseMoveScroll;
              if (ssCtrl in Shift) then
                _CastPolySelCC(fHSX0, fHSY0, x, y);
              fVMoveX := X;
              fVMoveY := Y;
              DrawLineInserting; // draw new line
            end;
          end;
        iekRULER:
          begin
            if Sizeable then
            begin
              MouseMoveScroll;
              if (ssCtrl in Shift) then
                _CastPolySelCC(fHSX0, fHSY0, x, y);
              fVMoveX := X;
              fVMoveY := Y;
              Paint;
              DrawRulerInserting;
            end;
          end;
        iekANGLE:
          begin
            MouseMoveScroll;
            fVMoveX := X;
            fVMoveY := Y;
            Paint;
            DrawAngleInserting;
          end;
        iekBOX:
          begin
            if Sizeable then
            begin
              DrawBoxInserting;
              MouseMoveScroll;
              if (ssCtrl in Shift) then
              begin
                // square (pressing CTRL)
                if abs(fHSX0 - X) > abs(fHSY0 - Y) then
                  dx := X - fHSX0
                else
                  dx := Y - fHSY0;
                fVMoveX := fHSX0 + dx;
                fVMoveY := fHSY0 + dx;
              end
              else
              begin
                fVMoveX := X;
                fVMoveY := Y;
              end;
              DrawBoxInserting;
            end;
          end;
        iekELLIPSE:
          begin
            if Sizeable then
            begin
              DrawEllipseInserting;
              MouseMoveScroll;
              if (ssCtrl in Shift) then
              begin
                // circle (pressing CTRL)
                if abs(fHSX0 - X) > abs(fHSY0 - Y) then
                  dx := X - fHSX0
                else
                  dx := Y - fHSY0;
                fVMoveX := fHSX0 + dx;
                fVMoveY := fHSY0 + dx;
              end
              else
              begin
                fVMoveX := X;
                fVMoveY := Y;
              end;
              DrawEllipseInserting;
            end;
          end;
        iekBITMAP:
          begin
            if Sizeable then
            begin
              DrawBoxInserting;
              MouseMoveScroll;
              fVMoveX := X;
              fVMoveY := Y;

              if ((ssAlt in Shift) or fForceALTkey or fNewObj.AspectRatio) and (fNewObj.BitmapIdx>=0) then
                fVMoveY := trunc( fHSY0 + (GetBitmap(fNewObj.BitmapIdx).Height/GetBitmap(fNewObj.BitmapIdx).Width) * (fVMoveX-fHSX0) );

              DrawBoxInserting;
            end;
          end;
        iekTEXT, iekMEMO:
          begin
            if Sizeable then
            begin
              DrawBoxInserting;
              MouseMoveScroll;
              fVMoveX := X;
              fVMoveY := Y;
              DrawBoxInserting;
            end;
          end;
        iekPOLYLINE:
          begin
            // continue iekPOLYLINE inserting
            if not fAllowOutOfBitmapPolylines then
            begin
              fMovX:=X;
              fMovY:=Y;
            end;
            AddPolyLinePoint(fInsertingPolylineObject, xScr2Bmp(fMovX), yScr2Bmp(fMovY));
            fInsertingPolylineLastX := fMovX;
            fInsertingPolylineLastY := fMovY;
            Update;
          end;
        iekEXTENDED:
          begin
            if Sizeable then
            begin
              DrawBoxInserting;
              MouseMoveScroll;
              if (ssCtrl in Shift) then
              begin
                // square (pressing CTRL)
                if abs(fHSX0 - X) > abs(fHSY0 - Y) then
                  dx := X - fHSX0
                else
                  dx := Y - fHSY0;
                fVMoveX := fHSX0 + dx;
                fVMoveY := fHSY0 + dx;
              end
              else
              begin
                fVMoveX := X;
                fVMoveY := Y;
              end;
              DrawBoxInserting;
            end;
          end;
      end;
    end
    else if fGripping <> iegrNone then
    begin
      // changes object coordinates
      DoBeforeVectorialChange;
      fVStable := 1;
      MouseMoveScroll;

      if fSelObjCount>0 then
        with GetObj(fSelObj^[0])^ do
          if (ssCtrl in Shift) and ((Kind=iekLINE) or (Kind=iekRULER) or (Kind=iekLINELABEL)) then
          begin
            if (fGripping=iegrTopLeft) then
            begin
              _CastPolySelCC(x2, y2, x1, y1);
              _CastPolySelCC(x2, y2, x, y);
            end;
            if (fGripping=iegrBottomRight) then
            begin
              _CastPolySelCC(x1, y1, x2, y2);
              _CastPolySelCC(x1, y1, x, y);
            end;
          end;

      ox := trunc(( x - fHSX0 ) * f100DZoomX);
      oy := trunc(( y - fHSY0 ) * f100DZoomY);
      lx := ox;
      ly := oy;
      ox := ox - flx;
      oy := oy - fly;
      flx := lx;
      fly := ly;
      orect := GetSelectedObjectsRect;

      for q := 0 to fSelObjCount - 1 do
        with GetObj(fSelObj^[q])^ do
        begin
          asratio:=(ssAlt in Shift) or fForceALTkey or AspectRatio;
          DoObjectMoveResize(fSelObj^[q], fGripping, ox, oy);
          if (ievsSizeable in Style) then
            case fGripping of
              iegrTopLeft:     ChangeObjectCoor(fSelObj^[q], ox, oy, 0, 0, asratio, 1);
              iegrBottomRight: ChangeObjectCoor(fSelObj^[q], 0, 0, ox, oy, asratio, 2);
              iegrTopRight:    ChangeObjectCoor(fSelObj^[q], 0, oy, ox, 0, asratio, 4);
              iegrBottomLeft:  ChangeObjectCoor(fSelObj^[q], ox, 0, 0, oy, asratio, 5);

              iegrLeft:   ChangeObjectCoor(fSelObj^[q], ox, 0, 0, 0, asratio, 6);
              iegrRight:  ChangeObjectCoor(fSelObj^[q], 0, 0, ox, 0, asratio, 7);
              iegrUpper:  ChangeObjectCoor(fSelObj^[q], 0, oy, 0, 0, asratio, 8);
              iegrBottom: ChangeObjectCoor(fSelObj^[q], 0, 0, 0, oy, asratio, 9);

              iegrAngle0:
                begin
                  tempPoint := GetObj(fSelobj^[q])^.AnglePoints[0];
                  inc(tempPoint.X, ox);
                  inc(tempPoint.Y, oy);
                  GetObj(fSelobj^[q])^.AnglePoints[0] := tempPoint;
                end;
              iegrAngle1:
                begin
                  tempPoint := GetObj(fSelobj^[q])^.AnglePoints[1];
                  inc(tempPoint.X, ox);
                  inc(tempPoint.Y, oy);
                  GetObj(fSelobj^[q])^.AnglePoints[1] := tempPoint;
                end;
              iegrAngle2:
                begin
                  tempPoint := GetObj(fSelobj^[q])^.AnglePoints[2];
                  inc(tempPoint.X, ox);
                  inc(tempPoint.Y, oy);
                  GetObj(fSelobj^[q])^.AnglePoints[2] := tempPoint;
                end;
            end;
          if (ievsMoveable in Style) and (fGripping = iegrTranslation) and (IsORectInsideBitmap or fAllowOutOfBitmapMoving) then
            TraslateObject(fSelObj^[q], ox, oy);
        end;
      Update;
    end
    else if miEditPolyLine in fMouseInteractVt then
    begin
      MouseMoveScroll;
      if fCurPolylineGrip > -1 then
      begin
        ox := trunc((x - fHSX0) * f100DZoomX);
        oy := trunc((y - fHSY0) * f100DZoomY);
        lx := ox;
        ly := oy;
        ox := ox - flx;
        oy := oy - fly;
        flx := lx;
        fly := ly;
        with GetObj(fSelObj^[0])^ do
        begin
          ux1 := VXBmp2Scr(x1 - 8, true, 1);
          uy1 := VYBmp2Scr(y1 - 8, true, 1);
          ux2 := VXBmp2Scr(x2 + 8, true, 1);
          uy2 := VYBmp2Scr(y2 + 8, true, 1);
          with ppointarray(PolyPoints)^[fCurPolylineGrip] do
          begin
            inc(x, ox);
            inc(y, oy);
          end;
          RecalcPolylineBox(GetObj(fSelObj^[0]));
          ux1 := imin(ux1, VXBmp2Scr(x1 - 8, true, 1));
          uy1 := imin(uy1, VYBmp2Scr(y1 - 8, true, 1));
          ux2 := imax(ux2, VXBmp2Scr(x2 + 8, true, 1));
          uy2 := imax(uy2, VYBmp2Scr(y2 + 8, true, 1));
        end;
        UpdateRect(rect(ux1, uy1, ux2, uy2));
      end;
    end
    else
    begin
      // no objects to change and no objects to insert
      if (miObjectSelect in fMouseInteractVt) and fEnableRangeObjectsSelection then
      begin
        // selecting more objects with rectangle selection
        DrawBoxInserting;
        MouseMoveScroll;
        fVMoveX := X;
        fVMoveY := Y;
        DrawSelGrips(Canvas);
        if not (ssShift in Shift) then
          UnSelAllObjectsNU;
        ox := XScr2Bmp(fHSX0);
        oy := YScr2Bmp(fHSY0);
        lx := XScr2Bmp(fVMoveX);
        ly := YScr2Bmp(fVMoveY);
        OrdCor(ox, oy, lx, ly);
        SelInRect(-3, ox, oy, lx, ly);
        if assigned(fOnSelectObject) then
          fOnSelectObject(Self);
        DrawSelGrips(Canvas);
        DrawBoxInserting;
      end;
    end;
  end
  else
  begin

    // not mouse capture

    if fInserting = iekPOLYLINE then
    begin
      // inserting Polyline, show a line from last clicked point to the current
      DrawLineInserting;
      MouseMoveScroll;
      if (ssCtrl in Shift) then
        _CastPolySelCC(fInsertingPolylineLastX, fInsertingPolylineLastY, fMovx, fMovy);
      fVMoveX := fMovX;
      fVMoveY := fMovY;
      fHSX0 := fInsertingPolylineLastX;
      fHSY0 := fInsertingPolylineLastY;
      DrawLineInserting;
      if (miDragLen in fMouseInteractVt) then
        fShowHint := True;
    end
    else if fInserting = iekANGLE then
    begin
      // inserting angle
      MouseMoveScroll;
      if (ssCtrl in Shift) then
      begin
        _CastPolySelCC(fHSX0, fHSY0, x, y);
      end;
      fVMoveX := X;
      fVMoveY := Y;
      Paint;
      DrawAngleInserting;
    end
    else
    begin
      xx := xScr2Bmp(x);
      yy := yScr2Bmp(y);
      nobj := FindNearObj(xx, yy, ds, false);
      if nobj >= 0 then
        DoObjectOver(nobj);
    end;
    if miEditPolyLine in fMouseInteractVt then
    begin
      if FindPolyLinePoint(x, y) > -1 then
      begin
        if ssCtrl in Shift then
          // remove cursor
          SetTempCursor(1792)
        else
          // move cursor
          SetTempCursor(1790);
      end
      else if FindPolyLineIntraPoint(x, y) > -1 then
        SetTempCursor(1791)
      else
        RestoreCursor;
    end;
    if miObjectSelect in fMouseInteractVt then
    begin
      FindSelGrip(x, y, gg);
      if gg <> iegrNone then
      begin
        case gg of
          iegrTopLeft:     SetTempCursor(1786);
          iegrBottomRight: SetTempCursor(1786);
          iegrTranslation: SetTempCursor(1790);
          iegrTopRight:    SetTempCursor(1788);
          iegrBottomLeft:  SetTempCursor(1788);
          iegrLeft:        SetTempCursor(1789);
          iegrRight:       SetTempCursor(1789);
          iegrUpper:       SetTempCursor(1787);
          iegrBottom:      SetTempCursor(1787);
          iegrAngle0,
          iegrAngle1,
          iegrAngle2:      SetTempCursor(1788);
        end;
      end
      else
        RestoreCursor;
    end;
  end;
  HintRestore;
  HintShow(fMovX, fMovY);

  // extended object mouse move
  nobj := FindObjectAt(X,Y,ds);
  if ds<>0 then
    nobj:=-1;
  if (fMouseOver>-1) and (nobj<>fMouseOver) and (GetObj(fMouseOver)^.Kind=iekEXTENDED) and assigned(GetObj(fMouseOver)^.extendedObject) then
    GetObj(fMouseOver)^.extendedObject.MouseLeave;
  if (nobj<>fMouseOver) and (nobj>-1) and (GetObj(nobj)^.Kind=iekEXTENDED) and assigned(GetObj(nobj)^.extendedObject) then
    GetObj(nobj)^.extendedObject.MouseEnter;
  fMouseOver:=nobj;
  if (nobj>-1) and (ds=0) and (GetObj(nobj)^.Kind=iekEXTENDED) and assigned(GetObj(nobj)^.extendedObject) then
    GetObj(nobj)^.extendedObject.MouseMove(Shift,X,Y);

end;

procedure TImageEnVect.MouseSelect(Shift: TShiftState; x, y: integer; MouseDown:boolean);
var
  xx, yy, q: integer;
  ds: double;
  nobj: integer;
  WasSelected:boolean;
begin
  xx := xScr2Bmp(x);
  yy := yScr2Bmp(y);
  nobj := FindNearObj(xx, yy, ds, true);
  if GetObj(nobj) <> nil then
  begin
    // found object (click on/near the object)
    WasSelected:=IsSelObject(nobj);
    fSelectOnMouseDown_WasSelected:=WasSelected and fSelectOnMouseDown and MouseDown;
    if fSelectOnMouseDown_WasSelected then
      // Mousedown on object already selected.
      // This because the object could be moved or unselected,
      // and we will know this only on mouseup
      exit;
    DrawSelGrips(Canvas);
    if WasSelected then
    begin
      // already selected
      if (ssShift in Shift) then
      begin
        // SHIFT pressed, then deselect
        DoUserDeselectObject(nobj);
        UnSelObject(nobj);
      end
      else
      begin
        // SHIFT not pressed, then release selected
        for q:=0 to fSelObjCount-1 do
          if fSelObj[q]<>nobj then
            DoUserDeselectObject(fSelObj[q]);
        UnSelAllObjects;
        AddSelObjectEx(nobj);
      end;
    end
    else
    begin
      // to select
      if not (ssShift in Shift) then
      begin
        for q:=0 to fSelObjCount-1 do
          DoUserDeselectObject(fSelObj[q]);
        UnSelAllObjects; // deselect all (SHIFT not pressed)
      end;
      AddSelObjectEx(nobj); // select object
      DoUserSelectObject(nobj);
    end;
    DrawSelGrips(Canvas);
  end
  else if not (ssShift in Shift) then
  begin
    for q:=0 to fSelObjCount-1 do
      DoUserDeselectObject(fSelObj[q]);
    UnSelAllObjects;
  end;
end;

procedure TImageEnVect.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  xx, yy: integer;
  pts: ppointarray;
  zx,zy:double;
  stamping:boolean;
  i, nobj:integer;
  d:double;
begin
  inherited;
  fDoubleClicking:=(ssDouble in Shift);
  stamping:= (X=fHSX0) and (Y=fHSY0);

  if ((fInserting <> iekPOLYLINE) or (fPolylineEndingMode=ieemMouseUp)) and (fInserting <> iekANGLE) and (Button = mbLeft) then
  begin
    if (stamping and not (miUnStampMode in fMouseInteractVt)) or (not stamping) or (miObjectSelect in fMouseInteractVt) or (miLineLen in fMouseInteractVt) or (miArea in fMouseInteractVt) then
    begin
      if fTextEditing >= 0 then
        exit;
      if (fInserting <> iekNONE) then
      begin
        with fNewObj do
        begin
          // get object coordinates related at bitmap 100%
          if (fHSX0 <> fVMoveX) or (fHSY0 <> fVMoveY) then
          begin
            x1 := xScr2Bmp(fHSX0);
            y1 := yScr2Bmp(fHSY0);
            x2 := xScr2Bmp(fVMoveX);
            y2 := yScr2Bmp(fVMoveY);
          end
          else
          begin
            // get previous object sizes, but changes the position
            xx := x2 - x1;
            yy := y2 - y1;
            if fCenterNewObjects then
            begin
              x1 := xScr2Bmp(fHSX0) - (xx div 2);
              y1 := yScr2Bmp(fHSY0) - (yy div 2);
            end
            else
            begin
              x1 := xScr2Bmp(fHSX0);
              y1 := yScr2Bmp(fHSY0);
            end;
            x2 := x1 + xx;
            y2 := y1 + yy;
          end;
          Kind := fInserting;
        end;
        if fInserting=iekPOLYLINE then
        begin
          with GetObj(fInsertingPolylineObject)^ do
          begin
            fNewObj.x1 := x1;
            fNewObj.y1 := y1;
            fNewObj.x2 := x2;
            fNewObj.y2 := y2;
          end;
        end;
        if not (miDragLen in fMouseInteractVt) then
        begin
          DoBeforeVectorialChange;
          AddVObject(fNewObj);
          UnSelAllObjects;
          DoNewObject(fObjHeapCount - 1);
          AddSelObjectEx(-2);
          fVectorialChanged:=true;  // we want Undo
          if fObjEditOnNewText and ((fNewObj.Kind = iekTEXT) or (fNewObj.Kind = iekMEMO)) then
          begin
            // just added a text object, go to at inserting text mode
            fTextEditing := fObjHeapCount - 1;
            ActivateTextEdit;
          end
          else
            DoVectorialChanged;
        end
        else
        begin
          HintRestore;
          fShowHint := False;
          if assigned(fOnDragLenEnd) then
            fOnDragLenEnd(Self, fLastHintValue);
        end;
      end
      else if ((fGripping = iegrNone) or ((fGripping=iegrTranslation) and stamping)) and
        ((miObjectSelect in fMouseInteractVt) or (miEditPolyLine in fMouseInteractVt))
        and (fHSX0 = fVMoveX) and (fHSY0 = fVMoveY) then
      begin
        if fSelectOnMouseDown then
        begin
          // select on mouse down
          if fSelectOnMouseDown_WasSelected then
            MouseSelect(Shift, x, y, false);
        end
        else
        begin
          // select on mouse up
          MouseSelect(Shift, x, y, false);
        end;
      end
      else if fGripping <> iegrNone then
      begin
        // coordinates of selected objects are changed, reorder coordinates
        for xx := 0 to fSelObjCount - 1 do
          with GetObj(fSelObj[xx])^ do
            if (Kind <> iekLINE) and (Kind <> iekRuler) and (Kind <> iekPOLYLINE) and (Kind <> iekLINELABEL) then
              OrdCor(x1, y1, x2, y2);
        DoVectorialChanged;
      end;
      if (fCurPolyLineGrip > -1) and (ssCtrl in Shift) and (fSelObjCount = 1) then
      begin
        // CTRL - delete a point
        with GetObj(fSelObj^[0])^ do
        begin
          if PolyPointsCount > 2 then
          begin
            getmem(pts, sizeof(TPoint) * PolyPointsCount);
            move(ppointarray(PolyPoints)[0], pts[0], sizeof(TPoint) * PolyPointsCount);
            freemem(PolyPoints);
            PolyPoints := pts;
            if fCurPolyLineGrip < PolyPointsCount - 1 then
              move(pts[fCurPolyLineGrip + 1], pts[fCurPolyLineGrip], sizeof(TPoint) * (PolyPointsCount - fCurPolyLineGrip - 1));
            dec(PolyPointsCount);
            RecalcPolylineBox(GetObj(fSelObj^[0]));
          end;
        end;
      end;
      if (fCurPolyLineIntraGrip > -1) and (fSelObjCount = 1) then
      begin
        with GetObj(fSelObj^[0])^ do
        begin
          xx := x;
          yy := y;
          // add a point
          getmem(pts, sizeof(TPoint) * (PolyPointsCount + 1));
          move(ppointarray(PolyPoints)[0], pts[0], sizeof(TPoint) * PolyPointsCount);
          freemem(PolyPoints);
          PolyPoints := pts;
          if fCurPolyLineIntraGrip < PolyPointsCount - 1 then
            move(pts[fCurPolyLineIntraGrip + 1],
                 pts[fCurPolyLineIntraGrip + 2],
                 sizeof(TPoint) * (PolyPointsCount - fCurPolyLineIntraGrip - 1));
          CalcZxZyPolyline(GetObj(fSelObj^[0]), zx, zy);
          with pts[fCurPolyLineIntraGrip + 1] do
          begin
            x := round( (XScr2Bmp(xx)+PolyBaseX1*zx-x1)/zx );
            y := round( (YScr2Bmp(yy)+PolyBaseY1*zy-y1)/zy );
          end;
          inc(PolyPointsCount);
        end;
        fCurPolyLineIntraGrip := -1;
      end;
      Update;
      fInserting := iekNONE;
      fGripping := iegrNone;
      if fVStable > 0 then
      begin
        fVStable := 0;
        invalidate;
      end;
    end;

    if (*stamping and *)(miObjectSelect in fMouseInteractVt) then
    begin
      nobj := FindObjectAt(X,Y,d);
      if nobj>=0 then
        DoObjectClick(nobj);
    end;

  end;

  if (not fVectorialChanged) and fObjAutoUndo and fSavedUndo then
  begin
    case fObjUndoMode of
      ieumSeparated:
        ObjClearUndo;
      ieumShared:
        begin
          for i:=0 to Proc.UndoCount-1 do
            if Proc.UndoPeekAt(Proc.UndoCount-1-i)=ieuObject then
            begin
              Proc.ClearUndoAt(i);
              break;
            end;
        end;
    end;
  end;

  // extended object mouse up
  nobj := FindObjectAt(X,Y,d);
  if (nobj>-1) and (d=0) and (GetObj(nobj)^.Kind=iekEXTENDED) and assigned(GetObj(nobj)^.extendedObject) then
    GetObj(nobj)^.extendedObject.MouseUp(Button,Shift,X,Y);
  
  HintShow(x, y);
end;

// Traslates specified object
// Does not update the client area
procedure TImageEnVect.TraslateObject(o: integer; ox, oy: integer);
var
  i, p: integer;
begin
  with GetObj(o)^ do
  begin
    inc(x1, ox);
    inc(y1, oy);
    inc(x2, ox);
    inc(y2, oy);
    if Kind = iekANGLE then
    begin
      p := CountAnglePoints(AnglePoints);
      for i := 0 to p - 1 do
      begin
        inc(AnglePoints[i].x, ox);
        inc(AnglePoints[i].y, oy);
      end;
    end;
  end;
end;

// Changes coordinates of the specified object
procedure TImageEnVect.ChangeObjectCoor(o: integer; ox1, oy1, ox2, oy2: integer; DoAspectRatio: boolean; grip: integer);
var
  nn, dd: double;
begin
  with GetObj(o)^ do
  begin
    if DoAspectRatio then
    begin
      inc(x1, ox1);
      inc(y1, oy1);
      inc(x2, ox2);
      inc(y2, oy2);
      nn := (x2 - x1) * (ly2 - ly1);
      dd := (lx2 - lx1);
      if (nn <> 0) and (dd <> 0) then
      begin
        case grip of
          1: // left-top
            y1 := round(y2 - (nn / dd));
          4: // right-top
            y1 := round(y2 - (nn / dd));
          2: // right-bottom
            y2 := round((nn / dd) + y1);
          5: // left-bottom
            y2 := round((nn / dd) + y1);
        end;
      end;
    end
    else
    begin
      inc(x1, ox1);
      inc(y1, oy1);
      inc(x2, ox2);
      inc(y2, oy2);
    end;
  end;
end;

// Returns the owner of the selected grip
// "gr" return selected grip.
// If nothing found return NULLOBJ and gr=0
function TImageEnVect.FindSelGrip(x, y: integer; var gr: TIEVGripping): integer;
var
  q: integer;
  xx1, yy1, xx2, yy2, xx3, yy3: integer;
  oxx1, oyy1, oxx2, oyy2: integer;
  aobj: PIEVObject;
begin
  result := NULLOBJ;
  gr := iegrNone;
  for q := 0 to fSelObjCount - 1 do
  begin
    aobj := GetObj(fSelObj^[q]);
    with aobj^ do
    begin
      // converts bitmap coordinates to client area coordinates
      xx1 := XBmp2Scr(x1);
      yy1 := YBmp2Scr(y1);
      xx2 := XBmp2Scr(x2);
      yy2 := YBmp2Scr(y2);
      xx3 := XBmp2Scr(x2 + 1);
      yy3 := YBmp2Scr(y2 + 1);
      AdjustCoords(aobj^, xx1, yy1, xx2, yy2, xx3, yy3, fZoomD100X,fZoomD100Y);
      oxx1 := xx1;
      oyy1 := yy1;
      oxx2 := xx2;
      oyy2 := yy2;
      ordcor(oxx1, oyy1, oxx2, oyy2);
      if _RectXRect(xx1, yy1, xx2, yy2, fOffX, fOffY, fOffX + fExtX, fOffY + fExtY) then
      begin
        if InGrip(xx1, yy1, x, y) then
          gr := iegrTopLeft
        else if InGrip(xx2, yy2, x, y) then
          gr := iegrBottomRight
        else if (not fUseCentralGrip) and (CalcDistPtObj(aobj,XScr2Bmp(x),YScr2Bmp(y))<1) then
          gr := iegrTranslation
        else if InGrip(oxx1 + ((oxx2 - oxx1 + 1) div 2), oyy1 + ((oyy2 - oyy1 + 1) div 2), x, y) then
          gr := iegrTranslation;
        if (Kind <> iekLINE) and (Kind <> iekRULER) and (Kind <> iekLINELABEL) then
        begin
          if InGrip(xx2, yy1, x, y) then
            gr := iegrTopRight
          else if InGrip(xx1, yy2, x, y) then
            gr := iegrBottomLeft
          else if InGrip(xx1, (yy1 + yy2) div 2, x, y) then
            gr := iegrLeft
          else if InGrip(xx2, (yy1 + yy2) div 2, x, y) then
            gr := iegrRight
          else if InGrip((xx1 + xx2) div 2, yy1, x, y) then
            gr := iegrUpper
          else if InGrip((xx1 + xx2) div 2, yy2, x, y) then
            gr := iegrBottom;
        end;
        if (Kind=iekANGLE) then
        begin
          xx1 := XBmp2Scr(AnglePoints[0].X);
          yy1 := YBmp2Scr(AnglePoints[0].Y);
          xx2 := XBmp2Scr(AnglePoints[1].X);
          yy2 := YBmp2Scr(AnglePoints[1].Y);
          xx3 := XBmp2Scr(AnglePoints[2].X);
          yy3 := YBmp2Scr(AnglePoints[2].Y);

          if ingrip(xx1, yy1, x, y) then
            gr := iegrAngle0
          else if ingrip(xx2, yy2, x, y) then
            gr := iegrAngle1
          else if ingrip(xx3, yy3, x, y) then
            gr := iegrAngle2
          else
            gr := iegrTranslation;
        end;

        if Kind=iekLINELABEL then
        begin
          if IEDist2Box(x,y, DrawedLabelBox.Left,DrawedLabelBox.Top,DrawedLabelBox.Right,DrawedLabelBox.Bottom,true) = 0 then
            gr := iegrBottomRight;
        end;

        if not (ievsSizeable in Style) and (gr<>iegrNone) then
          gr:=iegrTranslation;  // the object is not resizeable, only moved
        if gr <> iegrNone then
        begin
          result := q;
          break;
        end;
      end;
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Seleziona tutti gli oggetti inclusi nel rettangolo (Bitmap100%)
// Le coordinate xx1,yy1,xx2,yy2 devono essere ordinate
// Non chiama fOnSelectObject
// aobj=-3 tutti gli oggetti

procedure TImageEnVect.SelInRect(aobj: integer; xx1, yy1, xx2, yy2: integer);
var
  o: integer;
  ax1, ay1, ax2, ay2: integer;
begin
  if aobj = -3 then
  begin
    for o := 0 to fObjCount - 1 do
      SelInRect(fObj^[o], xx1, yy1, xx2, yy2) // chiamata ricorsiva
  end
  else
  begin
    // check rectangles intersection
    with GetObj(aobj)^ do
    begin
      ax1 := x1;
      ay1 := y1;
      ax2 := x2;
      ay2 := y2;
      if (Kind = iekLINE) or (Kind = iekRULER) or (Kind = iekPOLYLINE) or (Kind = iekANGLE) or (Kind = iekLINELABEL) then
        OrdCor(ax1, ay1, ax2, ay2);
      if (ax1 >= xx1) and (ax2 <= xx2) and (ay1 >= yy1) and (ay2 <= yy2) and (not IsSelObject(aobj)) then
        // select
        AddSelObjectNS(aobj);
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ImportDXF

<FM>Declaration<FC>
procedure ImportDXF(const nf: string);

<FM>Description<FN>
ImportDXF imports an Autocad DXF file. Returns true on successful import.
Note: only a subset of the DXF is implemented (lines, arcs and ellipses).


<FM>Example<FC>

ImageEnVect1.ImportDXF('FiatUno.dxf');

!!}
function TImageEnVect.ImportDXF(const nf: string): boolean;
const
  SECS: array[1..6] of string = ('HEADER', 'CLASSES', 'TABLES', 'BLOCKS', 'ENTITIES', 'OBJECTS');
var
  tf: TextFile;
  q, section: integer;
  s1, s2: string;
  ii: integer;
  newobj: TIEVObject;
  dc: char;
  xx, yy: double;
  pa: boolean; // true, processa ii e ss correnti
  xymult: double;
  d1: double;
  ww, hh: integer;
  XEXTMIN, YEXTMIN: double;
  XEXTMAX, YEXTMAX: double;
  AY: integer;
  // legge un valore necessario
  procedure Read1d(var v1: double; n1: integer);
  begin
    while (n1 >= 0) and not eof(tf) do
    begin
      if not pa then
      begin
        readln(tf, s1);
        readln(tf, s2);
      end
      else
        pa := false;
      ii := strtointdef(s1, -2);
      if ii = n1 then
      begin
        v1 := strtofloat(s2);
        n1 := -1;
      end;
    end;
  end;
  // legge due valori necessari
  procedure Read2d(var v1, v2: double; n1, n2: integer);
  begin
    while ((n1 >= 0) or (n2 >= 0)) and not eof(tf) do
    begin
      if not pa then
      begin
        readln(tf, s1);
        readln(tf, s2);
      end
      else
        pa := false;
      ii := strtointdef(s1, -2);
      if ii = n1 then
      begin
        v1 := strtofloat(s2);
        n1 := -1;
      end
      else if ii = n2 then
      begin
        v2 := strtofloat(s2);
        n2 := -1;
      end;
    end;
  end;
  // legge un valore opzionale (se non trova ripristina posizione)
  procedure Read1do(var vv: double; nn: integer);
  begin
    if not pa then
    begin
      readln(tf, s1);
      readln(tf, s2);
    end
    else
      pa := false;
    ii := strtointdef(s1, -1);
    if ii = nn then
      vv := strtofloat(s2)
    else
      pa := true; // mantieni s1 e s2
  end;
  //
  procedure CalcCoef;
  begin
    xymult := dmin((1 / (XEXTMAX - XEXTMIN + 1)) * ww, (1 / (YEXTMAX - YEXTMIN + 1)) * hh);
    AY := hh - trunc((YEXTMAX - YEXTMIN) * xymult);
  end;
begin
  result := true;
  dc := decimalseparator;
  decimalseparator := '.';
  ww := fIEBitmap.width;
  hh := fIEBitmap.height;
  try
    assignfile(tf, nf);
    reset(tf);
    section := 0;
    newobj.PenColor := clWhite;
    newobj.PenStyle := psSolid;
    newobj.PenWidth := 1;
    newobj.BrushColor := clWhite;
    newobj.BrushStyle := bsClear;
    newobj.LabelBrushColor := clWhite;
    newobj.LabelBrushStyle := bsSolid;
    newobj.Style := [ievsSelectable, ievsMoveable, ievsSizeable, ievsVisible];
    newobj.BoxHighlight := false;
    pa := false;
    xymult := 1;
    AY := 0;
    newobj := fNewObj;
    with newobj do
    begin
      BeginShape := iesNONE;
      EndShape := iesNONE;
      ShapeWidth := 10;
      ShapeHeight := 20;
      PenWidth := 1;
      LabelPosition := ielEnd;
      LabelBorder := ielRectangle;
      DrawedLabelBox := Rect(0,0,0,0);
    end;
    XEXTMIN := 0;
    YEXTMIN := 0;
    XEXTMAX := 1000;
    YEXTMAX := 1000;
    CalcCoef;
    while not eof(tf) do
    begin
      if not pa then
      begin
        readln(tf, s1);
        readln(tf, s2);
      end
      else
        pa := false;
      ii := strtointdef(s1, -1);
      case ii of
        0:
          begin
            if s2 = 'SECTION' then
            begin
              // SECTION
              readln(tf, ii);
              readln(tf, s2);
              section := 0;
              if (ii = 2) then
                for q := 1 to 6 do
                  if s2 = SECS[q] then
                    section := q;
            end
            else if (section = 5) then
            begin
              // ENTITIES
              if (s2 = 'LINE') then
              begin
                // LINE
                newobj.Kind := iekLINE;
                read2d(xx, yy, 10, 20);
                xx := xx - XEXTMIN;
                yy := yy - YEXTMIN;
                newobj.x1 := trunc(xx * xymult);
                newobj.y1 := hh - trunc(yy * xymult) - AY;
                read2d(xx, yy, 11, 21);
                xx := xx - XEXTMIN;
                yy := yy - YEXTMIN;
                with newobj do
                begin
                  x2 := trunc(xx * xymult);
                  y2 := hh - trunc(yy * xymult) - AY;
                end;
                AddVObject(newobj);
              end
              else if (s2 = 'CIRCLE') then
              begin
                // CIRCLE
                newobj.Kind := iekELLIPSE;
                read2d(xx, yy, 10, 20); // centro
                xx := xx - XEXTMIN;
                yy := yy - YEXTMIN;
                read1d(d1, 40); // raggio
                with newobj do
                begin
                  x1 := trunc((xx - d1) * xymult);
                  y1 := hh - trunc((yy - d1) * xymult) - AY;
                  x2 := trunc((xx + d1) * xymult);
                  y2 := hh - trunc((yy + d1) * xymult) - AY;
                end;
                AddVObject(newobj);
              end
              else if (s2 = 'ARC') then
              begin
                // ARC
                newobj.Kind := iekARC;
                read2d(xx, yy, 10, 20); // centro
                xx := xx - XEXTMIN;
                yy := yy - YEXTMIN;
                read1d(d1, 40); // raggio
                with newobj do
                begin
                  x1 := trunc((xx + d1) * xymult);
                  y1 := hh - trunc((yy + d1) * xymult) - AY;
                  x2 := trunc((xx - d1) * xymult);
                  y2 := hh - trunc((yy - d1) * xymult) - AY;
                  read2d(a1, a2, 50, 51); // angolo inzio e fine
                  a1 := 2 * PI - a1 * PI / 180;
                  a2 := 2 * PI - a2 * PI / 180;
                end;
                AddVObject(newobj);
              end;
            end;
          end;
        9: // HEADER-$EXTMIN, HEADER-$EXTMAX
          begin
            if section = 1 then
            begin
              // siamo nell'HEADER, leggi variabili
              if s2 = '$EXTMIN' then
                read2d(XEXTMIN, YEXTMIN, 10, 20)
              else if s2 = '$EXTMAX' then
              begin
                read2d(XEXTMAX, YEXTMAX, 10, 20);
                (*
                xymult:=dmin((1/(XEXTMAX-XEXTMIN+1))*ww,(1/(YEXTMAX-YEXTMIN+1))*hh);
                AY:=hh-trunc((YEXTMAX-YEXTMIN)*xymult);
                *)
                CalcCoef;
              end;
            end;
          end;
      end;
    end;
    closefile(tf);
  except
    decimalseparator := dc;
    result := false;
  end;
  decimalseparator := dc;
  Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.SelObjects

<FM>Declaration<FC>
property SelObjects[idx:integer]: integer;

<FM>Description<FN>
SelObjects returns the id (hobj) of idx-th selected object. The first selected object has an idx value of zero.

Read-only

<FM>Example<FC>

// Sets pen color to clRed for all selected objects.
for i:=0 to ImageEnVect1.SelObjectsCount-1 do
  ImageEnVect1.ObjPenColor[ ImageEnVect1.SelObjects[i] ] := clGreen;

!!}
function TImageEnVect.GetSelObjects(idx: integer): integer;
begin
  if (idx >= 0) and (idx < fSelObjCount) then
    result := fSelObj^[idx]
  else
    result := 0;
end;

// Rest. distanza tra il punto x,y e l'ellisse contenuta in x1,y1,x2,y2
// le coordinate x1,y1,x2,y2 devono essere gi� ordinate

function _DistPoint2Ellipse(x, y, x1, y1, x2, y2: integer; filled:boolean): double;
var
  g, xr1, yr1, xr2, yr2, rx, ry, p: integer;
  d: double;
begin
  result := 2147483647;
  rx := (x2 - x1) div 2; // raggio x
  ry := (y2 - y1) div 2; // raggio y
  dec(x, x1 + rx);
  dec(y, y1 + ry);
  if filled then
    p := trunc(2 * pi * imin(rx, ry))
  else
    p := trunc(2 * pi * imin(rx, ry)) shr 3;

  if p<2 then p:=2;

  xr1 := rx;
  yr1 := 0;
  for g := 1 to p - 1 do
  begin
    xr2 := trunc(cos((2 * pi / p) * g) * rx);
    yr2 := trunc(sin((2 * pi / p) * g) * ry);
    if filled then
      d := trunc(_DistPoint2Seg(x, y, 0, 0, xr2, yr2))
    else
      d := _DistPoint2Seg(x, y, xr1, yr1, xr2, yr2);
    if d < result then
      result := d;
    xr1 := xr2;
    yr1 := yr2;
  end;
end;

// draw all objects
// re: if true it doesn't look at zoom, viewxy, foffx and it doesn't verify that the object is inside the client area
// OnlyThis: if <>-1 this specifies the handle of the unique object to draw
procedure TImageEnVect.DrawObjects(BackGroundBitmap:TIEBitmap; re: boolean; BBitmap: TBitmap; antialias: boolean; OnlyThis:integer);
var
  o, c: integer;
  obj: PIEVObject;
  ww, hh, w, h: integer;
  lpencolor, lbrushcolor, lLabelBrushColor, lMemoBorderColor: TColor;
  tab1: ppointerarray;
  tab2, tab3: pinteger;
  x1, y1, x2, y2: integer;
  sz: integer;
  ax1, ay1, ax2, ay2: integer;
  mul: integer;
  antimul: integer; // 1=no antialias, 2=antialias (it is a multiplier)
  tmpbmp:TIEBitmap;
begin

  if fAllObjectsHidden then
    exit;

  mul := 1;

  if antialias then
    antimul := 2
  else
    antimul := 1;
  if fObjGraphicRender and (fObjCount > 0) and not IEGDIPEnabled then
  begin

    // ObjGraphicRender drawing

    ww := BBitmap.Width * antimul;
    hh := BBitmap.Height * antimul;
    if assigned(fCacheBitmap) and ((fCacheBitmap.Width <> ww) or (fCacheBitmap.Height <> hh)) then
      FreeAndNil(fCacheBitmap);
    if not assigned(fCacheBitmap) then
    begin
      fCacheBitmap := TIEBitmap.Create;
      fCacheBitmap.Location := ieTBitmap; // we need a canvas
      fCacheBitmap.Allocate(ww, hh, ie24RGB);
      fCacheBitmap.AlphaChannel.Location := ieTBitmap;
      fCacheBitmap.AlphaChannel.PixelFormat := ie8g;
      fCacheBitmap.AlphaChannel.VclBitmap.PixelFormat := pf8bit;
      IESetGrayPalette(fCacheBitmap.AlphaChannel.VclBitmap);
    end;
    tab1 := nil;
    mul := mul * antimul;
    o:=0;

    while o<fObjCount do
    begin

      if OnlyThis>-1 then
        while fObj[o]<>OnlyThis do
          inc(o);

      obj := GetObj(fObj[o]);

      if antialias then
        fCacheBitmap.Fill(obj^.PenColor); // 2.2.4rc2 (bottleneck, see iev\slow.iev)

      if obj^.BoxHighlight then
      begin
        // 2.2.4rc3, 2.3.2
        x1 := obj^.x1; ax1:=0;
        y1 := obj^.y1; ay1:=0;
        x2 := obj^.x2; ax2:=0;
        y2 := obj^.y2; ay2:=0;
        while true do
        begin
          ax1 := VXBmp2Scr(x1, not re, mul);
          ay1 := VYBmp2Scr(y1, not re, mul);
          ax2 := VXBmp2Scr(x2 + 1, not re, mul);
          ay2 := VYBmp2Scr(y2 + 1, not re, mul);
          if ax1<0 then
            inc(x1)
          else if ay1<0 then
            inc(y1)
          else if ax2 div mul>=BBitmap.Width then
            dec(x2)
          else if ay2 div mul>=BBitmap.Height then
            dec(y2)
          else
            break;
        end;
        OrdCor(ax1,ay1,ax2,ay2);
        if (ay1>=0) and (ax1>=0) then
        begin
          tmpbmp:=TIEBitmap.Create;
          tmpbmp.EncapsulateTBitmap(BBitmap);
          tmpbmp.StretchRectTo(fCacheBitmap,ax1,ay1,(ax2-ax1+1),(ay2-ay1+1),ax1 div mul,ay1 div mul,(ax2-ax1+1) div mul,(ay2-ay1+1) div mul ,rfNone,255);
          tmpbmp.free;
        end;
      end;

      fCacheBitmap.AlphaChannel.Fill(0);

      if DrawObject(obj^, fObj[o], fCacheBitmap.VclBitmap, not re, not re, fCacheBitmap, mul, false) then
      begin
        if (obj^.Kind <> iekBITMAP) or (obj^.BitmapIdx<0) then
        begin
          // paints alpha
          lpencolor := obj^.PenColor;
          lbrushcolor := obj^.BrushColor;
          lLabelBrushColor := obj^.LabelBrushColor;
          lMemoBorderColor := obj^.MemoBorderColor;
          c := $02000000 or (obj^.Transparency) or (obj^.Transparency shl 8) or (obj^.Transparency shl 16);
          obj^.PenColor := c;
          obj^.BrushColor := c;
          obj^.LabelBrushColor := c;
          obj^.MemoBorderColor := c;
          DrawObject(obj^, fObj[o], fCacheBitmap.AlphaChannel.VclBitmap, not re, not re, nil, mul, true);
          obj^.PenColor := lPenColor;
          obj^.BrushColor := lBrushColor;
          obj^.LabelBrushColor := lLabelBrushColor;
          obj^.MemoBorderColor := lMemoBorderColor;
        end;
        // adjust output coordinates
        x1 := imin(imax(obj.plim.Left - obj.pwidth, 0), ww - 1);
        y1 := imin(imax(obj.plim.Top - obj.pwidth, 0), hh - 1);
        x2 := imin(imax(obj.plim.Right + obj.pwidth, 0), ww - 1);
        y2 := imin(imax(obj.plim.Bottom + obj.pwidth, 0), hh - 1);
        OrdCor(x1, y1, x2, y2);
        if antimul>1 then
        begin
          inc(x1,2);
          inc(y1,2);
          dec(x2,2);
          dec(y2,2);
        end;
        w := imin(x2 - x1 + 1, ww);
        h := imin(y2 - y1 + 1, hh);
        // softshadow
        if obj^.softShadow.Enabled then
        begin
          sz := _IEAddSoftShadowRect(fCacheBitmap, (obj^.softShadow.Radius * mul), (mul * obj^.softShadow.OffsetX), (mul * obj^.softShadow.OffsetY), obj^.softShadow.Intensity, obj^.softShadow.ShadowColor, x1, y1, x1 + w - 1, y1 + h - 1);
          w := imin(w + sz * 2, fCacheBitmap.Width);
          h := imin(h + sz * 2, fCacheBitmap.Height);
          dec(x1, sz);
          if x1 < 0 then
            x1 := 0;
          dec(y1, sz);
          if y1 < 0 then
            y1 := 0;
        end;

        tab2 := nil;
        tab3 := nil;
        fCacheBitmap.AlphaChannel.Full := false;

        // draw on BBitmap
        if antimul > 1 then
          fCacheBitmap.RenderToTBitmap(BBitmap, tab1, tab2, tab3, nil, x1 div antimul, y1 div antimul, w div antimul, h div antimul, x1, y1, w, h, true, false, 255, rfTriangle, false, ielNormal)
        else
          fCacheBitmap.RenderToTBitmap(BBitmap, tab1, tab2, tab3, nil, x1, y1, w, h, x1, y1, w, h, true, false, 255, rfnone, false, ielNormal);

        freemem(tab2);
        freemem(tab3);
      end;

      if OnlyThis>-1 then
        break;
      inc(o);

    end;

    if assigned(tab1) then
      freemem(tab1);

  end
  else
  begin

    // normal drawing

    tab1 := nil;
    o:=0;
    while o<fObjCount do
    begin
      if OnlyThis>-1 then
        while fObj[o]<>OnlyThis do
          inc(o);

      obj := GetObj(fObj[o]);

      if ((obj^.softShadow.Enabled) or (obj^.BoxHighlight) or ((obj^.Transparency<255) and ((obj^.Kind=iekMEMO) or (obj^.Kind=iekTEXT)))) and not fFastDrawing then
      begin
        ww := BBitmap.Width;
        hh := BBitmap.Height;
        if assigned(fCacheBitmap) and ((fCacheBitmap.Width <> ww) or (fCacheBitmap.Height <> hh)) then
          FreeAndNil(fCacheBitmap);
        if not assigned(fCacheBitmap) then
        begin
          fCacheBitmap := TIEBitmap.Create;
          fCacheBitmap.Location := ieTBitmap; // we need a canvas
          fCacheBitmap.Allocate(ww, hh, ie24RGB);
          fCacheBitmap.AlphaChannel.Location := ieTBitmap;
          fCacheBitmap.AlphaChannel.PixelFormat := ie8g;
          fCacheBitmap.AlphaChannel.VclBitmap.PixelFormat := pf8bit;
          IESetGrayPalette(fCacheBitmap.AlphaChannel.VclBitmap);
        end;
        fCacheBitmap.Fill(obj^.PenColor);
        if obj^.BoxHighlight then
        begin
          x1 := obj^.x1; ax1:=0;
          y1 := obj^.y1; ay1:=0;
          x2 := obj^.x2; ax2:=0;
          y2 := obj^.y2; ay2:=0;
          while true do
          begin
            ax1 := VXBmp2Scr(x1, not re, mul);
            ay1 := VYBmp2Scr(y1, not re, mul);
            ax2 := VXBmp2Scr(x2 + 1, not re, mul);
            ay2 := VYBmp2Scr(y2 + 1, not re, mul);
            if ax1<0 then
              inc(x1)
            else if ay1<0 then
              inc(y1)
            else if ax2 div mul>=BBitmap.Width then
              dec(x2)
            else if ay2 div mul>=BBitmap.Height then
              dec(y2)
            else
              break;
          end;
          OrdCor(ax1,ay1,ax2,ay2);
          if (ay1>=0) and (ax1>=0) then
          begin
            tmpbmp:=TIEBitmap.Create;
            tmpbmp.EncapsulateTBitmap(BBitmap);
            tmpbmp.StretchRectTo(fCacheBitmap,ax1,ay1,(ax2-ax1+1),(ay2-ay1+1),ax1 div mul,ay1 div mul,(ax2-ax1+1) div mul,(ay2-ay1+1) div mul ,rfNone,255);
            tmpbmp.free;
          end;
        end;
        if DrawObject(obj^, fObj[o], fCacheBitmap.VclBitmap, not re, not re, fCacheBitmap, mul, false) then
        begin
          fCacheBitmap.AlphaChannel.Fill(0);
          if (obj^.Kind <> iekBITMAP) or (obj^.BitmapIdx < 0) then
          begin
            // paints alpha
            lPenColor := obj^.PenColor;
            lBrushColor := obj^.BrushColor;
            lLabelBrushColor := obj^.LabelBrushColor;
            lMemoBorderColor := obj^.MemoBorderColor;
            c := $02000000 or (obj^.Transparency) or (obj^.Transparency shl 8) or (obj^.Transparency shl 16);
            obj^.PenColor := c;
            obj^.BrushColor := c;
            obj^.LabelBrushColor := c;
            obj^.MemoBorderColor := c;
            DrawObject(obj^, fObj[o], fCacheBitmap.AlphaChannel.VclBitmap, not re, not re, nil, mul, true);
            obj^.PenColor := lPenColor;
            obj^.BrushColor := lBrushColor;
            obj^.LabelBrushColor := lLabelBrushColor;
            obj^.MemoBorderColor := lMemoBorderColor;
          end
          else
            DrawObject(obj^, fObj[o], fCacheBitmap.VclBitmap, not re, not re, fCacheBitmap, mul, false);
          // adjust output coordinates
          x1 := imin(imax(obj.plim.Left - obj.pwidth, 0), ww - 1);
          y1 := imin(imax(obj.plim.Top - obj.pwidth, 0), hh - 1);
          x2 := imin(imax(obj.plim.Right + obj.pwidth, 0), ww - 1);
          y2 := imin(imax(obj.plim.Bottom + obj.pwidth, 0), hh - 1);
          OrdCor(x1, y1, x2, y2);
          w := imin(x2 - x1 + 1, ww);
          h := imin(y2 - y1 + 1, hh);
          // softshadow
          if obj^.softShadow.Enabled then
          begin
            sz := _IEAddSoftShadowRect(fCacheBitmap, (obj^.softShadow.Radius * mul), (mul * obj^.softShadow.OffsetX), (mul * obj^.softShadow.OffsetY), obj^.softShadow.Intensity, obj^.softShadow.ShadowColor, x1, y1, x1 + w - 1, y1 + h - 1);
            w := imin(w + sz * 2, fCacheBitmap.Width);
            h := imin(h + sz * 2, fCacheBitmap.Height);
            dec(x1, sz);
            if x1 < 0 then
              x1 := 0;
            dec(y1, sz);
            if y1 < 0 then
              y1 := 0;
          end;
          tab2 := nil;
          tab3 := nil;
          fCacheBitmap.AlphaChannel.Full := false;
          // draw on BBitmap
          fCacheBitmap.RenderToTBitmap(BBitmap, tab1, tab2, tab3, nil, x1, y1, w, h, x1, y1, w, h, true, false, 255, rfnone, false, ielNormal);
          freemem(tab2);
          freemem(tab3);
        end;
      end
      else
        DrawObject(obj^, fObj^[o], BBitmap, not re, not re, nil, mul, false);

      if OnlyThis>-1 then
        break;
      inc(o);
    end;
    if assigned(tab1) then
      freemem(tab1);

  end;

end;


// Draw a shape at the line sides, on the line x1,y1,x2,y2
// brush and color must be already set
procedure TImageEnVect.DrawLineShape(aobj: TIEVObject; Canvas: TIECanvas; x1, y1, x2, y2: integer; Shape: TIEShape; w, h: integer; var plim: trect);
var
  aa, bb, hw: double;
  pp: array[0..2] of TPoint;
  p1x, p1y: integer;
begin
  case Shape of
    iesINARROW, iesOUTARROW:
      with Canvas do
      begin
        hw := w / 2;
        aa := ieangle(x1, y1, x2, y2, x1, y2);
        if x1 = x2 then
          if y1 < y2 then
            aa := -A90
          else
            aa := A90;
        if ((x1 > x2) and (y2 < y1)) or ((x1 < x2) and (y1 < y2)) then
          bb := 2 * pi - aa + A90
        else
          bb := aa + A90;
        if ((x2 < x1) and (y2 > y1)) or ((x2 < x1) and (y2 < y1)) or ((x1 < x2) and (y1 = y2)) then
        begin
          p1x := x1 + trunc(cos(bb - A90) * h);
          p1y := y1 + trunc(sin(bb - A90) * h);
        end
        else
        begin
          p1x := x1 + trunc(cos(bb + A90) * h);
          p1y := y1 + trunc(sin(bb + A90) * h);
        end;
        if Shape = iesINARROW then
        begin
          pp[0].x := x1 + trunc(cos(bb) * hw);
          pp[0].y := y1 + trunc(sin(bb) * hw);
          pp[1].x := x1 + trunc(cos(bb + pi) * hw);
          pp[1].y := y1 + trunc(sin(bb + pi) * hw);
          pp[2].x := p1x;
          pp[2].y := p1y;
        end
        else
        begin
          pp[0].x := p1x + trunc(cos(bb) * hw);
          pp[0].y := p1y + trunc(sin(bb) * hw);
          pp[1].x := p1x + trunc(cos(bb + pi) * hw);
          pp[1].y := p1y + trunc(sin(bb + pi) * hw);
          pp[2].x := x1;
          pp[2].y := y1;
        end;
        Polygon(pp);
        iesetplim(plim, pp[0].x, pp[0].y);
        iesetplim(plim, pp[1].x, pp[1].y);
        iesetplim(plim, pp[2].x, pp[2].y);
      end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Restituisce la bitmap idx della lista fBitmaps
// Se idx=-1 rest. nil

function TImageEnVect.GetBitmap(idx: integer): TIEBitmap;
begin
  if idx >= 0 then
    result := fBitmaps^[idx].fBitmap
  else
    result := nil;
end;

//

function TImageEnVect.GetBitmapAlpha(idx: integer): TIEBitmap;
begin
  if idx >= 0 then
    result := fBitmaps^[idx].fBitmap.AlphaChannel
  else
    result := nil;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Cerca SBitmap all'interno della lista fBitmaps
// -1 nulla

function TImageEnVect.FindBitmap(SBitmap: TIEBitmap): integer;
begin
  for result := fBitmapsCount - 1 downto 0 do
    if (fBitmaps^[result].fBitmap <> nil) and _BitmapCompareXEx(SBitmap, fBitmaps^[result].fBitmap) then
      exit; // found
  result := -1; // not found
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.SaveToFileIEV

<FM>Declaration<FC>
procedure SaveToFileIEV(const nf: string);

<FM>Description<FN>
SaveToFileIEV saves objects to the specified file. The IEV format is written to save vectorial objects as lines, ellipses and bitmaps (but not background image).

<FM>Example<FC>
ImageEnVect1.SaveToFileIEV('objects.iev');

!!}
procedure TImageEnVect.SaveToFileIEV(const nf: string);
var
  fs: TFileStream;
begin
  if nf='' then
    exit;
  fs := TFileStream.Create(nf, fmCreate);
  SaveToStreamIEV(fs);
  FreeAndNil(fs);
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.LoadFromFileIEV

<FM>Declaration<FC>
function LoadFromFileIEV(const nf: string):boolean;

<FM>Description<FN>
LoadFromFileIEV loads the objects from the specified file. The IEV format is used to save vectorial objects as lines, ellipses and bitmaps (but not background image).

Returns True on successful.

<FM>Example<FC>
ImageEnVect1.LoadFromFileIEV('objects.iev');

!!}
function TImageEnVect.LoadFromFileIEV(const nf: string): boolean;
var
  fs: TFileStream;
begin
  result:=false;
  if nf='' then
    exit;
  fs := TFileStream.Create(nf, fmOpenRead or fmShareDenyWrite);
  result := LoadFromStreamIEV(fs);
  FreeAndNil(fs);
end;

/////////////////////////////////////////////////////////////////////////////////////
// removes all null occurrences to fBitmaps and reindicizes all iekBITMAP objects

procedure TImageEnVect.PackBMP;
var
  corr: PIntegerArray;
  //
  procedure PackBMP1(hobj: integer);
  begin
    with GetObj(hobj)^ do
      if BitmapIdx >= 0 then
        // -1 means no bitmap
        BitmapIdx := corr^[BitmapIdx];
  end;
var
  num: integer;
  tmp: PIEVBitmapArray;
  q: integer;
begin
  getmem(corr, sizeof(integer) * fBitmapsCount);
  // create corrispondences table
  num := 0;
  for q := 0 to fBitmapsCount - 1 do
    if fBitmaps^[q].fBitmap <> nil then
    begin
      corr^[q] := num;
      inc(num);
    end;
  getmem(tmp, sizeof(TIEVBitmap) * num);
  // Compact fBitmaps
  for q := 0 to fBitmapsCount - 1 do
    if fBitmaps^[q].fBitmap <> nil then
      tmp^[corr^[q]] := fBitmaps^[q];
  freemem(fBitmaps);
  fBitmaps := tmp;
  fBitmapsCount := num;
  // adjust pointers to iekBITMAP
  PackBMP1(-1); // next obj to insert
  for q := 0 to fObjCount - 1 do
    PackBmp1(fObj^[q]);
  //
  freemem(corr);
end;

{!!
<FS>TImageEnVect.RemoveObject

<FM>Declaration<FC>
procedure RemoveObject(hobj: integer);

<FM>Description<FN>
RemoveObject removes the hobj object.

!!}
procedure TImageEnVect.RemoveObject(hobj: integer);
var
  pobj: PIEVObject;
begin
  CancelInteracts;
  DoObjSaveUndo;
  UnSelObject(hobj);
  pobj := GetObj(hobj);
  RemoveVObjData(pobj^); // remove object data
  RemoveVObject(hobj); // remove object
  if hobj = fObjHeapCount - 1 then
    // decrease the heap (but it doesn't realloc), because it is last object inserted
    dec(fObjHeapCount);
  DoVectorialChanged;
  Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetObjFontAngle(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      LogFont^.lfEscapement := trunc(v * 10);
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ObjFontHeight

<FM>Declaration<FC>
property ObjFontHeight[hobj:integer]: integer;

<FM>Description<FN>
ObjFontHeight specifies the font height for iekTEXT object hobj.
hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

Run-time only

!!}
function TImageEnVect.GetObjFontHeight(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      result := LogFont^.lfHeight
    else
      result := 0;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetObjTextAlign(hobj: integer; v: TIEAlignment);
begin
  with GetObj(hobj)^ do
    TextAlign := v;
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ObjTextAlign

<FM>Declaration<FC>
property ObjTextAlign[hobj:integer]: <A TIEAlignment>;

<FM>Description<FN>
ObjTextAlign sets the text alignment of hobj object (iekTEXT).

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

iejJustify applies only to MEMO objects

<FM>Example<FC>

// Centers the text of next object to insert
ImageEnVect1.ObjTextAlign[-1]:=iejLeft;

!!}
function TImageEnVect.GetObjTextAlign(hobj: integer): TIEAlignment;
begin
  with GetObj(hobj)^ do
    result := TextAlign;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetObjTextAutoSize(hobj: integer; v: boolean);
begin
  with GetObj(hobj)^ do
    TextAutoSize := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjTextAutoSize

<FM>Declaration<FC>
property ObjTextAutoSize[hobj:integer]:boolean;

<FM>Description<FN>
Use ObjTextAutoSize to make the iekText object adjust its size automatically so the bounding box accommodates the width of the text. 

When ObjTextAutoSize is False, the text object has a fixed width. When ObjTextAutoSize is True, the size of the object is readjusted whenever the user inserts or deletes characters.

!!}
function TImageEnVect.GetObjTextAutoSize(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := TextAutoSize;
end;

procedure TImageEnVect.SetObjTextCurveCharRot(hobj: integer; v: double);
begin
  with GetObj(hobj)^ do
    CurvedCharRot := trunc(v * 10);
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjTextCurveCharRot

<FM>Declaration<FC>
property ObjTextCurveCharRot[hobj:integer]:double;

<FM>Description<FN>
ObjTextCurveCharRot specifies the angle of each character for curved text.

By specifying a value of -1, the angle is autocalculated (follows the curve).

!!}
function TImageEnVect.GetObjTextCurveCharRot(hobj: integer): double;
begin
  with GetObj(hobj)^ do
    result := CurvedCharRot / 10;
end;

procedure TImageEnVect.SetObjTextEditable(hobj: integer; v: boolean);
begin
  with GetObj(hobj)^ do
    TextEditable := v;
  if hobj <> -1 then
    Update;
end;

{!!
<FS>TImageEnVect.ObjTextEditable

<FM>Declaration<FC>
property ObjTextEditable[hobj:integer]:boolean;

<FM>Description<FN>

If true (default) the specified text or memo object is editable, otherwise it is read only.

!!}
function TImageEnVect.GetObjTextEditable(hobj: integer): boolean;
begin
  with GetObj(hobj)^ do
    result := TextEditable;
end;

procedure TImageEnVect.SetObjMemoLineSpace(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    LineSpace := v;
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ObjMemoLineSpace

<FM>Declaration<FC>
property ObjMemoLineSpace[hobj:integer]:integer;

<FM>Description<FN>
ObjMemoLineSpace specifies the interline space. 0 = automatically calculated.

!!}
function TImageEnVect.GetObjMemoLineSpace(hobj: integer): integer;
begin
  with GetObj(hobj)^ do
    result := LineSpace;
end;

// if v=0 it is automatically calculated to stretch inside the bounding box
procedure TImageEnVect.SetObjFontHeight(hobj: integer; v: integer);
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      LogFont^.lfHeight := v;
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ObjFontName

<FM>Declaration<FC>
property ObjFontName[hobj:integer]: string;

<FM>Description<FN>
ObjFontName is the font name for iekTEXT object hobj.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

// Sets 'Arial' as font type for next object to insert
ImageEnVect1.ObjFontName[-2]:='Arial';

!!}
function TImageEnVect.GetObjFontName(hobj: integer): string;
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      result := LogFont^.lfFaceName
    else
      result := '';
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetObjFontName(hobj: integer; v: string);
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      strpcopy(LogFont^.lfFaceName, copy(v, 1, LF_FACESIZE - 1)); // strpcopy make sure that other charachetrs are ignored
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

{!!
<FS>TImageEnVect.ObjFontStyles

<FM>Declaration<FC>
property ObjFontStyles[hobj:integer]: TFontStyles;

<FM>Description<FN>
ObjFontStyles sets the font style for the iekTEXT object hobj.

hobj is a value that identifies the object. hobj can be -1 (next object to insert) or -2 (last object inserted).

<FM>Example<FC>

ImageEnVect1.ObjFontStyles[-1]:=fsBold;

!!}
function TImageEnVect.GetObjFontStyles(hobj: integer): TFontStyles;
begin
  with GetObj(hobj)^ do
    result := IEExtractStylesFromLogFont(LogFont);
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SetObjFontStyles(hobj: integer; v: TFontStyles);
begin
  with GetObj(hobj)^ do
    if LogFont <> nil then
      with LogFont^ do
      begin
        if fsBold in v then
          lfWeight := FW_BOLD
        else
          lfWeight := FW_NORMAL;
        lfItalic := Byte(fsItalic in v);
        lfUnderline := Byte(fsUnderline in v);
        lfStrikeOut := Byte(fsStrikeOut in v);
      end;
  if hobj <> -1 then
    Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.Update;
begin
  inherited;
  UpdateTextEdit;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.ViewChange(c: integer);
begin
  inherited;
  if fTextEditing >= 0 then
  begin
    //RemoveTextEdit;
    //ActivateTextEdit;
    UpdateTextEdit; // 2.2.4rc2 (to avoid OnActivateTextEdit/OnDeact... and to maintain text cursor, selections, etc)
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Save object to Stream

procedure TImageEnVect.SaveObj(Stream: TStream; hobj: integer);
var
  i, w, l: integer;
  o: PIEVObject;
  b: boolean;
begin
  o := GetObj(hobj);
  if o = nil then
  begin
    // Saves all objects
    for w := 0 to fObjCount - 1 do
      SaveObj(Stream, fObj^[w]);
  end
  else
  begin
    // Save object
    if hobj >= 0 then
      with o^ do
      begin
        // general info
        Stream.Write(hobj, sizeof(integer)); // used only for connected objects
        Stream.Write(x1, sizeof(integer));
        Stream.Write(y1, sizeof(integer));
        Stream.Write(x2, sizeof(integer));
        Stream.Write(y2, sizeof(integer));
        Stream.Write(Kind, sizeof(TIEVObjectKind));
        Stream.Write(AspectRatio, sizeof(boolean));
        // softshadow
        Stream.Write(softShadow.Enabled, sizeof(boolean));
        Stream.Write(softShadow.Radius, sizeof(double));
        Stream.Write(softShadow.OffsetX, sizeof(integer));
        Stream.Write(softShadow.OffsetY, sizeof(integer));
        Stream.Write(softShadow.Intensity,sizeof(integer));
        Stream.Write(softShadow.ShadowColor,sizeof(TRGB));
        // Name
        w := strlen(Name);
        Stream.Write(w, sizeof(integer));
        Stream.Write(Name^, w);
        //
        Stream.Write(ID, sizeof(integer));
        Stream.Write(PenColor, sizeof(TColor));
        Stream.Write(PenStyle, sizeof(TPenStyle));
        Stream.Write(PenWidth, sizeof(integer));
        Stream.Write(BrushColor, sizeof(TColor));
        Stream.Write(BrushStyle, sizeof(TBrushStyle));
        Stream.Write(Style, sizeof(TIEVStyle));
        Stream.Write(Transparency, sizeof(integer));
        Stream.Write(BoxHighLight, sizeof(boolean));
        // User data
        Stream.Write(UserDataLength,sizeof(integer));
        if UserDataLength>0 then
          Stream.Write(pbyte(UserData)^,UserDataLength);
        // iekLINELABEL
        if Kind = iekLINELABEL then
        begin
          Stream.Write(LabelBrushColor, sizeof(TColor));
          Stream.Write(LabelBrushStyle, sizeof(TBrushStyle));
          Stream.Write(LabelPosition, sizeof(TIELabelPos));
          Stream.Write(LabelBorder, sizeof(TIELabelBorder));
        end;
        // iekLINE/iekLINELABEL fields
        if (Kind = iekLINE) or (Kind = iekLINELABEL) then
        begin
          Stream.Write(BeginShape, sizeof(TIEShape));
          Stream.Write(EndShape, sizeof(TIEShape));
          Stream.Write(ShapeWidth, sizeof(integer));
          Stream.Write(ShapeHeight, sizeof(integer));
        end;
        // iekARC fields
        if Kind = iekARC then
        begin
          Stream.Write(a1, sizeof(double));
          Stream.Write(a2, sizeof(double));
        end;
        // iekBITMAP fields
        if (Kind = iekBITMAP) then
        begin
          Stream.Write(BitmapIdx, sizeof(integer));
          Stream.Write(BitmapBorder,sizeof(boolean));
          if Text = nil then
            w := 0
          else
            w := strlen(Text);
          Stream.Write(w, sizeof(integer));
          if Text <> nil then
            Stream.Write(Text^, w);
        end;
        // iekTEXT/iekLINELABEL fields
        if (Kind = iekTEXT) or (Kind = iekLINELABEL) or (Kind = iekEXTENDED) then
        begin
          Stream.Write(TextAlign, sizeof(TIEAlignment));
          Stream.Write(TextAutoSize, sizeof(boolean));
          // save text
          w := strlen(Text);
          Stream.Write(w, sizeof(integer)); // string length (without final zero)
          Stream.Write(Text^, w); // save string (no final zero)
          // save font
          if LogFont <> nil then
          begin
            b := true;
            Stream.Write(b, sizeof(boolean));
            Stream.Write(LogFont^, sizeof(TLogFont));
          end
          else
          begin
            b := false;
            Stream.Write(b, sizeof(boolean));
          end;
          //
          Stream.Write(CurvedLen, sizeof(integer));
          if CurvedLen > 0 then
          begin
            Stream.Write(CurvedPos[0], sizeof(TDPoint) * CurvedLen);
            Stream.Write(CurvedCharRot, sizeof(integer));
          end;
        end;
        // iekMEMO fields
        if Kind = iekMEMO then
        begin
          if Text = nil then
            w := 0
          else
            w := strlen(Text);
          Stream.Write(w, sizeof(integer));
          if Text <> nil then
            Stream.Write(Text^, w);
          // save font
          if LogFont <> nil then
          begin
            b := true;
            Stream.Write(b, sizeof(boolean));
            Stream.Write(LogFont^, sizeof(TLogFont));
          end
          else
          begin
            b := false;
            Stream.Write(b, sizeof(boolean));
          end;
          // save text format
          if TextFormatRef<>nil then
          begin
            b:=true;
            Stream.Write(b, sizeof(boolean));
            Stream.Write(TextFormatRef^, sizeof(integer) * w);
          end
          else
          begin
            b:=false;
            Stream.Write(b, sizeof(boolean));
          end;
          if assigned(TextFormat) then
            l := TextFormat.Count
          else
            l:=0;
          Stream.Write(l, sizeof(integer));
          for i := 0 to l - 1 do
            Stream.Write(PIECharInfo(TextFormat[i])^, sizeof(TIECharInfo));
          //
          Stream.Write(FontLocked, sizeof(boolean));
          Stream.Write(TextAutoSize, sizeof(boolean));
          Stream.Write(LineSpace, sizeof(integer));
          Stream.Write(MemoBorderColor, sizeof(TColor));
          Stream.Write(MemoBorderStyle, sizeof(TPenStyle));
          Stream.Write(TextAlign, sizeof(TIEAlignment));
          Stream.Write(MemoFixedHeight, sizeof(integer));
          Stream.Write(MemoHasBitmap, sizeof(boolean));
          if (Kind=iekMEMO) and (MemoHasBitmap) then
          begin
            Stream.Write(BitmapIdx, sizeof(integer));
            Stream.Write(BitmapBorder,sizeof(boolean));
          end;
          Stream.Write(MemoMarginLeft, sizeof(double));
          Stream.Write(MemoMarginTop, sizeof(double));
          Stream.Write(MemoMarginRight, sizeof(double));
          Stream.Write(MemoMarginBottom, sizeof(double));
          Stream.Write(MemoCharsBrushStyle, sizeof(TBrushStyle));
        end;
        // this could be useful for other objects, so we save it
        Stream.Write(TextEditable, sizeof(boolean) );
        // iekRULER fields
        if Kind = iekRULER then
        begin
          Stream.Write(RulerUnit, sizeof(TIEUnits));
          Stream.Write(RulerType, sizeof(TIEVRulerType));
          // save font
          if LogFont <> nil then
          begin
            b := true;
            Stream.Write(b, sizeof(boolean));
            Stream.Write(LogFont^, sizeof(TLogFont));
          end
          else
          begin
            b := false;
            Stream.Write(b, sizeof(boolean));
          end;
        end;
        // iekPOLYLINE fields
        if Kind = iekPOLYLINE then
        begin
          Stream.Write(PolyPointsCount, sizeof(integer));
          Stream.Write(pbyte(PolyPoints)^, sizeof(TPoint) * PolyPointsCount);
          Stream.Write(PolyBaseX1, sizeof(integer));
          Stream.Write(PolyBaseY1, sizeof(integer));
          Stream.Write(PolyBaseX2, sizeof(integer));
          Stream.Write(PolyBaseY2, sizeof(integer));
          Stream.Write(PolyClosed, sizeof(boolean));
        end;
        // iekANGLE fields
        if Kind = iekANGLE then
        begin
          Stream.Write(AnglePoints[0], sizeof(TPoint) * 3);
          // save font
          if LogFont <> nil then
          begin
            b := true;
            Stream.Write(b, sizeof(boolean));
            Stream.Write(LogFont^, sizeof(TLogFont));
          end
          else
          begin
            b := false;
            Stream.Write(b, sizeof(boolean));
          end;
        end;
        // extended object
        if (Kind=iekEXTENDED) then
        begin
          b:=assigned(extendedObject);
          Stream.Write(b,sizeof(boolean));
          if b then
          begin
            SaveStringToStream(Stream,IEVGetExtendedObjectName(extendedObject.ClassType));
            extendedObject.SaveToStream(Stream);
          end;
        end;
      end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// Load objects from stream
// Supported ver (last byte of old ver string)
// 49 = IEV1
// 50 = IEV2
// 51 = IEV3
// 52 = IEV4
// 53 = IEV5
// 54 = IEV6
// 55 = IEV7
// 56 = IEV8
// 57 = IEV9
// 58
// 59 (ver 2.0.8)
// 60 (ver 2.0.9)
// 61 (ver 2.1.0)
// 62 (ver 2.1.1 - a)
// 63 (ver 2.1.1 - b)
// 64 (ver 2.1.1 - release)
// 65 (ver 2.1.4)
// 66 (ver 2.1.8)
// 75 (ver 2.2.3)
// 77 (ver up to 2.2.8)
// 78 (ver 2.2.9)
// LoadBitmapIdx: if true read BitmaPidx from file, otherwise set it to -1
// return the obj created handle (or -4 if no applicable)

function TImageEnVect.ReadObj(Stream: TStream; ver: byte; LoadBitmapIdx: boolean): integer;
var
  o: TIEVObject;
  i, q: integer;
  b: boolean;
  ObjCount: integer;
  filehobj: integer;
  ci: PIECharInfo;
  cname:string;
begin
  result := -4;
  with o do
  begin
    TextFormatRef := nil;
    TextFormat := nil;
    FontLocked := true;
    BitmapBorder := false;
    CurvedLen := 0;
    CurvedPos := nil;
    BoxHighLight := false;
    DrawnPoints := nil;
    DrawnPointsCount := 0;
    MemoHasBitmap:=false;
    AspectRatio := false;
    LogFont:=nil;
    Text:=nil;
    PolyPoints:=nil;
    // general fields
    if ver >= 60 then
      Stream.read(filehobj, sizeof(integer)); // the original saved hobj (not the current hobj)
    Stream.read(x1, sizeof(integer));
    Stream.read(y1, sizeof(integer));
    Stream.read(x2, sizeof(integer));
    Stream.read(y2, sizeof(integer));
    Stream.read(Kind, sizeof(TIEVObjectKind));
    if ver >= 77 then
      Stream.read(AspectRatio, sizeof(boolean));
    // softshadow
    softShadow := TIEVSoftShadow.Create;
    if ver >= 61 then
    begin
      Stream.Read(softShadow.Enabled, sizeof(boolean));
      Stream.Read(softShadow.Radius, sizeof(double));
      Stream.Read(softShadow.OffsetX, sizeof(integer));
      Stream.Read(softShadow.OffsetY, sizeof(integer));
      if ver >=79 then
      begin
        Stream.Read(softShadow.Intensity, sizeof(integer));
        Stream.Read(softShadow.ShadowColor, sizeof(TRGB));
      end
      else
      begin
        softShadow.Intensity:=100;
        softShadow.ShadowColor:=CreateRGB(0,0,0);
      end;
    end
    else
    begin
      with softShadow do
      begin
        Enabled := false;
        Radius := 3;
        OffsetX := 2;
        OffsetY := 2;
        Intensity := 100;
        ShadowColor := CreateRGB(0,0,0);
      end;
    end;
    // Name
    Stream.Read(q, sizeof(integer)); // read string length (excluded final zero)
    getmem(Name, q + 1);
    Stream.Read(Name^, q);
    Name[q] := #0;
    //
    Stream.read(ID, sizeof(integer));
    Stream.read(PenColor, sizeof(TColor));
    Stream.read(PenStyle, sizeof(TPenStyle));
    Stream.read(PenWidth, sizeof(integer));
    Stream.read(BrushColor, sizeof(TColor));
    Stream.read(BrushStyle, sizeof(TBrushStyle));
    Stream.read(Style, sizeof(TIEVStyle));
    if ver >= 61 then
      Stream.Read(Transparency, sizeof(integer))
    else
      Transparency:=255;
    if ver >= 64 then
      Stream.Read(BoxHighLight, sizeof(boolean));
    UserData:=nil;
    UserDataLength:=0;
    if ver >= 73 then
    begin
      Stream.Read(UserDataLength, sizeof(integer));
      if UserDataLength>0 then
      begin
        getmem(UserData,UserDataLength);
        Stream.Read(pbyte(UserData)^,UserDataLength);
      end;
    end;
    // old iekFRAME fields
    if Kind = iekNONE then
      Stream.read(ObjCount, sizeof(integer));
    // iekLINELABEL
    if Kind = iekLINELABEL then
    begin
      Stream.read(LabelBrushColor, sizeof(TColor));
      Stream.read(LabelBrushStyle, sizeof(TBrushStyle));
      Stream.read(LabelPosition, sizeof(TIELabelPos));
      if ver >= 80 then
        Stream.read(LabelBorder, sizeof(TIELabelBorder));
    end;
    // iekLINE/iekLINELABEL fields
    if (Kind = iekLINE) or (Kind = iekLINELABEL) then
    begin
      Stream.read(BeginShape, sizeof(TIEShape));
      Stream.read(EndShape, sizeof(TIEShape));
      Stream.read(ShapeWidth, sizeof(integer));
      Stream.read(ShapeHeight, sizeof(integer));
    end;
    // iekARC fields
    if Kind = iekARC then
    begin
      Stream.read(a1, sizeof(double));
      Stream.read(a2, sizeof(double));
    end;
    // iekBITMAP fields
    if (Kind = iekBITMAP) then
    begin
      Stream.read(BitmapIdx, sizeof(integer));
      if not LoadBitmapIdx then
        BitmapIdx := -1;
      if ver>=66 then
        Stream.Read(BitmapBorder, sizeof(boolean));
      if ver>=70 then
      begin
        Stream.Read(q, sizeof(integer));
        getmem(text, q + 1);
        Stream.Read(Text^, q);
        Text[q] := #0;
      end
      else
        Text := nil;
    end;
    // iekTEXT/iekLINELABEL fields
    if (Kind = iekTEXT) or (Kind = iekLINELABEL) or (Kind = iekEXTENDED) then
    begin
      if ver >= 52 then
        Stream.read(TextAlign, sizeof(TIEAlignment));
      if ver >= 57 then
        Stream.read(TextAutoSize, sizeof(boolean));
      // allocate and read iekTEXT/iekLINELABEL/iekEXTENDED fields
      Stream.Read(q, sizeof(integer)); // read string length (without ending zero)
      getmem(text, q + 1);
      Stream.Read(Text^, q);
      Text[q] := #0;
      Stream.Read(b, sizeof(boolean));
      if b then
      begin
        getmem(LogFont, sizeof(TLogFont));
        Stream.Read(LogFont^, sizeof(TLogFont));
      end;
      if ver >= 63 then
      begin
        Stream.Read(CurvedLen, sizeof(integer));
        if CurvedLen > 0 then
        begin
          getmem(CurvedPos, sizeof(TDPoint) * CurvedLen);
          Stream.Read(CurvedPos[0], sizeof(TDPoint) * CurvedLen);
          Stream.Read(CurvedCharRot, sizeof(integer));
        end
        else
        begin
          CurvedPos := nil;
          CurvedCharRot := -10;
        end;
      end;
    end;
    // iekMEMO fields
    if Kind = iekMEMO then
    begin
      Stream.Read(q, sizeof(integer));
      getmem(text, q + 1);
      Stream.Read(Text^, q);
      Text[q] := #0;
      Stream.Read(b, sizeof(boolean));
      if b then
      begin
        getmem(LogFont, sizeof(TLogFont));
        Stream.Read(LogFont^, sizeof(TLogFont));
      end;
      // load text format
      TextFormat := nil;
      TextFormatRef := nil;
      if ver>=67 then
        Stream.Read(b, sizeof(boolean))
      else
        b:=true;
      if b then
      begin
        getmem(TextFormatRef, sizeof(integer) * (q + 1));
        Stream.Read(TextFormatRef^, sizeof(integer) * q);
      end;
      Stream.Read(q, sizeof(integer));
      TextFormat := TList.Create;
      for i := 0 to q - 1 do
      begin
        getmem(ci, sizeof(TIECharInfo));
        Stream.Read(ci^, sizeof(TIECharInfo));
        TextFormat.Add(ci);
      end;
      //
      Stream.read(FontLocked, sizeof(boolean));
      Stream.read(TextAutoSize, sizeof(boolean));
      Stream.read(LineSpace, sizeof(integer));
      Stream.Read(MemoBorderColor, sizeof(TColor));
      Stream.Read(MemoBorderStyle, sizeof(TPenStyle));
      Stream.read(TextAlign, sizeof(TIEAlignment));
      Stream.read(MemoFixedHeight, sizeof(integer));
      if ver>=73 then
        Stream.Read(MemoHasBitmap, sizeof(boolean));
      if MemoHasBitmap then
      begin
        Stream.read(BitmapIdx, sizeof(integer));
        if not LoadBitmapIdx then
          BitmapIdx := -1;
        if ver>=66 then
          Stream.Read(BitmapBorder, sizeof(boolean));
      end;
      MemoMarginLeft:=0;
      MemoMarginTop:=0;
      MemoMarginRight:=0;
      MemoMarginBottom:=0;
      MemoCharsBrushStyle:=bsSolid;
      if ver>=72 then
      begin
        Stream.Read(MemoMarginLeft, sizeof(double));
        Stream.Read(MemoMarginTop, sizeof(double));
        Stream.Read(MemoMarginRight, sizeof(double));
        Stream.Read(MemoMarginBottom, sizeof(double));
        if ver>=76 then
          Stream.Read(MemoCharsBrushStyle, sizeof(TBrushStyle));
      end;
    end;
    if ver>=74 then
      Stream.Read(TextEditable, sizeof(boolean) )
    else
      TextEditable:=true;
    // iekRULER fields
    if Kind = iekRULER then
    begin
      if ver >= 53 then
      begin
        Stream.Read(RulerUnit, sizeof(TIEUnits));
        Stream.Read(RulerType, sizeof(TIEVRulerType));
        getmem(LogFont, sizeof(TLogFont));
        b := false;
        if ver >= 65 then
        begin
          Stream.Read(b, sizeof(boolean));
          if b then
            Stream.Read(LogFont^, sizeof(TLogFont));
        end;
        if not b then
        begin
          copymemory(LogFont, fNewObj.LogFont, sizeof(TLogFont));
          LogFont^.lfHeight := 12;
          LogFont^.lfFaceName := 'Arial';
        end;
      end;
    end;
    // iekPOLYLINE fields
    if Kind = iekPOLYLINE then
    begin
      if ver >= 56 then
      begin
        Stream.Read(PolyPointsCount, sizeof(integer));
        getmem(PolyPoints, sizeof(TPoint) * PolyPointsCount);
        Stream.Read(pbyte(PolyPoints)^, sizeof(TPoint) * PolyPointsCount);
        Stream.Read(PolyBaseX1, sizeof(integer));
        Stream.Read(PolyBaseY1, sizeof(integer));
        Stream.Read(PolyBaseX2, sizeof(integer));
        Stream.Read(PolyBaseY2, sizeof(integer));
        if ver >= 59 then
          Stream.Read(PolyClosed, sizeof(boolean));
      end
      else
      begin
        PolyPoints := nil;
        PolyPointsCount := 0;
        PolyBaseX1 := 0;
        PolyBaseY1 := 0;
        PolyBaseX2 := 0;
        PolyBaseY2 := 0;
        PolyClosed := false;
      end;
    end;
    // iekANGLE fields
    if Kind = iekANGLE then
    begin
      if ver >= 58 then
        Stream.Read(AnglePoints[0], sizeof(TPoint) * 3);
      b:=false;
      getmem(LogFont, sizeof(TLogFont));
      if ver >= 75 then
      begin
        Stream.Read(b, sizeof(boolean));
        if b then
          Stream.Read(LogFont^, sizeof(TLogFont))
      end;
      if not b then
      begin
        copymemory(LogFont, fNewObj.LogFont, sizeof(TLogFont));
        LogFont^.lfHeight := 10;
        LogFont^.lfFaceName := 'Arial';
      end;
    end;
    // iekEXTENDED
    extendedObject:=nil;
    if (Kind = iekEXTENDED) and (ver>=78) then
    begin
      Stream.Read(b,sizeof(boolean));
      if b then
      begin
        LoadStringFromStream(Stream,cname);
        extendedObject:=IEVCreateExtendedObject(cname);
        extendedObject.fParent:=self;
        extendedObject.Initialize;
        extendedObject.LoadFromStream(Stream);
      end;
    end;
    //
    if Kind = iekNONE then
    begin
      for q := 0 to ObjCount - 1 do
        ReadObj(Stream, ver, true);
    end
    else
    begin
      result := AddVObject(o);
      ObjUserData[result]:=UserData;  // here we don't free UserData becuase it is assigned to ObjUserData
      ObjUserDataLength[result]:=UserDataLength;
      UserDataLength:=0;
      // free temporaney fields (because AddVObject makes a copy of them)
      if (Kind = iekTEXT) or (Kind = iekMEMO) or (Kind = iekLINELABEL) or (Kind = iekEXTENDED) then
      begin
        if Text<>nil then
          freemem(Text);
        if LogFont<>nil then
          freemem(LogFont);
        if TextFormatRef <> nil then
          freemem(TextFormatRef);
        if TextFormat <> nil then
        begin
          while TextFormat.Count > 0 do
          begin
            freemem(TextFormat[TextFormat.Count - 1]);
            TextFormat.Delete(TextFormat.Count - 1);
          end;
        end;
        FreeAndNil(TextFormat);
        if CurvedPos <> nil then
          freemem(CurvedPos);
      end;
      if (Kind = iekBITMAP) and (Text<>nil) then
        freemem(Text);
      if ((Kind = iekRULER) or (Kind=iekANGLE)) and (LogFont <> nil) then
        freemem(LogFont);
      freemem(Name);
      FreeAndNil(softShadow);
      if (Kind=iekPOLYLINE) and (PolyPoints<>nil) then
        freemem(PolyPoints);
    end;
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
// stream format:
//    3 char   : 'IEV' magic string
//    1 byte   : version number (starting from 51)
//    DWORD    : file size (da 'IEV') in byte
//    QWORD    : scale factor (double)
//    DWORD    : bitmaps count (included the bitmap in newobj: its reference will be decreased)
//    ....     : bitmaps (format BMP or PNG)
//    DWORD    : number of objects
//    ....     : objects
// This function executes PackBMP before save to remove empty bitmaps inside fBitmaps.

{!!
<FS>TImageEnVect.SaveToStreamIEV

<FM>Declaration<FC>
procedure SaveToStreamIEV(Stream: TStream);

<FM>Description<FN>
SaveToStreamIEV saves objects to file. The IEV format is written to save vectorial objects as lines, ellipses and bitmaps (but not background image).


<FM>Example<FC>

// saves the vectorial images contained in ImageEnVect1 and ImageEnVect2 to "mappe.dat".
var
  fs:TFileStream;
begin
  fs:=TFileStream.Create('mappe.dat',fmCreate);
  ImageEnVect1.SaveToStreamIEV(fs);
  ImageEnVect2.SaveToStreamIEV(fs);
  fs.free;
end;

!!}
procedure TImageEnVect.SaveToStreamIEV(Stream: TStream);
var
  p1, p2: int64;
  dw: DWORD;
  q, rf: integer;
  fImageEnIO: TImageEnIO;
  LZStream: TZCompressionStream;
begin
  PackBMP; // pack the bitmaps
  p1 := Stream.Position; // position
  Stream.Write(IEVMAGIC, 3); // Magic
  Stream.Write(IEVVER, 1); // version
  Stream.Write(dw, sizeof(integer)); // bypass file size
  Stream.Write(fScale, sizeof(double)); // scale factor
  // save bitmaps
  Stream.Write(fBitmapsCount, sizeof(integer)); // bitmaps count
  fImageEnIO := TImageEnIO.Create(self);
  for q := 0 to fBitmapsCount - 1 do
  begin
    rf := fBitmaps^[q].fRefCount;
    if q = fNewObj.BitmapIdx then
      dec(rf); // do not save the bitmap is it is used by fNewObj
    Stream.Write(rf, sizeof(integer)); // reference count
    // save only if reference is >0
    if rf > 0 then
    begin
      fImageEnIO.AttachedIEBitmap := fBitmaps^[q].fBitmap;
{$IFDEF IEINCLUDEPNG}
      fImageEnIO.SaveToStreamPNG(Stream); // bitmap
{$ELSE}
      fImageEnIO.SaveToStreamBMP(Stream);
{$ENDIF}
    end;
  end;
  FreeAndNil(fImageEnIO);
  // save objects
  LZStream := TZCompressionStream.Create(Stream, zcDefault);
  LZStream.Write(fObjCount, sizeof(integer)); // objects count
  SaveObj(LZStream, -3);
  FreeAndNil(LZStream);
  //
  p2 := Stream.Position; // end of stream position
  Stream.Position := p1 + sizeof(integer); // go to "file size"
  q := p2 - p1;
  Stream.Write(q, sizeof(integer)); // save file size
  Stream.Position := p2; // go to end of stream
end;

function IETryIEV(Stream:TStream):boolean;
var
  l:int64;
  magic: array[0..2] of char;
  ver: byte;
begin
  l:=Stream.Position;
  result:=true;
  Stream.Read(magic, 3); // read magic
  Stream.Read(ver, 1); // read version
  if (magic <> 'IEV') or (ver < 49) or (ver > IEVVER) then
    result := false;
  Stream.Position:=l;
end;


{!!
<FS>TImageEnVect.LoadFromStreamIEV

<FM>Declaration<FC>
procedure LoadFromStreamIEV(Stream: TStream);

<FM>Description<FN>
LoadFromStreamIEV loads objects from a stream.
The IEV format is written to save vectorial objects as lines, ellipses and bitmaps (but not background image).
Returns True on successful.

<FM>Example<FC>

// Loads two vectorial images from "maps.iev", and shows them in ImageEnVect1 and ImageEnVect2
var
  fs:TFileStream;
begin
  fs:=TFileStream.Create('maps.iev',fmOpenRead);
  ImageEnVect1.LoadFromStreamIEV(fs);
  ImageEnVect2.LoadFromStreamIEV(fs);
  fs.free;
end;

!!}
function TImageEnVect.LoadFromStreamIEV(Stream: TStream): boolean;
var
  magic: array[0..2] of char;
  ver: byte;
  dm: integer; // size of file
  no: integer; // objects count
  q, w, ii, i: integer;
  lfs: boolean;
  fImageEnIO: TImageEnIO;
  predbmp: TIEBitmap;
  ms: TMemoryStream;
  LZStream: TZDecompressionStream;
  lAutoUndo:boolean;
begin
  Stream.Read(magic, 3); // read magic
  Stream.Read(ver, 1); // read version
  if (magic <> 'IEV') or (ver < 49) or (ver > IEVVER) then
  begin
    result := false;
    exit;
  end;
  result := true;
  lfs := fShareBitmaps;
  fShareBitmaps := True;
  if fNewObj.BitmapIdx >= 0 then
  begin
    // save bitmap of new object
    predbmp := TIEBitmap.Create;
    predbmp.Assign(fBitmaps^[fNewObj.BitmapIdx].fBitmap);
    // remove bitmap of new object
    SetObjBitmapNU(-1, nil);
  end
  else
    predbmp := nil;

  lAutoUndo:=fObjAutoUndo;
  fObjAutoUndo:=False;
  RemoveAllObjects;
  fObjAutoUndo:=lAutoUndo;

  Stream.Read(dm, sizeof(integer)); // file size
  if ver = 49 then
  begin
    Stream.Read(q, sizeof(integer)); // scale factor
    fScale := q;
  end
  else
    Stream.Read(fScale, sizeof(double)); // scale factor
  // read images
  fImageEnIO := TImageEnIO.Create(self);
  Stream.Read(fBitmapsCount, sizeof(integer)); // bitmaps count
  fBitmaps := allocmem(sizeof(TIEVBitmap) * fBitmapsCount); // init to ZERO
  for q := 0 to fBitmapsCount - 1 do
  begin
    Stream.Read(w, sizeof(integer)); // reference count
    if w > 0 then
    begin
      fBitmaps^[q].fBitmap := TIEBitmap.Create;
      fImageEnIO.AttachedIEBitmap := fBitmaps^[q].fBitmap;
      if ver <= 50 then
        fImageEnIO.LoadFromStreamBMP(Stream)
      else
{$IFDEF IEINCLUDEPNG}
        fImageEnIO.LoadFromStreamPNG(Stream);
{$ELSE}
        fImageEnIO.LoadFromStreamBMP(Stream);
{$ENDIF}
      if ver < 61 then
      begin
        // old versions still load the alpha separated by the bitmap
        if ver >= 55 then
        begin
          // load alpha channel
          Stream.Read(ii, sizeof(integer));
          ms := TMemoryStream.Create;
          ms.CopyFrom(Stream, ii);
          ms.position := 0;
          LZStream := TZDecompressionStream.Create(ms);
          for i := fBitmaps^[q].fBitmap.AlphaChannel.Height - 1 downto 0 do
            LZStream.Read((fBitmaps^[q].fBitmap.AlphaChannel.Scanline[i])^, fBitmaps^[q].fBitmap.AlphaChannel.Rowlen);
          FreeAndNil(LZStream);
          FreeAndNil(ms);
        end;
      end;
      // The reference count of bitmap must be zero.
      // ReadOBj will increase it.
    end;
  end;
  FreeAndNil(fImageEnIO);
  // read objects
  LZStream := TZDecompressionStream.Create(Stream);
  LZStream.Read(no, sizeof(integer)); // objects count
  for q := 0 to no - 1 do
    ReadObj(LZStream, ver, true);
  FreeAndNil(LZStream);
  //
  fShareBitmaps := lfs;
  if predbmp <> nil then
  begin
    // restore new object bitmap
    SetObjBitmapNU(-1, predbmp);
    FreeAndNil(predbmp);
  end;
  Update;
end;

/////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.SubMouseMoveScroll(scx, scy: integer);
begin
  inherited;
  dec(fVMoveX, scx);
  dec(fVMoveY, scy);
end;

{!!
<FS>TImageEnVect.CopyObjectsToBack

<FM>Declaration<FC>
procedure CopyObjectsToBack(Antialias:boolean=true);

<FM>Description<FN>
CopyObjectsToBack copies all object over background image. This method is a way to convert the vectorial objects to a pixmap image.

If Antialias is true (default is False) an anti-alias filter is applied to remove pixels aliasing.


<FM>Example<FC>

// Saves background image and vectorial objects in a BMP file
ImageEnVect1.CopyObjectsToBack(true);
ImageEnVect1.RemoveAllObjects;
ImageEnVect1.IO.SaveToFile('output.bmp');
!!}
procedure TImageEnVect.CopyObjectsToBack(Antialias: boolean);
begin
  DrawObjectsToBitmapEx(IEBitmap, Antialias, -1);
  Update;
  ImageChange;
end;

{!!
<FS>TImageEnVect.CopyObjectToBack

<FM>Declaration<FC>
procedure CopyObjectToBack(hobj:integer; Antialias:boolean=true);

<FM>Description<FN>

This method copies/merges the specified object over the background image.
Antialias is true if you want to apply the antialias filter.

!!}
procedure TImageEnVect.CopyObjectToBack(hobj:integer; Antialias:boolean);
begin
  DrawObjectsToBitmapEx(IEBitmap, Antialias, hobj);
  Update;
  ImageChange;
end;

{!!
<FS>TImageEnVect.DrawObjectsToBitmap

<FM>Declaration<FC>
procedure DrawObjectsToBitmap(target:<A TIEBitmap>; Antialias:boolean=true);

<FM>Description<FN>
DrawObjectsToBitmap draws all vectorial objects on the specified <A TIEBitmap> object (target).
Antialias parameter controls the anti-alias filter.

<FM>Example<FC>

ImageEnVect.DrawObjectsToBitmap( ImageEnView2.IEBitmap, true );
ImageEnView2.Update;

!!}
procedure TImageEnVect.DrawObjectsToBitmap(target: TIEBitmap; Antialias: boolean);
begin
  DrawObjectsToBitmapEx(target,Antialias,-1);
end;

{!!
<FS>TImageEnVect.DrawOneObjectToBitmap

<FM>Declaration<FC>
procedure DrawOneObjectToBitmap(hobj: integer; target: TIEBitmap; Antialias: boolean=true);

<FM>Description<FN>
DrawOneObjectToBitmap draws a vectorial object on the specified <A TIEBitmap> object (target).
Antialias parameter controls the anti-alias filter.

<FM>Example<FC>

ImageEnVect.DrawObjectsToBitmap( ImageEnView2.IEBitmap, true );
ImageEnView2.Update;

!!}
procedure TImageEnVect.DrawOneObjectToBitmap(hobj: integer; target: TIEBitmap; Antialias: boolean);
begin
  DrawObjectsToBitmapEx(target,Antialias,hobj);
end;

procedure TImageEnVect.DrawObjectsToBitmapEx(target: TIEBitmap; Antialias: boolean; OnlyThis:integer);
var
  lObjGraphicRender:boolean;
  lFastDrawing:boolean;
  tmpbmp:TIEBitmap;
begin
  lObjGraphicRender:=fObjGraphicRender;
  if Antialias then
    fObjGraphicRender:=true;
  lFastDrawing:=fFastDrawing;
  fFastDrawing:=false;

  if (target.Location<>ieTBitmap) or (target.PixelFormat<>ie24RGB) then
  begin
    // We need a Canvas or the pixel format is not supported and we don't want change the pixelformat and location
    tmpbmp:=TIEBitmap.Create;
    tmpbmp.AssignImage( target ); // There is AssignImage because we don't want alpha channel
    tmpbmp.PixelFormat:=ie24RGB;
    tmpbmp.Location:=ieTBitmap; // it is important that Location is after AssignImage and PixelFormat
    DrawObjects(tmpbmp, true, tmpbmp.VclBitmap, Antialias, OnlyThis);
    tmpbmp.Location:=ieFile;
    tmpbmp.PixelFormat:=target.PixelFormat;
    target.AssignImage( tmpbmp );
    FreeAndNil(tmpbmp);
  end
  else
  begin
    // We can write directly on the target bitmap
    DrawObjects(target, true, target.VclBitmap, Antialias, OnlyThis);
  end;

  fObjGraphicRender:=lObjGraphicRender;
  fFastDrawing:=lFastDrawing;
end;

{!!
<FS>TImageEnVect.ScaleFactor

<FM>Declaration<FC>
property ScaleFactor: double;

<FM>Description<FN>
ScaleFactor specifies the scale factor (default 1).

In the common representation X:Y (ex. 1:100000) is the Y value (100000).
This value, with <A TIEView.DpiX> and <A TIEView.DpiY> (and measure unit <A TImageEnVect.MUnit>), weight the measurements of areas and line lengths.


<FM>Example<FC>

// Sets a scale factor of 1:100000
ImageEnVect1.ScaleFactor:=100000;

!!}
procedure TImageEnVect.SetScale(v: double);
begin
  fScale := v;
  CalcCoef(fCoefX, fCoefY, fMUnit);
  UpdateHint(-1000000, -1000000);
  Update;
end;


{!!
<FS>TImageEnVect.SetScaleFromPixels

<FM>Declaration<FC>
procedure SetScaleFromPixels(px:integer; mm:double);

<FM>Description<FN>
SetScaleFromPixels changes the <A TImageEnVect.ScaleFactor> property such that px pixels correspond to one mm (<A TImageEnVect.MUnit>).

<FM>Example<FC>

// This code makes so that 100 pixels are equals to 1 meter.
ImageEnVect1.MUnit:=ieuMETERS;
ImageEnVect1.SetScaleFromPixels(100,1);

!!}
// Force fScale to make px (pixels) = mm (fMUnit)
procedure TImageEnVect.SetScaleFromPixels(px: integer; mm: double);
begin
  SetScale((mm / px) / (fCoefX / fScale));
end;

// Force fScale to make the selection length = mm (fMUnit)
{!!
<FS>TImageEnVect.SetScaleFromSelectionLen

<FM>Declaration<FC>
procedure SetScaleFromSelectionLen(mm:double);

<FM>Description<FN>
SetScaleFromSelectionLen makes the perimeter of the selection region correspond to one mm (<A TImageEnVect.MUnit>) by changing <A TImageEnVect.ScaleFactor> property.


<FM>Example<FC>

// This computes scalefactor so that the length of the current selection measures 5 millimeters.
TImageEnVect1.MUnit:=ieuMILLIMETERS;
TImageEnVect1.SetScaleFromSelectionLen(5);

!!}
procedure TIMageEnVect.SetScaleFromSelectionLen(mm: double);
var
  sl: double;
  cx, cy: double;
begin
  cx := fCoefX;
  cy := fCoefY;
  fCoefX := 1;
  fCoefY := 1;
  sl := GetSelectionLen; // misura in pixel
  fCoefX := cx;
  fCoefY := cy;
  SetScaleFromPixels(round(sl), mm);
end;

{!!
<FS>TImageEnVect.MouseInteractVt

<FM>Declaration<FC>
property MouseInteractVt: <A TIEMouseInteractVt>;

<FM>Description<FN>
MouseInteractVt selects which mouse actions TImageEnVect will handle automatically.

!!}
function TImageEnVect.GetMouseInteract: TIEMouseInteractVt;
begin
  result := fMouseInteractVt;
end;

// Find the object with the specified name
// Return -1 if object is not found
{!!
<FS>TImageEnVect.GetObjFromName

<FM>Declaration<FC>
function GetObjFromName(const oName:string):integer;

<FM>Description<FN>
GetObjFromName finds the first vectorial object with the specified name. Objects names are stored in <A TImageEnVect.ObjName>.
Strings are case sensitive.
The returned value is the handle of the object.


<FM>Example<FC>

// set pen color to clRed for the first object that has ObjName[]='Jack'
var
  hobj:integer;
begin
...
  hobj:=ImageEnVect1.GetObjFromName('Jack');
  ImageEnVect1.ObjPenColor[hobj]:=clRed;
..
end;

!!}
function TImageEnVect.GetObjFromName(const oName: string): integer;
var
  w: integer;
begin
  result := -1;
  for w := 0 to fObjCount - 1 do
  begin
    if GetObj(fObj^[w]).name = oName then
      result := fObj^[w];
  end;
end;

// Find the object with the specified ID
// Return -1 if object not found
{!!
<FS>TImageEnVect.GetObjFromID

<FM>Declaration<FC>
function GetObjFromID(oID:integer):integer;

<FM>Description<FN>
GetObjFromID finds first object with the specified ID.
IDs are stored in <A TImageEnVect.ObjID>.
The returned value is the handle of the object.


<FM>Example<FC>

// set pencolor to clRed to the first object that has ObjID[]=17
var
  hobj:integer;
begin
...
  hobj:=ImageEnVect1.GetObjFromID(17);
  ImageEnVect1.ObjPenColor[hobj]:=clRed;
..
end;

!!}
function TImageEnVect.GetObjFromID(oID: integer): integer;
var
  w: integer;
begin
  result := -1;
  for w := 0 to fObjCount - 1 do
  begin
    if GetObj(fObj^[w]).id = oId then
      result := fObj^[w];
  end;
end;

{!!
<FS>TImageEnVect.GetObjFromIndex

<FM>Declaration<FC>
function GetObjFromIndex(idx:integer):integer;

<FM>Description<FN>
GetObjFromIndex returns the object handle of the idx object.
It is useful to iterate over all vectorial objects.

<FM>Example<FC>

// changes to red pen color for each object
for i:=0 to ImageEnVect1.ObjectsCount-1 do
begin
  hobj := ImageEnVect1.GetObjFromIndex( i );
  ImageEnVect1.ObjPenColor[ hobj ] := clRed;
end;

!!}
function TImageEnVect.GetObjFromIndex(idx: integer): integer;
begin
  if (idx >= 0) and (idx < fObjCount) then
    result := fObj^[idx]
  else
    result := -1;
end;

// return hobj index
function TImageEnVect.GetObjPos(hobj: integer): integer;
begin
  for result := 0 to fObjCount - 1 do
    if fObj^[result] = hobj then
      exit;
  result := -1;
end;

// Insert an existing object (useful for moving tasks)
procedure TImageEnVect.ReInsertVObject(hobj: integer; pos: integer);
var
  tmp: pintegerarray;
begin
  // resize array
  if (fObjCount mod ALLOCBLOCK) = 0 then
  begin
    getmem(tmp, sizeof(integer) * (fObjCount + ALLOCBLOCK + 10));
    copymemory(tmp, fObj, sizeof(integer) * fObjCount);
    freemem(fObj);
    fObj := tmp;
  end;
  // insert the object in "pos"
  move(pbyte(int64(fObj) + sizeof(integer) * (pos))^,
    pbyte(int64(fObj) + sizeof(integer) * (pos + 1))^,
    sizeof(integer) * (fObjCount - pos));
  inc(fObjCount);
  fObj^[pos] := hobj;
end;

// Move hobj after refobj
// If refobj=-1 move in front of all objects
{!!
<FS>TImageEnVect.SetObjFrontOf

<FM>Declaration<FC>
procedure SetObjFrontOf(hobj:integer; refobj:integer);

<FM>Description<FN>
SetObjFrontOf visually moves object hobj in front of refobj.

If refobj is -1, SetObjFrontOf moves hobj in front of all objects.


<FM>Example<FC>
....
obj1:=AddNewObject;
....
obj2:=AddNewObject;	 // obj2 is over obj1
....
ImageEnVect1.SetObjFrontOf( obj1,obj2 );	 // obj1 is over obj2

ImageEnVect1.SetObjBackTo( obj1,obj2 );	 // now obj2 is over obj1

// Moves obj1 in front of all objects
ImageEnVect1.SetObjFrontOf(obj1,-1);

// Moves obj1 back to all objects
ImageEnVect1.SetObjBackTo(obj1,-1);

!!}
procedure TImageEnVect.SetObjFrontOf(hobj: integer; refobj: integer);
var
  inspos: integer;
begin
  RemoveVObject(hobj); // remove hobj
  if refobj >= 0 then
  begin
    inspos := GetObjPos(refobj);
    ReInsertVObject(hobj, inspos + 1);
  end
  else
    ReInsertVObject(hobj, fObjCount);
  Update;
end;

// Move hobj before refobj
{!!
<FS>TImageEnVect.SetObjBackTo

<FM>Declaration<FC>
procedure SetObjBackTo(hobj:integer; refobj:integer);

<FM>Description<FN>
SetObjBackTo visually moves object hobj behind refobj.  That is, refobj will appear to be in front of hobj.

If refobj is -1, SetObjBackTo visually moves hobj behind all objects.


<FM>Example<FC>
....
obj1:=AddNewObject;
....
obj2:=AddNewObject;	 // obj2 is over obj1
....
ImageEnVect1.SetObjFrontOf( obj1,obj2 );	 // obj1 is over obj2

ImageEnVect1.SetObjBackTo( obj1,obj2 );	 // now obj2 is over obj1

// Moves obj1 in front of all objects
ImageEnVect1.SetObjFrontOf(obj1,-1);

// Moves obj1 back to all objects
ImageEnVect1.SetObjBackTo(obj1,-1);

!!}
procedure TImageEnVect.SetObjBackTo(hobj: integer; refobj: integer);
var
  inspos: integer;
begin
  RemoveVObject(hobj); // remove hobj
  if refobj >= 0 then
  begin
    inspos := GetObjPos(refobj);
    ReInsertVObject(hobj, inspos);
  end
  else
  begin
    ReInsertVObject(hobj, 0);
  end;
  Update;
end;

{!!
<FS>TImageEnVect.AllObjectsHidden

<FM>Declaration<FC>
property AllObjectsHidden: boolean;

<FM>Description<FN>
Set AllObjectsHidden to hide/show all objects at the same time.

!!}
procedure TImageEnVect.SetAllObjectsHidden(Value: boolean);
begin
  if Value <> fAllObjectsHidden then
  begin
    fAllObjectsHidden := value;
    Repaint;
  end;
end;

{!!
<FS>TImageEnVect.ZoomObjectsWidth

<FM>Declaration<FC>
property ZoomObjectsWidth:boolean;

<FM>Description<FN>
Set ZoomObjectsWidth to apply zoom to vectorial objects (lines, boxs, ...) also.
!!}
procedure TImageEnVect.SetZoomObjectsWidth(Value: boolean);
begin
  fZoomObjectsWidth := Value;
  Update;
end;

procedure TImageEnVect.KeyDown(var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F2:
      begin
        if fSelObjCount > 0 then
          if (GetObj(fSelObj^[0])^.Kind = iekTEXT) or (GetObj(fSelObj^[0])^.Kind = iekMEMO) then
          begin
            fTextEditing := fSelObj^[0];
            ActivateTextEdit;
          end;
      end;
    VK_ESCAPE:
      begin
        RemoveTextEdit;
        fTextEditing := -1;
      end;
  end;
  inherited;
end;

// 2.3.2
procedure TImageEnVect.WMKeyDown(var Msg:TWMKeyDown);
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnVect.CMWantSpecialKey'); {$endif}
  inherited;
  if fSelObjCount=1 then
    with GetObj(fSelObj^[0])^ do
      if (Kind=iekEXTENDED) and assigned(extendedObject) then
        extendedObject.KeyDown(Msg.CharCode,KeyDataToShiftState(Msg.KeyData));
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// 2.2.9 (to allow WMKeyDown to get arrow keys)
procedure TImageEnVect.WMGetDlgCode(var message: TMessage);
begin
  message.Result := DLGC_WANTARROWS or DLGC_WANTCHARS;
end;

{!!
<FS>TImageEnVect.ObjectsExtents

<FM>Declaration<FC>
property ObjectsExtents:TRect;

<FM>Description<FN>
ObjectsExtents is the bounding rectangle of all vectorial objects, expressed in bitmap coordinate.

Read-Only

!!}
function TImageEnVect.GetObjectsExtents: TRect;
var
  o: integer;
begin
  result := Rect(0, 0, 0, 0);
  for o := 0 to fObjCount - 1 do
  begin
    with GetObj(fObj^[o])^ do
    begin
      result.Right := imax(result.Right, imax(x1, x2) + 1);
      result.Bottom := imax(result.Bottom, imax(y1, y2) + 1);
    end;
  end;
end;

function TImageEnVect.CountAnglePoints(AnglePoints: array of TPoint): integer;
var
  i: integer;
begin
  result := 0;
  for i := 0 to 2 do
    if AnglePoints[i].x = -1000000 then
      break
    else
      inc(result);
end;

// zx=100/ZoomX, zy=100/ZoomY
// pw=pen width
// AnglePoints must be in bitmap coordinates
procedure TImageEnVect.DrawAngle(wcanvas: TIECanvas; AnglePoints: array of TPoint; Color: TColor; PW: integer; var plim: trect; UseZoom: boolean; mul: integer; zx,zy: double; logfont: PLogFont);
var
  i, setpoint, xc, yc, x1, y1, x2, y2, ll, l1, l2, xx, yy: integer;
  tw, th: integer;
  aa: double;
  ss: string;
begin
  if AnglePoints[0].x <> -1000000 then
    with wcanvas do
    begin
      pen.Mode := pmCopy;
      pen.width := pw;
      pen.style := psSolid;
      pen.Color := Color;
      Font.Name := logfont^.lfFaceName;
      Font.Size := imax(3, trunc(abs(logfont^.lfHeight) / zy));
      Font.Color := Color;
      if syslocale.PriLangID = LANG_GREEK then
        Font.Charset := GREEK_CHARSET;
      brush.Style := bsClear;
      setpoint := 1;
      xx := VXBmp2Scr(AnglePoints[0].x, UseZoom, mul);
      yy := VYBmp2Scr(AnglePoints[0].y, UseZoom, mul);
      moveto(xx, yy);
      iesetplim(plim, xx, yy);
      for i := 1 to 2 do
        if AnglePoints[i].x <> -1000000 then
        begin
          xx := VXBmp2Scr(AnglePoints[i].x, UseZoom, mul);
          yy := VYBmp2Scr(AnglePoints[i].y, UseZoom, mul);
          lineto(xx, yy);
          iesetplim(plim, xx, yy);
          inc(setpoint);
        end
        else
          break;
      if setpoint = 3 then
      begin
        // can calculate the angle
        aa := IEAngle3(AnglePoints[0].x, AnglePoints[0].y, AnglePoints[1].x, AnglePoints[1].y, AnglePoints[2].x, AnglePoints[2].y);
        aa := aa / PI * 180;
        xc := VXBmp2Scr(AnglePoints[1].x, UseZoom, mul);
        yc := VYBmp2Scr(AnglePoints[1].y, UseZoom, mul);

        if not fObjAngleShowSmall or (aa < 180) then
          ss := floattostrf(aa, ffFixed, fFloatPrecision, fFloatDigits) + '�'
        else
          ss := floattostrf(360 - aa, ffFixed, fFloatPrecision, fFloatDigits) + '�';

        textout(xc, yc, ss);
        tw := textwidth(ss);
        th := textheight(ss);
        iesetplim(plim, xc, yc);
        iesetplim(plim, xc + tw, yc + th);
        x1 := VXBmp2Scr(AnglePoints[0].x, UseZoom, mul);
        y1 := VYBmp2Scr(AnglePoints[0].y, UseZoom, mul);
        x2 := VXBmp2Scr(AnglePoints[2].x, UseZoom, mul);
        y2 := VYBmp2Scr(AnglePoints[2].y, UseZoom, mul);
        l1 := trunc(sqrt(sqr(xc - x2) + sqr(yc - y2))) div 4;
        l2 := trunc(sqrt(sqr(xc - x1) + sqr(yc - y1))) div 4;
        ll := imin(l1, l2);

        if not fObjAngleShowSmall or (aa < 180) then
          arc(xc - ll, yc - ll, xc + ll, yc + ll, x1, y1, x2, y2)
        else
          arc(xc - ll, yc - ll, xc + ll, yc + ll, x2, y2, x1, y1);

        iesetplim(plim, xc - ll, yc - ll);
        iesetplim(plim, xc + ll, yc + ll);
      end;
    end;
end;


{!!
<FS>TImageEnVect.GetAngleValue

<FM>Declaration<FC>
function GetAngleValue(hobj:integer):double;

<FM>Description<FN>
GetAngleValue returns the measured angle in degrees for an iekAngle object.

!!}
function TImageEnVect.GetAngleValue(hobj: integer): double;
begin
  result := 0;
  with GetObj(hobj)^ do
  begin
    if CountAnglePoints(AnglePoints) = 3 then
    begin
      result := IEAngle3(AnglePoints[0].x, AnglePoints[0].y, AnglePoints[1].x, AnglePoints[1].y, AnglePoints[2].x, AnglePoints[2].y);
      result := result / PI * 180; // convert to degrees
    end;
  end;
end;

// zx= 100/ZoomX zy=100/ZoomY
// pw = pen width

procedure TImageEnVect.DrawRuler(wcanvas: TIECanvas; QuoteLength:double; x1, y1, x2, y2: integer; um: TIEUnits; Color: TColor; PW: integer; RulerType: TIEVRulerType; zx,zy: double; var plim: trect; logfont: PLogFont);
var
  aa, bb, hwx,hwy, mhw1x, mhw2x, mhw1y, mhw2y, hh: double;
  ll: double;
  mfreq1: integer;
  fl: boolean;
  xx, yy, xa, ya, xb, yb: integer;
  th, tw: integer;
  ss: string;
  cosbb, sinbb: double;
  cosbbpi, sinbbpi: double;
  cosbbpi2: double;
  cosbbmpi: double;
  rx, ry, rw: double;
  px, py, rh: double;
  dst: integer;
  cx, cy: double;
  xlog: TLogFont;
  hfont: THandle;
  hpred: THandle;
  qhoriz:boolean;
begin
  if (x1 = x2) and (y1 = y2) then
    exit;
  with wcanvas do
  begin
    pen.Mode := pmCopy;
    pen.width := pw;
    pen.style := psSolid;
    aa := ieangle(x1, y1, x2, y2, x1, y2);
    if x1 = x2 then
      if y1 < y2 then
        aa := -A90
      else
        aa := A90;
    fl := ((x1 > x2) and (y2 < y1)) or ((x1 < x2) and (y1 < y2));
    if fl then
      bb := 2 * pi - aa + A90
    else
      bb := aa + A90;
    cosbb := cos(bb);
    sinbb := sin(bb);
    cosbbpi := cos(bb + pi);
    sinbbpi := sin(bb + pi);
    cosbbpi2 := cos(bb + pi * 2);
    cosbbmpi := cos(bb - pi);
    Font.Name := logfont^.lfFaceName;
    Font.Size := imax(3, trunc(abs(logfont^.lfHeight) / zy));
    Font.Color := Color;
    if syslocale.PriLangID = LANG_GREEK then
      Font.Charset := GREEK_CHARSET;
    brush.Style := bsClear;
    pen.Color := Color;
    ll := _DistPoint2Point(x1, y1, x2, y2);
    wcanvas.DrawLine(x1, y1, x2, y2);
    iesetplim(plim, x1, y1);
    iesetplim(plim, x2, y2);
    case RulerType of
      iertQUOTEBEGIN, iertQUOTECENTER, iertQUOTEEND:
        begin
          hwx := trunc(9 / zx);
          hwy := trunc(9 / zy);
          xa := trunc(cosbb * hwx);
          ya := trunc(sinbb * hwy);
          xb := trunc(cosbbpi * hwx);
          yb := trunc(sinbbpi * hwy);
          moveto(x1 + xa, y1 + ya);
          iesetplim(plim, x1 + xa, y1 + ya);
          lineto(x1 + xb, y1 + yb);
          iesetplim(plim, x1 + xb, y1 + yb);
          moveto(x2 + xa, y2 + ya);
          iesetplim(plim, x2 + xa, y2 + ya);
          lineto(x2 + xb, y2 + yb);
          iesetplim(plim, x2 + xb, y2 + yb);
          //
          aa := 2 * pi - IEAngle2(x1, y1, x2, y2);
          if fObjRulerQuoteHorizon and (aa > (pi/2)) and (aa <= (3*pi/2)) then
            aa := aa-pi;
          GetObject(Font.Handle, sizeof(TLogFont), @xlog);
          xlog.lfEscapement := trunc(((-aa) * 180 / pi) * 10);
          hfont := CreateFontIndirect(xlog);
          hpred := selectobject(wcanvas.handle, hfont);
          if QuoteLength = -1 then
          begin
            CalcCoef(cx, cy, um);
            rx := abs(x2 - x1) * cx * zx;
            ry := abs(y2 - y1) * cy * zy;
            cx := sqrt(rx * rx + ry * ry);
          end
          else
            cx := QuoteLength;
          ss := floattostrf(cx, ffFixed, fFloatPrecision, fFloatDigits) + ' ' + strunits[ord(um)];
          tw := TextWidth(ss);
          th := TextHeight(ss);
          qhoriz := not fObjRulerQuoteHorizon or ((IEAngle2(x1, y1, x2, y2) < ((pi/2)-0.000001)) or (IEAngle2(x1, y1, x2, y2) > (3*pi/2)));
          case RulerType of
            iertQUOTEBEGIN:
              begin
                if qhoriz then
                begin
                  xa := x1;
                  ya := y1;
                end
                else
                begin
                  xa := x2;
                  ya := y2;
                end;
                TextOut(xa, ya, ' ' + ss);
              end;
            iertQUOTECENTER:
              begin
                if qhoriz then
                begin
                  xa := x1 + trunc((ll - tw) / 2 * cos(aa));
                  ya := y1 + trunc((ll - tw) / 2 * sin(aa));
                end
                else
                begin
                  xa := x1 - trunc((ll + tw) / 2 * cos(aa));
                  ya := y1 - trunc((ll + tw) / 2 * sin(aa));
                end;
                TextOut(xa, ya, ss);
              end;
            iertQUOTEEND:
              begin
                if qhoriz then
                begin
                  xa := x1 + trunc((ll - tw) * cos(aa));
                  ya := y1 + trunc((ll - tw) * sin(aa));
                end
                else
                begin
                  xa := x2 + trunc((ll - tw) * cos(aa));
                  ya := y2 + trunc((ll - tw) * sin(aa));
                end;
                TextOut(xa, ya, ss + ' ');
              end;
          end;
          iesetplim(plim, xa, ya);
          xb := trunc(tw * 1 * cos(aa) - th * 1 * sin(aa));
          yb := trunc(tw * 1 * sin(aa) + th * 1 * cos(aa));
          iesetplim(plim, xa + xb, ya + yb);
          iesetplim(plim, xa - 15, ya - 15);
          iesetplim(plim, xa + 15, ya + 15);
          iesetplim(plim, xa + xb + 15, ya + yb + 15);
          iesetplim(plim, xa + xb - 15, ya + yb - 15);
          //
          selectobject(wcanvas.handle, hpred);
          DeleteObject(hfont);
        end;
      iertRULER:
        begin
          if (y1=y2) then // 2.3.3
          begin
            cosbb:=0;
            sinbb:=-1;
            cosbbpi:=0;
            sinbbpi:=1;
            cosbbpi2:=0;
            cosbbmpi:=0;
          end;
          hwx := trunc(6 / zx);
          hwy := trunc(6 / zy);
          mhw1x := trunc(8 / zx);
          mhw1y := trunc(8 / zy);
          mhw2x := trunc(12 / zx);
          mhw2y := trunc(12 / zy);
          CalcCoef(cx, cy, um);
          cx := cx * zx * 10;
          cy := cy * zy * 10;
          if (cx = 0) or (cy = 0) then
            exit;
          rx := 1 / cx;
          ry := 1 / cy;
          mfreq1 := 0;
          px := 0;
          py := 0;
          dst := 0;
          while dst < ll do
          begin
            if x2 < x1 then
            begin
              rw := px * sinbb;
              rh := py * cosbbpi;
            end
            else
            begin
              rw := px * sinbbpi;
              rh := py * cosbb;
            end;
            if mfreq1 mod 10 = 0 then
              hh := mhw2y
            else if mfreq1 mod 5 = 0 then
              hh := mhw1y
            else
              hh := hwy;
            if _InRectO(x1 + trunc(rw), y1 + trunc(rh), x1, y1, x2, y2) then
            begin
              xa := x1 + trunc(rw + cosbb * hh);
              ya := y1 + trunc(rh + sinbb * hh);
              xb := x1 + trunc(rw + cosbbpi * hh);
              yb := y1 + trunc(rh + sinbbpi * Hh);
              moveto(xa, ya);
              iesetplim(plim, xa, ya);
              lineto(xb, yb);
              iesetplim(plim, xb, yb);
              if mfreq1 mod 10 = 0 then
              begin
                ss := inttostr(mfreq1 div 10);
                th := TextHeight(ss) * 2+1;
                tw := TextWidth(ss) shr 1;
                if fl then
                begin
                  xx := trunc(xa + th * cosbbpi2 - tw * cosbb * 2 + tw * sinbb);
                  yy := trunc(ya + th * sinbb + tw * cosbbmpi) + 20;
                  TextOut(xx, yy, ss);
                end
                else
                begin
                  xx := trunc(xa + th * cosbb + tw * sinbb);
                  yy := trunc(ya + th * sinbb + tw * cosbb) + 20;
                  TextOut(xx, yy, ss);
                end;
                iesetplim(plim, xx - 15, yy - 15);
                iesetplim(plim, xx + 15, yy + 15);
              end;
            end;
            //
            inc(mfreq1, 1);
            px := px + rx;
            py := py + ry;
            dst := trunc(sqrt(rw * rw + rh * rh));
          end;
        end;
    end; // end case
  end;
end;

procedure TImageEnVect.WMSize(var Message: TWMSize);
begin
  inherited;
  CancelInteracts;
  Update;
end;

// Calculates area of current selection.
// note: this algorithm doesn't work on intersected areas
{!!
<FS>TImageEnVect.GetSelectionArea

<FM>Declaration<FC>
function GetSelectionArea: double;

<FM>Description<FN>
GetSelectionArea returns the area of current selection.

!!}
function TImageEnVect.GetSelectionArea: double;
var
  i: integer;
  dxy: double;
  lbreak: integer;
  x,y,c:integer;
  x1,y1,x2,y2:integer;
begin
  dxy := (fCoefX) * (fCoefY);
  result := 0;
  with PIEAnimPoly(fHPolySel)^ do
  begin
    if PolyCount > 2 then
    begin
      lbreak := 0;
      i := 0;
      while i < PolyCount do
      begin
        if (Poly^[i + 1].x = IESELBREAK) or (i = PolyCount - 1) then
        begin
          result := result + dxy * (Poly^[i].X - Poly^[lbreak].X) * (Poly^[lbreak].Y + Poly^[i].Y);
          inc(i);
          lbreak := i + 1;
        end
        else
          result := result + dxy * (Poly^[i].X - Poly^[i + 1].X) * (Poly^[i + 1].Y + Poly^[i].Y);
        inc(i);
      end;
      result := abs(result / 2);
    end
    else if not fSelectionMask.IsEmpty then
    begin
      x1:=fSelectionMask.X1;
      y1:=fSelectionMask.Y1;
      x2:=fSelectionMask.X2;
      y2:=fSelectionMask.Y2;
      case fSelectionMask.BitsPerPixel of
        1:
          begin
            c:=0;
            for y:=y1 to y2 do
              for x:=x1 to x2 do
                if fSelectionMask.GetPixel(x,y)<>0 then
                  inc(c);
            result:=dxy*c;
          end;
      end;
    end;
  end;
end;

{!!
<FS>TImageEnVect.GetSelectionCentroid

<FM>Declaration<FC>
function GetSelectionCentroid: TPoint;

<FM>Description<FN>
GetSelectionCentroid calculates x, y coordinates of the selection's centroid. The point is in bitmap coordinates.

!!}
// Calculates x,y coordinates of the selection centroid
// The point is in bitmap coordinates
function TImageEnVect.GetSelectionCentroid: TPoint;
var
  oldMUnit: TIEUnits;
  i, j, n: integer;
  ai, atmp, xtmp, ytmp: double;
  x,y,a:integer;
  x1,y1,x2,y2:integer;
begin
  oldMUnit := MUnit;
  MUnit := ieuPIXELS;
  result.x := 0;
  result.y := 0;
  atmp := 0;
  xtmp := 0;
  ytmp := 0;
  if PIEAnimPoly(fHPolySel)^.PolyCount > 2 then
  begin
    with PIEAnimPoly(fHPolySel)^ do
    begin
      n := PolyCount;
      for i := 0 to n - 1 do
        if Poly^[i].x = IESELBREAK then
        begin
          n := i;
          break;
        end;
      i := n - 1;
      j := 0;
      while j < n do
      begin
        ai := Poly^[i].x * Poly^[j].y - Poly^[j].x * Poly^[i].y;
        atmp := atmp + ai;
        xtmp := xtmp + (Poly^[j].x + Poly^[i].x) * ai;
        ytmp := ytmp + (Poly^[j].y + Poly^[i].y) * ai;
        i := j;
        inc(j);
      end;
      if (atmp <> 0) then
      begin
        result.x := trunc(xtmp / (3 * atmp));
        result.y := trunc(ytmp / (3 * atmp));
      end;
    end;
  end
  else if not fSelectionMask.IsEmpty then
  begin
    x1:=fSelectionMask.X1;
    y1:=fSelectionMask.Y1;
    x2:=fSelectionMask.X2;
    y2:=fSelectionMask.Y2;
    case fSelectionMask.BitsPerPixel of
      1:
        begin
          a:=0;
          for y:=y1 to y2 do
            for x:=x1 to x2 do
              if fSelectionMask.GetPixel(x,y)<>0 then
              begin
                inc(a);
                result.x:=result.x+x;
                result.y:=result.y+y;
              end;
          result.x:=round(result.x/a+1);
          result.y:=round(result.y/a+1);
        end;
    end;
  end;
  MUnit := oldMUnit;
end;

{!!
<FS>TImageEnVect.BitmapResampleFilter

<FM>Declaration<FC>
property BitmapResampleFilter: <A TResampleFilter>;

<FM>Description<FN>
BitmapResampleFilter sets the filter to applied to all bitmap (iekBitmap) objects.

!!}
procedure TImageEnVect.SetBitmapResampleFilter(v: TResampleFilter);
begin
  if v <> fBitmapResampleFilter then
    fBitmapResampleFilter := v;
  Update;
end;

procedure TImageEnVect.DoVectorialChanged;
begin
  fVectorialChanged := true;
  fVectorialChanging := false;
  if assigned(fOnVectorialChanged) then
    fOnVectorialChanged(self);
end;

procedure TImageEnVect.DoBeforeVectorialChange;
begin
  if not fVectorialChanging then
    if assigned(fOnVectorialChanged) then
      fOnVectorialChanged(self);
  fVectorialChanging := true;
end;

// Copy vectorial (all) objects
{!!
<FS>TImageEnVect.CopyAllObjectsTo

<FM>Declaration<FC>
procedure CopyAllObjectsTo(Dest:<A TImageEnVect>);

<FM>Description<FN>
Call CopyAllObjectsTo to write all objects to Dest TImageEnVect component.

!!}
procedure TImageEnVect.CopyAllObjectsTo(Dest: TImageEnVect);
var
  q: integer;
begin
  for q := 0 to fObjCount - 1 do
    CopyObjectTo(fObj^[q], Dest);
  Dest.Update;
end;

// Copy specified object
{!!
<FS>TImageEnVect.CopyObjectTo

<FM>Declaration<FC>
function CopyObjectTo(hobj: integer; Dest: <A TImageEnVect>):integer;

<FM>Description<FN>
Call CopyObjectTo to write only the hobj object to the Dest TImageEnVect component.
Returns the handle of the created object.

!!}
function TImageEnVect.CopyObjectTo(hobj: integer; Dest: TImageEnVect):integer;
var
  obj: PIEVObject;
  i: integer;
begin
  obj := GetObj(hobj);
  i:=-1;
  if (obj^.Kind = iekBitmap) or ((obj^.Kind=iekMEMO) and obj^.MemoHasBitmap) then
  begin
    i := Dest.AllocBitmap;
    Dest.fBitmaps^[i].fRefCount := 1;
    Dest.fBitmaps^[i].fBitmap := TIEBitmap.Create;
    Dest.fBitmaps^[i].fBitmap.Assign(fBitmaps^[obj^.BitmapIdx].fBitmap);
  end;
  result:=Dest.AddVObject(obj^);
  if i>-1 then
    Dest.GetObj(result)^.BitmapIdx:=i;
  Dest.Update;
end;

// Copy selected objects
{!!
<FS>TImageEnVect.CopySelectedObjectsTo

<FM>Declaration<FC>
procedure CopySelectedObjectsTo(Dest:<A TImageEnVect>);

<FM>Description<FN>
Call CopySelectedObjectsTo to write all selected objects to Dest TImageEnVect component.

!!}
procedure TImageEnVect.CopySelectedObjectsTo(Dest: TImageEnVect);
var
  q: integer;
begin
  for q := 0 to fSelObjCount - 1 do
    CopyObjectTo(fSelObj^[q],Dest); // 2.3.1
  Dest.Update;
end;

procedure TImageEnVect.Assign(Source: TPersistent);
var
  src: TImageEnVect;
begin
  inherited;
  if Source = nil then
  begin
    CancelInteracts;
    RemoveAllObjects;
  end
  else if Source is TImageEnVect then
  begin
    CancelInteracts;
    RemoveAllObjects;
    src := (Source as TImageEnVect);
    src.CopyAllObjectsTo(self);
    //
    SetScale(src.fScale);
    //
    DoVectorialChanged;
    Update;
  end;
end;

procedure TImageEnVect.MouseStableTimerEvent(Sender:TObject);
begin
  if (GetAsyncKeyState(VK_LBUTTON) and $8000) =0 then
  begin
    fMouseStableTimer.Enabled:=false;
    fFastDrawing:=false;
    Update;
  end;
end;

procedure TImageEnVect.Paint;
begin
  //outputdebugstring(pchar('timageenvect.paint'));
  if (not fMouseStableTimer.Enabled) and (not fFastDrawing) and IEIsLeftMouseButtonPressed then
  begin
    fFastDrawing:=true;
    fMouseStableTimer.Enabled:=true;
  end;
  inherited;
  fHintSaveBitmap.Width := 1; // this invalidates the hint
  if (fStable2 = 0) then
    HintShow(fMovX, fMovY);
end;

procedure TImageEnVect.VPaintTo(BBitmap: TBitmap);
begin
  fObjDrawed := 0;
  DrawObjects(fIEBitmap, false, BBitmap, fObjAntialias, -1);
  DrawSelGrips(BBitmap.Canvas);
  if miEditPolyline in fMouseInteractVt then
    DrawPolylinePoints(BBitmap.Canvas);
end;

procedure TImageEnVect.PaintToEx(ABitmap: TIEBitmap; ABitmapScanline: ppointerarray; UpdRect: PRect; drawBackground:boolean; drawGadgets:boolean);
begin
  inherited;
  if fObjLockPaint=0 then
    VPaintTo(ABitmap.VclBitmap);
end;

// returns required pen width
function TImageEnVect.AdjustCoords(const aobj: TIEVObject; var x1, y1, x2, y2, x3, y3: integer; zx,zy: double): integer;
//var pw:integer;
begin
  if fZoomObjectsWidth then
  begin
    result := ieceil(dmax(1, aobj.PenWidth * dmin(zx,zy)));
    (*
    //...this is removed on version 2.1.8 to allow base line to be inside the wider line (for selection problems when PenWidth>1)
    //...one could get wrong positions when Zoom>100, but this is because the object is quantized to the bitmap pixels
    if ((aobj.Kind = iekLINE) or (aobj.Kind = iekBOX) or (aobj.Kind = iekELLIPSE) or (aobj.Kind = iekARC) or (aobj.Kind = iekLINELABEL)) then
    begin
      pw := result div 2;
      inc(x1, pw);
      inc(y1, pw);
      inc(x2, pw);
      inc(y2, pw);
    end;
    //*)
    if (aobj.Kind = iekBITMAP) then
    begin
      if zx<>1 then
        x2 := x3 - 1;
      if zy<>1 then
        y2 := y3 - 1;
    end;
  end
  else
    result := aobj.PenWidth;
end;

function TImageEnVect.VXBmp2Scr(x: integer; UseZoom: boolean; mul: integer): integer;
begin
  if UseZoom then
    result := XBmp2Scr(x) * mul
  else
    result := x * mul;
end;

function TImageEnVect.VYBmp2Scr(y: integer; UseZoom: boolean; mul: integer): integer;
begin
  if UseZoom then
    result := YBmp2Scr(y) * mul
  else
    result := y * mul;
end;

procedure iehighlight(bitmap: TBitmap; x1, y1, x2, y2: integer; color: TRGB);
var
  x, y: integer;
  px: PRGB;
  pb: pbyte;
begin
  x1 := imax(0, imin(x1, bitmap.Width - 1));
  y1 := imax(0, imin(y1, bitmap.Height - 1));
  x2 := imax(0, imin(x2, bitmap.Width - 1));
  y2 := imax(0, imin(y2, bitmap.Height - 1));
  OrdCor(x1,y1,x2,y2);
  case bitmap.PixelFormat of
    pf8bit:
      for y := y1 to y2 do
      begin
        pb := bitmap.Scanline[y];
        inc(pb, x1);
        for x := x1 to x2 do
        begin
          pb^ := color.r;
          inc(pb);
        end;
      end;
    pf24bit:
      for y := y1 to y2 do
      begin
        px := bitmap.Scanline[y];
        inc(px, x1);
        for x := x1 to x2 do
        begin
          with px^ do
          begin
            r := color.r and r;
            g := color.g and g;
            b := color.b and b;
          end;
          inc(px);
        end;
      end;
  end;
end;

// Draw specified object
// UseZoom: if true it doesn't look at zoom, viewxy, foffx
// CheckLimits: if true it doesn't verify that the object is inside the client area
// ret true if displayed
function TImageEnVect.DrawObject(var aobj: TIEVObject; hobj:integer; BBitmap: TBitmap; CheckLimits: boolean; UseZoom: boolean; DrawOnTIEBitmap: TIEBitmap; mul: integer; drawingalpha: boolean): boolean;
var
  ax1, ay1, ax2, ay2, ax3, ay3: integer;
  x3, y3, x4, y4: integer;
  sw, sh, i: integer;
  xx, yy: double;
  zx, zy, pozx, pozy: double;
  pts: PPointArray;
  pw: integer;
  LogBrush: TLOGBRUSH;
  handled:boolean;
  quotelen,cx,cy: double;
  quotelenx,quoteleny: double;
  DestCanvas:TIECanvas;
begin
  result := false;
  if fAllObjectsHidden then
    exit;
  // converts bitmap coordinates to clientarea coordintes
  if UseZoom then
  begin
    zx := fZoomD100X;
    zy := fZoomD100Y;
  end
  else
  begin
    zx := 1;
    zy := 1;
  end;
  if mul > 1 then
  begin
    zx := zx * mul;
    zy := zy * mul;
  end;

  ax1 := VXBmp2Scr(aobj.x1, UseZoom, mul);
  ay1 := VYBmp2Scr(aobj.y1, UseZoom, mul);
  ax2 := VXBmp2Scr(aobj.x2, UseZoom, mul);
  ay2 := VYBmp2Scr(aobj.y2, UseZoom, mul);
  ax3 := VXBmp2Scr(aobj.x2 + 1, UseZoom, mul);
  ay3 := VYBmp2Scr(aobj.y2 + 1, UseZoom, mul);

  if aobj.BoxHighlight then
    aobj.PenWidth:=1;

  pw := AdjustCoords(aobj, ax1, ay1, ax2, ay2, ax3, ay3, zx,zy);

  DestCanvas:=TIECanvas.Create(BBitmap.Canvas,fObjAntialias and not fFastDrawing,not drawingalpha);

  with DestCanvas do
  begin
    Pen.Color := $01010101; // needed otherwise next Pen.Color is not set (gdi bug workaround?)
    Pen.Style := aobj.PenStyle;
    Pen.Width := pw;
    Pen.Mode := pmCopy;
    Pen.Color := aobj.PenColor;
    Pen.Transparency := aobj.Transparency;
    Brush.Transparency := aobj.Transparency;
  end;

  aobj.plim := rect(2000000000, 2000000000, -2000000000, -2000000000);
  aobj.pwidth := pw;
  // verify rectangle intersection
  if (ievsVisible in aobj.Style) and (_RectXRect(ax1, ay1, ax2, ay2, fOffX * mul, fOffY * mul, fOffX * mul + fExtX * mul, fOffY * mul + fExtY * mul) or (not CheckLimits)) then
  begin
    result := true;

    handled:=false;
    if assigned(fOnBeforeDrawObject) then
    begin
      fOnBeforeDrawObject(self,hobj,BBitmap,Rect(ax1,ay1,ax2,ay2),drawingalpha,handled);
      iesetplim(aobj.plim, ax1, ay1);
      iesetplim(aobj.plim, ax2, ay2);
    end;

    if not handled then
    begin
      case aobj.Kind of
        iekLINE, iekLINELABEL:
          with DestCanvas do
          begin
            // Line

            // this will allow to add more styles even with penwidth>1
            with DestCanvas.Pen do
              if Width>1 then
              begin
                LogBrush.lbStyle := BS_Solid;
                LogBrush.lbColor := Color;
                LogBrush.lbHatch := 0;
                Handle:=ExtCreatePen(PS_Geometric or PS_Solid  ,trunc(Width),LogBrush,0,nil);
              end;
            DrawLine(ax1, ay1, ax2, ay2);

            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            sw := trunc(aobj.ShapeWidth * zx);
            sh := trunc(aobj.ShapeHeight * zy);
            Brush.Color := aobj.BrushColor;
            Brush.Style := aobj.BrushStyle;
            DrawLineShape(aobj, DestCanvas, ax1, ay1, ax2, ay2, aobj.BeginShape, sw, sh, aobj.plim);
            DrawLineShape(aobj, DestCanvas, ax2, ay2, ax1, ay1, aobj.EndShape, sw, sh, aobj.plim);
            inc(fObjDrawed);
            if aobj.Kind = iekLINELABEL then
              DrawObjectLineLabel(DestCanvas, ax1, ay1, ax2, ay2, aobj, zx,zy, aobj.plim);
          end;
        iekRULER:
          begin
            // Ruler
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            CalcCoef(cx, cy, aobj.RulerUnit);
            quotelenx := abs(aobj.x2 - aobj.x1) * cx;
            quoteleny := abs(aobj.y2 - aobj.y1) * cy;
            quotelen := sqrt(quotelenx * quotelenx + quoteleny * quoteleny);
            DrawRuler(DestCanvas, quotelen, ax1, ay1, ax2, ay2, aobj.RulerUnit, aobj.PenColor, aobj.PenWidth, aobj.RulerType, 1/zx,1/zy, aobj.plim, aobj.LogFont);
            inc(fObjDrawed);
          end;
        iekANGLE:
          begin
            // Angle
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            DrawAngle(DestCanvas, aobj.AnglePoints, aobj.PenColor, aobj.PenWidth, aobj.plim, UseZoom, mul, 1/zx,1/zy, aobj.LogFont);
            inc(fObjDrawed);
          end;
        iekBOX:
          with DestCanvas do
          begin
            // box
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            if aobj.BoxHighlight then
              iehighlight(BBitmap, ax1, ay1, ax2, ay2, TColor2TRGB(aobj.BrushColor))
            else
              Rectangle(ax1, ay1, ax2 + 1, ay2 + 1);
            inc(fObjDrawed);
          end;
        iekEXTENDED:
          begin
            // extended object
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            aobj.extendedObject.Draw(BBitmap,ax1,ay1,ax2,ay2,drawingalpha,zx,zy);
            inc(fObjDrawed);
          end;
        iekELLIPSE:
          with DestCanvas do
          begin
            // ellipse
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            Ellipse(ax1, ay1, ax2 + 1, ay2 + 1);
            inc(fObjDrawed);
          end;
        iekARC:
          with DestCanvas do
          begin
            // arc
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            xx := (ax2 - ax1) / 2;
            yy := (ay2 - ay1) / 2;
            x3 := ax1 + trunc(xx + xx * cos(aobj.a1));
            y3 := ay1 + trunc(yy + yy * sin(aobj.a1));
            x4 := ax1 + trunc(xx + xx * cos(aobj.a2));
            y4 := ay1 + trunc(yy + yy * sin(aobj.a2));
            arc(ax1, ay1, ax2 + 1, ay2 + 1, x3, y3, x4, y4);
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            inc(fObjDrawed);
          end;
        iekBITMAP:
          begin
            // bitmap
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            DrawBitmapObject(BBitmap, aobj, ax1, ay1, ax2, ay2, DrawOnTIEBitmap, pw);
            inc(fObjDrawed);
          end;
        iekTEXT, iekMEMO:
          begin
            // text
            DestCanvas.Brush.Color := aobj.BrushColor;
            DestCanvas.Brush.Style := aobj.BrushStyle;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            if aobj.MemoHasBitmap and not drawingalpha then
              DrawBitmapObject(BBitmap, aobj, ax1, ay1, ax2, ay2, DrawOnTIEBitmap, pw);
            DrawObjectText(DestCanvas, ax1, ay1, ax2, ay2, aobj, hobj, zx,zy, drawingalpha, aobj.plim);
            inc(fObjDrawed);
          end;
        iekPOLYLINE:
          // polyline
          with aobj, DestCanvas do
          begin
            Brush.Color := aobj.BrushColor;
            Brush.Style := aobj.BrushStyle;
            if ((PolyBaseX1 <> PolyBaseX2) or (PolyBaseY1 <> PolyBaseY2)) and (PolyPointsCount > 0) then
            begin
              if DrawnPointsCount <> PolyPointsCount then
              begin
                if assigned(DrawnPoints) then
                  freemem(DrawnPoints);
                getmem(DrawnPoints, PolyPointsCount * sizeof(TPoint));
                DrawnPointsCount := PolyPointsCount;
              end;
              CalcZxZyPolyline(@aobj, pozx, pozy);
              x3 := VXBmp2Scr(round((PPointArray(PolyPoints)[0].x - PolyBaseX1) * pozx) + x1, UseZoom, mul);
              y3 := VYBmp2Scr(round((PPointArray(PolyPoints)[0].y - PolyBaseY1) * pozy) + y1, UseZoom, mul);
              pts := ppointarray(DrawnPoints);
              pts[0].x := x3;
              pts[0].y := y3;
              for i := 1 to PolyPointsCount - 1 do
              begin
                x3 := VXBmp2Scr(round((PPointArray(PolyPoints)[i].x - PolyBaseX1) * pozx) + x1, UseZoom, mul);
                y3 := VYBmp2Scr(round((PPointArray(PolyPoints)[i].y - PolyBaseY1) * pozy) + y1, UseZoom, mul);
                pts[i].x := x3;
                pts[i].y := y3;
              end;
              if PolyClosed then
                Polygon(slice(pts^, PolyPointsCount))
              else
                Polyline(slice(pts^, PolyPointsCount));
              if mul <> 1 then
              begin
                for i := 0 to PolyPointsCount - 1 do
                begin
                  pts[i].x := pts[i].x div mul;
                  pts[i].y := pts[i].y div mul;
                end;
              end;
            end;
            iesetplim(aobj.plim, ax1, ay1);
            iesetplim(aobj.plim, ax2, ay2);
            inc(fObjDrawed);
          end;
      end;  // end of case
    end;

    if assigned(fOnAfterDrawObject) then
    begin
      fOnAfterDrawObject(self,hobj,BBitmap,Rect(ax1,ay1,ax2,ay2),drawingalpha,handled);
      iesetplim(aobj.plim, ax1, ay1);
      iesetplim(aobj.plim, ax2, ay2);
    end;

  end;

  DestCanvas.Free;

end;

// draw grips (points) of the selected polyline (if there is one)
procedure TImageEnVect.DrawPolylinePoints(Canvas: TCanvas);
var
  i: integer;
  pobj: PIEVObject;
  pts: ppointarray;
begin
  if (fSelObjCount = 1) then
  begin
    pobj := GetObj(fSelObj^[0]);
    if (pobj^.Kind = iekPOLYLINE) then
      with Canvas, pobj^ do
      begin
        Brush.Color := clRed;
        Brush.Style := bsSolid;
        Pen.Color := clBlack;
        Pen.Style := psSolid;
        Pen.Mode := pmCopy;
        Pen.Width := 1;
        pts := ppointarray(DrawnPoints);
        for i := 0 to DrawnPointsCount - 1 do
          Ellipse(pts[i].x - POLYLINEGDIM, pts[i].y - POLYLINEGDIM, pts[i].x + POLYLINEGDIM, pts[i].y + POLYLINEGDIM);
      end;
  end;
end;

procedure DrawBitmapBorder(var x1,y1,x2,y2:integer; aobj:TIEVObject; OutBitmap:TIEBitmap; penWidth:integer);
var
  i,j:integer;
  px:PRGB;
  c:TRGB;
  a:pbyte;
  xx1,yy1,xx2,yy2:integer;
begin
  for j:=1 to penWidth do
  begin
    a:=nil;
    c:=TColor2TRGB(aobj.PenColor);
    xx1:=imin(imax(x1,0),OutBitmap.Width-1);
    yy1:=imin(imax(y1,0),OutBitmap.Height-1);
    xx2:=imin(imax(x2,0),OutBitmap.Width-1);
    yy2:=imin(imax(y2,0),OutBitmap.Height-1);
    // top
    if (y1>=0) and (y1<OutBitmap.Height) then
    begin
      px:=OutBitmap.Scanline[y1];
      inc(px,xx1);
      if OutBitmap.HasAlphaChannel then
      begin
        a:=OutBitmap.Alphachannel.Scanline[y1];
        inc(a,xx1);
      end;
      for i:=xx1 to xx2 do
      begin
        px^:=c;
        inc(px);
        if OutBitmap.HasAlphaChannel then
        begin
          a^:=255;
          inc(a);
        end;
      end;
    end;
    // bottom
    if (y2>=0) and (y2<OutBitmap.Height) then
    begin
      px:=OutBitmap.Scanline[y2];
      inc(px,xx1);
      if OutBitmap.HasAlphaChannel then
      begin
        a:=OutBitmap.Alphachannel.Scanline[y2];
        inc(a,xx1);
      end;
      for i:=xx1 to xx2 do
      begin
        px^:=c;
        inc(px);
        if OutBitmap.HasAlphaChannel then
        begin
          a^:=255;
          inc(a);
        end;
      end;
    end;
    // left
    if (x1>=0) and (x1<OutBitmap.Width) then
      for i:=yy1 to yy2 do
      begin
        OutBitmap.PPixels_ie24RGB[x1,i]^:=c;
        if OutBitmap.HasAlphaChannel then
          OutBitmap.Alpha[x1,i]:=255;
      end;
    // right
    if (x2>=0) and (x2<OutBitmap.Width) then
      for i:=yy1 to yy2 do
      begin
        OutBitmap.PPixels_ie24RGB[x2,i]^:=c;
        if OutBitmap.HasAlphaChannel then
          OutBitmap.Alpha[x2,i]:=255;
      end;
    //
    inc(y1,1);
    inc(x1,1);
    dec(x2,1);
    dec(y2,1);
  end;
end;

procedure DrawBitmapBorder2(var x1,y1,x2,y2:integer; aobj:TIEVObject; OutBitmap:TBitmap; penwidth:integer);
var
  iebmp:TIEBitmap;
begin
  iebmp:=TIEBitmap.Create;
  iebmp.EncapsulateTBitmap(OutBitmap,false);
  DrawBitmapBorder(x1,y1,x2,y2,aobj,iebmp, penwidth);
  FreeAndNil(iebmp);
end;

procedure TImageEnVect.DrawBitmapObject(BBitmap: TBitmap; aobj: TIEVObject; x1, y1, x2, y2: integer; DrawOnTIEBitmap: TIEBitmap; realPenWidth:integer);
var
  sourcebmp: TIEBitmap;
  tab1: ppointerarray;
  tab2, tab3: pinteger;
begin
  if aobj.BitmapIdx >= 0 then
  begin
    sourcebmp := GetBitmap(aobj.BitmapIdx);
    // OrdCor is necessary because when modify objects the coordinates could not be ordered.
    OrdCor(x1, y1, x2, y2);
    if DrawOnTIEBitmap = nil then
    begin
      // draw on BBitmap
      if aobj.BitmapBorder then
        DrawBitmapBorder2(x1,y1,x2,y2,aobj,BBitmap,realPenWidth);

      tab1 := nil;
      tab2 := nil;
      tab3 := nil;
      if fVStable > 0 then
        sourcebmp.RenderToTBitmap(BBitmap, tab1, tab2, tab3, nil, x1, y1, x2 - x1 + 1, y2 - y1 + 1, 0, 0, sourcebmp.Width, sourcebmp.Height, true, false, aobj.Transparency, rfNone, true, ielNormal)
      else
        sourcebmp.RenderToTBitmap(BBitmap, tab1, tab2, tab3, nil, x1, y1, x2 - x1 + 1, y2 - y1 + 1, 0, 0, sourcebmp.Width, sourcebmp.Height, true, false, aobj.Transparency, fBitmapResampleFilter, true, ielNormal);
    end
    else
    begin
      // draw on TIEBitmap

      if aobj.BitmapBorder then
        DrawBitmapBorder(x1,y1,x2,y2,aobj,DrawOnTIEBitmap,realPenWidth);

      if fVStable > 0 then
        sourcebmp.StretchRectTo(DrawOnTIEBitmap, x1, y1, x2 - x1 + 1, y2 - y1 + 1, 0, 0, sourcebmp.Width, sourcebmp.Height, rfNone, aobj.Transparency)
      else
        sourcebmp.StretchRectTo(DrawOnTIEBitmap, x1, y1, x2 - x1 + 1, y2 - y1 + 1, 0, 0, sourcebmp.Width, sourcebmp.Height, fBitmapResampleFilter, aobj.Transparency);
    end;
  end
  else
    with BBitmap.Canvas do
    begin
      // bitmap non present, draw "X"
      moveto(x1, y1);
      lineto(x2, y2);
      moveto(x2, y1);
      lineto(x1, y2);
      Rectangle(x1, y1, x2 + 1, y2 + 1);
    end;
end;

procedure TImageEnVect.DoObjectMoveResize(hobj: integer; Grip: TIEVGripping; var OffsetX, OffsetY: integer);
begin
  if assigned(fOnObjectMoveResize) then
    fOnObjectMoveResize(self, hobj, integer(Grip), OffsetX, OffsetY);
end;

procedure TImageEnVect.DoObjectClick(hobj: integer);
begin
  if assigned(fOnObjectClick) then
    fOnObjectClick(self, hobj);
end;

procedure TImageEnVect.DoObjectDblClick(hobj: integer);
begin
  if assigned(fOnObjectDblClick) then
    fOnObjectDblClick(self, hobj);
end;

procedure TImageEnVect.DoObjectOver(hobj: integer);
begin
  if assigned(fOnObjectOver) then
    fOnObjectOver(self, hobj);
end;

{!!
<FS>TImageEnVect.FindObjectAt

<FM>Declaration<FC>
function FindObjectAt(x,y:integer; var Distance:double):integer;

<FM>Description<FN>
FindObjectAt gets the object near the client coordinates x, y.

Distance will contain the object's distance from the specified coordinates.
Return a value <0 if no object is found.

See <A TImageEnVect.MaxSelectionDistance>

<FM>Example<FC>

// hobj wil contains the object at 100,100.
Hobj:=FindObjectAt(100,100,distance);

!!}
// x,y expressed in client area coordinates
// return:
// <0 no object found
// note: see MaxSelectionDistance
function TImageEnVect.FindObjectAt(x, y: integer; var Distance: double): integer;
begin
  result := FindNearObj(xScr2Bmp(x), yScr2Bmp(y), Distance, false);
end;

{!!
<FS>TImageEnVect.ObjCopyToClipboard

<FM>Declaration<FC>
procedure ObjCopyToClipboard;

<FM>Description<FN>
ObjCopyToClipboard copies selected objects to the clipboard in a proprietary format.

!!}
procedure TImageEnVect.ObjCopyToClipboard;
var
  hmem: THandle;
  ms: TMemoryStream;
  ptr: pointer;
  q, hobj: integer;
  o: PIEVObject;
  io: TImageEnIO;
begin
  if IEOpenClipboard then
  begin
    EmptyClipboard;
    ms := TMemoryStream.Create;
    //
    io := TImageEnIO.Create(self);
    ms.write(fSelObjCount, sizeof(integer));
    for q := 0 to fSelObjCount - 1 do
    begin
      hobj := fSelObj^[q];
      SaveObj(ms, hobj);
      o := GetObj(hobj);
      if (o.Kind = iekBITMAP) or ((o.Kind=iekMEMO) and o.MemoHasBitmap) then
      begin
        // save bitmap
        io.AttachedIEBitmap := fBitmaps^[o.BitmapIdx].fBitmap;
{$IFDEF IEINCLUDEPNG}
        io.SaveToStreamPNG(ms);
{$ELSE}
        io.SaveToStreamBMP(ms);
{$ENDIF}
      end;
    end;
    FreeAndNil(io);
    //
    hmem := GlobalAlloc(GMEM_MOVEABLE or GMEM_DDESHARE, ms.size);
    ptr := GlobalLock(hmem);
    CopyMemory(ptr, ms.memory, ms.size);
    FreeAndNil(ms);
    GlobalUnLock(hmem);
    SetClipboardData(IEVECTCLIPFORMAT, hmem);
    CloseClipboard;
    //GlobalFree(hbi);	// the system own the memory
  end;
end;

{!!
<FS>TImageEnVect.ObjPasteFromClipboard

<FM>Declaration<FC>
procedure ObjPasteFromClipboard(OffsetX,OffsetY:integer);

<FM>Description<FN>
ObjPasteFromClipboard copies the contents from the clipboard into the TImageEnVect component, replacing the currently selected object(s). 

OffsetX and OffsetY specify the offset from original object's position.

!!}
procedure TImageEnVect.ObjPasteFromClipboard(OffsetX, OffsetY: integer);
var
  hmem: THandle;
  ptr: pointer;
  ms: TMemoryStream;
  q, cc, hobj: integer;
  o: PIEVObject;
  io: TImageEnIO;
  bmp: TIEBitmap;
begin
  if IEOpenClipboard then
  begin
    if IsClipboardFormatAvailable(IEVECTCLIPFORMAT) then
    begin
      DoObjSaveUndo;
      hmem := GetClipboardData(IEVECTCLIPFORMAT);
      if hmem <> 0 then
      begin
        // remove selected objects
        while fSelObjCount > 0 do
        begin
          hobj := fSelObj^[0];
          RemoveObject(hobj);
        end;
        // load objects from clipboard
        ptr := GlobalLock(hmem);
        ms := TMemoryStream.Create;
        ms.Write(pbyte(ptr)^, GlobalSize(hmem));
        ms.position := 0;
        //
        bmp := TIEBitmap.Create;
        io := TImageEnIO.Create(self);
        io.attachediebitmap := bmp;
        ms.read(cc, sizeof(integer));
        for q := 0 to cc - 1 do
        begin
          hobj := ReadObj(ms, IEVVER, false);
          o := GetObj(hobj);
          inc(o.x1, OffsetX);
          inc(o.x2, OffsetX);
          inc(o.y1, OffsetY);
          inc(o.y2, OffsetY);
          if (o.Kind = iekBITMAP) or ((o.Kind=iekMEMO) and o.MemoHasBitmap) then
          begin
            // load bitmap
{$IFDEF IEINCLUDEPNG}
            io.LoadFromStreamPNG(ms);
{$ELSE}
            io.LoadFromStreamBMP(ms);
{$ENDIF}
            SetObjBitmap(hobj, bmp);
          end;
          AddSelObjectNS(hobj);
        end;
        FreeAndNil(io);
        FreeAndNil(bmp);
        //
        FreeAndNil(ms);
        GlobalUnLock(hmem);
        Update;
      end;
    end;
    CloseClipboard;
  end;
end;

{!!
<FS>TImageEnVect.ObjCutToClipboard

<FM>Declaration<FC>
procedure ObjCutToClipboard;

<FM>Description<FN>
ObjCutToClipboard copies selected objects to the clipboard in a proprietary format and then deletes the objects.

!!}
procedure TImageEnVect.ObjCutToClipboard;
begin
  DoObjSaveUndo;
  ObjCopyToClipboard;
  // remove selected objects
  while fSelObjCount > 0 do
    RemoveObject(fSelObj^[0]);
end;

(*
procedure _ierotate(basex, basey, px, py: double; arc: double; var outx, outy: integer);
  function ArcTan2(Y, X: Extended): Extended;
  asm
      FLD     Y
      FLD     X
      FPATAN
      FWAIT
  end;
var
  Dx, Dy, D: double;
begin
  Dx := Px - basex;
  Dy := Py - basey;
  if (Dx = 0) and (Dy = 0) then
  begin
    outx := round(Px);
    outy := round(Py);
  end
  else
  begin
    D := sqrt(Dx * Dx + Dy * Dy);
    arc := arc + arctan2(Dy, Dx);
    outx := round(basex + D * cos(arc));
    outy := round(basey + D * sin(arc));
  end;
end;
*)

{!!
<FS>TImageEnVect.CreatePolygonFromEdge

<FM>Declaration<FC>
function CreatePolygonFromEdge(x,y:integer; maxfilter:boolean; tolerance:integer):integer;

<FM>Description<FN>
CreatePolygonFromEdge creates a closed polyline (polygon) making a flood fill starting from x, y point.

Set maxfilter to True to apply a maximum filter that removes noise. tolerance specifies the color difference between starting pixel and testing pixel.
CreatePolygonFromEdge returns the object index just created. The kind of the new object is iekPOLYLINE.

This method is useful to create a polygon following the image's edges.

<FM>Example<FC>
// creates a new polygon when user presses left mouse button over the image
procedure TForm1.ImageEnVect1MouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  hobj:integer;
begin
  hobj:=ImageEnVect1.CreatePolygonFromEdge(X,Y,true,25);
  ImageEnVect1.ObjPenColor[hobj]:=clRed;
end;
!!}
// x,y in component coordinates (mousedown)
function TImageEnVect.CreatePolygonFromEdge(x, y: integer; maxfilter: boolean; tolerance: integer): integer;
var
  pp: PPointArray;
  pcount: integer;
begin
  x := XScr2Bmp(x);
  y := YScr2Bmp(y);
  pp := _MakeMagicWandPoints(fIEBitmap, x, y, maxfilter, tolerance, pcount);
  if pcount > 0 then
  begin
    result := AddNewObject;
    with GetObj(result)^ do
      Kind := iekPOLYLINE;
    SetObjPolylinePoints(result, slice(pp^, pcount));
    // close polygon
    AddPolyLinePoint(result, pp^[0].x, pp^[0].y);
    //
    freemem(pp);
    Update;
  end
  else
    result := -1;
end;

{!!
<FS>TImageEnVect.GetPolylineLen

<FM>Declaration<FC>
function GetPolylineLen(hobj:integer):double;

<FM>Description<FN>
GetPolylineLen returns the length (perimeter) of the specified polyline. 

If the polyline is composed of two points, GetPolylineLen calculates the line length.  If the polyline is composed of three or more points, GetPolylineLen calculates the perimeter.

!!}
function TImageEnVect.GetPolylineLen(hobj: integer): double;
var
  zx, zy: double;
  xa, ya, xb, yb, lx, ly: double;
  i: integer;
begin
  result := 0;
  with GetObj(hobj)^ do
    if Kind = iekPOLYLINE then
    begin
      CalcZxZyPolyline(GetObj(hobj), zx, zy);
      if PolyPointsCount > 0 then
      begin
        xa := (PPointArray(PolyPoints)[0].x - PolyBaseX1) * zx + x1;
        ya := (PPointArray(PolyPoints)[0].y - PolyBaseY1) * zy + y1;
        for i := 1 to PolyPointsCount - 1 do
        begin
          xb := (PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx + x1;
          yb := (PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy + y1;
          lx := abs(xa - xb) * fCoefX;
          ly := abs(ya - yb) * fCoefY;
          result := result + sqrt(lx * lx + ly * ly);
          xa := xb;
          ya := yb;
        end;
      end;
    end;
end;

{!!
<FS>TImageEnVect.GetObjDiagLen

<FM>Declaration<FC>
function GetObjDiagLen(hobj:integer):double;

<FM>Description<FN>
GetObjDiagLen returns the diagonal length of the specified object.

For a box (image or rectangle) it is the diagonal length. For a line (or ruler) it is the line or ruler length.

!!}
function TImageEnVect.GetObjDiagLen(hobj: integer): double;
var
  lx, ly: double;
begin
  with GetObj(hobj)^ do
  begin
    lx := abs(x2 - x1 + 1) * fCoefX;
    ly := abs(y2 - y1 + 1) * fCoefY;
    result := sqrt(lx * lx + ly * ly);
  end;
end;

{!!
<FS>TImageEnVect.GetPolylineArea

<FM>Declaration<FC>
function GetPolylineArea(hobj:integer):double;

<FM>Description<FN>
GetPolylineArea returns the area of the specified polyline. It closes the polyline if necessary.

!!}
function TImageEnVect.GetPolylineArea(hobj: integer): double;
var
  zx, zy: double;
  xa, ya, xb, yb: double;
  i: integer;
  dxy: double;
begin
  result := 0;
  dxy := (fCoefX) * (fCoefY);
  with GetObj(hobj)^ do
    if Kind = iekPOLYLINE then
    begin
      CalcZxZyPolyline(GetObj(hobj), zx, zy);
      if PolyPointsCount > 0 then
      begin
        xa := (PPointArray(PolyPoints)[0].x - PolyBaseX1) * zx + x1;
        ya := (PPointArray(PolyPoints)[0].y - PolyBaseY1) * zy + y1;
        for i := 1 to PolyPointsCount - 1 do
        begin
          xb := (PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx + x1;
          yb := (PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy + y1;
          result := result + dxy * (xa - xb) * (ya + yb);
          xa := xb;
          ya := yb;
        end;
        result := abs(result / 2);
      end;
    end;
end;

{!!
<FS>TImageEnVect.GetPolylineCentroid

<FM>Declaration<FC>
function GetPolylineCentroid(hobj:integer):TPoint;

<FM>Description<FN>
GetPolylineCentroid calculates x, y centroid coordinates of the specified polyline. The point is in bitmap coordinates.

!!}
function TImageEnVect.GetPolylineCentroid(hobj: integer): TPoint;
var
  oldMUnit: TIEUnits;
  i, j: integer;
  ai, atmp, xtmp, ytmp: double;
  zx, zy: double;
  xi, yi, xj, yj: double;
begin
  oldMUnit := MUnit;
  MUnit := ieuPIXELS;
  result.x := 0;
  result.y := 0;
  atmp := 0;
  xtmp := 0;
  ytmp := 0;
  with GetObj(hobj)^ do
    if Kind = iekPOLYLINE then
    begin
      CalcZxZyPolyline(GetObj(hobj), zx, zy);
      i := PolyPointsCount - 1;
      j := 0;
      while j < PolyPointsCount do
      begin
        xi := (PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx + x1;
        yi := (PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy + y1;
        xj := (PPointArray(PolyPoints)[j].x - PolyBaseX1) * zx + x1;
        yj := (PPointArray(PolyPoints)[j].y - PolyBaseY1) * zy + y1;
        ai := xi * yj - xj * yi;
        atmp := atmp + ai;
        xtmp := xtmp + (xj + xi) * ai;
        ytmp := ytmp + (yj + yi) * ai;
        i := j;
        inc(j);
      end;
      if (atmp <> 0) then
      begin
        result.x := trunc(xtmp / (3 * atmp));
        result.y := trunc(ytmp / (3 * atmp));
      end;
    end;
  MUnit := oldMUnit;
end;

(*
function IESIGN(a: double): integer;
begin
  if a = 0 then
    result := 0
  else if a < 0 then
    result := -1
  else
    result := 1;
end;

function IEIntersect(Ax, Ay, Bx, By, Cx, Cy, Dx, Dy: integer; var x, y: integer): boolean;
var
  r, s, den: double;
begin
  x := 0;
  y := 0;
  if (Ax = Bx) and (Ay = By) then
  begin
    r := _DistPoint2Seg(Ax, Ay, Cx, Cy, Dx, Dy);
    x := Ax;
    y := By;
    result := r = 0;
  end
  else if (Cx = Dx) and (Cy = Dy) then
  begin
    r := _DistPoint2Seg(Cx, Cy, Ax, Ay, Bx, By);
    x := Cx;
    y := Cy;
    result := r = 0;
  end
  else
  begin
    den := (Bx - Ax) * (Dy - Cy) - (By - Ay) * (Dx - Cx);
    if den <> 0 then
    begin
      r := ((Ay - Cy) * (Dx - Cx) - (Ax - Cx) * (Dy - Cy)) / den;
      s := ((Ay - Cy) * (Bx - Ax) - (Ax - Cx) * (By - Ay)) / den;
    end
    else
    begin
      r := -1;
      s := -1;
    end;
    if (r < 0) or (r > 1) or (s < 0) or (s > 1) then
      result := false
    else
    begin
      x := round(Ax + r * (Bx - Ax));
      y := round(Ay + r * (By - Ay));
      result := true;
    end;
  end;
end;
*)

(*
the output:
   Centroid:
      pvc^.x, pvc^.y
   Principal axis directions
      pvc^.x, pvc^.y, x_major, y_major
      pvc^.x, pvc^.y, x_minor, y_minor
   Moments:
      m00
      m10
      m01
      m11
      m20
      m02
   Central moments:
      mu00 (mu)
      mu11
      mu20
      mu02
   Radius of gyration:
      rad_gyr
   Is a Circle:
      circle (1=circle)
   Is horizontal:
      horizontal (1=horizontal)
   Is vertical:
      vertical (1=vertical)
   Invariant moments:
      phi_1
      phi_2
   Principal axes:
      tg_th1
      tg_th2
*)
(*
procedure TImageEnVect.CalcPolygonMoments(hobj:integer; var Centroid:TPoint; var MajorAxis,MinorAxis:TRect; var m00,m10,m01,m11,m20,m02:double; var mu00,mu11,mu20,mu02:double; var rad_gyr:double; var phi_1,phi_2:double; var tg_th1,tg_th2:double; var BoundingQuad:array of TPoint);
const
 DENT_CUTOFF=0.001;
   TANGENT_LIMIT=1.0e06;
   MU11_EPS=5.0e03;
var
   i, i_max, i_min:integer;
   size:integer;
   circle, horizontal, vertical:integer;
   ximm, xi, yimm, yi:double;
   d_xy, d_min, d_max:double;
   m00_sum:double;
   m10_sum, m01_sum, m11_sum:double;
   m20_sum, m02_sum:double;
   mu, dent:double;
   musq:double;
   tg_tth, sq_root:double;
   mu02_div_mu20, mu11mu20_sign:double;
   x2_major, y2_major, x2_minor, y2_minor:double;
   x1_major, y1_major, x1_minor, y1_minor:double;
   majorA,majorB,minorA,minorB:TPoint;
   imajorA,imajorB,iminorA,iminorB:integer;
   quad_IV, quad_I:integer;
   pvc:PPoint;
   vc:TPoint;
   color_index:integer;
   nv:integer;
   ppc:integer;
   dd,x,y:integer;
   ptop,pbottom:tpoint;
   pleft,pright:tpoint;
   zx,zy:double;
begin
 with GetObj(hobj)^ do begin
  if Kind<>iekPOLYLINE then
       EXIT;	// EXIT POINT
      ppc:=PolyPointsCount;
      nv:=PolyPointsCount+1;
      CalcZxZyPolyline(GetObj(hobj),zx,zy);
      size:=30;
      circle:=0;
      horizontal:=0;
      vertical:=0;
      quad_IV := 0;
      quad_I := 0;
      color_index := 191;
      pvc := @vc;
      // Compute moments
      m00 := 0;
      m10 := 0;
      m01 := 0;
      m11 := 0;
      m20 := 0;
      m02 := 0;
      for i := 1 to nv-1 do begin
         ximm:=round((PPointArray(PolyPoints)[i-1].x-PolyBaseX1)*zx)+x1;
         yimm:=round((PPointArray(PolyPoints)[i-1].y-PolyBaseY1)*zy)+y1;
         if i=ppc then begin
            // close polygon
            xi:=round((PPointArray(PolyPoints)[0].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[0].y-PolyBaseY1)*zy)+y1;
         end else begin
            xi:=round((PPointArray(PolyPoints)[i].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[i].y-PolyBaseY1)*zy)+y1;
         end;
         m00_sum := 0.5 * (yi * ximm - xi * yimm);
         m00 := m00+ m00_sum;
         m10_sum := 0.5 * (xi + ximm) * m00_sum;
         m10_sum := m10_sum- (0.5 * ((yi - yimm) * (xi * xi + xi * ximm + ximm * ximm) / 6.0));
         m10 := m10+m10_sum;
         m01_sum := 0.5 * (yi + yimm) * m00_sum;
         m01_sum := m01_sum+(0.5 * ((xi - ximm) * (yi * yi + yi * yimm + yimm * yimm) / 6.0));
         m01 := m01+ m01_sum;
         m11_sum := 0.5 * m00_sum;
         m11 := m11+(m11_sum * (2.0 * xi * yi + ximm * yi + xi * yimm + 2.0 * ximm * yimm) / 6.0);
         m20_sum := m00_sum * (xi * xi + xi * ximm + ximm * ximm) / 3.0;
         m20_sum := m20_sum-(0.5 * (yi - yimm) * (xi * xi * xi + xi * xi * ximm + xi * ximm * ximm + ximm * ximm * ximm) / 6.0);
         m20 := m20+m20_sum;
         m02_sum := m00_sum * (yi * yi + yi * yimm + yimm * yimm) / 3.0;
         m02_sum := m02_sum+(0.5 * (xi - ximm) * (yi * yi * yi + yi * yi * yimm + yi * yimm * yimm + yimm * yimm * yimm) / 6.0);
         m02 := m02+m02_sum;
      end;
      // correct sign of raw moments if necessary
      if (m00 < 0) then begin
         m00 := m00*(-1.0);
         m10 := m10*(-1.0);
         m01 := m01*(-1.0);
         m11 := m11*(-1.0);
         m20 := m20*(-1.0);
         m02 := m02*(-1.0);
      end;
      // centroid
      pvc^.x := trunc(m10 / m00);
      pvc^.y := trunc(m01 / m00);
      // find curvature points closest to and farthest from the centroid
      i_max := 0;
      i_min := 0;
      d_max := 0;
      d_min := 1000;
      for i := 1 to nv-1 do begin
         if i=ppc then begin
            // close polygon
            xi:=round((PPointArray(PolyPoints)[0].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[0].y-PolyBaseY1)*zy)+y1;
         end else begin
            xi:=round((PPointArray(PolyPoints)[i].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[i].y-PolyBaseY1)*zy)+y1;
         end;
         d_xy := sqrt(SQR(xi - pvc^.x) + SQR(yi - pvc^.y));
         if (d_xy > d_max) then begin
            d_max := d_xy;
            i_max := i;
         end;
         if (d_xy < d_min) then begin
            d_min := d_xy;
            i_min := i;
         end;
      end;
      // central moments and radius of gyration
      mu := m00;
      mu11 := m11 - m00 * (m10 / m00) * (m01 / m00);
      mu20 := m20 - m00 * SQR(m10 / m00);
      mu02 := m02 - m00 * SQR(m01 / m00);
      rad_gyr := sqrt(ABS(mu20 + mu02) / mu);
      dent := ABS(((mu02 / mu20) - 1.0));
      if ((dent < DENT_CUTOFF) and (ABS(mu11) < MU11_EPS)) then
         circle := 1;
      // invariant moments
      musq := SQR(mu);
      phi_1 := (mu20 + mu02) / musq;
      phi_2 := SQR((mu20 - mu02) / musq) + 4.0 * SQR (mu11 / musq);
      // determine principal axes
      mu02_div_mu20 := mu02 / mu20;
      tg_tth := 2.0 * (mu11 / mu20) / (1.0 - mu02_div_mu20);
      // check limits
      if (ABS(tg_tth) < 0.01) then begin
         if (ABS(mu20) / ABS(mu02) >= 1.0) then
            horizontal := 1;
         if (ABS(mu20) / ABS(mu02) <= 1.0) then
            vertical := 1;
      end;
      sq_root := sqrt(1.0 + 1.0 / SQR(tg_tth));
      // determine proper direction of principal (major) axis
      mu11mu20_sign := IESIGN(mu11) * IESIGN(mu20);
      if ( mu11mu20_sign > 0) then begin
         quad_IV := 1;             // quadr II->IV
         if (mu02_div_mu20 <= 1.0) then
            tg_tth := -ABS(tg_tth)
         else
            tg_tth := ABS (tg_tth);
         tg_th1 := (-1.0 / tg_tth) - sq_root;
         tg_th2 := (-1.0 / tg_tth) + sq_root;
      end else if (mu11mu20_sign < 0) then begin
         quad_I := 1;              // quadr III->I
         if (mu02_div_mu20 <= 1.0) then
            tg_tth := ABS (tg_tth)
         else
            tg_tth := -ABS (tg_tth);
         tg_th1 := (-1.0 / tg_tth) + sq_root;
         tg_th2 := (-1.0 / tg_tth) - sq_root;
      end;
      // determine coordinates of endpoints of line segments
      x2_major := (d_max / sqrt(1.0 + SQR(tg_th1)));
      x2_minor := (d_max / sqrt (1.0 + SQR(tg_th2)));
      if (quad_I = 1) then begin
         y2_major := pvc^.y - ABS(tg_th1) * x2_major;
         y2_minor := pvc^.y + ABS(tg_th2) * x2_minor;
      end;
      if (quad_IV = 1) then begin
         y2_major := pvc^.y + ABS(tg_th1) * x2_major;
         y2_minor := pvc^.y - ABS(tg_th2) * x2_minor;
      end;
      x2_major := x2_major+ pvc^.x;
      x2_minor := x2_minor+ pvc^.x;
      // axes mirror
      dd:=trunc(abs(pvc^.x-x2_major));
      if x2_major>pvc^.x then
         x1_major:=pvc^.x-dd
      else
         x1_major:=pvc^.x+dd;
      dd:=trunc(abs(pvc^.y-y2_major));
      if y2_major>pvc^.y then
         y1_major:=pvc^.y-dd
      else
         y1_major:=pvc^.y+dd;
      dd:=trunc(abs(pvc^.x-x2_minor));
      if x2_minor>pvc^.x then
         x1_minor:=pvc^.x-dd
      else
         x1_minor:=pvc^.x+dd;
      dd:=trunc(abs(pvc^.y-y2_minor));
      if y2_minor>pvc^.y then
         y1_minor:=pvc^.y-dd
      else
         y1_minor:=pvc^.y+dd;
      // find the intersection with original polygon
      majorA:=Point(-1,-1);
      majorB:=Point(-1,-1);
      minorA:=Point(-1,-1);
      minorB:=Point(-1,-1);
      for i := 1 to nv-1 do begin
         ximm:=round((PPointArray(PolyPoints)[i-1].x-PolyBaseX1)*zx)+x1;
         yimm:=round((PPointArray(PolyPoints)[i-1].y-PolyBaseY1)*zy)+y1;
         if i=ppc then begin
            // close polygon
            xi:=round((PPointArray(PolyPoints)[0].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[0].y-PolyBaseY1)*zy)+y1;
         end else begin
            xi:=round((PPointArray(PolyPoints)[i].x-PolyBaseX1)*zx)+x1;
            yi:=round((PPointArray(PolyPoints)[i].y-PolyBaseY1)*zy)+y1;
         end;
         if IEIntersect( trunc(x1_major),trunc(y1_major),trunc(x2_major),trunc(y2_major), trunc(ximm),trunc(yimm),trunc(xi),trunc(yi), x,y ) then begin
            if (majorA.x)=-1 then begin
               majorA.x:=x;
               majorA.y:=y;
               imajorA:=i;
            end else begin
               majorB.x:=x;
               majorB.y:=y;
               imajorB:=i;
            end;
         end;
         if IEIntersect( trunc(x1_minor),trunc(y1_minor),trunc(x2_minor),trunc(y2_minor), trunc(ximm),trunc(yimm),trunc(xi),trunc(yi), x,y ) then begin
            if (minorA.x)=-1 then begin
               minorA.x:=x;
               minorA.y:=y;
               iminorA:=i;
            end else begin
               minorB.x:=x;
               minorB.y:=y;
               iminorB:=i;
            end;
         end;
      end;
      OrdCor(majorA.x,majorA.y,majorB.x,majorB.y);
      OrdCor(minorA.x,minorA.y,minorB.x,minorB.y);
      Centroid:=Point(trunc(pvc^.x), trunc(pvc^.y));
      MajorAxis:=Rect(majorA.x,majorA.y,majorB.x,majorB.y);
      MinorAxis:=Rect(minorA.x,minorA.y,minorB.x,minorB.y);
      mu00:=mu;
      // calc bounding quadrilater

      i:=addnewobject;
      objkind[i]:=iekLINE;
      objpencolor[i]:=clred;
      setobjrect(i,MajorAxis);
      i:=addnewobject;
      objkind[i]:=iekLINE;
      objpencolor[i]:=clred;
      setobjrect(i,MinorAxis);

      if PolyPointsCount>3 then begin
         ptop:=point(1000000,1000000);
         pleft:=point(1000000,1000000);
         pbottom:=point(-1000000,-1000000);
         pright:=point(-1000000,-1000000);
         for i:=0 to PolyPointsCount-1 do begin
            x:=round((PPointArray(PolyPoints)[i].x-PolyBaseX1)*zx)+x1;
            y:=round((PPointArray(PolyPoints)[i].y-PolyBaseY1)*zy)+y1;
            if y<ptop.y then begin
               ptop.y:=y;
               ptop.x:=x;
            end;
            if y>pbottom.y then begin
               pbottom.y:=y;
               pbottom.x:=x;
            end;
            if x<pleft.x then begin
               pleft.x:=x;
               pleft.y:=y;
            end;
            if x>pright.x then begin
               pright.x:=x;
               pright.y:=y;
            end;
         end;
      end;

      i:=addnewobject;
      objkind[i]:=iekBITMAP;
      setobjrect(i,rect(ptop.x-5,ptop.y-5,ptop.x+5,ptop.y+5));
      i:=addnewobject;
      objkind[i]:=iekBITMAP;
      setobjrect(i,rect(pbottom.x-5,pbottom.y-5,pbottom.x+5,pbottom.y+5));
      i:=addnewobject;
      objkind[i]:=iekBITMAP;
      setobjrect(i,rect(pleft.x-5,pleft.y-5,pleft.x+5,pleft.y+5));
      i:=addnewobject;
      objkind[i]:=iekBITMAP;
      setobjrect(i,rect(pright.x-5,pright.y-5,pright.x+5,pright.y+5));

   end;
end;
*)

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Remove jagged edges

//(*
type
  PixelEdge = record
    x, y: integer;
    dir: integer;
  end;
  PixelEdgeArray = array[0..Maxint div 16] of PixelEdge;
  PPixelEdgeArray = ^PixelEdgeArray;

type
  Edgelist = record
    Nedges: integer;
    current: integer;
    list: PPixelEdgeArray;
  end;

type
  IntPoint2 = record
    x, y: integer;
  end;
  PIntPoint2 = ^IntPoint2;
  IntPoint2Array = array[0..Maxint div 16] of IntPoint2;
  PIntPoint2Array = ^IntPoint2Array;

type
  Pedge = record
    x1, y1: integer;
    x2, y2: integer;
  end;
  PPedge = ^Pedge;

type
  Bound = record
    ly, lx: integer;
    uy, ux: integer;
  end;
  PBound = ^Bound;

const
  HRZ = 1;
const
  VRT = 2;
const
  SUBPIXRES = 32;
  //const SUBPIXRES=2;

const
  HalfSUBPIXRES = (SUBPIXRES div 2);
const
  ESTABLISHED = 127;
const
  MAXRUN = 2000;

function MidX(e: Pedge): integer;
begin
  result := (e.x1 + e.x2) div 2;
end;

function MidY(e: Pedge): integer;
begin
  result := (e.y1 + e.y2) div 2;
end;

function Is_Horizontal(d: integer): boolean;
begin
  result := abs(d) = HRZ;
end;

function Is_Vertical(d: integer): boolean;
begin
  result := abs(d) = VRT;
end;

function against(a: integer; b: integer): boolean;
begin
  result := (a + b) = 0;
end;

function slopecmp(dy1, dx1, dy2, dx2: integer): boolean;
begin
  result := (dx2 * dy1) > (dx1 * dy2);
end;

function Bound_OK(b: Bound): boolean;
begin
  result := slopecmp(b.uy, b.ux, b.ly, b.lx);
end;

function Get_Pedge(el: Edgelist; var e: Pedge): PPedge;
var
  dir: integer;
begin
  if (el.current >= el.Nedges) then
  begin
    result := nil;
    exit;
  end;
  dir := el.list[el.current].dir;
  if (Is_Horizontal(dir)) then
  begin
    e.y2 := el.list[el.current].y * SUBPIXRES + HalfSUBPIXRES;
    e.y1 := e.y2;
    if dir > 0 then
      e.x1 := el.list[el.current].x * SUBPIXRES - (HalfSUBPIXRES)
    else
      e.x1 := el.list[el.current].x * SUBPIXRES - (-HalfSUBPIXRES);
    if dir > 0 then
      e.x2 := e.x1 + (SUBPIXRES)
    else
      e.x2 := e.x1 + (-SUBPIXRES);
  end
  else
  begin
    e.x2 := el.list[el.current].x * SUBPIXRES + HalfSUBPIXRES;
    e.x1 := e.x2;
    if dir > 0 then
      e.y1 := el.list[el.current].y * SUBPIXRES - (HalfSUBPIXRES)
    else
      e.y1 := el.list[el.current].y * SUBPIXRES - (-HalfSUBPIXRES);
    if dir > 0 then
      e.y2 := e.y1 + (SUBPIXRES)
    else
      e.y2 := e.y1 + (-SUBPIXRES);
  end;
  result := @e;
end;

function wayof(e: Pedge): integer;
var
  d: integer;
begin
  d := e.x2 - e.x1;
  if d <> 0 then
    result := d div SUBPIXRES
  else
    result := (e.y2 - e.y1) div HalfSUBPIXRES;
end;

procedure qforward(var el: EdgeList);
begin
  inc(el.current);
end;

procedure backward(var el: EdgeList);
begin
  dec(el.current);
end;

procedure calcbound(dominantdir: integer; e: Pedge; Sx, Sy: integer; b: PBound; gradU: PIntPoint2; gradL: PIntPoint2);
var
  dy, dx: integer;
  p: IntPoint2;
begin
  if Is_Horizontal(dominantdir) then
  begin
    b^.uy := (e.y1 + e.y2 + SUBPIXRES) div 2 - Sy;
    b^.ux := (e.x1 + e.x2) div 2 - Sx;
    b^.ly := (e.y1 + e.y2 - SUBPIXRES) div 2 - Sy;
    b^.lx := b^.ux;
    gradL^.x := b^.lx;
    gradU^.x := gradL^.x;
    gradU^.y := b^.uy - 1;
    gradL^.y := b^.ly + 1;
  end
  else
  begin
    b^.uy := (e.y1 + e.y2) div 2 - Sy;
    b^.ux := (e.x1 + e.x2 + SUBPIXRES) div 2 - Sx;
    b^.ly := b^.uy;
    gradL^.y := b^.ly;
    gradU^.y := gradL^.y;
    b^.lx := (e.x1 + e.x2 - SUBPIXRES) div 2 - Sx;
    gradU^.x := b^.ux - 1;
    gradL^.x := b^.lx + 1;
  end;
  if (not Bound_OK(b^)) then
  begin
    dx := b^.ux;
    dy := b^.uy;
    b^.ux := b^.lx;
    b^.uy := b^.ly;
    b^.lx := dx;
    b^.ly := dy;
    p := gradU^;
    gradU^ := gradL^;
    gradL^ := p;
  end;
end;

function WithinBound(dy, dx: integer; b: Bound): boolean;
begin
  result := slopecmp(dy, dx, b.ly, b.lx) and slopecmp(b.uy, b.ux, dy, dx);
end;

function XIF(cmp: boolean; v1, v2: integer): integer;
begin
  if cmp then
    result := v1
  else
    result := v2;
end;

// reversible straight line edge reconstruction

function fitlines(el: Edgelist; Pretest: boolean; TryAllEndPts: boolean; lines: PIntPoint2Array; MaxNLine: integer): integer;
var
  i, linescount, startp, Nendpt, Nstartpt, NPedges, Nbound: integer;
  Sx, Sy, Ex, Ey, Ux, Uy, Lx, Ly, maindir, trnsvrse, dnow, ndir: integer;
  dir: array[0..2] of integer;
  breaktrace, starttrace: boolean;
  currentsave, bestpt, maxlen, bestpt_currentsave, bestpt_Nendpt: integer;
  startpts, endlist, bestpt_endlist: array[0..SUBPIXRES - 1] of IntPoint2;
  Pedgehistory: array[0..MAXRUN - 1] of Pedge;
  e, last, estartsave, bestpt_last: Pedge;
  nextp: PPedge;
  qbound: array[0..MAXRUN - 1] of Bound;
  b: Bound;
  gradU, gradL: IntPoint2;
  lowerupdated, upperupdated: boolean;
  dx, dy, tmp: integer;
  exact, EndptOK: boolean;
  h, addy, addx: integer;
  staticpedge: Pedge;
  hori: boolean;
begin
  Ex := 0;
  Ey := 0;
  Nendpt := 0;
  dnow := 0;
  Nstartpt := 0;
  ndir := 0;
  breaktrace := false;
  NPedges := 0;
  maindir := 0;
  currentsave := 0;
  maxlen := 0;
  trnsvrse := 0;
  el.current := 0;
  startp := 0;
  e := Get_Pedge(el, staticpedge)^;
  Sx := MidX(e);
  Sy := MidY(e);
  if (not TryAllEndPts) then
  begin
    lines[0].x := Sx;
    lines[0].y := Sy;
    linescount := 1;
  end
  else
  begin
    hori := Is_Horizontal(wayof(e));
    Nstartpt := 0;
    startpts[0].x := Sx;
    startpts[0].y := Sy;
    //(*
    for i := 1 to HalfSUBPIXRES - 1 do
    begin
      if hori then
        startpts[Nstartpt].x := Sx - i
      else
        startpts[Nstartpt].x := Sx;
      if not hori then
        startpts[Nstartpt].y := Sy + i
      else
        startpts[Nstartpt].y := Sy;
      inc(Nstartpt);
      if hori then
        startpts[Nstartpt].x := Sx - i
      else
        startpts[Nstartpt].x := Sx;
      if not hori then
        startpts[Nstartpt].y := Sy + i
      else
        startpts[Nstartpt].y := Sy;
      inc(Nstartpt);
    end;
    //*)
    currentsave := el.current;
    bestpt_currentsave := currentsave;
    estartsave := e;
    bestpt := -1;
    maxlen := bestpt;
    linescount := 0;
  end;
  Nbound := 0;
  starttrace := true;
  while true do
  begin
    if (starttrace) then
    begin
      dir[0] := wayof(e);
      ndir := 1;
      starttrace := false;
      breaktrace := false;
      Pedgehistory[0] := e;
      NPedges := 1;
      Nbound := 0;
    end;
    last := e;
    qforward(el);
    nextp := Get_Pedge(el, staticpedge);
    if nextp <> nil then
    begin
      Pedgehistory[NPedges] := nextp^;
      inc(NPedges);
      e := nextp^;
      dnow := wayof(e);
    end;
    if (nextp = nil) or (ndir = ESTABLISHED) then
    begin
      if (nextp <> nil) then
      begin
        calcbound(maindir, e, Sx, Sy, @b, @gradU, @gradL);
        qbound[Nbound] := qbound[Nbound - 1];
        lowerupdated := upperupdated = FALSE;
        if (slopecmp(qbound[Nbound - 1].uy, qbound[Nbound - 1].ux, b.uy, b.ux)) then
        begin
          qbound[Nbound].uy := b.uy;
          qbound[Nbound].ux := b.ux;
          upperupdated := TRUE;
        end;
        if (slopecmp(b.ly, b.lx, qbound[Nbound - 1].ly, qbound[Nbound - 1].lx)) then
        begin
          qbound[Nbound].ly := b.ly;
          qbound[Nbound].lx := b.lx;
          lowerupdated := TRUE;
        end;
      end;
      if (nextp = nil) or
        ((dnow <> trnsvrse) and (dnow <> maindir)) or
        ((dnow = trnsvrse) and (dnow = wayof(last))) or
        (not Bound_OK(qbound[Nbound])) or
        (Pretest and
        ((lowerupdated and (not WithinBound(gradU.y, gradU.x, qbound[Nbound]))) or
        (upperupdated and (not WithinBound(gradL.y, gradL.x, qbound[Nbound]))))) then
      begin
        while true do
        begin
          Ex := MidX(last);
          Ey := MidY(last);
          if (Nbound = 0) then
          begin
            if (TryAllEndPts) then
            begin
              endlist[0].x := Ex;
              endlist[0].y := Ey;
              Nendpt := 1;
            end;
            break;
          end;
          b := qbound[Nbound - 1];
          dx := Ex - Sx;
          dy := Ey - Sy;
          if TryAllEndPts and (el.current - currentsave > maxlen) then
          begin
            if abs(maindir) = 1 then
            begin
              addy := 1;
              addx := 0;
            end
            else
            begin
              addy := 0;
              addx := 1;
            end;
            if WithinBound(dy, dx, b) then
            begin
              endlist[0].x := Ex;
              endlist[0].y := Ey;
              Nendpt := 1;
            end
            else
              Nendpt := 0;
            //(*
            for h := 1 to (SUBPIXRES div 2) - 1 do
            begin
              if (WithinBound(dy + addy * h, dx + addx * h, b)) then
              begin
                endlist[Nendpt].x := Ex + addx * h;
                endlist[Nendpt].y := Ey + addy * h;
                inc(Nendpt);
              end
              else if (WithinBound(dy - addy * h, dx - addx * h, b)) then
              begin
                endlist[Nendpt].x := Ex - addx * h;
                endlist[Nendpt].y := Ey - addy * h;
                inc(Nendpt);
              end;
            end;
            //*)
            Ex := endlist[0].x;
            Ey := endlist[0].y;
            EndptOK := Nendpt > 0;
          end
          else
          begin
            if not slopecmp(dy, dx, b.ly, b.lx) then
            begin
              if Is_Horizontal(maindir) then
              begin
                tmp := dx * b.ly;
                exact := (dx = 0) or ((tmp mod b.lx) = 0);
                Ey := tmp div b.lx + Sy + XIF(b.lx > 0, XIF(b.ly > 0, 1, integer(exact)), XIF(b.ly > 0, -integer(exact), -1));
              end
              else
              begin
                tmp := dy * b.lx;
                exact := (dy = 0) or ((tmp mod b.ly) = 0);
                Ex := tmp div b.ly + Sx + XIF(b.ly > 0, XIF(b.lx > 0, -integer(exact), -1), XIF(b.lx > 0, 1, integer(exact)));
              end;
              EndptOK := Pretest or WithinBound(Ey - Sy, Ex - Sx, b);
            end
            else if (not slopecmp(b.uy, b.ux, dy, dx)) then
            begin
              if (Is_Horizontal(maindir)) then
              begin
                tmp := dx * b.uy;
                exact := ((tmp mod b.ux) = 0);
                Ey := tmp div b.ux + Sy + XIF(b.ux > 0, XIF(b.uy > 0, -integer(exact), 1), XIF(b.uy > 0, 1, integer(exact)));
              end
              else
              begin
                tmp := dy * b.ux;
                exact := ((tmp mod b.uy) = 0);
                Ex := tmp div b.uy + Sx + XIF(b.uy > 0, XIF(b.ux > 0, 1, integer(exact)), XIF(b.ux > 0, -integer(exact), -1));
              end;
              EndptOK := Pretest or WithinBound(Ey - Sy, Ex - Sx, b);
            end
            else
              EndptOK := true;
          end;
          if (EndptOK) then
            break
          else
          begin
            backward(el);
            dec(NPedges);
            last := Pedgehistory[NPedges - 2];
            dec(Nbound);
          end;
        end;
        breaktrace := TRUE;
      end
      else
      begin
        inc(Nbound);
        continue;
      end;
    end
    else
    begin
      breaktrace := FALSE;
      if (ndir < 3) then
      begin
        for i := 0 to ndir - 1 do
        begin
          if (against(dnow, dir[i])) then
          begin
            breaktrace := TRUE;
            Ex := MidX(last);
            Ey := MidY(last);
            if (TryAllEndPts) then
            begin
              endlist[0].x := Ex;
              endlist[0].y := Ey;
              Nendpt := 1;
            end;
          end;
        end;
        if ((ndir < 2) or (dnow <> dir[1]) or (dir[0] <> dir[1])) then
        begin
          dir[ndir] := dnow;
          inc(ndir);
        end;
      end;
      if (ndir = 3) then
      begin
        if (dir[0] <> dir[1]) then
        begin
          maindir := dir[2];
          if (dir[1] = dir[2]) then
          begin
            trnsvrse := dir[0];
            if (Is_Horizontal(maindir)) then
            begin
              Lx := MidX(e) - Sx;
              Ux := Lx;
              Ly := e.y1 - Sy - HalfSUBPIXRES;
              Uy := Ly + SUBPIXRES;
            end
            else
            begin
              Ly := MidY(e) - Sy;
              Uy := Ly;
              Lx := e.x1 - Sx - HalfSUBPIXRES;
              Ux := Lx + SUBPIXRES;
            end;
          end
          else
          begin
            trnsvrse := dir[1];
            if (Is_Horizontal(maindir)) then
            begin
              Ux := MidX(e) - Sx;
              Lx := Ux;
              Uy := MidY(e) + HalfSUBPIXRES - Sy;
              Ly := Uy - SUBPIXRES;
            end
            else
            begin
              Uy := MidY(e) - Sy;
              Ly := Uy;
              Ux := MidX(e) + HalfSUBPIXRES - Sx;
              Lx := Ux - SUBPIXRES;
            end;
          end;
        end
        else
        begin
          maindir := dir[0];
          trnsvrse := dir[2];
          if (Is_Horizontal(maindir)) then
          begin
            Lx := e.x1 + XIF(maindir > 0, -HalfSUBPIXRES, HalfSUBPIXRES) - Sx;
            Ux := Lx + XIF(maindir > 0, SUBPIXRES, -SUBPIXRES);
            Ly := MidY(e) - Sy;
            Uy := Ly;
          end
          else
          begin
            Ly := e.y1 + XIF(maindir > 0, -HalfSUBPIXRES, HalfSUBPIXRES) - Sy;
            Uy := Ly + XIF(maindir > 0, SUBPIXRES, -SUBPIXRES);
            Lx := MidX(e) - Sx;
            Ux := Lx;
          end;
        end;
        if (slopecmp(Ly, Lx, Uy, Ux)) then
        begin
          qbound[0].uy := Ly;
          qbound[0].ux := Lx;
          qbound[0].ly := Uy;
          qbound[0].lx := Ux;
        end
        else
        begin
          qbound[0].uy := Uy;
          qbound[0].ux := Ux;
          qbound[0].ly := Ly;
          qbound[0].lx := Lx;
        end;
        Nbound := 1;
        ndir := ESTABLISHED;
      end;
    end;
    if (breaktrace) then
    begin
      backward(el);
      if (TryAllEndPts) then
      begin
        if (maxlen < (el.current - currentsave)) then
        begin
          maxlen := el.current - currentsave;
          bestpt_last := last;
          bestpt := startp;
          bestpt_currentsave := el.current;
          for i := 0 to Nendpt - 1 do
            bestpt_endlist[i] := endlist[i];
          bestpt_Nendpt := Nendpt;
        end;
        inc(startp);
        if (startp >= Nstartpt) then
        begin
          el.current := bestpt_currentsave;
          currentsave := el.current;
          e := bestpt_last;
          estartsave := e;
          lines[linescount] := startpts[bestpt];
          inc(linescount);
          if (linescount >= MaxNLine) then
          begin
            result := -1;
            exit;
          end;
          if (bestpt_currentsave >= el.Nedges - 1) then
          begin
            lines[linescount] := bestpt_endlist[0];
            inc(linescount);
            result := XIF(linescount >= MaxNLine, -1, linescount);
            exit;
          end;
          Nstartpt := bestpt_Nendpt;
          for i := 0 to bestpt_Nendpt - 1 do
            startpts[i] := bestpt_endlist[i];
          startp := 0;
          Sx := startpts[0].x;
          Sy := startpts[0].y;
          bestpt := -1;
          maxlen := bestpt;
        end
        else
        begin
          Sx := startpts[startp].x;
          Sy := startpts[startp].y;
          el.current := currentsave;
          last := estartsave;
          e := last;
        end;
      end
      else
      begin
        Sx := Ex;
        Sy := Ey;
        e := last;
        lines[linescount].x := Ex;
        lines[linescount].y := Ey;
        inc(linescount);
        if (linescount >= MaxNLine) then
        begin
          result := -1;
          exit;
        end;
        if (el.current >= el.Nedges - 1) then
        begin
          result := linescount;
          exit;
        end;
      end;
      starttrace := TRUE;
    end;
  end;
end;

// the routine can fail (return false)
// can smooth angles

{!!
<FS>TImageEnVect.RemovePolygonJaggedEdges

<FM>Declaration<FC>
function RemovePolygonJaggedEdges(hobj:integer):boolean;

<FM>Description<FN>
RemovePolygonJaggedEdges eliminates the jagged edges from a polygon created using CreatePolygonFromEdge method. This function can smooth angles.

Returns False if fails.

!!}
function TImageEnVect.RemovePolygonJaggedEdges(hobj: integer): boolean;
var
  zx, zy: double;
  i: integer;
  el: EdgeList;
  lines: PIntPoint2Array;
  cc: integer;
  o:PIEVObject;
  //
  procedure CalcDir(a, b: integer);
  begin
    if el.list[a].x = el.list[b].x then
    begin
      if el.list[a].y < el.list[b].y then
        el.list[a].dir := VRT
      else
        el.list[a].dir := -VRT;
    end
    else
    begin
      if el.list[a].y < el.list[b].y then
        el.list[a].dir := HRZ
      else
        el.list[a].dir := -HRZ;
    end;
  end;
  //
begin
  result := false;
  o:=GetObj(hobj);
  with o^ do
    if Kind = iekPOLYLINE then
    begin
      el.Nedges := PolyPointsCount;
      getmem(el.list, el.Nedges * sizeof(PixelEdge));
      CalcZxZyPolyline(GetObj(hobj), zx, zy);
      for i := 0 to PolyPointsCount - 1 do
      begin
        el.list[i].x := (round((PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx) + x1);
        el.list[i].y := (round((PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy) + y1);
        if i > 0 then
          CalcDir(i - 1, i);
      end;
      CalcDir(PolyPointsCount - 1, 0);
      getmem(lines, PolyPointsCount * sizeof(IntPoint2));
      try
        cc := fitlines(el, true, true, lines, PolyPointsCount);
        if cc > 2 then
        begin
          for i := 0 to cc - 1 do
          begin
            lines[i].x := lines[i].x div SUBPIXRES;
            lines[i].y := lines[i].y div SUBPIXRES;
          end;
          SetObjPolylinePoints(hobj, slice(ppointarray(lines)^, cc));
          result := true;
        end;
      except
        freemem(el.list);
        freemem(lines);
      end;
      freemem(el.list);
      freemem(lines);
    end;
  Update;
end;

//*)

// end of remove jagged edges
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Polyline simplify

type
  Vector = record
    x, y: double;
  end;
type
  Segment = record
    P0, P1: Vector;
  end;

  // difference

function diff(u, v: Vector): Vector;
begin
  result.x := u.x - v.x;
  result.y := u.y - v.y;
end;
// dot product

function dot(u, v: Vector): double;
begin
  result := u.x * v.x + u.y * v.y;
end;
// squared length of vector

function norm2(v: Vector): double;
begin
  result := dot(v, v);
end;
// length of vector

function norm(v: Vector): double;
begin
  result := sqrt(norm2(v));
end;
// distance squared

function d2(u, v: Vector): double;
begin
  result := norm2(diff(u, v));
end;
// distance

function d(u, v: Vector): double;
begin
  result := norm(diff(u, v));
end;
// sum

function sum(u, v: Vector): Vector;
begin
  result.x := u.x + v.x;
  result.y := u.y + v.y;
end;
// vector*scalar

function mulvs(u: Vector; s: double): Vector;
begin
  result.x := u.x * s;
  result.y := u.y * s;
end;
// TPoint to Vector

function tpv(p: TPoint): Vector;
begin
  result.x := p.x;
  result.y := p.y;
end;

//  This is the Douglas-Peucker recursive simplification routine

procedure simplifyDP(tol: double; v: PPointArray; j, k: integer; mk: pintegerarray);
var
  maxi, i: integer;
  maxd2: double;
  tol2: double;
  S: Segment;
  u: Vector;
  cu: double;
  w: Vector;
  Pb: Vector;
  b, cw, dv2: double;
begin
  if (k <= j + 1) then
    exit;
  maxi := j;
  maxd2 := 0;
  tol2 := tol * tol;
  S.P0 := tpv(v[j]);
  S.P1 := tpv(v[k]);
  u := diff(S.P1, S.P0);
  cu := dot(u, u);
  for i := j + 1 to k - 1 do
  begin
    w := diff(tpv(v[i]), S.P0);
    cw := dot(w, u);
    if (cw <= 0) then
      dv2 := d2(tpv(v[i]), S.P0)
    else if (cu <= cw) then
      dv2 := d2(tpv(v[i]), S.P1)
    else
    begin
      b := cw / cu;
      Pb := sum(S.P0, mulvs(u, b));
      dv2 := d2(tpv(v[i]), Pb);
    end;
    if (dv2 <= maxd2) then
      continue;
    maxi := i;
    maxd2 := dv2;
  end;
  if (maxd2 > tol2) then
  begin
    mk[maxi] := 1;
    simplifyDP(tol, v, j, maxi, mk);
    simplifyDP(tol, v, maxi, k, mk);
  end;
end;

// tol = tolerance
// V : input array
// n : length of input array
// sV : output array
// ret length of output array

function poly_simplify(tol: double; V: PPointArray; n: integer; sV: PPointArray): integer;
var
  i, k, m, pv: integer;
  tol2: double;
  vt: PPointArray;
  mk: pintegerarray;
begin
  tol2 := tol * tol;
  getmem(vt, n * sizeof(TPoint));
  mk := allocmem(n * sizeof(integer)); // need to zero
  // Vertex Reduction within tolerance of prior vertex cluster
  vt[0] := V[0];
  k := 1;
  pv := 0;
  for i := 1 to n - 1 do
  begin
    if d2(tpv(V[i]), tpv(V[pv])) < tol2 then
      continue;
    vt[k] := V[i];
    inc(k);
    pv := i;
  end;
  if (pv < n - 1) then
  begin
    vt[k] := V[n - 1];
    inc(k);
  end;
  // Douglas-Peucker polyline simplification
  mk[k - 1] := 1;
  mk[0] := mk[k - 1];
  simplifyDP(tol, vt, 0, k - 1, mk);
  //
  m := 0;
  for i := 0 to k - 1 do
    if (mk[i] <> 0) then
    begin
      sV[m] := vt[i];
      inc(m);
    end;
  freemem(vt);
  freemem(mk);
  result := m;
end;

{!!
<FS>TImageEnVect.SimplifyPolygon

<FM>Declaration<FC>
procedure SimplifyPolygon(hobj:integer; MaxPoints:integer);

<FM>Description<FN>
SimplifyPolygon approximates a high resolution polyline with a smaller low resolution polyline having fewer vertices (MaxPoints).

<FM>Example<FC>
hobj:=ImageEnVect1.CreatePolygonFromEdge(100,100,false,25); // Creates a polygon along the edges of the image at 100,100 position
ImageEnVect1.SimplifyPolygon(.hobj, 30);	// simplify the polygon to max 30 points

!!}
procedure TImageEnVect.SimplifyPolygon(hobj: integer; MaxPoints: integer);
var
  zx, zy: double;
  i: integer;
  ia, oa: PPointArray;
  tolerance: double;
begin
  with GetObj(hobj)^ do
    if Kind = iekPOLYLINE then
    begin
      tolerance := 0.1;
      repeat
        getmem(ia, sizeof(TPoint) * PolyPointsCount);
        getmem(oa, sizeof(TPoint) * PolyPointsCount);
        CalcZxZyPolyline(GetObj(hobj), zx, zy);
        for i := 0 to PolyPointsCount - 1 do
        begin
          ia[i].x := (round((PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx) + x1);
          ia[i].y := (round((PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy) + y1);
        end;
        i := poly_simplify(tolerance, ia, PolyPointsCount, oa);
        SetObjPolylinePoints(hobj, slice(ppointarray(oa)^, i));
        freemem(oa);
        freemem(ia);
        tolerance := tolerance + 0.1;
      until i <= MaxPoints;
    end;
  Update;
end;

// End of Polyline simplify
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.CalcZxZyPolyline(Obj: PIEVObject; var zx, zy: double);
var
  dd: integer;
begin
  with Obj^ do
  begin
    dd := PolyBaseX2 - PolyBaseX1;
    if dd <> 0 then
      zx := (x2 - x1) / dd
    else
      zx := 1;
    dd := PolyBaseY2 - PolyBaseY1;
    if dd <> 0 then
      zy := (y2 - y1) / dd
    else
      zy := 1;
  end;
end;

procedure TImageEnVect.RecalcPolylineBox(Obj: PIEVObject);
var
  zx, zy: double;
  xx, yy, i: integer;
  pts: ppointarray;
  nx1, ny1, nx2, ny2: integer;
begin
  CalcZxZyPolyline(Obj, zx, zy);
  with Obj^ do
  begin
    pts := ppointarray(PolyPoints);
    nx1 := 1000000;
    ny1 := 1000000;
    nx2 := -1000000;
    ny2 := -1000000;
    for i := 0 to PolyPointsCount - 1 do
    begin
      xx := round((PPointArray(PolyPoints)[i].x - PolyBaseX1) * zx) + x1;
      yy := round((PPointArray(PolyPoints)[i].y - PolyBaseY1) * zy) + y1;
      nx1 := imin(nx1, xx);
      ny1 := imin(ny1, yy);
      nx2 := imax(nx2, xx);
      ny2 := imax(ny2, yy);
    end;
    x1 := nx1;
    y1 := ny1;
    x2 := nx2;
    y2 := ny2;
    PolyBasex1 := 1000000;
    PolyBasey1 := 1000000;
    PolyBasex2 := -1000000;
    PolyBasey2 := -1000000;
    for i := 0 to PolyPointsCount - 1 do
    begin
      PolyBaseX1 := imin(PolyBaseX1, pts[i].x);
      PolyBaseY1 := imin(PolyBaseY1, pts[i].y);
      PolyBaseX2 := imax(PolyBaseX2, pts[i].x);
      PolyBaseY2 := imax(PolyBaseY2, pts[i].y);
    end;
  end;
end;

// thanks to Roy Magne Klever for feather and smooth algorithms

{!!
<FS>TImageEnVect.CreateImageFromSelectedArea

<FM>Declaration<FC>
function CreateImageFromSelectedArea(feather: integer=0; smooth: boolean=false):integer;

<FM>Description<FN>

CreateImageFromSelectedArea creates an image object (iekBitmap) from the selected area of background image.

The feather value (0 - 255) is how much feathering you want the object to have. The feather function creates a gradient around the object but in the alpha channel so it gets a smoother look by smoothing the edges.
The smooth value tells if an anti-jagging filter should be applied to the alpha channel. If you use the feathering function, you should set smooth to true.

<FM>Example<FC>

hobj := ImageEnVect1.CreateImageFromSelectedArea;

!!}
function TImageEnVect.CreateImageFromSelectedArea(feather: integer; smooth: boolean): integer;
var
  x, y, i: integer;
  bmp: TIEBitmap;
  // Snowing routine
  cur_level, step, mvalue: integer;
  procedure snow_mpixel(x, y: integer);
  begin
    mvalue := bmp.AlphaChannel.Pixels_ie8[x, y];
    if (mvalue > cur_level) then
    begin
      inc(cur_level, step);
      if cur_level > 255 then
        cur_level := 255;
      bmp.AlphaChannel.Pixels_ie8[x, y] := cur_level;
    end
    else
      cur_level := mvalue;
  end;
  //
begin
  bmp := TIEBitmap.Create;
  CopySelectionToIEBitmap(bmp);
  bmp.AlphaChannel.Fill(0);
  for y := 0 to bmp.AlphaChannel.Height - 1 do
    for x := 0 to bmp.AlphaChannel.Width - 1 do
      if SelectionMask.IsPointInside(x + selx1, y + sely1) then
        bmp.AlphaChannel.Pixels_ie8[x, y] := 255;
  if feather > 0 then
  begin
    step := 256 div feather; // feather must not be 0
    // The two horizontal passes
    for y := 0 to bmp.AlphaChannel.Height - 1 do
    begin
      cur_level := 0;
      for x := 0 to bmp.AlphaChannel.Width - 1 do
        snow_mpixel(x, y);
      cur_level := 0;
      for x := bmp.AlphaChannel.Width - 1 downto 0 do
        snow_mpixel(x, y);
    end;
    // The two vertical passes
    for x := 0 to bmp.AlphaChannel.Width - 1 do
    begin
      cur_level := 0;
      for y := 0 to bmp.AlphaChannel.Height - 1 do
        snow_mpixel(x, y);
      cur_level := 0;
      for y := bmp.AlphaChannel.Height - 1 downto 0 do
        snow_mpixel(x, y);
    end;
  end;
  if smooth then
  begin
    for y := 0 to bmp.AlphaChannel.Height - 1 do
      for x := 0 to bmp.AlphaChannel.Width - 1 do
      begin
        i := 0;
        if bmp.AlphaChannel.Pixels_ie8[x, y] <> 0 then
        begin
          if bmp.AlphaChannel.Pixels_ie8[x - 1, y] <> 0 then
            i := i + bmp.AlphaChannel.Pixels_ie8[x - 1, y];
          if bmp.AlphaChannel.Pixels_ie8[x + 1, y] <> 0 then
            i := i + bmp.AlphaChannel.Pixels_ie8[x + 1, y];
          if bmp.AlphaChannel.Pixels_ie8[x, y - 1] <> 0 then
            i := i + bmp.AlphaChannel.Pixels_ie8[x, y - 1];
          if bmp.AlphaChannel.Pixels_ie8[x, y + 1] <> 0 then
            i := i + bmp.AlphaChannel.Pixels_ie8[x, y + 1];
          i := i shr 2;
          bmp.AlphaChannel.Pixels_ie8[x, y] := i;
        end;
      end;
  end;
  result := AddNewObject;
  ObjKind[result] := iekBitmap;
  ObjBitmap[result] := bmp;
  SetObjRect(result, rect(SelX1, SelY1, SelX2, SelY2));
  FreeAndNil(bmp);
end;

procedure TImageEnVect.DrawObjectLineLabel(wcanvas: TIECanvas; lx1, ly1, lx2, ly2: integer; var aobj: TIEVObject; zx,zy: double; var plim: trect);
var
  hfont: THandle;
  hpred: THandle;
  ph: integer;
  ox, oy: integer;
  dx, dy: integer;
  fa: double;
  x1, y1, x2, y2: integer;
begin
  if aobj.Text <> nil then
  begin
    if aobj.LabelPosition = ielEnd then
    begin
      iswap(lx1, lx2);
      iswap(ly1, ly2);
    end;
    // draw text
    with aobj.LogFont^ do
    begin
      lfQuality := ANTIALIASED_QUALITY;
      ph := lfHeight;
      lfHeight := trunc(ph * zy);
      hfont := CreateFontIndirect(aobj.LogFont^);
      lfHeight := ph;
    end;
    WCanvas.Font.Color := aobj.PenColor;
    hpred := selectobject(wcanvas.Handle, hfont);
    //
    fa := (aobj.LogFont^.lfEscapement / 10) * PI / 180; // angle in radians
    dx := WCanvas.TextWidth(aobj.Text);
    dy := WCanvas.TextHeight(aobj.Text);
    if lx1 < lx2 then
      x1 := lx1 - dx
    else
      x1 := lx1;
    if ly1 < ly2 then
      y1 := ly1 - dy
    else
      y1 := ly1;
    x2 := x1 + dx;
    y2 := y1 + dy;
    ox := 0;
    oy := trunc(y2 - y1 - dy * cos(fa) + dx * sin(fa)) div 2;
    case aobj.TextAlign of
      iejLeft:
        begin
          ox := abs(trunc(dy * sin(fa)));
        end;
      iejRight:
        begin
          ox := trunc(x2 - x1 - dx * cos(fa))
        end;
      iejCenter, iejJustify:
        begin
          ox := trunc(x2 - x1 - dx * cos(fa) - dy * sin(fa)) div 2;
        end;
    end;
    // draw rect
    WCanvas.Brush.Color := aobj.LabelBrushColor;
    WCanvas.Brush.Style := aobj.LabelBrushStyle;
    if aobj.LabelBorder=ielNone then
      WCanvas.Pen.Style:=psClear
    else
      WCanvas.Pen.Style:=psSolid;
    WCanvas.Pen.Color:=aobj.PenColor;
    case aobj.LabelBorder of
      ielRoundRect:
        WCanvas.RoundRect(x1, y1, x2 + 1, y2 + 1, 10,10);
      ielEllipse:
        begin
          WCanvas.Ellipse(x1, y1-dy, x2 + 1, y2 + 1+dy);
          iesetplim(plim, x1,y1-dy);
          iesetplim(plim, x2,y2+dy);
        end;
      else
        WCanvas.Rectangle(x1, y1, x2 + 1, y2 + 1);
    end;
    iesetplim(plim, x1, y1);
    iesetplim(plim, x2 + 1, y2 + 1);
    // draw text
    WCanvas.Brush.Style := bsClear;
    WCanvas.TextRect(rect(x1, y1, x2, y2), x1 + ox, y1 + oy, aobj.Text);
    aobj.DrawedLabelBox:=rect(XScr2Bmp(x1), YScr2Bmp(y1), XScr2Bmp(x2), YScr2Bmp(y2));
    selectobject(wcanvas.handle, hpred);
    DeleteObject(hfont);
  end;
end;

{!!
<FS>TImageEnVect.ObjGraphicRender

<FM>Declaration<FC>
property ObjGraphicRender:boolean;

<FM>Description<FN>
Enables antialiasing and alpha channel operations when GDIPlus is not installed.
!!}
procedure TImageEnVect.SetObjGraphicRender(Value: boolean);
begin
  fObjGraphicRender := Value;
  Update;
end;

function dis(x0, y0, x1, y1: double): double;
begin
  x1 := x1 - x0;
  y1 := y1 - y0;
  result := sqrt(x1 * x1 + y1 * y1);
end;

///////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
// iekTEXT and iekMEMO text objects

procedure getfontrotsize(Canvas:TIECanvas; angle:double; c:char; var x,y,w,h:integer);
var
  metric:TGLYPHMETRICS  ;
  mat:TMAT2;    //= {{0, 1}, {0, 0}, {0, 0}, {0, 1}};
begin
  mat.eM11.fract:=0;
  mat.eM11.value:=1;
  mat.eM12.fract:=0;
  mat.eM12.value:=0;
  mat.eM21.fract:=0;
  mat.eM21.value:=0;
  mat.eM22.fract:=0;
  mat.eM22.value:=1;
  GetGlyphOutline(Canvas.Handle,ord(c),GGO_METRICS,metric,0,nil,mat);
  w:=metric.gmBlackBoxX;
  h:=metric.gmBlackBoxY;
end;


procedure drawc(canvas: TIECanvas; rect: TRect; x0, y0, x1, y1: double; ch: char; rot: integer; var plim: trect);
var
  esc, x, y, w, h: integer;
  angle: double;
  lf: TLOGFONT;
  hfont: THandle;
  inv: boolean;
begin
  inv := x0 > x1;
  x1 := x1 - x0;
  y1 := y1 - y0;
  if rot = -10 then
  begin
    if ((x1 < 0.01) and (x1 > -0.01)) then
    begin
      if y1 > 0 then
        esc := 2700
      else
        esc := 900;
    end
    else
    begin
      if inv then
        angle := arctan(-y1 / x1) + pi
      else
        angle := arctan(-y1 / x1);
      esc := trunc(angle * 180 / PI * 10 + 0.5);
    end;
  end
  else
    esc := rot;
  GetObject(GetCurrentObject(Canvas.Handle, OBJ_FONT), sizeof(lf), @lf);
  if lf.lfEscapement <> esc then
  begin
    lf.lfEscapement := esc;
    hfont := CreateFontIndirect(lf);
    if hfont = 0 then
      exit;
    DeleteObject(SelectObject(Canvas.Handle, hfont));
  end;
  x := rect.left + trunc(x0);
  y := rect.top + trunc(y0);
  Canvas.TextOut(x, y, ch);

  angle:=(esc/10) / ((180 / PI));
  getfontrotsize(Canvas,angle,ch,x,y,w,h);

  iesetplim(plim, x, y);
  iesetplim(plim, x - w, y - h);
  iesetplim(plim, x + w, y + h);

end;

// draw object iekTEXT or iekMEMO to the coordinates x1,y1,x2,y2 on WCanvas.

procedure TImageEnVect.DrawObjectText(wcanvas: TIECanvas; x1, y1, x2, y2: integer; var aobj: TIEVObject; hobj:integer; zx,zy: double; drawingalpha: boolean; var plim: trect);
var
  hfont: THandle;
  hpred: THandle;
  i, ph: integer;
  ox, oy: integer;
  dx, dy: integer;
  fa: double;
  tmpMemo: TIETextControl;
  length: integer;
  dx0, dy0, dx1, dy1, curlen, lx, ly: double;
  pc: pchar;
  x00, y00: double;
  olda, slen: integer;
  perim: double;
  ordx1,ordy1,ordx2,ordy2:integer;
begin
  if aobj.Kind = iekText then
  begin
    if aobj.Text <> nil then
      if @aobj = GetObj(fTextEditing) then
      begin
        // we are painting the editing text object
        wcanvas.Brush.Style := bsClear;
        wcanvas.Rectangle(x1 - 1, y1 - 1, x2 + 1, y2 + 1);
      end
      else
      begin
        // draw text
        if aobj.CurvedLen = 0 then
        begin
          // normal draw
          with aobj.LogFont^ do
          begin
            lfQuality := ANTIALIASED_QUALITY;
            ph := lfHeight;
            if lfHeight = 0 then
              lfHeight := y2 - y1
            else
              lfHeight := trunc(ph * zy);
            hfont := CreateFontIndirect(aobj.LogFont^);
            lfHeight := ph;
          end;
          WCanvas.Font.Color := aobj.PenColor;
          hpred := SelectObject(wcanvas.handle, hfont);
          //
          fa := (aobj.LogFont^.lfEscapement / 10) * PI / 180; // angle in radians
          dx := WCanvas.TextWidth(aobj.Text);
          dy := WCanvas.TextHeight(aobj.Text);
          ox := 0;
          oy := trunc(y2 - y1 - dy * cos(fa) + dx * sin(fa)) div 2;
          case aobj.TextAlign of
            iejLeft:
              begin
                ox := abs(trunc(dy * sin(fa)));
                if aobj.PenStyle<>psClear then
                  inc(ox,round((aobj.PenWidth+1)*zx));
              end;
            iejRight:
              begin
                ox := trunc(x2 - x1 - dx * cos(fa));
                if aobj.PenStyle<>psClear then
                  dec(ox,round((aobj.PenWidth+1)*zx));
              end;
            iejCenter, iejJustify:
              begin
                ox := trunc(x2 - x1 - dx * cos(fa) - dy * sin(fa)) div 2;
              end;
          end;
          // draw rect
          WCanvas.Rectangle(x1, y1, x2 + 1, y2 + 1);
          // draw text
          wcanvas.Brush.Style := bsClear;
          WCanvas.TextRect(rect(x1, y1, x2, y2), x1 + ox, y1 + oy, aobj.Text);
          SelectObject(wcanvas.Handle, hpred);
          DeleteObject(hfont);
        end
        else
        begin
          // curved text
          slen := strlen(aobj.Text);
          if slen = 0 then
            exit;
          dx := abs(x2 - x1);
          dy := abs(y2 - y1);
          olda := SetTextAlign(wcanvas.Handle, TA_BASELINE or TA_CENTER);
          with aobj.LogFont^ do
          begin
            lfQuality := ANTIALIASED_QUALITY;
            ph := lfHeight;
            if lfHeight = 0 then
              lfHeight := y2 - y1
            else
              lfHeight := trunc(ph * zy);
            hfont := CreateFontIndirect(aobj.LogFont^);
            lfHeight := ph;
          end;
          WCanvas.Font.Color := aobj.PenColor;
          hpred := selectobject(wcanvas.handle, hfont);
          pc := aobj.Text;
          // calc perim (perimeter)
          perim := 0;
          dx0 := aobj.curvedpos[0].x;
          dy0 := aobj.curvedpos[0].y;
          for i := 1 to aobj.CurvedLen - 1 do
          begin
            dx1 := aobj.curvedpos[i].x;
            dy1 := aobj.curvedpos[i].y;
            x00 := abs(dx0 - dx1) * dx;
            y00 := abs(dy0 - dy1) * dy;
            perim := perim + sqrt(x00 * x00 + y00 * y00);
            dx0 := dx1;
            dy0 := dy1;
          end;

          length := trunc(perim / slen);
          dx0 := aobj.curvedpos[0].x * dx;
          lx := dx0;
          dy0 := aobj.curvedpos[0].y * dy;
          ly := dy0;
          curlen := 0;
          for i := 1 to aobj.CurvedLen - 1 do
          begin
            dx1 := aobj.curvedpos[i].x * dx;
            dy1 := aobj.curvedpos[i].y * dy;
            x00 := abs(dx0 - dx1);
            y00 := abs(dy0 - dy1);
            curlen := curlen + sqrt(x00 * x00 + y00 * y00);
            while (curlen >= length) and (pc^ <> #0) do
            begin
              x00 := dx0;
              y00 := dy0;
              if curlen <> 0 then
              begin
                dx0 := dx0 + (dx1 - dx0) * length / curlen;
                dy0 := dy0 + (dy1 - dy0) * length / curlen;
                drawc(WCanvas, rect(x1, y1, x2, y2), x00, y00, dx0, dy0, pc^, aobj.CurvedCharRot, plim);
              end;
              curlen := curlen - length;
              inc(pc);
            end;
            dx0 := dx1;
            dy0 := dy1;
          end;
          selectobject(wcanvas.handle, hpred);
          DeleteObject(hfont);
          SetTextAlign(wcanvas.Handle, olda);
        end;
      end;
  end
  else if (aobj.Kind = iekMemo) and (fTextEditing<>hobj) then
  begin
    // draw memo
    tmpMemo := TIETextControl.Create(nil);
    with tmpMemo do
    begin
      Text := aobj.Text;
      TextFormat := aobj.TextFormat;
      TextFormatRef := aobj.TextFormatRef;
      Zoom := zy;
      MarginLeft:=aobj.MemoMarginLeft;
      MarginTop:=aobj.MemoMarginTop;
      MarginRight:=aobj.MemoMarginRight;
      MarginBottom:=aobj.MemoMarginBottom;
      DefaultFont.Name := aobj.LogFont^.lfFaceName;
      DefaultFont.Style := IEExtractStylesFromLogFont(aobj.LogFont);
      DefaultFont.Color := aobj.PenColor;
      DefaultFont.Height := aobj.LogFont^.lfHeight;
      DefaultFontBrush.Color := aobj.BrushColor;
      DefaultFontBrush.Style := aobj.MemoCharsBrushStyle;
      DefaultAlign := aobj.TextAlign;
      Brush.Color := aobj.BrushColor;
      Brush.Style := aobj.BrushStyle;
      ForceDefaultColors := drawingalpha;
      IsDrawingAlpha := DrawingAlpha;
      IsFontLocked := aobj.FontLocked;
      AutoSize := aobj.TextAutoSize;
      GlobalLineSpace := aobj.LineSpace;
      BorderPen.Color := aobj.MemoBorderColor;
      BorderPen.Style := aobj.MemoBorderStyle;
      GlobalFixedHeight := aobj.MemoFixedHeight;
      WriteFormattedString := fMemoWriteFormattedString = @aobj;
      UnderBuffer := nil;
      Init;

      // 2.3.1
      ordx1:=x1; ordy1:=y1; ordx2:=x2; ordy2:=y2;
      OrdCor(ordx1,ordy1,ordx2,ordy2);
      PaintTo(wcanvas, ordx1, ordy1, abs(aobj.x2-aobj.x1)+1, abs(aobj.y2-aobj.y1)+1); // for width and height PaintTo wants non zoomed values (first x1,y1 then aobj.x2...)

      aobj.Text := Text;
      aobj.TextFormat := TextFormat;
      aobj.TextFormatRef := TextFormatRef;
      Text := nil;
      TextFormat := nil;
      TextFormatRef := nil;
      fMemoFormattedString := FormattedString;
      WriteFormattedString := false;
    end;
    FreeAndNil(tmpMemo);
  end;
end;

{!!
<FS>TImageEnVect.GetMemoFormattedString

<FM>Declaration<FC>
function GetMemoFormattedString(hobj:integer):string;

<FM>Description<FN>
GetMemoFormattedString applies only to iekMEMO object, GetMemoFormattedString returns the text as it appears. Whenever a word wrap occurs, a #10 (line feed) is inserted.

!!}
function TImageEnVect.GetMemoFormattedString(hobj: integer): string;
var
  obj: PIEVObject;
  plim: TRect;
  DestCanvas:TIECanvas;
begin
  obj := GetObj(hobj);
  fMemoWriteFormattedString := obj;
  DestCanvas:=TIECanvas.Create(fTBitmap.Canvas,false,true);
  DrawObjectText(DestCanvas, obj^.x1, obj^.y1, obj^.x2, obj^.y2, obj^, hobj, 1,1, false, plim);
  DestCanvas.Free;
  result := fMemoFormattedString;
  fMemoWriteFormattedString := nil;
end;

// updates text edit properties

procedure TImageEnVect.UpdateTextEdit;
var
  xx1, yy1, xx2, yy2: integer;
begin
  if (fTextEditing = -1) then
    exit;
  with GetObj(fTextEditing)^ do
  begin
    xx1 := XBmp2Scr(x1);
    yy1 := YBmp2Scr(y1);
    xx2 := XBmp2Scr(x2);
    yy2 := YBmp2Scr(y2);
    if Kind = iekTEXT then
      with fTextEdit do
      begin
        Top := yy1;
        Left := xx1;
        Height := yy2 - yy1;
        Width := xx2 - xx1;
        Font.Color := PenColor;
        if BrushStyle = bsSolid then
          Color := BrushColor
        else
          Color := Background;
        if LogFont^.lfHeight = 0 then
          Font.Height := yy2 - yy1
        else
          Font.Height := trunc(LogFont^.lfHeight * fZoomD100Y);
        Font.Name := LogFont^.lfFaceName;
        Font.Style := GetObjFontStyles(fTextEditing);
      end;
    if Kind = iekMEMO then
      with fMemoEdit do
      begin
        Top := yy1;
        Left := xx1;
        Height := yy2 - yy1 + 1;
        Width := xx2 - xx1 + 1;
        MarginLeft:=MemoMarginLeft;
        MarginTop:=MemoMarginTop;
        MarginRight:=MemoMarginRight;
        MarginBottom:=MemoMarginBottom;
        DefaultFont.Name := LogFont^.lfFaceName;
        DefaultFont.Style := GetObjFontStyles(fTextEditing);
        DefaultFont.Color := PenColor;
        DefaultFont.Height := LogFont^.lfHeight;
        DefaultFontBrush.Color := BrushColor;
        DefaultFontBrush.Style := MemoCharsBrushStyle;
        DefaultAlign := TextAlign;
        Brush.Color := BrushColor;
        Brush.Style := BrushStyle; //Brush.Style := bsSolid; // must be solid on edit
        IsFontLocked := FontLocked;
        AutoSize := TextAutoSize;
        GlobalLineSpace := LineSpace;
        BorderPen.Color := MemoBorderColor;
        BorderPen.Style := MemoBorderStyle;
        GlobalFixedHeight := MemoFixedHeight;
        Zoom := fZoomY / 100;
      end;
  end;
end;

// Activate text object editing

procedure TImageEnVect.ActivateTextEdit;
begin
  with GetObj(fTextEditing)^ do
  begin

    if not TextEditable then
    begin
      fTextEditing:=-1;
      exit;
    end;

    if Kind = iekTEXT then
    begin
      with fTextEdit do
      begin
        Parent := self;
        AutoSize := false;
        fTextEdit.BorderStyle := bsNone;
        Ctl3D := false;
      end;
      UpdateTextEdit;
      windows.SetFocus(fTextEdit.handle);
      case syslocale.PriLangID of
        LANG_GREEK:
          Font.Charset := GREEK_CHARSET;
        LANG_RUSSIAN:
          Font.Charset := RUSSIAN_CHARSET;
      end;
      fTextEdit.OnKeyDown := TextEditKeyDown;
      fTextEdit.OnChange := TextEditOnChange;
      fTextEdit.Text := Text;
      fTextEdit.Visible := True;
      if assigned(fOnActivateTextEdit) then
        fOnActivateTextEdit(self);
    end;
    if Kind = iekMEMO then
    begin
      fMemoEdit.UnderBuffer:=BackBuffer;
      fMemoEdit.Parent := self;
      UpdateTextEdit;
      windows.SetFocus(fMemoEdit.handle);
      case syslocale.PriLangID of
        LANG_GREEK:
          Font.Charset := GREEK_CHARSET;
        LANG_RUSSIAN:
          Font.Charset := RUSSIAN_CHARSET;
      end;
      fMemoEdit.OnKeyDown := MemoEditKeyDown;
      fMemoEdit.Text := Text;
      fMemoEdit.TextFormatRef := TextFormatRef;
      fMemoEdit.TextFormat := TextFormat;
      fMemoEdit.Init;
      fMemoEdit.Visible := True;
      if assigned(fOnActivateTextEdit) then
        fOnActivateTextEdit(self);
    end;
  end;
end;

procedure TImageEnVect.TextEditOnChange(Sender: TObject);
var
  tw, mm: integer;
begin
  with GetObj(fTextEditing)^ do
    if TextAutoSize then
    begin
      Canvas.Font.Assign(fTextEdit.Font);
      tw := Canvas.TextWidth(fTextEdit.Text);
      mm := Canvas.TextWidth('M');
      fTextEdit.Width := tw;
      tw := trunc((tw + mm) / fZoomD100X);
      x2 := x1 + tw;
      Update;
    end;
end;

procedure TImageEnVect.TextEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if assigned(fOnTextKeyDown) then
    fOnTextKeyDown(Sender,Key,Shift);
  case Key of
    VK_ESCAPE:
      begin
        Key := 0;
        SendMessage((Sender as TEdit).Handle, WM_UNDO, 0, 0);
        CancelInteracts;
      end;
    VK_RETURN:
      begin
        Key := 0;
        CancelInteracts;
        DoVectorialChanged;
      end;
  end;
end;

procedure TImageEnVect.MemoEditKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if assigned(fOnTextKeyDown) then
    fOnTextKeyDown(Sender,Key,Shift);
  case Key of
    VK_ESCAPE:
      begin
        Key := 0;
        CancelInteracts;
      end;
  end;
end;

// Disable iekTEXT object editing (fTextEditing)
// Update Text with edit control content

procedure TImageEnVect.RemoveTextEdit;
var
  canvas_avl: boolean;
begin
  if (fTextEditing >= 0) then
  begin
    canvas_avl := not (csDestroying in ComponentState);
    with GetObj(fTextEditing)^ do
    begin
      if Kind = iekTEXT then
      begin
        if Text <> nil then
          freemem(Text);
        Text := _StrDup(pchar(fTextEdit.Text));
        if canvas_avl and TextAutoSize then
        begin
          Canvas.Font.Assign(fTextEdit.Font);
          x2 := x1 + trunc(Canvas.TextWidth(fTextEdit.Text) / fZoomD100X);
        end;
        fTextEdit.Visible := false;
        if assigned(fOnDeactivateTextEdit) then
          fOnDeactivateTextEdit(self);
      end;
      if Kind = iekMEMO then
      begin
        fMemoEdit.RemoveUnreferenced;
        if TextAutoSize and not (csDestroying in ComponentState) then
          y2 := y1 + trunc(fMemoEdit.ClientHeight / fZoomD100Y);
        Text := fMemoEdit.Text;
        TextFormat := fMemoEdit.TextFormat;
        TextFormatRef := fMemoEdit.TextFormatRef;
        fMemoEdit.Text := nil;
        fMemoEdit.TextFormat := nil;
        fMemoEdit.TextFormatRef := nil;
        fMemoEdit.Visible := false;
        if assigned(fOnDeactivateTextEdit) then
          fOnDeactivateTextEdit(self);
      end;
    end;
    if canvas_avl then
      SetFocus;
    DoVectorialChanged;
  end;
end;

// iekTEXT and iekMEMO text objects
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////

procedure TImageEnVect.DoObjSaveUndo;
begin
  fSavedUndo:=fObjAutoUndo;
  if fObjAutoUndo then
  begin
    case fObjUndoMode of
      ieumSeparated:
        ObjSaveUndo;
      ieumShared:
        Proc.SaveUndo(ieuObject);
    end;
  end;
end;

{!!
<FS>TImageEnVect.ObjClearAllUndo

<FM>Declaration<FC>
procedure ObjClearAllUndo;

<FM>Description<FN>
ObjClearAllUndo empties the Undo stack.

!!}
procedure TImageEnVect.ObjClearAllUndo;
begin
  while fObjUndoList.Count > 0 do
  begin
    TObject(fObjUndoList[0]).free;
    fObjUndoList.delete(0);
  end;
end;

// remove only last undo

{!!
<FS>TImageEnVect.ObjClearUndo

<FM>Declaration<FC>
procedure ObjClearUndo;

<FM>Description<FN>
ObjClearUndo clears only the last undo buffer (group of saved objects).

!!}
procedure TImageEnVect.ObjClearUndo;
var
  uc: integer;
begin
  uc := fObjUndoList.Count;
  if uc > 0 then
  begin
    TObject(fObjUndoList[uc - 1]).free;
    fObjUndoList.delete(uc - 1);
  end;
end;

{!!
<FS>TImageEnVect.ObjUndoAt

<FM>Declaration<FC>
procedure ObjUndoAt(Position:integer);

<FM>Description<FN>
ObjUndoAt restores the image (group of objects) at Position in the Undo stack.
Position: 0=last saved undo; 1=before last saved undo;  2...  up to UndoCount-1
!!}
procedure TImageEnVect.ObjUndoAt(Position: integer);
var
  uc: integer;
  obj: TObject;
  ms: TMemoryStream;
begin
  uc := fObjUndoList.Count;
  if (uc > 0) and (Position < uc) then
  begin
    obj := fObjUndoList[uc - 1 - Position];
    if obj is TMemoryStream then
    begin
      ms := TMemoryStream(obj);
      ms.Position := 0;
      LoadFromStreamIEV(ms);
    end;
  end;
end;

{!!
<FS>TImageEnVect.ObjCanUndo

<FM>Declaration<FC>
property ObjCanUndo:boolean;

<FM>Description<FN>
ObjCanUndo is true when the Undo stack contains at least one group of objects.

ObjAllClearUndo (or ObjClearUndo if there is only one group of objects) sets ObjCanUndo to false.

!!}
function TImageEnVect.GetObjCanUndo: boolean;
begin
  result := fObjUndoList.Count > 0;
end;

{!!
<FS>TImageEnVect.ObjUndoCount

<FM>Declaration<FC>
property ObjUndoCount:integer;

<FM>Description<FN>
ObjUndoCount returns how many images (group of objects) there are in the Undo stack.

!!}
function TImageEnVect.GetObjUndoCount: integer;
begin
  result := fObjUndoList.Count;
end;

{!!
<FS>TImageEnVect.ObjSaveUndo

<FM>Declaration<FC>
procedure ObjSaveUndo;

<FM>Description<FN>
ObjSaveUndo saves selected objects to the Undo stack.

!!}
procedure TImageEnVect.ObjSaveUndo;
//
  procedure SaveUndoObject(obj: TObject);
  begin
    while fObjUndoList.Count >= fObjUndoLimit do
    begin
      TObject(fObjUndoList[0]).free;
      fObjUndoList.delete(0);
    end;
    fObjUndoList.Add(obj);
  end;
var
  ms: TMemoryStream;
begin
  if fObjUndoLimit=0 then
    exit;
  ms := TMemoryStream.Create;
  SaveToStreamIEV(ms);
  SaveUndoObject(ms);
  if assigned(fOnSaveUndo) then
    fOnSaveUndo(self,ieuObject);
end;

{!!
<FS>TImageEnVect.ObjUndo

<FM>Declaration<FC>
procedure ObjUndo;

<FM>Description<FN>
ObjUndo restores the most recently saved objects from the Undo stack.

!!}
procedure TImageEnVect.ObjUndo;
begin
  ObjUndoAt(0);
end;

{!!
<FS>TImageEnVect.IsEditMode

<FM>Declaration<FC>
function IsEditMode:boolean;

<FM>Description<FN>

IsEditMode returns true when TImageEnVect is editing a TEXT or MEMO object.

!!}
function TImageEnVect.IsEditMode: boolean;
begin
  result := fTextEditing > -1;
end;

{!!
<FS>TImageEnVect.SetObjTextCurve

<FM>Declaration<FC>
procedure SetObjTextCurve(hobj:integer; x,y:double);

<FM>Description<FN>
SetObjTextCurve inserts a new point into the specified curved text (iekTEXT object). Coordinates must be floating point values from 0 to 1.

<FM>Example<FC>

ImageEnVect.SetObjTextCurveShape(hobj, iecNone, 0,false);	// remove old curve
ImageEnVect.SetObjTextCurve(hobj, 0, 0.1);
ImageEnVect.SetObjTextCurve(hobj, 0.1, 0.2);
ImageEnVect.SetObjTextCurve(hobj, 0.3, 0.4);
Etc..
!!}
procedure TImageEnVect.SetObjTextCurve(hobj: integer; x, y: double);
begin
  with GetObj(hobj)^ do
  begin
    inc(CurvedLen);
    reallocmem(CurvedPos, sizeof(TDPoint) * CurvedLen);
    CurvedPos[CurvedLen - 1].x := x;
    CurvedPos[CurvedLen - 1].y := y;
  end;
end;

{!!
<FS>TImageEnVect.SetObjTextCurveShape

<FM>Declaration<FC>
procedure SetObjTextCurveShape(hobj:integer; shape:<A TIECurve>; phase:integer; dforward:boolean);

<FM>Description<FN>
SetObjTextCurveShape creates a curve (calling SetObjTextCurve) with the shape specified by the shape parameter.

phase specifies the angle where the text starts on the curve (0-360)
dforward : specifies the direction of the text on the curve.

<FM>Example<FC>
ImageEnVect.SetObjTextCurveShape( hobj, iecEllipse, 90, true );
!!}
procedure TImageEnVect.SetObjTextCurveShape(hobj: integer; shape: TIECurve; phase: integer; dforward: boolean);
var
  a, p, x, y, pha: double;
begin
  with GetObj(hobj)^ do
  begin
    // remove old curve
    if CurvedLen > 0 then
      freemem(CurvedPos);
    CurvedPos := nil;
    CurvedLen := 0;
    // create new curve
    case shape of
      iecNone: ; // do nothing
      iecEllipse:
        begin
          pha := phase * PI / 180;
          p := 2 * PI + pha;
          a := pha;
          if dforward then
            iedswap(p, a);
          while true do
          begin
            x := 0.5 + sin(a) / (2);
            y := 0.5 + cos(a) / (2);
            SetObjTextCurve(hobj, x, y);
            if dforward then
            begin
              if a <= p then
                break;
              a := a - 0.01745329252; // dec by 1 grade
            end
            else
            begin
              if a >= p then
                break;
              a := a + 0.01745329252 // inc by 1 grade
            end;
          end;
        end;
      iecArc:
        begin
          pha := phase * PI / 180 - PI / 2;
          p := PI + pha;
          a := pha;
          if dforward then
            iedswap(p, a);
          while true do
          begin
            x := 0.5 + sin(a) / (2);
            y := 0.5 + cos(a) / (2);
            SetObjTextCurve(hobj, x, y);
            if dforward then
            begin
              if a <= p then
                break;
              a := a - 0.01745329252; // dec by 1 grade
            end
            else
            begin
              if a >= p then
                break;
              a := a + 0.01745329252 // inc by 1 grade
            end;
          end;
        end;
      iecCosine:
        begin
          pha := phase * PI / 180;
          p := pha;
          a := 2 * PI + pha;
          x := 0;
          while true do
          begin
            x := x + 1 / 360;
            y := 0.5 + cos(a) / (2);
            SetObjTextCurve(hobj, x, y);
            if a <= p then
              break;
            a := a - 0.01745329252; // dec by 1 grade
          end;
        end;
      iecVertical:
        begin
          if dforward then
          begin
            SetObjTextCurve(hobj, 0.5, 0);
            SetObjTextCurve(hobj, 0.5, 1);
          end
          else
          begin
            SetObjTextCurve(hobj, 0.5, 1);
            SetObjTextCurve(hobj, 0.5, 0);
          end;
        end;
      iecHorizontal:
        begin
          if dforward then
          begin
            SetObjTextCurve(hobj, 0, 0.5);
            SetObjTextCurve(hobj, 1, 0.5);
          end
          else
          begin
            SetObjTextCurve(hobj, 1, 0.5);
            SetObjTextCurve(hobj, 0, 0.5);
          end;
        end;
    end;
  end;
  Update;
end;

{!!
<FS>TImageEnVect.SetObjTextCurveFromPolyline

<FM>Declaration<FC>
procedure SetObjTextCurveFromPolyline(hobj:integer; source:integer);

<FM>Description<FN>
SetObjTextCurveFromPolyline creates a curve (calling SetObjTextCurve) with the shape specified by the source polyline object which must be a iekPOLYLINE object.

!!}
procedure TImageEnVect.SetObjTextCurveFromPolyline(hobj: integer; source: integer);
var
  psource: PIEVObject;
  pdest: PIEVObject;
  i, dx, dy: integer;
  x, y: double;
begin
  pdest := GetObj(hobj);
  psource := GetObj(source);
  // remove old curve
  if pdest^.CurvedLen > 0 then
    freemem(pdest^.CurvedPos);
  pdest^.CurvedPos := nil;
  pdest^.CurvedLen := 0;
  // create new curve
  dx := abs(psource^.PolyBaseX2 - psource^.PolyBaseX1);
  dy := abs(psource^.PolyBaseY2 - psource^.PolyBaseY1);
  for i := 0 to psource^.PolyPointsCount - 1 do
  begin
    x := (PPointArray(psource^.PolyPoints)[i].x - psource^.PolyBaseX1) / dx;
    y := (PPointArray(psource^.PolyPoints)[i].y - psource^.PolyBaseY1) / dy;
    SetObjTextCurve(hobj, x, y);
  end;
end;

{!!
<FS>TImageEnVect.ObjAntialias

<FM>Declaration<FC>
property ObjAntialias:boolean;

<FM>Description<FN>
If ObjAntialias is true then ImageEn draws objects with an anti-alias filter. This will slow down the drawing but enhances the quality.
!!}
procedure TImageEnVect.SetObjAntialias(value: boolean);
begin
  if value <> fObjAntialias then
  begin
    fObjAntialias := value;
    Update;
  end;
end;

procedure TImageEnVect.ObjLockPaint;
begin
  inc(fObjLockPaint);
end;

procedure TImageEnVect.ObjUnLockPaint;
begin
  dec(fObjLockPaint);
end;

{!!
<FS>TImageEnVect.RotateAllObjects

<FM>Declaration<FC>
procedure RotateAllObjects(angle:double; center:<A TIERotateCenter>);

<FM>Description<FN>
Rotates all objects by the specified angle (in degrees).

If center is ierImage only 90/180/270 degrees rotations are allowed
iekBOX,iekELLIPSE,iekBITMAP,iekTEXT can be rotated only by 90/180/270 degrees
This method doesn't work with iekMEMO and curved texts
It is better to call RotateAllObjects before Proc.Rotate.

<FM>Example<FC>

// rotate the image and objects by 90 degrees
ImageEnVect1.RotateAllObjects(90, ierImage);
ImageEnVect1.Proc.Rotate(90);

!!}
procedure TImageEnVect.RotateAllObjects(angle:double; center:TIERotateCenter);
var
  i:integer;
  obj:PIEVObject;
  vsin,vcos:double;
  basex,basey:integer;
begin
  for i:=0 to fObjCount-1 do
  begin
    obj:=GetObj( fObj^[i] );
    CalcRotateValues(obj,angle,center,basex,basey,vsin,vcos);
    RotateObjectEx(obj,angle,vsin,vcos,basex,basey);
  end;
  Update;
end;

{!!
<FS>TImageEnVect.RotateObject

<FM>Declaration<FC>
procedure RotateObject(hobj:integer; angle:double; center:<A TIERotateCenter>);

<FM>Description<FN>

Rotates specified object by the specified angle (in degrees).

If center is ierImage only 90/180/270 degrees rotations are allowed
iekBOX,iekELLIPSE,iekBITMAP,iekTEXT can be rotated only by 90/180/270 degrees
This method doesn't work with iekMEMO and curved texts.

<FM>Example<FC>

// rotate the image and object 'hobj' by 90 degrees
ImageEnVect1.Proc.Rotate(90);
ImageEnVect1.RotateObject(hobj, 90, ierImage);

!!}
procedure TImageEnVect.RotateObject(hobj:integer; angle:double; center:TIERotateCenter);
var
  vsin,vcos:double;
  basex,basey:integer;
  obj:PIEVObject;
begin
  obj := GetObj(hobj);
  CalcRotateValues(obj,angle,center,basex,basey,vsin,vcos);
  RotateObjectEx(obj,angle,vsin,vcos,basex,basey);
  Update;
end;

procedure TImageEnVect.CalcRotateValues(obj:PIEVObject; angle:double; center:TIERotateCenter; var basex,basey:integer; var vsin,vcos:double);
var
  a:double;
  //dd:integer;
begin
  a := angle * pi / 180;
  vsin:=sin(a);
  vcos:=cos(a);
  with obj^ do
  begin
    if center=ierImage then
    begin
      // the center is the image center
      (*
      dd:=(fiebitmap.width - fiebitmap.height) div 2;
      basex:=fiebitmap.width div 2;
      basey:=fiebitmap.height div 2;
      inc(basex,trunc(dd*vcos));
      inc(basey,trunc(dd*vsin));
      //*)
      case trunc(angle) of
        0:
          begin
          end;
        90:
          begin
            basex:=fiebitmap.width div 2;
            basey:=basex;
          end;
        180:
          begin
            basex:=fiebitmap.width div 2;
            basey:=fiebitmap.height div 2;
          end;
        270:
          begin
            basex:=fiebitmap.height div 2;
            basey:=fiebitmap.height div 2;
          end;
      end;
    end
    else
    begin
      // the center is the object center
      basex:=(x1+x2) div 2;
      basey:=(y1+y2) div 2;
    end;
  end;
end;

// angle must be in degrees
procedure TImageEnVect.RotateObjectEx(obj:PIEVObject; angle:double; vsin,vcos:double; basex,basey:integer);
var
  nx1,ny1,nx2,ny2:integer;
  proc:TImageEnProc;
  i:integer;
begin
  with obj^ do
  begin
    nx1:=x1-basex;
    ny1:=y1-basey;
    nx2:=x2-basex;
    ny2:=y2-basey;
    x1 := basex+ round(  nx1*vcos + ny1*vsin );
    y1 := basey+ round( -nx1*vsin + ny1*vcos );
    x2 := basex+ round(  nx2*vcos + ny2*vsin );
    y2 := basey+ round( -nx2*vsin + ny2*vcos );
    if Kind=iekMEMO then
    begin
      OrdCor(x1,y1,x2,y2);
    end;
    if (Kind=iekBOX) or (Kind=iekEXTENDED) then
    begin
      OrdCor(x1,y1,x2,y2);
    end;
    if Kind=iekBITMAP then
    begin
      // rotate the bitmap
      proc:=TImageEnProc.Create(self);
      proc.AutoUndo:=false;
      proc.AttachedIEBitmap:=GetBitmap(BitmapIdx);
      proc.AttachedIEBitmap.AlphaChannel; // 3.0.0: make sure the image has alpha channel
      proc.Rotate(angle,true,ierFast,-1);
      FreeAndNil(proc);
    end;
    if Kind=iekTEXT then
    begin
      OrdCor(x1,y1,x2,y2);
      if LogFont <> nil then
        LogFont^.lfEscapement := LogFont^.lfEscapement + trunc(angle * 10);
    end;
    if Kind=iekPOLYLINE then
    begin
      for i:=0 to PolyPointsCount-1 do
      begin
        nx1:=PPointArray(PolyPoints)[i].x-basex;
        ny1:=PPointArray(PolyPoints)[i].y-basey;
        PPointArray(PolyPoints)[i].x := basex+ round(  nx1*vcos + ny1*vsin );
        PPointArray(PolyPoints)[i].y := basey+ round( -nx1*vsin + ny1*vcos );
      end;
      nx1:=PolyBaseX1-basex;
      ny1:=PolyBaseY1-basey;
      nx2:=PolyBaseX2-basex;
      ny2:=PolyBaseY2-basey;
      PolyBasex1 := basex+ round(  nx1*vcos + ny1*vsin );
      PolyBasey1 := basey+ round( -nx1*vsin + ny1*vcos );
      PolyBasex2 := basex+ round(  nx2*vcos + ny2*vsin );
      PolyBasey2 := basey+ round( -nx2*vsin + ny2*vcos );
    end;
    if Kind=iekANGLE then
    begin
      for i:=0 to 2 do
      begin
        nx1:=AnglePoints[i].x-basex;
        ny1:=AnglePoints[i].y-basey;
        AnglePoints[i].x := basex+ round(  nx1*vcos + ny1*vsin );
        AnglePoints[i].y := basey+ round( -nx1*vsin + ny1*vcos );
      end;
    end;
  end;
end;

procedure TImageEnVect.SetObjTextEditMode(hobj:integer);
begin
  if fTextEditing<>hobj then
  begin
    CancelInteracts;
    UnSelAllObjects;
    AddSelObjectEx(hobj);
    fTextEditing := hobj;
    ActivateTextEdit;
    Update;
  end;
end;

{!!
<FS>TImageEnVect.ObjTextEditMode

<FM>Declaration<FC>
property ObjTextEditMode:integer

<FM>Description<FN>
This property switches the specified MEMO or TEXT object in edit mode. You can use it to know which text object is currently editing.
!!}
function TImageEnVect.GetObjTextEditMode:integer;
begin
  result:=fTextEditing;
end;

procedure TImageEnVect.WMKillFocus(var Msg: TWMKillFocus);
begin
  inherited;
  invalidate;
end;

procedure TImageEnVect.WMSetFocus(var Msg: TWMSetFocus);
begin
  inherited;
  if IsEditMode then
    if (GetObj(fTextEditing)^.Kind = iekMEMO) and (fMemoEdit.CanFocus) and (fMemoEdit.Visible) then
      fMemoEdit.SetFocus
    else if (GetObj(fTextEditing)^.Kind = iekTEXT) and (fTextEdit.Canfocus) and (fTextEdit.Visible) then
      fTextEdit.SetFocus;
  invalidate;
end;


{!!
<FS>TImageEnVect.MemoEditingGetCharInfo

<FM>Declaration<FC>
function MemoEditingGetCharInfo:<A TIEMemoEditCharInfo>;

<FM>Description<FN>
Returns the char information (font, color, alignment) about the currently caret position.

<FM>Demo<FN>
Imageprocessing1\advancedtext
!!}
function TImageEnVect.MemoEditingGetCharInfo:TIEMemoEditCharInfo;
begin
  result:=TIEMemoEditCharInfo.Create;
  if IsEditMode then
    with result do
    begin
      Font.Name := fMemoEdit.InsertingCharInfo^.name;
      Font.Height := fMemoEdit.InsertingCharInfo^.height;
      Font.Style := fMemoEdit.InsertingCharInfo^.style;
      Font.Color := fMemoEdit.InsertingCharInfo^.color;
      Align := fMemoEdit.InsertingCharInfo^.align;
    end;
end;

{!!
<FS>TImageEnVect.MemoEditingSetCharInfo

<FM>Declaration<FC>
procedure MemoEditingSetCharInfo(info:<A TIEMemoEditCharInfo>);

<FM>Description<FN>
Sets the char information (font, color, alignment) about the currently caret position.

<FM>Demo<FN>
Imageprocessing1\advancedtext
!!}
procedure TImageEnVect.MemoEditingSetCharInfo(info:TIEMemoEditCharInfo);
begin
  if IsEditMode then
  begin
    fMemoEdit.SetXFont(info.Font);
    if info.align<>fMemoEdit.InsertingCharInfo^.align then
      fMemoEdit.InsertAlign(info.align);
    fMemoEdit.Update;
    fMemoEdit.SetFocus;
  end;
end;

procedure TImageEnVect.SetOnTextEditCursorMoved(value:TNotifyEvent);
begin
  fMemoEdit.OnCursorMoved:=value;
end;

{!!
<FS>TImageEnVect.OnTextEditCursorMoved

<FM>Declaration<FC>
property OnTextEditCursorMoved:TNotifyEvent;

<FM>Description<FN>
This event occurs whenever the cursor moves on text/memo editing.

<FM>Demo<FN>
Imageprocessing1\advancedtext
!!}
function TImageEnVect.GetOnTextEditCursorMoved:TNotifyEvent;
begin
  result:=fMemoEdit.OnCursorMoved;
end;

constructor TIEMemoEditCharInfo.Create;
begin
  inherited;
  Font:=TFont.Create;
end;

destructor TIEMemoEditCharInfo.Destroy;
begin
  FreeAndNil(Font);
  inherited;
end;

{!!
<FS>TImageEnVect.SaveObjectsToTIFF

<FM>Declaration<FC>
procedure SaveObjectsToTIFF(const fileName:string; pageIndex:integer);

<FM>Description<FN>
This method saves all objects in the specified TIFF. This is like <A TImageEnVect.SaveToFileIEV>, but incorporates the objects info in a tag of the TIFF file.
This method is not compatible with Wang Imaging (you have to use another method to save as Wang Imaging), but allows you to save all TImageEnVect objects.
pageIndex specifies the page in a multi-page tiff used to store the objects. In this way you can store a set of objects for each tiff page.

The tag used for default is 40101. However you can change it rewriting the value in <A iegObjectsTIFFTag> public variable (degined in imageenio unit). Example:
iegObjectsTIFFTag:=49001;

To load objects back use <A TImageEnVect.LoadObjectsFromTIFF>.

<FM>Example<FC>

// saves the background image
ImageEnVect1.IO.SaveToFile('output.tif');
// saves the objects
ImageEnVect1.SaveObjectsToTIFF('output.tif',0);

// loads the background image
ImageEnVect1.IO.LoadFromFile('output.tif');
// loads the objects
ImageEnVect1.LoadObjectsFromTIFF('output.tif',0);

!!}
procedure TImageEnVect.SaveObjectsToTIFF(const fileName:string; pageIndex:integer);
var
  ms:TMemoryStream;
  tiff:TIETiffHandler;
begin
  ms:=TMemoryStream.Create;
  SaveToStreamIEV(ms);
  tiff:=TIETiffHandler.Create;
  tiff.ReadFile(fileName);
  tiff.SetValueRAW(pageIndex,iegObjectsTIFFTag,ttByte,ms.Size,ms.Memory);
  tiff.WriteFile(fileName);
  FreeAndNil(tiff);
  FreeAndNil(ms);
end;

{!!
<FS>TImageEnVect.LoadObjectsFromTIFF

<FM>Declaration<FC>
procedure LoadObjectsFromTIFF(const fileName:string; pageIndex:integer);

<FM>Description<FN>
This method loads objects from the specified TIFF. This is like <A TImageEnVect.LoadFromFileIEV>, but gets the objects info from a tag of the TIFF file.
This method is not compatible with Wang Imaging (you have to use another method to save as Wang Imaging), but allows you to save all TImageEnVect objects.
pageIndex specifies the page in a multi-page tiff used to store the objects. In this way you can store a set of objects for each tiff page.

The tag used for default is 40101. However you can change it rewriting the value in <A iegObjectsTIFFTag> public variable (degined in imageenio unit). Example:
iegObjectsTIFFTag:=49001;

To save objects use SaveObjectsToTIFF.

<FM>Example<FC>

// saves the background image
ImageEnVect1.IO.SaveToFile('output.tif');
// saves the objects
ImageEnVect1.SaveObjectsToTIFF('output.tif',0);

// loads the background image
ImageEnVect1.IO.LoadFromFile('output.tif');
// loads the objects
ImageEnVect1.LoadObjectsFromTIFF('output.tif',0);

!!}
procedure TImageEnVect.LoadObjectsFromTIFF(const fileName:string; pageIndex:integer);
var
  ms:TMemoryStream;
  tiff:TIETiffHandler;
  buffer:pointer;
  bufferLen:integer;
  tag:integer;
begin
  tiff:=TIETiffHandler.Create;
  tiff.ReadFile(fileName);
  tag:=tiff.FindTag(pageIndex,iegObjectsTIFFTag);
  if tag>-1 then
  begin
    // tag found
    bufferLen:=tiff.GetTagLengthInBytes(pageIndex,tag);
    buffer:=tiff.GetValueRAW(pageIndex,tag,0);
    ms:=TMemoryStream.Create;
    ms.Write(pbyte(buffer)^,bufferLen);
    ms.Position:=0;
    LoadFromStreamIEV(ms);
    FreeAndNil(ms);
  end;
  FreeAndNil(tiff);
end;

// saves all layers and vectorial objects
{!!
<FS>TImageEnVect.SaveToFileAll

<FM>Declaration<FC>
procedure SaveToFileAll(const fileName:string; imageCompression: <A TIOFileType>);

<FM>Description<FN>
This method saves all layers and vectorial objects in one single file. This is like a consecutive LayersSaveToXXX and SaveToFileIEV.
ImageCompression specifies how compress the background image and the layers (cannot be ioTIFF).
If ImageCompression is -1, the image is saved using an internal format which preserves pixel format and alphachannel.

<FM>Example<FC>

ImageEnVect1.SaveToFileAll('file.my', );
..
ImageEnVect1.LoadFromFileAll('file.my');

!!}
procedure TImageEnVect.SaveToFileAll(const fileName:string; imageCompression:integer);
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnVect.SaveToFileAll'); {$endif}
  if fileName='' then
    exit;
  fs := TFileStream.Create(fileName, fmCreate);
  try
    SaveToStreamAll(fs,imageCompression);
  finally
    FreeAndNil(fs);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// loads all layers and vectorial objects
{!!
<FS>TImageEnVect.LoadFromFileAll

<FM>Declaration<FC>
function LoadFromFileAll(const fileName:string):boolean;

<FM>Description<FN>
This method loads all layers and vectorial objects saved using <A TImageEnVect.SaveToFileAll>.

!!}
function TImageEnVect.LoadFromFileAll(const fileName:string):boolean;
var
  fs: TFileStream;
begin
  {$ifdef IEPROFILE} try IEProfileBegin('TImageEnVect.LoadFromFileAll'); {$endif}
  result:=false;
  if fileName='' then
    exit;
  fs := TFileStream.Create(FileName, fmOpenRead or fmShareDenyWrite);
  try
    result:=LoadFromStreamAll(fs);
  finally
    FreeAndNil(fs);
  end;
  {$ifdef IEPROFILE} finally IEProfileEnd; end; {$endif}
end;

// saves all layers and vectorial objects
{!!
<FS>TImageEnVect.SaveToStreamAll

<FM>Declaration<FC>
procedure SaveToStreamAll(Stream:TStream; imageCompression: <A TIOFileType>);

<FM>Description<FN>
This method saves all layers and vectorial objects in one single stream block. This is like a consecutive LayersSaveToXXX and SaveToFileIEV.
ImageCompression specifies how compress the background image and the layers (cannot be ioTIFF). If ImageCompression is -1, the image is saved using an internal format which preserves pixel format and alphachannel.
!!}
procedure TImageEnVect.SaveToStreamAll(Stream:TStream; imageCompression:integer);
var
  vpos:integer;
begin
  vpos:=0; Stream.Write(vpos,sizeof(integer));  // create space for position of vectorial objects
  // write layers
  LayersSaveToStream(Stream,imageCompression);
  vpos:=Stream.Position;
  // write vectorial objects position
  Stream.Position:=0;
  Stream.Write(vpos,sizeof(integer));
  // write vectorial objects
  Stream.Position:=vpos;
  SaveToStreamIEV(Stream);
end;

function IETryALL(Stream:TStream):boolean;
var
  l:int64;
  vpos:integer;
begin
  l:=Stream.Position;
  result:=true;
  Stream.Read(vpos,sizeof(integer));  // objects position
  if vpos>Stream.Size then
    result:=false;
  if result then
  begin
    result:=IETryLYR(Stream);
    if result then
    begin
      Stream.Position:=vpos;
      result:=IETryIEV(Stream);
    end;
  end;
  Stream.Position:=l;
end;

{!!
<FS>TImageEnVect.LoadFromStreamAll

<FM>Declaration<FC>
function LoadFromStreamAll(Stream:TStream):boolean;

<FM>Description<FN>
This method loads all layers and vectorial objects saved using <A TImageEnVect.SaveToStreamAll>.
!!}
function TImageEnVect.LoadFromStreamAll(Stream:TStream):boolean;
var
  vpos:integer;
begin
  // read objects position
  Stream.Read(vpos,sizeof(integer));
  // read layers
  result:=LayersLoadFromStream(Stream);
  // read objects
  if result then
  begin
    Stream.Position:=vpos;
    result:=LoadFromStreamIEV(Stream);
  end;
end;

procedure TImageEnVect.DoNewObject(hobj: integer);
begin
  if assigned(fOnNewObject) then
    fOnNewObject(self, hobj);
end;

(*
{!!
<FS>TImageEnVect.CreatePolygonsFromSelection

<FM>Declaration<FC>
procedure CreatePolygonsFromSelection;

<FM>Description<FN>
Create polygons from current selection. This method creates the right number of polygons which composes the original selection.
This method is useful to convert from selection to vectorial polygons.

!!}
function TImageEnVect.CreatePolygonsFromSelection:integer;
var
  i,hobj:integer;
begin
  hobj:=-1;
  if Selected and (PolySelCount>0) then
    for i:=-1 to PolySelCount-1 do
      if (i=-1) or (PolySelPoints[i].x=IESELBREAK) then
      begin
        hobj:=AddNewObject;
        with GetObj(hobj)^ do
        begin
          PolyPoints := nil;
          PolyPointsCount := 0;
          PolyBaseX1 := 0;
          PolyBaseY1 := 0;
          PolyBaseX2 := 0;
          PolyBaseY2 := 0;
          x1 := 1000000;
          y1 := 1000000;
          x2 := -1000000;
          y2 := -1000000;
        end;
      end
      else
        AddPolylinePoint(hobj,PolySelPoints[i].x,PolySelPoints[i].y);
end;
//*)

// returns created objects count
function TImageEnVect.CreatePolygonsFromSelection:integer;
var
  vect:TList;
  i:integer;
  pp1:PPoint;
  hobj:integer;

  procedure NewPolygon;
  begin
    inc(result);
    hobj:=AddNewObject;
    ObjKind[hobj]:=iekPOLYLINE;
    with GetObj(hobj)^ do
    begin
      PolyPoints := nil;
      PolyPointsCount := 0;
      PolyBaseX1 := 0;
      PolyBaseY1 := 0;
      PolyBaseX2 := 0;
      PolyBaseY2 := 0;
      x1 := 1000000;
      y1 := 1000000;
      x2 := -1000000;
      y2 := -1000000;
    end;
  end;

begin
  result:=0;

  if Selected then
  begin

    vect:=IEVectorize(SelectionMask,SelectionMask.x1,SelectionMask.y1,SelectionMask.x2,SelectionMask.y2);

    hobj:=-MAXINT;

    // group points by object
    for i:=0 to vect.Count-1 do
    begin
      pp1:=PPoint(vect[i]);
      if pp1^.x=MAXINT then
      begin
        if (hobj<>-MAXINT) and (ObjPolylinePointsCount[hobj]<3) then
        begin
          RemoveObject(hobj);
          dec(result);
        end;
        NewPolygon;
      end
      else
      begin
        AddPolylinePoint(hobj,pp1^.x,pp1^.y);
      end;
    end;

    // remove little objects
    if ObjPolylinePointsCount[hobj]<3 then
    begin
      RemoveObject(hobj);
      dec(result);
    end;

    // free vect
    for i:=0 to vect.Count-1 do
      dispose( PPoint(vect[i]) );
    vect.free;

  end;
end;

procedure TImageEnVect.DoUserSelectObject(hobj:integer);
begin
  if assigned(fOnUserSelectObject) then
    fOnUserSelectObject(self,hobj);
end;

procedure TImageEnVect.DoUserDeselectObject(hobj:integer);
begin
  if assigned(fOnUserDeselectObject) then
    fOnUserDeselectObject(self,hobj);
end;

{!!
<FS>TImageEnVect.ObjGripImage

<FM>Declaration<FC>
property ObjGripImage:TPicture;

<FM>Description<FN>
Allows to set a custom picture for grips (objects painted around an object to handle resizing and selection).
!!}
procedure TImageEnVect.SetObjGripImage(Value: TPicture);
begin
  fObjGripImage.Assign(Value);
  if assigned(fObjGripImage) and assigned(fObjGripImage.Graphic) then
    fObjGripSize:=imax( fObjGripImage.Width, fObjGripImage.Height ) div 2;
end;

procedure IEVRegisterExtendedObject(classType:TClass; name:string);
var
  coi:TIEExtendedObjectInfo;
begin
  coi:=TIEExtendedObjectInfo.Create;
  coi.Info_Name:=name;
  coi.Info_ClassType:=classType;
  gExtendedObjects.Add(coi);
end;

procedure IEVRemoveExtendedObjects;
var
  i:integer;
begin
  for i:=0 to gExtendedObjects.Count-1 do
    TIEExtendedObjectInfo(gExtendedObjects[i]).Free;
  FreeAndNil(gExtendedObjects);
end;

function IEVCreateExtendedObject(name:string):TIEExtendedObject;
var
  i:integer;
  t:TClass;
begin
  result:=nil;
  for i:=0 to gExtendedObjects.Count-1 do
    if TIEExtendedObjectInfo(gExtendedObjects[i]).Info_Name = name then
    begin
      t:=TIEExtendedObjectInfo(gExtendedObjects[i]).Info_ClassType;
      result:=TIEExtendedObjectClass(t).Create;
      break;
    end;
end;

function IEVGetExtendedObjectName(classType:TClass):string;
var
  i:integer;
begin
  result:='';
  for i:=0 to gExtendedObjects.Count-1 do
    if TIEExtendedObjectInfo(gExtendedObjects[i]).Info_ClassType = classType then
    begin
      result:=TIEExtendedObjectInfo(gExtendedObjects[i]).Info_Name;
      break;
    end;
end;

procedure TImageEnVect.SetObjRulerQuoteHorizon(value:boolean);
begin
  fObjRulerQuoteHorizon:=value;
  Update;
end;

procedure TImageEnVect.SetObjAngleShowSmall(value:boolean);
begin
  fObjAngleShowSmall:=value;
  Update;
end;

{!!
<FS>TImageEnVect.ObjIsVisible

<FM>Declaration<FC>
function ObjIsVisible(hobj:integer):boolean;

<FM>Description<FN>
Returns true if the specified object is currently visible.
!!}
function TImageEnVect.ObjIsVisible(hobj:integer):boolean;
var
  ax1, ay1, ax2, ay2, ax3, ay3: integer;
  zx, zy: double;
  aobj: PIEVObject;
begin
  result := false;
  if fAllObjectsHidden then
    exit;
  aobj:=GetObj(hobj);
  zx := fZoomD100X;
  zy := fZoomD100Y;
  ax1 := VXBmp2Scr(aobj.x1, true, 1);
  ay1 := VYBmp2Scr(aobj.y1, true, 1);
  ax2 := VXBmp2Scr(aobj.x2, true, 1);
  ay2 := VYBmp2Scr(aobj.y2, true, 1);
  ax3 := VXBmp2Scr(aobj.x2 + 1, true, 1);
  ay3 := VYBmp2Scr(aobj.y2 + 1, true, 1);
  if aobj.BoxHighlight then
    aobj.PenWidth:=1;
  AdjustCoords(aobj^, ax1, ay1, ax2, ay2, ax3, ay3, zx,zy);
  // verify rectangle intersection
  if (ievsVisible in aobj.Style) and (_RectXRect(ax1, ay1, ax2, ay2, fOffX, fOffY, fOffX + fExtX, fOffY + fExtY)) then
    result := true;
end;

////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
// TIEExtendedObject

constructor TIEExtendedObject.Create;
begin
  fParent:=nil;
  fHOBJ:=-1;
  fObject:=nil;
  fMouseOver:=false;
end;

procedure TIEExtendedObject.Initialize;
begin
end;

procedure TIEExtendedObject.Finalize;
begin
end;

procedure TIEExtendedObject.Instance(AssignedHOBJ:integer);
begin
  fHOBJ:=AssignedHOBJ;
end;

procedure TIEExtendedObject.SaveToStream(Stream:TStream);
begin
end;

function TIEExtendedObject.LoadFromStream(Stream:TStream):boolean;
begin
  result:=true;
end;

function TIEExtendedObject.Clone:TIEExtendedObject;
begin
  result:=TIEExtendedObjectClass(self.ClassType).Create;
  result.fParent:=fParent;
  result.Initialize;
end;

procedure TIEExtendedObject.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
end;

procedure TIEExtendedObject.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
end;

procedure TIEExtendedObject.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
end;

procedure TIEExtendedObject.Draw(Bitmap:TBitmap; x1,y1,x2,y2:integer; isAlpha:boolean; ZoomX,ZoomY:double);
begin
end;

procedure TIEExtendedObject.Repaint;
var
  v:TImageEnVect;
  rc:TRect;
begin
  if assigned(fParent) then
  begin
    v:=(fParent as TImageEnVect);
    v.GetObjRect(HOBJ,rc);
    rc.Left:=v.XBmp2Scr(rc.Left);
    rc.Top:=v.YBmp2Scr(rc.Top);
    rc.Right:=v.XBmp2Scr(rc.Right);
    rc.Bottom:=v.YBmp2Scr(rc.Bottom);
    v.UpdateRect(rc);
  end;
end;

procedure TIEExtendedObject.CreateFont(Canvas:TCanvas; Height:integer);
var
  ph:integer;
begin
  with fObject^.LogFont^ do
  begin
    lfQuality := ANTIALIASED_QUALITY;
    ph:=lfHeight;
    lfHeight := Height;
    hfont := CreateFontIndirect(fObject.LogFont^);
    lfHeight:=ph;
  end;
  Canvas.Font.Color := Canvas.Pen.Color;
  hpred := SelectObject(Canvas.handle, hfont);
end;

procedure TIEExtendedObject.CreateFont(Canvas:TIECanvas; Height:integer);
var
  ph:integer;
begin
  with fObject^.LogFont^ do
  begin
    lfQuality := ANTIALIASED_QUALITY;
    ph:=lfHeight;
    lfHeight := Height;
    hfont := CreateFontIndirect(fObject.LogFont^);
    lfHeight:=ph;
  end;
  Canvas.Font.Color := Canvas.Pen.Color;
  hpred := SelectObject(Canvas.handle, hfont);
end;

procedure TIEExtendedObject.DestroyFont(Canvas:TCanvas);
begin
  SelectObject(Canvas.handle, hpred);
  DeleteObject(hfont);
end;

procedure TIEExtendedObject.DestroyFont(Canvas:TIECanvas);
begin
  SelectObject(Canvas.handle, hpred);
  DeleteObject(hfont);
end;

procedure TIEExtendedObject.KeyDown(CharCode:word; Shift:TShiftState);
begin
end;

procedure TIEExtendedObject.MouseEnter;
begin
  fMouseOver:=true;
end;

procedure TIEExtendedObject.MouseLeave;
begin
  fMouseOver:=false;
end;

// TIEExtendedObject
////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////


initialization
  begin
    IEVECTCLIPFORMAT := RegisterClipboardFormat(pchar(string(IEVECTCLIPFORMAT_NAME)));
    // init memo shortcuts
    iegMemoShortCuts[iesLEFTALIGN]       := ShortCut(Word('L'),[ssCtrl]);
    iegMemoShortCuts[iesCENTERALIGN]     := ShortCut(Word('E'),[ssCtrl]);
    iegMemoShortCuts[iesRIGHTALIGN]      := ShortCut(Word('R'),[ssCtrl]);
    iegMemoShortCuts[iesJUSTIFIED]       := ShortCut(Word('J'),[ssCtrl]);
    iegMemoShortCuts[iesCOPY]            := ShortCut(Word('C'),[ssCtrl]);
    iegMemoShortCuts[iesCUT]             := ShortCut(Word('X'),[ssCtrl]);
    iegMemoShortCuts[iesPASTE]           := ShortCut(Word('V'),[ssCtrl]);
    iegMemoShortCuts[iesFONTSELECT]      := ShortCut(Word('F'),[ssCtrl]);
    iegMemoShortCuts[iesBOLD]            := ShortCut(Word('B'),[ssCtrl]);
    iegMemoShortCuts[iesITALIC]          := ShortCut(Word('I'),[ssCtrl]);
    iegMemoShortCuts[iesUNDERLINE]       := ShortCut(Word('U'),[ssCtrl]);
    iegMemoShortCuts[iesBACKCOLORSELECT] := ShortCut(Word('G'),[ssCtrl]);
    //
    gExtendedObjects:=TList.Create;
  end;

finalization
  begin
    IEVRemoveExtendedObjects;
  end;


end.






