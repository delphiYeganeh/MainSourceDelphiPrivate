unit fcimagepanel;
{
//
// Components : TfcImagePanel
//
// Copyright (c) 2000 by Woll2Woll Software
//
}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, fcCommon, fcimage;

type

//  TfcCustomImagePanel = class(TfcCustomImage)
  TfcCustomImagePanel = class(TCustomPanel)
  private
    FTransparentColor: TColor;
    FRegion: HRgn;
    FControl: TWinControl;
    FImage: TfcCustomImage;
//    FInheritedPictureChanged: TNotifyEvent;
    InUpdateSize: boolean;

    procedure ReadRegions(Reader: TStream);
    procedure WriteRegions(Writer: TStream);
    function GetPicture: TPicture;
    procedure SetPicture(Value: TPicture);
    procedure SetControl(Value: TWinControl);
  protected
    procedure DestroyWnd; override;
    function GetTransparentColor: TColor;
    procedure DefineProperties(Filer: TFiler);override;
    procedure SetParent(Value:TWinControl); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure Paint; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); override;
    procedure UpdateSize;
  public
    Patch: Variant;
    constructor Create(Aowner:TComponent); override;
    destructor Destroy; override;

    procedure ApplyBitmapRegion; virtual;

    property RegionData: HRgn read FRegion stored True;
    property Picture: TPicture read GetPicture write SetPicture;
    property TransparentColor: TColor read FTransparentColor write FTransparentColor default clNone;
    property Control : TWinControl read FControl write SetControl;
  end;

  TfcImagePanel = class(TfcCustomImagePanel)
  published
//    property Control;
    property Align;
    property AutoSize;
    property Picture;
    property PopupMenu;
    property ShowHint;
    property Visible;
    property OnClick;
    property OnDblClick;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;

    property TransparentColor;
  end;

  procedure Register;

implementation

//{$r fcFrmBtn.RES}

type
  TfcImageForPanel = class(TfcCustomImage)
    protected
       procedure MouseDown(Button: TMouseButton; Shift: TShiftState;
         X, Y: Integer); override;
       procedure MouseuP(Button: TMouseButton; Shift: TShiftState;
         X, Y: Integer); override;
       procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
       procedure DblClick; override;
       procedure Click; override;
    public
       constructor Create(AOwner: TComponent); override;
  end;

constructor TfcImageForPanel.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
//   ControlStyle:= ControlStyle - [csClickEvents];
end;

procedure TfcImageForPanel.MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
begin
   (parent as TfcCustomImagePanel).MouseDown(Button, Shift, X, Y);
   inherited;
end;

procedure TfcImageForPanel.MouseUp(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
begin
   (parent as TfcCustomImagePanel).MouseUp(Button, Shift, X, Y);
   inherited;
end;

procedure TfcImageForPanel.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
   (parent as TfcCustomImagePanel).MouseMove(Shift, X, Y);
   inherited;
end;

procedure TfcImageForPanel.DblClick;
begin
   (parent as TfcCustomImagePanel).DblClick;
   inherited;
end;

procedure TfcImageForPanel.Click;
begin
   (parent as TfcCustomImagePanel).Click;
   inherited;
end;


constructor TfcCustomImagePanel.Create(Aowner:TComponent);
begin
  inherited;
  FRegion := 0;
  FTransparentColor := clNone;
  FImage:= TfcImageForPanel.create(self);
  FImage.AutoSize:= True;
  FImage.parent:= self;
  FControl:= self;
end;

destructor TfcCustomImagePanel.Destroy;
begin
  if FRegion <> 0 then DeleteObject(FRegion);
  FImage.Free;
  inherited Destroy;
end;

procedure TfcCustomImagePanel.DestroyWnd;
begin
  inherited;
  if (FRegion <> 0) and (Control<>nil) then
  begin
    SetWindowRgn(Control.Handle, 0, False);
    DeleteObject(FRegion);
    FRegion := 0;
  end;
end;

procedure TfcCustomImagePanel.ReadRegions(Reader: TStream);
var
   rgnsize:integer;
   rgndata: pRGNData;
begin
  Reader.Read(RgnSize, 4);

  if RgnSize <> 0 then
  begin
    GetMem(RgnData, RgnSize);
    try
      Reader.Read(RgnData^,rgnSize);
      FRegion := ExtCreateRegion(nil, RgnSize, RgnData^);

      if not (csDesigning in ComponentState) and (FRegion<>0) and
        (Control<>nil) then
        begin
          Control.HandleNeeded;
          if Control.HandleAllocated then
             SetWindowRgn(Control.handle,Fregion,true)
        end
    finally
      FreeMem(RgnData);
    end;
  end else begin
    FRegion := 0;
    ApplyBitmapRegion;
  end
end;

procedure TfcCustomImagePanel.WriteRegions(Writer: TStream);
var
   size:integer;
   rgndata: pRGNData;
   stat: integer;
begin
  ApplyBitmapRegion;
  if (FRegion <> 0) then
  begin
    Size := GetRegionData(FRegion, 0, nil);
    Writer.Write(Size, SizeOf(Size));
    if Size > 0 then
    begin
      Getmem(RgnData,size);
      try
        Stat := GetRegionData(FRegion, Size, RgnData);
        if Stat > 0 then Writer.Write(RgnData^, Size);
      finally
        FreeMem(RgnData);
      end;
    end;
  end else begin
    Size := 0;
    Writer.Write(Size, SizeOf(Size));
  end;
end;

procedure TfcCustomImagePanel.DefineProperties(Filer: TFiler);
begin
  inherited DefineProperties(Filer);
  Filer.DefineBinaryProperty('RegionData', ReadRegions, WriteRegions, True);
end;

procedure TfcCustomImagePanel.SetParent(Value: TWinControl);
begin
{ 2/15/00 - Don't think we need this }
{  if (Value <> nil) and not (Value is TCustomForm) then
    Value := GetParentForm(Value);
}
  inherited SetParent(value);

{  if Parent <> nil then
    SetWindowLong(Parent.Handle, GWL_STYLE,
      GetWindowLong(Parent.Handle, GWL_STYLE) and not WS_CLIPCHILDREN);
}
end;

procedure TfcCustomImagePanel.ApplyBitmapRegion;
//var tempBitmap: TBitmap;
begin
  if Control<>nil then
  begin
     Control.HandleNeeded;
     if not Control.HandleAllocated then exit;
  end;
  
  SetWindowRgn(Control.Handle, 0, False);
  if FRegion <> 0 then DeleteObject(FRegion);

{ This would work for JPG, but JPG would leave non-transparent areas where the intention
  is to be transparent. Thus we do not support JPG }
{  tempBitmap:= TBitmap.create;
  tempBitmap.assign(picture.graphic);
  FRegion := fcCreateRegionFromBitmap(tempbitmap, tempbitmap.canvas.pixels[0,0]);
  tempBitmap.free;
}
  FRegion := fcCreateRegionFromBitmap(Picture.Bitmap, GetTransparentColor);
  if not (csDesigning in ComponentState) then
     SetWindowRgn(Control.Handle, FRegion, True);

end;

function TfcCustomImagePanel.GetPicture: TPicture;
begin
//  result := inherited Picture;
  result:= FImage.Picture;
end;

function TfcCustomImagePanel.GetTransparentColor: TColor;
begin
   result := FTransparentColor;
   if FTransparentColor=clNone then
   begin
      if (Picture.Bitmap<>Nil) then
         result:= Picture.Bitmap.Canvas.Pixels[0,Picture.Bitmap.height-1]
   end
   else result:= FTransparentColor;
end;

procedure TfcCustomImagePanel.SetControl(Value: TWinControl);
begin
   FControl:= Value;
   if FControl<>nil then ApplyBitmapRegion;
end;

procedure TfcCustomImagePanel.SetPicture(Value: TPicture);
begin
  FImage.Picture:= Value;
  Invalidate;
end;

procedure TfcCustomImagePanel.UpdateSize;
begin
  // Added to support autosizing of the form
  if InUpdateSize then exit;
  if FImage=nil then exit;
  if FImage.Picture=nil then exit;
  InUpdateSize:= true;

  if (Picture.Width > 0) and (Picture.height > 0) then
  begin
     if AutoSize then
     begin
//        SetWindowPos(Handle, 0, Left, Top, Picture.Graphic.Width,
//           Picture.Graphic.Height, 0);
        ClientWidth := FImage.Picture.Width;
        ClientHeight := FImage.Picture.Height;
//        ShowMessage(inttostr(FImage.Picture.Width));
//        ShowMessage(inttostr(FImage.Picture.Graphic.Width));
     end;
     FImage.Width:= ClientWidth;
     FImage.Height:= ClientHeight;
  end;
  InUpdateSize:= False;
end;

procedure TfcCustomImagePanel.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = FControl) then
    FControl := nil;
end;

procedure Register;
begin
  RegisterComponents('1stClass', [TfcImagePanel]);
end;

type TCheatGraphic = class(TGraphic);

procedure TfcCustomImagePanel.Paint;
begin
   inherited;
end;

procedure TfcCustomImagePanel.MouseDown(Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer);
const
   SC_DRAGMOVE = $F012;
begin
   inherited;
   ReleaseCapture;
   Perform(WM_SysCommand, SC_DRAGMOVE, 0);
end;

end.
