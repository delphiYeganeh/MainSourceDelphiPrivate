unit FCalendar;

interface

uses Classes, Controls, Messages, Windows, Forms, Graphics, StdCtrls,
  Grids, SysUtils,Tdate3,ErrMsg;

type
  TDayOfWeek = 0..6;
  HolFileFormat = Record             
     M,D:Integer;
  End;               
  HolStr = array[1..100] of HolFileFormat;
  TFCalendar = class(TCustomGrid)
  private
    HolNo:Integer;
    Hol:HolStr;
    FDate: TDateTime;
    FMonthOffset: Integer;
    FOnChange: TNotifyEvent;
    FReadOnly: Boolean;
    FStartOfWeek: TDayOfWeek;
    FUpdating: Boolean;
    FUseCurrentDate: Boolean;
    FFileName : String;
    Function IsHoliday(M,D:Integer):Boolean;
    Procedure SetPath(Val : String);
    function GetCellText(ACol, ARow: Integer): string;
    function GetDateElement(Index: Integer): Integer;
    procedure SetCalendarDate(Value: TDateTime);
    procedure SetDateElement(Index: Integer; Value: Integer);
    procedure SetStartOfWeek(Value: TDayOfWeek);
    procedure SetUseCurrentDate(Value: Boolean);
    function StoreCalendarDate: Boolean;
  protected                                          
    procedure Change; dynamic;
    procedure ChangeMonth(Delta: Integer);
    procedure Click; override;
    function DaysPerMonth(AYear, AMonth: Integer): Integer; virtual;
    function DaysThisMonth: Integer; virtual;
    procedure DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState); override;
    function IsLeapYear(AYear: Integer): Boolean; virtual;
    function SelectCell(ACol, ARow: Longint): Boolean; override;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
  public                                               
    constructor Create(AOwner: TComponent); override;
    property CalendarDate: TDateTime  read FDate write SetCalendarDate stored StoreCalendarDate;
    property CellText[ACol, ARow: Integer]: string read GetCellText;
    procedure NextMonth;
    procedure NextYear;
    procedure PrevMonth;
    procedure PrevYear;
    procedure UpdateCalendar; virtual;
  published
    property FileName: string read FFileName write SetPath;
    property Align;
    property Anchors;
    property BorderStyle;
    property Color;
    property Constraints;
    property Ctl3D;
    property Day: Integer index 3  read GetDateElement write SetDateElement stored False;
    property DragCursor;
    property DragKind;
    property DragMode;
    property Enabled;
    property Font;
    property GridLineWidth;
    property Month: Integer index 2  read GetDateElement write SetDateElement stored False;
    property ParentColor;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ReadOnly: Boolean read FReadOnly write FReadOnly default False;
    property ShowHint;
    property StartOfWeek: TDayOfWeek read FStartOfWeek write SetStartOfWeek;
    property TabOrder;
    property TabStop;
    property UseCurrentDate: Boolean read FUseCurrentDate write SetUseCurrentDate default True;
    property Visible;
    property Year: Integer index 1  read GetDateElement write SetDateElement stored False;
    property OnClick;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnDblClick;
    property OnDragDrop;
    property OnDragOver;
    property OnEndDock;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnKeyDown;
    property OnKeyPress;
    property OnKeyUp;
    property OnStartDock;
    property OnStartDrag;
  end;

procedure Register;
implementation

constructor TFCalendar.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  { defaults }
  FFileName:='';
  FUseCurrentDate := True;
  FixedCols := 0;
  FixedRows := 1;
  ColCount := 7;
  RowCount := 7;
  ScrollBars := ssNone;
  Options := Options - [goRangeSelect] + [goDrawFocusSelected];
  FDate := StrToDate(Copy(CurDate, 1, 8)+'01');{Date}
//  FDate := StrToDate(CurDate);{Date}
  UpdateCalendar;
end;
Procedure TFCalendar.SetPath(Val :String);
Var F:TextFile;
Begin
  if Val='' Then
  Begin
     HolNo:=0;
     Exit;
  End;
  HolNo:=1;
  FFileName := Val;
  AssignFile(F,FFileName);
  Reset(F);
  while(not eof(f)) Do
  Begin
    readln(F,Hol[HolNo].M,Hol[HolNo].D);
    Inc(HolNo);
  End ;
  Dec(HolNo);
  CloseFile(F);
End;

procedure TFCalendar.Change;
begin
  if Assigned(FOnChange) then FOnChange(Self);
end;

procedure TFCalendar.Click;
var
  TheCellText: string;
begin
  inherited Click;
  TheCellText := CellText[Col, Row];
  if TheCellText <> '' then Day := StrToInt(TheCellText);
end;

function TFCalendar.IsLeapYear(AYear: Integer): Boolean;
begin
{  Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));}
  Result := (AYear mod 4 = 3);
end;

function TFCalendar.DaysPerMonth(AYear, AMonth: Integer): Integer;
const
  DaysInMonth: array[1..12] of Integer = (31, 31, 31, 31, 31, 31, 30, 30, 30, 30, 30, 29);
begin
  Result := DaysInMonth[AMonth];
  if (AMonth = 12) and IsLeapYear(AYear) then Inc(Result); { leap-year Esfand is special }
end;

function TFCalendar.DaysThisMonth: Integer;
begin
  Result := DaysPerMonth(Year, Month);
end;

procedure TFCalendar.DrawCell(ACol, ARow: Longint; ARect: TRect; AState: TGridDrawState);
var
  TheText: string;
begin
  TheText := CellText[ACol, ARow];
  with ARect, Canvas do
    TextRect(ARect, Left + (Right - Left - TextWidth(TheText)) div 2,
      Top + (Bottom - Top - TextHeight(TheText)) div 2, TheText);
end;

Function TFCalendar.IsHoliday(M,D:Integer):Boolean;
Var I:Integer;
    R:Boolean;
Begin
   R:=False;
   for i:=1 to HolNo Do
       if((M=Hol[I].M) and (D=Hol[I].D)) Then
          R:=True;
   IsHoliday:=R;
End;

function TFCalendar.GetCellText(ACol, ARow: Integer): string;
var
  DayNum: Integer;
  Var S:array[1..7] of String;
begin
  S[7]:='‘‰»Â';
  S[6]:='Ìﬂ ‘‰»Â';
  S[5]:='œÊ ‘‰»Â';
  S[4]:='”Â ‘‰»Â';
  S[3]:='çÂ«— ‘‰»Â';
  S[2]:='Å‰Ã ‘‰»Â';
  S[1]:='Ã„⁄Â';
  if ARow = 0 then  { day names at tops of columns }
    Result := S{ShortDayNames}[7-(StartOfWeek + ACol) mod 7]
  else
  begin
    DayNum := FMonthOffset + ACol + (ARow - 1) * 7;
    if (DayNum < 1) or (DayNum > DaysThisMonth) then Result := ''
    else Result := IntToStr(DayNum);
  end;
//  if IsHoliday(Month,Day) Then Result:=Result+'*';
end;

function TFCalendar.SelectCell(ACol, ARow: Longint): Boolean;
begin
  if ((not FUpdating) and FReadOnly) or (CellText[ACol, ARow] = '') then
    Result := False
  else Result := inherited SelectCell(ACol, ARow);
end;

procedure TFCalendar.SetCalendarDate(Value: TDateTime);
begin
  FDate := Value;
  UpdateCalendar;
  Change;
end;

function TFCalendar.StoreCalendarDate: Boolean;
begin
  Result := not FUseCurrentDate;
end;

function TFCalendar.GetDateElement(Index: Integer): Integer;
var
  AYear, AMonth, ADay: Word;
begin
  DecodeDate(FDate, AYear, AMonth, ADay);
  case Index of
    1: Result := AYear;
    2: Result := AMonth;
    3: Result := ADay;
    else Result := -1;
  end;
end;

procedure TFCalendar.SetDateElement(Index: Integer; Value: Integer);
var
  AYear, AMonth, ADay: Word;
begin
  if Value > 0 then
  begin
    DecodeDate(FDate, AYear, AMonth, ADay);
    case Index of
      1: if AYear <> Value then AYear := Value else Exit;
      2: if (Value <= 12) and (Value <> AMonth) then AMonth := Value else Exit;
      3: if (Value <= DaysThisMonth) and (Value <> ADay) then ADay := Value else Exit;
      else Exit;
    end;
    FDate := EncodeDate(AYear, AMonth, ADay);
    FUseCurrentDate := False;
    UpdateCalendar;
    Change;
  end;
end;

procedure TFCalendar.SetStartOfWeek(Value: TDayOfWeek);
begin
  if Value <> FStartOfWeek then
  begin
    FStartOfWeek := Value;
    UpdateCalendar;
  end;
end;

procedure TFCalendar.SetUseCurrentDate(Value: Boolean);
begin
  if Value <> FUseCurrentDate then
  begin
    FUseCurrentDate := Value;
    if Value then
    begin
      FDate := strtodate(CurDate);{Date} { use the current date, then }
      UpdateCalendar;
    end;
  end;
end;

{ Given a value of 1 or -1, moves to Next or Prev month accordingly }
procedure TFCalendar.ChangeMonth(Delta: Integer);
var
  AYear, AMonth, ADay: Word;
  NewDate: TDateTime;
  CurDay: Integer;
begin
  DecodeDate(FDate, AYear, AMonth, ADay);
  CurDay := ADay;
  if Delta > 0 then ADay := DaysPerMonth(AYear, AMonth)
  else ADay := 1;
  NewDate := EncodeDate(AYear, AMonth, ADay);
  NewDate := NewDate + Delta;
  DecodeDate(NewDate, AYear, AMonth, ADay);
  if DaysPerMonth(AYear, AMonth) > CurDay then ADay := CurDay
  else ADay := DaysPerMonth(AYear, AMonth);
  CalendarDate := EncodeDate(AYear, AMonth, ADay);
end;

procedure TFCalendar.PrevMonth;
begin
  ChangeMonth(-1);
end;

procedure TFCalendar.NextMonth;
begin
  ChangeMonth(1);
end;

procedure TFCalendar.NextYear;
begin
  if IsLeapYear(Year) and (Month = 12) and (Day = 30) then Day := 29;
  Year := Year + 1;
end;

procedure TFCalendar.PrevYear;
begin
  if IsLeapYear(Year) and (Month = 12) and (Day = 30) then Day := 29;
  Year := Year - 1;
end;

Function FarsiDayOfWeek(AYear, AMonth:Integer):Integer;
Begin
   AYear:=AYear+1;
   Result:=AYear*365;
   Result:=Result + ((AYear-1) Div 4);
   case AMonth of
       2:Result:=Result +31;
       3:Result:=Result +2*31;
       4:Result:=Result +3*31;
       5:Result:=Result +4*31;
       6:Result:=Result +5*31;
       7:Result:=Result +6*31;
       8:Result:=Result +6*31+30;
       9:Result:=Result +6*31+30*2;
       10:Result:=Result +6*31+30*3;
       11:Result:=Result +6*31+30*4;
       12:Result:=Result +6*31+30*5;
   End;
   FarsiDayOfWeek:=(Result Mod 7)+1;
End;

procedure TFCalendar.UpdateCalendar;
var
  AYear, AMonth, ADay: Word;
  DayOW: Integer;
begin
  FUpdating := True;
  try
    DecodeDate(FDate, AYear, AMonth, ADay);
    DayOW := FarsiDayOfWeek(AYear, AMonth);
    FMonthOffset := 2 - ((DayOW - StartOfWeek + 7) mod 7); { day of week for 1st of month }
    if FMonthOffset = 2 then FMonthOffset := -5;
    MoveColRow((ADay - FMonthOffset) mod 7, (ADay - FMonthOffset) div 7 + 1,
      False, False);
    Invalidate;
  finally
    FUpdating := False;
  end;
end;

procedure TFCalendar.WMSize(var Message: TWMSize);
var
  GridLines: Integer;
begin
  GridLines := 6 * GridLineWidth;
  DefaultColWidth := (Message.Width - GridLines) div 7;
  DefaultRowHeight := (Message.Height - GridLines) div 7;
end;
procedure Register;
begin
  RegisterComponents('Farsi', [TFCalendar]);
end;

end.