object Fqr5Student: TFqr5Student
  Tag = 247
  Left = 105
  Top = 87
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1604#1610#1587#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1583#1585#1587
  ClientHeight = 230
  ClientWidth = 543
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
    Left = 187
    Top = 263
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = Tblt52
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
      200.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = Native
    Zoom = 100
    object QRSubDetail1: TQRSubDetail
      Tag = 2
      Left = 38
      Top = 194
      Width = 718
      Height = 22
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        58.208333333333330000
        1899.708333333333000000)
      Master = QuickRep1
      DataSet = SUS
      PrintBefore = False
      PrintIfEmpty = False
      object QRDBText6: TQRDBText
        Tag = 3
        Left = 452
        Top = 0
        Width = 85
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1195.916666666667000000
          0.000000000000000000
          224.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'stno1'
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
      object QRDBText8: TQRDBText
        Tag = 4
        Left = 541
        Top = 0
        Width = 145
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1431.395833333333000000
          0.000000000000000000
          383.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'name1'
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
      object QRDBText9: TQRDBText
        Tag = 4
        Left = 693
        Top = 0
        Width = 22
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          1833.562500000000000000
          0.000000000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'id1'
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
      object QRDBText11: TQRDBText
        Tag = 3
        Left = 52
        Top = 0
        Width = 85
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          137.583333333333300000
          0.000000000000000000
          224.895833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'stno2'
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
      object QRDBText12: TQRDBText
        Tag = 4
        Left = 141
        Top = 0
        Width = 145
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          373.062500000000000000
          0.000000000000000000
          383.645833333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'name2'
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
      object QRDBText13: TQRDBText
        Tag = 4
        Left = 293
        Top = 0
        Width = 22
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333340000
          775.229166666666800000
          0.000000000000000000
          58.208333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = SUS
        DataField = 'id2'
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
    end
    object DetailBand2: TQRBand
      Tag = 6
      Left = 38
      Top = 194
      Width = 718
      Height = 0
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        0.000000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Tag = 7
        Left = 543
        Top = 5
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1436.687500000000000000
          13.229166666666700000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
        DataField = 'LessonCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Tag = 8
        Left = 446
        Top = 5
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1180.041666666670000000
          13.229166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
        DataField = 'LessonGroup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        OnPrint = QRDBText2Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup1: TQRGroup
      Tag = 9
      Left = 38
      Top = 194
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
    object DetailBand1: TQRBand
      Tag = 10
      Left = 38
      Top = 38
      Width = 718
      Height = 156
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AfterPrint = DetailBand1AfterPrint
      AlignToBottom = False
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
        412.750000000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Tag = 11
        Left = 638
        Top = 61
        Width = 74
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1688.041666666667000000
          161.395833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
        Tag = 12
        Left = 639
        Top = 91
        Width = 73
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          1690.687500000000000000
          240.770833333333300000
          193.145833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'#1606#1600#1600#1600#1575#1605' '#1583#1585#1587
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
        Tag = 13
        Left = 347
        Top = 61
        Width = 70
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          918.104166666666800000
          161.395833333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
        Tag = 14
        Left = 345
        Top = 91
        Width = 70
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          912.812500000000100000
          240.770833333333300000
          185.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
        Tag = 15
        Left = 166
        Top = 91
        Width = 81
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          439.208333333333400000
          240.770833333333300000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'#1576#1585#1606#1575#1605#1607' '#1607#1601#1578#1711#1610
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
        Tag = 16
        Left = 168
        Top = 61
        Width = 74
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          444.500000000000000000
          161.395833333333300000
          195.791666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
      object QRShape1: TQRShape
        Tag = 17
        Left = 0
        Top = 128
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          338.666666666667000000
          1894.416666666670000000)
        Shape = qrsHorLine
      end
      object QRLabel12: TQRLabel
        Tag = 18
        Left = 292
        Top = 133
        Width = 22
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          772.583333333333000000
          351.895833333333000000
          58.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Compset'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel13: TQRLabel
        Tag = 19
        Left = 178
        Top = 130
        Width = 80
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          470.958333333333000000
          343.958333333333000000
          211.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
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
        Tag = 20
        Left = 290
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          767.291666666667000000
          341.312500000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape3: TQRShape
        Tag = 21
        Left = 138
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          365.125000000000000000
          341.312500000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Tag = 22
        Left = -41
        Top = 109
        Width = 1
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.791666666666700000
          -108.479166666667000000
          288.395833333333000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel17: TQRLabel
        Tag = 23
        Left = 61
        Top = 131
        Width = 71
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          161.395833333333000000
          346.604166666667000000
          187.854166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607'  '#1583#1575#1606#1588#1580#1608#1610#1610
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
      object QRLabel21: TQRLabel
        Tag = 24
        Left = 333
        Top = 24
        Width = 89
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          881.062500000000000000
          63.500000000000000000
          235.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
        Tag = 25
        Left = 252
        Top = 23
        Width = 77
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          76.729166666666700000
          666.750000000000000000
          60.854166666666700000
          203.729166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
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
        Tag = 26
        Left = 587
        Top = 31
        Width = 106
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1553.104166666667000000
          82.020833333333340000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
        Tag = 27
        Left = 96
        Top = 23
        Width = 33
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          254.000000000000000000
          60.854166666666680000
          87.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ': '#1578#1575#1585#1610#1582
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
        Tag = 28
        Left = 642
        Top = 6
        Width = 59
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666680000
          1698.625000000000000000
          15.875000000000000000
          156.104166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
        Tag = 29
        Left = 0
        Top = 53
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
          140.229166666667000000
          1897.062500000000000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object Rdate: TQRLabel
        Tag = 30
        Left = 27
        Top = 28
        Width = 66
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          71.437500000000000000
          74.083333333333300000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '78/7/4'
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
        Tag = 31
        Left = 511
        Top = 66
        Width = 122
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1352.020833333330000000
          174.625000000000000000
          322.791666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
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
        Tag = 32
        Left = 416
        Top = 94
        Width = 217
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1100.666666666670000000
          248.708333333333000000
          574.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
        DataField = 'Lesson_title'
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
        Tag = 33
        Left = 248
        Top = 62
        Width = 94
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          656.166666666666800000
          164.041666666666700000
          248.708333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
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
        Tag = 34
        Left = 291
        Top = 93
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
          246.062500000000000000
          137.583333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Tblt52
        DataField = 'Unit_title'
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
      object DonList: TQRLabel
        Tag = 35
        Left = 5
        Top = 64
        Width = 160
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333300000
          13.229166666666700000
          169.333333333333000000
          423.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'DonList'
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
      object LessonPrg: TQRLabel
        Tag = 36
        Left = 4
        Top = 96
        Width = 161
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          10.583333333333300000
          254.000000000000000000
          425.979166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel24: TQRLabel
        Tag = 37
        Left = 96
        Top = 1
        Width = 36
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333340000
          254.000000000000000000
          2.645833333333333000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
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
        Tag = 38
        Left = 27
        Top = 1
        Width = 66
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          71.437500000000000000
          2.645833333333330000
          174.625000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
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
        Tag = 39
        Left = 0
        Top = 52
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
          137.583333333333000000
          1897.062500000000000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Tag = 40
        Left = 282
        Top = 1
        Width = 143
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          746.125000000000000000
          2.645833333333333000
          378.354166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1604#1610#1587#1578' '#1583#1575#1606#1588#1600#1580#1608#1610#1600#1600#1575#1606' '#1583#1585#1587
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
      object QRShape73: TQRShape
        Tag = 41
        Left = 0
        Top = 127
        Width = 716
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.291666666666670000
          0.000000000000000000
          336.020833333333000000
          1894.416666666670000000)
        Shape = qrsHorLine
      end
      object QRShape5: TQRShape
        Tag = 42
        Left = 315
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          833.437500000000000000
          341.312500000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel3: TQRLabel
        Tag = 43
        Left = 692
        Top = 133
        Width = 22
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333300000
          1830.916666666670000000
          351.895833333333000000
          58.208333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Compset'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel8: TQRLabel
        Tag = 44
        Left = 578
        Top = 131
        Width = 80
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1529.291666666670000000
          346.604166666667000000
          211.666666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
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
      object QRShape6: TQRShape
        Tag = 45
        Left = 690
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1825.625000000000000000
          341.312500000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Tag = 46
        Left = 538
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          1423.458333333330000000
          341.312500000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Tag = 47
        Left = 461
        Top = 131
        Width = 71
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333300000
          1219.729166666670000000
          346.604166666667000000
          187.854166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607'  '#1583#1575#1606#1588#1580#1608#1610#1610
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
      object QRShape8: TQRShape
        Tag = 48
        Left = 442
        Top = 129
        Width = 1
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1169.458333333333000000
          341.312500000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
    object PageFooterBand1: TQRBand
      Tag = 49
      Left = 38
      Top = 216
      Width = 718
      Height = 33
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        87.312500000000000000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel19: TQRLabel
        Tag = 50
        Left = 1000
        Top = -9
        Width = 41
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          2645.833333333330000000
          -23.812500000000000000
          108.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'#1603#1583' '#1603#1575#1585#1576#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QrUser: TQRLabel
        Tag = 51
        Left = 634
        Top = 2
        Width = 12
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1677.458333333330000000
          5.291666666666670000
          31.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Tag = 52
        Left = 1000
        Top = 10
        Width = 41
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          2645.833333333330000000
          26.458333333333300000
          108.479166666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'#1603#1583' '#1603#1575#1585#1576#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Tag = 53
        Left = 984
        Top = 10
        Width = 12
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          2603.500000000000000000
          26.458333333333300000
          31.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel15: TQRLabel
        Tag = 54
        Left = 648
        Top = 2
        Width = 65
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666700000
          1714.500000000000000000
          5.291666666666670000
          171.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ':'#1603#1583' '#1603#1575#1585#1576#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object Panel1: TPanel
    Tag = 55
    Left = 0
    Top = 139
    Width = 543
    Height = 34
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 1
    object da: TLabel
      Tag = 56
      Left = 91
      Top = 12
      Width = 21
      Height = 13
      Caption = #1578#1575#1585#1610#1582
    end
    object DateEdit: TShamsiDateEdit
      Tag = 59
      Left = 10
      Top = 8
      Width = 73
      Height = 21
      TabStop = False
      MaxLength = 10
      ReadOnly = True
      TabOrder = 0
      Text = '1/1/1'#0
    end
  end
  object Panel2: TPanel
    Tag = 62
    Left = 0
    Top = 173
    Width = 543
    Height = 57
    Align = alBottom
    ParentColor = True
    TabOrder = 2
    object BitBtn4: TxpBitBtn
      Tag = 63
      Left = 130
      Top = 11
      Width = 92
      Height = 38
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1585#1608#1580
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
      OnClick = BitBtn3Click
    end
    object BitBtn5: TxpBitBtn
      Tag = 64
      Left = 229
      Top = 11
      Width = 92
      Height = 38
      startColor = 16645629
      EndColor = 14666957
      Caption = #1578#1585#1578#1610#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      TabOrder = 1
      TabStop = True
      Cancel = True
      ModalResult = 2
    end
    object BitBtn6: TxpBitBtn
      Tag = 65
      Left = 328
      Top = 11
      Width = 97
      Height = 38
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
      TabOrder = 2
      TabStop = True
      Cancel = True
      ModalResult = 2
      OnClick = BitBtn1Click
    end
  end
  object SUS: TADOStoredProc
    Tag = 67
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    DataSource = DSlt52
    ProcedureName = 'Student_of_Lesson_2Column;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@termcode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@lessoncode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 12
        Value = Null
      end
      item
        Name = '@lessongroup'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 408
    Top = 106
  end
  object Tblt52: TADOQuery
    Tag = 75
    AfterScroll = Tblt52AfterScroll
    Parameters = <>
    SQL.Strings = (
      'select * from lt52 '
      'where termcode='#39'822'#39)
    Left = 337
    Top = 94
    object Tblt52TermCode: TStringField
      Tag = 76
      FieldName = 'TermCode'
      Size = 3
    end
    object Tblt52LessonGroup: TFloatField
      Tag = 77
      FieldName = 'LessonGroup'
    end
    object Tblt52ExamDate: TStringField
      Tag = 78
      FieldName = 'ExamDate'
      Size = 10
    end
    object Tblt52ExamTime: TStringField
      Tag = 79
      FieldName = 'ExamTime'
      Size = 10
    end
    object Tblt52Lesson_title: TStringField
      Tag = 80
      FieldKind = fkCalculated
      FieldName = 'Lesson_title'
      LookupKeyFields = 'Code'
      LookupResultField = 'Name'
      KeyFields = 'LessonCode'
      Size = 40
      Calculated = True
    end
    object Tblt52Unit_title: TIntegerField
      Tag = 81
      FieldKind = fkCalculated
      FieldName = 'Unit_title'
      LookupKeyFields = 'Code'
      LookupResultField = 'Unit'
      KeyFields = 'LessonCode'
      Calculated = True
    end
    object Tblt52LessonCode: TStringField
      Tag = 82
      FieldName = 'LessonCode'
      Size = 12
    end
  end
  object DSlt52: TDataSource
    Tag = 83
    DataSet = Tblt52
    Left = 425
    Top = 54
  end
  object MainMenu1: TMainMenu
    Tag = 84
    Left = 278
    Top = 228
    object N1: TMenuItem
      Tag = 85
      Caption = #1601#1585#1605
      Visible = False
      object N2: TMenuItem
        Tag = 86
        Caption = #1582#1585#1608#1580
        ShortCut = 27
        OnClick = BitBtn3Click
      end
    end
    object N3: TMenuItem
      Tag = 87
      Caption = #1711#1586#1575#1585#1588
      Visible = False
      object N4: TMenuItem
        Tag = 88
        Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588
        ShortCut = 116
        OnClick = BitBtn1Click
      end
      object N5: TMenuItem
        Tag = 89
        Caption = #1670#1575#1662
        ShortCut = 120
      end
    end
  end
end
