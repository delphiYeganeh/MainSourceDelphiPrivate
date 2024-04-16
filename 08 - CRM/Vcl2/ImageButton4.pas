unit ImageButton4;

{
         TImageButton
           Version 4
      By Mohammad Yousefi
    vahid_you2004@yahoo.com
      Copyright 2007 MCoP
   http://mcop.netfirms.com/
                              }

interface

uses
  SysUtils, Classes, Controls, Graphics, Windows, Messages, ExtCtrls, Forms,
  ActnList;

type

  TImageButton = class(TCustomControl)
  private
    { Private declarations }
    fME,fML:TNotifyEvent;
    fGI:Integer;
    fDownBit,fNoneBit,fOverBit,fFocusBit,fDisableBit:TPicture;
    fDown,fAAU,fDefault,fCancel,fOver,fByKey:Boolean;
    fModalResult:TModalResult;
    fState,fLState:Byte;
    procedure SetDownBit(V:TPicture);
    procedure SetNoneBit(V:TPicture);
    procedure SetOverBit(V:TPicture);
    procedure SetFocusBit(V:TPicture);
    procedure SetDisableBit(V:TPicture);
    procedure MEnter(var M:TMessage); message CM_MOUSEENTER;
    procedure MLeave(var M:TMessage); message CM_MOUSELEAVE;
    procedure Ref;
    procedure SetDown(V:Boolean);
    procedure SetGI(V:Integer);
    procedure SetHP(V:String);
    function GetHP:String;
    procedure SetAAU(V:Boolean);
    procedure SetDefault(V:Boolean);
    procedure CMDialogKey(var msg:TCMDialogKey); message CM_DIALOGKEY;
    procedure CMButtonPressed(var msg:TMessage); message CM_BUTTONPRESSED;
    procedure UpdateExclusive;
    procedure MakeRGN(P:TPicture;var Result:HRGN);
    procedure CMColorChanged(var Message:TMessage); message CM_COLORCHANGED;
    procedure CMEnabledChanged(var Message:TMessage); message CM_ENABLEDCHANGED;
    procedure WMSetFocus(var msg:TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus(var msg:TWMKillFocus); message WM_KILLFOCUS;
    procedure WMKeyUp(var msg:TWMKeyUp); message WM_KEYUP;
    procedure WMKeyDown(var msg:TWMKeyDown); message WM_KEYDOWN;
  protected
    { Protected declarations }
    procedure ActionChange(Sender:TObject;CheckDefaults:Boolean); override;
    function GetActionLinkClass:TControlActionLinkClass; override;
    procedure MouseDown(Button:TMouseButton;Shift:TShiftState;X,Y:Integer); override;
    procedure MouseUp(Button:TMouseButton;Shift:TShiftState;X,Y:Integer); override;
    procedure Click; override;
    procedure DblClick; override;
    procedure DoContextPopup(MousePos:TPoint;var Handled:Boolean); override;
    procedure Loaded; override;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent); override;
    destructor Destroy; override;
    procedure Paint; override;
  published
    { Published declarations }
    property OnMouseEnter:TNotifyEvent read fME write fME;
    property OnMouseLeave:TNotifyEvent read fML write fML;
    property PictureDown:TPicture read fDownBit write SetDownBit;
    property Picture:TPicture read fNoneBit write SetNoneBit;
    property PictureOver:TPicture read fOverBit write SetOverBit;
    property PictureDisabled:TPicture read fDisableBit write SetDisableBit;
    property PictureFocused:TPicture read fFocusBit write SetFocusBit;
    property GroupIndex:Integer read fGI write SetGI default 0;
    property Down:Boolean read fDown write SetDown default False;
    property Homepage:String read GetHP write SetHP stored False;
    property AllowAllUp:Boolean read fAAU write SetAAU default False;
    property ModalResult:TModalResult read fModalResult write fModalResult default 0;
    property Cancel:Boolean read fCancel write fCancel default False;
    property Default:Boolean read fDefault write SetDefault default False;
    property Enabled;
    property Color;
    property ParentColor;
    property PopupMenu;
    property OnDockDrop;
    property OnDockOver;
    property OnGetSiteInfo;
    property OnUnDock;
    property OnDblClick;
    property ShowHint;
    property ParentShowHint;
    property Visible;
    property DragMode;
    property DragKind;
    property DragCursor;
    property TabOrder;
    property TabStop default True;
    property OnClick;
    property OnContextPopup;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDock;
    property OnStartDrag;
    property Align;
    property Anchors;
    property Constraints;
    property Action;
    property Hint;
    property Cursor;
    property DockSite;
    property Height;
    property HelpContext;
    property HelpKeyword;
    property HelpType;
    property Left;
    property Name;
    property Tag;
    property Top;
    property Width;
  end;

  TImageButtonActionLink = class(TControlActionLink)
  protected
    FClient:TImageButton;
    procedure AssignClient(AClient:TObject); override;
    function IsCheckedLinked:Boolean; override;
    function IsGroupIndexLinked:Boolean; override;
    procedure SetGroupIndex(Value:Integer); override;
    procedure SetChecked(Value:Boolean); override;
  end;

procedure Register;

implementation


constructor TImageButton.Create(AOwner:TComponent);
begin
inherited;
fGI:=0;
fDown:=False;
fAAU:=False;
Width:=35;
Height:=35;
fLState:=10;
fState:=0;
TabStop:=True;
fCancel:=False;
fDefault:=False;
fOver:=False;
fDownBit:=TPicture.Create;
fNoneBit:=TPicture.Create;
fOverBit:=TPicture.Create;
fFocusBit:=TPicture.Create;
fDisableBit:=TPicture.Create;
fByKey:=False;
end;

destructor TImageButton.Destroy;
begin
fDownBit.Free;
fNoneBit.Free;
fOverBit.Free;
fFocusBit.Free;
fDisableBit.Free;
inherited;
end;

procedure TImageButton.Paint;
begin
inherited;
Ref;
end;

procedure TImageButton.Loaded;
begin
fLState:=10;
fLState:=0;
Ref;
inherited;
end;

procedure TImageButton.SetDownBit(V:TPicture);
begin
fDownBit.Assign(V);
fLState:=10;
Ref;
end;

procedure TImageButton.SetNoneBit(V:TPicture);
begin
fNoneBit.Assign(V);
fLState:=10;
Ref;
end;

procedure TImageButton.SetOverBit(V:TPicture);
begin
fOverBit.Assign(V);
fLState:=10;
Ref;
end;

procedure TImageButton.SetFocusBit(V:TPicture);
begin
fFocusBit.Assign(V);
Ref;
end;

procedure TImageButton.SetDisableBit(V:TPicture);
begin
fDisableBit.Assign(V);
fLState:=10;
Ref;
end;

procedure TImageButton.Ref;
var
  b:Graphics.TBitmap;
  p:TPicture;
  r:HRGN;

  procedure SetP(N:TPicture);
  begin
  if N.Graphic=nil then Exit;
  if N.Graphic.Empty then Exit;
  if N.Graphic.Width=0 then Exit;
  if N.Graphic.Height=0 then Exit;
  p:=N;
  end;

begin
if not (Visible and Assigned(Parent)) then Exit;
if fNoneBit.Graphic=nil then Exit;
if fNoneBit.Graphic.Empty then Exit;
if fNoneBit.Graphic.Width=0 then Exit;
if fNoneBit.Graphic.Height=0 then Exit;
{ fState
   none 0
   over 1
   down 2 }
b:=Graphics.TBitmap.Create;
b.Width:=Width;
b.Height:=Height;
b.Canvas.Brush.Color:=Color;
b.Canvas.FloodFill(0,0,clWhite,fsSurface);
p:=fNoneBit;
case fState of
  1:SetP(fOverBit);
  2:SetP(fDownBit);
end;
if not Enabled then SetP(fDisableBit);
if fState<>fLState then
  begin
  fLState:=fState;
  MakeRGN(p,r);
  SetWindowRGN(Handle,r,True);
  DeleteObject(r);
  end;
p.Graphic.Transparent:=True;
b.Canvas.Draw(0,0,p.Graphic);
if Focused then
  if fFocusBit.Graphic<>nil then
    if not fFocusBit.Graphic.Empty then
      begin
      fFocusBit.Graphic.Transparent:=True;
      b.Canvas.Draw(0,0,fFocusBit.Graphic);
      end;
Canvas.Draw(0,0,b);
b.Free;
end;

procedure TImageButton.MEnter(var M:TMessage);
begin
{ fState
   none 0
   over 1
   down 2 }
if (csDesigning in ComponentState) or (not Enabled) then Exit;
fOver:=True;
if fDown then
  fState:=2
else
  fState:=1;
Ref;
if Assigned(fME) then fME(Self);
end;

procedure TImageButton.MLeave(var M:TMessage);
begin
{ fState
   none 0
   over 1
   down 2 }
if (csDesigning in ComponentState) or (not Enabled) then Exit;
fOver:=False;
if fDown then
  fState:=2
else if fState<>2 then
  fState:=0;
Ref;
if Assigned(fML) then fML(Self);
end;

procedure TImageButton.MouseUp(Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
begin
{ fState
   none 0
   over 1
   down 2 }
if not Enabled then Exit;
inherited;
if csDesigning in ComponentState then Exit;
if not fDown then
  begin
  if fOver then fState:=1 else fState:=0;
  end;
Ref;
end;

procedure TImageButton.MouseDown(Button:TMouseButton;Shift:TShiftState;X,Y:Integer);
begin
{ fState
   none 0
   over 1
   down 2 }
if not Enabled then Exit;
inherited;
if csDesigning in ComponentState then Exit;
if Button=mbLeft then fState:=2;
Ref;
end;

procedure TImageButton.SetDown(V:Boolean);
begin
{ fState
   none 0
   over 1
   down 2 }
if fGI=0 then V:=False;
if V<>fDown then
  begin
  if fDown and (not fAAU) then Exit;
  fDown:=V;
  if Action<>nil then
    if Action is TCustomAction then
      TCustomAction(Action).Checked:=fDown;
  UpdateExclusive;
  end;
if fDown then
  fState:=2
else
  fState:=0;
Ref;
end;

procedure TImageButton.SetGI(V:Integer);
begin
if fGI<>V then
  begin
  UpdateExclusive;
  fGI:=V;
  if fGI=0 then
    begin
    fDown:=False;
    if Action<>nil then
      if Action is TCustomAction then
        TCustomAction(Action).Checked:=fDown;
    fLState:=10;
    Ref;
    end;
  UpdateExclusive;
  end;
end;

procedure TImageButton.SetHP(V:String);
begin
//
end;

function TImageButton.GetHP:String;
begin
result:='http://mcop.netfirms.com/';
end;

procedure TImageButton.SetAAU(V:Boolean);
begin
if fAAU<>V then
  begin
  fAAU:=V;
  UpdateExclusive;
  end;
end;

procedure TImageButton.CMColorChanged(var Message:TMessage);
begin
inherited;
Ref;
end;

procedure TImageButton.CMEnabledChanged(var Message:TMessage);
begin
inherited;
fLState:=10;
Ref;
end;

procedure TImageButton.WMSetFocus(var msg: TWMSetFocus);
begin
inherited;
fLState:=10;
Ref;
end;

procedure TImageButton.WMKillFocus(var msg: TWMKillFocus);
begin
inherited;
fLState:=10;
Ref;
end;

procedure TImageButton.WMKeyDown(var msg: TWMKeyDown);
begin
{ fState
   none 0
   over 1
   down 2 }
if not Enabled then Exit;
inherited;
if msg.CharCode=VK_SPACE then fState:=2;
Ref;
end;

procedure TImageButton.WMKeyUp(var msg: TWMKeyUp);
begin
if not Enabled then Exit;
inherited;
if msg.CharCode=VK_SPACE then Click;
end;

procedure TImageButton.Click;
begin
{ fState
   none 0
   over 1
   down 2 }
if not Enabled then Exit;
if fModalResult<>mrNone then
  if Parent<>nil then
    GetParentForm(Self).ModalResult:=fModalResult;
if fGI<>0 then
  begin
  if fAAU then SetDown(not fDown) else SetDown(True);
  end
else
  fState:=0;
if not fByKey then SetFocus;
Ref;
inherited;
end;

procedure TImageButton.CMDialogKey(var msg: TCMDialogKey);
begin
fByKey:=True;
if (msg.CharCode=VK_RETURN) and (Focused or (CanFocus and fDefault)) then
  begin
  Click;
  msg.Result:=1;
  end
else if (msg.CharCode=VK_ESCAPE) and (CanFocus and fCancel) then
  begin
  Click;
  msg.Result:=1;
  end
else
  inherited;
fByKey:=False;
end;

procedure TImageButton.SetDefault(V:Boolean);
var f:TCustomForm;
begin
fDefault:=V;
if HandleAllocated then
  begin
  f:=GetParentForm(Self);
  if f<>nil then f.Perform(CM_FOCUSCHANGED,0,Longint(f.ActiveControl));
  end;
end;

procedure TImageButton.CMButtonPressed(var msg:TMessage);
var Sender:TImageButton;
begin
{ fState
   none 0
   over 1
   down 2 }
if msg.WParam=fGI then
  begin
  Sender:=TImageButton(msg.LParam);
  if Sender<>Self then
    begin
    if Sender.Down and fDown then
      begin
      fDown:=False;
      if Action<>nil then
        if Action is TCustomAction then
          TCustomAction(Action).Checked:=fDown;
      fState:=0;
      Ref;
      end;
    FAAU:=Sender.AllowAllUp;
    end;
  end;
end;

procedure TImageButton.UpdateExclusive;
var Msg:TMessage;
begin
if (fGI<>0) and (Parent<>nil) then
  begin
  Msg.Msg:=CM_BUTTONPRESSED;
  Msg.WParam:=fGI;
  Msg.LParam:=Longint(Self);
  Msg.Result:=0;
  Parent.Broadcast(Msg);
  end;
end;

procedure TImageButton.DblClick;
begin
if Enabled then inherited;
end;

procedure TImageButton.DoContextPopup(MousePos:TPoint;var Handled:Boolean);
begin
Handled:=not Enabled;
if Enabled then inherited;
end;

procedure TImageButton.ActionChange(Sender:TObject;CheckDefaults:Boolean);
begin
inherited;
if Sender is TCustomAction then
  with TCustomAction(Sender) do
    if CheckDefaults or (Self.GroupIndex=0) then
      Self.GroupIndex:=GroupIndex;
Ref;
end;

function TImageButton.GetActionLinkClass:TControlActionLinkClass;
begin
Result:=TImageButtonActionLink;
end;

procedure TImageButton.MakeRGN(P:TPicture;var Result:HRGN);
var
  x,y:Integer;
  r:HRGN;
  d,c:Graphics.TBitmap;
  l,t:PByteArray;
begin
if Result<>0 then DeleteObject(Result);
Result:=0;
if P.Graphic=nil then Exit;
if P.Graphic.Empty then Exit;
if P.Graphic.Width=0 then Exit;
if P.Graphic.Height=0 then Exit;
P.Graphic.Transparent:=True;

c:=Graphics.TBitmap.Create;
c.Width:=P.Graphic.Width;
c.Height:=P.Graphic.Height;
c.Canvas.Pen.Color:=clRed;
c.Canvas.Brush.Color:=clRed;
c.Canvas.FillRect(c.Canvas.ClipRect);
c.Canvas.Draw(0,0,P.Graphic);
c.PixelFormat:=pf24bit;

d:=Graphics.TBitmap.Create;
d.Width:=P.Graphic.Width;
d.Height:=P.Graphic.Height;
d.Canvas.Pen.Color:=clBlue;
d.Canvas.Brush.Color:=clBlue;
d.Canvas.FillRect(c.Canvas.ClipRect);
d.Canvas.Draw(0,0,P.Graphic);
d.PixelFormat:=pf24bit;

for y:=0 to d.Height-1 do
  begin
  l:=c.ScanLine[y];
  t:=d.ScanLine[y];
  for x:=0 to d.Width-1 do
    if not ((l^[x*3+2]=255) and (l^[x*3+1]=0) and (l^[x*3]=0) and
           (t^[x*3+2]=0) and (t^[x*3+1]=0) and (t^[x*3]=255)) then
      begin
      if Result=0 then
        Result:=CreateRectRgn(x,y,x+1,y+1)
      else
        begin
        r:=CreateRectRgn(x,y,x+1,y+1);
        CombineRgn(Result,Result,r,RGN_OR);
        DeleteObject(r);
        end;
      end;
  end;

c.Free;
d.Free;
end;



procedure TImageButtonActionLink.AssignClient(AClient:TObject);
begin
inherited AssignClient(AClient);
fClient:=AClient as TImageButton;
end;

function TImageButtonActionLink.IsCheckedLinked:Boolean;
begin
Result:=(inherited IsCheckedLinked) and (fClient.GroupIndex<>0) and (fClient.AllowAllUp) and (fClient.Down=(Action as TCustomAction).Checked);
end;

function TImageButtonActionLink.IsGroupIndexLinked:Boolean;
begin
Result:=fClient.GroupIndex=(Action as TCustomAction).GroupIndex;
end;

procedure TImageButtonActionLink.SetChecked(Value:Boolean);
begin
if IsCheckedLinked then fClient.Down:=Value;
end;

procedure TImageButtonActionLink.SetGroupIndex(Value:Integer);
begin
if IsGroupIndexLinked then fClient.GroupIndex:=Value;
end;

procedure Register;
begin
  RegisterComponents('yeganeh', [TImageButton]);
end;

end.
