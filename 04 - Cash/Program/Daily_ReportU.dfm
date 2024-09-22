inherited FrDaily_Report: TFrDaily_Report
  Left = 413
  Top = 248
  AutoScroll = False
  Caption = #1576#1610#1604#1575#1606' '#1705#1575#1585#1610' - '#1583#1601#1578#1585' '#1585#1608#1586#1606#1575#1605#1607
  ClientHeight = 333
  ClientWidth = 572
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep [0]
    Left = 136
    Top = 272
    Width = 1111
    Height = 1572
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = dm.Report_Daily_Payment
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
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Pixels
    Zoom = 140
    object PageHeaderBand1: TQRBand
      Left = 53
      Top = 53
      Width = 1005
      Height = 100
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 15066597
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        188.988095238095200000
        1899.330357142857000000)
      BandType = rbPageHeader
      object Qrtitle: TQRLabel
        Left = 857
        Top = 33
        Width = 18
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1619.627976190476000000
          62.366071428571420000
          34.017857142857150000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '....'
        Color = 15066597
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
      object QRSysData1: TQRSysData
        Left = 118
        Top = 34
        Width = 64
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          223.005952380952400000
          64.255952380952380000
          120.952380952381000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        Color = 15066597
        Data = qrsPageNumber
        Transparent = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Left = 199
        Top = 34
        Width = 39
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          376.086309523809600000
          64.255952380952380000
          73.705357142857140000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1601#1581#1607
        Color = 15066597
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
        Left = 890
        Top = 36
        Width = 97
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          1681.994047619048000000
          68.035714285714290000
          183.318452380952400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1601#1578#1585' '#1585#1608#1586#1606#1575#1605#1607
        Color = 15066597
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
      object QRImage1: TQRImage
        Left = 3
        Top = 1
        Width = 98
        Height = 98
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
    object ColumnHeaderBand1: TQRBand
      Left = 53
      Top = 153
      Width = 1005
      Height = 84
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        158.750000000000000000
        1899.330357142857000000)
      BandType = rbColumnHeader
      object QRLabel2: TQRLabel
        Left = 937
        Top = 1
        Width = 63
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1770.062500000000000000
          2.645833333333333000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
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
      object QRLabel3: TQRLabel
        Left = 847
        Top = 24
        Width = 50
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          1600.729166666667000000
          44.979166666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape2: TQRShape
        Left = 260
        Top = 0
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          492.125000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape1: TQRShape
        Left = 924
        Top = 0
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          1746.250000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 612
        Top = 13
        Width = 52
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333320000
          1156.229166666667000000
          23.812500000000000000
          97.895833333333320000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1585#1581
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -21
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 16
      end
      object QRLabel6: TQRLabel
        Left = 24
        Top = 1
        Width = 77
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          44.979166666666670000
          2.645833333333333000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel5: TQRLabel
        Left = 161
        Top = 0
        Width = 63
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          304.270833333333300000
          0.000000000000000000
          119.062500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1576#1583#1607#1705#1575#1585
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape3: TQRShape
        Left = 127
        Top = 0
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          240.770833333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 823
        Top = 0
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          1555.750000000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 42
        Width = 262
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          79.375000000000000000
          494.770833333333300000)
        Shape = qrsHorLine
      end
      object QRLabel10: TQRLabel
        Left = 53
        Top = 47
        Width = 25
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          100.163690476190500000
          88.824404761904760000
          47.247023809523810000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1610#1575#1604
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
      object QRLabel11: TQRLabel
        Left = 186
        Top = 48
        Width = 25
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          351.517857142857100000
          90.714285714285710000
          47.247023809523810000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1610#1575#1604
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
      object QRShape5: TQRShape
        Left = 354
        Top = 0
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          669.395833333333200000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 266
        Top = 13
        Width = 84
        Height = 62
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          502.708333333333300000
          23.812500000000000000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
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
    end
    object DetailBand1: TQRBand
      Left = 53
      Top = 237
      Width = 1005
      Height = 110
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      LinkBand = QRBand5
      Size.Values = (
        207.886904761904800000
        1899.330357142857000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 924
        Top = 21
        Width = 76
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1746.250000000000000000
          39.687500000000000000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'DocumentNo'
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
        Left = 826
        Top = 21
        Width = 95
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1561.041666666667000000
          39.687500000000000000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'Date'
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
      object QRShape9: TQRShape
        Left = 260
        Top = 0
        Width = 1
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          204.107142857142800000
          491.369047619047700000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 924
        Top = 0
        Width = 1
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          204.107142857142800000
          1746.250000000000000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText4: TQRDBText
        Left = 1
        Top = 4
        Width = 126
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          2.645833333333333000
          7.937500000000000000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'Amount'
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
        Left = 130
        Top = 71
        Width = 126
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          245.684523809523800000
          134.181547619047600000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'Amount'
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
      object QRShape13: TQRShape
        Left = 127
        Top = 0
        Width = 1
        Height = 109
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          205.997023809523800000
          240.014880952381000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 823
        Top = 0
        Width = 1
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          204.107142857142800000
          1555.372023809524000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Left = 360
        Top = 0
        Width = 461
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          679.979166666666800000
          0.000000000000000000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'CreditorAccountTitle'
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
      object QRLabel7: TQRLabel
        Left = 165
        Top = 0
        Width = 63
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          312.208333333333300000
          0.000000000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel8: TQRLabel
        Left = 27
        Top = 60
        Width = 63
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          81.264880952380970000
          51.026785714285720000
          113.392857142857100000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText5: TQRDBText
        Left = 360
        Top = 29
        Width = 461
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          88.824404761904760000
          680.357142857142900000
          54.806547619047620000
          871.235119047619200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'Comment2'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText3: TQRDBText
        Left = 360
        Top = 76
        Width = 461
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          680.357142857142900000
          143.630952380952400000
          871.235119047619200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'DebtorAccountTitle'
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
      object QRShape6: TQRShape
        Left = 354
        Top = 0
        Width = 1
        Height = 108
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          204.107142857142800000
          669.017857142857100000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText7: TQRDBText
        Left = 266
        Top = 10
        Width = 84
        Height = 67
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          502.708333333333300000
          18.520833333333330000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Daily_Payment
        DataField = 'NoteNo'
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
      Left = 53
      Top = 347
      Width = 1005
      Height = 46
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
        86.934523809523810000
        1899.330357142857000000)
      BandType = rbPageFooter
      object QRLabel13: TQRLabel
        Left = 781
        Top = 6
        Width = 199
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          1475.997023809524000000
          11.339285714285710000
          376.086309523809600000)
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
      object QRLabel14: TQRLabel
        Left = 391
        Top = 6
        Width = 134
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          738.943452380952600000
          11.339285714285710000
          253.244047619047600000)
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
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 572
    Height = 37
    Align = alTop
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 333
      Top = 1
      Width = 238
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      DesignSize = (
        238
        35)
      object Label3: TLabel
        Left = 202
        Top = 9
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
        Left = 96
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
      object MEDateTo: TSolarDatePicker
        Left = 2
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
        TabOrder = 1
        Enabled = True
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
      object MEDateFrom: TSolarDatePicker
        Left = 109
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
        DataFieldType = dftSolar
        DataFieldAutoSaveModified = False
      end
    end
    object UserPanel: TPanel
      Left = 125
      Top = 1
      Width = 208
      Height = 35
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      DesignSize = (
        208
        35)
      object Label1: TLabel
        Left = 184
        Top = 10
        Width = 20
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1705#1575#1585#1576#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object UserId: TDBLookupComboBox
        Left = 9
        Top = 6
        Width = 166
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'UserId'
        ListField = 'FullName'
        ListSource = dm.DUsers
        ParentBiDiMode = False
        TabOrder = 0
      end
    end
    object MakeRep: TBitBtn
      Left = 46
      Top = 5
      Width = 75
      Height = 28
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
  end
  object Panel4: TPanel [2]
    Left = 0
    Top = 37
    Width = 572
    Height = 255
    Align = alClient
    TabOrder = 3
    object YDBGrid: TYDBGrid
      Left = 1
      Top = 1
      Width = 570
      Height = 253
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.DReport_Daily_Payment
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Nazanin'
      TitleFont.Style = [fsBold]
      YeganehColor = False
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
      FooterFields = 'Amount,Count'
      Columns = <
        item
          Expanded = False
          FieldName = 'DocumentNo'
          Title.Caption = #1588' '#1587#1606#1583
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date'
          Title.Caption = #1578#1575#1585#1610#1582
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Time'
          Title.Caption = #1586#1605#1575#1606
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CreditorAccountTitle'
          Title.Caption = #1581#1587#1575#1576' '#1576#1587#1578#1575#1606#1705#1575#1585
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DebtorAccountTitle'
          Title.Caption = #1581#1587#1575#1576' '#1576#1583#1607#1705#1575#1585
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = #1605#1576#1604#1594
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayTypeTitle'
          Title.Caption = #1593#1604#1578
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FullName'
          Title.Caption = #1705#1575#1585#1576#1585
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NoteNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 63
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 118
          Visible = True
        end>
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 292
    Width = 572
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      572
      41)
    object Button5: TBitBtn
      Left = 18
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
      TabOrder = 0
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
      Left = 453
      Top = 5
      Width = 96
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1583#1601#1578#1585' '#1585#1608#1586#1606#1575#1605#1607
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = xpBitBtn1Click
      Glyph.Data = {
        AA040000424DAA04000000000000360000002800000013000000130000000100
        1800000000007404000000000000000000000000000000000000FEFEFEFDFDFD
        FFFFFFDFD5D0C2AFA7E7E0DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFA
        F9FBFAFAFEFEFDFFFFFFFEFEFEFEFEFEFFFFFF000000FEFEFEFEFEFEFAF8F6B7
        A094D2C7C0C8BAB3BBA69DC5B2A9DBCEC8EAE3E0F4F0EEFEFEFEFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FBFBFAFFFFFFD7CDC7D5CAC1F4E5
        DDE4D3C9F6F3F1EFEDE9BCB3AFB8A89FC3B1A7C2B1A9C4B4ACD9CDC6F5F2F0FE
        FEFEFEFEFEFEFEFEFFFFFF000000FCFCFBFEFDFDC6B7AEDFD0C6913610721300
        7F351D703D2F8E827CFCFFFFFEFEFFEBE7E5E3DBD6AF9A8FD6CCC6FFFFFFFDFC
        FCFEFEFEFFFFFF000000FFFFFFF5F0EFC6B1A5F5EFEAD6B5A7C4A094AC77625F
        5050878788F7F6F6FFFFFFFFFFFFFAF9F8BEABA1FBF9F9FEFEFEFEFEFEFFFFFF
        FFFFFF000000FEFEFEE4DBD5C9B8ADFAF3EEFBF4EEFFFEFAFFFFFDF5FBFF445E
        D73035B8E2DEEAFFFFFFCDC0BAD4C6BEFFFFFFFDFDFCFEFEFEFEFEFEFFFFFF00
        0000FEFEFED5C3BBE2D5CAE9D0BEDEBCAAE1C4B4E3CABAE7CCBB3D4ED7002DF1
        282FB6EAE6EBC7B4A7F0EBEAFEFEFEFDFDFDFFFFFFFFFFFFFFFFFF000000FFFF
        FFC5B0A6EBDED2E5C9B7E2C5B3E3C6B5DEC3B6F3D4B5A08DB7133FF00A3BF32C
        2DA6C6AFA1FEFFFFFCFCFCFEFEFEFFFFFFFFFFFFFFFFFF000000FBF9F8C8B4A9
        EBDCCFE1C1ADE2C4B2E2C5B2E2C5B4E1C5B6F5E5D4495FE51D53FB012BEA4F53
        C4FAF9FFFBFBFDFDFDFEFEFEFFFEFEFEFFFFFF000000EAE2DECFBDB1EDDACBDE
        BCA7E1C3B0E1C2B0E1C2B0E1C5B6F9F3EACACBE7173DF12659F3222E7EA19C95
        FFFFFFFBFBFDFEFEFEFFFFFFFFFFFF000000DDCECAD4C1B4EDD9C7DDBBA5E0C1
        ADE1C1ADE0C2AFE1C3B0DCBAA8FDE8CF8798EF9298B47C81831B2C8AB7B5D7FF
        FFFFFBFBFDFEFEFEFEFEFF000000D3C1BBD8C5B7EDD6C4DCB9A2E0BFAAE0C0AB
        DEBDA8EAD5C7F7F0E7FCF9F5FDFBE98D8D9C375FE50840FF1929BDDFDCEAFFFF
        FFFCFCFDFFFFFF000000CDB8B0DAC7B8EED6C4DCB8A0DFBEA8DFBEA9DCBAA4EA
        D3C3F4EADFF2E4D8ECDFD398898D8A8D904562BE0031FB4349B8F9F7F8FBFCFE
        FDFDFD000000C9B3AADAC6B6EBD0BAD7AF96DEB9A2DFBBA5E1BFAAE1C0ABE1C1
        ABE7C9B4E2D1C3D2C0B5CED5E68B8A902653E00024E38180C5FFFFFFFCFCFD00
        0000C6AFA7DECAB7FAEED8EDD8C3F0DFCDEFE0D1EEE2D3EFE3D5EBDED0E6DCD2
        C9B5A7D2BFB5F9FDFFCDCCCA6878A80F46F90E26CACECAE1FFFFFF000000D0BB
        B4C5A690DAC4B1D3BDADD0BBACCCB5A9C5AFA3C8B1A5CFBBB0D4C2BADACCC5F4
        F0EEFFFFFEF5F5F5C8C6C24460B90033F55158CFFBFAFC000000FAF7F6E9E0DB
        E9DFDCF0E9E6F6F1EFFBF9F9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
        FEFDFDFEEEEEECABAAA64D62A23443ACEAE7EC000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFEFEFDFDFDFCFDFDFDFEFDFDFEFDFDFEFEFEFEFEFEFDFDFE
        FFFFFFE7EAEFB0B1BE8E8B7EB8B8B7000000FEFEFEFEFDFDFEFDFDFEFEFDFEFE
        FEFEFEFEFEFEFEFEFEFEFFFFFEFEFEFEFFFFFFFEFEFEFFFFFFFEFEFFFEFEFDFF
        FFFFF8FAFFCECED0E4E4E4000000}
    end
  end
  inherited ahmadvand: TActionList
    Top = 155
  end
  object ActionManager1: TActionManager
    Left = 205
    Top = 100
    StyleName = 'XP Style'
    object ARec: TDataSetPost
      Category = 'Dataset'
      Caption = #1576#1585#1583#1575#1588#1578
      Hint = 'Post'
      ImageIndex = 7
      ShortCut = 113
    end
    object Acancel: TDataSetCancel
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Cancel'
      ImageIndex = 8
      ShortCut = 32776
    end
    object asearchCheque: TAction
      Caption = '...'
      ShortCut = 114
    end
    object Action1: TAction
      Caption = 'Action1'
    end
  end
end
