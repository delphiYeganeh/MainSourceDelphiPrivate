unit fcImager;
{
//
// Components : TfcImager
//
// Copyright (c) 1999 by Woll2Woll Software
// 4/21/99 - RSW - Added CopyToClipboard method
// 8/2/99 - Check if parent is nil in BitmapChange event.
}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  fcCommon, fcBitmap, fcChangeLink, db, dbctrls, stdctrls;

{$i fcIfDef.pas}

type
  TfcImagerDrawStyle = (dsNormal, dsCenter, dsStretch, dsTile, dsProportional);

  TfcBitmapOptions = class;

  TfcRotate = class(TPersistent)
  private
    FBitmapOptions: TfcBitmapOptions;

    FCenterX: Integer;
    FCenterY: Integer;
    FAngle: Integer;

    procedure SetAngle(Value: Integer);
    procedure SetCenterX(Value: Integer);
    procedure SetCenterY(Value: Integer);
  public
    constructor Create(BitmapOptions: TfcBitmapOptions);
  published
    property CenterX: Integer read FCenterX write SetCenterX;
    property CenterY: Integer read FCenterY write SetCenterY;
    property Angle: Integer read FAngle write SetAngle;
  end;

  TfcAlphaBlend = class(TPersistent)
  private
    FBitmapOptions: TfcBitmapOptions;

    FAmount: Byte;
    FBitmap: TfcBitmap;
    FChanging: Boolean;

    function GetTransparent: Boolean;
    procedure SetAmount(Value: Byte);
    procedure SetBitmap(Value: TfcBitmap);
    procedure SetTransparent(Value: Boolean);
  protected
    procedure BitmapChanged(Sender: TObject); virtual;
  public
    constructor Create(BitmapOptions: TfcBitmapOptions);
    destructor Destroy; override;
  published
    property Amount: Byte read FAmount write SetAmount;
    property Bitmap: TfcBitmap read FBitmap write SetBitmap;
    property Transparent: Boolean read GetTransparent write SetTransparent;
  end;

  TfcWave = class(TPersistent)
  private
    FBitmapOptions: TfcBitmapOptions;
    FXDiv, FYDiv, FRatio: Integer;
    FWrap: Boolean;

    procedure SetXDiv(Value: Integer);
    procedure SetYDiv(Value: Integer);
    procedure SetRatio(Value: Integer);
    procedure SetWrap(Value: Boolean);
  public
    constructor Create(BitmapOptions: TfcBitmapOptions);
  published
    property XDiv: Integer read FXDiv write SetXDiv;
    property YDiv: Integer read FYDiv write SetYDiv;
    property Ratio: Integer read FRatio write SetRatio;
    property Wrap: Boolean read FWrap write SetWrap;
  end;

  TfcBitmapOptions = class(TPersistent)
  private
    FComponent: TComponent;

    FAlphaBlend: TfcAlphaBlend;
    FColor: TColor;
    FContrast: Integer;
    FEmbossed: Boolean;
    FTintColor: TColor;
    FGaussianBlur: Integer;
    FGrayScale: Boolean;
    FHorizontallyFlipped: Boolean;
    FInverted: Boolean;
    FLightness: Integer;
    FRotation: TfcRotate;
    FSaturation: Integer;
    FSharpen: Integer;
    FSponge: Integer;
    FTile: Boolean;
    FVerticallyFlipped: Boolean;
    FWave: TfcWave;

    FOnChange: TNotifyEvent;
    FOrigPicture: TPicture;
    FDestBitmap: TfcBitmap;
    FUpdateLock: Integer;

    // Property Access methods;
    procedure SetColor(Value: TColor);
    procedure SetBooleanProperty(Index: Integer; Value: Boolean);
    procedure SetTintColor(Value: TColor);
    procedure SetIntegralProperty(Index: Integer; Value: Integer);
  public
    constructor Create(AComponent: TComponent);
    destructor Destroy; override;

    procedure BeginUpdate; virtual;
    procedure Changed; virtual;
    procedure EndUpdate;

    property DestBitmap: TfcBitmap read FDestBitmap write FDestBitmap;
    property OrigPicture: TPicture read FOrigPicture write FOrigPicture;
    property Tile: Boolean read FTile write FTile;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
  published
    property AlphaBlend: TfcAlphaBlend read FAlphaBlend write FAlphaBlend;
    property Color: TColor read FColor write SetColor;
    property Contrast: Integer index 4 read FContrast write SetIntegralProperty;
    property Embossed: Boolean index 0 read FEmbossed write SetBooleanProperty;
    property TintColor: TColor read FTintColor write SetTintColor;
    property GaussianBlur: Integer index 3 read FGaussianBlur write SetIntegralProperty;
    property GrayScale: Boolean index 2 read FGrayScale write SetBooleanProperty;
    property HorizontallyFlipped: Boolean index 3 read FHorizontallyFlipped write SetBooleanProperty;
    property Inverted: Boolean index 1 read FInverted write SetBooleanProperty;
    property Lightness: Integer index 0 read FLightness write SetIntegralProperty;
    property Rotation: TfcRotate read FRotation write FRotation;
    property Saturation: Integer index 1 read FSaturation write SetIntegralProperty;
    property Sharpen: Integer index 5 read FSharpen write SetIntegralProperty;
    property Sponge: Integer index 2 read FSponge write SetIntegralProperty;
    property VerticallyFlipped: Boolean index 4 read FVerticallyFlipped write SetBooleanProperty;
    property Wave: TfcWave read FWave write FWave;
  end;

  TfcCustomImager = class(TGraphicControl)
  private
    { Private declarations }
    FAutoSize: Boolean;
    FBitmapOptions: TfcBitmapOptions;
    FDrawStyle: TfcImagerDrawStyle;
    FEraseBackground: Boolean;
    FPreProcess: Boolean;
    FWorkBitmap: TfcBitmap;
    FPicture: TPicture;
    FChangeLinks: TList;
    FRespectPalette: boolean;
    FTransparent: boolean;  // Keep track in component instead of in picture
                            // This helps databound case support transparency
    FWinControl: TWinControl;
    FFocusable: boolean;
    FOnKeyPress: TKeyPressEvent;
    FOnKeyDown, FOnKeyUp: TKeyEvent;
    FTabStop: boolean;

    procedure SetTabStop(value: boolean);
    function GetRespectPalette: Boolean;
    function GetSmoothStretching: Boolean;
    function GetTransparent: Boolean;
    function GetTransparentColor: TColor;
    procedure SetAutoSize(Value: Boolean);
    procedure SetDrawStyle(Value: TfcImagerDrawStyle);
    procedure SetEraseBackground(Value: Boolean);
    procedure SetPreProcess(Value: Boolean);
    procedure SetPicture(Value: TPicture);
    procedure SetRespectPalette(Value: Boolean);
    procedure SetSmoothStretching(Value: Boolean);
    procedure SetTransparent(Value: Boolean);
    procedure SetTransparentColor(Value: TColor);
    function GetDrawRect: TRect;
    procedure NotifyChanges;
    procedure SetFocusable(Value: boolean);
  protected
    Function CreateImagerWinControl: TWinControl; virtual;
    procedure SetParent(Value: TWinControl); override;
    procedure BitmapOptionsChange(Sender: TObject); virtual;
    procedure BitmapChange(Sender: TObject); virtual;
    procedure UpdateAutoSize; virtual;

    procedure Loaded; override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Paint; override;
    procedure WndProc(var Message: TMessage); override;

    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure KeyUp(var Key: Word; Shift: TShiftState); virtual;
    procedure KeyDown(var Key: Word; Shift: TShiftState); virtual;
    procedure KeyPress(var Key: Char); virtual;
    procedure DoEnter; virtual;
    procedure DoExit; virtual;

    property EraseBackground: Boolean read FEraseBackground write SetEraseBackground default True;
  public
    UpdatingAutoSize: Boolean;
    InSetBounds: boolean;
    Patch: Variant;

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    function PictureEmpty: Boolean; virtual;
    procedure Invalidate; override;
    procedure RegisterChanges(ChangeLink: TfcChangeLink); virtual;
    procedure Resized; virtual;
    procedure UpdateWorkBitmap; virtual;
    procedure UnRegisterChanges(ChangeLink: TfcChangeLink); virtual;
    procedure SetBounds(ALeft, ATop, AWidth, AHeight: Integer); override;
    procedure CopyToClipboard; virtual;
    procedure PasteFromClipboard; virtual;
    procedure CutToClipboard; virtual;

    property Align;
    property AutoSize: Boolean read FAutoSize write SetAutoSize;
    property BitmapOptions: TfcBitmapOptions read FBitmapOptions write FBitmapOptions;
    property DrawStyle: TfcImagerDrawStyle read FDrawStyle write SetDrawStyle;
    property PreProcess: Boolean read FPreProcess write SetPreProcess;
    property Picture: TPicture read FPicture write SetPicture;
    property RespectPalette: Boolean read GetRespectPalette write SetRespectPalette default True;
    property SmoothStretching: Boolean read GetSmoothStretching write SetSmoothStretching;
    property Transparent: Boolean read GetTransparent write SetTransparent;
    property TransparentColor: TColor read GetTransparentColor write SetTransparentColor;
    property WorkBitmap: TfcBitmap read FWorkBitmap;
    property Focusable: boolean read FFocusable write SetFocusable;
    property TabStop: boolean read FTabStop write SetTabStop;
    property OnKeyPress : TKeyPressEvent read FOnKeyPress write FOnKeyPress;
    property OnKeyDown : TKeyEvent read FOnKeyDown write FOnKeyDown;
    property OnKeyUp : TKeyEvent read FOnKeyUp write FOnKeyUp;
  end;

  TfcImager = class(TfcCustomImager)
  published
    { Published declarations }
    property Align;
    property AutoSize;
    property BitmapOptions;
    property DrawStyle;
    property Picture;
    property PreProcess;
    property RespectPalette;
    property SmoothStretching;
    property Transparent;
    property TransparentColor;
    property Visible;
    property Focusable;

    property Anchors;
    property Constraints;
    property OnEndDock;
    property OnStartDock;
    property OnClick;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
    property TabStop;
    property OnKeyPress;
    property OnKeyDown;
    property OnKeyUp;
  end;

  TfcDBImager = class(TfcCustomImager)
  private
    FDataLink: TFieldDataLink;
    FPictureLoaded: boolean;
    FAutoDisplay: Boolean;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure DataChange(Sender: TObject);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetField: TField;
    function GetReadOnly: Boolean;
    procedure SetReadOnly(Value: Boolean);
    procedure UpdateData(Sender: TObject);
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetAutoDisplay(Value: Boolean);
  protected
    procedure Notification(AComponent: TComponent;
      Operation: TOperation); override;
    procedure LoadPicture; virtual;

    procedure KeyPress(var Key: Char); override;
    procedure DoExit; override;
    procedure Paint; override;
    procedure BitmapChange(Sender: TObject); override;

  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure CopyToClipboard; override;
    procedure PasteFromClipboard; override;
    procedure CutToClipboard; override;
  published
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property AutoDisplay: Boolean read FAutoDisplay write SetAutoDisplay default True;
    property TabStop;
    property Focusable;
    property OnKeyPress;
    property OnKeyDown;
    property OnKeyUp;
  end;

implementation

uses clipbrd;

constructor TfcRotate.Create(BitmapOptions: TfcBitmapOptions);
begin
  inherited Create;
  FCenterX := -1;
  FCenterY := -1;
  FBitmapOptions := BitmapOptions;
end;

procedure TfcRotate.SetCenterX(Value: Integer);
begin
  if FCenterX <> Value then
  begin
    FCenterX := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcRotate.SetCenterY(Value: Integer);
begin
  if FCenterY <> Value then
  begin
    FCenterY := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcRotate.SetAngle(Value: Integer);
begin
  if FAngle <> Value then
  begin
    FAngle := Value;
    FBitmapOptions.Changed;
  end;
end;

constructor TfcAlphaBlend.Create(BitmapOptions: TfcBitmapOptions);
begin
  inherited Create;
  FBitmapOptions := BitmapOptions;
  FBitmap := TfcBitmap.Create;
//  FBitmap.OnChange := BitmapChanged;
end;

destructor TfcAlphaBlend.Destroy;
begin
  FBitmap.Free;
  inherited;
end;

procedure TfcAlphaBlend.BitmapChanged(Sender: TObject);
begin
  if FChanging then Exit;
  FChanging := True;
  FBitmapOptions.Changed;
  FChanging := False;
end;

function TfcAlphaBlend.GetTransparent: Boolean;
begin
  result := Bitmap.Transparent;
end;

procedure TfcAlphaBlend.SetTransparent(Value: Boolean);
begin
  Bitmap.Transparent := Value;
end;

procedure TfcAlphaBlend.SetAmount(Value: Byte);
begin
  if FAmount <> Value then
  begin
    FAmount := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcAlphaBlend.SetBitmap(Value: TfcBitmap);
begin
  FBitmap.Assign(Value);
end;

constructor TfcWave.Create(BitmapOptions: TfcBitmapOptions);
begin
  inherited Create;
  FBitmapOptions := BitmapOptions;
end;

procedure TfcWave.SetXDiv(Value: Integer);
begin
  if FXDiv <> Value then
  begin
    FXDiv := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcWave.SetYDiv(Value: Integer);
begin
  if FYDiv <> Value then
  begin
    FYDiv := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcWave.SetRatio(Value: Integer);
begin
  if FRatio <> Value then
  begin
    FRatio := Value;
    FBitmapOptions.Changed;
  end;
end;

procedure TfcWave.SetWrap(Value: Boolean);
begin
  if FWrap <> Value then
  begin
    FWrap := Value;
    FBitmapOptions.Changed;
  end;
end;

constructor TfcBitmapOptions.Create(AComponent: TComponent);
begin
  inherited Create;
  FComponent := AComponent;

  FAlphaBlend := TfcAlphaBlend.Create(self);
  FRotation := TfcRotate.Create(self);
  FColor := clNone;
  FTintColor := clNone;
  FSaturation := -1;
  FWave := TfcWave.Create(self);
end;

destructor TfcBitmapOptions.Destroy;
begin
  FAlphaBlend.Free;
  FRotation.Free;
  FWave.Free;
  inherited;
end;

procedure TfcBitmapOptions.Changed;
var TmpBitmap: TfcBitmap;
begin
  if (csLoading in FComponent.ComponentState) or DestBitmap.Empty or ((OrigPicture.Graphic = nil) or OrigPicture.Graphic.Empty) or (FUpdateLock > 0) then Exit;
  if (DestBitmap.Width = OrigPicture.Width) and (DestBitmap.Height = OrigPicture.Height) then
    DestBitmap.Assign(OrigPicture.Graphic)
  else begin
    if Tile then fcTileDraw(OrigPicture.Graphic, DestBitmap.Canvas, Rect(0, 0, DestBitmap.Width, DestBitmap.Height))
    else begin
      TmpBitmap := TfcBitmap.Create;
      TmpBitmap.Assign(OrigPicture.Graphic);
      TmpBitmap.SmoothStretching := TfcCustomImager(FComponent).SmoothStretching;
      try
        DestBitmap.Canvas.StretchDraw(Rect(0, 0, DestBitmap.Width, DestBitmap.Height), TmpBitmap);
      finally
        TmpBitmap.Free;
      end;
    end;
  end;

  if FGrayScale then DestBitmap.GrayScale;
  if FLightness <> 0 then DestBitmap.Brightness(FLightness);
  if (FAlphaBlend.Amount <> 0) and not FAlphaBlend.Bitmap.Empty then
    DestBitmap.AlphaBlend(FAlphaBlend.Bitmap, FAlphaBlend.Amount, True);
  if FColor <> clNone then with fcGetColor(ColorToRGB(FColor)) do
    DestBitmap.Colorize(r, g, b);
  if FTintColor <> clNone then with fcGetColor(ColorToRGB(FTintColor)) do
    DestBitmap.ColorTint(r div 2, g div 2, b div 2);
  if FSponge <> 0 then DestBitmap.Sponge(FSponge);
  if FSaturation <> -1 then DestBitmap.Saturation(FSaturation);
  if FGaussianBlur <> 0 then DestBitmap.GaussianBlur(FGaussianBlur);
  if FEmbossed then DestBitmap.Emboss;
  if FInverted then DestBitmap.Invert;
  if FContrast <> 0 then DestBitmap.Contrast(FContrast);
  if FSharpen <> 0 then DestBitmap.Sharpen(FSharpen);
  if FHorizontallyFlipped then DestBitmap.Flip(True);
  if FVerticallyFlipped then DestBitmap.Flip(False);
  with FWave do if (Ratio <> 0) and (XDiv <> 0) and (YDiv <> 0) then
    DestBitmap.Wave(XDiv, YDiv, Ratio, Wrap);
  if FRotation.Angle <> 0 then with Rotation do
    DestBitmap.Rotate(Point(CenterX, CenterY), Angle);

  if Assigned(FOnChange) then FOnChange(self);
end;

procedure TfcBitmapOptions.BeginUpdate;
begin
  inc(FUpdateLock);
end;

procedure TfcBitmapOptions.EndUpdate;
begin
  if FUpdateLock > 0 then dec(FUpdateLock);
  Changed;
end;

procedure TfcBitmapOptions.SetColor(Value: TColor);
begin
  if FColor <> Value then
  begin
    FColor := Value;
    Changed;
  end;
end;

procedure TfcBitmapOptions.SetTintColor(Value: TColor);
begin
  if FTintColor <> Value then
  begin
    FTintColor := Value;
    Changed;
  end;
end;

procedure TfcBitmapOptions.SetIntegralProperty(Index: Integer; Value: Integer);
  procedure DoCheck(StorageVar: PInteger);
  begin
    if StorageVar^ <> Value then
    begin
      StorageVar^ := Value;
      Changed;
    end;
  end;
begin
  case Index of
    0: DoCheck(@FLightness);
    1: DoCheck(@FSaturation);
    2: DoCheck(@FSponge);
    3: DoCheck(@FGaussianBlur);
    4: DoCheck(@FContrast);
    5: DoCheck(@FSharpen);
  end;
end;

type PBoolean = ^Boolean;

procedure TfcBitmapOptions.SetBooleanProperty(Index: Integer; Value: Boolean);
  procedure DoCheck(StorageVar: PBoolean);
  begin
    if StorageVar^ <> Value then
    begin
      StorageVar^ := Value;
      Changed;
    end;
  end;
begin
  case Index of
    0: DoCheck(@FEmbossed);
    1: DoCheck(@FInverted);
    2: DoCheck(@FGrayScale);
    3: DoCheck(@FHorizontallyFlipped);
    4: DoCheck(@FVerticallyFlipped);
  end;
end;

constructor TfcCustomImager.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
//  FBitmap := TfcBitmap.Create;
//  FBitmap.OnChange := BitmapChange;
  FEraseBackground:= True;
  FPicture := TPicture.Create;
  FPicture.OnChange := BitmapChange;
  FWorkBitmap := TfcBitmap.Create;
  FRespectPalette:= True;
  FWorkBitmap.RespectPalette := True;
  FWorkBitmap.UseHalftonePalette:= True;
  FBitmapOptions := TfcBitmapOptions.Create(self);
  FBitmapOptions.OnChange := BitmapOptionsChange;
  FBitmapOptions.DestBitmap := FWorkBitmap;
  FBitmapOptions.OrigPicture := FPicture;
  ControlStyle := ControlStyle + [csOpaque];
  FPreProcess := True;
  FChangeLinks := TList.Create;
  Width := 100;
  Height := 100;
end;

destructor TfcCustomImager.Destroy;
begin
  FPicture.Free;
  FPicture:= nil;
  FBitmapOptions.Free;
  FWorkBitmap.Free;
  FChangeLinks.Free;
  inherited Destroy;
end;

function TfcCustomImager.GetDrawRect: TRect;
begin
  case DrawStyle of
    dsNormal: result := Rect(0, 0, Picture.Width, Picture.Height);
    dsCenter: with Point(Width div 2 - FWorkBitmap.Width div 2,
        Height div 2 - FWorkBitmap.Height div 2) do
      result := Rect(x, y, Width - x, Height - y);
    dsTile, dsStretch: result := Rect(0, 0, Width, Height);
    dsProportional: result := fcProportionalRect(Rect(0, 0, Width, Height), FWorkBitmap.Width, FWorkBitmap.Height);
  end
end;

procedure TfcCustomImager.SetDrawStyle(Value: TfcImagerDrawStyle);
begin
  if FDrawStyle <> Value then
  begin
    FDrawStyle := Value;
    BitmapOptions.Tile := FDrawStyle = dsTile;
    Resized;
    Invalidate;
  end;
end;

procedure TfcCustomImager.SetEraseBackground(Value: Boolean);
var r: TRect;
begin
  if FEraseBackground <> Value then
  begin
    FEraseBackground := Value;
    if Parent <> nil then begin
       r:= BoundsRect;
       InvalidateRect(Parent.Handle, @r, True);
//       Parent.Invalidate;
    end
  end;
end;

procedure TfcCustomImager.SetParent(Value: TWinControl);
begin
  inherited;
end;

procedure TfcCustomImager.BitmapOptionsChange(Sender: TObject);
var r: TRect;
begin
  if Parent <> nil then
  begin
    r := BoundsRect;
    InvalidateRect(Parent.Handle, @r, Transparent);
  end;
  NotifyChanges;
end;

procedure TfcCustomImager.NotifyChanges;
var i: Integer;
begin
  for i := 0 to FChangeLinks.Count - 1 do with TfcChangeLink(FChangeLinks[i]) do
  begin
    Sender := WorkBitmap;
    Change;
  end;
end;

procedure TfcCustomImager.BitmapChange(Sender: TObject);
var r: TRect;
begin
  Resized;
  r := BoundsRect;
  if Parent<>nil then { 8/2/99 }
     InvalidateRect(Parent.Handle, @r, True);
  NotifyChanges;
end;

procedure TfcCustomImager.Resized;
begin
//  if (not InSetBounds) and EraseBackground and not Transparent and not PictureEmpty and not WorkBitmap.Empty and (Parent <> nil) then
//    SendMessage(Parent.Handle, WM_ERASEBKGND, Canvas.Handle, 0);
  if csLoading in ComponentState then Exit;
  if not PreProcess and not (DrawStyle in [dsNormal, dsCenter]) then
    FWorkBitmap.SetSize(Width, Height)
  else begin
     if BitmapOptions.Rotation.Angle <> 0 then { 10/5/99 }
        FWorkBitmap.SetSize(fcMax(Picture.Width, Picture.Height), fcMax(Picture.Height, Picture.Width))
     else
        FWorkBitmap.SetSize(Picture.Width, Picture.Height)
  end;
  UpdateWorkBitmap;
  UpdateAutoSize;
end;

procedure TfcCustomImager.UpdateAutoSize;
begin
  if FAutoSize and not PictureEmpty and not (csLoading in ComponentState) and (Align = alNone) then
  begin
    UpdatingAutosize := True;
{    if DrawStyle = dsProportional then
    begin
      with fcProportionalRect(Rect(0, 0, Width, Height), Bitmap.Width, Bitmap.Height) do
        if (Width <> Right - Left) or (Height <> Bottom - Top) then
          SetBounds(self.Left, self.Top, self.Left + (Right - Left), self.Top + (Bottom - Top))
    end else }if (Width <> Picture.Width) or (Height <> Picture.Height) then
      SetBounds(Left, Top, Picture.Width, Picture.Height);
    UpdatingAutosize := False;
  end;
end;

procedure TfcCustomImager.UpdateWorkBitmap;
begin
  if not PictureEmpty and not (csLoading in ComponentState) then
  begin
    if FWorkBitmap.Empty then Resized;
    BitmapOptions.Changed;
  end;
end;

procedure TfcCustomImager.SetPicture(Value: TPicture);
begin
  FPicture.Assign(Value);
end;

procedure TfcCustomImager.SetPreProcess(Value: Boolean);
begin
  if FPreProcess <> Value then
  begin
    FPreProcess := Value;
    Resized;
  end;
end;

procedure TfcCustomImager.SetTransparent(Value: Boolean);
begin
  FTransparent:=Value;
  if not PictureEmpty then Picture.Graphic.Transparent := Value;
  Invalidate;
end;

procedure TfcCustomImager.SetTransparentColor(Value: TColor);
begin
  WorkBitmap.TransparentColor := Value;
  UpdateWorkBitmap;
  Invalidate;
  ColorToString(clNone);
end;

function TfcCustomImager.GetRespectPalette;
begin
//  result := WorkBitmap.RespectPalette;
  result:= FRespectPalette;
end;

function TfcCustomImager.GetSmoothStretching: Boolean;
begin
  result := WorkBitmap.SmoothStretching;
end;

function TfcCustomImager.GetTransparent: Boolean;
begin
  result:= FTransparent;
//  result := False;
//  if not PictureEmpty then result := Picture.Graphic.Transparent;
end;

function TfcCustomImager.GetTransparentColor: TColor;
begin
  result := WorkBitmap.TransparentColor;
end;

procedure TfcCustomImager.SetAutoSize(Value: Boolean);
begin
  if FAutoSize <> Value then
  begin
    FAutoSize := Value;
    UpdateAutoSize;
  end;
end;
{
procedure TfcCustomImager.SetBitmap(Value: TfcBitmap);
begin
  FBitmap.Assign(Value);
end;
}

function TfcCustomImager.PictureEmpty: Boolean;
begin
  result := (FPicture=Nil) or (FPicture.Graphic = nil) or (FPicture.Graphic.Empty);
end;

procedure TfcCustomImager.Invalidate;
var r: TRect;
begin
  if InSetBounds then exit;
  r := BoundsRect;
  if Parent <> nil then InvalidateRect(Parent.Handle, @r, True);
end;

procedure TfcCustomImager.RegisterChanges(ChangeLink: TfcChangeLink);
begin
  FChangeLinks.Add(ChangeLink);
end;

procedure TfcCustomImager.UnRegisterChanges(ChangeLink: TfcChangeLink);
begin
  FChangeLinks.Remove(ChangeLink);
end;

procedure TfcCustomImager.SetBounds(ALeft, ATop, AWidth, AHeight: Integer);
var SizeChanged: Boolean;
    OldControlStyle: TControlStyle;
begin
  SizeChanged := (AWidth <> Width) or (AHeight <> Height);
  if SizeChanged and not UpdatingAutosize then begin
     InSetBounds:= True; { RSW - Don't erase background when resizing }
     { 5/7/99 - Setting parent to opaque so it doesn't clear background.
       This allows imager to not flicker when resizing imager }
     if Parent<>nil then
     begin
        OldControlStyle:= Parent.ControlStyle;
        Parent.ControlStyle:= Parent.ControlStyle + [csOpaque];
     end;
     inherited;
     if Parent<>nil then Parent.ControlStyle:= OldControlStyle;
     if Visible then Update;
     Resized;
     InSetBounds:= False;
  end
  else inherited;
end;

procedure TfcCustomImager.SetRespectPalette(Value: Boolean);
begin
  FRespectPalette:= Value;
  WorkBitmap.RespectPalette := Value;
  if value then
     if (BitmapOptions.Color<>clNone) or (BitmapOptions.TintColor<>clNone) then
        WorkBitmap.RespectPalette:= False;

  Invalidate;
end;

procedure TfcCustomImager.SetSmoothStretching(Value: Boolean);
begin
  WorkBitmap.SmoothStretching := Value;
  UpdateWorkBitmap;
  Invalidate;
end;

procedure TfcCustomImager.Paint;
begin
  inherited;
  if csDestroying in ComponentState then exit;

  if FWorkBitmap.Empty and not PictureEmpty then
  begin
    UpdateWorkBitmap;
    Exit;
  end;

  if (csDesigning in ComponentState) and FWorkBitmap.Empty then with Canvas do
  begin
    Pen.Style := psDash;
    Pen.Color := clBlack;
    Brush.Color := clWhite;
    Rectangle(0, 0, Width, Height);
    Exit;
  end;
  if FWorkBitmap.Empty then Exit;

  try
    with GetDrawRect do
      if PreProcess then
        case DrawStyle of
          dsNormal: Canvas.Draw(Left, Top, FWorkBitmap);
          dsCenter: Canvas.Draw(Left, Top, FWorkBitmap);
          dsTile: FWorkBitmap.TileDraw(Canvas, Rect(Left, Top, Right, Bottom));
          dsStretch: Canvas.StretchDraw(Rect(Left, Top, Right, Bottom), FWorkBitmap);
          dsProportional: Canvas.StretchDraw(Rect(Left, Top, Right, Bottom), FWorkBitmap);
        end
      else Canvas.Draw(Left, Top, FWorkBitmap);
  finally
{    if Transparent then fcTransparentDraw(Canvas, Rect(0, 0, Width, Height), DrawBitmap, DrawBitmap.Canvas.Pixels[0, 0])
    else Canvas.Draw(0, 0, DrawBitmap);}
  end;
end;

(*procedure TfcCustomImager.ParentMessages(var Message: TMessage; var ProcessMessage: Boolean);
var s: TfcCustomImager;
begin
  if csDestroying in ComponentState then exit;

  if not PictureEmpty and ((not EraseBackground) or InSetBounds) and
{     not (csDesigning in ComponentState) and}  { 4/27/99 - Comment out - RSW }
     (Message.Msg = WM_ERASEBKGND) then//and not (DrawStyle in [dsNormal, dsProportional]) {and (Align = alClient) }then { 3/19/99 - Comment out alClient to prevent flicker of form}
  begin
    with TWMEraseBkGnd(Message) do
    begin
      Result := 1;
      ProcessMessage := False;
    end;
  end
end;
*)
procedure TfcCustomImager.Loaded;
begin
  inherited;
  UpdateAutoSize;
  FBitmapOptions.Changed;
end;

procedure TfcCustomImager.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
end;

procedure TfcCustomImager.CutToClipboard;
begin
  if Picture.Graphic <> nil then
  begin
    CopyToClipboard;
    Picture.Graphic := nil;
  end;
end;

procedure TfcCustomImager.CopyToClipboard;
var tempBitmap: TBitmap;
begin
   tempBitmap:= TBitmap.create;
   WorkBitmap.SaveToBitmap(tempBitmap);
   Clipboard.Assign(tempBitmap);
   tempBitmap.Free;
end;

procedure TfcCustomImager.WndProc(var Message: TMessage);
begin
  inherited;
end;

type
 TfcImagerWinControl = class(TWinControl)
 private
    Imager: TfcDBImager;
 protected
    procedure KeyUp(var Key: Word; Shift: TShiftState); override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
 public
    constructor Create(AOwner: TComponent); override;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
 end;

constructor TfcImagerWinControl.Create(AOwner: TComponent);
begin
   inherited;
   ControlStyle := ControlStyle + [csReplicatable];
   Imager:= AOwner as TfcDBImager;
end;

procedure TfcImagerWinControl.CMEnter(var Message: TCMEnter);
begin
  Imager.DoEnter;
end;

procedure TfcImagerWinControl.CMExit(var Message: TCMExit);
begin
  Imager.DoExit;
end;

procedure TfcImagerWinControl.KeyDown(var Key: Word; Shift: TShiftState);
begin
   inherited KeyDown(Key, Shift);
   Imager.KeyDown(Key, Shift);
end;

procedure TfcImagerWinControl.KeyUp(var Key: Word; Shift: TShiftState);
begin
   inherited KeyUp(Key, Shift);
   Imager.KeyUp(Key, Shift);
end;

procedure TfcImagerWinControl.KeyPress(var Key: Char);
begin
   inherited KeyPress(Key);
   Imager.KeyPress(Key);
end;

constructor TfcDBImager.Create(AOwner: TComponent);
begin
   inherited;
   ControlStyle := ControlStyle + [csReplicatable];

   FAutoDisplay:=True;
   FDataLink := TFieldDataLink.Create;
   FDataLink.Control := Self;
   FDataLink.OnDataChange := DataChange;
   FDataLink.OnUpdateData := UpdateData;
end;

destructor TfcDBImager.Destroy;
begin
   FDataLink.Free;
   FDataLink:=nil;
   inherited Destroy;
end;

procedure TfcDBImager.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

procedure TfcDBImager.LoadPicture;
begin
  if not FPictureLoaded and (not Assigned(FDataLink.Field) or
    FDataLink.Field.IsBlob) then
  begin
    Picture.Assign(FDataLink.Field);
    Picture.Graphic.Transparent:=Transparent;
  end;
end;

procedure TfcDBImager.DataChange(Sender: TObject);
begin
  Picture.Graphic := nil;
  FPictureLoaded := False;
  if FAutoDisplay then LoadPicture;
end;

procedure TfcDBImager.UpdateData(Sender: TObject);
begin
  if Picture.Graphic is TBitmap then
     FDataLink.Field.Assign(Picture.Graphic) else
     FDataLink.Field.Clear;
end;


function TfcDBImager.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TfcDBImager.SetDataSource(Value: TDataSource);
begin
  if not (FDataLink.DataSourceFixed and (csLoading in ComponentState)) then
    FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(Self);
end;

function TfcDBImager.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TfcDBImager.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

function TfcDBImager.GetReadOnly: Boolean;
begin
  Result := FDataLink.ReadOnly;
end;

procedure TfcDBImager.SetReadOnly(Value: Boolean);
begin
  FDataLink.ReadOnly := Value;
end;

function TfcDBImager.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TfcDBImager.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

procedure TfcDBImager.CutToClipboard;
begin
  if Picture.Graphic <> nil then
    if FDataLink.Edit then
    begin
      CopyToClipboard;
      Picture.Graphic := nil;
    end;
end;

procedure TfcDBImager.CopyToClipboard;
begin
  if Picture.Graphic <> nil then Clipboard.Assign(Picture);
end;

procedure TfcCustomImager.PasteFromClipboard;
begin
  if Clipboard.HasFormat(CF_BITMAP) then
  begin
    Picture.Bitmap.Assign(Clipboard);
    Picture.Graphic.Transparent:=Transparent;
  end
end;

procedure TfcDBImager.PasteFromClipboard;
begin
  if Clipboard.HasFormat(CF_BITMAP) and FDataLink.Edit then
  begin
    Picture.Bitmap.Assign(Clipboard);
    Picture.Graphic.Transparent:=Transparent;
  end
end;

procedure TfcCustomImager.DoEnter;
begin
  Invalidate; { Draw the focus marker }
end;

procedure TfcCustomImager.DoExit;
begin
   Invalidate; { Erase the focus marker }
end;

procedure TfcDBImager.DoExit;
begin
    try
      FDataLink.UpdateRecord;
    except
      FWinControl.SetFocus;
      raise;
    end;
    Invalidate; { Erase the focus marker }
    inherited;
end;

procedure TfcCustomImager.KeyUp(var Key: Word; Shift: TShiftState);
begin
  if Assigned(FOnKeyUp) then FOnKeyUp(Self, Key, Shift);
end;

procedure TfcCustomImager.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if Assigned(FOnKeyDown) then FOnKeyDown(Self, Key, Shift);
  case Key of
    VK_INSERT:
      if ssShift in Shift then PasteFromClipBoard else
        if ssCtrl in Shift then CopyToClipBoard;
    VK_DELETE:
      if ssShift in Shift then CutToClipBoard;
  end;
end;

procedure TfcCustomImager.KeyPress(var Key: Char);
begin
  if Assigned(FOnKeyPress) then FOnKeyPress(self, Key);
  case Key of
    ^X: CutToClipBoard;
    ^C: CopyToClipBoard;
    ^V: PasteFromClipBoard;
  end;
end;

procedure TfcDBImager.KeyPress(var Key: Char);
begin
  inherited KeyPress(Key);
  case Key of
    #13: LoadPicture;
    #27: FDataLink.Reset;
  end;
end;

procedure TfcCustomImager.MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
begin
   inherited;
   if FWinControl<>nil then FWinControl.SetFocus;
end;

Function TfcCustomImager.CreateImagerWinControl: TWinControl;
var WinControl: TWinControl;
begin
   WinControl:= TfcImagerWinControl.create(self);
   with WinControl do begin
      visible:=true;
      Left:=0;
      Top:=0;
      Height:=0;
      Width:=0;
      Parent:=self.Parent;
      TabStop:=self.TabStop;
   end;
   result:= WinControl;
end;

procedure TfcCustomImager.SetFocusable(Value: boolean);
begin
   if Value<>FFocusable then begin
      FFocusable:=Value;
      if (Value or Focusable) then begin
          if (FWinControl=nil) then
             FWinControl:= CreateImagerWinControl;
          FWinControl.TabStop:=TabStop;
      end
      else begin
         FWinControl.Free;
         FWinControl:=nil;
      end
   end
end;

procedure TfcCustomImager.SetTabStop(Value: boolean);
begin
   if Value<>FTabStop then begin
      FTabStop:=Value;
      if (Value or Focusable)then begin
          if (FWinControl=nil) then
             FWinControl:= CreateImagerWinControl;
          FWinControl.TabStop:=Value;
      end
      else begin
         FWinControl.Free;
         FWinControl:=nil;
      end
   end
end;

procedure TfcDBImager.Paint;
var Form: TCustomForm;
    tempImager: TfcImager;
begin
   if csDestroying in ComponentState then exit;
   if (csPaintCopy in ControlState) and
      Assigned(FDataLink.Field) and FDataLink.Field.IsBlob then
   begin
      Canvas.Brush.Color:=TEdit(parent).color;
      Canvas.FillRect(ClientRect);
//    Canvas.Brush.Style := bsClear;
      tempImager := TfcImager.create(self);
      tempImager.height:= height;
      tempImager.width:=width;
      tempImager.picture.assign(FDataLink.Field);
      tempImager.transparent:=Transparent;

      SetBkMode(Canvas.Handle, windows.TRANSPARENT);
      tempImager.Perform(WM_PAINT, Canvas.Handle, 0);
      SetBkMode(Canvas.Handle, OPAQUE);
      tempImager.Free;
      exit;

//      if Picture.Graphic is TBitmap then
//         DrawPict.Bitmap.IgnorePalette := QuickDraw;
   end
   else begin
   end;

      Canvas.Brush.Color:=clWhite;
      Canvas.FillRect(ClientRect);
   inherited;
   Form := GetParentForm(Self);
   if (Form <> nil) and (FWinControl<>nil) and
    (Form.ActiveControl = FWinControl) and
     not (csDesigning in ComponentState) and
     not (csPaintCopy in ControlState) then
   begin
     Canvas.Brush.Color := clWindowFrame;
     Canvas.FrameRect(ClientRect);
   end;
end;

procedure TfcDBImager.SetAutoDisplay(Value: Boolean);
begin
  if FAutoDisplay <> Value then
  begin
    FAutoDisplay := Value;
    if Value then LoadPicture;
  end;
end;

procedure TfcDBImager.BitmapChange(Sender: TObject);
begin
  inherited;

  if FPictureLoaded then FDataLink.Modified;
  FPictureLoaded := True;

end;

end.
