inherited FmLetterImport: TFmLetterImport
  Left = 509
  Top = 255
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1608#1591#1604#1576#1575#1606' '#1575#1586' '#1601#1575#1610#1604' '#1582#1575#1585#1580#1610
  ClientHeight = 476
  ClientWidth = 882
  Constraints.MaxHeight = 515
  Constraints.MaxWidth = 898
  Constraints.MinHeight = 510
  Constraints.MinWidth = 616
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 882
    Height = 476
    Align = alClient
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      882
      476)
    object Label15: TLabel
      Left = 283
      Top = 104
      Width = 18
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '* 1 '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label17: TLabel
      Left = 283
      Top = 128
      Width = 18
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '* 1 '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 283
      Top = 80
      Width = 18
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '* 1 '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 1
      Top = 434
      Width = 880
      Height = 41
      Align = alBottom
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        880
        41)
      object btnPrev: TAdvGlowButton
        Left = 792
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1602#1576#1604#1610
        ImageIndex = 87
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 0
        OnClick = btnPrevClick
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
      object btnNext: TAdvGlowButton
        Left = 712
        Top = 8
        Width = 75
        Height = 25
        Anchors = [akTop, akRight]
        Caption = #1576#1593#1583#1610
        ImageIndex = 85
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = btnNextClick
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
    end
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 880
      Height = 433
      ActivePage = TabSheet3
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabWidth = 150
      object TabSheet3: TTabSheet
        Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
        ImageIndex = 2
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 872
          Height = 405
          Align = alClient
          Color = 15656678
          TabOrder = 0
          DesignSize = (
            872
            405)
          object Label1: TLabel
            Left = 702
            Top = 3
            Width = 145
            Height = 16
            Anchors = [akTop, akRight]
            Caption = #1605#1588#1582#1589' '#1705#1585#1583#1606' '#1587#1578#1608#1606' '#1607#1575
            Font.Charset = ARABIC_CHARSET
            Font.Color = clGreen
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lblNo: TLabel
            Left = 781
            Top = 92
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
          end
          object lblDate: TLabel
            Left = 781
            Top = 138
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
          end
          object lblSummery: TLabel
            Left = 781
            Top = 209
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1590#1605#1608#1606' '#1606#1575#1605#1607
          end
          object lblClassification: TLabel
            Left = 781
            Top = 233
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
          end
          object lblPriority: TLabel
            Left = 781
            Top = 257
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1608#1585#1610#1578
          end
          object lblSender: TLabel
            Left = 781
            Top = 281
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1587#1578#1606#1583#1607
          end
          object lblReceiver: TLabel
            Left = 781
            Top = 305
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1711#1610#1585#1606#1583#1607
          end
          object lblForm: TLabel
            Left = 781
            Top = 353
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578
          end
          object lblSubject: TLabel
            Left = 781
            Top = 185
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1608#1590#1608#1593' '#1606#1575#1605#1607
          end
          object Label20: TLabel
            Left = 404
            Top = 19
            Width = 453
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 
              #1578#1608#1580#1607' : '#1601#1610#1604#1583#1607#1575#1610#1610' '#1705#1607' '#1605#1593#1575#1583#1604#1610' '#1576#1585#1575#1610' '#1570#1606#1607#1575' '#1575#1606#1578#1582#1575#1576' '#1606#1588#1608#1583#1548' '#1576#1589#1608#1585#1578' '#1662#1610#1588#1601#1585#1590' '#1582#1575 +
              #1604#1610' '#1583#1585' '#1606#1592#1585' '#1711#1585#1601#1578#1607' '#1582#1608#1575#1607#1606#1583' '#1588#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 496
            Top = 105
            Width = 3
            Height = 13
            Enabled = False
          end
          object Label5: TLabel
            Left = 605
            Top = 94
            Width = 9
            Height = 13
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = ' *'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
          end
          object Label6: TLabel
            Left = 305
            Top = 35
            Width = 552
            Height = 26
            Anchors = [akTop, akRight]
            Caption = 
              #1578#1608#1580#1607' : '#1601#1610#1604#1583#1607#1575#1610#1610' '#1705#1607' '#1576#1575' '#1593#1604#1575#1605#1578' * '#1605#1588#1582#1589' '#1588#1583#1607' '#1575#1606#1583' '#1575#1604#1586#1575#1605#1610' '#1605#1610#1576#1575#1588#1606#1583' '#1608' '#1583#1585#1589#1608 +
              #1585#1578' '#1582#1575#1604#1610' '#1576#1608#1583#1606' '#1605#1602#1583#1575#1585' '#1587#1578#1608#1606' '#1605#1593#1575#1583#1604' '#1583#1585' '#1601#1575#1610#1604' '#1608#1585#1608#1583#1610#1548#13#10' '#1585#1583#1610#1601' '#1605#1585#1576#1608#1591#1607' '#1608#1575#1585#1583' ' +
              #1606#1582#1608#1575#1607#1583' '#1588#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 348
            Top = 62
            Width = 509
            Height = 13
            Anchors = [akTop, akRight]
            Caption = 
              #1578#1608#1580#1607' : '#1601#1610#1604#1583#1607#1575#1610#1610' '#1705#1607' '#1576#1575' '#1593#1604#1575#1605#1578' 123 '#1605#1588#1582#1589' '#1588#1583#1607' '#1575#1606#1583' '#1576#1589#1608#1585#1578' '#1593#1583#1583#1610' '#1605#1610#1576#1575#1588#1606#1583' ' +
              #1605#1602#1583#1575#1585' '#1587#1578#1608#1606' '#1575#1606#1578#1582#1575#1576#1610' '#1576#1575#1610#1583' '#1593#1583#1583#1610' '#1576#1575#1588#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 605
            Top = 118
            Width = 9
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '* '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 605
            Top = 142
            Width = 9
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '* '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 605
            Top = 166
            Width = 9
            Height = 13
            Anchors = [akTop, akRight]
            Caption = '* '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblFormField18: TLabel
            Left = 189
            Top = 260
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 18'
            Visible = False
          end
          object lblFormField17: TLabel
            Left = 189
            Top = 236
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 17'
            Visible = False
          end
          object lblFormField16: TLabel
            Left = 189
            Top = 212
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 16'
            Visible = False
          end
          object lblFormField15: TLabel
            Left = 189
            Top = 188
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 15'
            Visible = False
          end
          object lblFormField14: TLabel
            Left = 189
            Top = 164
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 14'
            Visible = False
          end
          object lblFormField13: TLabel
            Left = 189
            Top = 140
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 13'
            Visible = False
          end
          object lblFormField12: TLabel
            Left = 189
            Top = 116
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 12'
            Visible = False
          end
          object lblFormField11: TLabel
            Left = 189
            Top = 92
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 11'
            Visible = False
          end
          object lblFieldType17: TLabel
            Left = 5
            Top = 238
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType16: TLabel
            Left = 5
            Top = 214
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType18: TLabel
            Left = 5
            Top = 262
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType15: TLabel
            Left = 5
            Top = 190
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType14: TLabel
            Left = 5
            Top = 166
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType13: TLabel
            Left = 5
            Top = 142
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType12: TLabel
            Left = 5
            Top = 118
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFieldType11: TLabel
            Left = 5
            Top = 94
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFormField19: TLabel
            Left = 189
            Top = 284
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 19'
            Visible = False
          end
          object lblFieldType19: TLabel
            Left = 5
            Top = 286
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblFormField20: TLabel
            Left = 189
            Top = 308
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1601#1585#1605' 20'
            Visible = False
          end
          object lblFieldType20: TLabel
            Left = 5
            Top = 310
            Width = 18
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            Caption = '* 1 '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            Visible = False
          end
          object lblUserMemo: TLabel
            Left = 781
            Top = 329
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610
          end
          object lblLetterType: TLabel
            Left = 781
            Top = 162
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1606#1575#1605#1607
          end
          object Label3: TLabel
            Left = 782
            Top = 114
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1575#1606#1583#1610#1705#1575#1578#1608#1585
          end
          object ProgressBar1: TProgressBar
            Left = 1
            Top = 390
            Width = 870
            Height = 14
            Align = alBottom
            TabOrder = 18
          end
          object cmbNo: TComboBox
            Tag = 1
            Left = 616
            Top = 90
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 0
          end
          object cmbDate: TComboBox
            Tag = 1
            Left = 616
            Top = 136
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 1
          end
          object cmbSubject: TComboBox
            Tag = 1
            Left = 616
            Top = 183
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 2
          end
          object cmbSummery: TComboBox
            Tag = 1
            Left = 616
            Top = 207
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 3
          end
          object cmbClassification: TComboBox
            Tag = 1
            Left = 616
            Top = 231
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 4
          end
          object cmbPriority: TComboBox
            Tag = 1
            Left = 616
            Top = 255
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 5
          end
          object cmbSender: TComboBox
            Tag = 1
            Left = 616
            Top = 279
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 6
          end
          object cmbReceiver: TComboBox
            Tag = 1
            Left = 616
            Top = 303
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 7
          end
          object Button2: TAdvGlowButton
            Left = 12
            Top = 380
            Width = 846
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
            ImageIndex = 117
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 8
            OnClick = Button2Click
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
          object lcbTables: TDBLookupComboBox
            Left = 616
            Top = 351
            Width = 161
            Height = 21
            Anchors = [akTop, akRight]
            KeyField = 'TableId'
            ListField = 'Description'
            ListSource = DForms
            TabOrder = 9
          end
          object cmbFormField11: TComboBox
            Tag = 1
            Left = 24
            Top = 90
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 10
            Visible = False
          end
          object cmbFormField12: TComboBox
            Tag = 1
            Left = 24
            Top = 114
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 11
            Visible = False
          end
          object cmbFormField13: TComboBox
            Tag = 1
            Left = 24
            Top = 138
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 12
            Visible = False
          end
          object cmbFormField14: TComboBox
            Tag = 1
            Left = 24
            Top = 162
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 13
            Visible = False
          end
          object cmbFormField15: TComboBox
            Tag = 1
            Left = 24
            Top = 186
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 14
            Visible = False
          end
          object cmbFormField16: TComboBox
            Tag = 1
            Left = 24
            Top = 210
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 15
            Visible = False
          end
          object cmbFormField17: TComboBox
            Tag = 1
            Left = 24
            Top = 234
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 16
            Visible = False
          end
          object cmbFormField18: TComboBox
            Tag = 1
            Left = 24
            Top = 258
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 17
            Visible = False
          end
          object cmbFormField19: TComboBox
            Tag = 1
            Left = 24
            Top = 282
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 19
            Visible = False
          end
          object cmbFormField20: TComboBox
            Tag = 1
            Left = 24
            Top = 306
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 20
            Visible = False
          end
          object EditsPanel: TScrollBox
            Left = 1
            Top = 89
            Width = 608
            Height = 288
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clBtnFace
            ParentColor = False
            TabOrder = 21
          end
          object cmbUserMemo: TComboBox
            Tag = 1
            Left = 616
            Top = 327
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 22
          end
          object cmbLetterType: TComboBox
            Tag = 1
            Left = 616
            Top = 160
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 23
          end
          object cmbIndicator: TComboBox
            Tag = 1
            Left = 617
            Top = 112
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 13
            TabOrder = 24
          end
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604' '#1605#1576#1583#1575
        ImageIndex = 3
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 872
          Height = 405
          Align = alClient
          Color = 15656678
          TabOrder = 0
          DesignSize = (
            872
            405)
          object Label2: TLabel
            Left = 381
            Top = 88
            Width = 476
            Height = 39
            Anchors = [akTop, akRight]
            Caption = 
              #1578#1608#1580#1607' : '#1575#1608#1604#1610#1606' '#1587#1591#1585' '#1601#1575#1610#1604' '#1608#1585#1608#1583#1610' '#1576#1575#1610#1583' '#1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1607#1575' '#1576#1575#1588#1583' '#1608' '#1575#1586' '#1587#1591#1585' '#1583#1608#1605 +
              ' '#1576#1607' '#1576#1593#1583' '#1576#1575#1610#1583' '#1583#1575#1583#1607' '#1607#1575' '#1602#1585#1575#1585' '#1583#1575#1583#1607' '#1588#1608#1606#1583#13#10#1583#1585' '#1589#1608#1585#1578' '#1582#1575#1604#1610' '#1576#1608#1583#1606' '#1582#1575#1606#1607' '#1607#1575#1610' ' +
              #1601#1575#1610#1604' '#1608#1585#1608#1583#1610#1548' '#1580#1583#1608#1604' '#1585#1588#1578#1607#1548' '#1711#1585#1608#1607' '#1608' '#1583#1575#1606#1588#1705#1583#1607' '#1576#1575' '#1593#1576#1575#1585#1578' '#1606#1575#1605#1588#1582#1589' '#1662#1585' '#1582#1608#1575#1607#1583' '#1588 +
              #1583#13#10#1583#1585' '#1589#1608#1585#1578' '#1582#1575#1604#1610' '#1576#1608#1583#1606' '#1587#1578#1608#1606' '#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1583#1575#1608#1591#1604#1576#1575#1606#1548' '#1580#1583#1608#1604' '#1583#1575#1608#1591#1604#1576#1575#1606' '#1576 +
              #1575' '#1585#1588#1578#1607' '#1582#1575#1604#1610' '#1662#1585' '#1582#1608#1575#1607#1583' '#1588#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Button1: TAdvGlowButton
            Left = 6
            Top = 16
            Width = 857
            Height = 26
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604' '#1608#1585#1608#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
            ImageIndex = 36
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            OnClick = Button1Click
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
          object StringGrid1: TStringGrid
            Left = 11
            Top = 144
            Width = 849
            Height = 255
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 3
            DefaultColWidth = 10
            DefaultRowHeight = 20
            RowCount = 2
            TabOrder = 1
            Visible = False
            ColWidths = (
              10
              88
              447)
          end
          object RadioButton1: TRadioButton
            Left = 744
            Top = 48
            Width = 113
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
            Checked = True
            TabOrder = 2
            TabStop = True
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 624
            Top = 48
            Width = 113
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578
            TabOrder = 3
            OnClick = RadioButton2Click
          end
          object CheckBox1: TCheckBox
            Left = 624
            Top = 69
            Width = 233
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1589#1608#1585#1578' '#1608#1580#1608#1583
            Checked = True
            State = cbChecked
            TabOrder = 4
          end
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 680
    Top = 248
  end
  inherited ActionList: TActionList
    Left = 735
    Top = 120
  end
  object OpenDialog1: TOpenDialog
    Filter = #1601#1575#1610#1604' '#1575#1705#1587#1604'|*.xls;*.xlsx'
    Left = 732
    Top = 216
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 732
    Top = 168
  end
  object spLetterImport: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'LetterImport'
    Parameters = <>
    Left = 348
    Top = 176
    object spLetterImportCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object DForms: TDataSource
    DataSet = sp_GetForms
    Left = 651
    Top = 91
  end
  object sp_GetForms: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterScroll = sp_GetFormsAfterScroll
    ProcedureName = 'get_Forms;1'
    Parameters = <>
    Left = 656
    Top = 47
    object sp_GetFormsTableId: TWordField
      FieldName = 'TableId'
    end
    object sp_GetFormsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object sp_GetFormsFieldsCount: TIntegerField
      FieldName = 'FieldsCount'
    end
  end
  object sp_FormFields: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_FormFields;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@FormID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 552
    Top = 47
    object sp_FormFieldsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object sp_FormFieldsFieldName: TStringField
      FieldName = 'FieldName'
      Size = 50
    end
    object sp_FormFieldsTableID: TIntegerField
      FieldName = 'TableID'
    end
    object sp_FormFieldsDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object sp_FormFieldsIsWhere: TBooleanField
      FieldName = 'IsWhere'
    end
    object sp_FormFieldsISString: TBooleanField
      FieldName = 'ISString'
    end
    object sp_FormFieldsIsLike: TBooleanField
      FieldName = 'IsLike'
    end
    object sp_FormFieldsEveryLike: TBooleanField
      FieldName = 'EveryLike'
    end
    object sp_FormFieldsVisibleInGrid: TBooleanField
      FieldName = 'VisibleInGrid'
    end
    object sp_FormFieldsisblob: TBooleanField
      FieldName = 'isblob'
    end
    object sp_FormFieldsFieldGroupID: TIntegerField
      FieldName = 'FieldGroupID'
    end
    object sp_FormFieldsFieldTypeID: TWordField
      FieldName = 'FieldTypeID'
    end
    object sp_FormFieldsReferenceTableID: TWordField
      FieldName = 'ReferenceTableID'
    end
    object sp_FormFieldsisboolean: TBooleanField
      FieldName = 'isboolean'
    end
    object sp_FormFieldsorder: TIntegerField
      FieldName = 'order'
    end
    object sp_FormFieldsFieldTypeID_1: TWordField
      FieldName = 'FieldTypeID_1'
    end
    object sp_FormFieldsFieldTypeTitle: TWideStringField
      FieldName = 'FieldTypeTitle'
      Size = 50
    end
  end
  object sp_Import_Other_Fields: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'sp_Import_Other_Fields;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@year'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@secID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@docNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = Null
      end
      item
        Name = '@FormID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FiledsPage'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@FormField1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField3'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField4'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField5'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField6'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField7'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField8'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField9'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField10'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField11'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField12'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField13'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField14'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField15'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField16'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField17'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField18'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField19'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField20'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    Left = 348
    Top = 264
    object IntegerField1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
end
