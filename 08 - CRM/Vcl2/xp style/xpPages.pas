unit xpPages;

interface

{$I xpDelphi.inc}

uses xpReg,
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, xpGraphUtil;



const
  TCS_SCROLLOPPOSITE    = $0001;  // assumes multiline tab
  TCS_BOTTOM            = $0002;
  TCS_RIGHT             = $0002;
  TCS_MULTISELECT       = $0004;  // allow multi-select in button mode
  TCS_FLATBUTTONS       = $0008;
  TCS_FORCEICONLEFT     = $0010;
  TCS_FORCELABELLEFT    = $0020;
  TCS_HOTTRACK          = $0040;
  TCS_VERTICAL          = $0080;
  TCS_TABS              = $0000;
  TCS_BUTTONS           = $0100;
  TCS_SINGLELINE        = $0000;
  TCS_MULTILINE         = $0200;
  TCS_RIGHTJUSTIFY      = $0000;
  TCS_FIXEDWIDTH        = $0400;
  TCS_RAGGEDRIGHT       = $0800;
  TCS_FOCUSONBUTTONDOWN = $1000;
  TCS_OWNERDRAWFIXED    = $2000;
  TCS_TOOLTIPS          = $4000;
  TCS_FOCUSNEVER        = $8000;

  TCS_EX_FLATSEPARATORS = $00000001;
  TCS_EX_REGISTERDROP   = $00000002;


  TCM_FIRST               = $1300;      { Tab control messages }

  TCM_GETIMAGELIST       = TCM_FIRST + 2;
  TCM_SETIMAGELIST       = TCM_FIRST + 3;
  TCM_GETITEMCOUNT       = TCM_FIRST + 4;
  TCM_DELETEITEM         = TCM_FIRST + 8;
  TCM_DELETEALLITEMS     = TCM_FIRST + 9;
  TCM_GETITEMRECT        = TCM_FIRST + 10;
  TCM_GETCURSEL          = TCM_FIRST + 11;
  TCM_SETCURSEL          = TCM_FIRST + 12;
  TCM_HITTEST            = TCM_FIRST + 13;
  TCM_SETITEMEXTRA       = TCM_FIRST + 14;
  TCM_ADJUSTRECT         = TCM_FIRST + 40;
  TCM_SETITEMSIZE        = TCM_FIRST + 41;
  TCM_REMOVEIMAGE        = TCM_FIRST + 42;
  TCM_SETPADDING         = TCM_FIRST + 43;
  TCM_GETROWCOUNT        = TCM_FIRST + 44;
  TCM_GETTOOLTIPS        = TCM_FIRST + 45;
  TCM_SETTOOLTIPS        = TCM_FIRST + 46;
  TCM_GETCURFOCUS        = TCM_FIRST + 47;
  TCM_SETCURFOCUS        = TCM_FIRST + 48;
  TCM_SETMINTABWIDTH     = TCM_FIRST + 49;
  TCM_DESELECTALL        = TCM_FIRST + 50;
  TCM_HIGHLIGHTITEM      = TCM_FIRST + 51;
  TCM_SETEXTENDEDSTYLE   = TCM_FIRST + 52;  // optional wParam == mask
  TCM_GETEXTENDEDSTYLE   = TCM_FIRST + 53;

  TCIF_TEXT       = $0001;
  TCIF_IMAGE      = $0002;
  TCIF_RTLREADING = $0004;
  TCIF_PARAM      = $0008;
  TCIF_STATE      = $0010;

  TCIS_BUTTONPRESSED      = $0001;
  TCIS_HIGHLIGHTED        = $0002;

  TCM_GETITEMA             = TCM_FIRST + 5;
  TCM_SETITEMA             = TCM_FIRST + 6;
  TCM_INSERTITEMA          = TCM_FIRST + 7;
  TCM_GETITEMW             = TCM_FIRST + 60;
  TCM_SETITEMW             = TCM_FIRST + 61;
  TCM_INSERTITEMW          = TCM_FIRST + 62;

  TCM_GETITEM             = TCM_GETITEMA;
  TCM_SETITEM             = TCM_SETITEMA;
  TCM_INSERTITEM          = TCM_INSERTITEMA;



// tab styles - search win32 api help for TCS_ for info on each style
type
  TxpTabPosition = (tpTop, tpBottom, tpLeft, tpRight);

  TxpPageControlStyle = (pcsTabs, pcsButtons, pcsFlatButtons, pcsXP);

type
  tagTCITEMA = packed record
    mask: UINT;
    dwState: UINT;
    dwStateMask: UINT;
    pszText: PAnsiChar;
    cchTextMax: Integer;
    iImage: Integer;
    lParam: LPARAM;
  end;

  tagTCITEMW = packed record
    mask: UINT;
    dwState: UINT;
    dwStateMask: UINT;
    pszText: PWideChar;
    cchTextMax: Integer;
    iImage: Integer;
    lParam: LPARAM;
  end;


  TTCItemA = tagTCITEMA;
  TTCItemW = tagTCITEMW;
  TTCItem = TTCItemA;

const
  TCHT_NOWHERE     = $0001;
  TCHT_ONITEMICON  = $0002;
  TCHT_ONITEMLABEL = $0004;
  TCHT_ONITEM      = TCHT_ONITEMICON or TCHT_ONITEMLABEL;

type
  PTCHitTestInfo = ^TTCHitTestInfo;
  tagTCHITTESTINFO = packed record
    pt: TPoint;
    flags: UINT;
  end;

  _TC_HITTESTINFO = tagTCHITTESTINFO;
  TTCHitTestInfo = tagTCHITTESTINFO;
  TC_HITTESTINFO = tagTCHITTESTINFO;

  tagTCKEYDOWN = packed record
    hdr: TNMHDR;
    wVKey: Word;
    flags: UINT;
  end;
  _TC_KEYDOWN = tagTCKEYDOWN;
  TTCKeyDown = tagTCKEYDOWN;
  TC_KEYDOWN = tagTCKEYDOWN;


// event to allow different mapping of glyphs from the imagelist component
type
  TGlyphMapEvent = procedure(Control: TWinControl; PageIndex : integer; var GlyphIndex : integer) of object;

  TOwnerDrawState = set of (odSelected, odGrayed, odDisabled, odChecked,
    odFocused, odDefault, odHotLight, odInactive, odNoAccel, odNoFocusRect,
    odReserved1, odReserved2, odComboBoxEdit);

  TDrawItemEvent = procedure(Control: TWinControl; Index: Integer; ACanvas : TControlCanvas;
    ARect: TRect; State: TOwnerDrawState) of object;


type
  TxpPageControl = class (TPageControl)
  private
    FCanvas : TControlCanvas;      // canvas for drawing on with tabOwnerDraw
    FImageList : TImageList;          // link to a TImageList component
    FOnDrawItem : TDrawItemEvent;  // Owner draw event
    FOnGlyphMap : TGlyphMapEvent;  // glyph mapping event

    FBorderColor : TColor;
    FHotTrackTab : Integer;
    FBorderRect  : TRect;
    FTabPosition : TxpTabPosition;


    FOwnerDraw : Boolean;
    FStyle : TxpPageControlStyle;

    FTabTextAlignment : TAlignment;

    function  PageIndexToWin (AIndex : Integer) : Integer;
    function  WinIndexToPage (AIndex : Integer) : Integer;
    procedure SetGlyphs (Value : TImageList);
    function GetMultiline : boolean;
    procedure CNDrawItem (var Msg : TWMDrawItem); message CN_DRAWITEM;
    procedure WMAdjasment (var Msg : TMessage); message TCM_ADJUSTRECT;
    procedure WMNCPaint (var Message : TWMNCPaint); message WM_NCPAINT;
    procedure WMNCCalcSize (var Message : TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure WMPaint (var Message : TWMPaint); message WM_PAINT;
    procedure WMMouseMove (var Message : TWMMouseMove); message WM_MOUSEMOVE;
    procedure WMSIZE (var Message : TWMSIZE); message WM_SIZE;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;
    procedure CMHintShow(var Message: TMessage); message CM_HINTSHOW;
    procedure GlyphsChanged (Sender : TObject);

    procedure SetTabPosition (Value : TxpTabPosition);
    procedure SetTabTextAlignment (Value : TAlignment);

    procedure SetBorderColor (Value : TColor);
    procedure SetStyle (Value : TxpPageControlStyle);
    procedure SetOwnerDraw (AValue : Boolean);
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure DrawItem(Index: Integer; Rect: TRect; State: TOwnerDrawState); virtual;
    procedure DrawItemInside (AIndex : Integer; ACanvas : TCanvas; ARect : TRect); virtual;
    procedure DrawBorder (ACanvas : TCanvas); virtual;

    procedure DrawTopTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
    procedure DrawBottomTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
    procedure DrawLeftTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
    procedure DrawRightTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);



    procedure DrawHotTrackTab (ATabIndex : Integer; AHotTrack : Boolean);
    procedure Loaded; override;
    // for owner draw
    property Canvas : TControlCanvas read FCanvas write FCanvas;
    // republish Multiline as read only
    property MultiLine : boolean read GetMultiline;

  public
    procedure UpdateGlyphs; virtual;
  published
    constructor Create (AOwner : TComponent); override;
    destructor Destroy; override;
    // link to TImageList
    property ImageList : TImageList Read FImageList write SetGlyphs;
    // owner draw event
    property OnDrawItem : TDrawItemEvent read FOnDrawItem write FOnDrawItem;
    // glyph map event
    property OnGlyphMap : TGlyphMapEvent read FOnGlyphMap write FOnGlyphMap;

    property OwnerDraw : Boolean read FOwnerDraw write SetOwnerDraw default False;
    property BorderColor : TColor read FBorderColor write SetBorderColor;
    property TabPosition : TxpTabPosition read FTabPosition write SetTabPosition;
    property TabTextAlignment : TAlignment read FTabTextAlignment write SetTabTextAlignment;
    property Style : TxpPageControlStyle read FStyle write SetStyle;
  end;

// redeclare TTabSheet so it can have a component editor declared here


type
  TxpTabBGStyle = (bgsNone, bgsGradient, bgsTileImage, bgsStrechImage);

type
  TxpTabSheet = class (TTabSheet)
  private
    FCanvas : TControlCanvas;
    FColor : TColor;
    FGradientStartColor : TColor;
    FGradientEndColor : TColor;
    FGradientFillDir : TFillDirection;
    FImageIndex : Integer;
    FShowTabHint : Boolean;
    FTabHint : String;
    FBGImage : TBitmap;
    FBGStyle : TxpTabBGStyle;

    procedure SetColor (AValue : TColor);
    procedure WMNCPaint (var Message : TWMNCPaint); message WM_NCPAINT;
    procedure WMPaint (var Message : TWMPaint); message WM_PAINT;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
    procedure SetImageIndex (AIndex : Integer);

    procedure SetBGImage (AValue : TBitmap);
    procedure SetBGStyle (AValue : TxpTabBGStyle);
    procedure SetGradientStartColor (AValue : TColor);
    procedure SetGradientEndColor (AValue : TColor);
    procedure SetGradientFillDir (AValue : TFillDirection);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy;
  published
    property Color : TColor read FColor write SetColor;
    property ImageIndex : Integer read FImageIndex write SetImageIndex default -1;
    property ShowTabHint : Boolean read FShowTabHint write FShowTabHint default False;
    property TabHint : String read FTabHint write FTabHint;
    property BGImage : TBitmap read FBGImage write SetBGImage;
    property BGStyle : TxpTabBGStyle read FBGStyle write SetBGStyle;
    property GradientStartColor : TColor read FGradientStartColor write SetGradientStartColor;
    property GradientEndColor : TColor read FGradientEndColor write SetGradientEndColor;
    property GradientFillDir : TFillDirection read FGradientFillDir write SetGradientFillDir;
  end;



implementation

const
  DefaultTabWidth = 100;

// constructor must create a TControlCanvas for the owner draw style

constructor TxpPageControl.Create (AOwner : TComponent);
begin
  inherited Create (AOwner);
  FCanvas := TControlCanvas.Create;

  FBorderColor := clSilver;
  FTabPosition := tpTop;

  FHotTrackTab := -1;

  ShowHint := true;
  FStyle := pcsXP;

  FTabTextAlignment := taCenter;
  FOwnerDraw := False;
end;

// remove link with glyphs and free the canvas

destructor TxpPageControl.Destroy;
begin
  try
    FCanvas.Free;
  except
  end;
  if Assigned (FImageList) then
  try
    FImageList.OnChange := nil;
  except
  end;
  inherited Destroy;
end;

// CreateParams called to set the additional style bits

procedure TxpPageControl.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams (Params);

  with Params do
  begin
    case FStyle of
      pcsTabs: Style:= Style or TCS_TABS;
      pcsButtons: Style:= Style or TCS_BUTTONS;
      pcsFlatButtons: Style := Style or TCS_BUTTONS or TCS_FLATBUTTONS;
      pcsXP: begin end;
    end;


    if FOwnerDraw then Style := Style or TCS_OWNERDRAWFIXED;

    case FTabPosition of
      tpTop:
      begin
        //Style := Style and (not TCS_VERTICAL) and (not TCS_BOTTOM);
      end;
      tpBottom:
      begin
        Style := Style or TCS_BOTTOM;
      end;
      tpLeft:
      begin
        Style := Style or TCS_VERTICAL;
      end;
      tpRight:
      begin
        Style := Style or TCS_VERTICAL or TCS_RIGHT;
      end;
    end;
  end;
end;

// CreateWnd also must set links to the glyphs

procedure TxpPageControl.CreateWnd;
begin
  inherited CreateWnd;
  if Assigned (FImageList) then SetGlyphs (FImageList);
end;

// if the glyphs should change then update the tabs

procedure TxpPageControl.GlyphsChanged (Sender : TObject);
begin
  if Assigned (FImageList) then UpdateGlyphs;
end;

// multiline property redefined as readonly, this makes it
// disappear from the object inspector

function TxpPageControl.GetMultiline : boolean;
begin
  Result := inherited Multiline
end;

// link the tabs to the glyph list
// nil parameter removes link

procedure TxpPageControl.SetGlyphs (Value : TImageList);
var
  I : Integer;
begin
  FImageList := Value;
  if Assigned(FImageList) then
    begin
      SendMessage (Handle, TCM_SETIMAGELIST, 0, FImageList.Handle);
      For I := 0 to PageCount - 1 do
        (Pages[I] as TxpTabSheet).ImageIndex := I;
      FImageList.OnChange := GlyphsChanged
    end
  else
  begin
    SendMessage (Handle, TCM_SETIMAGELIST, 0, 0);
    For I := 0 to PageCount - 1 do
      (Pages[I] as TxpTabSheet).ImageIndex := -1;
  end;
  UpdateGlyphs;
  SendMessage (Handle, WM_SIZE, 0, 0);
end;


// determine properties whenever the tab styles are changed

procedure TxpPageControl.SetOwnerDraw (AValue : Boolean);
begin
  if FOwnerDraw <> AValue then
  begin
    FOwnerDraw := AValue;
    ReCreateWnd;
    SendMessage (Handle, WM_SIZE, 0, 0);
    if (Self.PageCount > 0) and (ActivePage <> nil) then
      ActivePage.Invalidate;
  end
end;

// update the glyphs linked to the tab

procedure TxpPageControl.UpdateGlyphs;
var
  TCItem : TTCItem;
  Control,
  Loop : integer;
begin
  if FImageList <> nil then
  begin
    for Loop := 0 to pred(PageCount) do
    begin
      TCItem.Mask := TCIF_IMAGE;
      TCItem.iImage := Loop;
      Control := Loop;
      // OnGlyphMap allows the user to reselect the glyph linked to a
      // particular tab
      if Assigned (FOnGlyphMap) then
        FOnGlyphMap (Self, Control, TCItem.iImage);

      if SendMessage (Handle, TCM_SETITEM, Control, longint(@TCItem)) = 0 then;
        //raise EListError.Create ('TxpPageControl error in setting tab glyph')
    end
  end
end;

// called when Owner Draw style is selected:
// retrieve the component style, set up the canvas and
// call the DrawItem method

procedure TxpPageControl.CNDrawItem (var Msg : TWMDrawItem);
var
  State: TOwnerDrawState;
begin
  with Msg.DrawItemStruct^ do
  begin
    //State := TOwnerDrawState (WordRec (LongRec (itemState).Lo).Lo);
    //!!
    FCanvas.Handle := hDC;
    FCanvas.Font := Font;
    FCanvas.Brush := Brush;
    if integer (itemID) >= 0 then
      DrawItem (itemID, rcItem, State)
    else
      FCanvas.FillRect (rcItem);
    FCanvas.Handle := 0
  end;
end;

// default DrawItem method

procedure TxpPageControl.DrawItem (Index: Integer; Rect: TRect; State: TOwnerDrawState);
begin
  if Assigned(FOnDrawItem) then
    FOnDrawItem (Self, Index, FCanvas, Rect, State)
  else begin
    //FCanvas.FillRect (Rect);
    GradientFillRect (FCanvas, Rect, clWhite, RGB (220,220,220), fdVerticalFromCenter, (Rect.Bottom - Rect.Top) div 2);
    FCanvas.Brush.Style := BSCLEAR;
    if odSelected in State then
      FCanvas.TextOut (Rect.Left + 16, Rect.Top + (Rect.Bottom - Rect.Top - FCanvas.TextHeight ('A')) div 2, Tabs[Index])
    else
      FCanvas.TextOut (Rect.Left + 12, Rect.Top + (Rect.Bottom - Rect.Top - FCanvas.TextHeight ('A')) div 2, Tabs[Index])
  end
end;

procedure TxpPageControl.WMAdjasment (var Msg : TMessage);
begin
  inherited;
  {if Msg.WParam = 0 then
  begin
    InflateRect(PRect(Msg.LParam)^, 3, 3);
    Dec(PRect(Msg.LParam)^.Top, 1);
  end;}
end;

procedure TxpPageControl.WMNCPaint (var Message : TWMNCPaint);
begin
  inherited;

end;

procedure TxpPageControl.DrawHotTrackTab (ATabIndex : Integer; AHotTrack : Boolean);
var
  ItemRect    : TRect;
  DrawRect    : TRect;
  StartColor  : TColor;
  EndColor    : TColor;
begin
  if SendMessage (Handle, TCM_GETITEMRECT, ATabIndex, LongInt (@ItemRect)) <> 0 then
  begin
    DrawRect := ItemRect;
    case TabPosition of
      tpTop:    begin
                  DrawRect.Left := ItemRect.Left + 2;
                  DrawRect.Right := ItemRect.Right - 3;
                  DrawRect.Bottom := ItemRect.Top + 1;
                  if AHotTrack then
                  begin
                    StartColor := $2C8BE6;
                    EndColor := $3CC7FF;
                  end
                  else
                  begin
                    StartColor := FBorderColor;
                    EndColor := MakeDarkColor ((Pages[ATabIndex] as TxpTabSheet).Color, 5);
                  end;
                end;
      tpBottom: begin
                  DrawRect.Top := ItemRect.Bottom - 3;
                  DrawRect.Bottom := ItemRect.Bottom - 2;
                  DrawRect.Left := ItemRect.Left + 2;
                  DrawRect.Right := ItemRect.Right - 3;
                  if AHotTrack then
                  begin
                    StartColor := $3CC7FF;
                    EndColor := $2C8BE6;
                  end
                  else
                  begin
                    StartColor := MakeDarkColor ((Pages[ATabIndex] as TxpTabSheet).Color, 20);
                    EndColor := FBorderColor;
                  end;
                end;
      tpLeft:   begin
                  DrawRect.Left := ItemRect.Left;
                  DrawRect.Top := ItemRect.Top+2;
                  DrawRect.Bottom := ItemRect.Bottom - 3;
                  DrawRect.Right := ItemRect.Left+1;
                  if AHotTrack then
                  begin
                    StartColor := $3CC7FF;
                    EndColor := $2C8BE6;
                  end
                  else
                  begin
                    StartColor := FBorderColor;
                    EndColor := MakeDarkColor ((Pages[ATabIndex] as TxpTabSheet).Color, 20);
                  end;
                end;
      tpRight:  begin
                  DrawRect.Left := ItemRect.Right-1;
                  DrawRect.Top := ItemRect.Top+2;
                  DrawRect.Bottom := ItemRect.Bottom - 3;
                  DrawRect.Right := ItemRect.Right;
                  if AHotTrack then
                  begin
                    StartColor := $3CC7FF;
                    EndColor := $2C8BE6;
                  end
                  else
                  begin
                    StartColor := FBorderColor;
                    EndColor := MakeDarkColor ((Pages[ATabIndex] as TxpTabSheet).Color, 20);
                  end;
                end;
    end;
    FCanvas.Handle := GetWindowDC (Handle);

    case TabPosition of
     tpTop, tpBottom:
       begin
         FCanvas.Pen.Color := StartColor;
         FCanvas.MoveTo (DrawRect.Left, DrawRect.Top );
         FCanvas.LineTo (DrawRect.Right, DrawRect.Top );
         FCanvas.Pen.Color := EndColor;
         FCanvas.MoveTo (DrawRect.Left, DrawRect.Bottom);
         FCanvas.LineTo (DrawRect.Right, DrawRect.Bottom);
       end;
     tpLeft,tpRight:
       begin
         FCanvas.Pen.Color := StartColor;
         FCanvas.MoveTo (DrawRect.Left, DrawRect.Top );
         FCanvas.LineTo (DrawRect.Left, DrawRect.Bottom);
         FCanvas.Pen.Color := EndColor;
         FCanvas.MoveTo (DrawRect.Right, DrawRect.Top);
         FCanvas.LineTo (DrawRect.Right, DrawRect.Bottom);
       end;
    end;   
  end;
end;


procedure TxpPageControl.DrawItemInside (AIndex : Integer; ACanvas : TCanvas; ARect : TRect);
var
  dX       : Integer;
  ACaption : String;
  AFormat  : Integer;
  DrawRect : TRect;
begin
  ACanvas.Brush.Style := BSCLEAR;
  ACanvas.Font.Assign (Self.Pages[AIndex].Font);
  If Assigned (FImageList) then dX := FImageList.Width + 6 else dX := 0;

  DrawRect := ARect;
  InflateRect (DrawRect, -2, -2);
  DrawRect.Left := DrawRect.Left + dX;

  ACaption := Self.Pages[AIndex].Caption;

  AFormat := DT_VCENTER or DT_END_ELLIPSIS or DT_SINGLELINE;

  case FTabTextAlignment of
    taLeftJustify: AFormat := AFormat or DT_LEFT;
    taRightJustify: AFormat := AFormat or DT_RIGHT;
    taCenter: AFormat := AFormat or DT_CENTER;
  end;

  ACanvas.Font.Color := MakeDarkColor ( (TxpTabSheet(Self.Pages[AIndex]).Color), 30);
  OffsetRect (DrawRect, 1, 1);
  DrawText (ACanvas.Handle, PChar (ACaption), Length(ACaption), DrawRect, AFormat);

  ACanvas.Font.Color := Self.Pages[AIndex].Font.Color;
  OffsetRect (DrawRect, -1,-1);
  DrawText (ACanvas.Handle, PChar (ACaption), Length(ACaption), DrawRect, AFormat);

  if Assigned (FImageList) then
  begin
    FImageList.Draw (ACanvas, ARect.Left + 3,
                              (ARect.Top + ARect.Bottom - FImageList.Height) div 2,
                              (Self.Pages[AIndex] as TxpTabSheet).ImageIndex);
  end;

end;


//============================================================================//
//===================== Tabs drawing procedures  =============================//
//============================================================================//


  //====================== Draw top tabs =============================//
procedure TxpPageControl.DrawTopTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
var
  AActiveTab : Boolean;
  ATabColor  : TColor;
begin
  Dec (TabRect.Bottom,2);
  AActiveTab := (SendMessage (Handle, TCM_GETCURSEL, 0, 0) = AVisibleIndex);
  ATabColor := (Self.Pages [AIndex] as TxpTabSheet).Color;
  if AActiveTab then
  begin
    Dec (TabRect.Top, 2);
    Dec (TabRect.Left, 2);
    Inc (TabRect.Right, 1);
  end
  else
  begin
    Dec (TabRect.Right);
    Dec (TabRect.Bottom);
    ATabColor := MakeDarkColor (ATabColor, 5);
  end;
  Inc (TabRect.Bottom, 1);

  ACanvas.Brush.Color := ATabColor;
  ACanvas.Pen.Color := FBorderColor;
  ACanvas.Rectangle (TabRect.Left, TabRect.Top + 6, TabRect.Right, TabRect.Bottom);
  ACanvas.RoundRect (TabRect.Left, TabRect.Top, TabRect.Right, TabRect.Bottom - 7, 6, 6);
  ACanvas.FillRect (Rect (TabRect.Left+1, TabRect.Top + 5, TabRect.Right-1, TabRect.Bottom));

  if AActiveTab then
  begin
    ACanvas.Brush.Color := ATabColor;
    ACanvas.Pen.Color := ATabColor;
    ACanvas.Rectangle (TabRect.Left+1, TabRect.Bottom-1, TabRect.Right-1, TabRect.Bottom+2);

    if HotTrack then
    begin
      FCanvas.Pen.Color := $2C8BE6;
      FCanvas.MoveTo (TabRect.Left + 2, TabRect.Top );
      FCanvas.LineTo (TabRect.Right - 2, TabRect.Top );
      FCanvas.Pen.Color := $3CC7FF;
      FCanvas.MoveTo (TabRect.Left + 2, TabRect.Top + 1);
      FCanvas.LineTo (TabRect.Right - 2, TabRect.Top + 1);
    end;
  end
  else
  begin
    //Draw tab vertical right shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Right-2, TabRect.Top+2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-1);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Right-3, TabRect.Top+4);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-2);

    //Draw tab horizontal bottom shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Left+2, TabRect.Bottom-1);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-1);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Left + 3, TabRect.Bottom - 2);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-2);

  end;


  //Draw text and image
  DrawItemInside (AIndex, ACanvas, TabRect);

end;

  //====================== Draw bottom tabs =============================//
procedure TxpPageControl.DrawBottomTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
var
  AActiveTab : Boolean;
  ATabColor  : TColor;
begin
  Dec (TabRect.Bottom,2);
  AActiveTab := (SendMessage (Handle, TCM_GETCURSEL, 0, 0) = AVisibleIndex);
  ATabColor := (Self.Pages [AIndex] as TxpTabSheet).Color;
  if AActiveTab then
  begin
    Inc (TabRect.Bottom, 1);
    Dec (TabRect.Left, 2);
    Inc (TabRect.Right, 1);
  end
  else
  begin
    Dec (TabRect.Right);
    Inc (TabRect.Top);
    ATabColor := MakeDarkColor (ATabColor, 5);
  end;
  Inc (TabRect.Bottom, 1);

  ACanvas.Brush.Color := ATabColor;
  ACanvas.Pen.Color := FBorderColor;
  ACanvas.Rectangle (TabRect.Left, TabRect.Top, TabRect.Right, TabRect.Bottom - 6);
  ACanvas.RoundRect (TabRect.Left, TabRect.Top+6, TabRect.Right, TabRect.Bottom, 6, 6);
  ACanvas.FillRect (Rect (TabRect.Left+1, TabRect.Top+6, TabRect.Right-1, TabRect.Bottom-3));

  if AActiveTab then
  begin
    ACanvas.Brush.Color := ATabColor;
    ACanvas.Pen.Color := ATabColor;
    ACanvas.Rectangle (TabRect.Left+1, TabRect.Top-1, TabRect.Right-1, TabRect.Top+2);

    if HotTrack then
    begin
      FCanvas.Pen.Color := $2C8BE6;
      FCanvas.MoveTo (TabRect.Left + 2, TabRect.Bottom -1);
      FCanvas.LineTo (TabRect.Right - 2, TabRect.Bottom -1);
      FCanvas.Pen.Color := $3CC7FF;
      FCanvas.MoveTo (TabRect.Left + 2, TabRect.Bottom);
      FCanvas.LineTo (TabRect.Right - 2, TabRect.Bottom);
    end;
  end
  else
  begin
    //Draw tab vertical right shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Right-2, TabRect.Top+2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-2);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Right-3, TabRect.Top+4);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-3);

    //Draw tab horizontal bottom shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Left+2, TabRect.Bottom-2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-2);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Left + 3, TabRect.Bottom - 3);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-3);
  end;


  //Draw text and image
  DrawItemInside (AIndex, ACanvas, TabRect);

end;


  //====================== Draw left tabs =============================//
procedure TxpPageControl.DrawLeftTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
var
  AActiveTab : Boolean;
  ATabColor  : TColor;
begin
  Dec (TabRect.Bottom,2);
  AActiveTab := (SendMessage (Handle, TCM_GETCURSEL, 0, 0) = AVisibleIndex);
  ATabColor := (Self.Pages [AIndex] as TxpTabSheet).Color;
  if AActiveTab then
  begin
    Dec (TabRect.Left, 2);
    Dec (TabRect.Top, 1);
    Inc (TabRect.Bottom, 1);
  end
  else
  begin
    Dec (TabRect.Right);
    ATabColor := MakeDarkColor (ATabColor, 5);
  end;
  Inc (TabRect.Bottom, 1);

  ACanvas.Brush.Color := ATabColor;
  ACanvas.Pen.Color := FBorderColor;
  ACanvas.Rectangle (TabRect.Left+6, TabRect.Top, TabRect.Right, TabRect.Bottom);
  ACanvas.RoundRect (TabRect.Left, TabRect.Top, TabRect.Left+8, TabRect.Bottom, 6, 6);
  ACanvas.FillRect (Rect (TabRect.Left+5, TabRect.Top + 1, TabRect.Right-1, TabRect.Bottom-1));

  if AActiveTab then
  begin

    if HotTrack then
    begin
      FCanvas.Pen.Color := $2C8BE6;
      FCanvas.MoveTo (TabRect.Left, TabRect.Top + 2);
      FCanvas.LineTo (TabRect.Left, TabRect.Bottom -2);
      FCanvas.Pen.Color := $3CC7FF;
      FCanvas.MoveTo (TabRect.Left + 1, TabRect.Top + 1);
      FCanvas.LineTo (TabRect.Left + 1, TabRect.Bottom - 1);
    end;
  end
  else
  begin
    //Draw tab vertical right shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Right-2, TabRect.Top+2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-1);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Right-3, TabRect.Top+4);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-2);

    //Draw tab horizontal bottom shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Left+2, TabRect.Bottom-2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-2);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Left + 3, TabRect.Bottom - 3);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-4);
  end;


  //Draw text and image
  DrawItemInside (AIndex, ACanvas, TabRect);

end;


  //====================== Draw right tabs =============================//
procedure TxpPageControl.DrawRightTab (TabRect : TRect; ACanvas : TCanvas; AIndex, AVisibleIndex : Integer);
var
  AActiveTab : Boolean;
  ATabColor  : TColor;
begin
  Dec (TabRect.Bottom,2);
  AActiveTab := (SendMessage (Handle, TCM_GETCURSEL, 0, 0) = AVisibleIndex);
  ATabColor := (Self.Pages [AIndex] as TxpTabSheet).Color;
  if AActiveTab then
  begin
    Inc (TabRect.Right, 2);
    Dec (TabRect.Top, 1);
    Inc (TabRect.Bottom, 1);
  end
  else
  begin
    Inc (TabRect.Left);
    ATabColor := MakeDarkColor (ATabColor, 5);
  end;
  Inc (TabRect.Bottom, 1);

  ACanvas.Brush.Color := ATabColor;
  ACanvas.Pen.Color := FBorderColor;
  ACanvas.Rectangle (TabRect.Left, TabRect.Top, TabRect.Right-6, TabRect.Bottom);
  ACanvas.RoundRect (TabRect.Right-8, TabRect.Top, TabRect.Right, TabRect.Bottom, 6, 6);
  ACanvas.FillRect (Rect (TabRect.Right-8, TabRect.Top + 1, TabRect.Right-3, TabRect.Bottom-1));

  if AActiveTab then
  begin

    if HotTrack then
    begin
      FCanvas.Pen.Color := $2C8BE6;
      FCanvas.MoveTo (TabRect.Right-2, TabRect.Top + 2);
      FCanvas.LineTo (TabRect.Right-2, TabRect.Bottom -2);
      FCanvas.Pen.Color := $3CC7FF;
      FCanvas.MoveTo (TabRect.Right-1, TabRect.Top + 1);
      FCanvas.LineTo (TabRect.Right-1, TabRect.Bottom - 1);
    end;
  end
  else
  begin
    //Draw tab vertical right shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Right-2, TabRect.Top+2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-1);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Right-3, TabRect.Top+4);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-2);

    //Draw tab horizontal bottom shadow line
    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 20);
    ACanvas.Brush.Color := ATabColor;
    ACanvas.MoveTo (TabRect.Left+2, TabRect.Bottom-2);
    ACanvas.LineTo (TabRect.Right-2, TabRect.Bottom-2);

    ACanvas.Pen.Color := MakeDarkColor (ATabColor, 10);
    ACanvas.MoveTo (TabRect.Left + 3, TabRect.Bottom - 3);
    ACanvas.LineTo (TabRect.Right-3, TabRect.Bottom-4);
  end;


  //Draw text and image
  DrawItemInside (AIndex, ACanvas, TabRect);

end;
//============================================================================//
//=================== End tabs drawing procedures  ===========================//
//============================================================================//



procedure TxpPageControl.DrawBorder (ACanvas : TCanvas);
begin
   FCanvas.Brush.Style := BSCLEAR;
   FCanvas.Pen.Color := FBorderColor;

   FCanvas.Rectangle (FBorderRect.Left, FBorderRect.Top, FBorderRect.Right, FBorderRect.Bottom);
end;

procedure TxpPageControl.WMPaint (var Message : TWMPaint);
var
  DC : hDC;
  PS : TPaintStruct;
  ItemRect : TRect;
  I : Integer;
  Index : Integer;
begin
  if FStyle <> pcsXP then
  begin
    inherited;
    Exit;
  end;

  if Message.DC = 0 then DC := BeginPaint(Handle, PS) else DC := Message.DC;
  try
   FCanvas.Handle := DC;

   DrawBorder (FCanvas);

   if Self.PageCount > 0 then
   begin
     Index := 0;
     For I := 0 to Self.PageCount - 1 do
     begin
       if Pages [I].TabVisible then
       begin
         SendMessage (Handle, TCM_GETITEMRECT, Index, LongInt (@ItemRect));
         if (FOwnerDraw) and (Assigned (OnDrawItem)) then
         begin
           OnDrawItem (Self, I, FCanvas, ItemRect, []);
         end
         else
         begin
           Case TabPosition of
             tpTop: DrawTopTab (ItemRect, FCanvas, I, Index);
             tpBottom: DrawBottomTab (ItemRect, FCanvas, I, Index);
             tpLeft: DrawLeftTab (ItemRect, FCanvas, I, Index);
             tpRight: DrawRightTab (ItemRect, FCanvas, I, Index);
           end;
         end;
         Inc (Index);
       end;
     end;
   end;
  finally
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;

procedure TxpPageControl.WMSIZE (var Message : TWMSIZE);
var
  ActivePage : Integer;
begin
  inherited;
  FBorderRect := Self.BoundsRect;
  OffsetRect (FBorderRect, -FBorderRect.Left, -FBorderRect.Top);
  SendMessage (Handle, TCM_ADJUSTRECT, 0, LongInt (@FBorderRect));
  InflateRect (FBorderRect, 1, 1);
  Inc (FBorderRect.Top);
end;

procedure TxpPageControl.WMMouseMove (var Message : TWMMouseMove);
var
  HitTest : TTCHitTestInfo;
  AActiveTab : Integer;
begin
  if FStyle <> pcsXP then
  begin
    inherited;
    Exit;
  end;
  If not HotTrack then exit;

  HitTest.pt := Point (Message.XPos, Message.YPos);
  AActiveTab := SendMessage (Handle, TCM_HITTEST, 0, LongInt (@HitTest));
  if AActiveTab <> FHotTrackTab then
  begin
    if (FHotTrackTab <> SendMessage (Handle, TCM_GETCURSEL, 0, 0)) then
      DrawHotTrackTab (FHotTrackTab, False);

    FHotTrackTab := AActiveTab;

    if (FHotTrackTab <> -1) and (FHotTrackTab <> SendMessage (Handle, TCM_GETCURSEL, 0, 0)) then
      DrawHotTrackTab (FHotTrackTab, True);
  end;
end;


procedure TxpPageControl.MouseLeave (var Message : TMessage);
begin
  If HotTrack and (FHotTrackTab <> -1) and (FHotTrackTab <> SendMessage (Handle, TCM_GETCURSEL, 0, 0)) then
  begin
    DrawHotTrackTab (FHotTrackTab, False);
    FHotTrackTab := -1;
  end;
end;


procedure TxpPageControl.WMNCCalcSize (var Message : TWMNCCalcSize);
begin
  inherited;
end;

procedure TxpPageControl.CMHintShow(var Message: TMessage);
var
  Tab   : TxpTabsheet;
  ItemRect : TRect;
  HitTest : TTCHitTestInfo;
  AActiveTab : Integer;
  AWinActiveTab : Integer;
begin
  inherited;
  if TCMHintShow (Message).Result=1 then exit; // CanShow = false?

  with TCMHintShow(Message).HintInfo^ do
  begin
    if TControl(Self) <> HintControl then exit;

    HitTest.pt := Point (CursorPos.X, CursorPos.Y);
    AWinActiveTab := SendMessage (Handle, TCM_HITTEST, 0, LongInt (@HitTest));
    AActiveTab := WinIndexToPage (AWinActiveTab);
    Tab := nil;
    if (AActiveTab >= 0) and (AActiveTab < Self.PageCount) then
    begin
       Tab := (Self.Pages [AActiveTab] as TxpTabSheet);
       if not (Assigned(Tab) and (Tab.ShowTabHint) and (Tab.TabHint <> '')) then Exit;
    end
    else
      Exit;

     HintStr := GetShortHint(Tab.TabHint);
     SendMessage (Handle, TCM_GETITEMRECT, AWinActiveTab, LongInt (@ItemRect));
     CursorRect := ItemRect;
  end; //with
end;


function TxpPageControl.PageIndexToWin (AIndex : Integer) : Integer;
var
  I : Integer;
begin
  Result := -1;
  if (Self.PageCount <= 0) or (AIndex >= Self.PageCount) then Exit;
  if not Self.Pages[AIndex].TabVisible then Exit;
  For I := 0 to AIndex do
    if Self.Pages[I].TabVisible then Inc (Result);
end;


function TxpPageControl.WinIndexToPage (AIndex : Integer) : Integer;
var
  I : Integer;
begin
  Result := -1;
  if (Self.PageCount <= 0) or (AIndex >= Self.PageCount) then Exit;
  I := 0;
  Result := 0;
  While (I <= AIndex) and (Result < Self.PageCount) do
  begin
    if Self.Pages[Result].TabVisible then Inc (I);
    Inc (Result);
  end;
  Dec (Result);
end;


procedure TxpPageControl.Loaded;
begin
  inherited;
  SendMessage (Handle, WM_SIZE, 0, 0);
end;

procedure TxpPageControl.SetBorderColor (Value : TColor);
begin
  if FBorderColor <> Value then
  begin
    FBorderColor := Value;
    Invalidate;
  end;
end;

procedure TxpPageControl.SetTabPosition (Value : TxpTabPosition);
var
  Style : LongInt;
  OldSize : LongInt;
  Size : LongInt;
begin
  if FTabPosition <> Value then
  begin
    if (FStyle in [pcsButtons, pcsFlatButtons]) and (Value <> tpTop) then
      raise Exception.Create ('Tab position incompatible with current tab style');
    FTabPosition := Value;
    RecreateWnd;
    SendMessage (Handle, WM_SIZE, 0, 0);
    if (Self.PageCount > 0) and (ActivePage <> nil) then
      ActivePage.Invalidate;
  end;
end;

procedure TxpPageControl.SetTabTextAlignment (Value : TAlignment);
begin
  if Value <> FTabTextAlignment then
  begin
    FTabTextAlignment := Value;
    Invalidate;
  end;
end;


procedure TxpPageControl.SetStyle (Value : TxpPageControlStyle);
begin
  if FStyle <> Value then
  begin
    if (Value in [pcsButtons, pcsFlatButtons]) then TabPosition := tpTop;
    FStyle := Value;
    RecreateWnd;
    SendMessage (Handle, WM_SIZE, 0, 0);
    if (Self.PageCount > 0) and (ActivePage <> nil) then
      ActivePage.Invalidate;
  end;
end;

////////////////////////////////////////////////////////////////////////////////


constructor TxpTabSheet.Create(AOwner: TComponent);
begin
  inherited;
  FColor := clWhite;
  FImageIndex := -1;
  FShowTabHint := False;
  FTabHint := '';
  FCanvas := TControlCanvas.Create;
  FBGImage := TBitmap.Create;
  FBGStyle := bgsNone;
  FGradientStartColor := clWhite;
  FGradientEndColor := clSilver;
  FGradientFillDir := fdTopToBottom;
end;

destructor TxpTabSheet.Destroy;
begin
  try FCanvas.Free;
  except
  end;

  try FBGImage.Free;
  except
  end;

  inherited;
end;

procedure TxpTabSheet.SetBGImage (AValue : TBitmap);
begin
  FBGImage.Assign (AValue);
  Invalidate;
  if (FBGImage.Empty) and (FBGStyle in [bgsTileImage, bgsStrechImage]) then
    FBGStyle := bgsNone;
end;

procedure TxpTabSheet.SetBGStyle (AValue : TxpTabBGStyle);
begin
  if FBGStyle <> AValue then
  begin
    FBGStyle := AValue;
    Invalidate;
  end;
end;

procedure TxpTabSheet.SetColor (AValue : TColor);
begin
  if FColor <> AValue then
  begin
    FColor := AValue;
    Invalidate;
    if Assigned (PageControl) then
    try
      PageControl.Invalidate;
    except
    end;
  end;
end;

procedure TxpTabSheet.SetGradientStartColor (AValue : TColor);
begin
  if FGradientStartColor <> AValue then
  begin
    FGradientStartColor := AValue;
    Invalidate;
  end;
end;

procedure TxpTabSheet.SetGradientEndColor (AValue : TColor);
begin
  if FGradientEndColor <> AValue then
  begin
    FGradientEndColor := AValue;
    Invalidate;
  end;
end;

procedure TxpTabSheet.SetGradientFillDir (AValue : TFillDirection);
begin
  if FGradientFillDir <> AValue then
  begin
    FGradientFillDir := AValue;
    Invalidate;
  end;
end;

procedure TxpTabSheet.WMPaint (var Message : TWMPaint);
begin
  Brush.Color := FColor;
  inherited;
end;

procedure TxpTabSheet.WMEraseBkgnd (var Message : TWMEraseBkgnd);
var
  DC : hDC;
  PS : TPaintStruct;
begin
  if Message.DC = 0 then DC := BeginPaint(Handle, PS) else DC := Message.DC;
  try
    FCanvas.Handle := DC;
    Brush.Color := FColor;
    case FBGStyle of
      bgsNone: begin
                 FCanvas.Brush.Color := FColor;
                 FCanvas.FillRect (ClientRect);
               end;
      bgsGradient:
               begin
                 GradientFillRect (FCanvas, ClientRect, FGradientStartColor, FGradientEndColor, FGradientFillDir, 60);
               end;
      bgsTileImage:
               if not FBGImage.Empty then
               begin
                 TileImage(FCanvas, ClientRect, FBGImage);
               end
               else
               begin
                 FCanvas.Brush.Color := FColor;
                 FCanvas.FillRect (ClientRect);
               end;
      bgsStrechImage:
               if not FBGImage.Empty then
               begin
                 FCanvas.StretchDraw (ClientRect, FBGImage);
               end
               else
               begin
                 FCanvas.Brush.Color := FColor;
                 FCanvas.FillRect (ClientRect);
               end;
    end;
  finally
    if Message.DC = 0 then EndPaint(Handle, PS);
  end;
end;



procedure TxpTabSheet.WMNCPaint (var Message : TWMNCPaint);
begin
  Brush.Color := FColor;
  inherited;
end;

procedure TxpTabSheet.SetImageIndex (AIndex : Integer);
var
  Item : TTCItem;
begin
  if AIndex < -1 then AIndex := -1;
  if (FImageIndex <> AIndex) and Assigned (PageControl) then
  begin
    FImageIndex := AIndex;
    Item.iImage := FImageIndex;
    Item.mask := TCIF_IMAGE;
    SendMessage (PageControl.Handle, TCM_SETITEM, PageIndex, LongInt (@Item));
  end;
end;


end.

