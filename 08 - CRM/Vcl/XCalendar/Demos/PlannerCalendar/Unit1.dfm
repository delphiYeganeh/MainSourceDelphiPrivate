object Form1: TForm1
  Left = 192
  Top = 114
  Width = 741
  Height = 588
  ActiveControl = XCalPlannerCalendar1
  Caption = 'XCalendar-Compatible Planner Calendar Demo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 512
    Top = 280
    Width = 67
    Height = 13
    Caption = 'Today Format'
  end
  object Label2: TLabel
    Left = 512
    Top = 336
    Width = 70
    Height = 13
    Caption = 'Weeks Header'
  end
  object Label3: TLabel
    Left = 304
    Top = 24
    Width = 83
    Height = 13
    Caption = 'Short Day Names'
  end
  object Label4: TLabel
    Left = 512
    Top = 24
    Width = 91
    Height = 13
    Caption = 'Long Month Names'
  end
  object XCalPlannerCalendar1: TXCalPlannerCalendar
    Left = 32
    Top = 272
    Width = 233
    Height = 241
    EventDayColor = clBlack
    EventMarkerColor = clYellow
    EventMarkerShape = evsCircle
    AllDaySelect = True
    BackgroundPosition = bpTiled
    BevelOuter = bvNone
    BorderWidth = 1
    Look = lookFlat
    DateDownColor = 12639424
    DateHoverColor = 12639424
    DateSelectColor = clTeal
    MultiSelect = True
    MultiSelectCtrlKey = True
    DayFont.Charset = DEFAULT_CHARSET
    DayFont.Color = clWindowText
    DayFont.Height = -11
    DayFont.Name = 'Tahoma'
    DayFont.Style = []
    WeekFont.Charset = DEFAULT_CHARSET
    WeekFont.Color = clWindowText
    WeekFont.Height = -11
    WeekFont.Name = 'Tahoma'
    WeekFont.Style = []
    WeekName = 'Wk'
    TextColor = clBlack
    SelectColor = clTeal
    SelectFontColor = clWhite
    InActiveColor = clGray
    HeaderColor = clNone
    FocusColor = clHighlight
    InversColor = clTeal
    WeekendColor = clRed
    ShowGotoToday = True
    ShowWeeks = True
    StartDay = 7
    TodayFormat = '"Today:" dddd ddddd'
    Day = 1
    Month = 8
    Year = 2008
    ShowHint = True
    ParentShowHint = False
    TabOrder = 0
    WeekSelect = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    EventHints = True
    CaptionColor = clNone
    CaptionTextColor = clBlack
    OnDaySelect = XCalPlannerCalendar1DaySelect
    OnDateChange = XCalPlannerCalendar1DateChange
    OnWeekSelect = XCalPlannerCalendar1WeekSelect
    OnAllDaySelect = XCalPlannerCalendar1AllDaySelect
    LineColor = clGray
    Line3D = True
    GradientStartColor = clWhite
    GradientEndColor = clBtnFace
    GradientDirection = gdVertical
    MonthGradientStartColor = clNone
    MonthGradientEndColor = clNone
    MonthGradientDirection = gdHorizontal
    HintPrevYear = 'Previous Year'
    HintPrevMonth = 'Previous Month'
    HintNextMonth = 'Next Month'
    HintNextYear = 'Next Year'
    Version = '1.7.4.0'
    ParentFont = False
    BrowserHoverColor = 12639424
    XCalendar = GregorianCalendar1
    XCalendarEvents = XCalendarAstroEvents1
  end
  object RadioGroup1: TRadioGroup
    Left = 32
    Top = 40
    Width = 233
    Height = 105
    Caption = 'Calendar'
    ItemIndex = 0
    Items.Strings = (
      #13'Gregorian'#10
      'Persian'
      'Hijri')
    TabOrder = 1
    OnClick = RadioGroup1Click
  end
  object RadioGroup2: TRadioGroup
    Left = 32
    Top = 152
    Width = 233
    Height = 89
    Caption = 'BiDiMode'
    ItemIndex = 0
    Items.Strings = (
      'bdLeftToRight'
      'bdRightToLeft')
    TabOrder = 2
    OnClick = RadioGroup2Click
  end
  object CheckBox1: TCheckBox
    Left = 512
    Top = 400
    Width = 185
    Height = 17
    Caption = 'Highlight Astronomical Events'
    Checked = True
    State = cbChecked
    TabOrder = 8
    OnClick = CheckBox1Click
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 535
    Width = 733
    Height = 19
    Panels = <
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Edit1: TEdit
    Left = 512
    Top = 296
    Width = 185
    Height = 21
    TabOrder = 6
    Text = '"Today:" dddd ddddd'
    OnChange = Edit1Change
  end
  object GroupBox1: TGroupBox
    Left = 304
    Top = 272
    Width = 185
    Height = 241
    Caption = 'Weekends'
    TabOrder = 5
    object CheckBox2: TCheckBox
      Left = 8
      Top = 32
      Width = 97
      Height = 17
      Caption = 'Sunday'
      TabOrder = 0
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 8
      Top = 56
      Width = 97
      Height = 17
      Caption = 'Monday'
      TabOrder = 1
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 8
      Top = 80
      Width = 97
      Height = 17
      Caption = 'Tuesday'
      TabOrder = 2
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 8
      Top = 104
      Width = 97
      Height = 17
      Caption = 'Wednesday'
      TabOrder = 3
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 8
      Top = 128
      Width = 97
      Height = 17
      Caption = 'Thursday'
      TabOrder = 4
      OnClick = CheckBox6Click
    end
    object CheckBox7: TCheckBox
      Left = 8
      Top = 152
      Width = 97
      Height = 17
      Caption = 'Friday'
      TabOrder = 5
      OnClick = CheckBox7Click
    end
    object CheckBox8: TCheckBox
      Left = 8
      Top = 176
      Width = 97
      Height = 17
      Caption = 'Saturday'
      TabOrder = 6
      OnClick = CheckBox8Click
    end
  end
  object Edit2: TEdit
    Left = 512
    Top = 352
    Width = 185
    Height = 21
    TabOrder = 7
    Text = 'Wk'
    OnChange = Edit2Change
  end
  object Memo1: TMemo
    Left = 304
    Top = 40
    Width = 185
    Height = 201
    ScrollBars = ssVertical
    TabOrder = 3
    OnChange = Memo1Change
  end
  object Memo2: TMemo
    Left = 512
    Top = 40
    Width = 185
    Height = 201
    ScrollBars = ssVertical
    TabOrder = 4
    OnChange = Memo2Change
  end
  object GregorianCalendar1: TGregorianCalendar
    Left = 512
    Top = 456
  end
  object PersianCalendar1: TPersianCalendar
    Left = 552
    Top = 456
  end
  object HijriCalendar1: THijriCalendar
    Left = 592
    Top = 456
  end
  object XCalendarAstroEvents1: TXCalendarAstroEvents
    Equinoxes.Titles.SpringEquinox = '"Spring Equinox" (hh:nn)'
    Equinoxes.Titles.SummerSolstice = '"Summer Solstice" (hh:nn)'
    Equinoxes.Titles.AutumnEquinox = '"Autumn Equinox" (hh:nn)'
    Equinoxes.Titles.WinterSolstice = '"Winter Solstice" (hh:nn)'
    MoonPhases.Titles.NewMoon = '"New Moon" (hh:nn)'
    MoonPhases.Titles.FirstQuarter = '"First Quarter Moon" (hh:nn)'
    MoonPhases.Titles.FullMoon = '"Full Moon" (hh:nn)'
    MoonPhases.Titles.LastQuarter = '"Last Quarter Moon" (hh:nn)'
    Eclipses.Titles.SolarEclipseTotal = '"Total Solar Eclipse" (hh:nn)'
    Eclipses.Titles.SolarEclipsePartial = '"Partial Solar Eclipse" (hh:nn)'
    Eclipses.Titles.SolarEclipseAnnular = '"Annular Solar Eclipse" (hh:nn)'
    Eclipses.Titles.LunarEclipseTotal = '"Total Lunar Eclipse" (hh:nn)'
    Eclipses.Titles.LunarEclipsePartial = '"Partial Lunar Eclipse" (hh:nn)'
    Eclipses.Titles.LunarEclipsePenumbral = '"Penumbral Lunar Eclipse" (hh:nn)'
    Left = 632
    Top = 456
  end
end
