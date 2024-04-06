inherited FrSummeryPayment: TFrSummeryPayment
  Left = 504
  Top = 247
  AutoScroll = False
  Caption = #1578#1585#1575#1586' '#1570#1586#1605#1575#1610#1588#1610
  ClientHeight = 530
  ClientWidth = 762
  Color = clBtnFace
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep6: TQuickRep [0]
    Left = 1364
    Top = 393
    Width = 1123
    Height = 794
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dm.Balance_Sheet
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
    OnPreview = QuickRep6Preview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poLandscape
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 165
      Width = 1047
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand7
      Size.Values = (
        95.250000000000000000
        2770.187500000000000000)
      BandType = rbDetail
      object QRShape14: TQRShape
        Left = 537
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1420.812500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Left = 808
        Top = 0
        Width = 234
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          2137.833333333333000000
          0.000000000000000000
          619.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'accounttitle'
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
      object QRShape1: TQRShape
        Left = 806
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          2132.541666666667000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape2: TQRShape
        Left = 267
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          706.437500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText5: TQRDBText
        Left = 136
        Top = 0
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          359.833333333333300000
          0.000000000000000000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c5'
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
      object QRDBText6: TQRDBText
        Left = 3
        Top = 0
        Width = 129
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          7.937500000000000000
          0.000000000000000000
          341.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c6'
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
      object QRShape4: TQRShape
        Left = 132
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          349.250000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 405
        Top = 0
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1071.562500000000000000
          0.000000000000000000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c3'
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
      object QRDBText2: TQRDBText
        Left = 269
        Top = 0
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          711.729166666666800000
          0.000000000000000000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c4'
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
      object QRDBText3: TQRDBText
        Left = 539
        Top = 0
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1426.104166666667000000
          0.000000000000000000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c2'
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
      object QRDBText4: TQRDBText
        Left = 674
        Top = 0
        Width = 130
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1783.291666666667000000
          0.000000000000000000
          343.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c1'
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
      object QRShape5: TQRShape
        Left = 402
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1063.625000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 670
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1772.708333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 1047
      Height = 127
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
        336.020833333333300000
        2770.187500000000000000)
      BandType = rbPageHeader
      object Qrtitle: TQRLabel
        Left = 1001
        Top = 21
        Width = 46
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          2648.479166666667000000
          55.562500000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRSysData1: TQRSysData
        Left = 116
        Top = 24
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          306.916666666666700000
          63.500000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 175
        Top = 24
        Width = 27
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          463.020833333333400000
          63.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1601#1581#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 500
        Top = 18
        Width = 47
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          1322.916666666667000000
          47.625000000000000000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1585#1575#1586' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRLabel2: TQRLabel
        Left = 810
        Top = 83
        Width = 234
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          2143.125000000000000000
          219.604166666666700000
          619.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
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
      object QRLabel13: TQRLabel
        Left = 701
        Top = 98
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1854.729166666667000000
          259.291666666666700000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel14: TQRLabel
        Left = 595
        Top = 98
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1574.270833333333000000
          259.291666666666700000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QColumnHeader1: TQRLabel
        Left = 540
        Top = 73
        Width = 265
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1428.750000000000000000
          193.145833333333300000
          701.145833333333200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QColumnHeader2: TQRLabel
        Left = 270
        Top = 73
        Width = 265
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          714.375000000000000000
          193.145833333333300000
          701.145833333333200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QColumnHeader3: TQRLabel
        Left = 2
        Top = 73
        Width = 264
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          5.291666666666667000
          193.145833333333300000
          698.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel3: TQRLabel
        Left = 445
        Top = 98
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1177.395833333333000000
          259.291666666666700000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel4: TQRLabel
        Left = 315
        Top = 98
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          833.437500000000000000
          259.291666666666700000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 157
        Top = 98
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          415.395833333333300000
          259.291666666666700000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel6: TQRLabel
        Left = 51
        Top = 98
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          134.937500000000000000
          259.291666666666700000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 72
        Width = 1047
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          190.500000000000000000
          2770.187500000000000000)
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 537
        Top = 72
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          1420.812500000000000000
          190.500000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 267
        Top = 73
        Width = 1
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          706.437500000000000000
          193.145833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 806
        Top = 72
        Width = 1
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          2132.541666666667000000
          190.500000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRImage1: TQRImage
        Left = 2
        Top = 1
        Width = 70
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          5.291666666666667000
          2.645833333333333000
          185.208333333333300000)
        Stretch = True
      end
    end
    object QRBand7: TQRBand
      Left = 38
      Top = 201
      Width = 1047
      Height = 41
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
        108.479166666666700000
        2770.187500000000000000)
      BandType = rbPageFooter
      object QRLabel24: TQRLabel
        Left = 558
        Top = 4
        Width = 142
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1476.375000000000000000
          10.583333333333330000
          375.708333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1610' '#1605#1583#1610#1585' '#1593#1575#1605#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel25: TQRLabel
        Left = 279
        Top = 4
        Width = 96
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          738.187500000000000000
          10.583333333333330000
          254.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1575#1605#1590#1575#1610' '#1605#1587#1574#1608#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object QuickRep4: TQuickRep [1]
    Left = 1376
    Top = 330
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dm.Balance_Sheet
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
    OnPreview = QuickRep4Preview
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
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand2: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 126
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
        333.375000000000000000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QrTitle2: TQRLabel
        Left = 672
        Top = 21
        Width = 46
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1778.000000000000000000
          55.562500000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRSysData2: TQRSysData
        Left = 124
        Top = 24
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          328.083333333333400000
          63.500000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = True
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 412
        Top = 72
        Width = 4
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          1090.083333333333000000
          190.500000000000000000
          10.583333333333330000)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 0
        Top = 72
        Width = 1047
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          190.500000000000000000
          2770.187500000000000000)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 205
        Top = 73
        Width = 1
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          542.395833333333300000
          193.145833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 335
        Top = 17
        Width = 47
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          886.354166666666700000
          44.979166666666670000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1585#1575#1586' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 183
        Top = 24
        Width = 27
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          484.187500000000000000
          63.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1601#1581#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel19: TQRLabel
        Left = 27
        Top = 99
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          71.437500000000000000
          261.937500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel18: TQRLabel
        Left = 133
        Top = 99
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          351.895833333333300000
          261.937500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel17: TQRLabel
        Left = 219
        Top = 99
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          579.437500000000000000
          261.937500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel16: TQRLabel
        Left = 349
        Top = 99
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          923.395833333333200000
          261.937500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel10: TQRLabel
        Left = 416
        Top = 75
        Width = 297
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          1100.666666666667000000
          198.437500000000000000
          785.812500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
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
      object QColumnHeader32: TQRLabel
        Left = 2
        Top = 73
        Width = 202
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          5.291666666666667000
          193.145833333333300000
          534.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
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
      object QColumnHeader22: TQRLabel
        Left = 206
        Top = 73
        Width = 206
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          545.041666666666700000
          193.145833333333300000
          545.041666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
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
      object Cashlogo2: TQRImage
        Left = 2
        Top = 1
        Width = 70
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          5.291666666666667000
          2.645833333333333000
          185.208333333333300000)
        Stretch = True
      end
    end
    object QRBand1: TQRBand
      Left = 38
      Top = 164
      Width = 718
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand6
      Size.Values = (
        95.250000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape15: TQRShape
        Left = 309
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          817.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 100
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          264.583333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 205
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          542.395833333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 414
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1095.375000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText9: TQRDBText
        Left = 104
        Top = 0
        Width = 100
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          275.166666666666700000
          0.000000000000000000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c5'
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
      object QRDBText7: TQRDBText
        Left = 416
        Top = 0
        Width = 290
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          1100.666666666667000000
          0.000000000000000000
          767.291666666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'accounttitle'
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
      object QRDBText12: TQRDBText
        Left = 207
        Top = 0
        Width = 100
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          547.687500000000000000
          0.000000000000000000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c4'
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
      object QRDBText11: TQRDBText
        Left = 312
        Top = 0
        Width = 100
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          825.500000000000000000
          0.000000000000000000
          264.583333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c3'
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
      object QRDBText10: TQRDBText
        Left = 3
        Top = 0
        Width = 99
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          7.937500000000000000
          0.000000000000000000
          261.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c6'
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
    object QRBand6: TQRBand
      Left = 38
      Top = 200
      Width = 718
      Height = 41
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
        108.479166666666700000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel15: TQRLabel
        Left = 558
        Top = 4
        Width = 142
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1476.375000000000000000
          10.583333333333330000
          375.708333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1610' '#1605#1583#1610#1585' '#1593#1575#1605#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel20: TQRLabel
        Left = 279
        Top = 4
        Width = 96
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          738.187500000000000000
          10.583333333333330000
          254.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1575#1605#1590#1575#1610' '#1605#1587#1574#1608#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object QuickRep2: TQuickRep [2]
    Left = 1488
    Top = 281
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dm.Balance_Sheet
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
    OnPreview = QuickRep2Preview
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
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand4: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 127
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
        336.020833333333300000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QrTitle3: TQRLabel
        Left = 672
        Top = 21
        Width = 46
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1778.000000000000000000
          55.562500000000000000
          121.708333333333300000)
        Alignment = taRightJustify
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRSysData3: TQRSysData
        Left = 84
        Top = 24
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          222.250000000000000000
          63.500000000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = clWhite
        Data = qrsPageNumber
        Transparent = True
        FontSize = 10
      end
      object QRShape23: TQRShape
        Left = 308
        Top = 72
        Width = 4
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          814.916666666666800000
          190.500000000000000000
          10.583333333333330000)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 0
        Top = 72
        Width = 1047
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          190.500000000000000000
          2770.187500000000000000)
        Shape = qrsHorLine
      end
      object QRLabel28: TQRLabel
        Left = 59
        Top = 99
        Width = 55
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          156.104166666666700000
          261.937500000000000000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel27: TQRLabel
        Left = 189
        Top = 99
        Width = 45
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          500.062500000000000000
          261.937500000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel23: TQRLabel
        Left = 310
        Top = 75
        Width = 400
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          100.541666666666700000
          820.208333333333200000
          198.437500000000000000
          1058.333333333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1593#1606#1608#1575#1606' '#1581#1587#1575#1576
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
      object QRLabel22: TQRLabel
        Left = 335
        Top = 17
        Width = 47
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          886.354166666666700000
          44.979166666666670000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1585#1575#1586' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Titr'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 14
      end
      object QRLabel21: TQRLabel
        Left = 143
        Top = 24
        Width = 27
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          378.354166666666700000
          63.500000000000000000
          71.437500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1601#1581#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QColumnHeader33: TQRLabel
        Left = 2
        Top = 73
        Width = 307
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          5.291666666666667000
          193.145833333333300000
          812.270833333333200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578
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
      object CashLogo: TQRImage
        Left = 2
        Top = 1
        Width = 70
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          5.291666666666667000
          2.645833333333333000
          185.208333333333300000)
        Stretch = True
      end
    end
    object QRBand3: TQRBand
      Left = 38
      Top = 165
      Width = 718
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand5
      Size.Values = (
        95.250000000000000000
        1899.708333333333000000)
      BandType = rbDetail
      object QRShape19: TQRShape
        Left = 155
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          410.104166666666700000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 310
        Top = 0
        Width = 1
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          820.208333333333200000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText16: TQRDBText
        Left = 159
        Top = 0
        Width = 151
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          420.687500000000000000
          0.000000000000000000
          399.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c5'
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
      object QRDBText14: TQRDBText
        Left = 2
        Top = 0
        Width = 150
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          5.291666666666667000
          0.000000000000000000
          396.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'c6'
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
      object QRDBText13: TQRDBText
        Left = 310
        Top = 0
        Width = 400
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          92.604166666666680000
          820.208333333333200000
          0.000000000000000000
          1058.333333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Balance_Sheet
        DataField = 'accounttitle'
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
    object QRBand5: TQRBand
      Left = 38
      Top = 201
      Width = 718
      Height = 41
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
        108.479166666666700000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel7: TQRLabel
        Left = 558
        Top = 4
        Width = 142
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1476.375000000000000000
          10.583333333333330000
          375.708333333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1605#1607#1585' '#1608' '#1575#1605#1590#1575#1610' '#1605#1583#1610#1585' '#1593#1575#1605#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
      object QRLabel11: TQRLabel
        Left = 279
        Top = 4
        Width = 96
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          738.187500000000000000
          10.583333333333330000
          254.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1575#1605#1590#1575#1610' '#1605#1587#1574#1608#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 12
      end
    end
  end
  object xpPageControl1: TPageControl [3]
    Left = 0
    Top = 37
    Width = 762
    Height = 452
    ActivePage = xpTabSheet1
    Align = alClient
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    TabHeight = 30
    TabOrder = 1
    object xpTabSheet1: TTabSheet
      Caption = '                  '#1578#1585#1575#1586' '#1606#1575#1605#1607'                   '
      object YDBGrid: TYDBGrid
        Left = 0
        Top = 37
        Width = 754
        Height = 375
        Cursor = crHandPoint
        Align = alClient
        Color = 14540253
        DataSource = dm.DBalance_Sheet
        Options = [dgColumnResize, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        FooterFields = 'Count'
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'accounttitle'
            Title.Caption = #1593#1606#1608#1575#1606
            Width = 126
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c1'
            Title.Caption = #1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c2'
            Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c3'
            Title.Caption = #1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c4'
            Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c5'
            Title.Caption = #1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c6'
            Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 37
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 696
          Top = 12
          Width = 48
          Height = 13
          Caption = #1581#1587#1575#1576'  '#1607#1575
        end
        object Label5: TLabel
          Left = 585
          Top = 21
          Width = 30
          Height = 13
          Caption = #1576#1583#1607#1705#1575#1585
        end
        object Label6: TLabel
          Left = 492
          Top = 21
          Width = 38
          Height = 13
          Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        end
        object Label7: TLabel
          Left = 369
          Top = 21
          Width = 30
          Height = 13
          Caption = #1576#1583#1607#1705#1575#1585
        end
        object Label8: TLabel
          Left = 278
          Top = 21
          Width = 38
          Height = 13
          Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        end
        object Label9: TLabel
          Left = 185
          Top = 21
          Width = 30
          Height = 13
          Caption = #1576#1583#1607#1705#1575#1585
        end
        object Label10: TLabel
          Left = 94
          Top = 21
          Width = 38
          Height = 13
          Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        end
        object Colheader1: TLabel
          Left = 488
          Top = 3
          Width = 160
          Height = 13
          Caption = '----------------------------------------'
        end
        object ColHeader2: TLabel
          Left = 277
          Top = 3
          Width = 160
          Height = 13
          Caption = '----------------------------------------'
        end
        object ColHeader3: TLabel
          Left = 85
          Top = 3
          Width = 160
          Height = 13
          Caption = '----------------------------------------'
        end
        object Shape1: TShape
          Left = 439
          Top = -8
          Width = 1
          Height = 65
        end
        object Shape2: TShape
          Left = 247
          Top = -31
          Width = 1
          Height = 65
        end
        object Shape3: TShape
          Left = 650
          Top = -31
          Width = 1
          Height = 65
        end
      end
    end
    object xpTabSheet2: TTabSheet
      Caption = #1582#1604#1575#1589#1607' '#1583#1585#1610#1575#1601#1578' '#1608' '#1662#1585#1583#1575#1582#1578' '#1575#1593#1590#1575
      object Label1: TLabel
        Left = 652
        Top = 414
        Width = 90
        Height = 13
        Caption = #1578#1593#1607#1583' '#1662#1585#1583#1575#1582#1578' '#1575#1602#1587#1575#1591
        Transparent = True
      end
      object SumPart: TLabel
        Left = 596
        Top = 414
        Width = 16
        Height = 13
        Caption = '....'
        Transparent = True
      end
      object YDBGrid1: TYDBGrid
        Left = 0
        Top = 0
        Width = 754
        Height = 412
        Cursor = crHandPoint
        Align = alTop
        Color = 14540253
        DataSource = dm.DReport_SummeryPayment2
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
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
        FooterFields = 'Count'
        Columns = <
          item
            Expanded = False
            FieldName = 'PayTypeTitle'
            Title.Caption = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578#1610' '
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'debit'
            Title.Caption = #1576#1583#1607#1705#1575#1585
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Credit'
            Title.Caption = #1576#1587#1578#1575#1606#1705#1575#1585
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sum'
            Title.Caption = #1605#1575#1606#1583#1607
            Width = 106
            Visible = True
          end>
      end
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 0
    Width = 762
    Height = 37
    Align = alTop
    TabOrder = 0
    DesignSize = (
      762
      37)
    object Label3: TLabel
      Left = 718
      Top = 8
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1575#1586
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 611
      Top = 9
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
    object MakeRep: TBitBtn
      Left = 419
      Top = 2
      Width = 87
      Height = 30
      Anchors = [akTop, akRight]
      Caption = #1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = MakeRepClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8F9787B7B4C4E506A6C6E
        D8D9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EBEB6C7679AE
        896FE5AF88BE9B82595758EBECECFFFFFFFFFFFFE0E2E3A3A7AA9FA3A7D1D3D4
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
        E9747B7E8D7D6FFFD59DFDCD9BFFCD97B1947A85959BFFFFFFDCDCDD7A767494
        7661957A676E6B6AC8CBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F8F87070706A7074BD9F8AFFE8BFFFDFC1FFDDB5FFD6A547555D8FB9
        C263686DBFA07DFFCB94FFC790C5A1837C7D7CF6F6F7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF5959597271719B9EA0A1928DFFEFDAFFFDF2FFEFD8
        FFDDB536393C4245488A8585EACEA6FFDFBCFFDBB3FFD9A771655CECEDEEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E75454543D3D3DA7A7A7BBBBBCC1C5C9A9
        8F88EEE3E0FCEFD894897D393B3DACACACA4A4A6DDC3B1FFFBEBFFF3E1FFE7BE
        746B61D6E8EEFCFFFFFFFFFFFFFFFFFFFFFFF6F6F66363638E8E8E5757578787
        87E1E1E1FAFBFACCCDCF8775737D6D69585759434344CFCECECACDCFB6AAA5DC
        CDCAFBEEE1CAB49C8B8D8D8BE4F96AE1FCA7EAFEE8FDFFFFFFFF9898988A8A8A
        C8C8C89999998080809D9D9DDFDFDFA4A4A45458586366676A6A6A464646F6F6
        F6F5F6F6F4F5F6B6AAA9927F78A19B98E3E4E4F2FFFF9AE6FA74E0FB5FDEFB8D
        EBFE898989777777AAAAAACECECEC6C6C69B9B9B8181814949493D3D3D424242
        333333777777E6E6E6EDEDEDB0AEAE5A5F6192A9B39CC8D892CADDBFE7EEFFFF
        FFFFFFFF53D7F96EE5FE9F9F9F545252CBCACACDCCCCBDBCBCB6B5B5AEAEAEAB
        ABAB9F9F9F8E8D8D7E7D7D706F6F5755552D2B2A8D9392ECFCFBD8FEFF95D1E0
        65B0CA54A1C2D8F1F4ABE9FB46D2F9F7FDFFE6E4E45F6669535859929797ABAE
        AEB2B3B2AAA9A89593938F8D8D999898A7A6A6949595647174B6D7DDD4FDFFC5
        F6FACDFAFCE1FFFFE2FFFFC5EDF1C6F7FE4DD0F4D2F0FCFFFFFFFFFFFF7ED5EF
        ACEAF1ADEEF17EBBC986B9C48FBBC396ADAE9AA3A1A5B6B5A9C2C1B2DADBBDF9
        FF97DBE983CCDD7FC8DA7AC2D684C6DACEF5F8C4F8FD4CD5F9D3F4FCFFFFFFFF
        FFFFEFFFFF4ED1F2A4FBFF9FF5F86FCCDE5EBDD458B6D17FCDE195DAE99FE4F0
        AFF6FBC4FFFFCCFFFFCEFFFFCBFFFFBAF5F8A3E1EA96DAE6DEFFFC25C1EDCDF5
        FFFFFFFFFFFFFFFFFFFFCCFFFF5ADBF7A9FFFFAAFFFFA9FDFDA7F7F99EEFF67D
        D4E35CB8CF50ABC75AB4CC67BDD383D0E1A4EDF3C8FFFFD3FFFFCAFFFFDCFFFF
        81E3F456D2F8FFFFFFFFFFFFFFFFFFFFFFFFACF2FF5BD6F0AEFFFFA5FFFFA8FF
        FFA9FFFFAEFFFFB1FFFFB8FFFFADFBFC8FE2EB6ABED553AFC955AEC951ACC76A
        BCD3AFF3F8CDFFFF32C2EBE3F5FCFFFFFFFFFFFFFFFFFFFFFFFFA5F1FF6AE2F2
        99F8F965CADC82E3EC97F1F6A0F6F9A5FDFEAEFFFFB1FFFFB7FFFFBEFFFFB3FF
        FF97E7EF7BCBDC5EB6CF99DCE786E5F66DD7F7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA5F4FF7EEEF790F1F55EC4D752B9CF4CB0CB59BCD36FD0DF85E0E993E8F0
        9FF6F8AFFFFFB9FFFFBAFFFFC1FFFFB4FFFFC3FFFF5BD5F3ADE5F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA4F4FF87F5FA9FFFFF96FAFC8FF0F585E8EF74D9E560
        C5D74CAFC94FAFCA5DBCD46CCADC7FD6E494EBF1ABFEFEB8FFFFA3F3FA50CFF1
        E3F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFBFFB0FFFFACFFFFA2FFFF9EFF
        FF9FFFFF9DFFFF9AFBFC99F7F98AECF271D3E253B6CD43A7C44FAFC949ABC799
        EDF095EDF95BC5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DEFC18B0DB
        48CEE97DEEF89BF7FB9DF9FC9EFDFDA1FFFFA3FFFFA3FFFFA8FFFFACFFFFA3FF
        FF88E8EF69C9DBA9FEFB65DEF69CE0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDCF4FEA4E1F962C3EC34ABDB38BAE24DCDEB65E0F274E2F07DE9F4
        8BF3F99BFFFEADFFFFAFFFFFB1FFFFB7FFFF3CC6E7D1F2FEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F8FFBFEAFB91
        D8F26AC5E35BC8E856CEED4FD3F24CCDE95CD9ED7AEAF5ABFFFF21B2DEFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF4FCFFDAF3FCBFE8F99FD9EF7DD5F05ECFF03C
        CDF43ACAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object DateFrom: TSolarDatePicker
      Left = 622
      Top = 6
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Enabled = True
      OnChange = DateToChange
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
    object DateTo: TSolarDatePicker
      Left = 517
      Top = 7
      Width = 90
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Enabled = True
      OnChange = DateToChange
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
  object Panel3: TPanel [5]
    Left = 0
    Top = 489
    Width = 762
    Height = 41
    Align = alBottom
    TabOrder = 5
    DesignSize = (
      762
      41)
    object Button2: TBitBtn
      Left = 433
      Top = 5
      Width = 100
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' 6 '#1587#1578#1608#1606#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE2E2E2B2B2B2909090B0B0B0EDED
        EDFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C6C6C6B0B0B0A3A3A3DEDEDE
        CBCBCB797979727272969696BDBDBDDEDEDEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2A4A4A4AFAFAFC4C4C4E1
        E1E1FFFFFFFFFFFFCECECE8787878282827E7E7E7878788383839C9C9CBEBEBE
        EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1949494A8A8A8E7E7
        E7F6F6F6FFFFFFFFFFFFFAFAFAFEFEFECECECE8F8F8F7878787070707C7C7C85
        85858282827C7C7C7B7B7B959595DCDCDCFFFFFFFFFFFFFFFFFFC2C2C2B9B9B9
        FEFEFEFFFFFFFFFFFFFEFEFEFAFAFAF9F9F9F6F6F6F0F0F0C0C0C08F8F8F8888
        887373736767676565656D6D6D7D7D7D8686868080806D6D6D6E6E6EA6A6A6E3
        E3E3CFCFCFFFFFFFFFFFFFFCFCFCFBFBFBFBFBFBF2F2F2DEDEDEC6C6C6B9B9B9
        9C9C9C7B7B7B7A7A7A8484848686868383837373736868686262626D6D6D7F7F
        7F8181817777776A6A6ACDCDCDFFFFFFFCFCFCFFFFFFE9E9E9CDCDCDBEBEBEC2
        C2C2CBCBCBE1E1E1CECECE9E9E9E8D8D8D8181817A7A7A7373737D7D7D848484
        8585857474745D5D5D6666668A8A8A747474D0D0D0FDFDFDE3E3E3BEBEBEC1C1
        C1D6D6D6E3E3E3E8E8E8E9E9E9E7E7E7CFCFCFAFAFAFA8A8A8A2A2A29B9B9B97
        97978686866F6F6F6969697979799090908D8D8D939393767676CACACAC5C5C5
        D2D2D2EBEBEBF0F0F0E9E9E9E5E5E5E1E1E1DEDEDEDBDBDBD8D8D8CFCFCFC3C3
        C3BBBBBBB2B2B2AAAAAAA5A5A5A7A7A79E9E9E8787876969696E6F6E83838377
        7777D0D0D0EDEDEDEEEEEEE8E8E8E4E4E4E2E2E2DFDFDFDBDBDBD7D7D7DCDCDC
        E9E9E9E8E8E8DFDFDFD7D7D7CECECEC4C4C4B8B8B8B0B0B0AAA9AAABA5AAAFA4
        AD9A9599808180757575D0D0D0E6E6E6E5E5E5E2E2E2DFDFDFDBDBDBD8D8D8D2
        D2D2DBDBDBEDEDEDEEEEEEEDEDEDECECECEAEAEAE8E7E8EFEAEFF2EAF2F0E7F1
        E3D5E1A7C7AE71B87C9CB29EB6B0B5797979CFCFCFE5E5E5E2E2E2DDDDDDD7D7
        D7D4D4D4D8D8D8EFEFEFF6F6F6FBFBFBF6F6F6F2F2F2EFEEEFFAF4FAFFF9FFA4
        C6A5448E4532832F39833B4EA45A84E89769D176AABBAC868386D4D4D4C5C5C5
        D5D5D5D5D5D5DEDEDEE0DFDFB6B7B89193949FA0A1B8B8B8D3D3D3E5E5E5FCF7
        FCB3D5B30E820D007700098300187D002874002166000862008FBA8EB3AEB3CF
        CDCFF4F4F4B6B6B6B2B2B2BCBCBCD7D7D7ADAFB07A736B897F75797571717173
        76787B9F9AA29DC09D058A0700980000A1031AAE2C009A00009500118800306F
        0016620075A675FFFFFFFFFFFFFFFFFFF2F2F2E1E1E1CFCFCF989A9DCCBAA7FF
        E7C8E3CCB0CCB8A0B29F8DC5B6B60F8A1206A41100A1057CD08FD7F5E74FC769
        009700009A00098E002C6E001A6F04DCEDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB6B5B5D1C1AFFFE9CEFFE6C9FFE6C6FFEBD3AEC69410A11E00A50B6AC576FF
        F4FFFFFBFFF9FFFF3FC65F009400009A001689001A63007BAF79FFFFFFFFFFFF
        FFFFFFFFFFFFF3F4F5ABA7A3EFDCCCFFEAD5FFE6CFFFE3CAFFF2E8479C3D3AC4
        5462B865FFF0FFF4EDF1DEEFE1FFFFFFFFFFFF4ECF73009600009700277B0028
        7B20FFFFFFFFFFFFFFFFFFFFFFFFE2E2E3AAA59FFFF5E5FFECDBFFEAD6FFE7D2
        FFF7F12F9B2A57CE726EB56FE8DEDF5FC06900A70F9EDBA6FFFFFFFFFFFF3EC4
        5D009B001F830015740BFFFFFFFFFFFFFFFFFFFFFFFFB0AFAFD5CFC6FFF8EBFF
        EFE2FFEEDEFFECDAFFF8F4419F3868D98B20B54137B54B15B73A1CB94213B12F
        9EDAA6FFFFFFF7FDFE49C864098B0024801CFFFFFFFFFFFFFFFFFFF8F8F89091
        8FFFFFFAFFF5EDFFF3EAFFF2E6FFEFE2FFF7F184BA7651CA704DD27720C5532D
        C65B27C0511CB84004AC22A6D9ADFFFFFFE4FBF62B9D2E569F52FFFFFFFFFFFF
        FFFFFF949494FBFAF9FFFFFFFFF9F6FFF8F3FFF6EFFFF4ECFFF3E9FFFDF8119A
        197BE5A440D1722DCA622DC75A25BE4D1FB94200A0049AD39F70CB7D008000D7
        E7D5FFFFFFFDFDFDBBBBBBCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FFF9F3
        FFF6EFFFFBFBA2D59D3AAF4C6FDD974DD57E2CC65C21BE4A1CB83E1AB33500A5
        0F008E0072B971FFFFFFFFFFFFF9F9F9D0D0D0DEDEDED5D5D5D6D6D6D4D5D5DC
        DCDDF3F3F3FFFFFFFFFFFFFFFFFFD9D4D388BE8837B2444AC66A58D88542CC6B
        2FC35314AD2D00900675BE76F5F8F4FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F6F6
        F6F6F6F6F5F5F5F1F1F1E7E7E7E1E1E1DDDDDEDBDBDBE6E4E5FFFFFFE4F2E2B9
        E1BB97D09A8CCF908FCE92A7D7A9E0EEDFFFFFFFFFFFFFFFFFFF}
    end
    object Button5: TBitBtn
      Left = 12
      Top = 5
      Width = 75
      Height = 28
      Cancel = True
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button5Click
      Glyph.Data = {
        1E060000424D1E06000000000000360000002800000018000000150000000100
        180000000000E8050000000000000000000000000000000000000D0B038394FF
        0133F00606AEB7B4DDFFFFFFBEBBE7060EB10005A56D6FCAF9F9F5FFFCE8FFF6
        E7FFF6E9FFF6E9FFF7E9FFF7E9FFF7E9FFF7E9FFF8E9FFF8E9FFF8E9FFF5E6FF
        FFFF0B0700858FFF0E4FFF236FFF0008B42E166F161CA70747FF074BFF1C2ECF
        B5886FFFB428FF9E1AFF9F1DFF9F1DFF9E1CFF9E1CFF9D1CFF9D1BFF9C1AFF9C
        1AFF9B1DFF9305FFAD32161404C4B4E70012D72C66FF215EFF042AE1103FF019
        54FF022BDD3B47C4D8D6F6FFFFFFFFF1FFFFF1FFFFEFFFFFEDFFFFEBFFFFE9FF
        FFE7FFFFE3FFFFE1FBFFDEF9FFEEFFFF93000C0800FFFFD33536B90B2ACF2B67
        FF245AFF2059FF113DE32826AAC3B9DAFFFAEFFFE7E6FFE4E3FFE3E2FFE1E0FF
        DFDEFFDAD9FFDAD9FFD8D7FFD5D3FFD2D1FFCDC9FFE3FFFF9A04040000FFFFBF
        FFFFFF2920881B4CF92A62FF2158FF1532CD776EB2FFFFFFFFF0EDFFEBEBFFE9
        E9FFE7E7FFE5E5FFE1E1FFDFDFFFDEDEFFDBDBFFD8D8FFD6D6FFD0CEFFE6FFFF
        9A03050000FFFFC2E7E9FE11159F377BFF2352F11A4BEF1A53F12530C1B9B1D9
        FFFDF6FFEFEEFFEBEBFFE9E9FFE7E7FFE4E4FFE2E2FFE0E0FFDDDDFFDADAFFD7
        D7FFD1CFFFE8FFFF9A04050000FFFFCC7F7DDA1233D23470FA2330B93039B810
        40EA154BEE565AC2EBE4EBFFF9F4FFECEDFFECECFFE9E9FFE6E6FFE4E4FFE1E1
        FFDEDEFFDBDBFFD8D8FFD3D1FFE9FFFF9A03050000FFFFCF4E50C90734DB1B3C
        D4857BBFDBD6E53D47C60026E32948D9BEB9DEFFFFFAFFEFEFFFEDEDFFEBEBFF
        E8E8FFE4E4FFE2E2FFDFDFFFDCDCFFD9D9FFD4D2FFE9FFFF9A03050000FFFFC8
        B4B6EB3E4BCF3237BDF2EFF9FFFFFFE2DFF3363CCD4251D7D0CEE9FFFFFBFFF2
        F2FFF0F0FFEDEDFFEAEAFFE6E6FFE4E4FFE1E1FFDEDEFFDADAFFD5D3FFE9FFFF
        9A02050000FFFFC3FFFFFFDEDBF2B3B1E3FFFFFFFFFFFFFFFFFFEDECF5BFBBE2
        FBF9F7FFFBF9FFF4F4FFF2F2FFEFEFFFECECFFE8E8FFE5E5FFE2E2FFDFDFFFDC
        DCFFD6D5FFEBFFFF9B02050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFEFFF9F9FFF6F6FFF3F3FFF0F0FFEDEDFFE9E9FFE6E6
        FFE3E3FFE0E0FFDDDDFFD7D5FFECFFFF9B03050000FFFFC4F6FCFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF7F7FFF4F4FFF1F1FF
        EDEDFFEAEAFFE7E7FFE4E4FFDFDFFFDDDDFFD7D5FFECFFFF9A03050000FFFFC4
        F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFFF7
        F7FFF4F4FFF2F2FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDEDEFFD8D6FFEDFFFF
        9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFDFDFFF7F7FFF4F4FFF3F3FFEDEDFFEBEBFFE8E8FFE5E5FFDFDFFFDE
        DEFFD8D6FFEDFFFF9A03050000FFFFC4F6FCFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF7F7FFF4F4FFF3F2FFEDEDFFEAEAFFE7E7
        FFE4E4FFDFDFFFDDDDFFD7D6FFEDFFFF9A03050000FFFFC7FCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFBFDFFF9FAFF
        F4F4FFF1F2FFEEEFFFEBECFFE6E7FFE4E5FFDFDDFFF3FFFF9A04050000FFFFCA
        D2E9FFDAE9FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE8FBDAE7FADAE6F9DAE1
        F4DADFF3DADBEFDAD9EBDAD4E8DAD2E5DACFE2DACBDEDAC8DBD9C0D3DBD7FFFD
        9B09040408FFE66EF98F0BFC9615FB9716FB9716FB9716FB9716FB9716FB9716
        FB9615FB9615FB9715FB9715FB9614FB9714FB9714FB9613FB9713FB9713FB97
        12FB9711FB971AFF9700040304FFF391F38800EB7700ED7C00ED7B00ED7B00ED
        7B00ED7B00ED7B00ED7B00ED7B00ED7C00ED7C00ED7C00ED7C00ED7C00ED7C00
        ED7C00ED7C00ED7C00EB7C00F18500FF9500040100FFFEB5F9BD8AF5B97CF5BB
        81F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5BB80F5
        BB80F5BB80F5BB80F5BB80F5BB80F5BB84F5B97CF9A43DFE9D0B04090FFFFFD2
        FF9805FF9D09FF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E
        0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9E0DFF9F0EFF9B06FF9F13FF
        E4B9}
    end
    object xpBitBtn1: TBitBtn
      Left = 535
      Top = 5
      Width = 100
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' 4'#1587#1578#1608#1606#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = xpBitBtn1Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE2E2E2B2B2B2909090B0B0B0EDED
        EDFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C6C6C6B0B0B0A3A3A3DEDEDE
        CBCBCB797979727272969696BDBDBDDEDEDEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2A4A4A4AFAFAFC4C4C4E1
        E1E1FFFFFFFFFFFFCECECE8787878282827E7E7E7878788383839C9C9CBEBEBE
        EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1949494A8A8A8E7E7
        E7F6F6F6FFFFFFFFFFFFFAFAFAFEFEFECECECE8F8F8F7878787070707C7C7C85
        85858282827C7C7C7B7B7B959595DCDCDCFFFFFFFFFFFFFFFFFFC2C2C2B9B9B9
        FEFEFEFFFFFFFFFFFFFEFEFEFAFAFAF9F9F9F6F6F6F0F0F0C0C0C08F8F8F8888
        887373736767676565656D6D6D7D7D7D8686868080806D6D6D6E6E6EA6A6A6E3
        E3E3CFCFCFFFFFFFFFFFFFFCFCFCFBFBFBFBFBFBF2F2F2DEDEDEC6C6C6B9B9B9
        9C9C9C7B7B7B7A7A7A8484848686868383837373736868686262626D6D6D7F7F
        7F8181817777776A6A6ACDCDCDFFFFFFFCFCFCFFFFFFE9E9E9CDCDCDBEBEBEC2
        C2C2CBCBCBE1E1E1CECECE9E9E9E8D8D8D8181817A7A7A7373737D7D7D848484
        8585857474745D5D5D6666668A8A8A747474D0D0D0FDFDFDE3E3E3BEBEBEC1C1
        C1D6D6D6E3E3E3E8E8E8E9E9E9E7E7E7CFCFCFAFAFAFA8A8A8A2A2A29B9B9B97
        97978686866F6F6F6969697979799090908D8D8D939393767676CACACAC5C5C5
        D2D2D2EBEBEBF0F0F0E9E9E9E5E5E5E1E1E1DEDEDEDBDBDBD8D8D8CFCFCFC3C3
        C3BBBBBBB2B2B2AAAAAAA5A5A5A7A7A79E9E9E8787876969696E6F6E83838377
        7777D0D0D0EDEDEDEEEEEEE8E8E8E4E4E4E2E2E2DFDFDFDBDBDBD7D7D7DCDCDC
        E9E9E9E8E8E8DFDFDFD7D7D7CECECEC4C4C4B8B8B8B0B0B0AAA9AAABA5AAAFA4
        AD9A9599808180757575D0D0D0E6E6E6E5E5E5E2E2E2DFDFDFDBDBDBD8D8D8D2
        D2D2DBDBDBEDEDEDEEEEEEEDEDEDECECECEAEAEAE8E7E8EFEAEFF2EAF2F0E7F1
        E3D5E1A7C7AE71B87C9CB29EB6B0B5797979CFCFCFE5E5E5E2E2E2DDDDDDD7D7
        D7D4D4D4D8D8D8EFEFEFF6F6F6FBFBFBF6F6F6F2F2F2EFEEEFFAF4FAFFF9FFA4
        C6A5448E4532832F39833B4EA45A84E89769D176AABBAC868386D4D4D4C5C5C5
        D5D5D5D5D5D5DEDEDEE0DFDFB6B7B89193949FA0A1B8B8B8D3D3D3E5E5E5FCF7
        FCB3D5B30E820D007700098300187D002874002166000862008FBA8EB3AEB3CF
        CDCFF4F4F4B6B6B6B2B2B2BCBCBCD7D7D7ADAFB07A736B897F75797571717173
        76787B9F9AA29DC09D058A0700980000A1031AAE2C009A00009500118800306F
        0016620075A675FFFFFFFFFFFFFFFFFFF2F2F2E1E1E1CFCFCF989A9DCCBAA7FF
        E7C8E3CCB0CCB8A0B29F8DC5B6B60F8A1206A41100A1057CD08FD7F5E74FC769
        009700009A00098E002C6E001A6F04DCEDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB6B5B5D1C1AFFFE9CEFFE6C9FFE6C6FFEBD3AEC69410A11E00A50B6AC576FF
        F4FFFFFBFFF9FFFF3FC65F009400009A001689001A63007BAF79FFFFFFFFFFFF
        FFFFFFFFFFFFF3F4F5ABA7A3EFDCCCFFEAD5FFE6CFFFE3CAFFF2E8479C3D3AC4
        5462B865FFF0FFF4EDF1DEEFE1FFFFFFFFFFFF4ECF73009600009700277B0028
        7B20FFFFFFFFFFFFFFFFFFFFFFFFE2E2E3AAA59FFFF5E5FFECDBFFEAD6FFE7D2
        FFF7F12F9B2A57CE726EB56FE8DEDF5FC06900A70F9EDBA6FFFFFFFFFFFF3EC4
        5D009B001F830015740BFFFFFFFFFFFFFFFFFFFFFFFFB0AFAFD5CFC6FFF8EBFF
        EFE2FFEEDEFFECDAFFF8F4419F3868D98B20B54137B54B15B73A1CB94213B12F
        9EDAA6FFFFFFF7FDFE49C864098B0024801CFFFFFFFFFFFFFFFFFFF8F8F89091
        8FFFFFFAFFF5EDFFF3EAFFF2E6FFEFE2FFF7F184BA7651CA704DD27720C5532D
        C65B27C0511CB84004AC22A6D9ADFFFFFFE4FBF62B9D2E569F52FFFFFFFFFFFF
        FFFFFF949494FBFAF9FFFFFFFFF9F6FFF8F3FFF6EFFFF4ECFFF3E9FFFDF8119A
        197BE5A440D1722DCA622DC75A25BE4D1FB94200A0049AD39F70CB7D008000D7
        E7D5FFFFFFFDFDFDBBBBBBCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FFF9F3
        FFF6EFFFFBFBA2D59D3AAF4C6FDD974DD57E2CC65C21BE4A1CB83E1AB33500A5
        0F008E0072B971FFFFFFFFFFFFF9F9F9D0D0D0DEDEDED5D5D5D6D6D6D4D5D5DC
        DCDDF3F3F3FFFFFFFFFFFFFFFFFFD9D4D388BE8837B2444AC66A58D88542CC6B
        2FC35314AD2D00900675BE76F5F8F4FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F6F6
        F6F6F6F6F5F5F5F1F1F1E7E7E7E1E1E1DDDDDEDBDBDBE6E4E5FFFFFFE4F2E2B9
        E1BB97D09A8CCF908FCE92A7D7A9E0EEDFFFFFFFFFFFFFFFFFFF}
    end
    object xpBitBtn2: TBitBtn
      Left = 637
      Top = 5
      Width = 100
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' 2 '#1587#1578#1608#1606#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = xpBitBtn2Click
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBE2E2E2B2B2B2909090B0B0B0EDED
        EDFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E8E8C6C6C6B0B0B0A3A3A3DEDEDE
        CBCBCB797979727272969696BDBDBDDEDEDEFEFEFEFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2A4A4A4AFAFAFC4C4C4E1
        E1E1FFFFFFFFFFFFCECECE8787878282827E7E7E7878788383839C9C9CBEBEBE
        EFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1D1D1949494A8A8A8E7E7
        E7F6F6F6FFFFFFFFFFFFFAFAFAFEFEFECECECE8F8F8F7878787070707C7C7C85
        85858282827C7C7C7B7B7B959595DCDCDCFFFFFFFFFFFFFFFFFFC2C2C2B9B9B9
        FEFEFEFFFFFFFFFFFFFEFEFEFAFAFAF9F9F9F6F6F6F0F0F0C0C0C08F8F8F8888
        887373736767676565656D6D6D7D7D7D8686868080806D6D6D6E6E6EA6A6A6E3
        E3E3CFCFCFFFFFFFFFFFFFFCFCFCFBFBFBFBFBFBF2F2F2DEDEDEC6C6C6B9B9B9
        9C9C9C7B7B7B7A7A7A8484848686868383837373736868686262626D6D6D7F7F
        7F8181817777776A6A6ACDCDCDFFFFFFFCFCFCFFFFFFE9E9E9CDCDCDBEBEBEC2
        C2C2CBCBCBE1E1E1CECECE9E9E9E8D8D8D8181817A7A7A7373737D7D7D848484
        8585857474745D5D5D6666668A8A8A747474D0D0D0FDFDFDE3E3E3BEBEBEC1C1
        C1D6D6D6E3E3E3E8E8E8E9E9E9E7E7E7CFCFCFAFAFAFA8A8A8A2A2A29B9B9B97
        97978686866F6F6F6969697979799090908D8D8D939393767676CACACAC5C5C5
        D2D2D2EBEBEBF0F0F0E9E9E9E5E5E5E1E1E1DEDEDEDBDBDBD8D8D8CFCFCFC3C3
        C3BBBBBBB2B2B2AAAAAAA5A5A5A7A7A79E9E9E8787876969696E6F6E83838377
        7777D0D0D0EDEDEDEEEEEEE8E8E8E4E4E4E2E2E2DFDFDFDBDBDBD7D7D7DCDCDC
        E9E9E9E8E8E8DFDFDFD7D7D7CECECEC4C4C4B8B8B8B0B0B0AAA9AAABA5AAAFA4
        AD9A9599808180757575D0D0D0E6E6E6E5E5E5E2E2E2DFDFDFDBDBDBD8D8D8D2
        D2D2DBDBDBEDEDEDEEEEEEEDEDEDECECECEAEAEAE8E7E8EFEAEFF2EAF2F0E7F1
        E3D5E1A7C7AE71B87C9CB29EB6B0B5797979CFCFCFE5E5E5E2E2E2DDDDDDD7D7
        D7D4D4D4D8D8D8EFEFEFF6F6F6FBFBFBF6F6F6F2F2F2EFEEEFFAF4FAFFF9FFA4
        C6A5448E4532832F39833B4EA45A84E89769D176AABBAC868386D4D4D4C5C5C5
        D5D5D5D5D5D5DEDEDEE0DFDFB6B7B89193949FA0A1B8B8B8D3D3D3E5E5E5FCF7
        FCB3D5B30E820D007700098300187D002874002166000862008FBA8EB3AEB3CF
        CDCFF4F4F4B6B6B6B2B2B2BCBCBCD7D7D7ADAFB07A736B897F75797571717173
        76787B9F9AA29DC09D058A0700980000A1031AAE2C009A00009500118800306F
        0016620075A675FFFFFFFFFFFFFFFFFFF2F2F2E1E1E1CFCFCF989A9DCCBAA7FF
        E7C8E3CCB0CCB8A0B29F8DC5B6B60F8A1206A41100A1057CD08FD7F5E74FC769
        009700009A00098E002C6E001A6F04DCEDDEFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB6B5B5D1C1AFFFE9CEFFE6C9FFE6C6FFEBD3AEC69410A11E00A50B6AC576FF
        F4FFFFFBFFF9FFFF3FC65F009400009A001689001A63007BAF79FFFFFFFFFFFF
        FFFFFFFFFFFFF3F4F5ABA7A3EFDCCCFFEAD5FFE6CFFFE3CAFFF2E8479C3D3AC4
        5462B865FFF0FFF4EDF1DEEFE1FFFFFFFFFFFF4ECF73009600009700277B0028
        7B20FFFFFFFFFFFFFFFFFFFFFFFFE2E2E3AAA59FFFF5E5FFECDBFFEAD6FFE7D2
        FFF7F12F9B2A57CE726EB56FE8DEDF5FC06900A70F9EDBA6FFFFFFFFFFFF3EC4
        5D009B001F830015740BFFFFFFFFFFFFFFFFFFFFFFFFB0AFAFD5CFC6FFF8EBFF
        EFE2FFEEDEFFECDAFFF8F4419F3868D98B20B54137B54B15B73A1CB94213B12F
        9EDAA6FFFFFFF7FDFE49C864098B0024801CFFFFFFFFFFFFFFFFFFF8F8F89091
        8FFFFFFAFFF5EDFFF3EAFFF2E6FFEFE2FFF7F184BA7651CA704DD27720C5532D
        C65B27C0511CB84004AC22A6D9ADFFFFFFE4FBF62B9D2E569F52FFFFFFFFFFFF
        FFFFFF949494FBFAF9FFFFFFFFF9F6FFF8F3FFF6EFFFF4ECFFF3E9FFFDF8119A
        197BE5A440D1722DCA622DC75A25BE4D1FB94200A0049AD39F70CB7D008000D7
        E7D5FFFFFFFDFDFDBBBBBBCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFDF9FFF9F3
        FFF6EFFFFBFBA2D59D3AAF4C6FDD974DD57E2CC65C21BE4A1CB83E1AB33500A5
        0F008E0072B971FFFFFFFFFFFFF9F9F9D0D0D0DEDEDED5D5D5D6D6D6D4D5D5DC
        DCDDF3F3F3FFFFFFFFFFFFFFFFFFD9D4D388BE8837B2444AC66A58D88542CC6B
        2FC35314AD2D00900675BE76F5F8F4FFFFFFFFFFFFFFFFFFFFFFFFF9F9F9F6F6
        F6F6F6F6F5F5F5F1F1F1E7E7E7E1E1E1DDDDDEDBDBDBE6E4E5FFFFFFE4F2E2B9
        E1BB97D09A8CCF908FCE92A7D7A9E0EEDFFFFFFFFFFFFFFFFFFF}
    end
  end
  inherited ahmadvand: TActionList
    Left = 221
    Top = 139
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 221
    Top = 244
  end
end
