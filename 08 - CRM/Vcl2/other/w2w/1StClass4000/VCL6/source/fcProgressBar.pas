unit fcProgressBar;
{
//
// Components : TfcProgressBar
//
// Copyright (c) 2003 by Woll2Woll Software
}
interface
{$i fcIfdef.pas}

uses
  SysUtils, Classes, Controls, messages, windows,
  {$ifdef fcDelphi7Up}
  Themes,
  {$endif}
  {$ifdef ThemeManager}
  thememgr, themesrv, uxtheme,
  {$endif}

  graphics, db, dbctrls;

type
  TfcProgressBarOrientation = (fcpbHorizontal, fcpbVertical);
  TfcProgressBar = class(TCustomControl)
  private
    FDisableThemes: boolean;
    FMin: Integer;
    FMax: Integer;
    FPosition: Integer;
    FStep: Integer;
    FOrientation: TfcProgressBarOrientation;
    FSmooth: Boolean;
    FBlockSize: integer;
    FBlockColor: TColor;
    FShowProgressText: boolean;
    FDataLink: TFieldDataLink;
    FOnChange: TNotifyEvent;
    FCanvas: TControlCanvas; // For csPaintCopy State
    FDisplayFormat: string;
    function GetMin: Integer;
    function GetMax: Integer;
    function GetProgress: Integer;
    procedure SetParams(AMin, AMax: Integer);
    procedure SetMin(Value: Integer);
    procedure SetMax(Value: Integer);
    procedure SetProgress(Value: Integer);
    procedure SetStep(Value: Integer);
    procedure SetOrientation(Value: TfcProgressBarOrientation);
    procedure SetSmooth(Value: Boolean);
    procedure SetBlockSize(Value: integer);
    procedure SetBlockColor(Value: TColor);
    procedure SetDisplayFormat(Value: String);
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMEraseBkGnd(var Message: TWMEraseBkGnd); message WM_ERASEBKGND;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;

    function GetCanvas: TCanvas;
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(Value: TDataSource);
    function GetField: TField;
    procedure PaintAsText(AnImage: TBitmap; PaintRect: TRect);

  protected
    procedure DrawBar(Canvas: TCanvas); virtual;
//    procedure DrawProgressText(Canvas: TCanvas); virtual;
    procedure Changed; virtual;
    procedure UpdateData(Sender: TObject); virtual;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure DataChange(Sender: TObject); virtual;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure Loaded; override;
    procedure PaintProgressBar; virtual;
//    procedure CreateWnd; override;
//    procedure DestroyWnd; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    procedure StepIt;
    procedure StepBy(Delta: Integer);
    property DataLink: TFieldDataLink read FDataLink;
    property Field: TField read GetField;
    property Canvas: TCanvas read GetCanvas;
  published
    property DisableThemes : boolean read FDisableThemes write FDisableThemes default False;
    property Align;
    property Anchors;
    property BorderWidth;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Hint;
    property Constraints;
    property Color;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property ShowProgressText : boolean read FShowProgressText write FShowProgressText default True;
    property Min: Integer read GetMin write SetMin default 0;
    property Max: Integer read GetMax write SetMax default 100;
    property BlockSize: integer read FBlockSize write SetBlockSize default 10;
    property BlockColor: TColor read FBlockColor write SetBlockColor default clHighlight;
    property Orientation: TfcProgressBarOrientation read FOrientation
      write SetOrientation default fcpbHorizontal;
    property ParentShowHint;
    property PopupMenu;
    property Progress: Integer read GetProgress write SetProgress default 0;
    property Smooth: Boolean read FSmooth write SetSmooth default False;
    property Step: Integer read FStep write SetStep default 10;
    property DisplayFormat: string read FDisplayFormat write SetDisplayFormat;
    property ShowHint;
    property TabOrder;
    property TabStop;
    property Visible;
    property OnContextPopup;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;

implementation

uses consts, fccommon;

procedure Register;
begin
  RegisterComponents('1stClass', [TfcProgressBar]);
end;

procedure TfcProgressBar.DrawBar;
var
    {$ifdef fcUseThemeManager}
    Details: TThemedElementDetails;
    {$endif}
    ChunkRect, TempRect: TRect;
    r: TRect;
    current, lastBottom, lastleft: integer;
begin
   if fcUseThemes(self) then
   begin
     {$ifdef fcUseThemeManager}
     if Orientation = fcpbVertical then
     begin
        Details := ThemeServices.GetElementDetails(tpBarVert);
        ThemeServices.DrawElement(Canvas.Handle, Details, ClientRect);
        Details := ThemeServices.GetElementDetails(tpChunkVert);
        ChunkRect:= ClientRect;
        InflateRect(ChunkRect, -3, -3);
        ChunkRect.Top:= ChunkRect.Bottom - Trunc((ChunkRect.Bottom-ChunkRect.top) * (Progress-Min)/(Max-Min));
        ThemeServices.DrawElement(Canvas.Handle, Details, ChunkRect);
     end
     else begin
        Details := ThemeServices.GetElementDetails(tpBar);
        ThemeServices.DrawElement(Canvas.Handle, Details, ClientRect);
        Details := ThemeServices.GetElementDetails(tpChunk);
        ChunkRect:= ClientRect;
        InflateRect(ChunkRect, -3, -3);
        ChunkRect.Right:= ChunkRect.Left + Trunc((ChunkRect.Right-ChunkRect.Left) * (Progress-Min)/(Max-Min));
        ThemeServices.DrawElement(Canvas.Handle, Details, ChunkRect);
     end
     {$endif}
   end
   else begin
     if Orientation = fcpbVertical then
     begin
        Canvas.Brush.Color:= Color;
        Canvas.FillRect(ClientRect);
        r:= ClientRect;
        DrawEdge(Canvas.Handle, r, EDGE_SUNKEN, BF_TOP or BF_LEFT);
        DrawEdge(Canvas.Handle, r, EDGE_SUNKEN, BF_RIGHT or BF_BOTTOM);
        ChunkRect:= ClientRect;
        InflateRect(ChunkRect, -3, -3);

        current:= Min;
        LastBottom:= ChunkRect.bottom;
        current:= current + BlockSize;
        while (current<=Progress) do begin
           Canvas.Brush.Color:= BlockColor;
           TempRect:= ChunkRect;
           TempRect.Top:= ChunkRect.Bottom - Trunc((ChunkRect.Bottom-ChunkRect.top) * (Current-Min)/(Max-Min));
           TempRect.Top:= fcMax(TempRect.Top, ChunkRect.Top);
           TempRect.Bottom:= fcMax(ChunkRect.Top, LastBottom);
           if Smooth then LastBottom:= TempRect.Top
           else LastBottom:= TempRect.Top - 2;
           Canvas.FillRect(TempRect);
           current:= current + BlockSize;
        end;
     end
     else begin
        Canvas.Brush.Color:= Color;
        Canvas.FillRect(ClientRect);
        r:= ClientRect;
        DrawEdge(Canvas.Handle, r, EDGE_SUNKEN, BF_TOP or BF_LEFT);
        DrawEdge(Canvas.Handle, r, EDGE_SUNKEN, BF_RIGHT or BF_BOTTOM);
        ChunkRect:= ClientRect;
        InflateRect(ChunkRect, -3, -3);

        current:= Min;
        LastLeft:= ChunkRect.Left;
        current:= current + BlockSize;
        while (current<=Progress) do begin
           Canvas.Brush.Color:= BlockColor;
           TempRect:= ChunkRect;
           TempRect.Left:= fcMin(ChunkRect.Right, LastLeft);
           TempRect.Right:= ChunkRect.Left + Trunc((ChunkRect.Right-ChunkRect.Left) * (Current-Min)/(Max-Min));
           TempRect.Right:= fcMin(TempRect.Right, ChunkRect.Right);
           if Smooth then
             LastLeft:= TempRect.Right
           else
             LastLeft:= TempRect.Right + 2;

           Canvas.FillRect(TempRect);
           current:= current + BlockSize;
        end;
     end
   end;

end;

(*procedure TfcProgressBar.DrawProgressText;
var DrawFlags: integer;
    percent: integer;
    percentStr: string;
    halfx, halfy: integer;
    r: TRect;
begin
   if ShowProgressText then
   begin
     SetBkMode(Canvas.Handle, windows.TRANSPARENT);
     Drawflags:= DT_NOPREFIX;
     Percent:= Trunc(Progress/(Max-Min)*100);
     PercentStr:= FloatToStr(Percent);
     HalfX:= ClientWidth div 2;
     HalfY:= ClientHeight div 2;
     r:= Rect(HalfX - Canvas.TextWidth(Percentstr) div 2, HalfY - Canvas.TextHeight(PercentStr) div 2,
              HalfX + Canvas.TextWidth(Percentstr) div 2, HalfY + Canvas.TextHeight(PercentStr) div 2);

     DrawText(Canvas.Handle, pchar(PercentStr), length(PercentStr), r, DrawFlags);
   end;
end;
*)

procedure TfcProgressBar.WMPaint(var Message: TWMPaint);
var DC: HDC;
    PS: TPaintStruct;
  procedure CanvasNeeded;
  begin
    if FCanvas = nil then
    begin
      FCanvas := TControlCanvas.Create;
      FCanvas.Control := Self;
    end;
  end;
begin
  if (csPaintCopy in ControlState) then
  begin
      try
         if FCanvas = nil then
         begin
            FCanvas := TControlCanvas.Create;
            FCanvas.Control := Self;
         end;
         CanvasNeeded;

         if Message.DC = 0 then DC := BeginPaint(Handle, PS)
         else DC:= Message.DC;
         FCanvas.Handle := DC;

         PaintProgressBar;
       finally
         FCanvas.Handle := 0;
         if Message.DC = 0 then EndPaint(Handle, PS);
       end;
       exit;
   end;

   PaintProgressBar;
   inherited;
end;

type
  TBltBitmap = class(TBitmap)
    procedure MakeLike(ATemplate: TBitmap);
  end;

{ TBltBitmap }

procedure TBltBitmap.MakeLike(ATemplate: TBitmap);
begin
  Width := ATemplate.Width;
  Height := ATemplate.Height;
  Canvas.Brush.Color := clWindowFrame;
  Canvas.Brush.Style := bsSolid;
  Canvas.FillRect(Rect(0, 0, Width, Height));
end;

procedure TfcProgressBar.PaintProgressBar;
var
  TheImage: TBitmap;
  OverlayImage: TBltBitmap;
  PaintRect: TRect;
begin
    TheImage := TBitmap.Create;
    try
      TheImage.Height := Height;
      TheImage.Width := Width;
      DrawBar(TheImage.Canvas);

      OverlayImage := TBltBitmap.Create;
      try
        OverlayImage.MakeLike(TheImage);
//        PaintBackground(OverlayImage);
        DrawBar(TheImage.Canvas);
//        DrawProgressText(TheImage.Canvas);

        TheImage.Canvas.CopyMode := cmSrcInvert;
        TheImage.Canvas.Draw(0, 0, OverlayImage);
        TheImage.Canvas.CopyMode := cmSrcCopy;
        PaintRect := ClientRect;
//        DrawProgressText(TheImage.Canvas);
{        if ShowText then }PaintAsText(TheImage, PaintRect);
      finally
        OverlayImage.Free;
      end;
      Canvas.CopyMode := cmSrcCopy;
      Canvas.Draw(0, 0, TheImage);
    finally
      TheImage.Destroy;
    end;


//   DrawBar;
//   DrawProgressText;
end;

function TfcProgressBar.GetMin: Integer;
begin
   Result := FMin;
end;

function TfcProgressBar.GetMax: Integer;
begin
   Result := FMax;
end;

function TfcProgressBar.GetProgress: Integer;
var
  Value: integer;
begin
   if (csPaintCopy in  ControlState) and (FDataLink.Field <> nil) then
   begin
      Value:= FDataLink.Field.AsInteger;
      if Value>Max then Value:= Max;
      result:= Value;
   end
   else begin
      result:= FPosition;
   end;
end;


procedure TfcProgressBar.SetMin(Value: Integer);
begin
  SetParams(Value, FMax);
end;

procedure TfcProgressBar.SetMax(Value: Integer);
begin
  SetParams(FMin, Value);
end;

procedure TfcProgressBar.Loaded;
begin
   inherited;
   Changed; 
end;

procedure TfcProgressBar.Changed;
begin
   if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TfcProgressBar.SetProgress(Value: Integer);
begin
   if FPosition<>Value then
   begin
     Value := fcMin(Value, Max);
     FPosition:= fcMax(Value, Min);
     if not (csLoading in ComponentState) then
        Changed;
     Invalidate;
   end
end;


procedure TfcProgressBar.SetParams(AMin, AMax: Integer);
begin
  if AMax < AMin then
    raise EInvalidOperation.CreateFmt(SPropertyOutOfRange, [Self.Classname]);
  if (FMin <> AMin) or (FMax <> AMax) then
  begin
    FMin := AMin;
    FMax := AMax;
  end;
end;

procedure TfcProgressBar.SetStep(Value: Integer);
begin
  if Value <> FStep then
  begin
    FStep := Value;
  end;
end;

procedure TfcProgressBar.StepIt;
begin
  Progress:= fcMin(Max, Progress + Step);
end;

procedure TfcProgressBar.StepBy(Delta: Integer);
begin
  Progress:= fcMin(Max, Progress + Delta);
end;

procedure TfcProgressBar.SetOrientation(Value: TfcProgressBarOrientation);
begin
  if FOrientation <> Value then
  begin
    FOrientation := Value;
    RecreateWnd;
  end;
end;

procedure TfcProgressBar.SetSmooth(Value: Boolean);
begin
  if FSmooth <> Value then
  begin
    FSmooth := Value;
    Invalidate;
  end;
end;

procedure TfcProgressBar.SetDisplayFormat(Value: String);
begin
  if FDisplayFormat <> Value then
  begin
     FDisplayFormat:= Value;
     Invalidate;
  end
end;

procedure TfcProgressBar.SetBlockSize(Value: Integer);
begin
  if FBlockSize <> Value then
  begin
    FBlockSize := Value;
    Invalidate;
  end;
end;

procedure TfcProgressBar.SetBlockColor(Value: TColor);
begin
  if FBlockColor <> Value then
  begin
    FBlockColor := Value;
    Invalidate;
  end;
end;

constructor TfcProgressBar.Create(AOwner: TComponent);
begin
   Inherited Create(AOwner);
   ControlStyle := ControlStyle + [csReplicatable];
   Width := 150;
   Height := GetSystemMetrics(SM_CYVSCROLL);
   FMin := 0;
   FMax := 100;
   FStep := 10;
   FOrientation := fcpbHorizontal;
   FBlockColor:= clHighlight;
   FBlockSize:= 10;
   FShowProgressText:= True;

   FDataLink := TFieldDataLink.Create;
   FDataLink.Control := Self;
   FDataLink.OnDataChange := DataChange;
   FDataLink.OnUpdateData := UpdateData;


end;

procedure TfcProgressBar.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
//  ControlStyle := ControlStyle + [csAcceptsControls];
end;

function TfcProgressBar.GetDataSource: TDataSource;
begin
  if (FDataLink<>Nil) and (FDataLink.DataSource is TDataSource) then begin
     Result := FDataLink.DataSource as TDataSource
  end
  else Result:= Nil;
end;

procedure TfcProgressBar.SetDataSource(Value: TDataSource);
begin
  FDataLink.DataSource := Value;
  if Value <> nil then begin
    Value.FreeNotification(Self);
  end
end;

function TfcProgressBar.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

procedure TfcProgressBar.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TfcProgressBar.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TfcProgressBar.GetField: TField;
begin
  Result := FDataLink.Field;
end;

procedure TfcProgressBar.UpdateData(Sender: TObject);
begin
    if (FDataLink.Field.asInteger <> Progress) then
       FDataLink.Field.asInteger:= Progress;
end;

procedure TfcProgressBar.DataChange(Sender: TObject);
var Value: Integer;
begin
  if FDataLink.Field <> nil then
  begin
    Value := FDataLink.Field.asInteger;
    Progress:= Value;
  end
end;
procedure TfcProgressBar.WMEraseBkGnd(var Message: TWMEraseBkGnd);
begin
    Message.Result := 1;
    exit;
{  if ThemeServices.ThemesEnabled then
  begin
    Message.Result := 1;
  end
  else
     inherited;}
end;

procedure TfcProgressBar.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

destructor TfcProgressBar.Destroy;
begin
  FDataLink.OnDataChange := nil;
  FDataLink.Free;
  FDataLink := nil;
  FCanvas.Free;
  inherited Destroy;
end;

function TfcProgressBar.GetCanvas: TCanvas;
begin
   if csPaintCopy in ControlState then
      result:= FCanvas
   else result:= inherited Canvas;
end;


procedure TfcProgressBar.PaintAsText(AnImage: TBitmap; PaintRect: TRect);
var
  S: string;
  X, Y: Integer;
  OverRect: TBltBitmap;
  Percent: integer;
begin
  if not ShowProgressText then exit;

  OverRect := TBltBitmap.Create;
  try
    OverRect.MakeLike(AnImage);
    Percent:= Trunc(Progress/(Max-Min)*100);

    if DisplayFormat = '' then
       S:= FloatToStr(Percent) + '%'
    else S := FormatFloat(DisplayFormat, Percent);

    with OverRect.Canvas do
    begin
      Brush.Style := bsClear;
      Font := Self.Font;
      Font.Color := clWhite;
      with PaintRect do
      begin
        X := (Right - Left + 1 - TextWidth(S)) div 2;
        Y := (Bottom - Top + 1 - TextHeight(S)) div 2;
      end;
      TextRect(PaintRect, X, Y, S);
    end;
    AnImage.Canvas.CopyMode := cmSrcInvert;
    AnImage.Canvas.Draw(0, 0, OverRect);
  finally
    OverRect.Free;
  end;
end;

end.
