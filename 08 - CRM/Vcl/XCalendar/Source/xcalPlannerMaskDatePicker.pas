{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TPlannerDatePicker component                                          }
{ for Delphi & C++ Builder                                              }
{ version 1.5                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2005                                      }
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
                                            
unit xcalPlannerMaskDatePicker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, xcalAdvMEdBtn, xcalPlannerCal, {xxx}xcalClass, xcalEvents
  {$IFDEF DELPHI7_LVL}
  , MaskUtils
  {$ENDIF}
  ;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 5; // Minor version nr.
  REL_VER = 0; // Release nr.
  BLD_VER = 1; // Build nr.

  // Version history
  // 1.4.0.0 : Property Calendar.InActiveDays added
  // 1.5.0.0 : AutoThemeAdapt in Calendar added
  //         : XP style dropdown button added
  //         : Hover date color in Calendar added
  // 1.5.0.1 : Improved TPlannerDBMaskDatePicker mask handling

type
  TXCalPlannerMaskDatePicker = class(TXCalAdvMaskEditBtn)
  private
    FPlannerCalendar: TXCalPlannerCalendar;
    APlannerCalendar: TXCalPlannerCalendar;
    PlannerParent : TForm;
    CancelThisBtnClick : Boolean;
    FHideCalendarAfterSelection: boolean;
    FOnDaySelect: TDaySelectEvent;
    FOnInvalidDate: TNotifyEvent;
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
    procedure PlannerCalendarKeyDown(Sender: TObject; var Key: Integer;
      Shift: TShiftState);
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    // methods to do correct streaming, because the planner calendar is
    // stored on a hidden form
    function GetChildParent : TComponent; override;
    function GetChildOwner : TComponent; override;
    procedure Change; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure DaySelect; virtual;
    procedure ValidateError; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CancelBtnClick;
    destructor Destroy; override;
    procedure DoExit; override;

    procedure DropDown; virtual;
    procedure CreateWnd; override;
    property Date: TDateTime read GetDate write SetDate;
    property Parent: TWinControl read GetParentEx write SetParentEx;
    procedure Loaded; override;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
  published
    { Published declarations }
    property Calendar : TXCalPlannerCalendar read FPlannerCalendar
      write FPlannerCalendar;
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
    property OnInvalidDate: TNotifyEvent read FOnInvalidDate write FOnInvalidDate;

    //xxx
    property XCalendar: TXCalendar read GetXCalendar write SetXCalendar;
    property XCalendarEvents: TCustomXCalendarEvents read GetXCalEvents write SetXCalEvents;
  end;

implementation


{ TXCalPlannerMaskDatePicker }

procedure TXCalPlannerMaskDatePicker.DropDown;
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

begin
  // Set planner position
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

  PlannerParent.Left := PlannerPosition.x;
  PlannerParent.Top := PlannerPosition.y;

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
      if (Text = '') or (Pos('  ',Text) > 0) then
        FPlannerCalendar.Date := Now
      else
        try
//xxx
          if Assigned(XCalendar) then
            FPlannerCalendar.Date := XCalendar.StrToDate(Text)
          else
            FPlannerCalendar.Date := StrToDate(Text);
        except
          if (FPlannerCalendar.Date = 0) then
            FPlannerCalendar.Date := Now;  //; keep old date set active
        end;
    except
      on Exception do
         Text := FPlannerCalendar.DatesAsText;
    end;
  end;

  PlannerParent.Show;
  FPlannerCalendar.SetFocus;
end;


procedure TXCalPlannerMaskDatePicker.BtnClick(Sender: TObject);
begin
  CancelThisBtnClick := False;
  inherited;
  // call event OnClick - the user can cancel calendar appearance of calendar by calling .CancelBtnClick
  if CancelThisBtnClick then
    Exit;
  DropDown;
end;

procedure TXCalPlannerMaskDatePicker.CancelBtnClick;
begin
  CancelThisBtnClick := True;
end;

constructor TXCalPlannerMaskDatePicker.Create(AOwner: TComponent);
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
end;


destructor TXCalPlannerMaskDatePicker.Destroy;
begin
  FPlannerCalendar.Free;
  PlannerParent.Free;
  inherited;
end;

function TXCalPlannerMaskDatePicker.GetChildOwner: TComponent;
begin
  Result := PlannerParent;
end;

function TXCalPlannerMaskDatePicker.GetChildParent: TComponent;
begin
  Result := PlannerParent;
end;

procedure TXCalPlannerMaskDatePicker.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
  inherited;
  Proc(FPlannerCalendar);
  FPlannerCalendar.Parent := PlannerParent;
end;

function TXCalPlannerMaskDatePicker.GetOnGetDateHint: TGetDateEvent;
begin
  Result := FPlannerCalendar.OnGetDateHint;
end;

function TXCalPlannerMaskDatePicker.GetOnGetDateHintString: TGetDateEventHint;
begin
  Result := FPlannerCalendar.OnGetDateHintString;
end;

procedure TXCalPlannerMaskDatePicker.HideParent;
begin
  PlannerParent.Hide;
  SetFocus;
end;

procedure TXCalPlannerMaskDatePicker.KeyDown(var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = VK_F4) and not (ssAlt in Shift) and not (ssCtrl in Shift) then
    if PlannerParent.Visible then
      HideParent
    else
      BtnClick(Self);
end;

procedure TXCalPlannerMaskDatePicker.InitEvents;
begin
  FPlannerCalendar.OnDaySelect := PlannerCalendarDaySelect;
  FPlannerCalendar.OnKeyPress := PlannerCalendarKeypress;
end;

procedure TXCalPlannerMaskDatePicker.Loaded;
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

procedure TXCalPlannerMaskDatePicker.PlannerCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
begin
  Text := FPlannerCalendar.DatesAsText;
  if FHideCalendarAfterSelection then
    HideParent;
  DaySelect;
  if Assigned(FOnDaySelect) then
    FOnDaySelect(Self,SelDate);
end;

procedure TXCalPlannerMaskDatePicker.DaySelect;
begin
end;

procedure TXCalPlannerMaskDatePicker.PlannerCalendarKeyDown(Sender: TObject;
  var Key: Integer; Shift: TShiftState);
begin
  if Key = VK_F4 then
    HideParent;
end;

procedure TXCalPlannerMaskDatePicker.PlannerCalendarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key = #13) then
  begin
    PlannerCalendarDaySelect(Sender, FPlannerCalendar.Date);
  end;
  if Key = #27 then
  begin
    HideParent;
  end;
end;

procedure TXCalPlannerMaskDatePicker.PlannerParentDeactivate(Sender: TObject);
begin
  (Sender as TForm).Hide;
end;

procedure TXCalPlannerMaskDatePicker.SetOnGetDateHint(const Value: TGetDateEvent);
begin
  FPlannerCalendar.OnGetDateHint := Value;
end;

procedure TXCalPlannerMaskDatePicker.SetOnGetDateHintString(
  const Value: TGetDateEventHint);
begin
  FPlannerCalendar.OnGetDateHintString := Value;
end;

function TXCalPlannerMaskDatePicker.GetOnGetEventProp: TEventPropEvent;
begin
  Result := FPlannerCalendar.OnGetEventProp;
end;

procedure TXCalPlannerMaskDatePicker.SetOnGetEventProp(
  const Value: TEventPropEvent);
begin
  FPlannerCalendar.OnGetEventProp := Value;
end;


procedure TXCalPlannerMaskDatePicker.WMSetFocus(var Message: TWMSetFocus);
begin
  if EditorEnabled then
    inherited
  else
    Button.SetFocus;
end;

procedure TXCalPlannerMaskDatePicker.Change;
var
  dt: TDateTime;

begin
  inherited;
  try
    {$IFDEF DELPHI7_LVL}
    if IsMasked and (Text = MaskDoFormatText(EditMask,'',MaskGetMaskBlank(EditMask))) then
    begin
      Calendar.Date := 0;
      Exit;
    end;
    {$ENDIF}

    if (Text = '') or
      //xxx
      (Assigned(XCalendar) and (Pos(XCalendar.FormatSettings.DateSeparator, Text) = 0)) or
      (not Assigned(XCalendar) and (Pos(DateSeparator, Text) = 0)) then
      
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

procedure TXCalPlannerMaskDatePicker.CreateWnd;
begin
  inherited;
  InitEvents;
end;

function TXCalPlannerMaskDatePicker.GetParentEx: TWinControl;
begin
  Result := inherited Parent;
end;

procedure TXCalPlannerMaskDatePicker.SetParentEx(const Value: TWinControl);
begin
  inherited Parent := Value;
  InitEvents;
end;

function TXCalPlannerMaskDatePicker.GetOnWeekSelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnWeekSelect;
end;

procedure TXCalPlannerMaskDatePicker.SetOnWeekSelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnWeekSelect := Value;
end;

function TXCalPlannerMaskDatePicker.GetOnAllDaySelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnAllDaySelect;
end;

procedure TXCalPlannerMaskDatePicker.SetOnAllDaySelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnAllDaySelect := Value;
end;

function TXCalPlannerMaskDatePicker.GetDate: TDateTime;
begin
  Result := FPlannerCalendar.Date;
end;

procedure TXCalPlannerMaskDatePicker.SetDate(const Value: TDateTime);
begin
  FPlannerCalendar.Date := Value;
//xxx
  if Assigned(XCalendar) then
    Text := XCalendar.DateToStr(Value)
  else
    Text := DateToStr(Value);
end;

procedure TXCalPlannerMaskDatePicker.DoExit;
var
  dt: TDateTime;

begin
  inherited;
  try
    //xxx
    if Assigned(XCalendar) then
      dt := XCalendar.StrToDate(Text)
    else
      dt := StrToDate(Text);
    Calendar.Date := dt;
  except
  end;
end;

function TXCalPlannerMaskDatePicker.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER,REL_VER),MakeWord(MIN_VER,MAJ_VER));
end;

procedure TXCalPlannerMaskDatePicker.ValidateError;
begin
  if Assigned(FOnInvalidDate) then
    FOnInvalidDate(Self)
  else
    inherited;
end;

//xxx
function TXCalPlannerMaskDatePicker.GetXCalendar: TXCalendar;
begin
  Result := FPlannerCalendar.XCalendar;
end;

procedure TXCalPlannerMaskDatePicker.SetXCalendar(const Value: TXCalendar);
begin
  FPlannerCalendar.XCalendar := Value;
end;

function TXCalPlannerMaskDatePicker.GetXCalEvents: TCustomXCalendarEvents;
begin
  Result := FPlannerCalendar.XCalendarEvents;
end;

procedure TXCalPlannerMaskDatePicker.SetXCalEvents(const Value: TCustomXCalendarEvents);
begin
  FPlannerCalendar.XCalendarEvents := Value;
end;

//mmm
procedure TXCalPlannerMaskDatePicker.CMBiDiModeChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.BiDiMode := Self.BiDiMode;
end;

procedure TXCalPlannerMaskDatePicker.CMFontChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.Font := Self.Font;
end;

procedure TXCalPlannerMaskDatePicker.CMParentShowHintChanged(
  var Message: TMessage);
begin
  inherited;
  PlannerParent.ShowHint := Self.ShowHint;
end;

initialization
  RegisterClass(TXCalPlannerMaskDatePicker);

end.
