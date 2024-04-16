unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, xcalPlannerCal, xcalEvents, xcalAstroEvents,
  xcalHijri, xcalPersian, xcalClass, xcalGregorian, ComCtrls;

type
  TForm1 = class(TForm)
    GregorianCalendar1: TGregorianCalendar;
    PersianCalendar1: TPersianCalendar;
    HijriCalendar1: THijriCalendar;
    XCalendarAstroEvents1: TXCalendarAstroEvents;
    XCalPlannerCalendar1: TXCalPlannerCalendar;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    CheckBox1: TCheckBox;
    StatusBar1: TStatusBar;
    Edit1: TEdit;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    Edit2: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label3: TLabel;
    Memo2: TMemo;
    Label4: TLabel;
    procedure RadioGroup1Click(Sender: TObject);
    procedure RadioGroup2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure XCalPlannerCalendar1DaySelect(Sender: TObject;
      SelDate: TDateTime);
    procedure XCalPlannerCalendar1WeekSelect(Sender: TObject);
    procedure XCalPlannerCalendar1AllDaySelect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure XCalPlannerCalendar1DateChange(Sender: TObject; origDate,
      newDate: TDateTime);
    procedure Edit1Change(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure Memo2Change(Sender: TObject);
  private
    { Private declarations }
    m1, m2: Boolean;
    procedure Update;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.FormCreate(Sender: TObject);
begin
  RadioGroup1Click(nil);
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);
begin
  case RadioGroup1.ItemIndex of
    0: XCalPlannerCalendar1.XCalendar := GregorianCalendar1;
    1: XCalPlannerCalendar1.XCalendar := PersianCalendar1;
    2: XCalPlannerCalendar1.XCalendar := HijriCalendar1;
  end;

  m1 := True;
  try
    Memo1.Lines.Assign(XCalPlannerCalendar1.XCalendar.FormatSettings.ShortDayNames);
  finally
    m1 := False;
  end;

  m2 := True;
  try
    Memo2.Lines.Assign(XCalPlannerCalendar1.XCalendar.FormatSettings.LongMonthNames);
  finally
    m2 := False;
  end;

  Update;
end;

procedure TForm1.RadioGroup2Click(Sender: TObject);
begin
  case RadioGroup2.ItemIndex of
    0: XCalPlannerCalendar1.BiDiMode := bdLeftToRight;
    1: XCalPlannerCalendar1.BiDiMode := bdRightToLeft;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  case CheckBox1.Checked of
    True:  XCalPlannerCalendar1.XCalendarEvents := XCalendarAstroEvents1;
    False: XCalPlannerCalendar1.XCalendarEvents := nil;
  end;
end;

procedure TForm1.Update;
begin
  StatusBar1.Panels[0].Text := 'Selected Date(s): ' +
    XCalPlannerCalendar1.DatesAsText;
end;

procedure TForm1.XCalPlannerCalendar1DaySelect(Sender: TObject;
  SelDate: TDateTime);
begin
  Update;
end;

procedure TForm1.XCalPlannerCalendar1WeekSelect(Sender: TObject);
begin
  Update;
end;

procedure TForm1.XCalPlannerCalendar1AllDaySelect(Sender: TObject);
begin
  Update;
end;

procedure TForm1.XCalPlannerCalendar1DateChange(Sender: TObject; origDate,
  newDate: TDateTime);
begin
  Update;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
  XCalPlannerCalendar1.TodayFormat := Edit1.Text;
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
  XCalPlannerCalendar1.WeekName := Edit2.Text;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Sun := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Mon := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Tue := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Wed := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Thu := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Fri := (Sender as TCheckBox).Checked;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  XCalPlannerCalendar1.InActiveDays.Sat := (Sender as TCheckBox).Checked;
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin
  if not m1 then
    XCalPlannerCalendar1.XCalendar.FormatSettings.ShortDayNames.Assign(Memo1.Lines);
end;

procedure TForm1.Memo2Change(Sender: TObject);
begin
  if not m2 then
    XCalPlannerCalendar1.XCalendar.FormatSettings.LongMonthNames.Assign(Memo2.Lines);
end;

end.
