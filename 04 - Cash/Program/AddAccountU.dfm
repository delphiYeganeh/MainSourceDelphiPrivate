inherited FrAddAccount: TFrAddAccount
  Top = 271
  Width = 389
  Height = 234
  Caption = #1578#1593#1585#1610#1601' '#1581#1587#1575#1576
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel [0]
    Left = 0
    Top = 0
    Width = 373
    Height = 154
    Align = alClient
    TabOrder = 1
    DesignSize = (
      373
      154)
    object Label2: TLabel
      Left = 298
      Top = 68
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1593#1606#1608#1575#1606
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 298
      Top = 40
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 298
      Top = 96
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1601#1578#1578#1575#1581
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 298
      Top = 12
      Width = 64
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1606#1608#1593' '#1581#1587#1575#1576
      FocusControl = DBLookupComboBox2
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DBEdit2: TDBEdit
      Left = 15
      Top = 63
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'AccountTitle'
      DataSource = dm.DSelect_Account
      DragCursor = crDefault
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = TEditEnter
      OnExit = TEditExit
    end
    object DBEdit1: TDBEdit
      Left = 15
      Top = 35
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'AccountNo'
      DataSource = dm.DSelect_Account
      DragCursor = crDefault
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 16
      ParentFont = False
      TabOrder = 1
    end
    object BankPanel: TPanel
      Left = 8
      Top = 117
      Width = 361
      Height = 33
      Anchors = [akTop, akRight]
      BevelOuter = bvNone
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = True
      ParentFont = False
      TabOrder = 2
      DesignSize = (
        361
        33)
      object Label4: TLabel
        Left = 290
        Top = 5
        Width = 64
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1575#1606#1705
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 8
        Top = 2
        Width = 273
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'BankTitle'
        DataSource = dm.DSelect_Account
        DragCursor = crDefault
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 15
      Top = 8
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      DataField = 'AccountTypeTitle'
      DataSource = dm.DSelect_Account
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 3
      OnClick = DBLookupComboBox2Click
    end
    object DBEdit3: TSolarDatePicker
      Left = 15
      Top = 91
      Width = 274
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      DragCursor = crDefault
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Enabled = True
      OnEnter = TEditEnter
      OnExit = DBEdit3Exit
      DateKind = dkSolar
      CheckInputOnExit = True
      Divider = dSlash
      ShowToDay = True
      MonthObject = moComboBox
      Glyph = gtCalendar
      ShowDefaultDate = False
      AutoCheck = False
      AutoDeleteDelimiter = False
      EnabledDays = [mcSaturday, mcSunday, mcMonday, mcTuesday, mcWednesday, mcThursday, mcFriday]
      MaskEnabled = False
      ColorCaptionStart = 13158600
      ColorCaptionStop = clWhite
      ColorBodyStart = clWhite
      ColorBodyStop = clWhite
      ColorTodayLine = clBlack
      ColorSelectBrush = 14474460
      ColorDisableMonth = clGray
      ColorVacationDay = clRed
      ColorNormalDay = clBlack
      ColorStyle = csWhiteGray
      ButtonStyle = bsRound
      DataSource = dm.DSelect_Account
      DataField = 'AccountDate'
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
  end
  object Panel1: TPanel [1]
    Left = 0
    Top = 154
    Width = 373
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      373
      41)
    object BitBtn8: TBitBtn
      Left = 16
      Top = 7
      Width = 61
      Height = 28
      Action = AExit
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
        FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn1: TBitBtn
      Left = 306
      Top = 7
      Width = 61
      Height = 28
      Action = DataSetInsert1
      Anchors = [akTop, akRight]
      Caption = #1580#1583#1610#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn3: TBitBtn
      Left = 180
      Top = 7
      Width = 61
      Height = 28
      Action = DataSetPost1
      Anchors = [akTop, akRight]
      Caption = #1584#1582#1610#1585#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008484
        84000000FF000000FF0000000000FF00FF000000FF000000FF000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00848484000000
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        FF000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00848484000000FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn5: TBitBtn
      Left = 243
      Top = 7
      Width = 61
      Height = 28
      Action = DataSetEdit1
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000000000
        0000000000000000000000000000FF00FF00000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00FFFF
        FF0000FFFF00FFFFFF0000FFFF000000000000000000FFFF000000000000FFFF
        FF0000000000FFFF0000FFFF0000FFFF0000FFFF000000000000000000000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
        FF00FFFFFF000000000000000000FFFFFF0000000000FFFFFF0000FFFF00FFFF
        FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
        FF00FFFF00000000000000FFFF00000000000000000000000000000000000000
        0000FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF000000000000FFFF
        FF00FFFFFF00FFFFFF0000000000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFF
        FF0000FFFF00FFFFFF0000FFFF00FFFFFF0000000000FFFF000000000000FFFF
        FF00FFFF0000FFFF0000FFFF0000000000000000000000000000000000000000
        00000000000000000000FFFFFF0000FFFF0000000000FFFF000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FFFF00000000000000
        000000FFFF00FFFFFF0000FFFF0000000000000000000000000000000000FFFF
        FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF00000000000000FFFF000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000FF
        FF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000FFFFFF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF000000
        000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000848484000000000084848400000000008484840000000000848484000000
        00000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000848484000000000084848400000000008484840000000000848484000000
        0000FF00FF00000000000000FF0000000000FF00FF00FF00FF0000000000FF00
        FF0000000000FF00FF0000000000FF00FF0000000000FF00FF0000000000FF00
        FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn7: TBitBtn
      Left = 117
      Top = 7
      Width = 61
      Height = 28
      Action = DataSetCancel1
      Anchors = [akTop, akRight]
      Caption = #1604#1594#1608
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
        8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
        0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF000000FF000000FF0084848400000000008484
        84000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FF000000FF000000FF00FF00FF000000
        FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF000000FF00000000000000
        FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000008400000000000000
        8400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000FF0000008400000000000000
        84000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF000000FF000000FF0000000000000000000000
        00000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000FF000000FF000000FF0000000000000000000000
        00000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000FF000000FF000000FF00FF00FF0000000000000000000000
        0000FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000FF000000FF000000FF00FF00FF00FF00FF0084848400000000008484
        8400FF00FF00FF00FF000000FF000000FF000000FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
  end
  inherited ahmadvand: TActionList
    Left = 36
    Top = 76
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
    Top = 76
    inherited wordMenuItem: TMenuItem
      OnClick = nil
    end
    inherited ExcelMenuItem: TMenuItem
      OnClick = nil
    end
    inherited PrintMenuItem: TMenuItem
      OnClick = nil
    end
    inherited TextMenuItem: TMenuItem
      OnClick = nil
    end
    inherited CustomMenuItem: TMenuItem
      OnClick = nil
    end
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 12
    ActionBars = <
      item
        Items = <
          item
            Action = DataSetInsert1
            ImageIndex = 16
            ShortCut = 45
          end
          item
            Action = DataSetEdit1
            ImageIndex = 48
            ShortCut = 115
          end
          item
            Action = DataSetPost1
            ImageIndex = 0
            ShortCut = 113
          end
          item
            Action = DataSetCancel1
            ImageIndex = 56
            ShortCut = 32776
          end>
        AutoSize = False
      end>
    Left = 61
    Top = 40
    StyleName = 'XP Style'
    object DataSetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = #1580#1583#1610#1583
      Hint = 'Insert'
      ImageIndex = 16
      ShortCut = 16429
      OnExecute = DataSetInsert1Execute
    end
    object DataSetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      Hint = 'Edit'
      ImageIndex = 48
      ShortCut = 115
    end
    object DataSetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      Hint = 'Post'
      ImageIndex = 0
      ShortCut = 113
    end
    object DataSetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = #1604#1594#1608
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
    end
    object DataSetNext1: TDataSetNext
      Category = 'Dataset'
      Caption = #1576#1593#1583#1610
      Hint = 'Next'
      ImageIndex = 76
      ShortCut = 34
    end
    object DataSetPrior1: TDataSetPrior
      Category = 'Dataset'
      Caption = #1602#1576#1604#1610
      Hint = 'Prior'
      ImageIndex = 77
      ShortCut = 33
    end
  end
end
