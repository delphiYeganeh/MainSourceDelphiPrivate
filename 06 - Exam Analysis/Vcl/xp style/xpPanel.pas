unit xpPanel;

interface

{$I xpDelphi.inc}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, xpGraphUtil, xpReg;

const
  // Rounded corner radius. Must be odd number
  cCornerRadius : Integer = 10;

  //
  clXPStartBGColor : TColor = $FBF1ED;
  clXPEndBGColor : TColor = $F7DFD6;
  clXPTitleStartColor : TColor = $FFFFFF;
  clXPTitleEndColor : TColor = $F0BDAA;

  //Hand System cursor
  crSystemHand : TCursor = 10;

  //WParam for WM_NCPAINT
  wmNCPaintOnlyBorder : LongInt = 666;

  //Title button sizes
  cTitleButtonSize : Integer = 20;
type
  //Background image align type
  TBGImageAlign = (iaCenter, iaStretch, iaTile);

  //Title image align type
  TTitleImageAlign = (tiaCenter, tiaLeft, tiaRight, tiaStretch, tiaTile);

  //Rounded corner type
  TRoundedCorner = (rcTopLeft, rcTopRight, rcBottomLeft, rcBottomRight);
  TRoundedCorners = Set of TRoundedCorner;

  //Title buttons
  TTitleButton = (tbClose, tbMinimize, tbMaximize);
  TTitleButtons = Set of TTitleButton;

  TxpPanel = class;

  //Event types
  TAfterSizeChanged = procedure (Sender : TxpPanel; ASizeRestored : Boolean) of object;

  TxpPanel = class(TCustomPanel)
  private
    FCloseBtnRect : TRect;
    FMaxBtnRect   : TRect;
    FMinBtnRect   : TRect;
    FOldBounds    : TRect;
    FOldAlign     : TAlign;
    FOldMinimize  : Boolean;
    FMinimizing   : Boolean;

    FGradientFill : Boolean;
    FStartColor   : TColor;
    FEndColor     : TColor;
    FFillDirection: TFillDirection;
    FShadow       : Boolean;
    FShadowDist   : Integer;
    FHeight       : Integer;

    FDefaultHeight : Integer;
    FShowHeader : Boolean;
    FCaption    : String;
    FTitle      : String;
    FTitleFont  : TFont;
    FTitleHeight: Integer;
    FTitleAlignment : TAlignment;
    FTitleShadowOnMouseEnter : Boolean;
    FTitleGradient : Boolean;
    FTitleStartColor : TColor;
    FTitleEndColor : TColor;
    FTitleColor : TColor;
    FTitleFillDirect : TFillDirection;
    FTitleImage : TBitmap;
    FTitleImageAlign : TTitleImageAlign;
    FTitleImageTransparent : Boolean;
    FTitleCursor : TCursor;
    FTitleButtons : TTitleButtons;
    FAnimation : Boolean;

    FMovable : Boolean;
    FSizable : Boolean;

    FMinimized : Boolean;
    FMaximized : Boolean;

    FBorderSize : Integer;
    FBorderColor: TColor;
    FShowBorder : Boolean;
    FRoundedCorner : TRoundedCorners;

    FBGImage : TBitmap;
    FBGImageAlign : TBGImageAlign;
    FBGImageTransparent : Boolean;

    FMouseOnHeader : Boolean;

    FOnTitleClick : TNotifyEvent;
    FOnTitleDblClick : TNotifyEvent;
    FOnTitleMouseDown : TMouseEvent;
    FOnTitleMouseUp : TMouseEvent;
    FOnTitleMouseEnter: TNotifyEvent;
    FOnTitleMouseExit : TNotifyEvent;
    FOnMouseEnter     : TNotifyEvent;
    FOnMouseExit      : TNotifyEvent;
    FAfterMinimized   : TAfterSizeChanged;
    FAfterMaximized   : TAfterSizeChanged;
    FBeforeMoving     : TNotifyEvent;
    FAfterMoving      : TNotifyEvent;
    FAfterClose       : TNotifyEvent;

    procedure SetGradientFill (AValue : Boolean);
    procedure SetStartColor (AColor : TColor);
    procedure SetEndColor (AColor : TColor);
    procedure SetFillDirection (AFillDirection : TFillDirection);
    procedure SetShadow (AValue : Boolean);
    procedure SetShadowDist (AValue : Integer);

    procedure SetShowHeader (AValue : Boolean);
    procedure SetCaption (ACaption : String);
    procedure SetTitle (ATitle : String);
    procedure SetTitleFont (AFont : TFont);
    procedure OnTitleFontChange (Sender : TObject);
    procedure SetDefaultHeight (AValue : Integer);

    procedure SetTitleHeight (AHeight : Integer);
    procedure SetTitleAlignment (AValue : TAlignment);
    procedure SetShadowTitleOnMouseEnter (AShadow : Boolean);
    procedure SetTitleGradient (AValue : Boolean);
    procedure SetTitleStartColor (AValue : TColor);
    procedure SetTitleEndColor (AValue : TColor);
    procedure SetTitleFillDirect (AValue : TFillDirection);
    procedure SetTitleColor (AValue : TColor);
    procedure SetTitleImage (AValue : TBitmap);
    procedure SetTitleCursor (AValue : TCursor);
    procedure SetTitleImageAlign (AValue : TTitleImageAlign);
    procedure SetTitleImageTransparent (AValue : Boolean);
    procedure SetTitleButtons (AValue : TTitleButtons);

    procedure SetAnimation (AValue : Boolean);
    procedure SetBorderSize (AValue : Integer);
    procedure SetBorderColor (AValue : TColor);
    procedure SetShowBorder (AValue : Boolean);
    procedure SetRoundedCorner (AValue : TRoundedCorners);

    procedure SetMovable (AValue : Boolean);
    procedure SetSIzable (AValue : Boolean);
    procedure SetMinimized (AValue : Boolean);
    procedure SetMaximized (AValue : Boolean);

    procedure SetBGImage (AImage : TBitmap);
    procedure SetBGImageAlign (AImageAlign : TBGImageAlign);
    procedure SetBGImageTransparent (ATrans : Boolean);
  protected
    procedure DrawTitle (ACanvas : TCanvas; ATitleRect : TRect);
    procedure DrawAllTitleButtons (ACanvas : TCanvas; ATitleRect : TRect);
    procedure DrawTitleButton (ACanvas : TCanvas; AButtonRect : TRect; ABtnType : TTitleButton);
    procedure DrawBorder (ACanvas : TCanvas; ARect : TRect; AClient : Boolean); //AClient = true - draw client area border only
    procedure DrawBGImage (ACanvas : TCanvas);
    procedure ForceReDraw;
    procedure Loaded; override;
    procedure SetShape (ARounded : TRoundedCorners);

    procedure WMSize (var Message : TMessage); message WM_SIZE;

    procedure MouseEnter (var Message : TMessage); message CM_MOUSEENTER;
    procedure MouseLeave (var Message : TMessage); message CM_MOUSELEAVE;
    procedure NCHitTest (var Message : TWMNCHitTest); message WM_NCHITTEST;
    procedure NCMouseDown (var Message : TWMNCLBUTTONDOWN); message WM_NCLBUTTONDOWN;
    procedure NCMouseUp (var Message : TWMNCLBUTTONUP); message WM_NCLBUTTONUP;
    procedure NCMouseDblClick (var Message : TWMNCLButtonDblClk); message WM_NCLBUTTONDBLCLK;

    procedure WMNCPaint (var Message : TWMNCPaint); message WM_NCPAINT;
    procedure WMNCCalcSize (var Message : TWMNCCalcSize); message WM_NCCALCSIZE;
    procedure WMNCACTIVATE (var Message : TWMNCActivate); message WM_NCACTIVATE;
    procedure Paint; override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
  published
    { Published declarations }
    property GradientFill : Boolean read FGradientFill write SetGradientFill default True;
    property StartColor : TColor read FStartColor write SetStartColor;
    property EndColor : TColor read FEndColor write SetEndColor;
    property FillDirection : TFillDirection read FFillDirection write SetFillDirection;
    property TitleShow : Boolean read FShowHeader write SetShowHeader default True;
    property Caption : String read FCaption write SetCaption;
    //property Shadow : Boolean read FShadow write SetShadow default true;
    //property ShadowDist : Integer read FShadowDist write SetShadowDist default 5;

    property Minimized : Boolean read FMinimized write SetMinimized default False;
    property Maximized : Boolean read FMaximized write SetMaximized default False;
    property Title : String read FTitle write SetTitle;
    property TitleFont : TFont read FTitleFont write SetTitleFont;
    property TitleHeight : Integer read FTitleHeight write SetTitleHeight default  30;
    property TitleAlignment : TAlignment read FTitleAlignment write SetTitleAlignment;
    property TitleShadowOnMoseEnter : Boolean read FTitleShadowOnMouseEnter write SetShadowTitleOnMouseEnter default True;
    property TitleGradient : Boolean read FTitleGradient write SetTitleGradient default True;
    property TitleStartColor : TColor read FTitleStartColor write SetTitleStartColor;
    property TitleEndColor : TColor read FTitleEndColor write SetTitleEndColor;
    property TitleColor : TColor read FTitleColor write SetTitleColor;
    //property TitleCursor : TCursor read FTitleCursor write SetTitleCursor;
    property TitleImage : TBitmap read FTitleImage write SetTitleImage;
    property TitleFillDirect : TFillDirection read FTitleFillDirect write SetTitleFillDirect;
    property TitleImageAlign : TTitleImageAlign read FTitleImageAlign write SetTitleImageAlign;
    property TitleImageTransparent : Boolean read FTitleImageTransparent write SetTitleImageTransparent default True;
    property TitleButtons : TTitleButtons read FTitleButtons write SetTitleButtons;

    //property BorderSize  : Integer read FBorderSize write SetBorderSize default 1;
    property Animation : Boolean read FAnimation write SetAnimation default True;
    property DefaultHeight : Integer read FDefaultHeight write SetDefaultHeight;
    property Movable : Boolean read FMovable write SetMovable default False;
    property Sizable : Boolean read FSizable write SetSizable default False;
    property ShowBorder  : Boolean read FShowBorder write SetShowBorder default True;
    property BorderColor : TColor read FBorderColor write SetBorderColor;
    property RoundedCorner : TRoundedCorners read FRoundedCorner write SetRoundedCorner default [rcTopLeft, rcTopRight];
    property BGImage : TBitmap read FBGImage write SetBGImage;
    property BGImageAlign : TBGImageAlign read FBGImageAlign write SetBGImageAlign;
    property BGImageTransparent : Boolean read FBGImageTransparent write SetBGImageTransparent default True;
    property Color;
    property Align;
    property Visible;
    property TabOrder;
    property TabStop;
    property DragMode;

    //Events
    property OnResize;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property OnEnter;
    property OnExit;
    //
    property AfterMinimized : TAfterSizeChanged read FAfterMinimized write FAfterMinimized;
    property AfterMaximized : TAfterSizeChanged read FAfterMaximized write FAfterMaximized;
    property BeforeMove     : TNotifyEvent read FBeforeMoving write FBeforeMoving;
    property AfterMove      : TNotifyEvent read FAfterMoving write FAfterMoving;
    property AfterClose : TNotifyEvent read FAfterClose write FAfterClose;
    property OnTitleClick : TNotifyEvent read FOnTitleClick write FOnTitleClick;
    property OnTitleDblClick : TNotifyEvent read FOnTitleDblClick write FOnTitleDblClick;
    property OnTitleMouseDown : TMouseEvent read FOnTitleMouseDown write FOnTitleMouseDown;
    property OnTitleMouseUp : TMouseEvent read FOnTitleMouseUp write FOnTitleMouseUp;
    property OnTitleMouseEnter: TNotifyEvent read FOnTitleMouseEnter write FOnTitleMouseEnter;
    property OnTitleMouseExit : TNotifyEvent read FOnTitleMouseExit write FOnTitleMouseExit;
    property OnMouseEnter : TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseExit : TNotifyEvent read FOnMouseExit write FOnMouseExit;
    //
  end;

procedure Register;

implementation

constructor TxpPanel.Create(AOwner: TComponent);
begin
  inherited Create (AOwner);

  FGradientFill := true;
  FStartColor := clXPStartBGColor;
  FEndColor := clXPEndBGColor;
  FFillDirection := fdLeftToRight;
  FShadow := true;
  FShadowDist := 5;

  Width := 180;
  Height := 60;

  FShowHeader := True;
  FCaption := 'xpPanel';
  FDefaultHeight := 60;

  FTitle := 'xpPanelTitle';
  FTitleHeight := 30;
  FTitleAlignment := taCenter;
  FTitleShadowOnMouseEnter := true;
  FTitleGradient := true;
  FTitleStartColor := clXPTitleStartColor;
  FTitleEndColor := clXPTitleEndColor;
  FTitleColor := clWhite;
  FTitleFillDirect := fdLeftToRight;

  FTitleImage := TBitmap.Create;
  FTitleCursor := crSystemHand;
  FTitleImageTransparent := true;
  FTitleImageAlign := tiaLeft;

  FTitleFont := TFont.Create;
  FTitleFont.Style := [fsBold];
  FTitleFont.Color := clNavy;
  FTitleFont.OnChange := OnTitleFontChange;
  TitleButtons := [tbMinimize];

  FMouseOnHeader := False;

  FBorderSize := 1;
  FShowBorder := True;
  FBorderColor := clWhite;
  FRoundedCorner := [rcTopLeft, rcTopRight];

  FBGImage := TBitmap.Create;
  FBGImageAlign := iaStretch;
  FBGImageTransparent := true;

  FOnTitleClick := nil;
  FOnTitleDblClick := nil;
  FOnTitleMouseDown := nil;
  FOnTitleMouseUp := nil;
  FOnTitleMouseEnter := nil;
  FOnTitleMouseExit := nil;
  FOnMouseEnter := nil;
  FOnMouseExit := nil;

  FAfterMinimized   := nil;
  FAfterMaximized   := nil;
  FBeforeMoving     := nil;
  FAfterMoving      := nil;
  FAfterClose       := nil;

  BorderStyle := bsNone;

  FMovable := False;
  FSizable := False;
  FMinimized := False;
  FAnimation := True;

  FMinimizing := False;
  //FullRepaint := False;
end;

destructor  TxpPanel.Destroy;
begin
  try FTitleFont.Free; except end;
  try FBGImage.Free; except end;
  try FTitleImage.Free; except end;
  inherited;
end;

procedure TxpPanel.DrawTitle (ACanvas : TCanvas; ATitleRect : TRect);
var
  X, Y : Integer;
  AGrayImage : TBitmap;
  ATextFormat : Integer;
  ATextRect : TRect;
  ABtnOffset : Integer;
begin
  if FTitleGradient then
    GradientFillRect (ACanvas, ATitleRect, FTitleStartColor, FTitleEndColor, FTitleFillDirect, 50)
  else
  begin
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := FTitleColor;
    ACanvas.FillRect (ATitleRect);
  end;

  ATextRect := ATitleRect;

  InflateRect (ATextRect, -2, -2);

  ABtnOffset := ATextRect.Right;

  if tbMinimize in FTitleButtons then ABtnOffset := FMinBtnRect.Left - 4 else
    if tbMaximize in FTitleButtons then ABtnOffset := FMaxBtnRect.Left - 4 else
      if tbClose in FTitleButtons then ABtnOffset := FCloseBtnRect.Left - 4;

  if not FTitleImage.Empty then
  begin
    FTitleImage.TransparentMode := tmAuto;
    FTitleImage.Transparent := False;

    if (FTitleImageAlign in [tiaLeft, tiaRight, tiaCenter]) then
    begin
      case FTitleImageAlign of
        tiaLeft:
        begin
          X := 2;
          Y := (ATitleRect.Bottom + ATitleRect.Top - FTitleImage.Height) div 2;
          ATextRect.Left := ATextRect.Left + FTitleImage.Width + 8;
        end;
        tiaRight:
        begin
          X := ABtnOffset - FTitleImage.Width;
          Y := (ATitleRect.Bottom + ATitleRect.Top - FTitleImage.Height) div 2;
          ABtnOffset := X - 4;
        end;
        tiaCenter:
        begin
          X := (ATitleRect.Right + ATitleRect.Left - FTitleImage.Width) div 2;
          Y := (ATitleRect.Bottom + ATitleRect.Top - FTitleImage.Height) div 2;
        end;
      end;
      //Image Shadow
      if FMouseOnHeader then
      begin
        AGrayImage := TBitmap.Create;
        try
          AGrayImage.Assign (FTitleImage);
          AGrayImage.TransparentMode := tmAuto;
          AGrayImage.Transparent := true;
          ConvertBitmapToGrayscale (AGrayImage);
          if FTitleImageTransparent then
            DrawBitmapTransparent (ACanvas, X, Y, AGrayImage, AGrayImage.Canvas.Pixels [0,0])
          else
            ACanvas.Draw (X, Y, AGrayImage);
        finally
          AGrayImage.Free;
        end;
      end;
      //Image
      if FTitleImageTransparent then
        DrawBitmapTransparent (ACanvas, X - Integer (FMouseOnHeader), Y - Integer (FMouseOnHeader),
          FTitleImage, FTitleImage.Canvas.Pixels [0,0])
      else
        ACanvas.Draw (X - Integer (FMouseOnHeader),  Y - Integer (FMouseOnHeader), FTitleImage);
    end
    else
    begin
      FTitleImage.TransparentMode := tmAuto;
      FTitleImage.Transparent := FTitleImageTransparent;
      case FTitleImageAlign of
        tiaStretch:
          ACanvas.StretchDraw (ATitleRect, FTitleImage);
        tiaTile:
          TileImage (ACanvas, ATitleRect, FTitleImage);
      end;
    end;

  end;

  if FTitle <> '' then
  begin
    ATextRect.Right := ABtnOffset;

    ATextFormat := DT_VCENTER or DT_END_ELLIPSIS or DT_SINGLELINE;
    ACanvas.Font.Assign (FTitleFont);
    case FTitleAlignment of
      taLeftJustify: ATextFormat := ATextFormat or DT_LEFT;
      taRightJustify: ATextFormat := ATextFormat or DT_RIGHT;
      taCenter: ATextFormat := ATextFormat or DT_CENTER;
    end;
    ACanvas.Brush.Style := bsClear;

    //Shadow
    ACanvas.Font.Color := clLtGray;
    DrawText (ACanvas.Handle, PChar (FTitle), Length(FTitle), ATextRect, ATextFormat);

    //Text
    ACanvas.Font.Assign (FTitleFont);
    OffsetRect (ATextRect, -1, -1);
    if FMouseOnHeader then OffsetRect (ATextRect, -1, -1);
    DrawText (ACanvas.Handle, PChar (FTitle), Length(FTitle), ATextRect, ATextFormat);
  end;
end;


procedure TxpPanel.DrawAllTitleButtons (ACanvas : TCanvas; ATitleRect : TRect);
const
  XOffset : Integer = 22;
var
  AButtonRect : TRect;
begin
  if FTitleButtons = [] then Exit;

  AButtonRect.Left := ATitleRect.Right - cTitleButtonSize - 5 + XOffset;
  AButtonRect.Right := ATitleRect.Right - 5 + XOffset;
  AButtonRect.Top := (ATitleRect.Bottom + ATitleRect.Top) div 2 - (cTitleButtonSize div 2)+1;
  AButtonRect.Bottom := (ATitleRect.Bottom + ATitleRect.Top) div 2 + (cTitleButtonSize div 2);

  if tbClose in FTitleButtons then
  begin
    AButtonRect.Left := AButtonRect.Left - XOffset;
    AButtonRect.Right := AButtonRect.Right- XOffset;
    FCloseBtnRect := AButtonRect;
    DrawTitleButton (ACanvas, AButtonRect, tbClose);
  end;

  if tbMaximize in FTitleButtons then
  begin
    AButtonRect.Left := AButtonRect.Left - XOffset;
    AButtonRect.Right := AButtonRect.Right- XOffset;
    FMaxBtnRect := AButtonRect;
    DrawTitleButton (ACanvas, AButtonRect, tbMaximize);
  end;

  if tbMinimize in FTitleButtons then
  begin
    AButtonRect.Left := AButtonRect.Left - XOffset;
    AButtonRect.Right := AButtonRect.Right- XOffset;
    FMinBtnRect := AButtonRect;
    DrawTitleButton (ACanvas, AButtonRect, tbMinimize);
  end;
end;

procedure TxpPanel.DrawTitleButton (ACanvas : TCanvas; AButtonRect : TRect; ABtnType : TTitleButton);
var
  XCenter, YCenter, Radius : Integer;
begin
  //ACanvas.Pen.Color := $D9B6AD;

  ACanvas.Pen.Color := MakeDarkColor (ACanvas.Pixels [AButtonRect.Right, AButtonRect.Bottom], 10);
  ACanvas.Pen.Width := 1;
  ACanvas.Brush.Color := MakeDarkColor (ACanvas.Pixels [AButtonRect.Right, AButtonRect.Bottom], 10);
  ACanvas.Ellipse (AButtonRect.Left-1, AButtonRect.Top-1, AButtonRect.Right+2, AButtonRect.Bottom+2);

  if FTitleGradient then
    ACanvas.Pen.Color := MakeDarkColor (FTitleEndColor, 30)
  else
    ACanvas.Pen.Color := MakeDarkColor (FTitleColor, 30);
  ACanvas.Pen.Width := 1;
  ACanvas.Brush.Color := clWhite;
  ACanvas.Ellipse (AButtonRect.Left, AButtonRect.Top, AButtonRect.Right, AButtonRect.Bottom);

  ACanvas.Pen.Color := MakeDarkColor (clWhite, 20);
  ACanvas.Pen.Width := 1;


  ACanvas.Brush.Color := clWhite;

  ACanvas.Ellipse (AButtonRect.Left+1, AButtonRect.Top+1, AButtonRect.Right-1, AButtonRect.Bottom-1);

  XCenter := (AButtonRect.Right + AButtonRect.Left) div 2;
  YCenter := (AButtonRect.Bottom + AButtonRect.Top) div 2;

  if XCenter < YCenter then
    Radius := (XCenter - AButtonRect.Left)-4
  else
    Radius := (YCenter - AButtonRect.Top)-4;

  ACanvas.Pen.Width := 2;
  if FMouseOnHeader and FShowHeader then
    ACanvas.Pen.Color := $FF5C33
  else
    ACanvas.Pen.Color := $A53C00;

  case ABtnType of
    tbClose:
      begin
          ACanvas.Polyline ([Point (XCenter - Radius + 2, YCenter - Radius + 2),
                       Point (XCenter + Radius - 2, YCenter + Radius - 2)    ]);

          ACanvas.Polyline ([Point (XCenter + Radius - 2, YCenter - Radius + 2),
                       Point (XCenter - Radius + 2, YCenter + Radius - 2)    ]);
      end;
    tbMaximize:
      begin
        ACanvas.Pen.Width := 1;
        if FMaximized then
        begin
          ACanvas.Rectangle (XCenter - Radius + 1, YCenter - Radius + 1,
                             XCenter + Radius-1, YCenter + Radius-2);
          ACanvas.Rectangle (XCenter - Radius + 3, YCenter - Radius + 3,
                             XCenter + Radius+1, YCenter + Radius);
        end
        else
        begin
          ACanvas.Rectangle (XCenter - Radius + 1, YCenter - Radius + 1,
                             XCenter + Radius, YCenter + Radius);
          ACanvas.Rectangle (XCenter - Radius + 1, YCenter - Radius + 2,
                             XCenter + Radius, YCenter + Radius);
        end;
      end;
    tbMinimize:
      begin
        if FMinimized then
        begin
          //Drawing down arrows
          ACanvas.Polyline ([Point (XCenter - Radius + 2, YCenter - Radius + 1),
                       Point (XCenter, YCenter-1),
                       Point (XCenter + Radius - 2, YCenter - Radius + 1)    ]);

          ACanvas.Polyline ([Point (XCenter - Radius + 2, YCenter+1),
                       Point (XCenter, YCenter + Radius - 1),
                       Point (XCenter + Radius - 2, YCenter+1)    ]);
        end
        else
        begin
          //Drawing up arrows
          ACanvas.Polyline ([Point (XCenter - Radius + 2, YCenter - 1),
                       Point (XCenter, YCenter - Radius + 1),
                       Point (XCenter + Radius - 2, YCenter - 1)    ]);

          ACanvas.Polyline ([Point (XCenter - Radius + 2, YCenter + Radius - 1),
                       Point (XCenter, YCenter+1),
                       Point (XCenter + Radius - 2, YCenter + Radius - 1)    ]);
        end;
    end;     
  end;
end;




procedure TxpPanel.DrawBorder (ACanvas : TCanvas; ARect : TRect; AClient : Boolean);
var
  ARoundedCorner : TRoundedCorners;
begin
  ACanvas.Brush.Style := BSCLEAR;
  ACanvas.Pen.Color := FBorderColor;
  ACanvas.Pen.Width := FBorderSize;

  ACanvas.Rectangle (ARect.Left, ARect.Top, ARect.Right, ARect.Bottom);

  if FRoundedCorner = [] then Exit;

  ARoundedCorner := FRoundedCorner;

  if AClient then
    ARoundedCorner := ARoundedCorner - [rcTopLeft, rcTopRight];

  if (rcTopLeft in ARoundedCorner) and (rcTopRight in ARoundedCorner) and
      (rcBottomLeft in ARoundedCorner) and (rcBottomRight in ARoundedCorner) then
  begin
    ACanvas.RoundRect (ARect.Left, ARect.Top, ARect.Right, ARect.Bottom, cCornerRadius, cCornerRadius);
    ARoundedCorner := [];
  end
  else
  if (rcTopLeft in ARoundedCorner) and (rcTopRight in ARoundedCorner) then
  begin
    ACanvas.RoundRect (ARect.Left, ARect.Top, ARect.Right, ARect.Bottom + cCornerRadius*2, cCornerRadius, cCornerRadius);
    ARoundedCorner := ARoundedCorner - [rcTopLeft, rcTopRight];
  end
  else
  if (rcBottomLeft in ARoundedCorner) and (rcBottomRight in ARoundedCorner) then
  begin
    ACanvas.RoundRect (ARect.Left, ARect.Top - cCornerRadius*2, ARect.Right, ARect.Bottom, cCornerRadius, cCornerRadius);
    ARoundedCorner := ARoundedCorner - [rcBottomLeft, rcBottomRight];
  end
  else
  if (rcTopLeft in ARoundedCorner) and (rcBottomLeft in ARoundedCorner) then
  begin
    ACanvas.RoundRect (ARect.Left, ARect.Top, ARect.Right + cCornerRadius*2, ARect.Bottom, cCornerRadius, cCornerRadius);
    ARoundedCorner := ARoundedCorner - [rcTopLeft, rcBottomLeft];
  end
  else
  if (rcTopRight in ARoundedCorner) and (rcBottomRight in ARoundedCorner) then
  begin
    ACanvas.RoundRect (ARect.Left - cCornerRadius*2, ARect.Top, ARect.Right, ARect.Bottom, cCornerRadius, cCornerRadius);
    ARoundedCorner := ARoundedCorner - [rcTopRight, rcBottomRight];
  end;

  if ARoundedCorner = [] then Exit;

  if (rcTopLeft in ARoundedCorner) then
    ACanvas.RoundRect (ARect.Left, ARect.Top, ARect.Right + cCornerRadius*2, ARect.Bottom + cCornerRadius*2, cCornerRadius, cCornerRadius);
  if (rcTopRight in ARoundedCorner) then
    ACanvas.RoundRect (ARect.Left - cCornerRadius*2, ARect.Top, ARect.Right, ARect.Bottom + cCornerRadius*2, cCornerRadius, cCornerRadius);
  if (rcBottomLeft in ARoundedCorner) then
    ACanvas.RoundRect (ARect.Left, ARect.Top - cCornerRadius*2, ARect.Right + cCornerRadius*2, ARect.Bottom, cCornerRadius, cCornerRadius);
  if (rcBottomRight in ARoundedCorner) then
    ACanvas.RoundRect (ARect.Left - cCornerRadius*2, ARect.Top - cCornerRadius*2, ARect.Right, ARect.Bottom, cCornerRadius, cCornerRadius);



end;

procedure TxpPanel.DrawBGImage (ACanvas : TCanvas);
begin
  FBGImage.TransparentMode := tmAuto;
  FBGImage.Transparent := FBGImageTransparent;
  case FBGImageAlign of
    iaStretch:
      begin
        ACanvas.StretchDraw (ClientRect, FBGImage);
      end;
    iaCenter:
      begin
        ACanvas.Draw (
          (ClientWidth - FBGImage.Width) div 2,
          (ClientHeight - FBGImage.Height) div 2,
          FBGImage);
      end;
    iaTile:
      begin
        TileImage (ACanvas, ClientRect, FBGImage);
      end;
  end;
end;


//Draw client area

procedure TxpPanel.Paint;
var
  TempCanvas : TBitmap;
  WinRect : TRect;
begin
  TempCanvas := TBitmap.Create;
  try
    TempCanvas.Width := ClientWidth;
    TempCanvas.Height := ClientHeight;
    if FGradientFill then
    begin
      GradientFillRect (TempCanvas.Canvas, ClientRect, FStartColor, FEndColor, FFillDirection, 60);
    end
    else
    Begin
      TempCanvas.Canvas.Brush.Style := bsSolid;
      TempCanvas.Canvas.Brush.Color := Color;
      TempCanvas.Canvas.FillRect (ClientRect);
    end;

    if not FBGImage.Empty then DrawBGImage (TempCanvas.Canvas);

    BitBlt(Canvas.Handle, 0, 0, TempCanvas.Width, TempCanvas.Height,
      TempCanvas.Canvas.Handle, 0, 0, SRCCOPY);

    if FShowBorder then
    begin
      SendMessage (Handle, WM_NCPAINT, wmNCPaintOnlyBorder, 0);
      //SendMessage (Handle, WM_NCPAINT, 0, 0);
    end;

  finally
    TempCanvas.Free;
  end;
end;

//Calculate nonclient area
procedure TxpPanel.WMNCCalcSize (var Message : TWMNCCalcSize);
begin
  if FShowBorder then
  begin
    InflateRect (Message.CalcSize_Params^.rgrc[0], -FBorderSize, -FBorderSize);
    if FShowHeader then
      Inc (Message.CalcSize_Params^.rgrc[0].Top, FTitleHeight);
  end
  else
  begin
    if FShowHeader then
      Inc (Message.CalcSize_Params^.rgrc[0].Top, FTitleHeight+1);
  end;

  inherited;
end;

procedure TxpPanel.WMNCACTIVATE (var Message : TWMNCActivate);
begin
  inherited;
end;


procedure TxpPanel.NCHitTest (var Message : TWMNCHitTest);
var
  WinRect : TRect;
  ClientPoint : TPoint;
  PanelPoint : TPoint;
  ABottom : Integer;
  ATitleHeight : Integer;
  ABorderSize : Integer;
begin
  inherited;
  Message.Result := HTCLIENT;

  GetWindowRect (Handle, WinRect);
  ABottom := WinRect.Bottom;

  if FShowHeader then ATitleHeight := FTitleHeight else ATitleHeight := 0;

  if FShowBorder then
  begin
    ABorderSize := FBorderSize;
    if ABorderSize < 5 then ABorderSize := 5;
  end
  else
    ABorderSize := 0;


  WinRect.Bottom := WinRect.Top + ATitleHeight;

  ClientPoint := Point (Message.XPos, Message.YPos);

  PanelPoint := ScreenToClient (ClientPoint);

  if PtInRect (WinRect, Point (Message.XPos, Message.YPos)) then
    Message.Result := HTOBJECT;

  if FTitleShadowOnMouseEnter then
  begin
    if (not FMouseOnHeader) and ((PtInRect (WinRect, Point (Message.XPos, Message.YPos)))) then
    begin
      FMouseOnHeader := true;
      SendMessage (Handle, WM_NCPAINT, 0, 0);

      if Assigned (FOnTitleMouseEnter) then FOnTitleMouseEnter (self);
    end
    else
    if (not ((PtInRect (WinRect, Point (Message.XPos, Message.YPos))))) and (FMouseOnHeader) then
    begin
      FMouseOnHeader := False;
      SendMessage (Handle, WM_NCPAINT, 0, 0);
      if Assigned (FOnTitleMouseExit) then FOnTitleMouseExit (self);
    end;
  end;

  Inc (PanelPoint.y, FTitleHeight);

  if tbClose in FTitleButtons then
  begin
    if PtInRect (FCloseBtnRect, PanelPoint) then
      Message.Result := HTCLOSE;
  end;

  if tbMaximize in FTitleButtons then
  begin
    if PtInRect (FMaxBtnRect, PanelPoint) then
      Message.Result := HTMAXBUTTON;
  end;

  if tbMinimize in FTitleButtons then
  begin
    if PtInRect (FMinBtnRect, PanelPoint) then
      Message.Result := HTMINBUTTON;
  end;

  if (csDesigning in ComponentState) then Exit;

  WinRect.Bottom := ABottom;
  if FSizable and not FMinimized and not Maximized then
  begin
    if PtInRect (Rect (WinRect.Left, WinRect.Top, WinRect.Left + ABorderSize+5, WinRect.Top + ABorderSize + 5), ClientPoint) then
      Message.Result := HTTOPLEFT
    else
    //Check mouse on TopRight border
    if PtInRect (Rect (WinRect.Right - 5, WinRect.Top, WinRect.Right+1, WinRect.Top + 5), ClientPoint) then
      Message.Result := HTTOPRIGHT
    //Check mouse on BottomLeft border
    else
    if PtInRect (Rect (WinRect.Left, WinRect.Bottom - ABorderSize-5, WinRect.Left+5, WinRect.Bottom), ClientPoint) then
      Message.Result := HTBOTTOMLEFT
    //Check mouse on BottomRight border
    else
    if PtInRect (Rect (WinRect.Right-5, WinRect.Bottom - ABorderSize-5, WinRect.Right, WinRect.Bottom), ClientPoint) then
      Message.Result := HTBOTTOMRIGHT
    else
    //Check mouse on Left border
    if PtInRect (Rect (WinRect.Left, WinRect.Top + 5, WinRect.Left + ABorderSize, WinRect.Right - ABorderSize), ClientPoint) then
      Message.Result := HTLEFT
    else
    //Check mouse on Right border
    if PtInRect (Rect (WinRect.Right - ABorderSize, WinRect.Top + 5, WinRect.Right+1, WinRect.Bottom - 5), ClientPoint) then
      Message.Result := HTRIGHT
    else
    //Check mouse on Top border
    if PtInRect (Rect (WinRect.Left+5, WinRect.Top, WinRect.Right-5, WinRect.Top + ABorderSize), ClientPoint) then
      Message.Result := HTTOP
    //Check mouse on Bottom border
    else
    if PtInRect (Rect (WinRect.Left+5, WinRect.Bottom - ABorderSize, WinRect.Right-5, WinRect.Bottom), ClientPoint) then
      Message.Result := HTBOTTOM;
  end;


  if FMovable and PtInRect (WinRect, ClientPoint) and
     not (Message.Result in [HTCLOSE, HTMINBUTTON, HTMAXBUTTON]) then
  begin
    WinRect.Bottom := WinRect.Top + ATitleHeight;
    InflateRect (WinRect, -ABorderSize, -ABorderSize);
    if PtInRect (WinRect, ClientPoint) then Message.Result := HTCAPTION;
  end;

end;


//Draw nonclient area
procedure TxpPanel.WMNCPaint(var Message : TWMNCPaint);
var
  UpdateRect : TRect;
  HeaderRect : TRect;
  DC : hDC;
  NCCanvas : TCanvas;
  TempCanvas : TBitmap;
begin
  DC := GetWindowDC (Handle);
  NCCanvas := TCanvas.Create;
  try
    NCCanvas.Handle := DC;
    GetWindowRect (Handle, UpdateRect);

    OffsetRect (UpdateRect, - UpdateRect.Left, - UpdateRect.Top);

    HeaderRect := UpdateRect;
    HeaderRect.Bottom := FTitleHeight + FBorderSize;

    if FShowBorder then
    begin
      HeaderRect.Bottom := FTitleHeight + FBorderSize;
      InflateRect (HeaderRect, -FBorderSize, 0);
    end;

    if (FShowHeader) and (Message.Unused{$IFNDEF DELPHI6UP}[0]{$ENDIF} <> wmNCPaintOnlyBorder) then
    begin
      TempCanvas := TBitmap.Create;
      try
        //Title Drawing
        TempCanvas.Width := HeaderRect.Right - HeaderRect.Left;
        TempCanvas.Height := HeaderRect.Bottom - HeaderRect.Top;
        DrawTitle (TempCanvas.Canvas, HeaderRect);

        //Title Butons Drawing
        DrawAllTitleButtons (TempCanvas.Canvas, HeaderRect);

        BitBlt(DC, HeaderRect.Left, HeaderRect.Top, TempCanvas.Width, TempCanvas.Height,
          TempCanvas.Canvas.Handle, 0, 0, SRCCOPY);
      finally
        TempCanvas.Free;
      end;
    end;

    if FShowBorder then
    begin
      //DrawBorder (NCCanvas, UpdateRect, (Message.Unused[0] = wmNCPaintOnlyBorder));
      DrawBorder (NCCanvas, UpdateRect, False);
    end;


  finally
    NCCanvas.Free;
    ReleaseDC (Handle, DC);
  end;
  Message.Result := 0;

  inherited;
end;

procedure TxpPanel.WMSize (var Message : TMessage);
begin
  FullRepaint := (FGradientFill and FBGImage.Empty) or
    ((not FBGImage.Empty) and (FBGImageAlign <> iaTile )) or
    (FGradientFill and (not FBGImage.Empty) and (FBGImageAlign <> iaTile)) ;
  SetShape (FRoundedCorner);
  inherited;
end;


procedure TxpPanel.SetShape (ARounded : TRoundedCorners);
var
  WinRgn : hRgn;
  WinRgn1 : hRgn;
  ShadowRgn : hRgn;
  Rectn : TRect;
  RTop, RBottom : Integer;
  AWidth, AHeight : Integer;
begin
  WinRgn := 0;
  GetWindowRect (Handle, Rectn);
  OffsetRect (Rectn, -Rectn.Left, -Rectn.Top);

  //Delete old window region
  GetWindowRgn (Handle, WinRgn);
  DeleteObject(WinRgn);

  AWidth := Width;
  AHeight := Height;

  {if FShadow then
  begin
    Dec (AWidth, FShadowDist);
    Dec (AHeight, FShadowDist);
  end;}

  if ARounded <> [] then
  begin
    RTop := 0;
    RBottom := AHeight;
    if (rcTopLeft in ARounded) or (rcTopRight in ARounded) then RTop := cCornerRadius div 2;
    if (rcBottomLeft in ARounded) or (rcBottomRight in ARounded) then RBottom := AHeight - cCornerRadius div 2;

    WinRgn := CreateRectRgn (0, RTop, AWidth, RBottom);

    //Create topleft rounded corner
    if  rcTopLeft in ARounded then
    begin
      WinRgn1 := CreateRectRgn (cCornerRadius div 2, cCornerRadius div 2, cCornerRadius, cCornerRadius);
      CombineRgn (WinRgn1, WinRgn1, CreateEllipticRgn (0,0,cCornerRadius+1,cCornerRadius+1), RGN_OR);
      CombineRgn (WinRgn, WinRgn, WinRgn1, RGN_OR);
      DeleteObject(WinRgn1);

      //Create result region
      if rcTopRight in ARounded then
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, 0, AWidth - cCornerRadius div 2, cCornerRadius), RGN_OR)
      else
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, 0, AWidth, cCornerRadius), RGN_OR);
    end;

    //Create topright rounded corner
    if  rcTopRight in ARounded then
    begin
      WinRgn1 := CreateRectRgn (AWidth - cCornerRadius, 0, AWidth - cCornerRadius div 2, cCornerRadius);
      CombineRgn (WinRgn1, WinRgn1, CreateEllipticRgn (AWidth - cCornerRadius + 1, 0, AWidth+1, cCornerRadius), RGN_OR);
      CombineRgn (WinRgn, WinRgn, WinRgn1, RGN_OR);
      DeleteObject(WinRgn1);

      //Create result region
      if rcTopLeft in ARounded then
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, 0, AWidth - cCornerRadius div 2, cCornerRadius), RGN_OR)
      else
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (0, 0, AWidth - cCornerRadius, cCornerRadius), RGN_OR);
    end;

    //Create bottomleft rounded corner
    if  rcBottomLeft in ARounded then
    begin
      WinRgn1 := CreateRectRgn (cCornerRadius div 2, AHeight - cCornerRadius, cCornerRadius, AHeight - cCornerRadius div 2);
      CombineRgn (WinRgn1, WinRgn1, CreateEllipticRgn (0, AHeight - cCornerRadius, cCornerRadius,AHeight+1), RGN_OR);
      CombineRgn (WinRgn, WinRgn, WinRgn1, RGN_OR);
      DeleteObject(WinRgn1);

      //Create result region
      if rcBottomRight in ARounded then
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, AHeight - cCornerRadius div 2, AWidth - cCornerRadius div 2, AHeight), RGN_OR)
      else
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, AHeight - cCornerRadius div 2, AWidth, AHeight), RGN_OR);
    end;

    //Create bottomright rounded corner
    if  rcBottomRight in ARounded then
    begin
      WinRgn1 := CreateRectRgn (AWidth - cCornerRadius, AHeight - cCornerRadius,
        AWidth - cCornerRadius div 2, AHeight);
      CombineRgn (WinRgn1, WinRgn1, CreateEllipticRgn (AWidth - cCornerRadius + 1, AHeight-cCornerRadius+1, AWidth+1, AHeight+1), RGN_OR);
      CombineRgn (WinRgn, WinRgn, WinRgn1, RGN_OR);
      DeleteObject(WinRgn1);

      //Create result region
      if rcBottomLeft in ARounded then
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (cCornerRadius div 2, AHeight - cCornerRadius div 2, AWidth - cCornerRadius div 2+1, AHeight), RGN_OR)
      else
        CombineRgn (WinRgn, WinRgn, CreateRectRgn (0, AHeight - cCornerRadius div 2, AWidth - cCornerRadius div 2+1, AHeight), RGN_OR);
    end;

  end
  else
    WinRgn := CreateRectRgn (0, 0, AWidth, AHeight);

  {if FShadow then
  begin
    //Create shadow region
    ShadowRgn := CreateRectRgn (-cCornerRadius, -cCornerRadius, Width+cCornerRadius, Height+cCornerRadius);
    //Making shadow and main regions are same
    CombineRgn (ShadowRgn, ShadowRgn, WinRgn, RGN_AND);
    //Offset shadow region
    OffsetRgn (ShadowRgn, FShadowDist, FShadowDist);
    //Making result region
    CombineRgn (WinRgn, ShadowRgn, WinRgn, RGN_OR);
  end;}

  SetWindowRgn (Handle, WinRgn, true);
end;

procedure TxpPanel.ForceReDraw;
begin
  SendMessage (Handle, WM_NCPAINT, 0, 0);
  Invalidate;
end;

procedure TxpPanel.Loaded;
begin
  inherited;
  if FRoundedCorner <> [] then SetShape (FRoundedCorner);
  SendMessage (Handle, WM_NCPAINT, 0, 0);

  if Minimized then
    FHeight := DefaultHeight
  else
    FHeight := Height;
  FOldBounds := BoundsRect;
  if Align = alClient then
  begin
    FOldAlign := alNone;
    FMaximized := true;
  end
  else
    FMaximized := false;
end;

procedure TxpPanel.MouseEnter (var Message : TMessage);
begin
  inherited;
  if Assigned (FOnMouseEnter) then FOnMouseEnter (self);
end;

procedure TxpPanel.MouseLeave (var Message : TMessage);
begin
  inherited;
  if FMouseOnHeader then
  begin
    FMouseOnHeader := False;
    FullRepaint := False;
    SendMessage (Handle, WM_NCPAINT, 0, 0);

    if Assigned (FOnTitleMouseExit) then FOnTitleMouseExit (self);
  end;

  if Assigned (FOnMouseExit) then FOnMouseExit (self);
end;

procedure TxpPanel.NCMouseDown (var Message : TWMNCLBUTTONDOWN);
var
  ATitleHeight : Integer;
begin
  if not (Message.HitTest in [HTCLOSE, HTMINBUTTON, HTMAXBUTTON]) then
  begin
    if Message.HitTest = HTCAPTION then
    begin
      if Assigned (FBeforeMoving) then FBeforeMoving (self);
    end;

    inherited;

    Invalidate;
    if Message.HitTest in [HTTOP, HTLEFT, HTRIGHT, HTBOTTOM,
          HTTOPLEFT, HTTOPRIGHT, HTBOTTOMLEFT, HTBOTTOMRIGHT] then
    begin
      Invalidate;
    end;

    if Message.HitTest = HTCAPTION then
    begin
      if Assigned (FAfterMoving) then FAfterMoving (self);
    end;

    try Parent.Realign; except end;
  end;

  ATitleHeight := 0;
  if FShowHeader then ATitleHeight := FTitleHeight;
  if FShowBorder then ATitleHeight := ATitleHeight + 1;

  if Assigned (FOnTitleMouseDown) then
    FOnTitleMouseDown (Self, mbLeft, [],
      ScreenToClient (Point (Message.XCursor, Message.YCursor)).x,
      ScreenToClient (Point (Message.XCursor, Message.YCursor)).y + ATitleHeight);

end;

procedure TxpPanel.NCMouseUp (var Message : TWMNCLBUTTONUP);
var
  ATitleHeight : Integer;
begin
  inherited;
  Parent.Realign;
  if Assigned (FOnTitleClick) and
     not (Message.HitTest in [HTCLOSE, HTMINBUTTON, HTMAXBUTTON]) then FOnTitleClick (Self);

  ATitleHeight := 0;
  if FShowHeader then ATitleHeight := FTitleHeight;
  if FShowBorder then ATitleHeight := ATitleHeight + 1;

  if Assigned (FOnTitleMouseUp) then
    FOnTitleMouseUp (Self, mbLeft, [],
      ScreenToClient (Point (Message.XCursor, Message.YCursor)).x,
      ScreenToClient (Point (Message.XCursor, Message.YCursor)).y + ATitleHeight);

  case Message.HitTest of
    HTCLOSE:
    begin
      Visible := False;
      if Assigned (FAfterClose) then FAfterClose (Self);
    end;
    HTMAXBUTTON:
    begin
      Maximized := not Maximized;
    end;
    HTMINBUTTON:
    begin
      Minimized := not Minimized;
    end;
  end;
end;

procedure TxpPanel.NCMouseDblClick (var Message : TWMNCLButtonDblClk);
begin
  if Assigned (FOnTitleDblClick) then FOnTitleDblClick (self);
  if tbMinimize in FTitleButtons then Minimized := not Minimized else
    if tbMaximize in FTitleButtons then Maximized := not Maximized;
end;


procedure TxpPanel.SetGradientFill (AValue : Boolean);
begin
  if FGradientFill <> AValue then
  begin
    FGradientFill := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetStartColor (AColor : TColor);
begin
  if FStartColor <> AColor then
  begin
    FStartColor := AColor;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetEndColor (AColor : TColor);
begin
  if FEndColor <> AColor then
  begin
    FEndColor := AColor;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetFillDirection (AFillDirection : TFillDirection);
begin
  if FFillDirection <> AFillDirection then
  begin
    FFillDirection := AFillDirection;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetShadow (AValue : Boolean);
begin
  if FShadow <> AValue then
  begin
    FShadow := AValue;
    SetShape (FRoundedCorner);
  end;
end;


procedure TxpPanel.SetShadowDist (AValue : Integer);
begin
  if AValue < 1 then AValue := 1;
  if (FShadowDist <> AValue) then
  begin
    FShadowDist := AValue;
    ForceReDraw;
  end;
end;


procedure TxpPanel.SetShowHeader (AValue : Boolean);
begin
  if FShowHeader <> AValue then
  begin
    FShowHeader := AValue;
    SendMessage (Handle, WM_SIZE, 0, 0);
  end;
end;

procedure TxpPanel.SetCaption (ACaption : String);
begin
  if FCaption <> ACaption then
  begin
    FCaption := ACaption;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitle (ATitle : String);
begin
  if FTitle <> ATitle then
  begin
    FTitle := ATitle;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleAlignment (AValue : TAlignment);
begin
  FTitleAlignment := AValue;
  ForceReDraw;
end;

procedure TxpPanel.SetTitleGradient (AValue : Boolean);
begin
  if FTitleGradient <> AValue then
  begin
    FTitleGradient := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleStartColor (AValue : TColor);
begin
  if FTitleStartColor <> AValue then
  begin
    FTitleStartColor := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleEndColor (AValue : TColor);
begin
  if FTitleEndColor <> AValue then
  begin
    FTitleEndColor := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleFillDirect (AValue : TFillDirection);
begin
  if FTitleFillDirect <> AValue then
  begin
    FTitleFillDirect := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleColor (AValue : TColor);
begin
  if FTitleColor <> AValue then
  begin
    FTitleColor := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleImage (AValue : TBitmap);
begin
  if not FTitleImage.Empty then FTitleImage.FreeImage;
  FTitleImage.Assign (AValue);
  ForceReDraw;
end;




procedure TxpPanel.SetTitleFont (AFont : TFont);
begin
  FTitleFont.Assign (AFont);
  ForceReDraw;
end;


procedure TxpPanel.OnTitleFontChange (Sender : TObject);
begin
  ForceReDraw;
end;


procedure TxpPanel.SetTitleHeight (AHeight : Integer);
begin
  if FTitleHeight <> AHeight then
  begin
    FTitleHeight := AHeight;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleCursor (AValue : TCursor);
begin
  if FTitleCursor <> AValue then
  begin
    FTitleCursor := AValue;
  end;
end;


procedure TxpPanel.SetBorderSize (AValue : Integer);
begin
  If AValue < 0 then AValue := 0;
  if FBorderSize <> AValue then
  begin
    FBorderSize := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetBorderColor (AValue : TColor);
begin
  if FBorderColor <> AValue then
  begin
    FBorderColor := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetShowBorder (AValue : Boolean);
begin
  if FShowBorder <> AValue then
  begin
    FShowBorder := AValue;
    SetShape (FRoundedCorner);
  end;
end;

procedure TxpPanel.SetBGImage (AImage : TBitmap);
begin
  FBGImage.Assign (AImage);
  ForceReDraw;
end;

procedure TxpPanel.SetBGImageAlign (AImageAlign : TBGImageAlign);
begin
  if FBGImageAlign <> AImageAlign then
  begin
    FBGImageAlign := AImageAlign;
    if (FBGImageAlign = iaTile) or (FBGImageAlign = iaStretch) then FGradientFill := False;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleImageAlign (AValue : TTitleImageAlign);
begin
  if FTitleImageAlign <> AValue then
  begin
    FTitleImageAlign := AValue;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetTitleImageTransparent (AValue : Boolean);
begin
  if FTitleImageTransparent <> AValue then
  begin
    FTitleImageTransparent := AValue;
    ForceReDraw;
  end;
end;


procedure TxpPanel.SetBGImageTransparent (Atrans : Boolean);
begin
  if FBGImageTransparent <> ATrans then
  begin
    FBGImageTransparent := ATrans;
    ForceReDraw;
  end;
end;

procedure TxpPanel.SetShadowTitleOnMouseEnter (AShadow : Boolean);
begin
  if FTitleShadowOnMouseEnter <> AShadow then
  begin
    FTitleShadowOnMouseEnter := AShadow;
  end;
end;

procedure TxpPanel.SetRoundedCorner (AValue : TRoundedCorners);
begin
  if FRoundedCorner <> AValue then
  begin
    FRoundedCorner := AValue;
    FullRepaint := true;
    SetShape (FRoundedCorner);
    FullRepaint := False;
  end;
end;

procedure TxpPanel.SetMovable (AValue : Boolean);
begin
  if FMovable <> AValue then
  begin
    FMovable := AValue;
  end;
end;

procedure TxpPanel.SetSizable (AValue : Boolean);
begin
  if FSizable <> AValue then
  begin
    FSizable := AValue;
  end;
end;



procedure TxpPanel.SetMinimized (AValue : Boolean);
{/*****************************/*}
  procedure Anime (NewSize : Integer);
  var
    I, Step, Iteration : Integer;
    YStart, YEnd : Integer;
    OldFRepaint : Boolean;
  begin
      //Animation
      if FAnimation then
      begin
        Step := 0;
        if Height > NewSize then
        begin
          YStart := newSize;
          YEnd := Height;
        end
        else
        begin
          YStart := Height;
          YEnd := newSize;
        end;
        Iteration := (YEnd - YStart) div 10;
        if Iteration = 0 then Iteration := 1;
        OldFRepaint := FullRepaint;
        FullRepaint := False;
        For I := YStart to YEnd do
        begin
          if Step = Iteration then
          begin
            if Height < NewSize then Height := Height + Step
            else Height := Height - Step;
            Application.ProcessMessages;
            Step := 0;
          end;
          Inc (Step);
        end;
        FullRepaint := OldFRepaint;
      end;
  end;
{/*****************************/*}

begin
  if (FMinimized <> AValue) and (not FMinimizing ) then
  begin
    Maximized := False;
    FMinimized := AValue;

    if AValue then
    begin
      try
        FMinimizing := True;
        FHeight := Height;
        if FAnimation then Anime (FTitleHeight + FBorderSize);
        Height := FTitleHeight + FBorderSize;
      finally
        FMinimizing := False;
      end;
    end
    else
    begin
      try
        FMinimizing := true;
        if Height = FHeight then FHeight := FDefaultHeight;
        if FAnimation then Anime (FHeight);
        Height := FHeight;
      finally
        FMinimizing := false;
      end;
    end;

    Invalidate;
    if Assigned (FAfterMinimized) then
      FAfterMinimized (Self, FMinimized);
  end;
end;

procedure TxpPanel.SetMaximized (AValue : Boolean);
begin
  if FMaximized <> AValue then
  begin
    FMaximized := AValue;

    if FMaximized then
    begin
      FOldBounds := BoundsRect;
      FOldAlign := Align;
      Align := alClient;
    end
    else
    begin
      Align := FOldAlign;
      BoundsRect := FOldBounds;
    end;

    Invalidate;
    if Assigned (FAfterMaximized) then
      FAfterMaximized (Self, FMaximized);
  end;
end;


procedure TxpPanel.SetTitleButtons (AValue : TTitleButtons);
begin
  if FTitleButtons <> AValue then
  begin
    FTitleButtons := AValue;
    if Parent <> nil then
    begin
      SendMessage (Handle, WM_NCPAINT, 0, 0);
      SendMessage (Handle, WM_SIZE, 0, 0);
    end;  
  end;
end;

procedure TxpPanel.SetAnimation (AValue : Boolean);
begin
  if FAnimation <> AValue then
  begin
    FAnimation := AValue;
  end;
end;

procedure TxpPanel.SetDefaultHeight (AValue : Integer);
begin
  if AValue <> FDefaultHeight then
  begin
    FDefaultHeight := AValue;
    if Minimized then FHeight := FDefaultHeight;
  end;
end;

procedure Register;
begin
  RegisterComponents('XP Controls', [TxpPanel]);
end;


initialization
end.
