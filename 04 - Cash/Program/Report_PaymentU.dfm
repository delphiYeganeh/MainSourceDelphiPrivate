inherited FrReport_Payment: TFrReport_Payment
  Left = 507
  Top = 207
  AutoScroll = False
  Caption = #1711#1586#1575#1585#1588' '#1578#1585#1575#1705#1606#1588
  ClientHeight = 458
  ClientWidth = 713
  Color = clBtnFace
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep2: TQuickRep [0]
    Left = 720
    Top = 112
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dm.Report_Payment
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
    object DetailBand2: TQRBand
      Left = 38
      Top = 184
      Width = 718
      Height = 60
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
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText3: TQRDBText
        Left = 660
        Top = 20
        Width = 54
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333320000
          1746.250000000000000000
          52.916666666666670000
          142.875000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
        DataField = 'PaymentID'
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
        Left = 186
        Top = 0
        Width = 1
        Height = 60
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
      object QRShape10: TQRShape
        Left = 660
        Top = 0
        Width = 1
        Height = 60
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
      object QRDBText4: TQRDBText
        Left = 1
        Top = 3
        Width = 90
        Height = 21
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
        DataSet = dm.Report_Payment
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
        Left = 93
        Top = 37
        Width = 90
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          246.062500000000000000
          97.895833333333320000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
        Left = 91
        Top = 0
        Width = 1
        Height = 60
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
      object QRShape14: TQRShape
        Left = 327
        Top = 0
        Width = 1
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          865.187500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Left = 329
        Top = 0
        Width = 329
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          870.479166666666800000
          0.000000000000000000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
      object QRLabel18: TQRLabel
        Left = 118
        Top = 5
        Width = 45
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          312.208333333333300000
          13.229166666666670000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0'
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
      object QRLabel19: TQRLabel
        Left = 19
        Top = 27
        Width = 45
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          82.020833333333320000
          50.270833333333330000
          71.437500000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '0'
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
      object QRDBText5: TQRDBText
        Left = 329
        Top = 20
        Width = 329
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          870.479166666666800000
          52.916666666666660000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
      object QRDBText7: TQRDBText
        Left = 329
        Top = 37
        Width = 329
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          870.479166666666800000
          97.895833333333340000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
        Left = 261
        Top = 0
        Width = 1
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          690.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText11: TQRDBText
        Left = 264
        Top = 4
        Width = 60
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          127.000000000000000000
          698.500000000000000000
          10.583333333333330000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
      object QRDBText12: TQRDBText
        Left = 188
        Top = 21
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          497.416666666666700000
          55.562500000000000000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment
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
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 86
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
        227.541666666666700000
        1899.708333333333000000)
      BandType = rbPageHeader
      object QRDBText9: TQRDBText
        Left = 571
        Top = 23
        Width = 68
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1510.770833333333000000
          60.854166666666680000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 15066597
        DataSet = dm.Report_Payment
        DataField = 'DocumentNo'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QrTitle: TQRLabel
        Left = 208
        Top = 8
        Width = 321
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          550.333333333333400000
          21.166666666666670000
          849.312499999999900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1711#1587#1578#1585#1588' '#1601#1606#1575#1608#1585#1575#1606' '#1575#1591#1604#1575#1593#1575#1578
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
      object QRLabel13: TQRLabel
        Left = 316
        Top = 48
        Width = 86
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          836.083333333333300000
          127.000000000000000000
          227.541666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1587#1606#1583' '#1581#1587#1575#1576#1583#1575#1585#1610
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
      object QRLabel14: TQRLabel
        Left = 641
        Top = 24
        Width = 63
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1695.979166666667000000
          63.500000000000000000
          166.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
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
      object QRLabel15: TQRLabel
        Left = 87
        Top = 48
        Width = 74
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333340000
          230.187500000000000000
          127.000000000000000000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '.......... '#1662#1610#1608#1587#1578
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
      object QRDBText10: TQRDBText
        Left = 572
        Top = 53
        Width = 68
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1513.416666666667000000
          140.229166666666700000
          179.916666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 15066597
        DataSet = dm.Report_Payment
        DataField = 'Date'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 646
        Top = 52
        Width = 36
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1709.208333333333000000
          137.583333333333300000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
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
      object Cashlogo: TQRImage
        Left = 2
        Top = 2
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
          5.291666666666667000
          185.208333333333300000)
        Stretch = True
      end
    end
    object QRBand2: TQRBand
      Left = 38
      Top = 244
      Width = 718
      Height = 35
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
        92.604166666666670000
        1899.708333333333000000)
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        Left = 323
        Top = 2
        Width = 71
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          854.604166666666700000
          5.291666666666667000
          187.854166666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1583#1610#1585' '#1589#1606#1583#1608#1602
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
      object QRLabel23: TQRLabel
        Left = 600
        Top = 3
        Width = 82
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          1587.500000000000000000
          7.937500000000000000
          216.958333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1606#1592#1610#1605' '#1705#1606#1606#1583#1607
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
    object ColumnHeaderBand2: TQRBand
      Left = 38
      Top = 124
      Width = 718
      Height = 60
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
        1899.708333333333000000)
      BandType = rbColumnHeader
      object QRLabel6: TQRLabel
        Left = 666
        Top = 4
        Width = 45
        Height = 49
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1762.125000000000000000
          10.583333333333330000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1585#1608#1586#1606#1575#1605#1607
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
      object QRShape2: TQRShape
        Left = 186
        Top = 0
        Width = 1
        Height = 60
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
        Left = 660
        Top = 0
        Width = 1
        Height = 60
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
      object QRLabel7: TQRLabel
        Left = 437
        Top = 9
        Width = 37
        Height = 34
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
      object QRLabel8: TQRLabel
        Left = 17
        Top = 1
        Width = 55
        Height = 31
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
      object QRLabel9: TQRLabel
        Left = 115
        Top = 0
        Width = 45
        Height = 31
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
        Left = 91
        Top = 0
        Width = 1
        Height = 60
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
        Left = 327
        Top = 0
        Width = 1
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          865.187500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 30
        Width = 187
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
        Left = 38
        Top = 33
        Width = 18
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          100.541666666666700000
          87.312500000000000000
          47.625000000000000000)
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
        Left = 133
        Top = 34
        Width = 18
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          351.895833333333400000
          89.958333333333340000
          47.625000000000000000)
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
        Left = 261
        Top = 0
        Width = 1
        Height = 60
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          690.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel12: TQRLabel
        Left = 264
        Top = 8
        Width = 60
        Height = 44
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          116.416666666666700000
          698.500000000000000000
          21.166666666666670000
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
      object QRLabel17: TQRLabel
        Left = 196
        Top = 4
        Width = 59
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          518.583333333333300000
          10.583333333333330000
          156.104166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1605#1576#1604#1594' '#1580#1586#1569
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
    end
    object QRGroup1: TQRGroup
      Left = 38
      Top = 184
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
      ForceNewPage = True
      Size.Values = (
        0.000000000000000000
        1899.708333333333000000)
      Expression = 'DocumentNo'
      Master = QuickRep2
      ReprintOnNewPage = False
    end
  end
  object FilterPanel: TPanel [1]
    Left = 0
    Top = 0
    Width = 713
    Height = 141
    Align = alTop
    TabOrder = 0
    DesignSize = (
      713
      141)
    object Label1: TLabel
      Left = 624
      Top = 10
      Width = 57
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
    end
    object Label2: TLabel
      Left = 624
      Top = 35
      Width = 56
      Height = 13
      Caption = #1586#1605#1575#1606' '#1662#1585#1583#1575#1582#1578
    end
    object Label3: TLabel
      Left = 624
      Top = 61
      Width = 20
      Height = 13
      Caption = #1605#1576#1604#1594
    end
    object Label4: TLabel
      Left = 624
      Top = 87
      Width = 29
      Height = 13
      Caption = #1578#1608#1590#1610#1581
    end
    object Label5: TLabel
      Left = 287
      Top = 10
      Width = 67
      Height = 13
      Caption = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
    end
    object Label6: TLabel
      Left = 287
      Top = 35
      Width = 87
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
    end
    object Label7: TLabel
      Left = 287
      Top = 61
      Width = 51
      Height = 13
      Caption = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578
    end
    object Label8: TLabel
      Left = 287
      Top = 87
      Width = 41
      Height = 13
      Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
    end
    object Label9: TLabel
      Left = 624
      Top = 113
      Width = 54
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
    end
    object Label10: TLabel
      Left = 287
      Top = 113
      Width = 36
      Height = 13
      Caption = #1705#1583' '#1585#1575#1610#1575#1606#1607
    end
    object SpeedButton1: TSpeedButton
      Left = 63
      Top = 56
      Width = 23
      Height = 22
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 63
      Top = 5
      Width = 23
      Height = 22
      OnClick = SpeedButton2Click
    end
    object YWhereEdit5: TYWhereEdit
      Left = 87
      Top = 6
      Width = 196
      Height = 21
      BiDiMode = bdLeftToRight
      Color = 16121568
      ParentBiDiMode = False
      TabOrder = 5
      OnKeyDown = GotoNext
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'InsertUserID'
      TableName = 'Payment'
      ListTable = 'Users'
      CodeField = 'UserID'
      TitleField = 'FullName'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit6: TYWhereEdit
      Left = 198
      Top = 31
      Width = 85
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clWhite
      ParentBiDiMode = False
      TabOrder = 6
      isLike = True
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'NoteNo'
      TableName = 'FinancialNote'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit7: TYWhereEdit
      Left = 87
      Top = 57
      Width = 196
      Height = 21
      BiDiMode = bdLeftToRight
      Color = 16121568
      ParentBiDiMode = False
      TabOrder = 7
      OnKeyDown = GotoNext
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'PayTypeID'
      TableName = 'Payment'
      ListTable = 'PayType'
      CodeField = 'PayTypeID'
      TitleField = 'PayTypeTitle'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit4: TYWhereEdit
      Left = 408
      Top = 83
      Width = 212
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 3
      isLike = False
      isDate = False
      EveryLike = True
      isString = True
      FieldName = 'Comment'
      TableName = 'Payment'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit3: TYWhereEdit
      Left = 535
      Top = 57
      Width = 85
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 2
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'Amount'
      TableName = 'Payment'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit2: TYWhereEdit
      Left = 535
      Top = 31
      Width = 85
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 1
      isLike = False
      isDate = False
      EveryLike = False
      isString = True
      FieldName = 'Time'
      TableName = 'Payment'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit9: TYWhereEdit
      Left = 198
      Top = 109
      Width = 85
      Height = 21
      BiDiMode = bdLeftToRight
      Color = clWhite
      ParentBiDiMode = False
      TabOrder = 9
      OnKeyDown = GotoNext
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'PaymentID'
      TableName = 'Payment'
      CodeField = 'UserID'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object YWhereEdit10: TYWhereEdit
      Left = 535
      Top = 109
      Width = 85
      Height = 21
      BiDiMode = bdLeftToRight
      ParentBiDiMode = False
      TabOrder = 4
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocumEntNo'
      TableName = 'Payment'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object MEDate: TSolarDatePicker
      Left = 535
      Top = 6
      Width = 85
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdRightToLeft
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
      ColorCaptionStart = 8957695
      ColorCaptionStop = clWhite
      ColorBodyStart = clWhite
      ColorBodyStop = clWhite
      ColorTodayLine = clBlack
      ColorSelectBrush = 12308991
      ColorDisableMonth = clGray
      ColorVacationDay = clRed
      ColorNormalDay = clBlack
      ColorStyle = csWhiteOrange
      ButtonStyle = bsRound
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object MEInsertDate: TSolarDatePicker
      Left = 198
      Top = 83
      Width = 85
      Height = 21
      Anchors = [akTop, akRight]
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdRightToLeft
      TabOrder = 8
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
      ColorCaptionStart = 8957695
      ColorCaptionStop = clWhite
      ColorBodyStart = clWhite
      ColorBodyStop = clWhite
      ColorTodayLine = clBlack
      ColorSelectBrush = 12308991
      ColorDisableMonth = clGray
      ColorVacationDay = clRed
      ColorNormalDay = clBlack
      ColorStyle = csWhiteOrange
      ButtonStyle = bsRound
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
  end
  object Panel2: TPanel [2]
    Left = 0
    Top = 141
    Width = 713
    Height = 276
    Align = alClient
    TabOrder = 3
    object YDBGrid1: TYDBGrid
      Left = 1
      Top = 1
      Width = 711
      Height = 274
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.DReport_Payment
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
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
          Width = 46
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Date'
          Title.Caption = #1578#1575#1585#1610#1582
          Title.Color = clSkyBlue
          Width = 68
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Time'
          Title.Caption = #1586#1605#1575#1606
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CreditorAccountTitle'
          Title.Caption = #1581#1587#1575#1576' '#1576#1587#1578#1575#1606#1705#1575#1585
          Title.Color = clSkyBlue
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DebtorAccountTitle'
          Title.Caption = #1581#1587#1575#1576' '#1576#1583#1607#1705#1575#1585
          Title.Color = clSkyBlue
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Amount'
          Title.Caption = #1605#1576#1604#1594
          Title.Color = clSkyBlue
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PayTypeTitle'
          Title.Caption = #1593#1604#1578
          Title.Color = clSkyBlue
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Title.Color = clSkyBlue
          Width = 118
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FullName'
          Title.Caption = #1705#1575#1585#1576#1585
          Title.Color = clSkyBlue
          Width = 71
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FinancialNoteAmount'
          Title.Caption = #1605#1576#1604#1594' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'FinancialNoteTypeTitle'
          Title.Caption = #1606#1608#1593' '#1587#1606#1583
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'InsertDate'
          Title.Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NoteNo'
          Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'MatureDate'
          Title.Caption = #1587#1585#1585#1587#1610#1583' '#1670#1705
          Title.Color = clSkyBlue
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'Paymentid'
          Title.Caption = #1705#1583' '#1585#1575#1610#1575#1606#1607
          Visible = False
        end>
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 417
    Width = 713
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      713
      41)
    object Button5: TBitBtn
      Left = 4
      Top = 6
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
    object Button4: TBitBtn
      Left = 140
      Top = 6
      Width = 106
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Excel'#1582#1585#1608#1580#1610' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
      Glyph.Data = {
        76050000424D7605000000000000360000002800000015000000150000000100
        18000000000040050000000000000000000000000000000000003C76531E4D35
        1F53381F5338205539184B33174931174931184A3115452E1038260F38270F38
        270F3A270B2E1E072A1B092B1C07291B062217082619081D170045815767C072
        52A26D51A0694E9E674C9D664B9D6647955F44935E438D5C418C593E8C563B87
        54317E4E3382502D7F4D297B4B277A4A2A774C158A420824190044825A6DAD7B
        A3B0ADBFC7C5B7C1BDB6C1BCB6C2BCB4BEBAB0BBB6B1BBB6B1BCB6B0BCB6AFBA
        B4ABB5B1AAB5B1ACB5B1AAB5AEB3BDB693969A2B784C0623170044835C6CB07D
        CAD7CFFFFFFCF2FAF0F1F9EFECF8ECEDF7ECEBF7E9E9F5E7E7F4E5E5F3E3E3F1
        E1E1F0E0E0F0DFDEEEDCDDEEDBE8FAE6B2BDB6267A4B07291A0049876072B283
        C2D0C8F7FBF5EAF1E9EAF3EAE6F1E6E4F0E6E4F0E4E1EFE1E0ECE0E6EFE4F4FC
        F4FBFFFAFCFFF9F8FFF7F6FFF5FCFFF9B0BCB5297B4B082C1C004B896277B487
        C6D3CCFFFFFFF9FBF6F7FCF5F6FBF3F2FAF1F0F9EEEEF9EDF0F9F0C3E4C9618D
        642E43343145343347362A4030506654959F9A348554072A1B004E8A6189C293
        AFCBB446824B002D0F082C15092D160D2C18112C1C192D26113519004F00358C
        361E82350D693324653E1A54324B6A5298A09D3888560A2D1D005691698CBE99
        C4D4C980B987268F41419C5C46985C4B915D528F66407B52126C1A55A65788C9
        904A9B5B2E894A1D833A25872BCFF1CBBFC2C3307D4B0F3B27005792688FC19A
        CDD9D4FCFDF88BBB8866B36A80C88878C07D52A654177E185FAA668BC6964E9F
        5743944D308B4705680F4D7E54E9F6E7B3BEB93B88540F39260059986C95C29F
        C8D7CEFFFFFFF5F7F578AF7956A65E52A25812731460A56788C59156A55C53A3
        593E9845005F071B712F1D6A32AAC7A6BDC7C33E8B56103925005F9C719DCAA7
        CCDAD0FFFFFDFAFBFBFAFAF984B6840A710E62A76895CD9E5DAC6552A4574E9C
        57458A4988AC8FA1BAA399BBA1D2E3CFB6C0BC418D5A10382600649E76A4CCAC
        CBD9D0FFFFFEFCFCFAFFFFFF89BD8E61A364A4D5AD67B16E5AAA635AA3603074
        355D925FFFFFFFF6FEF6EEF6ECEFFBEDB0BAB6448D5C15442F0065A076A5CDAD
        CADAD1FFFFFFFFFFFF85BD8B74B47FAED5B474BA7E66B26C5FA46458915E5A97
        5F246E2479AB78FBFBFCE1EEE1EBF6E9B2BDB845945F174A32006AA47AABCFB1
        CDDAD2FFFFFF88BE8F80BE86AAD6B279BE8272BD7A62A869558F596DB37770BC
        785DA3631B611C6CA76AFFFFFFEDF9ECB5C2BA4899621649300070A980B9DABF
        C9DCCD9ACBA08DC492B4DDBF80C38979C1836CB8756EA17179A37B60AD6875BE
        7F73C07C5EA56423672664A262FFFFFFB6C2BE4C9C651849330071AA80BBDCC3
        B6D4BB9DD1A29ECFA67CC0867DC0866EB47B70A675E4EEE3F4F5F380AC835EA7
        656CB47466B1704D94532364269CC89BC6CACE4C9E63184A330074AB82BFDFC7
        C4DAC9B4DAB792C69797C69996C49992B291E7EDE7FFFFFFFCFEFBECF0ECA0BD
        A098B89791B29D94AA959AB29CDEE7DCBEC6C34C9D651F55390077AE86BCDEC3
        D4E4D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFCFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEC5C350A0681E53380079B088B9D9C1
        A8C5AFD3E2D7CDDED1CEDFD3CEE0D2CCDCD1CAD9D0CBD9D0CCDACFC8D7CDC6D5
        CCC6D5CCC6D4CCC5D4CAC1D0C7CBD8CFA4B0AD53A36D1E5338007FB48DE2F5E5
        B9D9C0BEDEC4BCDEC3B6D9BCB7D9BCADD3B5A5CDACA4CDAD9DCBA696C29E91C1
        9A86BC9581BC8D7BB88871B2826CB07E6BAB7B68C0721C4E350074AE837FB58D
        79B18877AF8675AD8471A9806FA88069A37A6AA379629F75629F745B996E5792
        695691684E8B624D896249875E44835B45825A4482583D765300}
    end
    object Button3: TBitBtn
      Left = 250
      Top = 6
      Width = 105
      Height = 28
      Anchors = [akTop, akRight]
      Caption = 'Word '#1582#1585#1608#1580#1610' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = Button3Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000A8542A9F4A18
        A14916A249169D4816954514934311924312843D10843D0F7C3A0E75360F6F33
        0C70330C69300968310D4F220400C36B44BF7A5D9C664C9A634B97634C97634C
        9360488E5F448A5B448A5B4383563F80533E7F523C80523C7E523C8955396B33
        0E00C26B43BB8671FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFCFB
        FFF9F7FFF6F4FFF6F3FFF2EEFFFFFF87604C6A300900C1734BBF8C76FFFFFFFF
        FFFEFFFFFFFFFFFFFDF8F7FAF4F2FFFDFEFFFCFBFFF8F6F7EAE6F5E6E1F4E6E1
        FFF1ED875D4971330B00C47750BF8E78FFFFFFEBDED9AE8A78A88672F0E8E3FD
        F8F6A57E659C846F917E65FFF4F1F8E9E6F5E6E0FFF4F1875E4B71340E00C87A
        55BF8E78FFFFFFD9C6BEBE7255AB4C1C9E735BFFFFFF963E1283431D703208B6
        AB9CFFF5F2F7E8E5FFF5F28A5F4C77370F00CB815FC49581FFFFFFDCCBC3C886
        6AD5784C98522AE3D9D4AB5D38B85930A54B1F74593AFBF3F1F8EEEAFFF7F58A
        614D7E3B1000CF8563C79784FFFFFFDFCEC6D09276D5835EBC683FA0755CB873
        56BD6037BC5B316E3003C5B9ACFFF8F7FFFAF89468538A3F1200D48969C79885
        FFFFFFE1D1CAD7987EBE795ED993769E5A38BF7F66C76B3FC3683CBA61357358
        37FBF3F3FFFFFE9468548B411400D88F71CCA08DFFFFFFE6D2C9E1A48CAE735A
        BF7E62DB9072CD7954CB704995593DC46D487C4016C2BAAEFFFFFF956B559346
        1700DD9271CB9F8CFFFFFFECD5CDE3AA94B0735AC8B1A5D39A81D08566CE7A52
        A3664BB99282B3613783684BFFFFFF9F715E9A4B1B00DF9676CBA08EFFFFFFE3
        C5BBE6AD97B6785DEDE8E5CFA390E19E83D07D59B07054E1E1DDBE745678411B
        E6E2DEA274619B4B1B00E29C7FD1AC9CFCF4F2D58C6EEBBBA7DBA48DB3816DE4
        D9D2C98C71D8977EB78068F6E3DDBE7E65CE7C58A57F61A06D59A2502100E29B
        7ED1AE9FEDCBBEDB9C84DEA48CDDA088C98369F3E6E1D5A894D1896ACB8568E7
        C8BAC97958CC8263CD77529A624AA6522400E69F82CFA898FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAC
        7B66A5502100EAA385CAA291F1EBE8EEE4E0EEE4E0EDE3DEECE2DDECE2DEEAE0
        DCEBE1DBEBE1DDE9DED9E8DED9E8DED9EDE7E4A97862A7522200E8A184E6BCAB
        DEAD99DEAD99DEAE99DDAC98DAA28BDAA18BD79A80D5977DD09279CF8A6CCD84
        66D08060C57351D68463A6552500}
    end
    object Button2: TBitBtn
      Left = 360
      Top = 6
      Width = 106
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662' '#1575#1587#1606#1575#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    object Button6: TBitBtn
      Left = 470
      Top = 6
      Width = 118
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = Button6Click
      Glyph.Data = {
        42050000424D4205000000000000360000002800000016000000130000000100
        1800000000000C05000000000000000000000000000000000000FEDEABFB8C00
        FFA216FD9D0FFA9A0BFFA212FA9B11EA9112F59B12EE9313F59710FFA311FA9A
        0BFC9C0EFFA012F7970AFD9D0EFFA112F69709FF9F13FF9500FFC56F0000F1BD
        71CBCEF4FFFFFFECEBFFC5CAE8FFFFFFB6CDFF177AFF70CCFF3183FF84A9FFFF
        FFFFCBC8E7DDD8F9FFFFFFBDB5D5ECDFFFFFF8FFAFA2C3F9E6FFFFF1FFFF9500
        0000F4C47CD0C6D7FDF4F3F0DCDACEC1BEFFF8F1C8C7EE5595FF9DDAFF598AFD
        97A4EDFFFAE7D2BCBBDFCAC8FFEBEAC7ABAAEACFCDFFE3E1BC9B99F5D0CCF8E1
        FFFE9F110000F8C87FAEA9BABEB3B2BAB1B1B6ABACC6B9B18D93C6023FFF2156
        FF1A4CFB7D83CACFBAA7B6A4A5B9A6A6BFAAAAB49D9DBBA1A1BFA3A3B29696BE
        9C9BB1A3C3F697080000F3C37BD8D6E6FFFFFFFCF1F1D4CDCDFFFFFFD0D7FF4C
        8BFFA1DFFF5F92FF9CB0FCFFFFFFD8CACBE9D9D9FFFFFFCBB5B5F6E0E0FFF9F9
        BDA2A2FFE2E0FFF6FFFFA1110000F5C57CC8CADAEEEDECE3DCDCC8C5C4F6F1EC
        BAC4EF4180FF7FBCFF4A7DFD90A0EAFCF3E2CBBEBFD6C8C8F1E3E3C2AEAEDFCA
        CAF1DADAB99E9EE8CAC9E7D9F7FC9D0E0000F7C77EB6BBCCCCC9C8C6C4C4BBB9
        B8D5CFC799A6D60F4CFF3A6EFF2859FC828ED6DDCFBEBCB0B1C2B4B4CEBFBFB8
        A5A5C6B1B1CEB7B7B49B9BCAADABC1B5D5F8980A0000F3C37BD8E0F1FFFFFFFC
        FCFCD4D3D3FFFFFFD1DFFF4E8CFFA4E1FF6094FF9CB0FFFFFFFFD8CFCFE9DFDF
        FFFFFFCBB9B9F6E4E4FFFEFEBDA4A4FFE7E6FFFAFFFFA0110000F6C57EC0CADB
        E0DFDED7D7D7C3C3C2E7E5DEADBCE6326FFF67A2FF3D6FFD8A9AE7EEE8D9C5BC
        BCCDC3C3E2D8D8BEADADD4C1C1E2CECEB79F9FDBBFBDD7CBEBFA9A0C0000F6C5
        7EBEC9D9DBDAD9D3D3D3C1C1C0E2E0D9A5B3E21C58FF5087FF3366FD8898E4EA
        E3D4C2BABBCAC1C1DDD4D4BDADADD1BFBFDDC9C9B69F9FD7BBB9D2C7E6FA9A0C
        0000F3C27AD7E3F3FFFFFFFBFBFBD3D3D4FFFFFFD0DEFF508FFFA5E2FF6095FF
        9CB0FFFFFFFFD7D0D0E8E2E2FFFFFFCABBBBF6E6E6FFFFFFBDA6A6FFE8E7FFFA
        FFFFA1110000F7C67EBBC6D7D7D7D6CFCFCFC0C0BFDEDCD5A4B3DF2865FF5790
        FF3568FC8798E1E7E0D0C0B9B9C9BEBEDACFCFBBACACCEBBBBDAC5C5B69F9FD4
        B9B7CDC2E2FA9A0A0000F5C57DC4CEE0EDEDECDCDCDCC6C6C6F4F2EBAEBDED24
        61FF6098FF3C6EFD8FA1ECFBF4E5C9C2C2D5C9C9F0E1E1C1B1B1DEC9C9F0D6D6
        B9A0A0E6C7C5E3D3F3FD9C0C0000F4C27AD7E1F0FFFFFFF8F7F6D3D2D0FFFFFF
        CEDCFF4F8CFFA1DDFF5D91FF9BAFFFFFFFFFD6CFCEE8DFDEFFFFFFC9B9B8F5E2
        E1FFFBFABDA5A3FFE5E2FFF6FFFF9F100000F3C785AFCEFDD4E6FFC7DAF7B7C9
        E6DAEBFF98BEFF146DFF4699FF1A68FF779DFFE5ECF9B8C0DEC1C6E4D6D9F7B1
        B2CFC8C3E0D6CDEAABA2BECEBDD9CACDFFFA9D130000FEC773EB9613F1A024F0
        9F24F1A024F2A123E99C27D08B32D68F30D08B30E49727F5A221F19E21F09D22
        F19D22F09C20F19D20F19C1FF09B1FF0991DEC9C2AFE98000000FFCD80F9940D
        EE7900F18000F18000F07F00F38000F68200F58200F78200F38200F07F00F180
        00F18000F08000F18000F18000F08000F18100EF8000F48600FF95000000FFD0
        8DF8BC82F1AC63F3B16AF3B169F3B16AF3B169F3B169F3B169F3B169F3B169F3
        B16AF3B16AF3B16AF3B16AF3B16AF3B16AF3B169F3B16BF2B06BF5A136FE9A05
        0000FFEBCFFF9F16FFA014FFA219FFA219FFA219FFA219FFA219FFA219FFA219
        FFA219FFA219FFA219FFA219FFA219FFA219FFA219FFA219FFA419FFA115FFA1
        14FFDFB00000}
    end
    object MakeRep: TBitBtn
      Left = 595
      Top = 6
      Width = 105
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
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
  inherited ahmadvand: TActionList
    Left = 61
    Top = 251
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 63
    Top = 348
  end
end
