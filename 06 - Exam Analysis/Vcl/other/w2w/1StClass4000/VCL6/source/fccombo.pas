{
//
// Components : TfcCustomCombo
//
// Copyright (c) 2001 by Woll2Woll Software
//
// Changes:
// 3/23/99 - PYW - Need to automatically set datasource when dropping control
//                   in a TDBCtrlGrid.
// 3/25/99 -PYW - Make sure handle is allocated when setCaret is called.
// 6/6/99 - RSW - Close this modal form upon escape or return
// 6/22/99 - RSW - Use HWND_TOPMOST for drop-down control only for formstyle=fsStayOnTop
// 6/28/99 - Support unbound csPaintCopy
// 7/4/99 - Support TCustomGrid instead of just TwwDBGrid
// 9/15/99 - Make sure handle is for me in hook
// 1/28/2000 - Fix bitmap glyph paint problem when flat or transparent
// 8/16/2000 - Fire dropdown also if screen.activecontrol is me.  When TWebBrowser has
//             focus, the dropdown button was not working.
// 6/3/2001 - PYW - MDI Child forms would not get activated prior to setting focus by clicking on button.
// 10/1/2001 - Added for OnMouseEnter and OnMouseLeave events. -PYW
}
unit fcCombo;

interface
{$i fcIfDef.pas}
{$R-}
uses
  Forms, Menus, SysUtils, Windows, Graphics, Messages, Classes,
  Controls, Buttons, Mask, StdCtrls, fcCommon, TypInfo, Dialogs, Grids,
  DB, DBCtrls, fcframe, fccombobutton;

type
  TfcComboButtonStyle = (cbsEllipsis, cbsDownArrow, cbsCustom);
//  TfcComboButtonStyle = (cbsEllipsis, cbsDownArrow);
  TfcComboStyle = (csDropDown, csDropDownList);
  TfcAlignVertical = (fcavTop, fcavCenter);
  TfcComboCloseUpEvent = procedure(Sender: TObject; Select: boolean) of object;

  TfcDropDownButton = class(TfcComboButton)
  private
    procedure CMDesignHitTest(var Message: TCMDesignHitTest); message CM_DESIGNHITTEST;
  protected
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure Paint; override;
  end;

  TfcCustomCombo = class(TCustomEdit)
  private
    FController: TComponent;
    FAlignmentVertical: TfcAlignVertical;
    FBtnParent: TWinControl;
    FButton: TfcDropDownButton;
    FDataLink: TFieldDataLink;
    FDropDownCount: Integer;
    FInfoPower: Boolean;
    FOnCustomDlg: TNotifyevent;
    FOnCloseUp: TfcComboCloseUpEvent;
    FOnDropDown: TNotifyEvent;
    FOnAfterDropDown: TNotifyEvent;
    FButtonStyle: TfcComboButtonStyle;
//    FButtonGlyph: TBitmap;
    FButtonWidth: integer;
    FCanvas, FPaintCanvas: TControlCanvas;
    FStyle: TfcComboStyle;
    FReadOnly: boolean;
    FAllowClearKey: boolean;

    FOnMouseEnter: TNotifyEvent;
    FOnMouseLeave: TNotifyEvent;
    FFrame: TfcEditFrame;
    FButtonEffects: TfcButtonEffects;

    FSavedCursor: TCursor;
    FIgnoreCursorChange: Boolean;
    skipUpdate: boolean;
    FMouseInButtonControl: boolean;
    FDisableThemes: boolean;

    // Message Handlers
    procedure WMSetFont(var Message: TWMSetFont); message WM_SETFONT;
    procedure CMCancelMode(var Message: TCMCancelMode); message CM_CANCELMODE;
    procedure CMCursorChanged(var Message: TMessage); message CM_CURSORCHANGED;
    procedure CMEnter(var Message: TCMEnter); message CM_ENTER;
    procedure CMExit(var Message: TCMExit); message CM_EXIT;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMEnabledChanged(var Message: TMessage); message CM_ENABLEDCHANGED;
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CNKeyDown(var Message: TWMKeyDown); message CN_KEYDOWN;
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    procedure WMKillFocus(var Message: TWMKillFocus); message WM_KILLFOCUS;
    procedure WMPaint(var Message: TWMPaint); message WM_PAINT;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMCut(var Message: TMessage); message WM_CUT;
    procedure WMPaste(var Message: TMessage); message WM_PASTE;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
    procedure CMMouseEnter(var Message: TMessage); message CM_MOUSEENTER;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;

    // Property Access Methods
    procedure SetController(Value: TComponent);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    function GetReadOnly: Boolean;
    procedure SetButtonStyle(Value: TfcComboButtonStyle);
    Function GetButtonGlyph: TBitmap;
    procedure SetButtonGlyph(Value: TBitmap);
    Procedure SetButtonWidth(val: integer);
    function GetButtonWidth: integer;
    procedure SetDataField(Value: string);
    procedure SetDataSource(Value: TDataSource);
    procedure SetReadOnly(Value: Boolean);
    procedure SetStyle(Value: TfcComboStyle);
    procedure SetAlignmentVertical(Value: TfcAlignVertical);
    procedure SetFocused(Value: Boolean);
  protected
    FFocused: Boolean;
//    Function LoadComboGlyph: HBitmap; virtual;
    Procedure UpdateButtonGlyph;
    procedure SetDropDownCount(Value: Integer); virtual;
    function GetDropDownControl: TWinControl; virtual; abstract;
    function GetDropDownContainer: TWinControl; virtual; abstract;
    function GetItemCount: Integer; virtual; abstract;
    function GetItemSize: TSize; virtual; abstract;
    function GetLeftIndent: Integer; virtual;
    procedure BtnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
      X, Y: Integer); virtual;
    procedure DrawButton(Canvas: TCanvas; R: TRect; State: TButtonState;
    ControlState: TControlState; var DefaultPaint:boolean); virtual;
    procedure HideCaret; virtual;
    procedure Paint; virtual;
    procedure ShowCaret; virtual;
//    procedure GlyphChanged(Sender: TObject); virtual;

    // Virtual Property Access Methods
    function GetShowButton: Boolean; virtual;
    procedure SetModified(Value: Boolean); virtual;
    procedure SetShowButton(Value: Boolean);

    // Virtual Methods
    function Editable: Boolean; virtual;
    function EditCanModify: Boolean; virtual;
    function GetClientEditRect: TRect; virtual;
    function GetEditRect: TRect; virtual;
    function GetIconIndent: Integer; virtual;
    function GetIconLeft: Integer; virtual;
    procedure DoDropDown; virtual;
    procedure DoAfterDropDown; virtual;
    procedure CloseUp(Accept: Boolean); virtual;
    procedure DataChange(Sender: TObject); virtual;
    procedure EditingChange(Sender: TObject); virtual;
    procedure HandleDropDownKeys(var Key: Word; Shift: TShiftState); virtual;
    procedure HandleGridKeys(var Key: Word; Shift: TShiftState); virtual;
    procedure Reset; virtual;
    procedure SetEditRect; virtual;
    procedure UpdateButtonPosition; virtual;
    procedure UpdateData(Sender: TObject); virtual;
    function EffectiveReadOnly: Boolean; virtual;
    procedure DoCloseUp(Accept: boolean); virtual;
    procedure DoEnter; override;
    function SkipInheritedPaint : boolean; virtual;

    function GetRightIndent(Rect:TRect): Integer; virtual;
    function GetTopIndent: Integer; virtual;

    // Overridden Methods
    procedure Change; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateWnd; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Loaded; override;
    procedure MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer); override;
    procedure MouseMove(Shift: TShiftState; X, Y: Integer); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure WndProc(var Message: TMessage); override;
    procedure PaintToCanvas(Canvas: TCanvas; Rect: TRect; Highlight, GridPaint: Boolean;
      Text: string); virtual; abstract;
    procedure DrawFrame(Canvas: TCanvas); virtual;
    function IsCustom: Boolean; virtual;
    procedure InvalidateTransparentButton;
    procedure DoMouseEnter; virtual;
    procedure DoMouseLeave; virtual;

    property Canvas: TControlCanvas read FCanvas;
    property DataLink: TFieldDataLink read FDataLink;
    property DropDownContainer: TWinControl read GetDropDownContainer;
    property BtnParent: TWinControl read FBtnParent;
  public
    ComboPatch: Variant;
    property Controller : TComponent read FController write SetController;

    constructor Create(AOwner:tcomponent); override;
    destructor Destroy; override;
    function isTransparentEffective: boolean;

    procedure SelectAll; virtual;
    function IsDataBound: Boolean; virtual;
    function IsDroppedDown: Boolean; virtual;
    procedure CheckCancelMode; virtual;
    procedure DrawInGridCell(ACanvas: TCanvas; Rect: TRect;
      State: TGridDrawState); virtual;
    procedure DropDown; virtual;

    property AlignmentVertical: TfcAlignVertical read FAlignmentVertical write SetAlignmentVertical default fcavTop;
    property AllowClearKey: boolean read FAllowClearKey write FAllowClearKey default False;
    property Button: TfcDropDownButton read FButton;
    property ButtonStyle: TfcComboButtonStyle read FButtonStyle write SetButtonStyle;
    property ButtonGlyph: TBitmap read GetButtonGlyph write SetButtonGlyph stored IsCustom;
    property ButtonWidth: integer read GetButtonWidth write SetButtonWidth default 0;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
    property DropDownCount: Integer read FDropDownCount write SetDropDownCount;
    property DropDownControl: TWinControl read GetDropDownControl;
    property InfoPower: Boolean read FInfoPower;
    property ItemCount: Integer read GetItemCount;
    property ItemSize: TSize read GetItemSize;
    property ReadOnly: Boolean read GetReadOnly write SetReadOnly;
    property ShowButton: boolean read GetShowButton write SetShowButton default True;
    property Style: TfcComboStyle read FStyle write SetStyle;
    property OnCustomDlg: TNotifyevent read FOnCustomDlg write FOnCustomDlg;
    property OnCloseUp: TfcComboCloseUpEvent read FOnCloseUp write FOnCloseUp;
    property OnDropDown: TNotifyEvent read FOnDropDown write FOnDropDown;
    property OnAfterDropDown: TNotifyEvent read FOnAfterDropDown write FOnAfterDropDown;

    property OnMouseEnter: TNotifyEvent read FOnMouseEnter write FOnMouseEnter;
    property OnMouseLeave: TNotifyEvent read FOnMouseLeave write FOnMouseLeave;

    property Frame: TfcEditFrame read FFrame write FFrame;
    property ButtonEffects: TfcButtonEffects read FButtonEffects write FButtonEffects;
    property DisableThemes : boolean read FDisableThemes write FDisableThemes default False;
  end;

  function fcGetControlInGrid(Form: TComponent; Grid: TComponent; FieldName: string): TfcCustomCombo;

implementation

//uses uxtheme, tmschema;
  {$ifdef fcDelphi7Up}
  uses Themes;
  {$endif}
  {$ifdef ThemeManager}
  uses thememgr, themesrv, uxtheme;
  {$endif}

type
  TCheatGridCast = class(TCustomGrid);

  TBtnWinControl = class(TWinControl)
  private
    EditControl: TfcCustomCombo;
    procedure WMEraseBkgnd(var Message: TWmEraseBkgnd); message WM_ERASEBkgnd;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
  public
    constructor Create(AOwner: TComponent); override;
  end;

var fcCOMBOHOOK: HHOOK = 0;
    WM_FC_CALLDROPDOWN: UINT = 0;

{$ifndef fcDelphi4Up}
function fcIsInwwObjectView(control: TWinControl):boolean;
begin
  result := False;
end;
function fcIsInwwObjectViewPaint(control: TWinControl):boolean;
begin
  result := False;
end;
{$endif}


function fcGetControlInGrid(Form: TComponent; Grid: TComponent; FieldName: string): TfcCustomCombo;
var i: Integer;
    ControlType: TStrings;
    AComponent: TComponent;
begin
  if not Boolean(fcGetOrdProp(Grid, 'ControlInfoInDataSet')) then
    ControlType := TStrings(fcGetOrdProp(Grid, 'ControlType'))
  else ControlType := TStrings(fcGetOrdProp(TDataSource(fcGetOrdProp(Grid, 'DataSource')).DataSet, 'ControlType'));

  result := nil;

  for i := 0 to ControlType.Count - 1 do
  begin
    if (fcGetToken(ControlType[i], ';', 0) = FieldName) then
    begin
      AComponent := Form.FindComponent(fcGetToken(ControlType[i], ';', 2));
      if AComponent is TfcCustomCombo then
         result := AComponent as TfcCustomCombo;
      Break;
    end;
  end;
end;

{ 9/28/99 - Change made 9/15/99 causes side effect of combo not clsing when dragging form's caption }
{ Logic changed }
function fcComboHookProc(nCode: Integer; wParam: Integer; lParam: Integer): LResult; stdcall;
var r1, r2: TRect;
    CurHandle: HWND;
    parentForm: TCustomForm;
begin
  result := CallNextHookEx(fcCOMBOHOOK, nCode, wParam, lParam);
  with PMouseHookStruct(lParam)^ do
  begin
    case wParam of
      WM_LBUTTONDOWN, WM_NCLBUTTONDOWN, WM_MOUSEMOVE, WM_LBUTTONUP:
      begin
        if (Screen.ActiveControl <> nil) and (Screen.ActiveControl is TfcCustomCombo) then
          with (Screen.ActiveControl as TfcCustomCombo) do
        begin
          // Auto-closeup if clicked outside of drop-down area
          // 9/15/99 - Make sure handle is for me }
          if IsDroppedDown {and (hwnd = DropDownControl.Handle) }then
          begin

            GetWindowRect(DropDownControl.Handle, r1);
            if (wParam = WM_LBUTTONDOWN) or (wParam = WM_NCLBUTTONDOWN) then
            begin
              GetWindowRect(Handle, r2);
//              if (not PtInRect(r1, pt)) and (not PtInRect(r2, pt)) then CloseUp(False);
              with r1 do
              begin
                Right := Left + DropDownControl.Width;
                Bottom := Top + DropDownControl.Height;
              end;
              CurHandle := Handle;
              if wParam = WM_LBUTTONDOWN then CurHandle := DropDownControl.Handle;

              parentForm:= GetParentForm(Screen.ActiveControl);
              if ((parentForm<>nil) and (parentForm.Handle=hwnd)) or
                 (GetParent(hwnd)<>0) then
              begin
                 if not PtInRect(r1, pt) then with DropDownControl.ScreenToClient(Point(pt.x, pt.y)) do
                   PostMessage(CurHandle, wParam, 0, MakeLParam(WORD(fcThisThat(x >= 0, x, -1)),WORD(fcThisThat(y >= 0, y, -1))));
              end
            end else if (hwnd = DropDownControl.handle) and
              ((wParam = WM_MOUSEMOVE) or (wParam = WM_LBUTTONUP)) then
            begin
               if not PtInRect(r1, pt) then with DropDownControl.ScreenToClient(Point(pt.x, pt.y)) do
                  PostMessage(DropDownControl.Handle, wParam, 0, MakeLParam(WORD(fcThisThat(x >= 0, x, -1)),WORD(fcThisThat(y >= 0, y, -1))));
            end
          end
        end;
      end;
    end;
  end;
end;

procedure TfcDropDownButton.CMDesignHitTest(var Message: TCMDesignHitTest);
begin
  inherited;
//  Message.Result := 1;
end;

procedure TfcDropDownButton.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//  TfcCustomCombo(Owner).FDroppingDown := True;
  inherited;
end;

procedure TfcDropDownButton.MouseUp(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  TfcCustomCombo(parent.parent).InvalidateTransparentButton; { 1/28/2000 }
//  TfcCustomCombo(Owner).FDroppingDown := False;
end;

procedure TfcDropDownButton.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if not PtInRect(Clientrect, Point(x, y)) then
  begin
    Perform(WM_LBUTTONUP, 0, MAKELPARAM(x, y));
    ReleaseCapture;
  end;
end;


procedure TfcDropDownButton.Paint;
var R : TRect;
    DefaultPaint:boolean;
begin
  if TfcCustomCombo(parent.parent).SkipUpdate then exit;

  if (csPaintCopy in ControlState) and
      not (csDesigning in ComponentState) and fcIsInGrid(parent.parent) then exit;

  SetRect(R, 0, 0, ClientWidth, ClientHeight);

   with TfcCustomCombo(Parent.Parent) do
   begin
      DefaultPaint:= True;
      FMouseInButtonControl:= MouseInControl;

      if (FButton.Glyph.Handle=0) or MouseInControl or
         FFocused or fcisClass(Parent.classType, 'TwwDBGrid') then
         if not (ButtonEffects.Transparent and (ButtonStyle=cbsDownArrow)) then
           if not fcUseThemes(self.parent.parent) then
           begin
              DrawButton(self.Canvas, R, FState, ControlState, DefaultPaint);
           end;
{           if not ThemeServices.ThemesEnabled then
           begin
              DrawButton(self.Canvas, R, FState, ControlState, DefaultPaint);
           end;
}
      if DefaultPaint then begin
         Ellipsis:= ButtonStyle = cbsEllipsis;
         inherited Paint;
      end;

      { Draw edges if Default Paint }
      if MouseInControl or (not ButtonEffects.Flat) or //FButton.Flat) or
         FFocused or fcisClass(Parent.classType, 'TwwDBGrid') then
      begin
         if not fcUseThemes(self.parent.parent) then
//         if not ThemeServices.ThemesEnabled then
         begin
            if FState=bsDown then
               DrawEdge(self.Canvas.Handle, R, EDGE_SUNKEN, BF_RECT)
            else
               DrawEdge(self.Canvas.Handle, R, EDGE_RAISED, BF_RECT)
         end;
      end
   end

end;

type
TfcComboButtonEffects = class(TfcButtonEffects)
   protected
      procedure Refresh; override;
end;

Procedure TfcComboButtonEffects.Refresh;
begin
   (Control as TfcCustomCombo).Updatebuttonglyph;
end;

constructor TfcCustomCombo.Create;
begin
  inherited Create(AOwner);

  ControlStyle := ControlStyle + [csReplicatable];

  FCanvas := TControlCanvas.Create;
  FCanvas.Control := self;

  FAlignmentVertical := fcavTop;
  FButtonStyle := cbsDownArrow;
  FDropDownCount := 8;

  FBtnParent := TBtnWinControl.Create (Self);
  with FBtnParent do
  begin
    ControlStyle := ControlStyle + [csReplicatable];
    Width := fcMax(GetSystemMetrics(SM_CXVSCROLL) + 4, 17);
    Height := 17;
    Visible := True;
    Parent := Self;
  end;

  FButton := TfcDropDownButton.Create(self);
  with FButton do
  begin
    ControlStyle := ControlStyle + [csReplicatable];
    SetBounds (0, 0, FBtnParent.Width, FBtnParent.Height);
    Width := fcMax(GetSystemMetrics(SM_CXVSCROLL), 15);
    Parent := FBtnParent;
    OnMouseDown := BtnMouseDown;
  end;

  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnEditingChange := EditingChange;
  FDataLink.OnUpdateData := UpdateData;

  FSavedCursor := crIBeam;

  FFrame:= TfcEditFrame.create(self);
  FButtonEffects:= TfcComboButtonEffects.create(self, FButton);
//  FButton.Glyph.Handle:= LoadComboGlyph;  { Do after button effects is assigned }
//
//  FButtonGlyph := TBitmap.Create;
//  FButtonGlyph.OnChange := GlyphChanged;


end;

destructor TfcCustomCombo.Destroy;
begin
  if fcCOMBOHOOK <> 0 then
  begin
    UnhookWindowsHookEx(fcCOMBOHOOK);
    fcCOMBOHOOK := 0;
  end;
  FCanvas.Free;
  FPaintCanvas.Free;
  FDataLink.Free;
  FDataLink:= Nil;
  FFrame.Free;
  FButtonEffects.Free;
//  FButtonGlyph.Free;
  inherited Destroy;
end;

function TfcCustomCombo.isTransparentEffective: boolean;
begin
   result:= Frame.Transparent and Frame.IsFrameEffective
     and not fcIsDesigning(self)
end;

function TfcCustomCombo.GetIconIndent: Integer;
begin
  result:= FBtnParent.Width;
end;

function TfcCustomCombo.GetIconLeft: Integer;
begin
  result:= FBtnParent.Left - 1;
end;

function TfcCustomCombo.GetShowButton: Boolean;
begin
  result:= FBtnParent.Visible;
end;

procedure TfcCustomCombo.SetShowButton(Value: Boolean);
begin
  if (FBtnParent.Visible <> Value) then
  begin
    FBtnParent.Visible := Value;
    UpdateButtonPosition;
    if not (csLoading in Owner.ComponentState) then SetEditRect;
    Invalidate;
  end
end;

procedure TfcCustomCombo.DrawButton(Canvas: TCanvas; R: TRect; State: TButtonState;
    ControlState: TControlState; var DefaultPaint:boolean);
var Transparent: boolean;
begin
   if ButtonStyle=cbsCustom then exit;

   DefaultPaint:= False;
   Transparent:=  FButton.Flat and
      (not FMouseInButtonControl) and not (FFocused);
   if ButtonStyle=cbsDownArrow then
      fcDrawDropDownArrow(Canvas, R, State, Enabled, ControlState)
   else begin
      fcDrawEllipsis(Canvas, R, State, Enabled, Transparent,
         ButtonEffects.Transparent {and ButtonEffects.Flat},
         ControlState)
   end
end;

procedure TfcCustomCombo.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);

  with Params do
    Style := Style and not (ES_AUTOVSCROLL or ES_WANTRETURN) or
      WS_CLIPCHILDREN or ES_MULTILINE;

  if IsTransparentEffective and Frame.CreateTransparent then
  begin
     Params.ExStyle := Params.ExStyle or WS_EX_TRANSPARENT;
  end;


end;

procedure TfcCustomCombo.CreateWnd;
begin
  inherited;
  if (BorderStyle=bsNone) and AutoSize and
     not (parent is TCustomGrid) then Frame.AdjustHeight;
  SetEditRect;
  if IsTransparentEffective then
  begin
    fcDisableParentClipping(Parent);
  end
end;

function TfcCustomCombo.GetEditRect: TRect;
begin
  result.Bottom := ClientHeight + 1;
  if ShowButton then result.Right := FBtnParent.Left - 2   //10/4/2001 - Changed from -1 to -2
  else result.Right := ClientWidth - 2;

  { RSW - 3/27/99 }
  Result.Top := GetTopIndent;
  if fcIsInwwObjectView(Self) then
  begin
    Result.Top:= 1;
    Result.Left:=1;
  end
  else if (Frame.IsFrameEffective) then
  begin
     Frame.GetEditRectForFrame(Result);
  end
  else if (BorderStyle = bsNone) and fcIsInwwGrid(Self) then begin
     Result.Left := 2;
  end
  else if (BorderStyle = bsNone) then
  begin
     Result.Left := 1;
  end
  else begin
     Result.Left := 0;
  end;
//  if not Frame.isFrameEffective then { 11/22/99 - Don't do for frame }
     inc(result.Left, GetLeftIndent);
end;

procedure TfcCustomCombo.SetEditRect;
var r: TRect;
begin
  Canvas.font:= Font; { 4/14/99 }
  r := GetEditRect;
  SendMessage(Handle, EM_SETRECTNP, 0, LPARAM(@r));
end;

procedure TfcCustomCombo.UpdateButtonPosition;
var offset: integer;
begin
  if Frame.IsFrameEffective then
  begin
     offset:= 2
  end
  else offset:= 0;
  if (not NewStyleControls) or (BorderStyle = bsNone) or (not Ctl3d) then
     FBtnParent.SetBounds (Width - FButton.Width - offset, offset, FButton.Width, ClientHeight-offset*2)
  else
     FBtnParent.SetBounds (Width - FButton.Width - 4, offset, FButton.Width, ClientHeight-offset);

//  if (not NewStyleControls) or (BorderStyle = bsNone) or (not Ctl3d) then
//    FBtnParent.SetBounds(Width - FButton.Width, 0, FButton.Width, ClientHeight)
//  else
//    FBtnParent.SetBounds(Width - FButton.Width - 4, 0, FButton.Width, ClientHeight);

  if not FBtnParent.Visible and (csDesigning in ComponentState) then
    FBtnParent.Left := BoundsRect.Right;

  if BorderStyle = bsNone then
  begin
    FButton.Top := -1;
    FButton.Height := FBtnParent.Height+1;
  end else begin
    FButton.Top:= 0;
    FButton.Height := FBtnParent.Height;
  end;

  SetEditRect;
end;

function TfcCustomCombo.IsDataBound: Boolean;
begin
  result := (DataSource <> nil) and (DataSource.DataSet <> nil) and (DataField <> '');
end;

procedure TfcCustomCombo.CheckCancelMode;
var p, p2: TPoint;
    wndRect: TRect;
begin
  GetCursorPos(p);
  p2 := DropDownControl.ClientToScreen(Point(0, 0));
  GetWindowRect(Handle, wndRect);
  with p2 do
  begin
    if (not PtInRect(Rect(x, y, x + DropDownControl.Width, y + DropDownControl.Height), p)) and
       (not PtInRect(wndRect, p)) then CloseUp(False);
  end;
end;

procedure TfcCustomCombo.DoCloseUp(Accept: boolean);
begin
   if Assigned(FOnCloseUp) then FOnCloseUp(self, Accept);
end;

procedure TfcCustomCombo.CloseUp(Accept: boolean);
//var i: Integer;
begin
//  i := GetCapture; { RSW }
//  if Accept then Modified := True; { RSW - Rely on parent class to set modified as we don't really know }
//  if i <> 0 then SendMessage(GetCapture, WM_CANCELMODE, 0, 0);
  { RSW - comment out as this causes problem with button not getting mouse up }
  try
    SelectAll;

    if IsDroppedDown then
    begin
      SetWindowPos(DropDownContainer.Handle, 0, 0, 0, 0, 0, SWP_NOZORDER or
        SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE or SWP_HIDEWINDOW);
      DropDownContainer.Visible := False;
      Invalidate;
      if DropDownControl.Focused then SetFocus;
     { RSW - Let parent class call CloseUP so that its fired after things are updated (i.e. modified flag )}
//    if Assigned(FOnCloseUp) then FOnCloseUp(self, Accept);
    end;
    if Style = csDropDownList then HideCaret;
  finally
    if fcCOMBOHOOK <> 0 then
    begin
      UnhookWindowsHookEx(fcCOMBOHOOK);
      fcCOMBOHOOK := 0;
    end;
  end;
end;

procedure TfcCustomCombo.DataChange(Sender: TObject);
begin
  if FDataLink.Field <> nil then
  begin
    if not (csDesigning in ComponentState) then
    begin
      if (FDataLink.Field.DataType = ftString) and (MaxLength = 0) then
        MaxLength := FDataLink.Field.Size;
    end;
    if Focused and FDataLink.CanModify then
      Text := FDataLink.Field.Text
    else begin
      Text := FDataLink.Field.DisplayText;
{ 7/31/00 - Remove setting modified as this oode sets it to true even when the control does
 not have focus }
//      if FDataLink.Editing then
//        Modified := True;
    end;
  end else
  begin
    if csDesigning in ComponentState then
      Text := Name else
      Text := '';
  end;
end;

procedure TfcCustomCombo.EditingChange(Sender: TObject);
begin
  inherited ReadOnly := not FDataLink.Editing;  // RSW use inherited ReadOnly
end;

procedure TfcCustomCombo.UpdateData(Sender: TObject);
begin
  if FDataLink.Field.Text <> Text then
    FDataLink.Field.Text := Text;
end;

procedure TfcCustomCombo.DrawInGridCell(ACanvas: TCanvas; Rect: TRect;
  State: TGridDrawState);
begin
end;

procedure TfcCustomCombo.DoDropDown;
begin
  if Assigned(FOnDropDown) then FOnDropDown(self);
end;

procedure TfcCustomCombo.DoAfterDropDown;
begin
  if Assigned(FOnAfterDropDown) then FOnAfterDropDown(self);
end;

procedure TfcCustomCombo.DropDown;
var p: TPoint;
    NewControlSize: TSize;
    Border: Integer;
begin
  if fcCOMBOHOOK = 0 then fcCOMBOHOOK := SetWindowsHookEx(WH_MOUSE, @fcComboHookProc, HINSTANCE, GetCurrentThreadID);
  DoDropDown;

  p := Parent.ClientToScreen(Point(Left, Top));

  // 2/25/99 - Handle Grid Paint bug when closing up in grid
  if fcIsInwwGrid(Self) then inc(p.y);

  // Initialize size of DropDownControl
  Border := 2 * GetSystemMetrics(SM_CYBORDER);
  NewControlSize := ItemSize;
  if ItemCount > 0 then NewControlSize.cy :=
    fcMin(DropDownCount, ItemCount) * NewControlSize.cy
  else NewControlSize.cy := Height;
  inc(NewControlSize.cy, Border);
  DropDownContainer.Height := NewControlSize.cy;

  // 2/8/01 - Color combo too wide before
  if NewControlSize.cx=0 then
     NewControlSize.cx:= Width
  else
     NewControlSize.cx := fcMax(Width, NewControlSize.cx + Border + 2 * GetSystemMetrics(SM_CXVSCROLL));

  // Adjust if near right edge of screen
  if p.x > Screen.Width - NewControlSize.cx then p.x := (p.x + Width) - NewControlSize.cx;
  // Adjust if near bottom of screen
  if p.y + Height + NewControlSize.cy > Screen.Height{GetSystemMetrics(SM_CYFULLSCREEN)} then p.y := (p.y - Height) - NewControlSize.cy;

  TEdit(DropDownContainer).Color := TEdit(DropDownControl).Color;

  { 6/22/99 - Use HWND_TOPMOST only for formstyle=fsStayOnTop }
  if TForm(GetParentForm(self)).formstyle = fsStayOnTop then
    SetWindowPos(DropDownContainer.Handle, HWND_TOPMOST, p.x, p.y + Height, NewControlSize.cx, NewControlSize.cy,
      SWP_NOACTIVATE or SWP_SHOWWINDOW)
  else
    SetWindowPos(DropDownContainer.Handle, HWND_TOP, p.x, p.y + Height, NewControlSize.cx, NewControlSize.cy,
      SWP_NOACTIVATE or SWP_SHOWWINDOW);
  DoAfterDropDown;
  DropDownContainer.Visible := True;
  DropDownControl.Update;
  //2/25/99 - Let inherited classes do the selectall.
  //  SelectAll;
  ShowCaret;
end;

{ return true if allowed to type text into control }
function TfcCustomCombo.Editable: boolean;
begin
  result := true;
//  Result := IsDroppedDown;
end;

procedure TfcCustomCombo.HandleDropDownKeys(var Key: Word; Shift: TShiftState);
begin
  case Key of
    VK_F4: // Support F4 for dropping-down
      if not (ssAlt in Shift) then begin
        if isDroppedDown then CloseUp(True)
        else DropDown;
        Key := 0;
      end;
    VK_UP, VK_DOWN:
      if ssAlt in Shift then
      begin
        if IsDroppedDown then CloseUp(True)
        else DropDown;
        Key := 0;
      end;
    VK_RETURN, VK_ESCAPE:
      if IsDroppedDown and not (ssAlt in Shift) then
      begin
        CloseUp(Key = VK_RETURN);
        Key := 0;
      end
  end;
end;

procedure TfcCustomCombo.Change;
begin
  if ((DataLink<>Nil) and (FDataLink.Field=Nil)) then Modified:= True;
{  if (DataLink<>Nil) and
     ((FDataLink.Field=Nil) or
      (DataSource.dataset.state in [dsEdit, dsInsert])) then
  begin
     FDataLink.Modified;
     Modified:= True;
  end;}

  inherited;
end;

function TfcCustomCombo.EditCanModify: Boolean;
begin
  result:= False;
  if EffectiveReadOnly then exit; { RSW - otherwise CloseUP still goes into edit mode}

  // Respect autoedit
  if (DataSource<>Nil) and (not DataSource.autoEdit) then
     if (not (DataSource.state in [dsEdit, dsInsert])) then exit;

  if FDatalink.Field <> nil then result := FDataLink.Edit
  else result := True;
end;

procedure TfcCustomCombo.HandleGridKeys(var Key: Word; Shift: TShiftState);
type
  TSelection = record
    StartPos, EndPos: Integer;
  end;

var SkipGridCode: boolean;

  procedure SendToObjectView;
  begin
     TCheatGridCast(Parent).KeyDown(Key, Shift);
  end;

  procedure SendToParent;
  begin
    Parent.setFocus;
    if Parent.focused then
       SendMessage(Parent.handle,wm_keydown,key,0);
    Key := 0;
  end;

  procedure ParentEvent;
  var GridKeyDown: TKeyEvent;
  begin
    { 1/25/99 - RSW Prevent grid's OnKeyDown from firing twice when encounter tab or cr }
    if (Screen.ActiveControl<>self) and ((key=13) or (key=9)) then exit;

    GridKeyDown := TEdit(Parent).OnKeyDown;
    if Assigned(GridKeyDown) then GridKeyDown(Parent, Key, Shift);
  end;

  function Alt: Boolean;
  begin
    Result := ssAlt in Shift;
  end;

  function Ctrl: Boolean;
  begin
    Result := ssCtrl in Shift;
  end;

{  procedure Deselect;
  begin
    Exit;
    SendMessage(Handle, EM_SETSEL, -1, 0);
    selLength := 0;
  end;}

  function ForwardMovement: Boolean;
  begin
     Result := (dgAlwaysShowEditor in fcGetGridOptions(self));
  end;

  function Selection: TSelection;
  begin
    SendMessage(Handle, EM_GETSEL, Longint(@Result.StartPos), Longint(@Result.EndPos));
  end;

  function LeftSide: Boolean;
  begin
//    result := ((SelStart = 0) and (SelLength <> GetTextLen)) or (Style = csDropDownList)
    with Selection do
      Result := (StartPos = 0) and
      ((EndPos = 0) or (EndPos = GetTextLen));
  end;

  function RightSide: Boolean;
  begin
    with Selection do
      Result := ((StartPos = 0) or (EndPos = StartPos)) and
        (EndPos = GetTextLen);
   end;

  procedure Deselect; {!!! Don't do for Treecombo}
  begin
    SendMessage(Handle, EM_SETSEL, -1, 0);
    selLength:= 0;
  end;

begin
  if (Key in [vk_next, vk_prior, vk_up, vk_down, vk_home, vk_end, vk_right, vk_left]) and
     (IsDroppedDown) then skipGridCode:= True
  else SkipGridCode:= False;

  if (fcIsInwwGrid(Self)) and (not SkipGridCode) then begin
    case Key of
      VK_ESCAPE: if not Modified then SendToParent;
      VK_NEXT, VK_PRIOR, VK_UP, VK_DOWN: if (not Alt) then SendToParent;
       VK_LEFT: if fcIsInwwObjectView(self) then
                begin
//                   if Ctrl or LeftSide then SendToObjectView
                end
                else if ForwardMovement and (Ctrl or LeftSide) then SendToParent;
       VK_RIGHT: if fcIsInwwObjectView(self) then
                 begin
//                    if Ctrl or RightSide then SendToObjectView
                 end
                 else if ForwardMovement and (Ctrl or RightSide) then SendToParent;
//      VK_LEFT: if fcIsInwwObjectView(self) then SendToObjectView
//                else if ForwardMovement and (Ctrl or LeftSide) then SendToParent;
//      VK_RIGHT: if fcIsInwwObjectView(self) then SendToObjectView
//                 else if ForwardMovement and (Ctrl or RightSide) then SendToParent;
      VK_HOME: if ForwardMovement and (Ctrl or LeftSide) then SendToParent;
      //((SelStart = 0) and (SelLength <> GetTextLen)) or (Style = csDropDownList) then SendToParent;
      VK_END: if ForwardMovement and (Ctrl or RightSide) then SendToParent;
      //if (SelStart = GetTextLen) or (Style = csDropDownList) then SendToParent;
      VK_INSERT: if not (ssShift in Shift) then SendToParent;
      VK_DELETE: if Ctrl then SendToParent;
      VK_F2:
         begin
           ParentEvent;
           if Key = VK_F2 then
           begin
             if Editable and (Style=csDropDown) then Deselect;
             Key:=0;
           end;
         end;
    end;
    if not (Editable and (Style=csDropDown)) and
       (Key in [VK_LEFT, VK_RIGHT, VK_HOME, VK_END]) then
       if not fcIsInwwObjectView(self) then SendToParent;

    if Key <> 0 then ParentEvent;
  end;
  if Key = 0 then Exit;

  if (ssCtrl in Shift) then
  begin
    inherited KeyDown(Key, Shift);
     Exit;
  end;

  if fcIsInwwGrid(Self) and (Key = VK_TAB) then
  begin
    inherited KeyDown(Key, Shift);
    Exit;
  end;

  inherited KeyDown(Key, Shift);
end;

procedure TfcCustomCombo.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if GetKeyState(VK_MENU) < 0 then Include(Shift, ssAlt);

  if modified and (not isDroppedDown) and (key=VK_ESCAPE) then
  begin
    Reset;
    Key := 0;
  end;

  HandleDropDownKeys(Key, Shift);
  HandleGridKeys(Key, Shift);

  inherited KeyDown(Key, Shift);

  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
    if not EditCanModify then
       key:= 0;
//    FDataLink.Edit;

end;


procedure TfcCustomCombo.KeyPress(var Key: Char);
begin
  inherited;
  if EffectiveReadOnly then
  begin
     Key:= #0;
     exit;
  end;{ RSW }

  case Key of
    ^H, ^V, ^X, #32..#255:
//      if (Style = csDropDown) or IsDroppedDown then
//      if (Style = csDropDown) or isDroppedDown then
      if Editable then
      begin
         if (not IsDroppedDown) then
            if not EditCanModify then key:= #0
            //FDataLink.Edit
      end
      else Key := #0;
    #27:
      begin
//        Reset;  //12/11/1998 - Moved to OnKeyDown event.
        Key := #0;
      end;
    #9, #13: if fcIsInwwGrid(Self) then Key:= #0;
                                                         { 4/28/99 - Ignore tab and cr                            }
                                                         { cr needs to be eaten so that parentgrid is not confused }
                                                         { when using dgEnterToTab }
  end;
end;

function TfcCustomCombo.GetClientEditRect: TRect;
begin
  result := ClientRect;
  // 9/28/01 - Fix combo in grid problem where button area should still paint text
//  if not fcIsInwwObjectViewPaint(self) and ShowButton then
  if not fcIsInwwGridPaint(self) and ShowButton then
     result.Right := FBtnParent.Left;
end;

function TfcCustomCombo.GetDataField;
begin
  result := FDataLink.FieldName;
end;

function TfcCustomCombo.GetDataSource: TDataSource;
begin
  if FDataLink<>nil then
     result := FDataLink.DataSource
  else
    result:= nil;
end;

function TfcCustomCombo.EffectiveReadOnly: Boolean;
begin
  result:= FReadOnly or FDataLink.ReadOnly or {(inherited ReadOnly) or}
           ((FDataLink.Field<>nil) and (not FDataLink.Field.CanModify));
end;

function TfcCustomCombo.GetReadOnly: Boolean;
begin
  result:= FReadOnly;
//  if IsDataBound then result := FDataLink.ReadOnly else result := inherited ReadOnly;
end;

procedure TfcCustomCombo.SetButtonStyle(Value: TfcComboButtonStyle);
begin
  if Value <> FButtonStyle then
  begin
    FButtonStyle := Value;
    if HandleAllocated then RecreateWnd;
    FButton.Invalidate;
  end
end;

procedure TfcCustomCombo.SetDataField(Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TfcCustomCombo.SetDataSource(Value: TDataSource);
begin
  FDataLink.DataSource := Value;
  if Value <> nil then Value.FreeNotification(self);
end;

procedure TfcCustomCombo.SetReadOnly(Value: Boolean);
begin
//  FDataLink.ReadOnly:= Value;
  FReadOnly:= Value;
{  if Style <> csDropDownList then }inherited ReadOnly := Value;
//  if IsDataBound then FDataLink.ReadOnly := Value;
//{  if Style <> csDropDownList then }inherited ReadOnly := Value;
end;

procedure TfcCustomcombo.SetStyle(Value: TfcComboStyle);
begin
  if FStyle <> Value then
  begin
    FStyle := Value;
    if HandleAllocated and not (csLoading in ComponentState) then
    begin
      if FStyle = csDropDownList then
      begin
        inherited ReadOnly := True;  { Should be inherited Readonly, but Hidecaret already does this }
        HideCaret;
      end else begin
        ShowCaret;
      end;
    end;
  end;
end;

function TfcCustomCombo.IsDroppedDown: boolean;
begin
  result := False;
end;

procedure TfcCustomCombo.Loaded;
begin
  if FButtonWidth=0 then
     FButton.Width := fcMax(GetSystemMetrics(SM_CXVSCROLL), 15);
  if (Parent <> nil) or (Owner <> nil) then
    UpdateButtonPosition;
  inherited Loaded;
end;

procedure TfcCustomCombo.MouseDown(Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
//  InvalidateTransparentButton;

  if Style = csDropDownList then
  begin
    if not IsDroppedDown and (Button = mbLeft) then begin
      PostMessage(Handle, WM_FC_CALLDROPDOWN, 0, 0);
      ReleaseCapture; { RSW - Capture causes cursor problems }
    end
    else CloseUp(True);
  end;
end;

procedure TfcCustomCombo.MouseMove(Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FIgnoreCursorChange := True;
  if Style = csDropDownList then {Screen.}Cursor := crArrow else Cursor := FSavedCursor;   // Change component cursor, not screen cursor. -ksw (2/12/99)
  FIgnoreCursorChange := False;
end;

procedure TfcCustomCombo.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited;
  if (Operation = opRemove) and (AComponent = DataSource) then DataSource := nil;
  if (Operation = opRemove) and (AComponent = FController) then FController:= nil;
end;

procedure TfcCustomCombo.WndProc(var Message: TMessage);
begin
  if Message.Msg = WM_FC_CALLDROPDOWN then
    DropDown;
  case Message.Msg of
    WM_PASTE, WM_CUT, WM_KEYFIRST..WM_KEYLAST:
      if fcIsInwwGrid(self) then Change;
    WM_NCLBUTTONDOWN: CloseUp(True);
  end;

  inherited;
end;

procedure TfcCustomCombo.CMCancelMode(var Message: TCMCancelMode);
begin
//  if (Message.Sender <> Self) and (Message.Sender <> DropDownControl) then
//    CloseUp(False);
end;

procedure TfcCustomCombo.CMCursorChanged(var Message: TMessage);
begin
  inherited;
  if not FIgnoreCursorChange then FSavedCursor := Cursor;
end;

procedure TfcCustomCombo.CMEnter(var Message: TCMEnter);
var exStyle, origStyle: longint;
begin
  if AutoSelect and not (csLButtonDown in ControlState) then SelectAll;
  inherited;

  SetFocused(True);

  if ButtonEffects.Flat then FButton.invalidate;
  
  if IsTransparentEffective then begin
     Frame.CreateTransparent:= False;
     OrigStyle:= Windows.GetWindowLong(handle, GWL_EXSTYLE);
     exStyle:= OrigStyle and not WS_EX_TRANSPARENT;
     Windows.SetWindowLong(handle, GWL_EXSTYLE, exStyle);
     invalidate;
  end;

  if Frame.enabled then invalidate; { See if this causes any flicker }
  
end;

procedure TfcCustomCombo.CMEnabledChanged(var Message: TMessage);
begin
  inherited;
  FButton.Enabled := Enabled;
end;

procedure TfcCustomCombo.SetFocused(Value: Boolean);
begin
  if FFocused <> Value then
  begin
    FFocused := Value;
//    if (FAlignment <> taLeftJustify) then Invalidate;
    if FDataLink.Field<>Nil then begin
       FDataLink.Reset;
    end
  end;
end;

procedure TfcCustomCombo.CMExit(var Message: TCMExit);
var exStyle, origStyle: longint;
begin
  try
    FDataLink.UpdateRecord;
    SetFocused(False);

    if ButtonEffects.Flat then FButton.invalidate;

    if IsTransparentEffective then begin
//       Frame.CreateTransparent:= True;
//       RecreateWnd;
       { Try not recreating window by testing following code instead of IP2000 code }
       OrigStyle:= Windows.GetWindowLong(handle, GWL_EXSTYLE);
       exStyle:= OrigStyle or WS_EX_TRANSPARENT;
       Windows.SetWindowLong(handle, GWL_EXSTYLE, exStyle);

       SetEditRect;
       Frame.RefreshTransparentText(True);
    end;
    if Frame.enabled then invalidate;

  except
    SelectAll;
    SetFocus;
    raise;
  end;
  DoExit;
end;

//3/23/1999 - PYW - Need to automatically set datasource when dropping control
//                  in a TDBCtrlGrid.
procedure TfcCustomCombo.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;

procedure TfcCustomCombo.CMTextChanged(var Message: TMessage);
begin
  if IsTransparentEffective and not FFocused then
     Frame.RefreshTransparentText;
  inherited;
  if fcIsInwwGrid(self) then Change;
end;

procedure TfcCustomCombo.CMFontChanged(var Message: TMessage);
begin
  inherited;
  // This is needed only when changing font in the middle of editing
  if not (csLoading in Owner.ComponentState) then SetEditRect;
end;

procedure TfcCustomCombo.CNKeyDown(var Message: TWMKeyDown);
var ShiftState: TShiftState;
begin
  if not (csDesigning in ComponentState) then
    with Message do
    begin
       if (charcode = VK_TAB) and IsDroppedDown then Closeup(True)
       else if((charcode=vk_return) or (charcode=vk_escape)) then begin
          if IsDroppedDown then exit
          else if (not modified) or (charcode = vk_return) then { 6/6/99 - Close this modal form }
             SendMessage(GetParent(Handle), TMessage(Message).Msg,
             TMessage(Message).wParam, TMessage(Message).lParam);
       end
    end;

  if not (csDesigning in ComponentState) and fcIsInwwGrid(self) then
  begin
    with Message do
    begin

      ShiftState := KeyDataToShiftState(KeyData);

      if (charcode = VK_TAB) or (charcode = VK_RETURN) then begin
         if parent is TCustomGrid then begin
           if (charcode <> VK_TAB) or (goTabs in TCheatGridCast(parent).Options) then {7/3/97}
           begin
              parent.setFocus;
              if parent.focused then { Bug fix - Abort in validation prevents focus change }
                TCheatGridCast(parent).KeyDown(charcode, shiftState);
              exit;
           end
         end
      end;

      if (CharCode = VK_TAB) or (CharCode = VK_RETURN) then
      begin
        if fcIsInwwGrid(self) then
        begin
          if (CharCode <> VK_TAB) or (dgTabs in (fcGetGridOptions(self))) then
          begin
            Parent.SetFocus;
            if Parent.Focused then
              SendMessage(Parent.Handle, WM_KEYDOWN, CharCode, 0);
            Exit;
          end
        end
      end
    end
  end;

  inherited;
end;

function TfcCustomCombo.SkipInheritedPaint : boolean;
begin
  result := False;
end;

procedure TfcCustomCombo.WMPaint(var Message: TWMPaint);
var r: TRect;
    DC: HDC;
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
  if ((Frame.enabled or SkipInheritedPaint) and (not FFocused)) or
     (csPaintCopy in ControlState) then
  begin
     // 6/28/99 - Support unbound csPaintCopy }
      { if not editable with focus, need to do drawing to show proper focus }
      try
         if FPaintCanvas = nil then
         begin
            FPaintCanvas := TControlCanvas.Create;
            FPaintCanvas.Control := Self;
         end;
         CanvasNeeded;

         if Message.DC = 0 then DC := BeginPaint(Handle, PS)
         else DC:= Message.DC;
         FPaintCanvas.Handle := DC;

         if FDataLink.Field=nil then
            PaintToCanvas(FPaintCanvas, GetClientEditRect, True, False,
               Text)
         else
            PaintToCanvas(FPaintCanvas, GetClientEditRect, True, False,
               FDataLink.Field.asString);

        if Frame.IsFrameEffective then
        begin
          DrawFrame(FPaintCanvas);
        end;

      finally
         FPaintCanvas.Handle := 0;
         if Message.DC = 0 then EndPaint(Handle, PS);
      end;
  end
  else begin
     inherited;
     Paint;

     if Frame.IsFrameEffective then
     begin
       CanvasNeeded;
       FCanvas.Handle:= message.DC;
       DrawFrame(FCanvas);
       FCanvas.Handle:= 0;
     end;
  end;

  r := FBtnParent.ClientRect;
  InvalidateRect(FBtnParent.Handle, @r, False);
end;

procedure TfcCustomCombo.WMSize(var Message: TWMSize);
begin
  inherited;
  UpdateButtonPosition;
  SetEditRect;
end;

procedure TfcCustomCombo.WMKillFocus(var Message: TWMKillFocus);
begin
  inherited;
  if (DropdownContainer<>nil) and
     DropDownContainer.HandleAllocated and (Message.FocusedWnd <> DropDownContainer.Handle) then
    CloseUp(True);
  if Style = csDropDownList then Invalidate;
end;

procedure TfcCustomCombo.WMSetFocus(var Message: TWMSetFocus);
begin
  inherited;
  if Style = csDropDownList then
  begin
    Invalidate;
    ShowCaret;
    HideCaret;
  end;
end;

procedure TfcCustomCombo.SetModified(Value: Boolean);
begin
  if Value then begin
     if (DataSource<>nil) and (DataSource.State in [dsEdit, dsInsert]) then
        FDatalink.modified;
  end;
  inherited Modified := Value;
end;

procedure TfcCustomCombo.BtnMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState;
  X, Y: Integer);
var parentForm: TCustomForm;
begin
  if Button <> mbLeft then Exit;
  if IsDroppedDown then CloseUp(True) { 2/11/99 - RSW }
  else begin
   { RSW - Kirk, what was this line for
     It causes a problem as its not ever reset.  For instance, your CMEnter code
     checks ControlState.  To see problem put control in grid and click in the control.
     Then tab to it and it does not select all }
//    ControlState := ControlState +[csLButtonDown];

    // 6/3/2001 - PYW - MDI Child forms would not get activated prior to setting focus.
    parentForm:= GetParentForm(self);
    if (parentForm<>nil) and (TForm(parentForm).formstyle = fsMDIChild) then
       if Screen.ActiveForm <> parentForm then
          SendMessage(parentform.Handle, WM_ACTIVATE, 0, 0);

    if CanFocus then
    begin
       SetFocus;
       // 6/16/01 - Fix problem when using WebBrowse and it has text selected
       if Handle<>GetFocus then
          windows.SetFocus(Handle);
    end;

    if (Screen.ActiveControl=self) or Focused then // 8/16/2000 - Fire also if screen.activecontrol is me
       PostMessage(Handle, WM_FC_CALLDROPDOWN, 0, 0);
  end
end;

procedure TfcCustomCombo.HideCaret;
begin
  Windows.HideCaret(Handle);
  inherited ReadOnly := True;
end;

procedure TfcCustomCombo.Paint;
begin
end;

procedure TfcCustomCombo.Reset;
begin
  if DataLink.Field <> nil then DataLink.Reset;
  SelectAll;
  SetModified(False);
  Paint;
end;

procedure TfcCustomCombo.SelectAll;
begin
   inherited SelectAll;
end;

procedure TfcCustomCombo.ShowCaret;
begin
  if not HandleAllocated then exit; //3/25/99-PYW - Make sure handle is allocated.
  Windows.ShowCaret(Handle);
  inherited ReadOnly := False;
end;

function TfcCustomCombo.GetLeftIndent: Integer;
begin
  result := 0;
end;

procedure TfcCustomCombo.SetDropDownCount(Value: Integer);
begin
  FDropDownCount := Value;
end;

procedure TfcCustomCombo.WMPaste(var Message: TMessage);
begin
  if (Style=csDropDown) then
  begin
     if not EditCanModify then exit
     else begin
       FDataLink.Edit;
       inherited;
       SetModified(True);
     end
  end
  else inherited;
end;

procedure TfcCustomCombo.WMCut(var Message: TMessage);
begin
  if (Style=csDropDown) then
  begin
     if not EditCanModify then exit
     else begin
       FDataLink.Edit;
       inherited;
       SetModified(True);
     end
  end
  else inherited;
end;

function TfcCustomCombo.GetRightIndent(Rect:TRect): Integer;
begin
  result:= 0;
{  result := Width-2;
  if (ColorAlignment <> taRightJustify) then exit;
  if FColorListOptions = nil then exit;
  GetColorRectInfo(Rect,AWidth,AHeight);
  if (Awidth <> 0) then
     inc(result, -AWidth);}
end;

function TfcCustomCombo.GetTopIndent: Integer;
begin
  result := 0;
  if (BorderStyle = bsNone) and fcIsInwwGrid(Self) then begin
     Result := 2;
     if fcIsClass(parent.classtype, 'TwwDBGrid') then
     begin
        if ([dgRowLines, dgRowFixedLines] * fcGetGridOptions(self) = []) then Result:=1;
     end;

  end
  else if (BorderStyle = bsNone) then
  begin
     Result := 1;
  end;
  if AlignmentVertical = fcavCenter then
  begin
     if BorderStyle=bsNone then
        inc(result,(Height - Canvas.Textheight('A')-2) div 2)
     else
        result:= (Height - Canvas.Textheight('A')-5) div 2;
  end;
end;

procedure TfcCustomCombo.SetAlignmentVertical(Value: TfcAlignVertical);
begin
  if FAlignmentVertical <> Value then begin
     FAlignmentVertical := Value;
     Invalidate;
  end;
end;

Procedure TfcCustomCombo.DoEnter;
begin
   inherited DoEnter;
   if (FDataLink.Field=Nil) then modified:= False;  { 1/21/97 - Only clear if unbound }
end;


constructor TBtnWinControl.Create(AOwner: TComponent);
begin
   inherited Create(AOwner);
   EditControl:= AOwner as TfcCustomCombo;
end;

procedure TBtnWinControl.CMMouseLeave(var Message: TMessage);
var r: TRect;
    offset: integer;
begin
  inherited;
  if not EditControl.ButtonEffects.Flat then exit;

  if EditControl.BorderStyle=bsSingle then offset:=2 else offset:= 0;
  if not EditControl.FFocused then begin
     if EditControl.IsTransparentEffective then begin
        r:= Rect(parent.left + Left + offset, parent.Top+top+offset,
                 parent.left + left + offset + Width, parent.top + offset + Top + Height);
        if fcIsTransparentParent(self) then
          fcInvalidateTransparentArea(self) // just to be safer, but probably works in both cases
        else
          InvalidateRect(parent.parent.handle, @r, True);
//        InvalidateRect(parent.parent.handle, @r, True);
        Invalidate;
     end;
     Invalidate;
  end
end;

procedure TBtnWinControl.WMEraseBkgnd(var Message: TWmEraseBkgnd);
var r: TRect;
   control: TfcCustomCombo;
begin
  control:= TfcCustomCombo(parent);
  if control.SkipUpdate then exit;

  if fcIsInwwGridPaint(parent) or
     control.isTransparentEffective  then
  begin
     { Fixes paint problem when mouse is clicked in button and moved outside
       region, but it is not released }
     if (not fcIsInwwGridPaint(parent)) and
        (control.ButtonEffects.Flat or control.ButtonEffects.Transparent) and
        (csLButtonDown in control.FButton.ControlState) then
     begin
        r:= Rect(parent.left + Left , parent.Top+top,
                 parent.left + left + Width, parent.top + Top + Height);
        InvalidateRect(parent.parent.handle, @r, False);
        control.skipupdate:= true;
        parent.parent.update;
        control.skipupdate:= False;
     end;
     Message.result:= 1;
     exit;
  end
  else inherited;
end;

procedure TfcCustomCombo.WMEraseBkgnd(var Message: TWmEraseBkgnd);
var r: TRect;
begin
  if fcIsInwwObjectViewPaint(self) or
    (IsTransparentEffective and (not FFocused)) then
  begin
     Message.result:= 1;
  end
  // 8/1/02 - Respect NonFocusColor when it does not have focus
  else if (not fcIsInwwGridPaint(self)) and
      (not FFocused) and (Frame.NonFocusColor<>clNone) then
  begin
     r:= ClientRect;
     if FCanvas<>nil then
     begin
        FCanvas.Brush.Color:= Frame.NonFocusColor;
        Windows.FillRect(message.dc, r, FCanvas.brush.handle );
     end;
     message.result:=1
  end
  else inherited;
end;

procedure TfcCustomCombo.DrawFrame(Canvas: TCanvas);
begin
    fcDrawEdge(self, Frame, Canvas, FFocused);
end;

procedure TfcCustomCombo.InvalidateTransparentButton;
var r: TRect;
begin
   if ButtonEffects.Flat or ButtonEffects.Transparent then begin
     with FBtnParent do begin
         r:= Rect(parent.left + Left, parent.Top+top,
               parent.left + left+ Width, parent.top + Top + Height);
        { Calling with True causes flicker for any control that is invalidated.
          Test with False to see if any side effects  }
         InvalidateRect(parent.parent.handle, @r, False);
         parent.parent.Update;
      end
   end;
   FButton.invalidate;
end;

Procedure TfcCustomCombo.UpdatebuttonGlyph;
begin
//   FButton.Glyph.Handle:=0;  7/28/01 - Don't clear glyph
   if (FButtonStyle<>cbsCustom) and
      (ButtonEffects.Flat or ButtonEffects.Transparent) then
   begin
      if (FButtonStyle = cbsDownArrow) then
         FButton.Glyph.Handle:= LoadBitmap(HInstance, 'FCDROPDOWN')
   end;
end;

function TfcCustomCombo.IsCustom: Boolean;
begin
  Result := ButtonStyle = cbsCustom;
end;

function TfcCustomCombo.GetButtonGlyph: TBitmap;
begin
  result:= FButton.Glyph;
end;

procedure TfcCustomCombo.SetButtonGlyph(Value: TBitmap);
begin
  FButton.Glyph.Assign(Value);
//  FButtonGlyph.Assign(Value);
  Invalidate;
end;
{
procedure TfcCustomCombo.GlyphChanged(Sender: TObject);
begin
   FButton.Glyph.Handle:= LoadComboGlyph;
   Invalidate;
end;
}
Procedure TfcCustomCombo.SetButtonWidth(val: integer);
begin
   if FButtonWidth<>val then
   begin
      FButtonWidth:= val;
      if val<>0 then Button.Width:= val
      else Button.Width:= fcmax(GetSystemMetrics(SM_CXVSCROLL), 15);
      UpdateButtonPosition;
   end
end;

function TfcCustomCombo.GetButtonWidth: integer;
begin
   result:= FButtonWidth;
end;

procedure TfcCustomCombo.CMMouseEnter(var Message: TMessage);
begin
  inherited;
  DoMouseEnter;
end;

procedure TfcCustomCombo.CMMouseLeave(var Message: TMessage);
var r:TRect;
    pt:TPoint;
begin
  GetCursorPos(pt);
  pt := ScreenToClient(pt);
  r := ClientRect;
  if (PtInRect(r,pt)) then exit;

  inherited;
  DoMouseLeave;
end;

procedure TfcCustomCombo.DoMouseEnter;
begin
  try
     If Assigned( FOnMouseEnter ) Then FOnMouseEnter( self );  //10/1/2001 - Added for OnMouseEnter and OnMouseLeave events.
  except
    exit;
  end;
  if Frame.IsFrameEffective and (not FFocused) and
     Frame.MouseEnterSameAsFocus then
     fcDrawEdge(self, Frame, FCanvas, True);
//     fcDrawEdge(self, Frame, ControlCanvas, True);
end;

procedure TfcCustomCombo.DoMouseLeave;
begin
  try
    If Assigned( FOnMouseLeave ) Then FOnMouseLeave( self ); //10/1/2001 - Added for OnMouseEnter and OnMouseLeave events.
  except
    exit;
  end;
  if Frame.IsFrameEffective and (not FFocused) and
     Frame.MouseEnterSameAsFocus then begin
     fcDrawEdge(self, Frame, FCanvas, False);
     if IsTransparentEffective then
        Frame.CreateTransparent:= True;
     RecreateWnd;
  end;
end;

// Some fonts change the margin, so let us reset back to 0 so that
// borders will be ok
procedure TfcCustomCombo.WMSetFont(var Message: TWMSetFont);
begin
  inherited;
  if Frame.Enabled and NewStyleControls then
     SendMessage(Handle, EM_SETMARGINS, EC_LEFTMARGIN or EC_RIGHTMARGIN, 0);
end;

procedure TfcCustomCombo.SetController(Value: TComponent);
var tempFrame: TfcEditFrame;
begin
   if FController<>Value then
   begin
      fcUpdateController(TComponent(FController), Value, self);
      if FController<>nil then
      begin
         tempFrame:= TfcEditFrame.Get(TControl(FController));
         FFrame.Assign(tempFrame);
//         FFrame.Assign(FController.Frame);
         if HandleAllocated then RecreateWnd;
      end
   end
end;


initialization
  WM_FC_CALLDROPDOWN := RegisterWindowMessage('FCCOMBODROPDOWNMESSAGE');
end.
