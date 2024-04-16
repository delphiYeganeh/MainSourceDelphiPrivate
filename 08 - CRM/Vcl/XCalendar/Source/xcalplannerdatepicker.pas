{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TPlannerDatePicker component                                          }
{ for Delphi & C++ Builder                                              }
{ version 1.6                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2007                                      }
{            Email : info@tmssoftware.com                               }
{            Website : http://www.tmssoftware.com                       }
{                                                                       }
{ The source code is given as is. The author is not responsible         }
{ for any possible damage done due to the use of this code.             }
{ The component can be freely used in any application. The source       }
{ code remains property of the writer and may not be distributed        }
{ freely as such.                                                       }
{***********************************************************************}

{$I TMSDEFS.INC}

unit xcalPlannerDatePicker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, xcalAdvEdBtn, xcalPlannerCal, xcalAdvStyleIF,
  {xxx}xcalClass, xcalEvents;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 6; // Minor version nr.
  REL_VER = 2; // Release nr.
  BLD_VER = 2; // Build nr.

  // Version history
  // 1.4.0.0 : Property InActiveDays added
  // 1.5.0.0 : AutoThemeAdapt in Calendar added
  //         : XP style dropdown button added
  //         : Hover date color in Calendar added
  // 1.6.0.0 : New : ISO Week number support added (YearStartAt.ISOWeekNumber)
  //           New : OnCellDraw event added for TPlannerCalendarGroup
  //           New : OnDblClick event added for TPlannerCalendarGroup
  //           New : VS.NET (Whidbey) appearance style
  // 1.6.1.0 : New : support for Office 2007 silver style added
  // 1.6.2.0 : Improved : enhanced keyboard event routing from calendardropdown to datepicker control
  // 1.6.2.1 : Fixed : issue with initialization null date
  // 1.6.2.2 : Fixed : issue handling Clear method



type
  TXCalPlannerDatePicker = class(TXCalAdvEditBtn, ITMSStyle)
  private
    FPlannerCalendar: TXCalPlannerCalendar;
    APlannerCalendar: TXCalPlannerCalendar;
    PlannerParent : TForm;
    CancelThisBtnClick : Boolean;
    FHideCalendarAfterSelection: boolean;
    FOnDaySelect: TDaySelectEvent;
    function GetOnGetDateHint: TGetDateEvent;
    function GetOnGetDateHintString: TGetDateEventHint;
    procedure SetOnGetDateHint(const Value: TGetDateEvent);
    procedure SetOnGetDateHintString(const Value: TGetDateEventHint);
    procedure HideParent;
    procedure InitEvents;
    function GetParentEx: TWinControl;
    procedure SetParentEx(const Value: TWinControl);
    function GetOnGetEventProp: TEventPropEvent;
    procedure SetOnGetEventProp(const Value: TEventPropEvent);
    function GetOnWeekSelect: TNotifyEvent;
    procedure SetOnWeekSelect(const Value: TNotifyEvent);
    function GetOnAllDaySelect: TNotifyEvent;
    procedure SetOnAllDaySelect(const Value: TNotifyEvent);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    //xxx
    function GetXCalendar: TXCalendar;
    procedure SetXCalendar(const Value: TXCalendar);
    function GetXCalEvents: TCustomXCalendarEvents;
    procedure SetXCalEvents(const Value: TCustomXCalendarEvents);
    //mmm
    procedure CMBiDiModeChanged(var Message: TMessage); message CM_BIDIMODECHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMParentShowHintChanged(var Message: TMessage); message CM_PARENTSHOWHINTCHANGED;
    { Private declarations }
  protected
    function GetVersionNr: Integer; override;
    { Protected declarations }
    procedure BtnClick(Sender: TObject); override;
    procedure PlannerParentDeactivate(Sender: TObject);
    procedure PlannerCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure PlannerCalendarKeyPress(Sender: TObject; var Key: Char);
    procedure PlannerCalendarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PlannerCalendarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);      
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    // methods to do correct streaming, because the planner calendar is
    // stored on a hidden form
    function GetChildParent : TComponent; override;
    function GetChildOwner : TComponent; override;
    procedure Loaded; override;
    procedure Change; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure CreateWnd; override;

    procedure DaySelect; virtual;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CancelBtnClick;
    destructor Destroy; override;
    procedure Clear; override;
    procedure DropDown; virtual;
    property Date: TDateTime read GetDate write SetDate;
    property Parent: TWinControl read GetParentEx write SetParentEx;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    procedure SetComponentStyle(AStyle: TTMSStyle);
  published
    { Published declarations }
    property Calendar : TXCalPlannerCalendar read FPlannerCalendar
      write FPlannerCalendar;
    property TabOrder;
    property TabStop;
    property HideCalendarAfterSelection : boolean read FHideCalendarAfterSelection
      write FHideCalendarAfterSelection;
    property OnGetDateHint: TGetDateEvent read GetOnGetDateHint
      write SetOnGetDateHint;
    property OnGetDateHintString: TGetDateEventHint read GetOnGetDateHintString
      write SetOnGetDateHintString;
    property OnGetEventProp: TEventPropEvent read GetOnGetEventProp
      write SetOnGetEventProp;
    property OnWeekSelect: TNotifyEvent read GetOnWeekSelect write SetOnWeekSelect;
    property OnAllDaySelect: TNotifyEvent read GetOnAllDaySelect write SetOnAllDaySelect;
    property OnDaySelect: TDaySelectEvent read FOnDaySelect write FOnDaySelect;

    //xxx
    property XCalendar: TXCalendar read GetXCalendar write SetXCalendar;
    property XCalendarEvents: TCustomXCalendarEvents read GetXCalEvents write SetXCalEvents;
  end;

implementation


{ TXCalPlannerDatePicker }

procedure TXCalPlannerDatePicker.DropDown;
var
  PlannerPosition : TPoint;
  r: TRect;

  function Min(a,b: Integer): Integer;
  begin
    if (a > b) then
      Result := b
    else
      Result := a;
  end;

  function CheckDate(dt: TDateTime): TDateTime;
  begin
    Result := dt;
    if Calendar.MinDate.Use then
      if dt < Calendar.MinDate.Date then
        Result := Calendar.MinDate.Date;
    if Calendar.MaxDate.Use then
      if dt > Calendar.MaxDate.Date then
        Result := Calendar.MinDate.Date;
  end;

  function GetParentWnd: HWnd;
  var
    Last, P: HWnd;
  begin
    P := GetParent((Owner as TWinControl).Handle);
    Last := P;
    while P <> 0 do
    begin
      Last := P;
      P := GetParent(P);
    end;
    Result := Last;
  end;

begin
  // Set planner position

  if (Parent is TForm) then
  begin
    if (Parent as TForm).FormStyle = fsStayOnTop then
      PlannerParent.FormStyle := fsStayOnTop;
  end
  else
    PlannerParent.FormStyle := fsStayOnTop;

  PlannerPosition.x := -2;
  PlannerPosition.y := Height - 3;
  PlannerPosition := ClientToScreen(PlannerPosition);

  {$IFNDEF TMSDOTNET}
  SystemParametersInfo(SPI_GETWORKAREA, 0,@r,0); //account for taskbar...
  {$ENDIF}
  {$IFDEF TMSDOTNET}
  SystemParametersInfo(SPI_GETWORKAREA, 0,r,0); //account for taskbar...
  {$ENDIF}

  if (plannerposition.y + FPlannerCalendar.Height > r.Bottom) then
    plannerposition.Y := plannerposition.Y - FPlannerCalendar.Height - Height + 3;

  if (plannerposition.x + FPlannerCalendar.Width > r.right)
    //mmm
    or (UseRightToLeftAlignment and (plannerposition.x - (FPlannerCalendar.Width - Width) > r.Left))
  then
    plannerposition.x := plannerposition.x - (FPlannerCalendar.Width - Width);


  {$IFNDEF DELPHI4_LVL}
  PlannerParent.Width := FPlannerCalendar.Width;
  PlannerParent.Height := FPlannerCalendar.Height;
  {$ENDIF}

  // Set planner date

  if FPlannerCalendar.MultiSelect then
    Text := FPlannerCalendar.DatesAsText
  else
  begin
    try
      if (Text = '') then
        FPlannerCalendar.Date := CheckDate(Now)
      else
//xxx
          if Assigned(XCalendar) then
            FPlannerCalendar.Date := XCalendar.StrToDate(Text)
          else
            FPlannerCalendar.Date := StrToDate(Text);
    except
      on Exception do
         Text := FPlannerCalendar.DatesAsText;
    end;
  end;

  PlannerParent.Left := PlannerPosition.x;
  PlannerParent.Top := PlannerPosition.y;

  PlannerParent.Show;
  FPlannerCalendar.SetFocus;
  SendMessage(GetParentWnd, WM_NCACTIVATE, 1, 0);
end;

procedure TXCalPlannerDatePicker.SetComponentStyle(AStyle: TTMSStyle);
begin
  case AStyle of
    tsOffice2003Blue: Calendar.Style := psOffice2003Blue;
    tsOffice2003Olive: Calendar.Style := psOffice2003Olive;
    tsOffice2003Silver: Calendar.Style := psOffice2003Silver;
    tsOffice2003Classic: Calendar.Style := psOffice2003Classic;
    tsOffice2007Luna: Calendar.Style := psOffice2007Luna;
    tsOffice2007Obsidian: Calendar.Style := psOffice2007Obsidian;
    tsOffice2007Silver: Calendar.Style := psOffice2007Silver;    
    tsWindowsXP: Calendar.Style := psWindowsXP;
    tsWhidbey: Calendar.Style := psWhidbey;
  end;

end;


procedure TXCalPlannerDatePicker.BtnClick(Sender: TObject);
begin
  CancelThisBtnClick := False;
  inherited;
  // call event OnClick - the user can cancel calendar appearance of calendar by calling .CancelBtnClick
  if CancelThisBtnClick then
    Exit;
  DropDown;
end;

procedure TXCalPlannerDatePicker.CancelBtnClick;
begin
  CancelThisBtnClick := True;
end;

constructor TXCalPlannerDatePicker.Create(AOwner: TComponent);
begin
  inherited;
  // Make planner parent form and a planner, put planner on parent form
  Text := '';
  PlannerParent := TForm.Create(Self);
  PlannerParent.BorderStyle := bsNone;
  //mmm
  PlannerParent.BiDiMode := Self.BiDiMode;
  PlannerParent.Font := Self.Font;
  PlannerParent.ShowHint := Self.ShowHint;

  
  FPlannerCalendar := TXCalPlannerCalendar.Create(Self);
  FPlannerCalendar.Parent := PlannerParent;
  FPlannerCalendar.Name := self.Name +'cal_';
  {$IFDEF DELPHI4_LVL}
  PlannerParent.Autosize := True;
  {$ELSE}
  PlannerParent.Width := FPlannerCalendar.Width;
  PlannerParent.Height := FPlannerCalendar.Height;
  {$ENDIF}
  PlannerParent.OnDeactivate := PlannerParentDeactivate;
  FPlannerCalendar.OnDaySelect := PlannerCalendarDaySelect;
  Width := FPlannerCalendar.Width;
  FHideCalendarAfterSelection := True;
  Button.Glyph.Handle := LoadBitmap(0, MakeIntResource(OBM_COMBO));
  // Make the button NOT change the focus
  Button.FocusControl := nil;
  ButtonStyle := bsDropDown;
end;


destructor TXCalPlannerDatePicker.Destroy;
begin
  FPlannerCalendar.Free;
  PlannerParent.Free;
  inherited;
end;

function TXCalPlannerDatePicker.GetChildOwner: TComponent;
begin
  Result := PlannerParent;
end;

function TXCalPlannerDatePicker.GetChildParent: TComponent;
begin
  Result := PlannerParent;
end;

procedure TXCalPlannerDatePicker.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
  inherited;
  Proc(FPlannerCalendar);
  FPlannerCalendar.Parent := PlannerParent;
end;

function TXCalPlannerDatePicker.GetOnGetDateHint: TGetDateEvent;
begin
  Result := FPlannerCalendar.OnGetDateHint;
end;

function TXCalPlannerDatePicker.GetOnGetDateHintString: TGetDateEventHint;
begin
  Result := FPlannerCalendar.OnGetDateHintString;
end;

procedure TXCalPlannerDatePicker.HideParent;
begin
  PlannerParent.Hide;
  try
    SetFocus;
  except
  end;  
end;

procedure TXCalPlannerDatePicker.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_F4) and not (ssAlt in Shift) and not (ssCtrl in Shift) then
    if PlannerParent.Visible then
      HideParent
    else
      BtnClick(Self);
end;

procedure TXCalPlannerDatePicker.InitEvents;
begin
  FPlannerCalendar.OnDaySelect := PlannerCalendarDaySelect;
  FPlannerCalendar.OnKeyPress := PlannerCalendarKeypress;
  FPlannerCalendar.OnKeyUp := PlannerCalendarKeyUp;
  FPlannerCalendar.OnKeyDown := PlannerCalendarKeyDown;  
end;

procedure TXCalPlannerDatePicker.Loaded;
begin
  inherited;

  if PlannerParent.ComponentCount > 0 then
  begin
    APlannerCalendar := (PlannerParent.Components[0] as TXCalPlannerCalendar);
    APlannerCalendar.OnGetDateHint := FPlannerCalendar.OnGetDateHint;
    APlannerCalendar.OnGetDateHintString := FPlannerCalendar.OnGetDateHintString;
    FPlannerCalendar.Free;
    FPlannerCalendar := APlannerCalendar;
    InitEvents;
  end;
end;

procedure TXCalPlannerDatePicker.PlannerCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
begin
  Text := FPlannerCalendar.DatesAsText;

  if FHideCalendarAfterSelection then
    HideParent;
    
  DaySelect;
  if Assigned(FOnDaySelect) then
    FOnDaySelect(Self,SelDate);
end;

procedure TXCalPlannerDatePicker.DaySelect;
begin
end;

procedure TXCalPlannerDatePicker.PlannerCalendarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F4 then
    HideParent;

  if Assigned(OnKeyDown) then
    OnKeyDown(Self, Key, Shift);
end;


procedure TXCalPlannerDatePicker.PlannerCalendarKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Assigned(OnKeyUp) then
    OnKeyUp(Self, Key, Shift);
end;


procedure TXCalPlannerDatePicker.PlannerCalendarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Assigned(OnKeyPress) then
    OnKeyPress(Self, Key);
  if (Key = #13) then
  begin
    PlannerCalendarDaySelect(Sender, FPlannerCalendar.Date);
  end;
  if Key = #27 then
  begin
    HideParent;
  end;
end;

procedure TXCalPlannerDatePicker.PlannerParentDeactivate(Sender: TObject);
begin
  (Sender as TForm).Hide;
end;

procedure TXCalPlannerDatePicker.SetOnGetDateHint(const Value: TGetDateEvent);
begin
  FPlannerCalendar.OnGetDateHint := Value;
end;

procedure TXCalPlannerDatePicker.SetOnGetDateHintString(
  const Value: TGetDateEventHint);
begin
  FPlannerCalendar.OnGetDateHintString := Value;
end;

function TXCalPlannerDatePicker.GetOnGetEventProp: TEventPropEvent;
begin
  Result := FPlannerCalendar.OnGetEventProp;
end;

procedure TXCalPlannerDatePicker.SetOnGetEventProp(
  const Value: TEventPropEvent);
begin
  FPlannerCalendar.OnGetEventProp := Value;
end;


procedure TXCalPlannerDatePicker.WMSetFocus(var Message: TWMSetFocus);
begin
  if EditorEnabled then
    inherited
  else
    Button.SetFocus;
end;

procedure TXCalPlannerDatePicker.Change;
var
  dt: TDateTime;
begin
  inherited;
  // try to extract the date
  try
    if (Text = '') or
       //xxx
       (Assigned(XCalendar) and (Pos(XCalendar.FormatSettings.DateSeparator, Text) = 0)) or
       (not Assigned(XCalendar) and (Pos(DateSeparator, Text) = 0)) or
       
       (Text = '  /  /  ') then
      Calendar.Date := 0
    else
    begin
      //xxx
      if Assigned(XCalendar) then
        dt := XCalendar.StrToDate(Text)
      else
        dt := StrToDate(Text);
      Calendar.Date := dt;
    end;
  except
  end;
end;

procedure TXCalPlannerDatePicker.Clear;
begin
  inherited;
  Text := '';
  Change;
end;

procedure TXCalPlannerDatePicker.CreateWnd;
begin
  inherited;
  InitEvents;
end;

function TXCalPlannerDatePicker.GetParentEx: TWinControl;
begin
  Result := inherited Parent;
end;

procedure TXCalPlannerDatePicker.SetParentEx(const Value: TWinControl);
begin
  inherited Parent := Value;
  InitEvents;
end;

function TXCalPlannerDatePicker.GetOnWeekSelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnWeekSelect;
end;

procedure TXCalPlannerDatePicker.SetOnWeekSelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnWeekSelect := Value;
end;

function TXCalPlannerDatePicker.GetOnAllDaySelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnAllDaySelect;
end;

procedure TXCalPlannerDatePicker.SetOnAllDaySelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnAllDaySelect := Value;
end;

function TXCalPlannerDatePicker.GetDate: TDateTime;
begin
  Result := FPlannerCalendar.Date;
end;

procedure TXCalPlannerDatePicker.SetDate(const Value: TDateTime);
begin
  FPlannerCalendar.Date := Value;
  if Value = 0 then
    Text := ''
  else
  //xxx
    if Assigned(XCalendar) then
      Text := XCalendar.DateToStr(Value)
    else
      Text := DateToStr(Value);
end;

function TXCalPlannerDatePicker.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER,REL_VER),MakeWord(MIN_VER,MAJ_VER));
end;

//xxx
function TXCalPlannerDatePicker.GetXCalendar: TXCalendar;
begin
  Result := FPlannerCalendar.XCalendar;
end;

procedure TXCalPlannerDatePicker.SetXCalendar(const Value: TXCalendar);
begin
  FPlannerCalendar.XCalendar := Value;
end;

function TXCalPlannerDatePicker.GetXCalEvents: TCustomXCalendarEvents;
begin
  Result := FPlannerCalendar.XCalendarEvents;
end;

procedure TXCalPlannerDatePicker.SetXCalEvents(const Value: TCustomXCalendarEvents);
begin
  FPlannerCalendar.XCalendarEvents := Value;
end;

//mmm
procedure TXCalPlannerDatePicker.CMBiDiModeChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.BiDiMode := Self.BiDiMode;
end;

procedure TXCalPlannerDatePicker.CMFontChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.Font := Self.Font;
end;

procedure TXCalPlannerDatePicker.CMParentShowHintChanged(
  var Message: TMessage);
begin
  inherited;
  PlannerParent.ShowHint := Self.ShowHint;
end;

initialization
  RegisterClass(TXCalPlannerDatePicker);

end.
