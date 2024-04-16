{
  BiDiMode and XCalendar support for some "TMS Planner" controls
  by adgteq
}

{***********************************************************************}
{ TDBPlannerDatePicker component                                        }
{ for Delphi & C++ Builder                                              }
{ version 1.4                                                           }
{                                                                       }
{ written by :                                                          }
{            TMS Software                                               }
{            copyright © 1999-2006                                      }
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

unit xcalDBPlannerDatePicker;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, xcalPlannerCal, xcalDBPlannerCal, xcalAdvEdBtn, DB, DBCtrls,
  {xxx}xcalClass, xcalEvents;

const
  MAJ_VER = 1; // Major version nr.
  MIN_VER = 4; // Minor version nr.
  REL_VER = 0; // Release nr.
  BLD_VER = 4; // Build nr.

  // version history
  // 1.4.0.2 : Improvement with dataset update
  // 1.4.0.3 : Fix for putting dataset automatically in edit mode.
  // 1.4.0.4 : Fixed issue with keyboard modifications of date

type

  TXCalDBPlannerDatePicker = class(TXCalAdvEditBtn)
  private
    { Private declarations }
    FPlannerCalendar: TXCalDBPlannerCalendar;
    APlannerCalendar: TXCalDBPlannerCalendar;
    PlannerParent : TForm;
    CancelThisBtnClick : Boolean;
    FHideCalendarAfterSelection: boolean;
    FOnDaySelect: TDaySelectEvent;
    FDataLink: TFieldDataLink;
    FInternalChange: Boolean;
    function GetOnGetDateHint: TGetDateEvent;
    function GetOnGetDateHintString: TGetDateEventHint;
    procedure SetOnGetDateHint(const Value: TGetDateEvent);
    procedure SetOnGetDateHintString(const Value: TGetDateEventHint);
    procedure HideParent;
    function GetOnGetEventProp: TEventPropEvent;
    procedure SetOnGetEventProp(const Value: TEventPropEvent);
    function GetOnWeekSelect: TNotifyEvent;
    procedure SetOnWeekSelect(const Value: TNotifyEvent);
    function GetOnAllDaySelect: TNotifyEvent;
    procedure SetOnAllDaySelect(const Value: TNotifyEvent);
    function GetDataField: string;
    function GetDataSource: TDataSource;
    procedure SetDataField(const Value: string);
    procedure SetDataSource(const Value: TDataSource);
    procedure DataUpdate(Sender: TObject);
    procedure DataChange(Sender: TObject);
    procedure ActiveChange(Sender: TObject);
    function GetDate: TDateTime;
    procedure SetDate(const Value: TDateTime);
    {$IFNDEF TMSDOTNET}
    procedure CMGetDataLink(var Message: TMessage); message CM_GETDATALINK;
    {$ENDIF}
    
    //xxx
    function GetXCalendar: TXCalendar;
    procedure SetXCalendar(const Value: TXCalendar);
    function GetXCalEvents: TCustomXCalendarEvents;
    procedure SetXCalEvents(const Value: TCustomXCalendarEvents);
    //mmm
    procedure CMBiDiModeChanged(var Message: TMessage); message CM_BIDIMODECHANGED;
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMParentShowHintChanged(var Message: TMessage); message CM_PARENTSHOWHINTCHANGED;
  protected
    { Protected declarations }
    function GetVersionNr: Integer; override;
    procedure BtnClick(Sender: TObject); override;
    procedure PlannerParentDeactivate(Sender: TObject);
    procedure PlannerCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure PlannerCalendarKeyPress(Sender: TObject; var Key: Char);
    procedure PlannerCalendarKeyDown(Sender: TObject; var Key: Integer;
      Shift: TShiftState);
    procedure WMSetFocus(var Message: TWMSetFocus); message WM_SETFOCUS;
    // methods to do correct streaming, because the planner calendar is
    // stored on a hidden form
    procedure Change; override;
    function EditCanModify: Boolean; virtual;
    function GetChildParent : TComponent; override;
    function GetChildOwner : TComponent; override;
    procedure Loaded; override;
    procedure KeyDown(var Key: Word; Shift: TShiftState); override;
    procedure KeyPress(var Key: Char); override;
    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    procedure DoExit; override;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
    procedure CancelBtnClick;
    procedure DropDown; virtual;
    destructor Destroy; override;
    property Date: TDateTime read GetDate write SetDate;
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
  published
    { Published declarations }
    property Calendar : TXCalDBPlannerCalendar read FPlannerCalendar
      write FPlannerCalendar;
    property DataField: string read GetDataField write SetDataField;
    property DataSource: TDataSource read GetDataSource write SetDataSource;
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

{ TXCalDBPlannerDatePicker }

procedure TXCalDBPlannerDatePicker.DropDown;
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
      if Text = '' then
        FPlannerCalendar.Date := Now
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

  PlannerParent.Show;
  FPlannerCalendar.SetFocus;
end;



procedure TXCalDBPlannerDatePicker.BtnClick(Sender: TObject);
begin
  CancelThisBtnClick := False;
  inherited;
  // call event OnClick - the user can cancel calendar appearance of calendar by calling .CancelBtnClick
  if CancelThisBtnClick then
    Exit;
  DropDown;
end;

procedure TXCalDBPlannerDatePicker.CancelBtnClick;
begin
  CancelThisBtnClick := True;
end;

constructor TXCalDBPlannerDatePicker.Create(AOwner: TComponent);
begin
  inherited;
  // Make planner parent form and a planner, put planner on parent form
  FInternalChange := true;  
  Text := '';
  FInternalChange := false;
  PlannerParent := TForm.Create(Self);
  PlannerParent.BorderStyle := bsNone;
  //mmm
  PlannerParent.BiDiMode := Self.BiDiMode;
  PlannerParent.Font := Self.Font;
  PlannerParent.ShowHint := Self.ShowHint;

  FPlannerCalendar := TXCalDBPlannerCalendar.Create(Self);
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

  FDataLink := TFieldDataLink.Create;
  FDataLink.Control := Self;
  FDataLink.OnDataChange := DataChange;
  FDataLink.OnUpdateData := DataUpdate;
  FDataLink.OnActiveChange := ActiveChange;
end;


destructor TXCalDBPlannerDatePicker.Destroy;
begin
  FPlannerCalendar.Free;
  PlannerParent.Free;
  FDataLink.Free;
  FDataLink := nil;
  inherited;
end;

procedure TXCalDBPlannerDatePicker.DoExit;
begin
  inherited;
  if FDataLink.Edit then
  begin
    try
      //xxx
      if Assigned(XCalendar) then
        Date := XCalendar.StrToDate(Text)
      else
        Date := StrToDate(Text);
      DataUpdate(self);
    except
      // do nothing if no valid date is entered
    end;
  end;
end;

function TXCalDBPlannerDatePicker.GetChildOwner: TComponent;
begin
  Result := PlannerParent;
end;

function TXCalDBPlannerDatePicker.GetChildParent: TComponent;
begin
  Result := PlannerParent;
end;

procedure TXCalDBPlannerDatePicker.GetChildren(Proc: TGetChildProc; Root: TComponent);
begin
  inherited;
  Proc(FPlannerCalendar);
  FPlannerCalendar.Parent := PlannerParent;
end;

function TXCalDBPlannerDatePicker.GetOnGetDateHint: TGetDateEvent;
begin
  Result := FPlannerCalendar.OnGetDateHint;
end;

function TXCalDBPlannerDatePicker.GetOnGetDateHintString: TGetDateEventHint;
begin
  Result := FPlannerCalendar.OnGetDateHintString;
end;

function TXCalDBPlannerDatePicker.GetOnGetEventProp: TEventPropEvent;
begin
  Result := FPlannerCalendar.OnGetEventProp;
end;

procedure TXCalDBPlannerDatePicker.HideParent;
begin
  PlannerParent.Hide;
  SetFocus;
end;

procedure TXCalDBPlannerDatePicker.KeyDown(var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
  begin
    if not EditCanModify then
    begin
      key := 0;
      Exit;
    end;
  end;

  if FDataLink.ReadOnly and (key = VK_DELETE) then
    Key := 0;

  inherited KeyDown(Key, Shift);

  if (Key = VK_DELETE) or ((Key = VK_INSERT) and (ssShift in Shift)) then
  begin
    FDataLink.Edit;
  end;

  if (Key <> 0) then
    FDataLink.Modified;


  if key = VK_F4 then
    if PlannerParent.Visible then
      HideParent
    else
      BtnClick(Self);
end;

procedure TXCalDBPlannerDatePicker.Loaded;
begin
  inherited;
  {$IFDEF TMSDEBUG}
  outputdebugstring('loaded picker');
  if FPlannerCalendar.Color = clWhite then
    outputdebugstring('is white');
  {$ENDIF}

  if PlannerParent.ComponentCount > 0 then
  begin
    APlannerCalendar := (PlannerParent.Components[0] as TXCalDBPlannerCalendar);
    APlannerCalendar.OnDaySelect := PlannerCalendarDaySelect;
    APlannerCalendar.OnGetDateHint := FPlannerCalendar.OnGetDateHint;
    APlannerCalendar.OnGetDateHintString := FPlannerCalendar.OnGetDateHintString;
    APlannerCalendar.OnKeyPress := PlannerCalendarKeypress;
    FPlannerCalendar.Free;
    FPlannerCalendar := APlannerCalendar;
  end;
end;

procedure TXCalDBPlannerDatePicker.PlannerCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
var
  NText: string;
begin
  NText := FPlannerCalendar.DatesAsText;

  if EditCanModify then
  begin
    FDataLink.Modified;
    Text := NText;
    DataUpdate(self);
    Modified := true;
  end;

  if Assigned(FOnDaySelect) then
    FOnDaySelect(Self,SelDate);

  if FHideCalendarAfterSelection then
    HideParent;
end;

procedure TXCalDBPlannerDatePicker.PlannerCalendarKeyDown(Sender: TObject;
  var Key: Integer; Shift: TShiftState);
begin
  if Key = VK_F4 then
    HideParent;
end;

procedure TXCalDBPlannerDatePicker.PlannerCalendarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    PlannerCalendarDaySelect(Sender, FPlannerCalendar.Date);
  end;
  if Key = #27 then
  begin
    HideParent;
  end;
end;

procedure TXCalDBPlannerDatePicker.PlannerParentDeactivate(Sender: TObject);
begin
  (Sender as TForm).Hide;
end;

procedure TXCalDBPlannerDatePicker.SetOnGetDateHint(const Value: TGetDateEvent);
begin
  FPlannerCalendar.OnGetDateHint := Value;
end;

procedure TXCalDBPlannerDatePicker.SetOnGetDateHintString(
  const Value: TGetDateEventHint);
begin
  FPlannerCalendar.OnGetDateHintString := Value;
end;

procedure TXCalDBPlannerDatePicker.SetOnGetEventProp(
  const Value: TEventPropEvent);
begin
  FPlannerCalendar.OnGetEventProp := Value;
end;

procedure TXCalDBPlannerDatePicker.WMSetFocus(var Message: TWMSetFocus);
begin
  if EditorEnabled then
    inherited
  else
    Button.SetFocus;
end;

function TXCalDBPlannerDatePicker.GetOnWeekSelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnWeekSelect;
end;

procedure TXCalDBPlannerDatePicker.SetOnWeekSelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnWeekSelect := Value;
end;

function TXCalDBPlannerDatePicker.GetOnAllDaySelect: TNotifyEvent;
begin
  Result := FPlannerCalendar.OnAllDaySelect;
end;

procedure TXCalDBPlannerDatePicker.SetOnAllDaySelect(const Value: TNotifyEvent);
begin
  FPlannerCalendar.OnAllDaySelect := Value;
end;

function TXCalDBPlannerDatePicker.GetDataField: string;
begin
  Result := FDataLink.FieldName;
end;

function TXCalDBPlannerDatePicker.GetDataSource: TDataSource;
begin
  Result := FDataLink.DataSource;
end;

procedure TXCalDBPlannerDatePicker.SetDataField(const Value: string);
begin
  FDataLink.FieldName := Value;
end;

procedure TXCalDBPlannerDatePicker.SetDataSource(const Value: TDataSource);
begin
  FDataLink.DataSource := Value;
end;

procedure TXCalDBPlannerDatePicker.ActiveChange(Sender: TObject);
begin
  if Assigned(FDataLink) then
  begin
    if Assigned(FDataLink.DataSet) then
    begin
      if not FDataLink.DataSet.Active then
        Text := '';
    end
    else
    begin
      Text := '';
    end;
  end;
end;

procedure TXCalDBPlannerDatePicker.DataChange(Sender: TObject);
begin
  if not Assigned(FDataLink.DataSet) then
    Exit;
    
  if Assigned(FDataLink.Field) then
  begin
    if FDataLink.Field.DisplayText <> '' then
    begin
      FInternalChange := true;
      Date := FDataLink.Field.AsDateTime;
      FInternalChange := false;
    end
    else
    begin
      FInternalChange := true;
      Text := '';
      FInternalChange := false;
    end;

    EditorEnabled := not FDataLink.Field.ReadOnly;
  end;
end;

procedure TXCalDBPlannerDatePicker.DataUpdate(Sender: TObject);
begin
  if Assigned(FDataLink.Field) then
  begin
    if Text = '' then
      FDataLink.Field.AsString := ''
    else
      FDataLink.Field.AsDateTime := Date;
  end;
end;

procedure TXCalDBPlannerDatePicker.Notification(AComponent: TComponent;
  Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (FDataLink <> nil) and
    (AComponent = DataSource) then DataSource := nil;
end;

function TXCalDBPlannerDatePicker.GetDate: TDateTime;
begin
  Result := FPlannerCalendar.Date;
end;

procedure TXCalDBPlannerDatePicker.SetDate(const Value: TDateTime);
begin
  FPlannerCalendar.Date := Value;
//xxx
  if Assigned(XCalendar) then
    Text := XCalendar.DateToStr(Value)
  else
    Text := DateToStr(Value);
end;

{$IFNDEF TMSDOTNET}
procedure TXCalDBPlannerDatePicker.CMGetDataLink(var Message: TMessage);
begin
  Message.Result := Integer(FDataLink);
end;
{$ENDIF}

procedure TXCalDBPlannerDatePicker.Change;
begin
  inherited;

  if FInternalChange then
    Exit;

  if EditCanModify then
  begin
    FDataLink.Modified;
    ///DataUpdate(self);
  end;

  try
    if Text <> '' then
      //xxx
      if Assigned(XCalendar) then
        FPlannerCalendar.Date := XCalendar.StrToDate(Text)
      else
        FPlannerCalendar.Date := StrToDate(Text);
  except
  end;
end;

function TXCalDBPlannerDatePicker.EditCanModify: Boolean;
begin
  Result := FDataLink.Edit;
end;

procedure TXCalDBPlannerDatePicker.KeyPress(var Key: Char);
begin
  if not EditCanMOdify then
    Exit;
  inherited KeyPress(Key);
end;

function TXCalDBPlannerDatePicker.GetVersionNr: Integer;
begin
  Result := MakeLong(MakeWord(BLD_VER,REL_VER),MakeWord(MIN_VER,MAJ_VER));
end;

//xxx
function TXCalDBPlannerDatePicker.GetXCalendar: TXCalendar;
begin
  Result := FPlannerCalendar.XCalendar;
end;

procedure TXCalDBPlannerDatePicker.SetXCalendar(const Value: TXCalendar);
begin
  FPlannerCalendar.XCalendar := Value;
end;

function TXCalDBPlannerDatePicker.GetXCalEvents: TCustomXCalendarEvents;
begin
  Result := FPlannerCalendar.XCalendarEvents;
end;

procedure TXCalDBPlannerDatePicker.SetXCalEvents(const Value: TCustomXCalendarEvents);
begin
  FPlannerCalendar.XCalendarEvents := Value;
end;

//mmm
procedure TXCalDBPlannerDatePicker.CMBiDiModeChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.BiDiMode := Self.BiDiMode;
end;

procedure TXCalDBPlannerDatePicker.CMFontChanged(var Message: TMessage);
begin
  inherited;
  PlannerParent.Font := Self.Font;
end;

procedure TXCalDBPlannerDatePicker.CMParentShowHintChanged(
  var Message: TMessage);
begin
  inherited;
  PlannerParent.ShowHint := Self.ShowHint;
end;

initialization
  RegisterClass(TXCalDBPlannerCalendar);

end.
