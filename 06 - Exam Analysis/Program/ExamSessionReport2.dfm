object FqrExam: TFqrExam
  Tag = 295
  Left = 195
  Top = 163
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1589#1608#1585#1578#1580#1604#1587#1607' '#1575#1605#1578#1581#1575#1606#1575#1578' '#1583#1585#1608#1587' '#1606#1610#1605#1587#1575#1604
  ClientHeight = 256
  ClientWidth = 550
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 1
    Left = 209
    Top = 318
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = tbLt52
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnPreview = QuickRep1Preview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    ReportTitle = 'Exam List'
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Tag = 2
      Left = 38
      Top = 38
      Width = 718
      Height = 222
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Mitra'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        587.375000000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRLabel10: TQRLabel
        Tag = 3
        Left = 168
        Top = 141
        Width = 87
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          444.500000000000000000
          373.062500000000000000
          230.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1587#1575#1593#1578' '#1575#1605#1578#1581#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel9: TQRLabel
        Tag = 4
        Left = 133
        Top = 184
        Width = 96
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          351.895833333333400000
          486.833333333333400000
          254.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575' '#1583#1575#1606#1588#1580#1608
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 11
      end
      object QRLabel1: TQRLabel
        Tag = 5
        Left = 638
        Top = 99
        Width = 76
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          1688.041666666670000000
          261.937500000000000000
          201.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1588#1605#1575#1585#1607' '#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel4: TQRLabel
        Tag = 6
        Left = 639
        Top = 132
        Width = 65
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          1690.687500000000000000
          349.250000000000000000
          171.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1606#1600#1575#1605' '#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel5: TQRLabel
        Tag = 7
        Left = 347
        Top = 99
        Width = 70
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          918.104166666667000000
          261.937500000000000000
          185.208333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1588#1605#1575#1585#1607' '#1711#1585#1608#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Tag = 8
        Left = 346
        Top = 132
        Width = 64
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          915.458333333333000000
          349.250000000000000000
          169.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1593#1583#1575#1583' '#1608#1575#1581#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel7: TQRLabel
        Tag = 9
        Left = 168
        Top = 114
        Width = 80
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          444.500000000000000000
          301.625000000000000000
          211.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1575#1585#1610#1582' '#1575#1605#1578#1581#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel11: TQRLabel
        Tag = 10
        Left = 168
        Top = 87
        Width = 81
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          444.500000000000000000
          230.187500000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1606#1600#1575#1605' '#1605#1600#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel12: TQRLabel
        Tag = 11
        Left = 691
        Top = 184
        Width = 23
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1828.270833333330000000
          486.833333333333000000
          60.854166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel13: TQRLabel
        Tag = 12
        Left = 544
        Top = 184
        Width = 117
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1439.333333333330000000
          486.833333333333000000
          309.562500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Tag = 13
        Left = 455
        Top = 196
        Width = 47
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1203.854166666670000000
          518.583333333333000000
          124.354166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1583#1575#1606#1588#1580#1608#1610#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape2: TQRShape
        Tag = 14
        Left = 690
        Top = 170
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333000000
          1825.625000000000000000
          449.791666666667000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape3: TQRShape
        Tag = 15
        Left = 523
        Top = 169
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          1383.770833333333000000
          447.145833333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Tag = 16
        Left = 411
        Top = 169
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1087.437500000000000000
          447.145833333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape25: TQRShape
        Tag = 17
        Left = 131
        Top = 170
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333000000
          346.604166666667000000
          449.791666666667000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel17: TQRLabel
        Tag = 18
        Left = 455
        Top = 177
        Width = 47
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1203.854166666670000000
          468.312500000000000000
          124.354166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1588#1605#1575#1585#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel20: TQRLabel
        Tag = 19
        Left = 302
        Top = 8
        Width = 114
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          799.041666666666700000
          21.166666666666670000
          301.625000000000000000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = #1589#1608#1585#1578#1580#1604#1587#1607' '#1575#1605#1578#1581#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel21: TQRLabel
        Tag = 20
        Left = 342
        Top = 50
        Width = 89
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          904.875000000000000000
          132.291666666667000000
          235.479166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1606#1610#1605#1587#1575#1604' '#1578#1581#1589#1610#1604#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText10: TQRDBText
        Tag = 21
        Left = 261
        Top = 48
        Width = 77
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          690.562500000000000000
          127.000000000000000000
          203.729166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'TermCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel22: TQRLabel
        Tag = 22
        Left = 492
        Top = 50
        Width = 219
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1301.750000000000000000
          132.291666666667000000
          579.437500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1583#1575#1585#1607' '#1603#1604' '#1575#1605#1608#1585' '#1570#1605#1608#1586#1588#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Mitra'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel23: TQRLabel
        Tag = 23
        Left = 96
        Top = 49
        Width = 49
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          254.000000000000000000
          129.645833333333000000
          129.645833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel25: TQRLabel
        Tag = 24
        Left = 420
        Top = 22
        Width = 292
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1111.250000000000000000
          58.208333333333300000
          772.583333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1583#1575#1606#1588#1711#1575#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Mitra'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape72: TQRShape
        Tag = 25
        Left = 0
        Top = 85
        Width = 717
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          224.895833333333000000
          1897.062500000000000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape73: TQRShape
        Tag = 26
        Left = 0
        Top = 168
        Width = 716
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          444.500000000000000000
          1894.416666666670000000)
        Shape = qrsHorLine
      end
      object Rdate: TQRLabel
        Tag = 27
        Left = 16
        Top = 51
        Width = 77
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          42.333333333333300000
          134.937500000000000000
          203.729166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Tag = 28
        Left = 510
        Top = 103
        Width = 124
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1349.375000000000000000
          272.520833333333000000
          328.083333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'LessonCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText4: TQRDBText
        Tag = 29
        Left = 406
        Top = 135
        Width = 231
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1074.208333333330000000
          357.187500000000000000
          611.187500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'LessonName'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText5: TQRDBText
        Tag = 30
        Left = 264
        Top = 99
        Width = 78
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          698.500000000000000000
          261.937500000000000000
          206.375000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'LessonGroup'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText7: TQRDBText
        Tag = 31
        Left = 291
        Top = 133
        Width = 52
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          769.937500000000000000
          351.895833333333000000
          137.583333333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'Unit_Title'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel24: TQRLabel
        Tag = 32
        Left = 96
        Top = 17
        Width = 49
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          254.000000000000000000
          44.979166666666700000
          129.645833333333000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ': '#1589#1601#1581#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object PageNo: TQRLabel
        Tag = 33
        Left = 16
        Top = 19
        Width = 77
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          42.333333333333300000
          50.270833333333300000
          203.729166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape74: TQRShape
        Tag = 34
        Left = 0
        Top = 84
        Width = 717
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          222.250000000000000000
          1897.062500000000000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel8: TQRLabel
        Tag = 35
        Left = 16
        Top = 182
        Width = 88
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333300000
          42.333333333333300000
          481.541666666667000000
          232.833333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1578#1589#1608#1610#1585' '#1583#1575#1606#1588#1580#1608
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape1: TQRShape
        Tag = 36
        Left = 0
        Top = 169
        Width = 716
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333330000
          0.000000000000000000
          447.145833333333000000
          1894.416666666670000000)
        Shape = qrsHorLine
      end
      object QRDBText14: TQRDBText
        Tag = 37
        Left = 24
        Top = 145
        Width = 142
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          63.500000000000000000
          383.645833333333000000
          375.708333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'ExamTime'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        OnPrint = LessonPrgPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Tag = 38
        Left = 231
        Top = 170
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          611.187500000000000000
          449.791666666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel18: TQRLabel
        Tag = 39
        Left = 232
        Top = 189
        Width = 67
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          613.833333333333400000
          500.062500000000000000
          177.270833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1581#1575#1590#1585' /  '#1594#1575#1610#1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object LessonDon: TQRLabel
        Tag = 40
        Left = 3
        Top = 86
        Width = 164
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.312500000000000000
          7.937500000000000000
          227.541666666667000000
          433.916666666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape5: TQRShape
        Tag = 41
        Left = 300
        Top = 169
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          793.750000000000000000
          447.145833333333400000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel15: TQRLabel
        Tag = 42
        Left = 328
        Top = 184
        Width = 77
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          867.833333333333500000
          486.833333333333400000
          203.729166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1585#1588#1578#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRDBText2: TQRDBText
        Tag = 43
        Left = 8
        Top = 121
        Width = 159
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          21.166666666666700000
          320.145833333333000000
          420.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = tbLt52
        DataField = 'ExamDate'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        OnPrint = LessonPrgPrint
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRSubDetail1: TQRSubDetail
      Tag = 44
      Left = 38
      Top = 260
      Width = 718
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDot
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        177.270833333333300000
        1899.708333333333000000)
      Master = QuickRep1
      DataSet = SUS
      PrintBefore = False
      PrintIfEmpty = False
      object QRDBText1: TQRDBText
        Tag = 45
        Left = 304
        Top = 14
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          804.333333333333200000
          37.041666666666670000
          280.458333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = SUS
        DataField = 'reshte'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText6: TQRDBText
        Tag = 46
        Left = 412
        Top = 11
        Width = 106
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1090.083333333333000000
          29.104166666666670000
          280.458333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = SUS
        DataField = 'Stno'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape37: TQRShape
        Tag = 47
        Left = 522
        Top = 0
        Width = 1
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666666700000
          1381.125000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape38: TQRShape
        Tag = 48
        Left = 690
        Top = 0
        Width = 1
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666666700000
          1825.625000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape39: TQRShape
        Tag = 49
        Left = 411
        Top = 0
        Width = 1
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666666700000
          1087.437500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Tag = 50
        Left = 524
        Top = 11
        Width = 164
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1386.416666666667000000
          29.104166666666670000
          433.916666666666800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = SUS
        DataField = 'stno_Title'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape60: TQRShape
        Tag = 51
        Left = 131
        Top = 1
        Width = 1
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333300000
          346.604166666666700000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object Radif: TQRLabel
        Tag = 52
        Left = 692
        Top = 11
        Width = 22
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1830.916666666667000000
          29.104166666666670000
          58.208333333333340000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = '  '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape7: TQRShape
        Tag = 53
        Left = 231
        Top = 1
        Width = 1
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          177.270833333333300000
          611.187500000000000000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Tag = 54
        Left = 300
        Top = 0
        Width = 1
        Height = 68
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          179.916666666666700000
          793.750000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel32: TQRLabel
        Tag = -1
        Left = 135
        Top = 1
        Width = 163
        Height = 64
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          169.333333333333300000
          357.187500000000000000
          2.645833333333333000
          431.270833333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1581#1584#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRImage2: TQRImage
        Left = 35
        Top = 6
        Width = 57
        Height = 56
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          148.166666666666700000
          92.604166666666670000
          15.875000000000000000
          150.812500000000000000)
        Stretch = True
      end
      object QRDBText9: TQRDBText
        Tag = 45
        Left = 135
        Top = 25
        Width = 162
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666670000
          357.187500000000000000
          66.145833333333340000
          428.625000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = SUS
        DataField = 'MarkStatTitle'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
    object QRGroup1: TQRGroup
      Tag = 55
      Left = 38
      Top = 260
      Width = 718
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        0.000000000000000000
        1899.708333333333000000)
      Expression = '(Tblt52.LessonCode)+(STR(Tblt52.LessonGroup))'
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object PageFooterBand1: TQRBand
      Tag = 56
      Left = 38
      Top = 327
      Width = 718
      Height = 72
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        190.500000000000000000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel16: TQRLabel
        Tag = 57
        Left = 490
        Top = 9
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1296.458333333330000000
          23.812500000000000000
          153.458333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1575#1587#1578#1575#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Tag = 58
        Left = 490
        Top = 36
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1296.458333333330000000
          95.250000000000000000
          153.458333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Tag = 59
        Left = 345
        Top = 9
        Width = 74
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          912.812500000000000000
          23.812500000000000000
          195.791666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1605#1585#1575#1602#1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Tag = 60
        Left = 354
        Top = 36
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          936.625000000000000000
          95.250000000000000000
          153.458333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Tag = 61
        Left = 198
        Top = 9
        Width = 78
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          523.875000000000000000
          23.812500000000000000
          206.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1605#1585#1575#1602#1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Tag = 62
        Left = 209
        Top = 36
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          552.979166666667000000
          95.250000000000000000
          153.458333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel30: TQRLabel
        Tag = 63
        Left = 38
        Top = 9
        Width = 105
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          100.541666666667000000
          23.812500000000000000
          277.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1605#1587#1608#1604' '#1570#1605#1608#1586#1588' '#1583#1575#1606#1588#1603#1583#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Tag = 64
        Left = 64
        Top = 36
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          169.333333333333000000
          95.250000000000000000
          153.458333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Tag = 65
        Left = 613
        Top = 9
        Width = 95
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1621.895833333330000000
          23.812500000000000000
          251.354166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1593#1583#1575#1583' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1581#1575#1590#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Tag = 66
        Left = 612
        Top = 36
        Width = 95
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1619.250000000000000000
          95.250000000000000000
          251.354166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1593#1583#1575#1583' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1594#1575#1610#1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
  end
  object Memo1: TMemo
    Tag = 67
    Left = 432
    Top = 272
    Width = 185
    Height = 89
    Lines.Strings = (
      'SELECT SUS.Stno, SUS.TermCode, '
      'SUS.LessonCode,suscode,'
      '    MAININFO.NAME AS stno_Title, '
      'SUS.LessonGroup,lt66.title as '
      'reshte  ,Std_Info_1.pic as picture'
      'FROM SUS '
      'INNER JOIN'
      '    MAININFO ON SUS.Stno = '
      'MAININFO.STNO '
      'LEFT JOIN '
      '    Std_Info_1 ON Std_Info_1.Stno '
      '= MAININFO.Stno'
      'INNER JOIN'
      '    SUSCODE ON SUS.SusCode = '
      'SUSCODE.Code'
      'INNER JOIN'
      '    lt66 ON lt66.code = '
      'maininfo.reshte'
      'WHERE (SUS.TermCode = '
      ':TermCode) AND'
      '    (SUS.LessonCode = '
      ':LessonCode) AND '
      '(SUSCODE.effect = 1) AND'
      '    (SUS.LessonGroup '
      '=:LessonGroup )')
    TabOrder = 1
    Visible = False
  end
  object Panel: TPanel
    Tag = 68
    Left = 0
    Top = 28
    Width = 550
    Height = 140
    Align = alTop
    BevelInner = bvLowered
    Caption = ' '
    ParentColor = True
    TabOrder = 2
  end
  object Panel1: TPanel
    Tag = 69
    Left = 0
    Top = 211
    Width = 550
    Height = 44
    Align = alTop
    ParentColor = True
    TabOrder = 3
    object BtnClose: TxpBitBtn
      Tag = 70
      Left = 179
      Top = 5
      Width = 104
      Height = 32
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1600#1600#1600#1600#1600#1600#1600#1600#1600#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        9E060000424D9E0600000000000036040000280000001A000000160000000100
        080000000000680200000000000000000000000100000001000000000000E3E3
        E300FFFF00009999000099999900FFFFFF00FFFFFF0000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404040404
        0404040404040404040404040404040404040404000005010101010101010101
        0101010101010101010101010101010400000501010101010101010100000101
        0101010101010101010101040000050101010101010101000400010101010101
        0101010101010104000005010101000000000004040000000000000000000001
        0101010400000501010101010100040404000303030303000101010101010104
        0000050101010101010004040400020302030300010101010101010400000501
        0101010101000404040003020302030001010101010101040000050101010101
        0100040400000203030203000101010101010104000005010101010101000404
        0000020202030200010101010101010400000501010101010100040404000202
        0202020001010101010101040000050101010101010004040400020203020300
        0101010101010104000005010101010101000404040002020202020001010101
        0101010400000501010101010100040404000202020302000101010101010104
        0000050101010101010004040400020202020200010101010101010400000501
        0101010101000404000202020202020001010101010101040000050101010101
        0100040002020202020202000101010101010104000005010101010101000002
        0202020202020200010101010101010400000501010101010100000000000000
        0000000001010101010101040000050101010101010101010101010101010101
        0101010101010104000005010101010101010101010101010101010101010101
        0101010400000505050505050505050505050505050505050505050505050504
        0000}
      Gradient = True
      TabOrder = 0
      TabStop = True
      OnClick = BtnCloseClick
    end
    object BtnPreview: TxpBitBtn
      Tag = 71
      Left = 299
      Top = 5
      Width = 104
      Height = 32
      startColor = 16645629
      EndColor = 14666957
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        FE040000424DFE04000000000000360000002800000016000000120000000100
        180000000000C8040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFFF7FFF7FFFFFFFFFFFFFFFFFFEFEFFFFF
        FFFFFFFFFFF7FFF7FFFFFFF7F7F7FFFFFFFFFFFFFFF7F7FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF090A1B00046F000084
        220C1FF7F7F7FFFFFFFFF7F7F7FFF7F7EFFFFFFFFFF7FFF7F7EFEFFFF7F7FFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBEFE700051E0002D60000
        B50002D60002D600051EFFFFFFFBEFE7FFF7F7FFFFFFF7F7F7FFFFFFEFFFEFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F7F700014A0002D600
        0084FFFFFFFFF7F700047B0002D600051EFFFFFFFFFFFF002B2E00616102736E
        FFFFFFFFF7E7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000160AB8
        000094FFFFFFF7F7F70000000A22000002D6000084FFFFFF1D779A1BA79872FF
        F95AFFFB02736EFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0808
        04777BF800046FF7F7F7FFFFE7C3CCCB0000000002D6003C9178C1FA02736E00
        0000001010FFFFFF5AFFFB007987FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFF000000777BF800046FF7F7F7FFF7F7FFF7F7FFF7F70000B51D779A5AFFFB
        02736E000000000000FFF7F7FFFFFF007987FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF000000000008777BF800046FD6DAF7CADBF60002D60000841BA7
        985AFFFB02736EFFFFFFFFF7F7FFFFFF78C1FA007987FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF0000007F847B000000777BF8777BF80002D600008400
        0808AAB8AE08080472FFF9737B7B52716CA9CECD46E4FC0C0004FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000868A8C868A8C000000000000000008
        100008868A8C7F847B0000000000005AFFFB78C1FA46E4FC02736EFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000007A7684AAB8AEC3CCCBAAB8
        AE0C0004AAB8AE0000000010108884840000000C00040000000C0004100008F7
        FFF7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000000A2200000000BE
        A0A3080804AAB8AEA6ACD1F0EBD0E3D5E10008087A7684C3CCCBAAB8AE000000
        FFF7F7F7FFF7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7FFF7000000
        868A8C090A1B000000080804000000C3CCCB0000000000000008080008080000
        08F7F7F7FFFFFFF7F7F7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000888484AAB8AE000000F7F7F7EFEFFF000808888484AAB8AE100008F7
        F7F7FFFFFFFFFFFFF7FFF7F7EFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000A6ACD1000000FFFFFFFFFFFFFFFFFF000000AAB8AE000808
        F7FFF7F7EFFFF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFF7F7F7FFFFFF0C0004FFFFFFEFEFFFFFFFFFFFFFE7FFFFFF0000
        00FFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      Gradient = True
      TabOrder = 1
      TabStop = True
      OnClick = BtnPreviewClick
    end
  end
  object Panel2: TPanel
    Tag = 72
    Left = 0
    Top = 168
    Width = 550
    Height = 43
    Align = alTop
    ParentColor = True
    TabOrder = 4
    object Label2: TLabel
      Tag = 73
      Left = 525
      Top = 7
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
    end
    object dateEdit: TShamsiDateEdit
      Tag = 74
      Left = 442
      Top = 3
      Width = 74
      Height = 21
      TabStop = False
      MaxLength = 10
      ReadOnly = True
      TabOrder = 0
      Text = '1/1/1'#0
    end
    object isactiveCheck: TCheckBox
      Tag = 75
      Left = 105
      Top = 6
      Width = 113
      Height = 17
      Caption = #1601#1602#1591' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1601#1593#1575#1604
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object RadioGroup1: TRadioGroup
      Tag = 76
      Left = 223
      Top = 1
      Width = 218
      Height = 39
      Caption = #1578#1585#1578#1610#1576' '#1576#1585' '#1575#1587#1575#1587
      Columns = 2
      ItemIndex = 1
      Items.Strings = (
        #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610)
      TabOrder = 2
    end
    object CHB_STAT: TxpCheckBox
      Left = 69
      Top = 24
      Width = 150
      Height = 17
      Caption = #1606#1605#1575#1610#1588' '#1608#1590#1593#1610#1578' '#1606#1605#1585#1607' '#1583#1575#1606#1588#1580#1608
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      TabOrder = 3
      TabStop = True
      Color = clBtnFace
      CheckColor = 40960
      Alignment = cbaLeft
    end
  end
  object Panel3: TPanel
    Tag = 78
    Left = 0
    Top = 0
    Width = 550
    Height = 28
    Align = alTop
    ParentColor = True
    TabOrder = 5
    object Label1: TLabel
      Tag = 79
      Left = 501
      Top = 7
      Width = 36
      Height = 13
      Caption = #1603#1583' '#1583#1585#1587
    end
    object Label4: TLabel
      Tag = 80
      Left = 331
      Top = 8
      Width = 26
      Height = 13
      Caption = #1605#1602#1591#1593
    end
    object codewhere: TYWhereEdit
      Tag = 81
      Left = 377
      Top = 4
      Width = 118
      Height = 21
      BiDiMode = bdLeftToRight
      MaxLength = 100
      ParentBiDiMode = False
      TabOrder = 0
      isLike = False
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'LessonCode'
      TableName = 'lt52'
      ListTable = 'lt7'
      CodeField = 'Code'
      TitleField = 'name'
    end
    object maghtawhere: TYWhereEdit
      Tag = 82
      Left = 205
      Top = 4
      Width = 118
      Height = 21
      BiDiMode = bdLeftToRight
      MaxLength = 8
      ParentBiDiMode = False
      TabOrder = 1
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'MAghta'
      TableName = 'lt7'
      ListTable = 'lt10'
      CodeField = 'Code'
      TitleField = 'title'
    end
  end
  object MainMenu1: TMainMenu
    Tag = 83
    Left = 38
    Top = 44
    object N1: TMenuItem
      Tag = 84
      Caption = #1601#1585#1605
      object N2: TMenuItem
        Tag = 85
        Caption = #1582#1585#1608#1580
        ShortCut = 27
        OnClick = BtnCloseClick
      end
    end
    object N3: TMenuItem
      Tag = 86
      Caption = #1711#1586#1575#1585#1588
      object N4: TMenuItem
        Tag = 87
        Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588
        ShortCut = 116
        OnClick = BtnPreviewClick
      end
      object N5: TMenuItem
        Tag = 88
        Caption = #1670#1575#1662
        ShortCut = 120
      end
    end
  end
  object dstbLt52: TDataSource
    Tag = 89
    AutoEdit = False
    DataSet = tbLt52
    Left = 155
    Top = 120
  end
  object tbLt52: TADODataSet
    Tag = 90
    CursorType = ctStatic
    CommandTimeout = 7200
    Parameters = <>
    Prepared = True
    Left = 192
    Top = 48
    object StringField1: TStringField
      Tag = 91
      FieldName = 'TermCode'
      Size = 3
    end
    object StringField2: TStringField
      Tag = 92
      FieldName = 'LessonCode'
      Size = 12
    end
    object FloatField1: TFloatField
      Tag = 93
      FieldName = 'LessonGroup'
    end
    object StringField3: TStringField
      Tag = 94
      FieldName = 'ExamDate'
      Size = 10
    end
    object StringField4: TStringField
      Tag = 95
      FieldName = 'ExamTime'
      Size = 10
    end
    object tbLt52LessonName: TStringField
      Tag = 96
      FieldKind = fkCalculated
      FieldName = 'LessonName'
      LookupKeyFields = 'Code'
      LookupResultField = 'Name'
      KeyFields = 'LessonCode'
      Size = 40
      Calculated = True
    end
    object FloatField2: TFloatField
      Tag = 97
      FieldKind = fkCalculated
      FieldName = 'Unit_Title'
      LookupKeyFields = 'Code'
      LookupResultField = 'Unit'
      KeyFields = 'LessonCode'
      Calculated = True
    end
  end
  object SUS: TADODataSet
    Tag = 98
    CursorType = ctStatic
    CommandText = 
      'SELECT SUS.Stno, SUS.TermCode, SUS.LessonCode,suscode,'#13#10'    MAIN' +
      'INFO.NAME AS stno_Title, SUS.LessonGroup,lt66.title as reshte'#13#10' ' +
      '   ,Std_Info_1.pic as picture'#13#10'  ,0 as MaliStat,'#39#39' as TbMaliStat' +
      'Title'#13#10',lt57.title as MarkStatTitle,MarkStat'#13#10'FROM SUS '#13#10'INNER J' +
      'OIN'#13#10'    MAININFO ON SUS.Stno = MAININFO.STNO '#13#10'LEFT JOIN '#13#10'    ' +
      'Std_Info_1 ON Std_Info_1.Stno = MAININFO.Stno'#13#10'INNER JOIN'#13#10'    S' +
      'USCODE ON SUS.SusCode = SUSCODE.Code'#13#10'INNER JOIN'#13#10'    lt66 ON lt' +
      '66.code = maininfo.reshte'#13#10'Inner join lt57  on (sus.markstat = l' +
      't57.code )'#13#10'WHERE '#13#10'(SUS.TermCode = :TermCode) AND'#13#10'    (SUS.Les' +
      'sonCode = :LessonCode) AND'#13#10' (SUSCODE.effect = 1  or SUSCODE.Les' +
      'sonShow = 1) AND'#13#10'    (SUS.LessonGroup =:LessonGroup )'#13#10'AND'#13#10'   ' +
      ' (Maininfo.isactive<=:isactive) AND'#13#10'    (Maininfo.isactive>0) '
    CommandTimeout = 7200
    DataSource = dstbLt52
    IndexFieldNames = 'TermCode;LessonCode;LessonGroup'
    MasterFields = 'TermCode;LessonCode;LessonGroup'
    Parameters = <
      item
        Name = 'TermCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'LessonCode'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'LessonGroup'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = Null
      end
      item
        Name = 'isactive'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    Prepared = True
    Left = 88
    Top = 136
    object StringField5: TStringField
      Tag = 99
      FieldName = 'TermCode'
      Size = 3
    end
    object StringField6: TStringField
      Tag = 100
      FieldName = 'LessonCode'
      Size = 12
    end
    object FloatField3: TFloatField
      Tag = 101
      FieldName = 'LessonGroup'
    end
    object StringField7: TStringField
      Tag = 102
      FieldName = 'Stno'
      Size = 10
    end
    object IntegerField1: TIntegerField
      Tag = 103
      FieldName = 'SusCode'
    end
    object SUSstno_Title: TStringField
      Tag = 104
      FieldName = 'stno_Title'
      Size = 30
    end
    object SUSreshte: TStringField
      Tag = 105
      FieldName = 'reshte'
      Size = 60
    end
    object SUSpicture: TBlobField
      FieldName = 'picture'
    end
    object SUSMaliStat: TIntegerField
      FieldName = 'MaliStat'
      ReadOnly = True
    end
    object SUSTbMaliStatTitle: TStringField
      FieldName = 'TbMaliStatTitle'
      ReadOnly = True
      Size = 0
    end
    object SUSMarkStatTitle: TStringField
      DisplayWidth = 4000
      FieldName = 'MarkStatTitle'
      Size = 4000
    end
    object SUSMarkStat: TIntegerField
      FieldName = 'MarkStat'
    end
  end
end
