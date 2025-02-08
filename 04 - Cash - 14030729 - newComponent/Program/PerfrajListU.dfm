inherited FrPerfrajList: TFrPerfrajList
  Left = 446
  Top = 305
  Width = 1062
  Height = 351
  Caption = #1670#1575#1662' '#1662#1585#1601#1585#1575#1688
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 1046
    Height = 312
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 272
      Width = 1044
      Height = 0
      Align = alClient
      TabOrder = 0
    end
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 50
      Width = 1044
      Height = 222
      Cursor = crHandPoint
      Align = alTop
      DataSource = dPerfrajList
      TabOrder = 1
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      YeganehColor = False
      YeganehFinish = False
      PageNumber = False
      RecordNumber = False
      HasTime = False
      Oriention = poPortrait
      HasDate = False
      HasIndex = False
      InvertFarsiDate = True
      TitleSort = True
      AutoInsert = False
      FooterFields = 'Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'Date'
          Title.Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Accountno'
          Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
          Title.Color = clSkyBlue
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AccountTitle'
          Title.Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
          Title.Color = clSkyBlue
          Width = 153
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bed'
          Title.Caption = #1576#1583#1607#1705#1575#1585
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bes'
          Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Title.Color = clSkyBlue
          Width = 198
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayTypeTitle'
          Title.Caption = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DES'
          Title.Caption = #1593#1604#1578
          Title.Color = clSkyBlue
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MANDEH'
          Title.Caption = #1605#1575#1606#1583#1607
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'InterestAmount'
          Title.Caption = #1587#1608#1583
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 1
      Top = 272
      Width = 1044
      Height = 39
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        1044
        39)
      object PerfrazhBtn: TAdvGlowButton
        Left = 913
        Top = 5
        Width = 120
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1662#1585#1601#1585#1575#1688
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 252
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = PerfrazhBtnClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BitBtn1: TAdvGlowButton
        Left = 10
        Top = 5
        Width = 119
        Height = 28
        Action = AExit
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 1
      Width = 1044
      Height = 49
      Align = alTop
      TabOrder = 3
      DesignSize = (
        1044
        49)
      object Label1: TLabel
        Left = 961
        Top = 13
        Width = 72
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 710
        Top = 14
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 532
        Top = 14
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 295
        Top = 14
        Width = 49
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1593#1604#1578' :'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SearchEdit: TEdit
        Left = 753
        Top = 7
        Width = 203
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object MEDateFrom: TSolarDatePicker
        Left = 546
        Top = 7
        Width = 160
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = '1403/11/06'
        Enabled = True
        DateKind = dkSolar
        CheckInputOnExit = False
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtCalendar
        ShowDefaultDate = True
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object MEDateTo: TSolarDatePicker
        Left = 369
        Top = 7
        Width = 160
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '1403/11/06'
        Enabled = True
        DateKind = dkSolar
        CheckInputOnExit = False
        Divider = dSlash
        ShowToDay = True
        MonthObject = moPopupMenu
        Glyph = gtCalendar
        ShowDefaultDate = True
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object DBLkCBPayTypeTitle: TDBLookupComboBox
        Left = 105
        Top = 7
        Width = 186
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 10
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        KeyField = 'PayTypeID'
        ListField = 'PayTypeTitle'
        ListSource = DSQrPayType
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 3
      end
      object MakeRep: TAdvGlowButton
        Left = 11
        Top = 11
        Width = 87
        Height = 28
        Caption = #1606#1605#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 31
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = MakeRepClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 13
    Top = 131
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 15
    Top = 84
  end
  inherited qSetting: TADOQuery
    Left = 96
    Top = 152
  end
  object dPerfrajList: TDataSource
    DataSet = PerfrajList
    Left = 48
    Top = 80
  end
  object PerfrajList: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'PerfrajList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FromDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ' '
      end
      item
        Name = '@ToDate'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ' '
      end
      item
        Name = '@PayKind'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@ACCOUNTID'
        DataType = ftInteger
        Value = 0
      end>
    Left = 104
    Top = 96
    object PerfrajListAccountid: TAutoIncField
      FieldName = 'Accountid'
      ReadOnly = True
    end
    object PerfrajListAccountno: TStringField
      FieldName = 'Accountno'
    end
    object PerfrajListAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object PerfrajListDate: TWideStringField
      FieldName = 'Date'
      Size = 10
    end
    object PerfrajListComment: TStringField
      FieldName = 'Comment'
      Size = 100
    end
    object PerfrajListbes: TLargeintField
      FieldName = 'bes'
    end
    object PerfrajListbed: TIntegerField
      FieldName = 'bed'
      ReadOnly = True
    end
    object PerfrajListParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object PerfrajListPayTypeTitle: TWideStringField
      FieldName = 'PayTypeTitle'
      Size = 50
    end
    object PerfrajListPayTypeID: TWordField
      FieldName = 'PayTypeID'
    end
    object PerfrajListDES: TStringField
      FieldName = 'DES'
      ReadOnly = True
      Size = 25
    end
    object PerfrajListMANDEH: TLargeintField
      FieldName = 'MANDEH'
      ReadOnly = True
    end
    object PerfrajListContactID: TIntegerField
      FieldName = 'ContactID'
    end
    object PerfrajListAmount: TLargeintField
      FieldName = 'Amount'
    end
    object PerfrajListLoanID: TAutoIncField
      FieldName = 'LoanID'
      ReadOnly = True
    end
    object PerfrajListPaymentID: TAutoIncField
      FieldName = 'PaymentID'
      ReadOnly = True
    end
    object PerfrajListWasPrinted: TSmallintField
      FieldName = 'WasPrinted'
    end
    object PerfrajListdocumentNo: TStringField
      FieldName = 'documentNo'
      Size = 10
    end
    object PerfrajListInterestAmount: TIntegerField
      FieldName = 'InterestAmount'
    end
  end
  object QrPayType: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select 0 as PayTypeID , '#39#1607#1605#1607' '#1605#1608#1575#1585#1583#39' as PayTypeTitle'
      'Union'
      'Select PayTypeID , PayTypeTitle From PayType'
      'WHERE PayTypeID IN(1,2,3)')
    Left = 40
    Top = 139
    object QrPayTypePayTypeID: TWordField
      FieldName = 'PayTypeID'
    end
    object QrPayTypePayTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PayTypeTitle'
      Size = 50
    end
  end
  object DSQrPayType: TDataSource
    AutoEdit = False
    DataSet = QrPayType
    Left = 32
    Top = 196
  end
  object RepPopMnu: TPopupMenu
    MenuAnimation = [maRightToLeft, maTopToBottom]
    TrackButton = tbLeftButton
    Left = 160
    Top = 92
    object NShow: TMenuItem
      AutoHotkeys = maAutomatic
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662'   F9'
      OnClick = NShowClick
    end
    object NPrint: TMenuItem
      Tag = 1
      AutoHotkeys = maAutomatic
      Caption = #1670#1575#1662' '#1576#1583#1608#1606' '#1662#1610#1588' '#1606#1605#1575#1610#1588'   Ctrl+F9'
      OnClick = NShowClick
    end
    object NDesign: TMenuItem
      Tag = 2
      AutoHotkeys = maAutomatic
      Caption = #1591#1585#1575#1581#1610' '#1711#1586#1575#1585#1588'   Alt+F9'
      OnClick = NShowClick
    end
    object NOldVersion: TMenuItem
      Caption = #1662#1585#1601#1585#1575#1688' '#1608#1585#1688#1606' '#1602#1583#1610#1605
      OnClick = NShowClick
    end
    object N8: TMenuItem
      Caption = '-'
    end
    object N11: TMenuItem
      Caption = #1591#1585#1575#1581#1610' '#1662#1610#1588' '#1601#1585#1590
    end
  end
end
