inherited FrMakeMonthly: TFrMakeMonthly
  Left = 618
  Top = 141
  BorderStyle = bsDialog
  Caption = #1578#1606#1592#1610#1605' '#1605#1575#1607#1610#1575#1606#1607' '#1576#1585#1575#1610' '#1581#1587#1575#1576' '#1607#1575
  ClientHeight = 453
  ClientWidth = 496
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 496
    Height = 453
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 494
      Height = 410
      Align = alClient
      TabOrder = 0
      DesignSize = (
        494
        410)
      object Label1: TLabel
        Left = 26
        Top = 392
        Width = 407
        Height = 14
        Anchors = [akLeft, akRight, akBottom]
        Caption = 
          #1576#1585#1575#1610' '#1578#1606#1592#1610#1605' '#1578#1575#1585#1582' '#1587#1585#1585#1587#1610#1583' '#1608' '#1605#1576#1604#1594' '#1605#1575#1607#1610#1575#1606#1607' '#1607#1575' '#1576#1607' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576' '#1575#1601#1585#1575#1583' '#1605 +
          #1585#1575#1580#1593#1607' '#1606#1605#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ProgressBar: TProgressBar
        Left = 1
        Top = 378
        Width = 492
        Height = 15
        TabOrder = 6
      end
      object AllAcount: TRadioButton
        Left = 383
        Top = 92
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1705#1604#1610#1607' '#1581#1587#1575#1576' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = SelectionAccountsClick
      end
      object oneAccount: TRadioButton
        Left = 383
        Top = 113
        Width = 97
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1581#1587#1575#1576' '#1588#1605#1575#1585#1607' :'
        Checked = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnClick = SelectionAccountsClick
      end
      object SearchEdit: TEdit
        Left = 8
        Top = 108
        Width = 337
        Height = 22
        Anchors = [akTop, akRight]
        Color = clCream
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object SelectionAccounts: TRadioButton
        Left = 359
        Top = 133
        Width = 122
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1581#1587#1575#1576' '#1607#1575#1610' '#1605#1606#1578#1582#1576
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = SelectionAccountsClick
      end
      object GroupBox1: TGroupBox
        Left = 1
        Top = 33
        Width = 492
        Height = 56
        Align = alTop
        Caption = '  '#1576#1600#1600#1575#1586#1607' '#1575#1606#1600#1578#1600#1582#1600#1600#1575#1576#1600#1600#1610'    '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        DesignSize = (
          492
          56)
        object Label2: TLabel
          Left = 394
          Top = 16
          Width = 76
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1575#1586' '#1578#1600#1600#1600#1600#1600#1600#1600#1600#1600#1575#1585#1610#1600#1600#1600#1600#1582' '
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 160
          Top = 15
          Width = 75
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1578#1600#1600#1600#1600#1600#1575' '#1578#1600#1600#1600#1600#1600#1575#1585#1610#1600#1600#1600#1600#1582
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object datefrom: TSolarDatePicker
          Left = 241
          Top = 9
          Width = 145
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
          TabOrder = 0
          Enabled = True
          OnEnter = datefromEnter
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
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
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
        object dateTo: TSolarDatePicker
          Left = 6
          Top = 9
          Width = 145
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
          Enabled = True
          OnEnter = datefromEnter
          DateKind = dkSolar
          CheckInputOnExit = False
          Divider = dSlash
          ShowToDay = True
          MonthObject = moPopupMenu
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
          DataFieldType = dftSolar
          DataFieldAutoSaveModified = False
        end
      end
      object Panel3: TPanel
        Left = 1
        Top = 1
        Width = 492
        Height = 32
        Align = alTop
        BevelOuter = bvNone
        Caption = '<<'#1578#1600#1600#1606#1600#1600#1592#1600#1600#1610#1600#1600#1605' '#1581#1600#1600#1600#1600#1602' '#1593#1600#1600#1590#1600#1600#1600#1608#1610#1600#1600#1600#1578'>>'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object GroupBox2: TGroupBox
        Left = 1
        Top = 160
        Width = 492
        Height = 215
        TabOrder = 5
        DesignSize = (
          492
          215)
        object lbl1: TLabel
          Left = 333
          Top = -1
          Width = 78
          Height = 13
          Caption = #1578#1605#1575#1605#1610' '#1581#1587#1575#1576' '#1607#1575
          Enabled = False
        end
        object lbl2: TLabel
          Left = 71
          Top = -1
          Width = 89
          Height = 13
          Caption = #1581#1587#1575#1576' '#1607#1575#1610' '#1605#1606#1578#1582#1576
          Enabled = False
        end
        object AllAccounts: TListBox
          Left = 270
          Top = 15
          Width = 211
          Height = 158
          Anchors = [akLeft, akTop, akRight, akBottom]
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 14
          MultiSelect = True
          ParentFont = False
          Sorted = True
          TabOrder = 0
          OnDblClick = AllAccountsDblClick
        end
        object SelectedAccounts: TListBox
          Left = 8
          Top = 15
          Width = 211
          Height = 158
          Anchors = [akLeft, akTop, akBottom]
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ItemHeight = 14
          MultiSelect = True
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnDblClick = SelectedAccountsDblClick
        end
        object btn1: TAdvGlowButton
          Left = 224
          Top = 65
          Width = 41
          Height = 25
          ImageIndex = 98
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 2
          OnClick = btn1Click
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
          Enabled = False
        end
        object btn2: TAdvGlowButton
          Left = 224
          Top = 106
          Width = 41
          Height = 25
          ImageIndex = 97
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          TabOrder = 3
          OnClick = btn2Click
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
          Enabled = False
        end
        object AllAccountsSearch: TEdit
          Left = 270
          Top = 175
          Width = 211
          Height = 22
          Anchors = [akLeft, akRight, akBottom]
          Color = clCream
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = AllAccountsSearchChange
        end
        object SelectedAccountsSearch: TEdit
          Left = 8
          Top = 175
          Width = 211
          Height = 22
          Anchors = [akLeft, akBottom]
          Color = clCream
          Enabled = False
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnChange = SelectedAccountsSearchChange
        end
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 411
      Width = 494
      Height = 41
      Align = alBottom
      TabOrder = 1
      DesignSize = (
        494
        41)
      object BitBtn1: TAdvGlowButton
        Left = 400
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1610#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        ModalResult = 1
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BitBtn1Click
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
      object BitBtn2: TAdvGlowButton
        Left = 320
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = dm.ImageList_MainNew
        ModalResult = 2
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
    Left = 53
    Top = 211
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 127
    Top = 252
  end
  inherited qSetting: TADOQuery
    Left = 96
    Top = 200
  end
end
