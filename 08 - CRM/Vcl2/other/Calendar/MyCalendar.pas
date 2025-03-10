unit MyCalendar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ExtCtrls, StdCtrls , Grids, Buttons,
  CommCtrl;
const
  COffDayColor = clRed;
  CDisableColor = clSilver;
  CEnableColor = $00E2E2E2;
  CFocusedCellColor = clWhite;
  Kabise33Years = 55;
type
  TDPM = Array [1..12] Of Byte;
  TWeeksDays = Array [0..6] Of String;
    Str2 = String[3];
  TMyDate = Record
    Day , Month , Year : Integer;
End;
  TMonthNames = Array [1..12] Of String;
const
  DPM : TDPM = (31,31,31,31,31,31,30,30,30,30,30,29);
  RefrenceTime : String = '1381/09/23';
  WeeksDays : TWeeksDays = ('����','������','������','�� ����','��������','��� ����','�����');
  MonthNames : TMonthNames = ('�������','��������','�����','���','�����','������','���','����','���','��','����','�����');
type

  TColor2DOpenArray = class(TControl)
private
  FArray : Array Of Array Of TColor;
  FColCount , FRowCount : Integer;
protected
  procedure SetArrayLength(ACol,ARow : Integer);
  procedure SetColCount(Value : Integer);
  procedure SetRowCount(Value : Integer);
public
  Constructor Create(AOwner : TComponent);override;
  Destructor Destroy;override;
  procedure SetItem(ACol,ARow : Integer ; Value : TColor);
  function GetItem(ACol,ARow : Integer) : TColor;
  property Items[ACol,ARow : Integer]:TColor read GetItem write SetItem;default;
published
  property ColCount : Integer read FColCount write SetColCount;
  property RowCount : Integer read FRowCount write SetRowCount;
end;


SCalendar = class;

TMyStringGrid = class(TStringGrid)
protected
  FCal : SCalendar;
  FCellDates : Array [0..6 , 1..6] Of Byte; //the date that each cell contains
  FCellColors : TColor2DOpenArray;
  procedure DblClick;override;
  procedure Click;override;
  procedure DrawCell(ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);override;
public
  Constructor Create(AOwner : TComponent);override;
  Destructor Destroy;override;
end;

SCalendar = class(TPanel)
private
  // FInitOnTodayDate : Boolean;
  FMah , FSal , FDay : Byte;
  DrawGridForcesExit : Boolean;
  FToday : String;
  FMonthLabel , FYearLabel , FTodayLabel , FStaticLabel : TLabel;
  FStringGrid : TMyStringGrid;
//  TopPanel: TPanel;
  FUpDown : TUpDown;
  FOffDayList : TStrings;
  FOffDayColor ,
  FDisableColor ,
  FEnableColor ,
  FFocusedCellColor : TColor;
  FInitialDate , FD : String;
protected
  procedure SetOffDayColor(Value : TColor);
  procedure SetDisableColor(Value : TColor);
  procedure SetEnableColor(Value : TColor);
  procedure SetFocusedCellColor(Value : TColor);
  function MyDateToString(FDate : TMyDate): String;
  function Compare(t1 , t2 : TMYDate) : Integer;
  function DayBetweenToDays(day , t1 , t2 : TMyDate) : Boolean;
  procedure Exchange(var t1 , t2 : TMyDate);
  procedure SetOffDays(Value : TStrings);
  function StringToTMyDate(FDate : String):TMyDate;
  function ConvertTo2Letter(i : Integer) : String;
  function MyWhatDayIsIt(t1 : String): Byte;
  procedure Panel1CanResize(Sender: TObject;var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
  procedure Initialize;
  procedure LabelOnClick(Sender : TObject);
  procedure UpDown1ChangingEx(Sender: TObject;var AllowChange: Boolean; NewValue: Smallint;Direction: TUpDownDirection);//for up down
  function GetToday : String;
  procedure SetToday(Value : String);
  procedure DrawGrid;
  procedure SetDay(Value : String);
  procedure SetInitialDate(Value : String);
  procedure FDayFMahFSalChanged;
public
  Constructor Create(AOwner : TComponent);override;
  Destructor Destroy;override;
  function StrTo10CharFormat(s : String):String;
  function CheckDate(var FDate : String): Boolean;
  function IsKabise(Sal : Integer):Boolean;
  function ToFarsiDate(eng_date : string):String;
  function WhatDayIsIt(t1 : String): String;
  function IsOffDay(Date : String):Boolean;
  function Dec(Date1 , Date2 : String) : Integer;
  function WorkDays(Date1 , Date2 : String) : Integer;
  function Intersect(Date1,Date2,Date3,Date4 : String;var Date5,Date6 : String):Integer;
  property Today : String read GetToday write SetToday;
  property OffDays : TStrings read FOffDayList write SetOffDays;
  property DayOnGrid : String read FD write SetDay;
published
  property InitialDate : String read FInitialDate write SetInitialDate;
  property OffDayColor : TColor read FOffDayColor write SetOffDayColor;
  property DisableColor : TColor read FDisableColor write SetDisableColor;
  property EnableColor : TColor read FEnableColor write SetEnableColor;
  property FocusedCellColor : TColor read FFocusedCellColor write SetFocusedCellColor;
  // property InitOnTodayDate : Boolean read FInitOnTodayDate write FInitOnTodayDate;
end;

TFarsiCalendar = class(SCalendar)
published
  property OffDayColor;
  property DisableColor;
  property EnableColor;
  property FocusedCellColor;
end;

procedure Register;

implementation
//////////////////////////////////////////////////////////////////////////////////////////////////
{TMyStringGrid Class}
Constructor TMyStringGrid.Create(AOwner : TComponent);
begin
 inherited Create(AOwner);
  Cells[0 , 0] :='����';
  Cells[1 , 0] :='1����';
  Cells[2 , 0] :='2����';
  Cells[3 , 0] :='3����';
  Cells[4 , 0] :='4����';
  Cells[5 , 0] :='5����';
  Cells[6 , 0] :='����';
  DefaultColWidth := 30;
  DefaultRowHeight := 20;
  Font.Name := 'Nazanin';
  Font.Size := 9;
  Font.Style := [fsBold];
  FixedCols := 0;
  FixedRows := 1;
  FixedColor := $00CDB4BC;
  ColCount := 7;
  RowCount := 7;
  Col := 0;
  Row := 1;
  ScrollBars := ssNone;
  FCellColors := TColor2DOpenArray.Create(Self);
  FCellColors.SetArrayLength(7 , 7);
  ParentBiDiMode := False;
  ParentCtl3D := False;
  ParentFont := False;
  ParentColor := False;
  Ctl3D := False;
  BorderStyle := bsNone;
  TabStop := False;
  BiDiMode := bdRightToLeft;
  Width := 217;
  Height := 216;
  Options := [goFixedVertLine,goFixedHorzLine,goDrawFocusSelected]-[goRangeSelect,goRowSizing,goColSizing,goRowMoving,goColMoving,goEditing,goTabs,goRowSelect,goThumbTracking];
end;

Destructor TMyStringGrid.Destroy;
begin
  FCellColors.Free;
  inherited Destroy;
end;

procedure TMyStringGrid.DrawCell(ACol, ARow: Integer;
Rect: TRect; State: TGridDrawState);
Var
  i : Integer;
begin
  If (ARow = 0) then
  begin
    inherited DrawCell(ACol , ARow , Rect , State);
    Exit;
  end;
  Canvas.Pen.Width := 1;
  Canvas.Brush.Color := FCellColors[ACol , ARow];
  Canvas.FillRect(Rect);
  Canvas.Pen.Color := ClBlue;
  Canvas.Font.Color := clBlack; //Not FCellColors[ACol , ARow];
  i := Rect.Left+2+(ABS(Rect.Right-Rect.Left)-Canvas.TextWidth(Cells[ACol , ARow])) Div 2;
  Canvas.TextRect(Rect, i , Rect.Top+2, Cells[ACol, ARow]);
  Canvas.Pen.Width := 2;
  Canvas.Pen.Color := FCal.FocusedCellColor;
  If (Col = ACol)AND(Row = ARow) Then
  Canvas.Arc(Rect.Left , Rect.Top+1 , Rect.Right , Rect.Bottom-3 ,
  Rect.Left , Rect.Top , Rect.Left , Rect.Top);
  If csDesigning in ComponentState Then
  inherited DrawCell(ACol , ARow , Rect , State);
End;

procedure TMyStringGrid.Click;
var
 day , month , year : Integer;
begin
  inherited Click;
  If (Row = 0)Then Exit;
  If FCal.DrawGridForcesExit then
  begin
    FCal.DrawGridForcesExit := False;
    Exit;
  end;
  day := FCellDates[Col , Row];
  month := FCal.FMah;
  year := FCal.FSal;
// r := 0;
  If (day < 15)and (Row > 4) then
    Inc(month)
  // r := +1;
  else
  If(day > 15)and(Row < 3) then
    Dec(month);
// r := -1;
  If month = 0 then
  begin
    month := 12;
    Dec(year);
  end
  else
  If month = 13 then
  begin
    month := 1;
    Inc(year);
  end;
  If year = -1 then
    year := 99;
  If year = 100 then
    year := 0;
// If r = 0 Then Exit;
  FCal.FDay := day;
  If FCal.Fday = DPM[FCal.FMah] Then
  FCal.FDay := DPM[month];
  FCal.FMah := month;
  FCal.FSal := year;
  SendMessage(FCal.FUpDown.Handle , UDM_SETPOS , 0 , FCal.FMah);
  FCal.FDayFMahFSalChanged;
end;

procedure TMyStringGrid.DblClick;
var
  s : String;
  day , mah , sal : Integer;
  i : Integer;
begin
  inherited DblClick;
{  If (Row = 0) or (Col = 6) then
    Exit;
  day := FCellDates[Col , Row];
  mah := FCal.FMah;
  sal := FCal.FSal;
6  If (day < 15)AND(Row > 4) then
    Exit
  else
  If(day > 15)AND(Row < 3) then
    Exit;
  s := FCal.StrTo10CharFormat(IntToStr(sal)+'/'+IntToStr(mah)+'/'+IntToStr(day));
  i := FCal.FOffDayList.IndexOf(s);
  If i <> -1 then
  begin
    FCal.FOffDayList.Delete(i);
    FCellColors[Col , Row] := FCal.EnableColor;
  End;
  {Else
  Begin
  FCal.FOffDayList.Add(s);
  FCellColors[Col ,Row] := FCal.OffDayColor;
  End;}
  Invalidate;
  FCal.DblClick;
end;

////////////////////////////////////////////////////////////////////////////////////////////////
{SCalendar Class}
Constructor SCalendar.Create(AOwner : TComponent);
var
  s : String;
begin
  inherited Create(AOwner);
  // ControlStyle := [csFixedWidth,csFixedHeight,csSetCaption,csFramed];
  BiDiMode := bdRightToLeft;
//  AutoSize := True;
{  TopPanel := TPanel.Create(Self);
  TopPanel.Parent := Self;
  TopPanel.Align := alTop;
  TopPanel.Height := 40;
 }
  FStringGrid := TMyStringGrid.Create(Self);
  FStringGrid.Parent := Self;
  FStringGrid.Align := alBottom;
  FStringGrid.Height := 148;
//  FStringGrid.Top := 20;
  FStringGrid.BiDiMode := bdRightToLeft;
  FStringGrid.FCal := Self;
  FMonthLabel := TLabel.Create(Self);
  FMonthLabel.Parent := Self;
  FMonthLabel.BiDiMode := bdRightToLeft;
  FYearLabel := TLabel.Create(Self);
  FYearLabel.Parent := Self;
  FYearLabel.BiDiMode := bdRightToLeft;
//  FTodayLabel := TLabel.Create(Self);
//  FTodayLabel.Parent := Self;
//  FTodayLabel.BiDiMode := bdRightToLeft;
  FStaticLabel := TLabel.Create(Self);
  FStaticLabel.Parent := Self;
  FStaticLabel.BiDiMode := bdRightToLeft;
  FOffDayList := TStringList.Create;

  FUpDown := TUpDown.Create(Self);
  FUpDown.Parent := Self;

  Font.Name := 'Nazanin';
  Font.Size := 11;
  Font.Style := [fsBold];
  Color := $00F0F0F0;
  Width := 221;
  Height := 180;
  Visible := False;
  FOffDayColor := COffDayColor;
  FDisableColor := CDisableColor;
  FEnableColor := CEnableColor;
  FFocusedCellColor := CFocusedCellColor;

  FOffDayList.Clear;// := TStrings(FOffDayListBox);
  s := GetCurrentDir+'\OffDays.Txt';
  If FileExists(s) Then
  FOffDayList.LoadFromFile(s);
{  FStaticLabel.AutoSize := False;
  FStaticLabel.Width := 41;
  FStaticLabel.Height := 24;
  FStaticLabel.Caption := '�����';
  FStaticLabel.Top := 260;
  FStaticLabel.Left := 162;
  FStaticLabel.OnClick := LabelOnClick;

  FTodayLabel.AutoSize := False;
  FTodayLabel.Width := 116;
  FTodayLabel.Height := 24;}
//  FTodayLabel.Caption := '1381/09/23';
{  FTodayLabel.Top := 4;
  FTodayLabel.Left := 0;
  FTodayLabel.Font.Size := 8;
  FTodayLabel.Align := alNone;
  FTodayLabel.Alignment := taLeftJustify;
  FTodayLabel.AutoSize := True;
  FTodayLabel.Visible := False;
  FTodayLabel.OnClick := LabelOnClick;}

  FMonthLabel.AutoSize := False;
  FMonthLabel.Width := 75;
  FMonthLabel.Height := 25;
  // FMonthLabel.Caption := '���';
  FMonthLabel.Top := 8;
  FMonthLabel.Left := 25;
  FMonthLabel.Font.Size := 8;
//  FMonthLabel.Color := clSilver;
  FMonthLabel.AutoSize := True;

//  FYearLabel.AutoSize := False;
  FYearLabel.Width := 62;
  FYearLabel.Height := 24;
  // FYearLabel.Caption := '1381';
  FYearLabel.Top := 8;
  FYearLabel.Left := 0;
  FYearLabel.Font.Size := 8;
 // FYearLabel.Color := clSilver;
  FYearLabel.AutoSize := True;
    
  FStringGrid.Top := 40;
  FStringGrid.Left := 2;
  FStringGrid.FCal := Self;

  FUpDown.Top := 8;
  FUpDown.Left := 160;
  FUpDown.Orientation := udHorizontal;
  FUpDown.Width := 46;
  FUpDown.Height := 21;
  FUpDown.OnChangingEx := UpDown1ChangingEx;
  // FToday := '1381/09/23';
  FDay := 1;
  // FMah := 9;
  // FSal := 81;
  // FInitOnTodayDate := False;
  FInitialDate := '';
  OnCanResize := Panel1CanResize;
  //---------------------
  Initialize;
End;

Destructor SCalendar.Destroy;
begin
FMonthLabel.Free;
FYearLabel.Free;
//FTodayLabel.Free;
FStaticLabel.Free;
FStringGrid.Free;
FUpDown.Free;
FOffDayList.SaveToFile(GetCurrentDir+'\OffDays.Txt');
FOffDayList.Free;
inherited Destroy;
end;

procedure SCalendar.Initialize;
Var St : String;
d , m , y : Word;
begin
DecodeDate(Now , y , m , d);
St := ConvertTo2Letter(y)+'/'+ConvertTo2Letter(m)+'/'+IntToStr(d);
St := ToFarsiDate(St);
FToday := St;
FDay := StrToInt(Copy(St , 9 , 2));
FMah := StrToInt(Copy(St , 6 , 2));
FSal := StrToInt(Copy(St , 3 , 2));
// SendMessage(FUpDown.Handle , UDM_SETPOS , 0 , FMah);
FUpDown.Position := FMah;
FToday := St;
FD := St;
FDay := StrToInt(Copy(St , 9 , 2));
FMah := StrToInt(Copy(St , 6 , 2));
FSal := StrToInt(Copy(St , 3 , 2));
DrawGrid;
end;

procedure SCalendar.SetOffDays(Value : TStrings);
begin
If Value = nil Then Begin
FOffDayList.Free;
FOffDayList := nil;
Exit;
End;
FOffDayList.Assign(Value);
end;
procedure SCalendar.Panel1CanResize(Sender: TObject;var NewWidth,
NewHeight: Integer; var Resize: Boolean);
begin
Resize := False;
end;

procedure SCalendar.LabelOnClick(Sender : TObject);
begin
FDay := StrToInt(Copy(Today , 9 , 2));
FMah := StrToInt(Copy(Today , 6 , 2));
FSal := StrToInt(Copy(Today , 3 , 2));
FDayFMahFSalChanged;
end;

procedure SCalendar.UpDown1ChangingEx(Sender: TObject;
var AllowChange: Boolean; NewValue: Smallint;
Direction: TUpDownDirection);
Var prevmah : Integer;
begin
prevmah := FMah;
If NewValue < 1 Then Begin
If FSal-1<0 Then Begin //sal < 0
Exit;
End;
FMah := 12;
FSal := FSal-1;
SendMessage(FUpDown.Handle , UDM_SETPOS , 0 , FMah);
End Else
If NewValue > 12 Then Begin
If FSal+1>99 Then Begin
Exit;
End;
FMah := 1;
FSal := FSal +1;
SendMessage(FUpDown.Handle , UDM_SETPOS , 0 , FMah);
End Else
FMah := NewValue;
With FStringGrid Do
FDay := FCellDates[Col , Row];
If Fday = DPM[prevmah] Then
FDay := DPM[FMah];
If Fday = 0 Then Fday := 1;
FDayFMahFSalChanged;
end;

function SCalendar.IsKabise(Sal : Integer):Boolean;
Var i : Integer;
begin
Result := False;
If Sal >= 100 Then
Sal := ((Sal Div 100)-13)*100+(Sal Mod 100);
i := ((Sal - Kabise33Years)Mod 33);
If i < 0 Then Inc(i , 33);
If i <> 32 Then
i := i Mod 4;
If i = 0 Then result := true;
end;

function SCalendar.IsOffDay(Date : String):Boolean;
begin
Result := False;
If Not CheckDate(Date) Then Exit;
If MyWhatDayIsIt(Date) = 6 Then Begin
Result := True;
Exit;
End;
If FOffDayList.IndexOf(Date) <> -1 Then
Result := True;
end;

procedure SCalendar.FDayFMahFSalChanged;
begin
SetDay('13'+ConvertTo2Letter(FSal)+'/'+ConvertTo2Letter(FMah)+'/'+ConvertTo2Letter(FDay));
end;

procedure SCalendar.SetInitialDate(Value : String);
begin
If (NOT(csLoading in ComponentState))AND(NOT(csDesigning in ComponentState)) Then Exit;
If NOT CheckDate(Value) Then Begin
FInitialDate := '';
Exit;
End;
FInitialDate := Value;
Today := FInitialDate;
end;

procedure SCalendar.SetDay(Value : String);
begin
If NOT CheckDate(Value) Then Exit;
FD := Value;
FDay := StrToInt(Copy(Value , 9 , 2));
FMah := StrToInt(Copy(Value , 6 , 2));
FSal := StrToInt(Copy(Value , 3 , 2));
DrawGrid;
end;

procedure SCalendar.SetOffDayColor(Value : TColor);
begin
If Value <> FOffDayColor Then Begin
FOffDayColor := Value;
DrawGrid;
End;
end;

procedure SCalendar.SetDisableColor(Value : TColor);
begin
If Value <> FDisableColor Then Begin
FDisableColor := Value;
DrawGrid;
End;
end;

procedure SCalendar.SetEnableColor(Value : TColor);
begin
If Value <> FEnableColor Then Begin
FEnableColor := Value;
DrawGrid;
End;
end;

procedure SCalendar.SetFocusedCellColor(Value : TColor);
begin
If Value <> FFocusedCellColor Then Begin
FFocusedCellColor := Value;
DrawGrid;
End;
end;

procedure SCalendar.DrawGrid;
Var
temp : TMyDate;
i , j , k , m , t : Integer;
ti , tj : Integer;
Ar : Array [1..42] Of Integer;
CellCheck : Array [1..42] Of Boolean;
CellColor : Array [1..42] Of TColor;
p : Integer;//positon of cursor over Ar
begin
temp.Day := 1;
temp.Month := FMah;
temp.Year := FSal;
m := MyWhatDayIsIt(MyDateToString(temp));
If m = 0 Then m := 7;


If (FMah = 1)AND(IsKabise(FSal-1)) Then
k := 1
Else
k := 0;

If FMah = 1 Then
j := 1 //12
Else
j := 0;
If (FSal = 0)AND(FMah = 1)Then Begin
For i := 1 To m Do Begin
Ar[i] := DPM[FMah+j*12-1]-m+i+k;
CellCheck[i] := False;
CellColor[i] := DisableColor;
End;
End Else
For i := 1 To m Do Begin
Ar[i] := DPM[FMah+j*12-1]-m+i+k;
CellCheck[i] := IsOffDay(IntToStr(FSal-j)+'/'+IntToStr(FMah-1+j*12)+'/'+IntToStr(Ar[i]));
If CellCheck[i] Then
CellColor[i] := OffDayColor
Else
CellColor[i] := DisableColor;
End;
p := m+1;

If (FMah = 12)AND(IsKabise(FSal)) Then
k := 1
Else
k := 0;
t := 0;

For i := 1 To DPM[FMah]+k Do Begin
Ar[p+i-1] := i;
CellCheck[p+i-1] := IsOffDay(IntToStr(FSal)+'/'+IntToStr(FMah)+'/'+IntToStr(i));
If i = FDay Then
t := p+i-1;
If CellCheck[p+i-1] Then
CellColor[p+i-1] := OffDayColor
Else
CellColor[p+i-1] := EnableColor;
End;
p := p+DPM[FMah]+k;
j := 0;
If FMah = 12 Then
j := 1;
For i := p To 42 Do Begin
Ar[i] := i-p+1;
CellCheck[i] := IsOffDay(IntToStr(FSal+j)+'/'+IntToStr(FMah+1-12*j)+'/'+IntToStr(Ar[i]));
If CellCheck[i] Then
CellColor[i] := OffDayColor
Else
CellColor[i] := DisableColor;
End;
i := 0;
j := 1;
ti := 0;
tj := 1;
For k := 1 To 42 Do Begin
FStringGrid.Cells[i , j] := IntToStr(Ar[k]);
FStringGrid.FCellDates[i , j] := Ar[k];
If (k = t)Then Begin
ti := i;
tj := j;
End;
FStringGrid.FCellColors[i , j] := CellColor[k];
Inc(i);
If i = 7 Then Begin
i := 0;
Inc(j);
End;
End;
DrawGridForcesExit := True;
FStringGrid.Col := ti;
DrawGridForcesExit := True;
FStringGrid.Row := tj;
DrawGridForcesExit := False;

//FTodayLabel.Caption := Today;
FMonthLabel.Caption := MonthNames[temp.Month];
FYearLabel.Caption := '13'+ ConvertTo2Letter(temp.Year);
end;

procedure SCalendar.SetToday(Value : String);
begin
{ If (csLoading in ComponentState)AND(InitOnTodayDate) Then
Exit;}
If Not CheckDate(Value) Then Exit;
FToday := Value;
// FUpDown.Position := FMah;
FDay := StrToInt(Copy(Value , 9 , 2));
FMah := StrToInt(Copy(Value , 6 , 2));
FSal := StrToInt(Copy(Value , 3 , 2));
SendMessage(FUpDown.Handle , UDM_SETPOS , 0 , FMah);
//FTodayLabel.Caption := FToday;
FDayFMahFSalChanged;
end;

function SCalendar.GetToday : String;
begin
// If (csLoading in ComponentState)AND(InitOnTodayDate) Then
// Initialize;
Result := FToday;
end;

function SCalendar.ConvertTo2Letter(i : Integer) : String;
var s : String;
Begin
s := IntToStr(i);
If Length(s) = 2 Then
Result := s
Else
Result := '0' + s;
End;

function SCalendar.MyDateToString(FDate : TMyDate): String;
begin
Result := '13'+ConvertTo2Letter(Fdate.Year)+'/'
+ConvertTo2Letter(Fdate.Month)+'/'
+ConvertTo2Letter(Fdate.Day);
end;

function SCalendar.StringToTMyDate(FDate : String):TMyDate;
begin
Result.Day := StrToInt(Copy(FDate , 9 , 2));
Result.Month := StrToInt(Copy(FDate , 6 , 2));
Result.Year := StrToInt(Copy(FDate , 3 , 2));
end;

procedure SCalendar.Exchange(var t1 , t2 : TMyDate);
var temp : TMyDate;
begin
temp := t1;
t1 := t2;
t2 := temp;
end;

function SCalendar.MyWhatDayIsIt(t1 : String): Byte;
Var i : Integer;
t2 : String;
begin
Result := 0;
If NOT CheckDate(t1) Then Exit;
t2 := RefrenceTime;
i := Dec(t1 , t2);
i := i Mod 7;
If i < 0 Then Inc(i , 7);
Result := i;
end;

function SCalendar.WhatDayIsIt(t1 : String): String;
begin
Result := WeeksDays[MyWhatDayIsIt(t1)];
end;

function SCalendar.CheckDate(var FDate : String): Boolean;

function SetDay(Value , month , year : String):boolean;
Var i : Integer;
m : Integer;
y : Integer;
b : Boolean;
begin
Result := True;
try
i := StrToInt(Value);
m := StrToInt(month);
y := StrToInt(year);
b := True; //date is right --> true
If (m = 12)AND(i = 30)Then Begin
If Not IsKabise(y) Then
b := False;
End;
If Not b Then Begin
MessageDlg('.��� ����� ��� �� ������ ����� 30 ���� ���' , mtError,[mbOk],0);
Result := False;
Exit;
End;

If Not((i > 0)AND( ((m <=6)AND(i < 32)) OR ((m >6)AND(i < 31)))AND(b)) Then Begin
Result := False;
MessageDlg('.��� ������ ���� ��� ���',mterror,[mbok],0);
Exit;
End;
except
Result := False;
MessageDlg('.����� ������ ���� ��� ���',mterror,[mbok],0);
end;
end;

function SetMonth(Value : String): Boolean;
Var i : Integer;
begin
Result := True;
try
i := StrToInt(Value);
If Not((i > 0)AND(i < 13)) Then Begin
MessageDlg('.��� ������ ���� ��� ���',mterror,[mbok],0);
Result := False;
Exit;
End;
except
Result := False;
MessageDlg('.��� ������ ���� ��� ���',mterror,[mbok],0);
end;
end;

function SetYear(Value : String): Boolean;
begin
Result := True;
try
StrToInt(Value);
except
Result := False;
MessageDlg('.��� ������ ���� ��� ���',mterror,[mbok],0);
end;
end;
Var
s , t : String;
i : Integer;
ResDate : STring;
begin
Result := False;
ResDate := '';
s := FDate;
t := Copy(s , 1 ,Pos('/' , s)-1);
i := Length(t);
If NOT SetYear(t) Then
Exit;
If i > 2 Then
Delete(t , 1 , i-2);
If i = 1 Then
t := '0'+t;
ResDate := '13'+ t;
Delete(s , 1 , i+1);
t := Copy(s , 1 ,Pos('/' , s)-1);
i := Length(t);
If NOT SetMonth(t) Then
Exit;
If i = 1 Then
t := '0'+t;
ResDate := ResDate + '/' + t;
Delete(s , 1 , i+1);
If NOT SetDay(s , Copy(ResDate , 6 , 2) , Copy(ResDate , 3 ,2)) Then
Exit;
If Length(s) = 1 Then
s := '0' + s;
ResDate := ResDate + '/' +s;
Result := True;
FDate := ResDate;
end;

function SCalendar.StrTo10CharFormat(s : String):String;
begin
Result := '';
If Length(s)<5 Then Begin
MessageDlg('.��� ���� ���� ����� ����� 6 ����',mtError ,[mbOk],0);
Exit;
End;
If NOT CheckDate(s) Then
Exit;
Result := s;
end;

function SCalendar.Compare(t1 , t2 : TMYDate) : Integer;// 0 : Equal
// 1 : t1 > t2
// 2 : t1 < t2
begin
Result := 0;
If (t1.Year = t2.Year)AND(t1.Month = t2.Month)AND(t1.Day = t2.Day) Then Exit;
If (t1.Year > t2.Year)
OR((t1.Year = t2.Year)AND(t1.Month > t2.Month))
OR((t1.Year = t2.Year)AND(t1.Month = t2.Month)AND(t1.Day > t2.Day))Then
Result := 1
Else
Result := 2;
end;

function SCalendar.Intersect(Date1,Date2,Date3,Date4 : String;var Date5,Date6 : String):Integer;
var
t1 , t2 , t3 , t4 , r1 , r2: TMyDate;
begin
Result := -1;
If Not CheckDate(Date1) Then Exit;
If Not CheckDate(Date2) Then Exit;
If Not CheckDate(Date3) Then Exit;
If Not CheckDate(Date4) Then Exit;
t1 := StringToTMyDate(Date1);
t2 := StringToTMyDate(Date2);
t3 := StringToTMyDate(Date3);
t4 := StringToTMyDate(Date4);
If Compare(t1 , t2) = 1 Then Exchange(t1 , t2);
If Compare(t3 , t4) = 1 Then Exchange(t3 , t4);
r1 := t1;
r2 := t4;
If Compare(t2 , t4) = 1 Then Begin
r2 := t4;
If Compare(t1 , t3) = 1 Then
r1 := t1
Else
r1 := t3;
End Else
Begin
r2 := t2;
If Compare(t1 , t3) = 1 Then
r1 := t1
Else
r1 := t3;
End;
If Compare(r1 , r2) = 1 Then
r2 := r1;
Result := Dec(MyDateToString(r1) , MyDateToString(r2));
Date5 := MyDateToString(r1);
Date6 := MyDateToString(r2);
end;

function SCalendar.DayBetweenToDays(day , t1 , t2 : TMyDate) : Boolean;
Var
i : Integer;
e : Integer;
begin
Result := True;
e := Compare(t1 , t2);
If (e = 0)AND(Compare(day , t1)= 0) Then Begin
Exit;
End
Else If e = 2 Then Exchange(t1 , t2);
i := Compare(t1 , day);
If i = 2 Then Begin
Result := False;
Exit;
End;
i := Compare(day , t2);
If i = 2 Then Begin
Result := False;
Exit;
End;
end;

function SCalendar.WorkDays(Date1 , Date2 : String) : Integer;
var i , j : Integer;
t1 , t2 : TMyDate;
begin
j := 0;
Result := -1;
If Not CheckDate(Date1) Then Exit;
If Not CheckDate(Date2) Then Exit;
t1 := StringToTMyDate(Date1);
t2 := StringToTMyDate(Date2);
For i := 0 To OffDays.Count-1 Do
If DayBetweenToDays(StringToTMyDate(OffDays[i]) , t1 , t2) Then
Inc(j);
i := Dec(Date1 , Date2);
i := i-j;
Result := i;
end;

function SCalendar.Dec(Date1 , Date2 : String) : Integer;
Var
d , d2 , i , m1 , m2 : Integer;
y1 , y2 : Integer;
e : Integer;
Leaps : Array [1..28] Of Integer;
LeapLen : Integer;
t1 , t2 : TMyDate;
begin
Result := -1;
If Not CheckDate(Date1) Then Exit;
If Not CheckDate(Date2) Then Exit;
t1 := StringToTMyDate(Date1);
t2 := StringToTMyDate(Date2);
e := Compare(t1 , t2);
If e = 0 Then Begin
Result := 0;
Exit;
End
Else If e = 2 Then Exchange(t1 , t2);
LeapLen := 0;
For i := 0 To 99 Do
If IsKabise(i) Then Begin
Leaps[LeapLen+1] := i;
Inc(LeapLen);
End;
d := (t1.Year-t2.Year)*365;
y1 := 0;
y2 := 0;
For i := 1 To LeapLen Do
If t2.Year <= Leaps[i] Then Begin
y1 := i;
Break;
End;
For i := y1 To LeapLen Do
If t1.Year <= Leaps[i] Then Begin
y2 := i-1;
Break;
End;
d := d + (y2 - y1 +1);
If t1.Month >= t2.Month Then Begin
m1 := t2.Month;
m2 := t1.Month;
d2 := (t1.Day - t2.Day);
End Else
Begin
m2 := t2.Month;
m1 := t1.Month;
d2 := (t2.Day - t1.Day);
End;
// d2 := 0;
For i := m1 To m2-1 Do
d2:= d2 + DPM[i];
If t1.Month >= t2.Month Then
d := d + d2
Else
d := d - d2;
If e = 2 Then d := d *(-1);
Result := d;
end;

Function SCalendar.ToFarsiDate(eng_date : string):String;
var
year,month,day,f_year,f_month,f_day,lastday,
plus,minus,intercalary : integer;
strg : string;
m,Ret:string;
i : Integer;
begin
strg:=eng_date;
plus := 0;
i := Pos('/' , eng_date)-1;
year := StrToInt(Copy(eng_date , 1 , i));
Delete(eng_date , 1 , i+1);
i := Pos('/' , eng_date)-1;
month := StrToInt(Copy(eng_date , 1 , i));
Delete(eng_date , 1 , i+1);
day := StrToInt(eng_date);
case month of
1,5,6 : plus := 10;
2,4 : plus := 11;
3,7,8,9,11,12: plus := 9;
10 : plus := 8;
end;

year := year mod 100;

intercalary := year ;


if (intercalary mod 4 = 0) then
if (month > 2) then plus := plus + 1;


if ((intercalary-1) mod 4 = 0) then
begin
lastday := 30;
if (month <= 3) then plus := plus + 1;
end
else lastday := 29;

f_year := year - 22;
if (f_year < 0) then f_year:=f_year+100;

f_month := month + 9;
if (f_month > 12) then
begin
f_month:=f_month-12;
inc(f_year);
end;

f_day := day+plus;
if (f_month <= 6) then minus:=31
else if (f_month>6) and (f_month<12) then minus:=30
else minus:=lastday;

if (f_day>minus) then
begin
f_day:=f_day-minus;
inc(f_month);
end;

if (f_month > 12) then
begin
f_month:=f_month-12;
inc(f_year);
end;

m := '00';
strg := '00';
If f_year >= 10 Then
str(f_year,m)
Else Begin
m[1] := '0';
strg := IntToStr(f_year);
m[2] := strg[1];
End;
Ret:=m+'/';
If f_month >= 10 Then
str(f_month,m)
Else Begin
m[1] := '0';
strg := IntToStr(f_month);
m[2] := strg[1];
End;
Ret:=Ret+m+'/';
If f_day >= 10 Then
str(f_day,m)
Else Begin
m[1] := '0';
strg := IntToStr(f_day);
m[2] := strg[1];
End;
Ret:=Ret+m;
Result := '13'+Ret;
end;

///////////////////////////////////////////////////////////////////////////////////////////////////
{TColor2DOpenArray Class}
procedure TColor2DOpenArray.SetArrayLength(ACol,ARow : Integer);
begin
SetLength(FArray , ACol , ARow);
FColCount := ACol;
FRowCount := ARow;
end;

procedure TColor2DOpenArray.SetColCount(Value : Integer);
begin
If (Value < 0)OR(Value = FColCount)Then Exit;
SetArrayLength(Value , FRowCount);
end;

procedure TColor2DOpenArray.SetRowCount(Value : Integer);
begin
If (Value < 0)OR(Value = FRowCount)Then Exit;
SetArrayLength(FColCount , Value);
end;

Constructor TColor2DOpenArray.Create(AOwner : TComponent);
begin
inherited Create(AOwner);
end;

Destructor TColor2DOpenArray.Destroy;
begin
FArray := nil;
inherited Destroy;
end;

procedure TColor2DOpenArray.SetItem(ACol,ARow : Integer ; Value : TColor);
begin
If (ARow>=0)AND(ARow<FRowCount)AND(ARow>=0)AND(ARow<FRowCount) Then
FArray[ACol , ARow] := Value;
end;

function TColor2DOpenArray.GetItem(ACol,ARow : Integer) : TColor;
begin
If (ARow>=0)AND(ARow<FRowCount)AND(ARow>=0)AND(ARow<FRowCount) Then
Result := FArray[ACol , ARow]
Else
Result := MaxInt;
end;

////////////////////////////////////////////////////////////////////
procedure Register;
begin
RegisterComponents('yeganeh', [TFarsiCalendar]);
end;

end.


