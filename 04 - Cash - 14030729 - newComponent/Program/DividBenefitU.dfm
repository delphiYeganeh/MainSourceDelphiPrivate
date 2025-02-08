inherited FrDividBenefit: TFrDividBenefit
  Left = 649
  Top = 269
  AutoScroll = False
  Caption = #1578#1602#1587#1610#1605' '#1587#1608#1583' '#1576#1610#1606' '#1575#1593#1590#1575
  ClientHeight = 434
  ClientWidth = 746
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 746
    Height = 434
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel3: TPanel
      Left = 1
      Top = 114
      Width = 744
      Height = 278
      Align = alClient
      TabOrder = 0
      object YDBGrid: TYDBGrid
        Left = 1
        Top = 1
        Width = 742
        Height = 276
        Cursor = crHandPoint
        Align = alClient
        Color = 14540253
        DataSource = dm.DReport_SumBalance
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = YDBGridDblClick
        YeganehColor = True
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1604#1610#1587#1578' '#1578#1607#1610#1607' '#1588#1583#1607' '#1578#1608#1587#1591' '#1606#1585#1605' '#1575#1601#1586#1575#1585' '#1610#1711#1575#1606#1607
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        FooterFields = 'Count,SumBalance,Benefit'
        Columns = <
          item
            Expanded = False
            FieldName = 'AccountNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
            Width = 97
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountTitle'
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 145
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AccountDate'
            Title.Caption = #1578' '#1575#1601#1578#1578#1575#1581' '#1581#1587#1575#1576
            Width = 131
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SumBalance'
            Title.Caption = #1705#1575#1585#1705#1585#1583' ('#1607#1585' '#1607#1586#1575#1585' '#1578#1608#1605#1575#1606' '#1583#1585' '#1605#1575#1607' '#1610#1705' '#1575#1605#1578#1610#1575#1586')'
            Width = 219
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Benefit'
            Title.Caption = #1587#1608#1583' '#1662#1585#1583#1575#1582#1578#1610
            Width = 130
            Visible = True
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 744
      Height = 113
      Align = alTop
      TabOrder = 1
      DesignSize = (
        744
        113)
      object Label3: TLabel
        Left = 624
        Top = 8
        Width = 115
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1575#1587#1576#1607' '#1605#1608#1580#1608#1583#1610' '#1575#1586' '#1578#1575#1585#1610#1582' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 481
        Top = 10
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 677
        Top = 45
        Width = 55
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1608#1583' '#1608' '#1586#1610#1575#1606
      end
      object LBenefit: TLabel
        Left = 554
        Top = 45
        Width = 116
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '. . . .'
        ParentBiDiMode = False
      end
      object Label1: TLabel
        Left = 597
        Top = 73
        Width = 138
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1583#1585#1589#1583' '#1587#1608#1583' '#1605#1575#1607#1575#1606#1607' '#1662#1585#1583#1575#1582#1578#1610' '
      end
      object Label5: TLabel
        Left = 381
        Top = 77
        Width = 117
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1602#1583#1575#1585' '#1705#1604' '#1587#1608#1583' '#1662#1585#1583#1575#1582#1578#1610
      end
      object Label6: TLabel
        Left = 351
        Top = 45
        Width = 165
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1583' '#1575#1705#1579#1585' '#1587#1608#1583' '#1605#1575#1607#1575#1606#1607' '#1602#1575#1576#1604' '#1662#1585#1583#1575#1582#1578
      end
      object maxPercentBenefit: TLabel
        Left = 231
        Top = 45
        Width = 116
        Height = 13
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '. . . .'
        ParentBiDiMode = False
      end
      object allBenefit: TLabel
        Left = 365
        Top = 78
        Width = 16
        Height = 14
        Anchors = [akTop, akRight]
        Caption = '....'
      end
      object Label7: TLabel
        Left = 261
        Top = 79
        Width = 64
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1587#1608#1583' '#1587#1575#1604#1610#1575#1606#1607
      end
      object maxYearBenefit: TLabel
        Left = 183
        Top = 79
        Width = 73
        Height = 14
        Alignment = taRightJustify
        Anchors = [akTop, akRight]
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '. . . .'
        ParentBiDiMode = False
      end
      object MakeRep: TAdvGlowButton
        Left = 250
        Top = 3
        Width = 82
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1575#1587#1576#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 154
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
      object PercentBenefit: TEdit
        Left = 503
        Top = 69
        Width = 95
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '....'
        OnChange = PercentBenefitChange
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 4
        Top = 79
        Width = 98
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1662#1585#1583#1575#1582#1578' '#1587#1608#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 212
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = xpBitBtn1Click
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
      object MEDateFrom: TMaskEdit
        Left = 495
        Top = 2
        Width = 129
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        EditMask = #8207'!1499/99/99;1;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 11
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 0
        Text = #8207'14  /  /  '
      end
      object MEDateTo: TMaskEdit
        Left = 343
        Top = 2
        Width = 129
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        EditMask = #8207'!1499/99/99;1;_'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 11
        ParentBiDiMode = False
        ParentFont = False
        TabOrder = 1
        Text = #8207'14  /  /  '
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 392
      Width = 744
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        744
        41)
      object Label8: TLabel
        Left = 112
        Top = 12
        Width = 407
        Height = 14
        Anchors = [akTop, akRight]
        Caption = 
          #1578#1608#1580#1607' : '#1601#1602#1591' '#1593#1590#1608#1607#1575#1610#1610' '#1603#1607' '#1575#1580#1575#1586#1607' '#1583#1585#1610#1575#1601#1578' '#1587#1608#1583' '#1585#1575' '#1583#1575#1585#1606#1583' '#1583#1585' '#1575#1610#1606' '#1604#1610#1587#1578' '#1570#1608#1585#1583 +
          #1607' '#1605#1610' '#1588#1608#1606#1583'.'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SBShowData: TAdvGlowButton
        Left = 584
        Top = 7
        Width = 156
        Height = 28
        Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1581#1587#1575#1576
        ImageIndex = 226
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = SBShowDataClick
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
      object Button5: TAdvGlowButton
        Left = 11
        Top = 7
        Width = 75
        Height = 28
        Cancel = True
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
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
        OnClick = Button5Click
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
    Left = 93
    Top = 155
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 87
    Top = 228
  end
  inherited qSetting: TADOQuery
    Top = 0
  end
end
