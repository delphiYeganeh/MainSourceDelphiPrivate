inherited FmDocumentImport: TFmDocumentImport
  Left = 421
  Top = 168
  BorderStyle = bsSingle
  Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1608#1591#1604#1576#1575#1606' '#1575#1586' '#1601#1575#1610#1604' '#1582#1575#1585#1580#1610
  ClientHeight = 446
  ClientWidth = 882
  Constraints.MaxHeight = 485
  Constraints.MaxWidth = 898
  Constraints.MinHeight = 480
  Constraints.MinWidth = 616
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 882
    Height = 446
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 404
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
      Height = 403
      ActivePage = TabSheet4
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
          Height = 375
          Align = alClient
          Color = 15656678
          TabOrder = 0
          DesignSize = (
            872
            375)
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
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
          end
          object lblDate: TLabel
            Left = 781
            Top = 116
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
          end
          object lblSummery: TLabel
            Left = 781
            Top = 164
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583
          end
          object lblClassification: TLabel
            Left = 781
            Top = 188
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
          end
          object lblCustomField1: TLabel
            Left = 781
            Top = 212
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 1'
          end
          object lblCustomField2: TLabel
            Left = 781
            Top = 236
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 2'
          end
          object lblCustomField3: TLabel
            Left = 781
            Top = 260
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1610#1604#1583' '#1705#1575#1585#1576#1585#1610' 3'
          end
          object lblForm: TLabel
            Left = 781
            Top = 284
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578
          end
          object lblSubject: TLabel
            Left = 781
            Top = 140
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Anchors = [akTop, akRight]
            Caption = #1605#1608#1590#1608#1593' '#1587#1606#1583
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
          object ProgressBar1: TProgressBar
            Left = 1
            Top = 360
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
            ItemHeight = 0
            TabOrder = 0
          end
          object cmbDate: TComboBox
            Tag = 1
            Left = 616
            Top = 114
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 1
          end
          object cmbSubject: TComboBox
            Tag = 1
            Left = 616
            Top = 138
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 2
          end
          object cmbSummery: TComboBox
            Tag = 1
            Left = 616
            Top = 162
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 3
          end
          object cmbClassification: TComboBox
            Tag = 1
            Left = 616
            Top = 186
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 4
          end
          object cmbCustomField1: TComboBox
            Tag = 1
            Left = 616
            Top = 210
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 5
          end
          object cmbCustomField2: TComboBox
            Tag = 1
            Left = 616
            Top = 234
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 6
          end
          object cmbCustomField3: TComboBox
            Tag = 1
            Left = 616
            Top = 258
            Width = 161
            Height = 21
            Style = csDropDownList
            Anchors = [akTop, akRight]
            ItemHeight = 0
            TabOrder = 7
          end
          object Button2: TAdvGlowButton
            Left = 12
            Top = 348
            Width = 846
            Height = 25
            Anchors = [akLeft, akTop, akRight]
            Caption = #1575#1606#1578#1602#1575#1604' '#1575#1591#1604#1575#1593#1575#1578
            ImageIndex = 195
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
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 616
            Top = 282
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
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
            ItemHeight = 0
            TabOrder = 20
            Visible = False
          end
          object EditsPanel: TScrollBox
            Left = 1
            Top = 89
            Width = 608
            Height = 256
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clBtnFace
            ParentColor = False
            TabOrder = 21
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
          Height = 375
          Align = alClient
          Color = 15656678
          TabOrder = 0
          DesignSize = (
            872
            375)
          object Label2: TLabel
            Left = 13
            Top = 168
            Width = 476
            Height = 39
            Anchors = [akTop, akRight]
            Caption = 
              #1578#1608#1580#1607' : '#1575#1608#1604#1610#1606' '#1587#1591#1585' '#1601#1575#1610#1604' '#1608#1585#1608#1583#1610' '#1576#1575#1610#1583' '#1593#1606#1608#1575#1606' '#1587#1578#1608#1606' '#1607#1575' '#1576#1575#1588#1583' '#1608' '#1575#1586' '#1587#1591#1585' '#1583#1608#1605 +
              ' '#1576#1607' '#1576#1593#1583' '#1576#1575#1610#1583' '#1583#1575#1583#1607' '#1607#1575' '#1602#1585#1575#1585' '#1583#1575#1583#1607' '#1588#1608#1606#1583#13#10#1583#1585' '#1589#1608#1585#1578' '#1582#1575#1604#1610' '#1576#1608#1583#1606' '#1582#1575#1606#1607' '#1607#1575#1610' ' +
              #1601#1575#1610#1604' '#1608#1585#1608#1583#1610#1548' '#1580#1583#1608#1604' '#1585#1588#1578#1607#1548' '#1711#1585#1608#1607' '#1608' '#1583#1575#1606#1588#1705#1583#1607' '#1576#1575' '#1593#1576#1575#1585#1578' '#1606#1575#1605#1588#1582#1589' '#1662#1585' '#1582#1608#1575#1607#1583' '#1588 +
              #1583#13#10#1583#1585' '#1589#1608#1585#1578' '#1582#1575#1604#1610' '#1576#1608#1583#1606' '#1587#1578#1608#1606' '#1607#1575#1610' '#1605#1585#1576#1608#1591' '#1576#1607' '#1583#1575#1608#1591#1604#1576#1575#1606#1548' '#1580#1583#1608#1604' '#1583#1575#1608#1591#1604#1576#1575#1606' '#1576 +
              #1575' '#1585#1588#1578#1607' '#1582#1575#1604#1610' '#1662#1585' '#1582#1608#1575#1607#1583' '#1588#1583
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 215
            Top = 8
            Width = 254
            Height = 13
            Caption = #1578#1608#1580#1607' :1- '#1583#1585' '#1585#1583#1610#1601' '#1575#1608#1604' '#1601#1575#1610#1604' '#1575#1705#1587#1604' '#1610#1705' '#1587#1578#1608#1606' '#1575#1590#1575#1601#1607' '#1606#1605#1575#1610#1610#1583' '
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 280
            Top = 24
            Width = 160
            Height = 13
            Caption = '2- '#1606#1575#1605' '#1587#1578#1608#1606' '#1607#1575' '#1575#1586' F1 '#1578#1575'  F33  '#1576#1575#1588#1583' '
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 224
            Top = 40
            Width = 215
            Height = 13
            Caption = '3-'#1583#1585' '#1585#1583#1610#1601' '#1583#1608#1605' '#1587#1578#1608#1606' F33  '#1605#1602#1583#1575#1585'  '#1610#1705' '#1602#1585#1575#1585' '#1583#1607#1610#1583' '
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 221
            Top = 57
            Width = 217
            Height = 13
            Caption = '4- '#1578#1585#1578#1610#1576' '#1587#1578#1608#1606' '#1607#1575#1610' F1 '#1578#1575' F8 '#1576#1607' '#1589#1608#1585#1578' '#1586#1610#1585' '#1576#1575#1588#1583' '
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 185
            Top = 72
            Width = 242
            Height = 13
            Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' - '#1578#1575#1585#1610#1582' '#1587#1606#1583' - '#1605#1608#1590#1608#1593' '#1587#1606#1583' - '#1582#1604#1575#1589#1607' '#1587#1606#1583' '
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 110
            Top = 88
            Width = 315
            Height = 13
            Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610' - '#1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610' 1- '#1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610' 2 - '#1587#1575#1604' '#1580#1575#1585#1610
            Enabled = False
            Font.Charset = ARABIC_CHARSET
            Font.Color = clFuchsia
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblProc: TLabel
            Left = 480
            Top = 48
            Width = 161
            Height = 41
            Alignment = taCenter
            AutoSize = False
            Layout = tlCenter
          end
          object SpeedButton1: TAdvGlowButton
            Left = 2
            Top = 119
            Width = 869
            Height = 4
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 8
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
          object Button1: TAdvGlowButton
            Left = 6
            Top = 134
            Width = 857
            Height = 26
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1578#1582#1575#1576' '#1601#1575#1610#1604' '#1608#1585#1608#1583#1610' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606
            ImageIndex = 138
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
            Enabled = False
          end
          object StringGrid1: TStringGrid
            Left = 11
            Top = 216
            Width = 849
            Height = 153
            Anchors = [akLeft, akTop, akRight, akBottom]
            ColCount = 3
            DefaultColWidth = 10
            DefaultRowHeight = 20
            Enabled = False
            RowCount = 2
            TabOrder = 1
            Visible = False
            ColWidths = (
              10
              88
              447)
          end
          object RadioButton1: TRadioButton
            Left = 746
            Top = 173
            Width = 113
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1585#1608#1583' '#1575#1591#1604#1575#1593#1575#1578
            Checked = True
            Enabled = False
            TabOrder = 2
            TabStop = True
            OnClick = RadioButton1Click
          end
          object RadioButton2: TRadioButton
            Left = 626
            Top = 173
            Width = 113
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578
            Enabled = False
            TabOrder = 3
            OnClick = RadioButton2Click
          end
          object CheckBox1: TCheckBox
            Left = 626
            Top = 193
            Width = 233
            Height = 17
            Anchors = [akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1583#1585' '#1589#1608#1585#1578' '#1608#1580#1608#1583
            Checked = True
            Enabled = False
            State = cbChecked
            TabOrder = 4
          end
          object RadioButton3: TRadioButton
            Left = 752
            Top = 8
            Width = 113
            Height = 17
            Caption = #1575#1606#1578#1602#1575#1604' '#1585#1608#1705#1588' '#1587#1606#1583
            TabOrder = 5
            OnClick = RadioButton3Click
          end
          object RadioButton4: TRadioButton
            Left = 640
            Top = 8
            Width = 113
            Height = 17
            Caption = #1601#1575#1610#1604' '#1608#1585#1608#1583#1610' '#1575#1591#1604#1575#1593#1575#1578
            TabOrder = 6
            OnClick = RadioButton4Click
          end
          object Button3: TAdvGlowButton
            Left = 672
            Top = 37
            Width = 192
            Height = 70
            Cursor = crHandPoint
            Caption = #1575#1606#1578#1582#1575#1576' '#1575#1705#1587#1604' '#1585#1608#1705#1588' '#1587#1606#1583
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
              F4000000097048597300000B1300000B1301009A9C180000014049444154789C
              EDD4BB4A03411406E0BF142F9C9748A3163E42B0303B274830621F141FC6621B
              3B2D22A9D497B11014B1B25142C839D14249E78621B312830BD9CBC488FBC3C0
              32C3CE7CB36767803253A1661865695FEFEF8527F85540338C7221A808401E04
              1505C88AA08489336F202D828A06A445900F401A04F902CC8AA09C80DCA14506
              08F85CC191C23CF6505D8DFBBBD85951F0BD1BBB9875BED480275497147C6317
              1298EBB85FC19D711FDFBD6077D91BC0A6875A45C06FE3DDF2B1C01CB8E77781
              D9C0540A07D8F4113404FCA9E0E12BEADB0AF32C302DFC102F001B059FBA9D3F
              08EAEB48884F40C7016CEDAFE60A10F0E144DD07EEA73C9A0B40116C2ACC875B
              B42508F61D6638406DCB2BA0FBEDBC737BE28B9CC5F7431F8D356F004D38EFF6
              7E10F0AD1BBBF406C89212407FBE0454702B0158F812FCBB8C00755CE7A1C4D2
              723C0000000049454E44AE426082}
            TabOrder = 7
            OnClick = Button3Click
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
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 216
    Top = 248
  end
  inherited ActionList: TActionList
    Left = 79
    Top = 352
  end
  inherited xpWindow1: TxpWindow
    Left = 32
    Top = 344
  end
  object OpenDialog1: TOpenDialog
    Filter = #1601#1575#1610#1604' '#1575#1705#1587#1604'|*.xls;*.xlsx'
    Left = 148
    Top = 304
  end
  object ExcelApplication1: TExcelApplication
    AutoConnect = False
    ConnectKind = ckRunningOrNew
    AutoQuit = False
    Left = 156
    Top = 248
  end
  object sp_Import_Document: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'sp_Import_Document;1'
    Parameters = <
      item
        Name = '@canInsert'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@canEdit'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end
      item
        Name = '@year'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@secID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 0
      end
      item
        Name = '@docNo'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = '0'
      end
      item
        Name = '@docDate'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '0'
      end
      item
        Name = '@docSubject'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 100
        Value = '0'
      end
      item
        Name = '@docSummery'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2000
        Value = '0'
      end
      item
        Name = '@classification'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 50
        Value = '0'
      end
      item
        Name = '@customField1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@customField2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@customField3'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@UserID'
        DataType = ftInteger
        Value = 0
      end
      item
        Name = '@FormField1'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField2'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField3'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField4'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField5'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField6'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField7'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField8'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField9'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField10'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField11'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField12'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField13'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField14'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField15'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField16'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField17'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField18'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField19'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField20'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField21'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField22'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField23'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField24'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField25'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField26'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField27'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField28'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField29'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField30'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField31'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField32'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField33'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end
      item
        Name = '@FormField34'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = '0'
      end>
    Left = 84
    Top = 248
    object sp_Import_DocumentCOLUMN1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object DForms: TDataSource
    DataSet = sp_GetForms
    Left = 91
    Top = 299
  end
  object sp_GetForms: TADOStoredProc
    Connection = Dm.YeganehConnection
    AfterScroll = sp_GetFormsAfterScroll
    ProcedureName = 'get_Forms;1'
    Parameters = <>
    Left = 32
    Top = 295
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
    Left = 32
    Top = 247
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
      end
      item
        Name = '@FormField21'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField22'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField23'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField24'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField25'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField26'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField27'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField28'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField29'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField30'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField31'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField32'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField33'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end
      item
        Name = '@FormField34'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 255
        Value = Null
      end>
    Left = 140
    Top = 360
    object IntegerField1: TIntegerField
      FieldName = 'COLUMN1'
      ReadOnly = True
    end
  end
  object ImportExcel: TADOStoredProc
    Connection = Dm.YeganehConnection
    CommandTimeout = 0
    ProcedureName = 'PRC_Impourt_Execl;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@SecretariatsID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@Path'
        Attributes = [paNullable]
        DataType = ftString
        Size = 500
        Value = ''
      end>
    Left = 316
    Top = 320
  end
end
