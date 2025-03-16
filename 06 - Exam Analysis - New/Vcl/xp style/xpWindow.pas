unit xpWindow;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, ExtCtrls, Dialogs,
  graphics, xpGraphUtil, xpReg;

const
  cRoundedCorderRadius : Integer = 14;

  clxpBorderColor : TColor = $00D42504;
  clxpBorderInActiveColor : TColor = $00DEB3A1;

  clxpActiveTitleStartColor : TColor = $00E44C00;
  clxpActiveTitleEndColor : TColor = $00FE7105;

  clxpInActiveTitleStartColor : TColor = $00EAB496;
  clxpInActiveTitleEndColor : TColor = $00E7A480;


type

  TWindowSizeInfo = class (TPersistent)
    private
      FActive : Boolean;

      FMaxSizeWidth: Integer;
      FMaxSizeHeight: Integer;
      FMaxPositionX: Integer;
      FMaxPositionY: Integer;
      FMinTrackWidth: Integer;
      FMinTrackHeight: Integer;
      FMaxTrackWidth: Integer;
      FMaxTrackHeight: Integer;

      FUseSystemSettings : Boolean;

      procedure SetSystemSettings (AValue : Boolean);

      procedure SetMaxSizeWidth (AValue : Integer);
      procedure SetMaxSizeHeight (AValue : Integer);
      procedure SetMaxPositionX (AValue : Integer);
      procedure SetMaxPositionY (AValue : Integer);
      procedure SetMinTrackWidth (AValue : Integer);
      procedure SetMinTrackHeight (AValue : Integer);
      procedure SetMaxTrackWidth (AValue : Integer);
      procedure SetMaxTrackHeight (AValue : Integer);
    public
      constructor Create;
      destructor  Destroy; override;

    published
      property Active : Boolean read FActive write FActive default False;
      property MaxSizeWidth: Integer read FMaxSizeWidth write SetMaxSizeWidth;
      property MaxSizeHeight: Integer read FMaxSizeHeight write SetMaxSizeHeight;
      property MaxPositionX: Integer read FMaxPositionX write SetMaxPositionX;
      property MaxPositionY: Integer read FMaxPositionY write SetMaxPositionY;
      property MinTrackWidth: Integer read FMinTrackWidth write SetMinTrackWidth;
      property MinTrackHeight: Integer read FMinTrackHeight write SetMinTrackHeight;
      property MaxTrackWidth: Integer read FMaxTrackWidth write SetMaxTrackWidth;
      property MaxTrackHeight: Integer read FMaxTrackHeight write SetMaxTrackHeight;

      property UseSystemSettings : Boolean read FUseSystemSettings write SetSystemSettings default True;
  end;

{******************************************************************************}
{*************************** T S T I C K W I N D O W **************************}
{******************************************************************************}

  TDockBorder = (dbLeft, dbRight, dbTop, dbBottom);
  TDockBorders = Set of TDockBorder;

  TStickWindow = class (TPersistent)
    private
      FActive : Boolean;
      FStickAt : Integer;
      FDockBorders : TDockBorders;

      procedure SetActive (AActive : Boolean);
      procedure SetStickAt (AStickAt : Integer);

      procedure DoStick (var AMessage : TMessage);
    public
      constructor Create;
      destructor  Destroy; override;
    published
      property Active : Boolean read FActive write SetActive default False;
      property StickAt : Integer read FStickAt write SetStickAt default 20;
      property DockBorders : TDockBorders read FDockBorders write FDockBorders default [dbLeft, dbRight, dbTop, dbBottom];
  end;

{******************************************************************************}
{*************************** T X P C A  P T I O N ****************************}
{******************************************************************************}

  TxpWindow = class;

  TgbImageAlign = (iaLeft, iaRight, iaCenter, iaStretch, iaTile);
  TTitleButtonState = (tbsNormal, tbsActive, tbsDowned, tbsDisabled);

  TxpCaption = class (TPersistent)
    private
      FActive : Boolean;
      FActiveWindow : Boolean;
      FxpWindow : TxpWindow;
      FHeight : Integer;
      FVisible : Boolean;
      FShowBorder : Boolean;
      FBorderSize : Integer;
      FBorderColor : TColor;
      FBorderInActiveColor : TColor;

      FButtonSize : Integer;
      FCustomButtonCount : Integer;
      FDownedButton : Integer;

      FFont : TFont;

      FbgImage : TBitmap;
      FImageAlign : TgbImageAlign;
      FImageTransparent : Boolean;

      FGradientFill : Boolean;
      FFillDirection : TFillDirection;

      FActiveStartColor : TColor;
      FActiveEndColor : TColor;
      FInActiveStartColor : TColor;
      FInActiveEndColor : TColor;

      FDisplayAppIcon : Boolean;

      FRoundedCorners : Boolean;


      FOrignDLGFRAME : Boolean;

      procedure SetActive (AActive : Boolean);
      procedure Draw (var AMessage : TMessage);
      procedure ProcessClientArea (var AMessage : TMessage);
      procedure ProcessHitTest (var AMessage : TMessage);

      procedure SetHeight (AHeight : Integer);
      procedure SetVisible (AVisible : Boolean);
      procedure SetFont (AValue : TFont);

      procedure SetBGImage (AImage : TBitmap);
      procedure SetImageAlign (AImageAlign : TgbImageAlign);
      procedure SetImageTransparent (AValue : Boolean);

      procedure SetGradientFill (AValue : Boolean);
      procedure SetGradFillDirection (ADirection : TFillDirection);

      procedure SetActiveStartColor (AColor : TColor);
      procedure SetActiveEndColor (AColor : TColor);
      procedure SetInActiveStartColor (AColor : TColor);
      procedure SetInActiveEndColor (AColor : TColor);

      procedure SetShowBorder (AValue : Boolean);
      procedure SetBorderSize (AValue : Integer);
      procedure SetBorderColor (AValue : TColor);
      procedure SetBorderInActiveColor (AValue : TColor);

      procedure SetButtonSize (AValue : Integer);
      procedure SetCustomButtonCount (AValue : Integer);

      procedure SetRoundedCorners (AValue : Boolean);

      procedure SetDisplayAppIcon (AValue : Boolean);

      //////////////////////////////////////////////////////////////////////////
      procedure DrawBorder (ACanvas : TCanvas; ABorderRect : TRect);
      procedure DrawTitle (ACanvas : TCanvas; ATitleRect : TRect);
      procedure DrawButtons (ACanvas : TCanvas; ATitleRect : TRect);
      procedure DrawButtonRect (ACanvas : TCanvas; AButtonRect : TRect; CloseBtn : Boolean);
      function  PtInButton (APoint : TPoint; ATitleRect : TRect) : Integer;
      procedure ChangeButtonState (AIndex : Integer; AState : TTitleButtonState; ATitleRect : TRect);
      function  GetSysButtonCount : Integer;

      procedure WMNCCreate (var Message : TMessage);
      function ProcessLButtonDown (var Message : TMessage) : Boolean;
      function ProcessLButtonUp (var Message : TMessage) : Boolean;

      procedure DrawCloseButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
      procedure DrawMaxButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
      procedure DrawMinButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
    public
      procedure ForceRedraw;

      constructor Create (AOwner : TxpWindow);
      destructor  Destroy; override;
    published
      property Active : Boolean read FActive write SetActive default False;
      property Height : Integer read FHeight write SetHeight default 30;
      property Visible : Boolean read FVisible write SetVisible default True;
      property Image : TBitmap read FbgImage write SetBGImage;
      property ImageAlign : TgbImageAlign read FImageAlign write SetImageAlign;
      property ImageTransparent : Boolean read FImageTransparent write SetImageTransparent default True;
      property Font : TFont read FFont write SetFont;

      property ShowBorder : Boolean read FShowBorder write SetShowBorder default true;
      property BorderSize : Integer read FBorderSize write SetBorderSize default 3;
      property BorderColor : TColor read FBorderColor write SetBorderColor;
      property BorderInActiveColor : TColor read FBorderInActiveColor write SetBorderInActiveColor;
      property ButtonSize : Integer read FButtonSize write SetButtonSize default 20;
      property CustomButtonCount : Integer read FCustomButtonCount write SetCustomButtonCount default 0;
      property RoundedCorners : Boolean read FRoundedCorners write SetRoundedCorners default true;

      property DisplayAppIcon : Boolean read FDisplayAppIcon write SetDisplayAppIcon default true;

      property GradientFill : Boolean read FGradientFill write SetGradientFill;
      property FillDirection : TFillDirection  read FFillDirection write SetGradFillDirection;

      property ActiveStartColor : TColor read FActiveStartColor write SetActiveStartColor;
      property ActiveEndColor : TColor read FActiveEndColor write SetActiveEndColor;
      property InActiveStartColor : TColor read FInActiveStartColor write SetInActiveStartColor;
      property InActiveEndColor : TColor read FInActiveEndColor write SetInActiveEndColor;

  end;

{******************************************************************************}
{*****************************   T X P W I N D O W  ***************************}
{******************************************************************************}

  TOnCustomButtonDraw = procedure (Sender: TObject; ACanvas : TCanvas; AButtonRect : TRect; AButtonIndex : Integer; AState : TTitleButtonState) of object;
  TOnCustomButtonClick = procedure (Sender: TObject; AButtonIndex : Integer) of object;
  TOnCustomDrawTitle = procedure (Sender: TObject; ACanvas : TCanvas; ATitleRect : TRect; AActive : Boolean) of object;

  TxpWindow = class(TComponent)
  private
    FActive : Boolean;
    FForm   : TForm;
    FOriginalRgn : HRgn;
    FSizeInfo : TWindowSizeInfo;

    FWindowProc : Pointer;
    FOldWindowProc : Pointer;

    FStickWindow : TStickWindow;
    FxpCaption : TxpCaption;

    FOriginalCaptionVisibility : Boolean;

    FOnCustomButtonDraw : TOnCustomButtonDraw;
    FOnCustomButtonClick : TOnCustomButtonClick;
    FOnCustomDrawTitle : TOnCustomDrawTitle;

    procedure HookedWindowProc (var Msg: TMessage);
    procedure HookWindow;
    procedure UnHookWindow;

    procedure SetMinMaxInfo (var AMessage : TMessage);

    procedure SetFormShape (ARoundedCorner : Boolean);
    procedure RestoreFormShape;

    procedure SetActive (AActive : Boolean);
    function  GetActive : Boolean;

    procedure SetSizeInfo (AInfo : TWindowSizeInfo);
    function  GetSizeInfo : TWindowSizeInfo;

    procedure SetStickWindow (AStick : TStickWindow);

    procedure SetXPCaption (ACaption : TxpCaption);

    procedure SaveOrignCaptionVisibility;

  protected
    procedure Loaded; override;
    procedure CaptionVisible (AVisible : Boolean);
  public
    procedure ForceReDraw;
    constructor Create (AOwner : TComponent); override;
    destructor Destroy; override;
  published
    { Published declarations }
    property Active : Boolean read GetActive write SetActive default False;
    property SizeInfo : TWindowSizeInfo read FSizeInfo write SetSizeInfo;
    property StickWindow : TStickWindow read FStickWindow write SetStickWindow;
    property xpCaption : TxpCaption read FxpCaption write SetXPCaption;

    ////////////////////////////////////////////////////////////////////////////
    property OnCustomButtonDraw : TOnCustomButtonDraw read FOnCustomButtonDraw write FOnCustomButtonDraw;
    property OnCustomButtonClick : TOnCustomButtonClick read FOnCustomButtonClick write FOnCustomButtonClick;
    property OnCustomDrawTitle : TOnCustomDrawTitle read FOnCustomDrawTitle write FOnCustomDrawTitle;
  end;

procedure Register;

implementation

{******************************************************************************/
/******************* TWindowSizeInfo methods implementation  ******************/
/******************************************************************************}


constructor TWindowSizeInfo.Create;
begin
  inherited;
  FActive := False;
  SetSystemSettings (true);
end;

destructor  TWindowSizeInfo.Destroy;
begin
  inherited;
end;

procedure TWindowSizeInfo.SetSystemSettings (AValue : Boolean);
begin
  FUseSystemSettings := AValue;
  if AValue then
  begin
    FMaxSizeWidth := GetSystemMetrics(SM_CXMAXIMIZED);
    FMaxSizeHeight := GetSystemMetrics(SM_CYMAXIMIZED);
    FMaxPositionX := 0;
    FMaxPositionY := 0;
    FMinTrackWidth := GetSystemMetrics(SM_CXMINTRACK);
    FMinTrackHeight := GetSystemMetrics(SM_CYMINTRACK);
    FMaxTrackWidth := GetSystemMetrics(SM_CXMAXTRACK);
    FMaxTrackHeight := GetSystemMetrics(SM_CYMAXTRACK);
  end;
end;

procedure TWindowSizeInfo.SetMaxSizeWidth (AValue : Integer);
begin
  if AValue <> FMaxSizeWidth then
  begin
    FMaxSizeWidth := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMaxSizeHeight (AValue : Integer);
begin
  if AValue <> FMaxSizeHeight then
  begin
    FMaxSizeHeight := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMaxPositionX (AValue : Integer);
begin
  if AValue <> FMaxPositionX then
  begin
    FMaxPositionX := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMaxPositionY (AValue : Integer);
begin
  if AValue <> FMaxPositionY then
  begin
    FMaxPositionY := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMinTrackWidth (AValue : Integer);
begin
  if AValue <> FMinTrackWidth then
  begin
    FMinTrackWidth := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMinTrackHeight (AValue : Integer);
begin
  if AValue <> FMinTrackHeight then
  begin
    FMinTrackHeight := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMaxTrackWidth (AValue : Integer);
begin
  if AValue <> FMaxTrackWidth then
  begin
    FMaxTrackWidth := AValue;
    FUseSystemSettings := False;
  end;
end;

procedure TWindowSizeInfo.SetMaxTrackHeight (AValue : Integer);
begin
  if AValue <> FMaxTrackHeight then
  begin
    FMaxTrackHeight := AValue;
    FUseSystemSettings := False;
  end;
end;


{******************************************************************************/
/***  T S t i c k W i d o w   m e t h o d s   i m p l e m e n t a t i o n *****/
/******************************************************************************}

constructor TStickWindow.Create;
begin
  FStickAt := 20;
  FDockBorders := [dbLeft, dbRight, dbTop, dbBottom];
end;

destructor  TStickWindow.Destroy;
begin
  inherited;
end;

procedure TStickWindow.SetActive (AActive : Boolean);
begin
  FActive := AActive;
end;

procedure TStickWindow.SetStickAt (AStickAt : Integer);
begin
  FStickAt := AStickAt;
end;

procedure TStickWindow.DoStick (var AMessage : TMessage);
var
  rWorkArea: TRect;
  WindowPos : PWindowPos;
  Docked : Boolean;
begin
  SystemParametersInfo (SPI_GETWORKAREA, 0, @rWorkArea, 0);

  //GetWindowRect (FindWindow (nil, PChar ('The Customiser')), rWorkArea);

  WindowPos := PWindowPos (AMessage.LParam);
  Docked := False;
  if (dbLeft in FDockBorders) then
  if Abs (WindowPos^.x - rWorkArea.Left) <= FStickAt then
  begin
    WindowPos^.x := rWorkArea.Left;
    Docked := TRUE;
  end;

  if (dbRight in FDockBorders) then
  if (rWorkArea.Right - WindowPos^.x - WindowPos^.cx) <= FStickAt then
  begin
    WindowPos^.x := rWorkArea.Right - WindowPos^.cx;
    Docked := TRUE;
  end;

  if (dbTop in FDockBorders) then
  if WindowPos^.y <= rWorkArea.Top + FStickAt then
  begin
    WindowPos^.y := rWorkArea.Top;
    Docked := TRUE;
  end;

  if (dbBottom in FDockBorders) then
  if WindowPos^.y + WindowPos^.cy >= rWorkArea.Bottom - FStickAt then
  begin
    WindowPos^.y := rWorkArea.Bottom - WindowPos^.cy;
    Docked := TRUE;
  end;

  if Docked then
  begin
     with rWorkArea do
     begin
       //if WindowPos^.x < Left then WindowPos^.x := Left;
       //if WindowPos^.x + WindowPos^.cx > Right then WindowPos^.x := Right - WindowPos^.cx;
       //if WindowPos^.y < Top then WindowPos^.y := Top;
       //if WindowPos^.y + WindowPos^.cy > Bottom then WindowPos^.y := Bottom - WindowPos^.cy;
     end;
  end;
end;


{******************************************************************************/
/*****  T x p C A P T I O N    m e t h o d s   i m p l e m e n t a t i o n ****/
/******************************************************************************}


constructor TxpCaption.Create (AOwner : TxpWindow);
begin
  FxpWindow := AOwner;
  FVisible := true;
  FHeight := GetSystemMetrics(SM_CYCAPTION);

  FbgImage := TBitmap.Create;
  FImageAlign := iaCenter;
  FImageTransparent := true;

  FShowBorder := true;
  FBorderSize := 3;
  FBorderColor := clxpBorderColor;
  FBorderInActiveColor := clxpBorderInActiveColor;

  FActiveStartColor := clxpActiveTitleStartColor;
  FActiveEndColor := clxpActiveTitleEndColor;

  FInActiveStartColor := clxpInActiveTitleStartColor;
  FInActiveEndColor := clxpInActiveTitleEndColor;

  FButtonSize := 20;
  FCustomButtonCount := 0;
  FDownedButton := -10;

  FActiveWindow := true;

  FFont := TFont.Create;

  FOrignDLGFRAME := True;
  FRoundedCorners := true;

  FDisplayAppIcon := true;
  if Assigned (FxpWindow.FForm) then
    FDisplayAppIcon := (biSystemMenu in FxpWindow.FForm.BorderIcons);
end;

destructor  TxpCaption.Destroy;
begin
  FbgImage.Free;
  FFont.Free;
  inherited;
end;

procedure TxpCaption.WMNCCreate (var Message : TMessage);
begin
end;

function TxpCaption.ProcessLButtonUp (var Message : TMessage) : Boolean;
var
  HitInfo : TWMNCHitTest;
  WinRect : TRect;
  BtnCheck : Integer;
begin
  Result := False;
  if FDownedButton = -10 then Exit;
  case Message.WParam of
    HTCLOSE:
    begin
      SendMessage(FxpWindow.FForm.Handle, WM_SYSCOMMAND, SC_CLOSE, Message.LParam);
      Result := true;
    end;
    HTMINBUTTON:
    begin
      SendMessage(FxpWindow.FForm.Handle, WM_SYSCOMMAND, SC_MINIMIZE, Message.LParam);
      Result := true;
    end;
    HTMAXBUTTON:
    begin
      if IsZoomed(FxpWindow.FForm.Handle) then
        SendMessage(FxpWindow.FForm.Handle, WM_SYSCOMMAND, SC_RESTORE, Message.LParam)
      else
        SendMessage(FxpWindow.FForm.Handle, WM_SYSCOMMAND, SC_MAXIMIZE, Message.LParam);
      Result := true;
    end;
    HTOBJECT:
    begin
      if FVisible then
      begin
        HitInfo := TWMNCHitTest (Message);
        GetWindowRect (FxpWindow.FForm.Handle, WinRect);
        BtnCheck := PtInButton (Point (HitInfo.XPos - WinRect.Left, HitInfo.YPos - WinRect.Top),
          Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + FBorderSize));
        if (BtnCheck in [3..3+FCustomButtonCount]) and
          Assigned (FxpWindow.FOnCustomButtonClick) then
        begin
          ChangeButtonState (BtnCheck, tbsNormal, Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + FBorderSize));
          FxpWindow.FOnCustomButtonClick (Self, BtnCheck-2);
        end;
      end;
      Result := true;
    end;
  end;
end;



procedure TxpCaption.DrawCloseButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
var
  offX, offY : Integer;
begin
  offX := 0;
  offY := 0;
  case AState of
    tbsDowned :
      begin
       offX := 1;
       offY := 1;
      end;
  end;
  ACanvas.Pen.Color := clWhite;
  ACanvas.Pen.Width := 2;
  ACanvas.MoveTo (ARect.Left + 4 + offX, ARect.Top+4 + offY);
  ACanvas.LineTo (ARect.Right - 4 + offX, ARect.Bottom - 4 + offY);
  ACanvas.MoveTo (ARect.Left + 4 + offX, ARect.Bottom-4 + offY);
  ACanvas.LineTo (ARect.Right - 4 + offX, ARect.Top + 4 + offY);

end;

procedure TxpCaption.DrawMaxButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
var
  offX, offY : Integer;
begin
  offX := 0;
  offY := 0;
  case AState of
    tbsDowned :
      begin
       offX := 1;
       offY := 1;
      end;
  end;

  {if FxpWindow.FForm.WindowState = wsMaximized then
  begin
    ACanvas.Brush.Style := bsClear;
    ACanvas.Pen.Color := clRed;
    ACanvas.Pen.Width := 1;
    ACanvas.Rectangle (ARect.Left + 4 + offX, ARect.Top + 5 + offY, ARect.Right-4 + offX, ARect.Bottom - 4 + offY);
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := clWhite;
    ACanvas.Rectangle (ARect.Left + 4 + offX, ARect.Top + 5 + offY, ARect.Right-4 + offX, ARect.Top+8 + offY);
  end
  else}
  begin
    ACanvas.Brush.Style := bsClear;
    ACanvas.Pen.Color := clWhite;
    ACanvas.Pen.Width := 1;
    ACanvas.Rectangle (ARect.Left + 4 + offX, ARect.Top + 5 + offY, ARect.Right-4 + offX, ARect.Bottom - 4 + offY);
    ACanvas.Brush.Style := bsSolid;
    ACanvas.Brush.Color := clWhite;
    ACanvas.Rectangle (ARect.Left + 4 + offX, ARect.Top + 5 + offY, ARect.Right-4 + offX, ARect.Top+8 + offY);
  end;
end;

procedure TxpCaption.DrawMinButtonImage (ACanvas : TCanvas; ARect : TRect; AState : TTitleButtonState);
var
  offX, offY : Integer;
begin
  offX := 0;
  offY := 0;
  case AState of
    tbsDowned :
      begin
       offX := 1;
       offY := 1;
      end;
  end;
  ACanvas.Brush.Style := bsSolid;
  ACanvas.Brush.Color := clWhite;
  ACanvas.Pen.Color := clWhite;
  ACanvas.Rectangle (ARect.Left + 5 + offX, ARect.Bottom - 7 + offY, ARect.Right-7 + offX, ARect.Bottom -5 + offY);
end;



function TxpCaption.ProcessLButtonDown (var Message : TMessage) : Boolean;
var
  HitInfo : TWMNCHitTest;
  WinRect : TRect;
  BtnCheck : Integer;
  ABorderSize : Integer;
begin
  Result := False;

  HitInfo := TWMNCHitTest (Message);
  GetWindowRect (FxpWindow.FForm.Handle, WinRect);
  BtnCheck := PtInButton (Point (HitInfo.XPos - WinRect.Left, HitInfo.YPos - WinRect.Top),
                          Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + FBorderSize));

  FDownedButton := BtnCheck;

  ABorderSize := 0;

  if FShowBorder then ABorderSize := FBorderSize;

  case Message.WParam of
    HTCLOSE:
    begin
      ChangeButtonState (0, tbsDowned, Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + ABorderSize));
      Result := true;
    end;
    HTMAXBUTTON:
    begin
      ChangeButtonState (1, tbsDowned, Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + ABorderSize));
      Result := true;
    end;
    HTMINBUTTON:
    begin
      ChangeButtonState (2, tbsDowned, Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + ABorderSize));
      Result := true;
    end;
    HTOBJECT:
    begin
      ChangeButtonState (BtnCheck, tbsDowned, Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + ABorderSize));
      Result := true;
    end;
  end;
end;

procedure TxpCaption.SetActive (AActive : Boolean);
var
  dwStyle : longint;
begin
  FActive := AActive;

  dwStyle := GetWindowLong(FxpWindow.FForm.Handle, GWL_STYLE);
  if AActive then
  begin
    FOrignDLGFRAME := (dwStyle and WS_DLGFRAME) <> 0;
    dwStyle := dwStyle and not WS_DLGFRAME;
  end
  else
    //if FOrignDLGFRAME then dwStyle := dwStyle or WS_DLGFRAME;
    if FxpWindow.FForm.BorderStyle <> bsNone then dwStyle := dwStyle or WS_DLGFRAME;

  if (FxpWindow.Active) and not (csDesigning in FxpWindow.ComponentState) then
  begin
    SetWindowLong(FxpWindow.FForm.Handle, GWL_STYLE, dwStyle);
    FxpWindow.SetFormShape (FxpWindow.xpCaption.FRoundedCorners);
  end;

  if (not FActive) and FRoundedCorners then
    FxpWindow.RestoreFormShape;

end;

procedure TxpCaption.SetFont (AValue : TFont);
begin
  FFont.Assign (AValue);
end;

procedure TxpCaption.ChangeButtonState (AIndex : Integer; AState : TTitleButtonState; ATitleRect : TRect);
var
  ButtonRect : TRect;
  I : Integer;
  ACanvas : TCanvas;
  FillDir : TFillDirection;
begin
  ButtonRect := Rect (ATitleRect.Right - FButtonSize - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2,
    ATitleRect.Right - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2 + FButtonSize);

  if AIndex < 3 then
  begin
    //System button offset
    case AIndex of
      0: begin end;
      1: OffsetRect (ButtonRect, - (FButtonSize + 2) * (Integer (biSystemMenu in FxpWindow.FForm.BorderIcons) ), 0);
      2: OffsetRect (ButtonRect, - (FButtonSize + 2) * (Integer (biSystemMenu in FxpWindow.FForm.BorderIcons) + Integer (biMaximize in FxpWindow.FForm.BorderIcons) ), 0);
    end;
  end
  else
    //Custom Button offset
    OffsetRect (ButtonRect, - (FButtonSize + 2) * ((AIndex - 3) + GetSysButtonCount), 0);

  InflateRect (ButtonRect, -1, -1);

  ACanvas := TCanvas.Create;
  try
    ACanvas.Handle := GetWindowDC (FxpWindow.FForm.Handle);

    FillDir := fdTopToBottom;
    if AState = tbsDowned then FillDir := fdBottomToTop;
    
    if AIndex = 0 then
      GradientFillRect (ACanvas, ButtonRect, clRed, clPurple, fdBottomToTop, 30)
    else
      GradientFillRect (ACanvas, ButtonRect, clBlue, clNavy, fdBottomToTop, 30);

    InflateRect (ButtonRect, 1, 1);
    ACanvas.Brush.Style := bsClear;
    ACanvas.Pen.Color := clWhite;
    ACanvas.RoundRect (ButtonRect.Left, ButtonRect.Top,
        ButtonRect.Right, ButtonRect.Bottom, 3, 3);


    if (AIndex in [3..3+FCustomButtonCount]) then
    begin
      // Custom draw for custom buttons
      if (Assigned (FxpWindow.FOnCustomButtonDraw)) then
        FxpWindow.FOnCustomButtonDraw (Self, ACanvas, ButtonRect, AIndex - 2, AState);
    end
    else
    begin
      case AIndex of
        0: begin
             //Close button
             DrawCloseButtonImage (ACanvas, ButtonRect, AState);
           end;
        1: begin
             //Max button
             DrawMaxButtonImage (ACanvas, ButtonRect, AState);
           end;
        2: begin
             //Min button
             DrawMinButtonImage (ACanvas, ButtonRect, AState);
           end;
      end;
    end;

  finally
    ACanvas.Free;
  end;

end;

procedure TxpCaption.DrawButtonRect (ACanvas : TCanvas; AButtonRect : TRect; CloseBtn : Boolean);
begin
  ACanvas.Brush.Style := bsClear;
  ACanvas.Pen.Color := clWhite;
  ACanvas.Pen.Width := 1;
  InflateRect (AButtonRect, -1, -1);
  if CloseBtn then
    GradientFillRect (ACanvas, AButtonRect, clRed, clPurple, fdTopToBottom, 30)
  else
    GradientFillRect (ACanvas, AButtonRect, clBlue, clNavy, fdTopToBottom, 30);
  InflateRect (AButtonRect, 1, 1);
  ACanvas.RoundRect (AButtonRect.Left, AButtonRect.Top,
    AButtonRect.Right, AButtonRect.Bottom, 3, 3);
end;

procedure TxpCaption.DrawButtons (ACanvas : TCanvas; ATitleRect : TRect);
var
  ButtonRect : TRect;
  I : Integer;
begin
  ButtonRect := Rect (ATitleRect.Right - FButtonSize - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2,
    ATitleRect.Right - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2 + FButtonSize);


  //Close button
  if biSystemMenu in FxpWindow.FForm.BorderIcons then
  begin
    DrawButtonRect (ACanvas, ButtonRect, true);
    DrawCloseButtonImage (ACanvas, ButtonRect, tbsNormal);
    OffsetRect (ButtonRect, - FButtonSize - 2, 0);
  end;

  //Maximize button
  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMaximize in FxpWindow.FForm.BorderIcons) then
  begin
    DrawButtonRect (ACanvas, ButtonRect, false);
    DrawMaxButtonImage (ACanvas, ButtonRect, tbsNormal);
    OffsetRect (ButtonRect, - FButtonSize-2, 0);
  end;

  //Minimize button
  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMinimize in FxpWindow.FForm.BorderIcons) then
  begin
    DrawButtonRect (ACanvas, ButtonRect, false);
    DrawMinButtonImage (ACanvas, ButtonRect, tbsNormal);
    OffsetRect (ButtonRect, - FButtonSize-2, 0);
  end;

  For I := 1 to FCustomButtonCount do
  begin
    DrawButtonRect (ACanvas, ButtonRect, false);
    if Assigned (FxpWindow.FOnCustomButtonDraw) then
      FxpWindow.FOnCustomButtonDraw (Self, ACanvas, ButtonRect, I, tbsNormal);
    OffsetRect (ButtonRect, - FButtonSize-2, 0);
  end;
end;

function TxpCaption.PtInButton (APoint : TPoint; ATitleRect : TRect) : Integer;
var
  ButtonRect : TRect;
  I  : Integer;
  ABorderSize : Integer;
begin
  Result := -10; //HTCAPTION
{
     -10  HTCAPTION;
     -2   HTMENU;
     -1   HTSYSMENU;
      0   HTCLOSE;
      1   TMAXBUTTON;
      2   TMINBUTTON;
      else CustomButton
}
  if FShowBorder then ABorderSize := FBorderSize else ABorderSize := 0;

  if FDisplayAppIcon and PtInRect (Rect (ABorderSize + 2, ABorderSize+2,
     FHeight - 2, FHeight-2), APoint) then
  begin
    Result := -1;
    Exit;
  end;

  {if (GetMenu (FxpWindow.FForm.Handle) <> 0) and
     (PtInRect (Rect (ATitleRect.Left + ABorderSize, ATitleRect.Top + ABorderSize + FHeight+1,
                ATitleRect.Right - ABorderSize, ATitleRect.Top + ABorderSize + FHeight+1+GetSystemMetrics (SM_CYMENU)),
                APoint)) then
  begin
    Result := -2;
    Exit;
  end;}

  ButtonRect := Rect (ATitleRect.Right - FButtonSize - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2,
    ATitleRect.Right - 10, (ATitleRect.Bottom + ATitleRect.Top - FButtonSize) div 2 + FButtonSize);

  if biSystemMenu in FxpWindow.FForm.BorderIcons then
    if PtInRect (ButtonRect, APoint) then
    begin
      Result := 0;
      Exit;
    end
    else
      OffsetRect (ButtonRect, - FButtonSize - 2, 0);

  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMaximize in FxpWindow.FForm.BorderIcons) then
    if PtInRect (ButtonRect, APoint) then
    begin
      Result := 1;
      Exit;
    end
    else
      OffsetRect (ButtonRect, - FButtonSize - 2, 0);

  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMinimize in FxpWindow.FForm.BorderIcons) then
    if PtInRect (ButtonRect, APoint) then
    begin
      Result := 2;
      Exit;
    end
    else
      OffsetRect (ButtonRect, - FButtonSize - 2, 0);

  For I := 0 to FCustomButtonCount-1 do
  begin
    if PtInRect (ButtonRect, APoint) then
    begin
      Result := I + 3;
      Exit;
    end;
    OffsetRect (ButtonRect, - FButtonSize - 2, 0);
  end;

end;

procedure TxpCaption.DrawBorder (ACanvas : TCanvas; ABorderRect : TRect);
begin
  ACanvas.Pen.Width := FBorderSize;

  if FActiveWindow then
    ACanvas.Pen.Color := FBorderColor
  else
    ACanvas.Pen.Color := FBorderInActiveColor;

  ACanvas.Brush.Style := bsClear;
  ACanvas.Rectangle (ABorderRect.Left + FBorderSize div 2, ABorderRect.Top + FBorderSize div 2,
    ABorderRect.Right - FBorderSize div 2 + 1, ABorderRect.Bottom - FBorderSize div 2+1);

  if FxpWindow.xpCaption.RoundedCorners then
  begin
    ACanvas.RoundRect (ABorderRect.Left + FBorderSize div 2, ABorderRect.Top + FBorderSize div 2,
      ABorderRect.Right - FBorderSize div 2 + 1, ABorderRect.Bottom+cRoundedCorderRadius, cRoundedCorderRadius, cRoundedCorderRadius);
  end;

  //Draw Line under title
  if FVisible then
  begin
    ACanvas.MoveTo (ABorderRect.Left, ABorderRect.Top + FHeight + FBorderSize div 2);
    ACanvas.LineTo (ABorderRect.Right, ABorderRect.Top + FHeight + FBorderSize div 2);
  end;
end;

procedure TxpCaption.DrawTitle (ACanvas : TCanvas; ATitleRect : TRect);
var
  X, Y, Offs : Integer;
  IconBitmap : TBitmap;
  ABorderSize : Integer;
begin
  if FShowBorder then
    ABorderSize := FBorderSize
  else
    ABorderSize := 0;  
  // Filling title
  if FGradientFill then
  begin
    if FActiveWindow then
      GradientFillRect (ACanvas, ATitleRect, FActiveStartColor, FActiveEndColor, FFillDirection, 60)
    else
      GradientFillRect (ACanvas, ATitleRect, FInActiveStartColor, FInActiveEndColor, FFillDirection, 60);
  end
  else
  begin
    ACanvas.Brush.Color := FActiveStartColor;
    ACanvas.Brush.Style := bsSolid;
    ACanvas.FillRect (ATitleRect);
  end;

  ACanvas.Font.Assign (FFont);
  X := 10;
  Y := (ATitleRect.Top + ATitleRect.Bottom - ACanvas.TextHeight (FxpWindow.FForm.Caption)) div 2;

  //Calc application icon offset
  if FDisplayAppIcon then  Inc (X, FHeight - ABorderSize);

  //Draw title image
  if not FbgImage.Empty then
  begin
    FbgImage.TransparentMode := tmAuto;
    FbgImage.Transparent := False;
    case FImageAlign of
      iaLeft:
      begin
        if FImageTransparent then
          DrawBitmapTransparent (ACanvas, X, (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2, FbgImage, FbgImage.Canvas.Pixels [0,0])
        else
          ACanvas.Draw (X, (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2, FbgImage);
        Inc (X, FBGImage.Width + 10);
      end;
      iaRight:
      begin
        Offs := (GetSysButtonCount + FCustomButtonCount) * (FButtonSize + 2) + 10;
        if FImageTransparent then
          DrawBitmapTransparent (ACanvas, ATitleRect.Right - FBGImage.Width - 2 - Offs,
            (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2, FbgImage, FbgImage.Canvas.Pixels [0,0])
        else
          ACanvas.Draw (ATitleRect.Right - FBGImage.Width - 2 - Offs,
            (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2,
            FbgImage);
      end;
      iaCenter:
      begin
        if FImageTransparent then
          DrawBitmapTransparent (ACanvas, (ATitleRect.Right + ATitleRect.Left - FBGImage.Width) div 2,
            (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2, FbgImage, FbgImage.Canvas.Pixels [0,0])
        else
          ACanvas.Draw ((ATitleRect.Right + ATitleRect.Left - FBGImage.Width) div 2,
            (ATitleRect.Bottom + ATitleRect.Top - FBGImage.Height) div 2,
            FbgImage);
      end;
      iaStretch:
      begin
        if FImageTransparent then
          StretchBitmapRectTransparent (Acanvas, ATitleRect.Left, ATitleRect.Top, ATitleRect.Right- ATitleRect.Left, ATitleRect.Bottom - ATitleRect.Top,
            Rect (0, 0, FbgImage.Width, FbgImage.Height), FbgImage, FbgImage.Canvas.Pixels [0,0])
        else
          ACanvas.StretchDraw (ATitleRect, FbgImage);
      end;
      iaTile:
      begin
        FbgImage.TransparentMode := tmAuto;
        FbgImage.Transparent := FImageTransparent;

        TileImage (ACanvas, ATitleRect, FbgImage);
      end;
    end;
  end;

  //Draw application icons
  if FDisplayAppIcon then
  begin
    IconBitmap := TBitmap.Create;
    try
      if not FxpWindow.FForm.Icon.Empty then
      begin
        DrawIconEx (ACanvas.Handle, ABorderSize + 2, ABorderSize+2,
          FxpWindow.FForm.Icon.Handle, FHeight - ABorderSize - 4, FHeight - ABorderSize - 4, 0, 0, DI_NORMAL);
      end
      else
        DrawIconEx (ACanvas.Handle, ABorderSize + 2, ABorderSize+2,
          Application.Icon.Handle, FHeight - ABorderSize - 4, FHeight - ABorderSize - 4, 0, 0, DI_NORMAL);
    finally
      IconBitmap.Free;
    end;
  end;


  //Draw text
  if FxpWindow.FForm.Caption <> '' then
  begin
    ACanvas.Brush.Style := bsClear;
    ACanvas.Font.Color := clGray;
    ACanvas.TextOut (X+1, Y+1, FxpWindow.FForm.Caption);
    ACanvas.Font.Color := FFont.Color;
    ACanvas.TextOut (X, Y, FxpWindow.FForm.Caption);
  end;

  if Assigned (FxpWindow.FOnCustomDrawTitle) then
    FxpWindow.FOnCustomDrawTitle (self, ACanvas, ATitleRect, FActiveWindow);


  DrawButtons (ACanvas, ATitleRect);


end;


// Draw nonclient area
procedure TxpCaption.Draw (var AMessage : TMessage);
var
  UpdateRect : TRect;
  HeaderRect : TRect;
  DC : hDC;
  Image : TBitmap;
  NCCanvas : TCanvas;
begin
  //Get main window device context
  DC := GetWindowDC (FxpWindow.FForm.Handle);

  //Get window rectangle
  GetWindowRect (FxpWindow.FForm.Handle, UpdateRect);
  OffsetRect (UpdateRect, - UpdateRect.Left, - UpdateRect.Top);


  // if title visible ...
  if FVisible then
  begin
    //Calculate header rectangle
    HeaderRect := UpdateRect;
    HeaderRect.Bottom := FHeight;
    if FShowBorder then HeaderRect.Bottom := HeaderRect.Bottom  + FBorderSize;

    Image := TBitmap.Create;
    try
      Image.Width := HeaderRect.Right;
      Image.Height := HeaderRect.Bottom;
      DrawTitle (Image.Canvas, HeaderRect);
      BitBlt(DC, HeaderRect.Left, HeaderRect.Top, Image.Width, Image.Height,
           Image.Canvas.Handle, 0, 0, SRCCOPY);
    finally
      Image.Free;
    end;
  end;

  if FShowBorder then
  begin
    NCCanvas := TCanvas.Create;
    NCCanvas.Handle := DC;
    try
      DrawBorder (NCCanvas, UpdateRect);
    finally
      NCCanvas.Free;
    end;
  end;

  ReleaseDC(FxpWindow.FForm.Handle, DC);
end;


procedure TxpCaption.ProcessClientArea (var AMessage : TMessage);
var
  Rct     : TRect;
  pClientArea : PNCCalcSizeParams;
begin
  pClientArea := PNCCalcSizeParams (AMessage.LParam);
  if FVisible then
  begin
    Inc (pClientArea^.rgrc[0].top, FHeight);

    //Main menu
    //if GetMenu (FxpWindow.FForm.Handle) <> 0 then
    //  Inc (pClientArea^.rgrc[0].top, GetSystemMetrics (SM_CYMENU));
  end;

  if FShowBorder then
  begin
    InflateRect (pClientArea^.rgrc[0], -FBorderSize, -FBorderSize);
  end;

end;

procedure TxpCaption.ProcessHitTest (var AMessage : TMessage);
var
  HitInfo : TWMNCHitTest;
  ClientPoint : TPoint;
  WinRect : TRect;
  BtnCheck : Integer;
begin
  HitInfo := TWMNCHitTest (AMessage);
  GetWindowRect (FxpWindow.FForm.Handle, WinRect);
  ClientPoint := Point (HitInfo.XPos, HitInfo.YPos);

  //Check mouse on title
  if PtInRect (Rect (WinRect.Left + FBorderSize, WinRect.Top + 5, WinRect.Right - FBorderSize, WinRect.Top + FBorderSize + FHeight), ClientPoint) then
  begin
    BtnCheck := PtInButton (Point (ClientPoint.X - WinRect.Left, ClientPoint.Y - WinRect.Top),
                     Rect (0, 0, WinRect.Right - WinRect.Left, FHeight + FBorderSize) );
    case BtnCheck of
     -10: AMessage.Result := HTCAPTION;
     -2: AMessage.Result := HTMENU;
     -1: AMessage.Result := HTSYSMENU;
      0: AMessage.Result := HTCLOSE;
      1: AMessage.Result := HTMAXBUTTON;
      2: AMessage.Result := HTMINBUTTON;
      else
        AMessage.Result := HTOBJECT;
    end;
    //If left mouse button pressed and cursor left button area
    if (FDownedButton <> -10) and (BtnCheck <> FDownedButton) then
    begin
      //ChangeButtonState (FDownedButton, tbsNormal, Rect (WinRect.Left + FBorderSize, WinRect.Top + 5, WinRect.Right - FBorderSize, WinRect.Top + FBorderSize + FHeight));
      SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
      FDownedButton := -10;
    end;
    {else
      if (BtnCheck > -10) and (FDownedButton = -10) then
      begin
        ChangeButtonState (BtnCheck, tbsDowned, Rect (WinRect.Left + FBorderSize, WinRect.Top + 5, WinRect.Right - FBorderSize, WinRect.Top + FBorderSize + FHeight));
        SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
      end;}
  end
  else
  //Check mouse in menu
  //if PtInRect (Rect (WinRect.Left + FBorderSize, WinRect.Top + FBorderSize + FHeight,
  //                   WinRect.Right - FBorderSize, WinRect.Top + FBorderSize + FHeight + GetSystemMetrics (SM_CYMENU)),
  //                   ClientPoint) then
  //begin
  //   AMessage.Result := HTMENU;
  //   Exit;
  //end
  //else
  //Check mouse on LeftTop border
  if PtInRect (Rect (WinRect.Left, WinRect.Top, WinRect.Left + FBorderSize+5, WinRect.Top + FBorderSize + 5), ClientPoint) then
    AMessage.Result := HTTOPLEFT
  else
  //Check mouse on TopRight border
  if PtInRect (Rect (WinRect.Right - 5, WinRect.Top, WinRect.Right+1, WinRect.Top + 5), ClientPoint) then
    AMessage.Result := HTTOPRIGHT
  //Check mouse on BottomLeft border
  else
  if PtInRect (Rect (WinRect.Left, WinRect.Bottom - FBorderSize-5, WinRect.Left+5, WinRect.Bottom), ClientPoint) then
    AMessage.Result := HTBOTTOMLEFT
  //Check mouse on BottomRight border
  else
  if PtInRect (Rect (WinRect.Right-5, WinRect.Bottom - FBorderSize-5, WinRect.Right, WinRect.Bottom), ClientPoint) then
    AMessage.Result := HTBOTTOMRIGHT
  else
  //Check mouse on Left border
  if PtInRect (Rect (WinRect.Left, WinRect.Top + 5, WinRect.Left + FBorderSize, WinRect.Right - FBorderSize), ClientPoint) then
    AMessage.Result := HTLEFT
  else
  //Check mouse on Right border
  if PtInRect (Rect (WinRect.Right - FBorderSize, WinRect.Top + 5, WinRect.Right+1, WinRect.Bottom - 5), ClientPoint) then
    AMessage.Result := HTRIGHT
  else
  //Check mouse on Top border
  if PtInRect (Rect (WinRect.Left+5, WinRect.Top, WinRect.Right-5, WinRect.Top + FBorderSize), ClientPoint) then
    AMessage.Result := HTTOP
  //Check mouse on Bottom border
  else
  if PtInRect (Rect (WinRect.Left+5, WinRect.Bottom - FBorderSize, WinRect.Right-5, WinRect.Bottom), ClientPoint) then
    AMessage.Result := HTBOTTOM
  else
    AMessage.Result := HTCLIENT;
end;

procedure TxpCaption.ForceRedraw;
begin
  SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  FxpWindow.FForm.Repaint;
end;


procedure TxpCaption.SetImageTransparent (AValue : Boolean);
begin
  if FImageTransparent <> AValue then
  begin
    FImageTransparent := AValue;
    FxpWindow.ForceReDraw;
  end;
end;


procedure TxpCaption.SetHeight (AHeight : Integer);
begin
  FHeight := AHeight;
  SendMessage (FxpWindow.FForm.Handle, WM_SIZE, 0, 0);
end;

procedure TxpCaption.SetVisible (AVisible : Boolean);
begin
  FVisible := AVisible;
  FxpWindow.FForm.Invalidate;
end;

procedure TxpCaption.SetBGImage (AImage : TBitmap);
begin
  FbgImage.Assign (AImage);
  SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
end;

procedure TxpCaption.SetImageAlign (AImageAlign : TgbImageAlign);
begin
  if FImageAlign <> AImageAlign then
  begin
    FImageAlign := AImageAlign;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TxpCaption.SetGradientFill (AValue : Boolean);
begin
  if FGradientFill <> AValue then
  begin
    FGradientFill := AValue;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TxpCaption.SetGradFillDirection (ADirection : TFillDirection);
begin
  if FFillDirection <> ADirection then
  begin
    FFillDirection := ADirection;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TxpCaption.SetShowBorder (AValue : Boolean);
begin
  if FShowBorder <> AValue then
  begin
    FShowBorder := AValue;
    if (FActive) and (FxpWindow.Active) then
      FxpWindow.SetFormShape (FxpWindow.xpCaption.FRoundedCorners);
  end;
end;

procedure TxpCaption.SetBorderSize (AValue : Integer);
begin
  if FBorderSize <> AValue then
  begin
    FBorderSize := AValue;
    FxpWindow.ForceReDraw;
  end;
end;

procedure TxpCaption.SetActiveStartColor (AColor : TColor);
begin
  if FActiveStartColor <> AColor then
  begin
    FActiveStartColor := AColor;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TxpCaption.SetActiveEndColor (AColor : TColor);
begin
  if FActiveEndColor <> AColor then
  begin
    FActiveEndColor := AColor;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;

procedure TxpCaption.SetInActiveStartColor (AColor : TColor);
begin
  FInActiveStartColor := AColor;
end;

procedure TxpCaption.SetInActiveEndColor (AColor : TColor);
begin
  FInActiveEndColor := AColor;
end;

procedure TxpCaption.SetBorderColor (AValue : TColor);
begin
  if FBorderColor <> AValue then
  begin
    FBorderColor := AValue;
    FxpWindow.ForceReDraw;
  end;
end;

procedure TxpCaption.SetBorderInActiveColor (AValue : TColor);
begin
  if FBorderInActiveColor <> AValue then
  begin
    FBorderInActiveColor := AValue;
    FxpWindow.ForceReDraw;
  end;
end;

procedure TxpCaption.SetButtonSize (AValue : Integer);
begin
  if AValue < 10 then AValue := 10;
  if FButtonSize <> AValue then
  begin
    FButtonSize := AValue;
    FxpWindow.ForceReDraw;
  end;
end;

procedure TxpCaption.SetCustomButtonCount (AValue : Integer);
begin
  if AValue < 0 then AValue := 0;
  if FCustomButtonCount <> AValue then
  begin
    FCustomButtonCount := AValue;
    FxpWindow.ForceReDraw;
  end;
end;

function  TxpCaption.GetSysButtonCount : Integer;
begin
  Result := 0;
  if biSystemMenu in FxpWindow.FForm.BorderIcons then Inc (Result);
  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMaximize in FxpWindow.FForm.BorderIcons) then Inc (Result);
  if (biSystemMenu in FxpWindow.FForm.BorderIcons) and (biMinimize in FxpWindow.FForm.BorderIcons) then Inc (Result);
end;


procedure TxpCaption.SetRoundedCorners (AValue : Boolean);
begin
  if FRoundedCorners <> AValue then
  begin
    FRoundedCorners := AValue;
    if FActive then FxpWindow.SetFormShape (FRoundedCorners);
    //FForm.Repaint;
  end;
end;

procedure TxpCaption.SetDisplayAppIcon (AValue : Boolean);
begin
  if FDisplayAppIcon <> AValue then
  begin
    FDisplayAppIcon := AValue;
    SendMessage (FxpWindow.FForm.Handle, WM_NCPAINT, 0, 0);
  end;
end;




{******************************************************************************/
/*****  T x p W I N D O W    m e t h o d s   i m p l e m e n t a t i o n ******/
/******************************************************************************}

constructor TxpWindow.Create (AOwner : TComponent);
var
  ParentControl : TWinControl;
begin
  inherited;

  FActive := False;
  ParentControl := AOwner as TWinControl;
  while (ParentControl <> nil) and (not (ParentControl is TForm)) do
    ParentControl := ParentControl.Parent;

  if (ParentControl <> nil) then
  begin
    FForm := ParentControl as TForm;
    GetWindowRgn(FForm.Handle, FOriginalRgn);
    SaveOrignCaptionVisibility;
  end
  else
    FForm := nil;

  FWindowProc := MakeObjectInstance (HookedWindowProc);

  FSizeInfo := TWindowSizeInfo.Create;
  FStickWindow := TStickWindow.Create;
  FxpCaption := TxpCaption.Create (self);

  FOnCustomDrawTitle := nil;
  FOnCustomButtonDraw := nil;
  FOnCustomButtonClick := nil;
end;

destructor TxpWindow.Destroy;
begin
  inherited;
  FSizeInfo.Free;
  FStickWindow.Free;
  FxpCaption.Free;
end;


procedure TxpWindow.SaveOrignCaptionVisibility;
var
  winStyle : LongInt;
begin
  winStyle := GetWindowLong(FForm.Handle, GWL_STYLE);
  FOriginalCaptionVisibility := (winStyle and WS_CAPTION) = WS_CAPTION;
end;


procedure TxpWindow.SetFormShape (ARoundedCorner : Boolean);
Var
  WinRgn : HRGN;
  WinRgn1 : HRGN;
begin
  WinRgn := 0;
  GetWindowRgn(FForm.Handle, WinRgn);
  DeleteObject(WinRgn);
  if ARoundedCorner then
  begin
    WinRgn := CreateRoundRectRgn (0, 0, FForm.Width+1, FForm.Height, cRoundedCorderRadius, cRoundedCorderRadius);
    WinRgn1 := CreateRectRgn (0, cRoundedCorderRadius, FForm.Width+1, FForm.Height);
    CombineRgn (WinRgn, WinRgn, WinRgn1, RGN_OR);
    DeleteObject (WinRgn1);
  end
  else
    WinRgn := CreateRectRgn (0, 0, FForm.Width+1, FForm.Height);
  SetWindowRgn(FForm.Handle, WinRgn, True);
end;

procedure TxpWindow.RestoreFormShape;
begin
  SetWindowRgn(FForm.Handle, FOriginalRgn, true);
end;

procedure TxpWindow.SetMinMaxInfo (var AMessage : TMessage);
var
  MinMaxInfo : PMinMaxInfo;
begin
  MinMaxInfo := PMinMaxInfo (AMessage.LParam);
  MinMaxInfo^.ptMaxSize := Point (FSizeInfo.MaxSizeWidth, FSizeInfo.MaxSizeHeight);
  MinMaxInfo^.ptMaxPosition := Point (FSizeInfo.MaxPositionX, FSizeInfo.MaxPositionY);
  MinMaxInfo^.ptMinTrackSize := Point (FSizeInfo.MinTrackWidth, FSizeInfo.MinTrackHeight);
  MinMaxInfo^.ptMaxTrackSize := Point (FSizeInfo.MaxTrackWidth, FSizeInfo.MaxTrackHeight);
end;

procedure TxpWindow.HookedWindowProc (var Msg: TMessage);
var
  Handled : Boolean;
begin
  Handled := False;
  if (FForm <> nil) then
    case Msg.Msg of
      WM_GETMINMAXINFO:
        begin
          if FSizeInfo.Active then
          begin
            Handled := True;
            Msg.Result := 0;
            SetMinMaxInfo (Msg);
          end;
        end;
      WM_SIZE, WM_SIZING:
        begin
          if xpCaption.Active then
            SetFormShape (xpCaption.FRoundedCorners);
          //Handled := True;
          //Msg.Result := 0;
        end;
      WM_WINDOWPOSCHANGING:
        begin
          if FStickWindow.FActive then
          begin
            FStickWindow.DoStick (Msg);
            Handled := True;
            Msg.Result := 0;
          end;
        end;
      WM_NCCREATE:
        begin
          if FxpCaption.Active then
          begin
            FxpCaption.WMNCCreate (Msg);
          end;
        end;
      WM_NCLBUTTONDOWN:
        begin
          if FxpCaption.Active then
          begin
            Handled := FxpCaption.ProcessLButtonDown (Msg);
          end;
        end;
      WM_NCLBUTTONUP:
        begin
          if FxpCaption.Active then
          begin
            Handled := FxpCaption.ProcessLButtonUp (Msg);
          end;
        end;
      WM_NCPAINT:
        begin
          if FxpCaption.Active then
          begin
            FxpCaption.Draw (Msg);
            Handled := True;
            Msg.Result := 0;
          end;
        end;
      WM_NCACTIVATE:
        begin
          FxpCaption.FActiveWindow := (Msg.WParam <> 0);
          if FxpCaption.Active then
          begin
            ForceReDraw;
            Handled := True;
            if Msg.WParam = 0 then Msg.Result := 1
              else Msg.Result := 0;
          end;
        end;
      WM_NCCALCSIZE:
        begin
          if FxpCaption.Active then
          begin
            FxpCaption.ProcessClientArea (Msg);
            Handled := True;
            Msg.Result := 0
          end;
      end;
      WM_NCHITTEST:
        begin
          if FxpCaption.Active then
          begin
            FxpCaption.ProcessHitTest (Msg);
            Handled := True;
          end;
        end;
    end;

  if not Handled then
  begin
    Msg.Result := CallWindowProc(FOldWindowProc, FForm.Handle, Msg.Msg, Msg.WParam, Msg.LParam);
  end;
end;


procedure TxpWindow.HookWindow;
begin
  if not (csDesigning in ComponentState) and (Owner is TControl) then
  begin
    if (FOldWindowProc = nil) then
    begin
      FOldWindowProc := Pointer (GetWindowLong(FForm.Handle, GWL_WNDPROC));
      SetWindowLong(FForm.Handle, GWL_WNDPROC, Integer(FWindowProc));
    end;
  end;
end;

procedure TxpWindow.UnhookWindow;
begin
  if not (csDesigning in ComponentState) and (Owner is TControl) then
  begin
    if FOldWindowProc <> nil then
        SetWindowLong(FForm.Handle, GWL_WNDPROC, Integer(FOldWindowProc));
    FOldWindowProc := nil;
  end;
end;


procedure TxpWindow.Loaded;
begin
  inherited Loaded;

  if FActive then
  begin
    FActive := False;
    SetActive (true);
  end;

  if FSizeInfo.UseSystemSettings then
  begin
    FSizeInfo.FUseSystemSettings := False;
    FSizeInfo.SetSystemSettings (true);
  end;

  if xpCaption.Active and xpCaption.FRoundedCorners and not (csDesigning in ComponentState) then SetFormShape (true);

  if not (csDesigning in ComponentState) then ForceReDraw;
end;

procedure TxpWindow.ForceReDraw;
begin
  SendMessage (FForm.Handle, WM_NCPAINT, 0, 0);
  FForm.Repaint;
end;



procedure TxpWindow.CaptionVisible (AVisible : Boolean);
var
  WinRgn : HRGN;
  winStyle : Longint;
begin
  if not (csDesigning in ComponentState) and (FForm <> nil) then
  begin
    winStyle := GetWindowLong(FForm.Handle, GWL_STYLE);
    if AVisible then
      winStyle := winStyle or WS_CAPTION
    else
      winStyle := winStyle and (not WS_CAPTION);
    SetWindowLong(FForm.Handle, GWL_STYLE, winStyle);

    WinRgn := 0;
    GetWindowRgn(FForm.Handle, WinRgn);
    SetWindowRgn(FForm.Handle, 0, True); // forces a repaint of whole window
    SetWindowRgn(FForm.Handle, WinRgn, True); // resizes window appropriately
  end;
end;


procedure TxpWindow.SetActive (AActive : Boolean);
begin
  if FActive <> AActive then
  begin
    FActive := AActive;
    if FActive then
    begin
      HookWindow;
      if xpCaption.Active then
      begin
        xpCaption.FActive := False;
        xpCaption.Active := True;
      end;  
    end
    else
    begin
      UnHookWindow;
      CaptionVisible (FOriginalCaptionVisibility);
    end;
    ForceReDraw;

    //if FActive then SetFormShape else RestoreFormShape;
  end;
end;

function  TxpWindow.GetActive : Boolean;
begin
  Result := FActive;
end;

procedure TxpWindow.SetSizeInfo (AInfo : TWindowSizeInfo);
begin
  FSizeInfo.Assign (AInfo);
end;

function  TxpWindow.GetSizeInfo : TWindowSizeInfo;
begin
  Result := FSizeInfo;
end;

procedure TxpWindow.SetStickWindow (AStick : TStickWindow);
begin
  FStickWindow.Assign (AStick);
end;


procedure TxpWindow.SetXPCaption (ACaption : TxpCaption);
begin
  FxpCaption.Assign (ACaption);
end;

procedure Register;
begin
  RegisterComponents('XP Controls', [TxpWindow]);
end;

end.
