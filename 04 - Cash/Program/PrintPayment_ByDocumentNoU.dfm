inherited FQrPrintPayment_ByDocumentNo: TFQrPrintPayment_ByDocumentNo
  Left = 498
  Top = 262
  BorderStyle = bsDialog
  Caption = #1711#1586#1575#1585#1588' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1587#1606#1583
  ClientHeight = 541
  ClientWidth = 837
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep [0]
    Left = 840
    Top = 60
    Width = 1111
    Height = 1572
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = dm.Report_Payment_ByDocumentNo
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
    Units = MM
    Zoom = 140
    object PageHeaderBand1: TQRBand
      Left = 53
      Top = 53
      Width = 1005
      Height = 107
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 15066597
      ForceNewColumn = True
      ForceNewPage = False
      LinkBand = QRGroup1
      Size.Values = (
        202.217261904761900000
        1899.330357142857000000)
      BandType = rbTitle
      object QRLblTitle: TQRLabel
        Left = 243
        Top = 12
        Width = 518
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          81.264880952380950000
          459.241071428571400000
          22.678571428571430000
          978.958333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = '---------------------'
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
        Left = 449
        Top = 64
        Width = 106
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          848.556547619047600000
          120.952380952381000000
          200.327380952381000000)
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
      object QRLabel15: TQRLabel
        Left = 132
        Top = 64
        Width = 118
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          249.464285714285700000
          120.952380952381000000
          223.005952380952400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1662#1610#1608#1587#1578' .......... '
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
      object CashLogo: TQRImage
        Left = 3
        Top = 3
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
          5.291666666666667000
          185.208333333333300000)
        Stretch = True
      end
    end
    object ColumnHeaderBand1: TQRBand
      Left = 53
      Top = 160
      Width = 1005
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
        1899.330357142857000000)
      BandType = rbColumnHeader
    end
    object DetailBand1: TQRBand
      Left = 53
      Top = 307
      Width = 1005
      Height = 84
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
        158.750000000000000000
        1899.330357142857000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 927
        Top = 21
        Width = 71
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          1751.541666666667000000
          39.687500000000000000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
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
      object QRShape10: TQRShape
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
        DataSet = dm.Report_Payment_ByDocumentNo
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
        Top = 45
        Width = 126
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          246.062500000000000000
          84.666666666666680000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
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
      object QRShape14: TQRShape
        Left = 458
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
          865.187500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Left = 461
        Top = 1
        Width = 461
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          871.235119047619200000
          1.889880952380953000
          871.235119047619200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
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
        Top = 6
        Width = 63
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          312.208333333333400000
          10.583333333333330000
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
      object QRLabel8: TQRLabel
        Left = 27
        Top = 39
        Width = 63
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          50.270833333333330000
          74.083333333333340000
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
        Left = 461
        Top = 28
        Width = 461
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          870.479166666666800000
          52.916666666666660000
          870.479166666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
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
        Left = 461
        Top = 52
        Width = 461
        Height = 29
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
        DataSet = dm.Report_Payment_ByDocumentNo
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
        Left = 365
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
          690.562500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText7: TQRDBText
        Left = 370
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
          698.500000000000000000
          18.520833333333330000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
        DataField = 'Note_DetailNoteNo'
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
        Left = 263
        Top = 25
        Width = 98
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          497.416666666666700000
          47.625000000000000000
          185.208333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.Report_Payment_ByDocumentNo
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
    object PageFooterBand1: TQRBand
      Left = 53
      Top = 391
      Width = 1005
      Height = 49
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        92.604166666666670000
        1899.330357142857000000)
      BandType = rbPageFooter
      object QRLabel12: TQRLabel
        Left = 456
        Top = 7
        Width = 92
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          861.785714285714300000
          13.229166666666670000
          173.869047619047600000)
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
      object QRLabel18: TQRLabel
        Left = 840
        Top = 8
        Width = 115
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1587.500000000000000000
          15.875000000000000000
          216.958333333333400000)
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
    object QRGroup1: TQRGroup
      Left = 53
      Top = 160
      Width = 1005
      Height = 147
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 15329769
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        277.812500000000000000
        1899.330357142857000000)
      Expression = 'Report_Payment_ByDocumentNo.DocumentNo'
      Master = QuickRep1
      ReprintOnNewPage = False
      object QRShape11: TQRShape
        Left = 0
        Top = 66
        Width = 1004
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.458333333333300000
          0.000000000000000000
          124.354166666666700000
          1897.062500000000000000)
        Shape = qrsRectangle
      end
      object QRDBText11: TQRDBText
        Left = 802
        Top = 20
        Width = 97
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          1515.684523809524000000
          37.797619047619050000
          183.318452380952400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 15329769
        DataSet = dm.Report_Payment_ByDocumentNo
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
      object QRLabel1: TQRLabel
        Left = 916
        Top = 15
        Width = 80
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          1731.130952380952000000
          28.348214285714280000
          151.190476190476200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Color = 15329769
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
      object QRLabel17: TQRLabel
        Left = 714
        Top = 15
        Width = 50
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          1349.375000000000000000
          29.104166666666670000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
        Color = 15329769
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
      object QRDBText12: TQRDBText
        Left = 609
        Top = 20
        Width = 101
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          1150.937500000000000000
          37.797619047619050000
          190.877976190476200000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 15329769
        DataSet = dm.Report_Payment_ByDocumentNo
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
      object QRLabel2: TQRLabel
        Left = 932
        Top = 73
        Width = 63
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          129.645833333333300000
          1762.125000000000000000
          137.583333333333300000
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
        Left = 260
        Top = 65
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          491.369047619047700000
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape1: TQRShape
        Left = 924
        Top = 65
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
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRLabel4: TQRLabel
        Left = 679
        Top = 81
        Width = 52
        Height = 48
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333340000
          1283.229166666667000000
          153.458333333333300000
          97.895833333333340000)
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
        Top = 69
        Width = 77
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          45.357142857142850000
          130.401785714285700000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRLabel5: TQRLabel
        Left = 161
        Top = 69
        Width = 63
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          304.270833333333400000
          129.645833333333300000
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object QRShape3: TQRShape
        Left = 127
        Top = 65
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          240.014880952381000000
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 458
        Top = 65
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          865.565476190476200000
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 0
        Top = 104
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
          195.791666666666700000
          494.770833333333400000)
        Shape = qrsHorLine
      end
      object QRLabel10: TQRLabel
        Left = 50
        Top = 107
        Width = 28
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          94.494047619047620000
          202.217261904761900000
          52.916666666666680000)
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
        Left = 183
        Top = 110
        Width = 28
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          88.824404761904760000
          345.848214285714300000
          207.886904761904800000
          52.916666666666680000)
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
        Left = 365
        Top = 65
        Width = 1
        Height = 84
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          689.806547619047700000
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRLabel9: TQRLabel
        Left = 370
        Top = 69
        Width = 84
        Height = 76
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          698.500000000000000000
          129.645833333333300000
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
      object QRLabel3: TQRLabel
        Left = 274
        Top = 69
        Width = 83
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          518.583333333333400000
          129.645833333333300000
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
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 0
    Width = 837
    Height = 86
    Align = alTop
    TabOrder = 0
    DesignSize = (
      837
      86)
    object Label3: TLabel
      Left = 765
      Top = 11
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lBDocNo: TLabel
      Left = 6
      Top = 11
      Width = 3
      Height = 13
      Alignment = taCenter
    end
    object Label1: TLabel
      Left = 764
      Top = 39
      Width = 31
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1575#1586' '#1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 765
      Top = 63
      Width = 30
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575' '#1578#1575#1585#1610#1582
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DocNo: TYWhereEdit
      Left = 648
      Top = 9
      Width = 114
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      OnKeyDown = DocNoKeyDown
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocNo'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object YearStatus: TCheckBox
      Left = 492
      Top = 11
      Width = 149
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1601#1602#1591' '#1587#1606#1583' '#1607#1575#1610' '#1587#1575#1604' '#1580#1575#1585#1610
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 117
      Top = 55
      Width = 105
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 2
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 55
      Width = 105
      Height = 25
      Caption = #1606#1605#1575#1610#1588' '#1578#1605#1575#1605#1610' '#1575#1587#1606#1575#1583
      TabOrder = 3
      OnClick = BitBtn2Click
    end
    object FromDate: TSolarDatePicker
      Left = 648
      Top = 35
      Width = 113
      Height = 21
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      TabOrder = 4
      Enabled = True
      DateKind = dkSolar
      CheckInputOnExit = False
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
      ButtonStyle = bsRectangular
      DataFieldType = dftSolar
      DataFieldAutoSaveModified = False
    end
    object ToDate: TSolarDatePicker
      Left = 648
      Top = 59
      Width = 113
      Height = 21
      About = 'Created by : Mohamad Khorsandi'
      BiDiMode = bdLeftToRight
      TabOrder = 5
      Text = '1402/06/28'
      Enabled = True
      DateKind = dkSolar
      CheckInputOnExit = False
      Divider = dSlash
      ShowToDay = True
      MonthObject = moComboBox
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
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 500
    Width = 837
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      837
      41)
    object SpeedButton1: TSpeedButton
      Left = 189
      Top = 9
      Width = 24
      Height = 22
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000A9542AA24B19
        A24815A449159E4715964513934210934211853D0F853C0E7D390D76350E7032
        0B71320B6A2F086A310D4E210400C36A43BD7A5EA1715B9E6E599C6E599C6E59
        986B56946A519066529065518A604C875D4B865D49875C49865E4B87543A6A31
        0D00C26C43BB8670FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFCFA
        FFF8F6FFF5F3FFF5F2FFF1EDFFFFFE865E4A6B2F0800C2734BBF8C77FFFFFFFF
        FFFFFFFFFFFFFFFFFFFBFAFAF4F3FFFFFFFFFFFFFFFCFBF8EBE8F5E6E1F4E6E1
        FFF1ED865D4970320A00C57650C08D77FFFFFFE4D3CCA16E56946246E1D3CBFE
        FAF8905B3B816246735A3AF9EDEAF9EBE8F5E6E1FFF5F2875D4B71330D00C87B
        57BF8D78FFFFFFDAC7C0C3795BBA5828996B50FEFDFD9D43189348227D360CA5
        9A89FFF7F5F7E8E6FFF5F2885F4A78370D00CC8160C69682FFFFFFDDCCC4C988
        6DD579509F5026D4C3B9AF6341B95A30AA4E24694420F2E9E5F9F0EDFFF8F68C
        624E823B1000D18665C69783FFFFFFDFCDC6D29478D3835FC5724A945F42B976
        5CC06239C35F337E370CAEA090FFFAFAFFFCF99367528A3E1100D58A6BC99C88
        FFFFFFE1D1C9DA9A80B4735AD99377B86D4AC47C5EC96D41B4623BCE6C406843
        1FF1EAE8FFFFFF9467548C411300DA9070CBA08CFFFFFFE9D2CAE2A892B0735A
        B7846DD89479CD7B58CB724C955B40B6705290481CA99B89FFFFFF986D579748
        1900DD9271CA9F8BFFFFFFEED7CEE4AB95B07258DACDC6D39E86D68F70D07B54
        AA6B4FC8B1A6BE6A436C4925FFFFFFA0725F9A4A1A00E19A7CCDA492FFFFFFD8
        A591E8B39EC1846BDDCAC0D6BAAEDB9D83D08564B27459F3F6F5B5765DA2542D
        AFAD9FA274619C4C1C00E29B7ED2AF9FEBC8BBD68A6CE5AD96E3A68CAC674CE9
        DBD5C5886DD78F72BC7A60E9C6B7C77454D18261C16C4398614AA6512300E59D
        80D0AA99FDF5F2F2DDD5F0DAD1F0D8CFF1D6CDFDF9F8F3E5DEECCFC3EED1C5F6
        ECE6E9CABDE9CBBEF0D2C7A4705AA54F2100E8A082CEA897FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA
        7A66A6502000EBA587D0A997CEA997CEA896CFA997CCA492CB9E8ACB9E8BC596
        82C59682C49581BF8C76BF8B75C08A73B9826CBC7B60A8552300E1916FEBA487
        E7A082E69F82E39C7FE39C7EDB9578DA9277DA8E6DD58868D08362CF805CCA79
        54C9744EC36F47C46F46AA5B3000}
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 218
      Top = 9
      Width = 26
      Height = 22
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAFAFAEEEEEEC7C7C7999999A1A1A1EBEBEBF9F9F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
        E8E8D3D3D3B8B8B8B2B2B2D4D4D4E3E3E37F7F7F6969698E8E8EB1B1B1D8D8D8
        EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBBBBBBBBABABAC9C9
        C9E5E5E5FAFAFAFFFFFFE5E5E59191917878787373737A7A7A858585929292B6
        B6B6D9D9D9FFFFFFFFFFFFFFFFFFCECECEBDBDBDDEDEDEF4F4F4FFFFFFFFFFFF
        FEFEFEFEFEFEDBDBDB9595957F7F7F6C6C6C6A6A6A6E6E6E7878787F7F7F8383
        838E8E8EB3B3B3F5F5F5CECECEFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D9D9D9C1
        C1C1A4A4A47878787979798383838383837575756767676161617272727C7C7C
        767676717171D1D1D1FFFFFFFAFAFAE9E9E9CACACAB9B9B9C4C4C4DBDBDBDDDD
        DDA7A7A78C8C8C8080807676767A7A7A8282828282826B6B6B60606084848476
        7676D0D0D0E8E8E8CECECEC6C6C6DADADAE9E9E9E9E9E9E8E8E8D8D8D8BABABA
        AFAFAFA8A8A8A1A1A19595957E7E7E7474747F7F7F8586858E8E8E787878CCCC
        CCD8D8D8E7E7E7EEEEEEE8E8E8E1E1E1DCDCDCD9D9D9DFDFDFDFDFDFD0D0D0C6
        C6C6BABABAAEAFAEABACABA2A1A2958D94877E857E7D7D757575D2D2D2EDEDED
        E7E7E7E1E1E1DEDEDED7D7D7D1D1D1DEDEDEECECECECECECE9E9E9E2E3E2E6E2
        E6F1E5F1F3E3F4DFCEDDA0BCA591AC94ACA7AA7A787AD0D0D0EAEAEAE2E2E2D9
        D9D9D2D2D2E0E0E0FBFBFBFFFFFFFFFFFFF6F6F5F2EFF2FFFFFFF6F2F677A878
        468C454D8E536CC8807BEB8F9CC8A2817C81D3D3D3BFBFBFCFCFCFDADADAE4E3
        E39F9FA080818298999BBABBBCDAD9DBFBF7FB5FAC5F006B00007B00087C0020
        70000955003E8034A8AFA8DCD8DDF7F7F7C2C2C2BFBFBFD1D1D1A5AAAC8C7E70
        A7988888807876736FA994A857A759008B0005A50A49C55C15AC23009400148A
        001A64002F7821F6FDF7FFFFFFFFFFFFF9F9F9F1F0F0A5A8ACDCC8B0FFF0D0F3
        DABBE4CBB2DBC8BE008A0000A60A79CB83FDFDFFC5F0D600A10C009300148A00
        0A5E00A4C7A3FFFFFFFFFFFFFFFFFFFFFFFFAEAEADECD7C5FFEBD3FFE5CAFFF7
        EB7BAE661CB7376FC174FFF3FFFFF8FFFFFFFFB4EBC509A81F0093001779003C
        8433FFFFFFFFFFFFFFFFFFF6F7F79E9B97FFFAE8FFE9D7FFE6CFFFFBFB379A2F
        53CE6EADC3A3CFDAC916AB219AD89FFFFFFFB6EAC500A40C118600147006FFFF
        FFFFFFFFFFFFFFB9B9BAD0CBC3FFFCEFFFEFE2FFECDBFFFDFF52A14261DC8C15
        B13514B33515B93F00A7169DD9A4FFFFFFC3F4D718A01E207F16FFFFFFFFFFFF
        F0F0F0AEAEADF9FBF8FFF6EEFFF4EBFFF1E6FFF7F3C2D5B12AB74853DB8425C8
        592CC55920BB4800AA1D9DD59DF9FFFF47AB5071B06EFFFFFFF6F6F6B8B8B8E8
        E7E7FFFFFFFFFFFDFFFDFAFFF8F2FFF3E9FFFFFF3CAD3E5BD1824FD8832EC960
        21BE4C17B53713AA2039B242148F15E6F0E5FFFFFFE6E6E6C8C8C8DDDDDDDFDF
        DFDCDEDEEAEAEAFEFDFCFFFFFEFFFFFFBFCCB74BAE543AC05945D17534CA621B
        BC41009D0B029106A6D3A5FFFFFFFFFFFFFEFEFEFAFAFAF3F3F3F2F2F2F0F0F0
        ECECECE4E5E5DFE0E1DCDCDCEBE6E9F3F9F1C4E5C49CD5A188CE8F89CE8EABD9
        ADE9F2E7FFFFFFFFFFFF}
      OnClick = SpeedButton2Click
    end
    object SpeedButton3: TSpeedButton
      Left = 248
      Top = 9
      Width = 24
      Height = 22
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000000000000000000000000000000000003A734F235C3A
        1F5C3A1F5C3A18533317513217513213482C0E40270E40280C3D2406341C0633
        1C032E1B06331D0720174B8D5C77BB8682B2947EB08F7DB18F7BAD8B75A68675
        A48674A68470A18168997C699C7D65997A69987E3E916107321D44865B96BFA1
        F3EEF1ECF0EAE9EFE8E7EDE7E5ECE3E2EBE1E1EAE0DFE8DDDEE8DDDCE7DADCE8
        D9E4EADF68987E032E1A4A8B6197C0A4FBFBF9FCFFF9F8FFF6F4FDF4F3FDF1EF
        FBEEEFF9EDE9F2E8E8E8E6E8EBE5E4ECE3E6E7E4669D7C05341C4F8E64A1C9AA
        B9CFBB8E9C91919E93909D93909D9398A19B7CA4803B7E3D083F19133E230A2E
        1A5464576B9D7F09362058946AAECFB679AE7E0059141C683521613531604512
        4A230F66126FBA74308F4A1D7F41157623C1D2BE749F850B3E245B976CAFCDB8
        FFFFFF87BE866ABB7183CB8A46A0482C8D3186C49159A7623B9149076F183272
        3AF8FCF574A5850D4126609E72AFCEB7F9F9FAFCFAFC86B98838903D27802A87
        C19060AD6650A258308435347A3F387D4CC7D5C27EAE8F0F402569A37AB7D3BD
        F5F7F5FFFFFFE1EDE33E8D4092C89A6DB67657A85D337D3988AE8AF3F5F4DCE9
        DCE5ECE276A48713462C6BA57BB8D3BEFBFAFDF2F7F275B47E9FCBA67CBE855E
        AB645B9760528F56367935D5E5D4F6FCF6E6EDE477A98717523373AB82C2D8C7
        E8F0E979B7819BCEA384C68E6BBA7358935C61A36878C5814F9855246F25C7DE
        C6F7F8F77BB08C1752327BB189C6DECA9BCCA196CB9E88C8936EBA7B66A96DC5
        D5C48AB58D5DAC666CBC76418F481C681DD7E6D886B6971752337EB28AC8E1CF
        B6D9B98CC3928DC18F81AD83DAE4DAFFFFFFF4F5F496B9978BB28E88A88E809F
        82DDE5DB85B6951E5B387FB48EC3DDC9F4F5F5FFFEFFFFFFFFFFFFFFFAFAFCF6
        F7F5F9F9F8FFFEFFFFFFFFFFFFFFFFFFFFF5EFF582B1911F5B3A8DBC99CCE3D0
        C4DCC9C6DFCCC3DDC8C0DAC5B7D3BDB6D3BDB1CEB6AACAB1A2C8AC9FC7A796C1
        A197BFA177BB85225D3B7AB1878CBE9980B68E7DB28B78AF8772AB826FA77E68
        A47A63A0745B986D5693684F8F634B8B6044865B4A8D5D3A734F}
      OnClick = SpeedButton3Click
    end
    object SpeedButton4: TSpeedButton
      Left = 276
      Top = 9
      Width = 25
      Height = 22
      Anchors = [akTop, akRight]
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FBCB87FB970F
        FCA31EF9A01AFDA41EDB8F1EE8981EE7931EFFA91CF79C19FFA520F39815FFA8
        21F19716FF9E14FFB953E5BE8CE7F5FFF0F4FFD8E1FDE3F0FF228FFF54BBFF5A
        95FFFFFFFFCCCDFAFDFFFFC3BCE9FFFFFFB5AAD1FFFEFFFFA833E9C189CAC2D1
        D2C3C0CDBFB6CAC0D0306CFF4A80FF6B7DE1EBD6B7C1ABA9DAC3C1BEA19EDDBF
        BCB99792D2BBD7F0A136EBC38BD6D7E7E5DBDAD5CCC8D8D6E83473FF5C96FF73
        8CF1F2E6D5CEBCBEE4DDDDC9AFB0ECDDDDBDA2A0E7D9EDF6A937EBC38CE2E7F6
        EEE6E5DDD9D4E6E5F85092FF74B1FF7791F5FFFAE1D0C1C4F5E9E9CAB4B4FAE7
        E7C1A4A2F4E5FFFBAC3EE8C38BBCC2D1C6C4C3C5C0B8BCBDCE0D4BFF2C60FF61
        78E0E3D1B5BAADB0CCBEBEB8A3A3CEB9B9B49A98C3B5D1EC9C30ECC690EAF3FF
        FBFBF9E2DFDCEFF4FF5998FF86C3FF7F9BFFFFFFF2DAD1D1FBF9F9D3BEBEFFFE
        FEC4AAAAFFFAFFFFB23EE9C38DC7D0DFD1D0CECCCAC2C7CBDB2562FF407AFF66
        7FEAEFE3C8BEB5B6D9CECEBCAAAADCC6C6B89E9DD0C1E0F0A035EAC58FE1EBFA
        EFEFEDDBD9D6E3E7F64483FF6FAAFF7894FAFDF6E6D2CBCCF1EFEFCCBBBBF9F0
        F0C1A9A8F5EBFFFBAD3CEAC58DCDD7E6D9D8D8D0CEC8CFD3E13775FF548FFF6D
        88EDF0E6D0C5BDBEDFD7D7C1AFAFE3D3D3BBA3A1DACFE9F4A535E9C38DD6E0EF
        DCDBDAD7D4CCD4D8EA2462FE4A81FF6D88F0FEF2D7C8BEBEEBDBDAC4B2B1EFD5
        D5BDA29FE4D1EFF7A538EAC693E5F7FFF3F9FFDDE1E8E8F4FF4B95FF76BCFF74
        9AFFFFFFFFD5D2DDF7FCFFCCBFC9FFFDFFBFACB4FEF9FFFEB141E9C388C9C4B8
        D1C7B3D1C4ACC8C3B94C76BD5A80BC7C89BAECD4ADC6B2A1D9C2B0C4AB98DBBB
        A7C2A18CD0B7B9F2A12EFEBE5DF28000F28400F48600F48600F28300F28300F4
        8600F48600F48600F28500F48600F28500F58700F08600FC9300FECA83F1A357
        F0A152F1A352F1A352F4A552F4A552F3A452F0A254F1A353F0A353F1A354F0A3
        53F1A457F09E44FD9200FFDCACFE9C0FFEA420FEA421FEA421FEA421FEA421FE
        A421FEA421FEA421FEA421FEA421FEA421FEA621FE9E10FFD08A}
      OnClick = SpeedButton4Click
    end
    object xpBitBtn1: TBitBtn
      Left = 596
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = xpBitBtn1Click
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B004000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFAFAFAEEEEEEC7C7C7999999A1A1A1EBEBEBF9F9F9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8
        E8E8D3D3D3B8B8B8B2B2B2D4D4D4E3E3E37F7F7F6969698E8E8EB1B1B1D8D8D8
        EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBDBDBBBBBBBBABABAC9C9
        C9E5E5E5FAFAFAFFFFFFE5E5E59191917878787373737A7A7A858585929292B6
        B6B6D9D9D9FFFFFFFFFFFFFFFFFFCECECEBDBDBDDEDEDEF4F4F4FFFFFFFFFFFF
        FEFEFEFEFEFEDBDBDB9595957F7F7F6C6C6C6A6A6A6E6E6E7878787F7F7F8383
        838E8E8EB3B3B3F5F5F5CECECEFEFEFEFFFFFFFFFFFFFFFFFFF6F6F6D9D9D9C1
        C1C1A4A4A47878787979798383838383837575756767676161617272727C7C7C
        767676717171D1D1D1FFFFFFFAFAFAE9E9E9CACACAB9B9B9C4C4C4DBDBDBDDDD
        DDA7A7A78C8C8C8080807676767A7A7A8282828282826B6B6B60606084848476
        7676D0D0D0E8E8E8CECECEC6C6C6DADADAE9E9E9E9E9E9E8E8E8D8D8D8BABABA
        AFAFAFA8A8A8A1A1A19595957E7E7E7474747F7F7F8586858E8E8E787878CCCC
        CCD8D8D8E7E7E7EEEEEEE8E8E8E1E1E1DCDCDCD9D9D9DFDFDFDFDFDFD0D0D0C6
        C6C6BABABAAEAFAEABACABA2A1A2958D94877E857E7D7D757575D2D2D2EDEDED
        E7E7E7E1E1E1DEDEDED7D7D7D1D1D1DEDEDEECECECECECECE9E9E9E2E3E2E6E2
        E6F1E5F1F3E3F4DFCEDDA0BCA591AC94ACA7AA7A787AD0D0D0EAEAEAE2E2E2D9
        D9D9D2D2D2E0E0E0FBFBFBFFFFFFFFFFFFF6F6F5F2EFF2FFFFFFF6F2F677A878
        468C454D8E536CC8807BEB8F9CC8A2817C81D3D3D3BFBFBFCFCFCFDADADAE4E3
        E39F9FA080818298999BBABBBCDAD9DBFBF7FB5FAC5F006B00007B00087C0020
        70000955003E8034A8AFA8DCD8DDF7F7F7C2C2C2BFBFBFD1D1D1A5AAAC8C7E70
        A7988888807876736FA994A857A759008B0005A50A49C55C15AC23009400148A
        001A64002F7821F6FDF7FFFFFFFFFFFFF9F9F9F1F0F0A5A8ACDCC8B0FFF0D0F3
        DABBE4CBB2DBC8BE008A0000A60A79CB83FDFDFFC5F0D600A10C009300148A00
        0A5E00A4C7A3FFFFFFFFFFFFFFFFFFFFFFFFAEAEADECD7C5FFEBD3FFE5CAFFF7
        EB7BAE661CB7376FC174FFF3FFFFF8FFFFFFFFB4EBC509A81F0093001779003C
        8433FFFFFFFFFFFFFFFFFFF6F7F79E9B97FFFAE8FFE9D7FFE6CFFFFBFB379A2F
        53CE6EADC3A3CFDAC916AB219AD89FFFFFFFB6EAC500A40C118600147006FFFF
        FFFFFFFFFFFFFFB9B9BAD0CBC3FFFCEFFFEFE2FFECDBFFFDFF52A14261DC8C15
        B13514B33515B93F00A7169DD9A4FFFFFFC3F4D718A01E207F16FFFFFFFFFFFF
        F0F0F0AEAEADF9FBF8FFF6EEFFF4EBFFF1E6FFF7F3C2D5B12AB74853DB8425C8
        592CC55920BB4800AA1D9DD59DF9FFFF47AB5071B06EFFFFFFF6F6F6B8B8B8E8
        E7E7FFFFFFFFFFFDFFFDFAFFF8F2FFF3E9FFFFFF3CAD3E5BD1824FD8832EC960
        21BE4C17B53713AA2039B242148F15E6F0E5FFFFFFE6E6E6C8C8C8DDDDDDDFDF
        DFDCDEDEEAEAEAFEFDFCFFFFFEFFFFFFBFCCB74BAE543AC05945D17534CA621B
        BC41009D0B029106A6D3A5FFFFFFFFFFFFFEFEFEFAFAFAF3F3F3F2F2F2F0F0F0
        ECECECE4E5E5DFE0E1DCDCDCEBE6E9F3F9F1C4E5C49CD5A188CE8F89CE8EABD9
        ADE9F2E7FFFFFFFFFFFF}
    end
    object Button5: TBitBtn
      Left = 5
      Top = 7
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
    object EditBtn: TBitBtn
      Left = 676
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1608#1610#1585#1575#1610#1588' '
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = EditBtnClick
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
    object DelBtn: TBitBtn
      Left = 756
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = DelBtnClick
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000A9A8E20E13B3
        2E31B8A5A4DEFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B7CCC8989
        D0F5F3F8FCFBFDFFFFFFFFFFFF000412C2154EFF0F3EE50009B9484BC3D5D3EF
        FFFFFFFFFFFFFFFFFFF9F7FB6365C7001BCD0010BE0B16AE585BC3E5E4F4FFFF
        FF001D49F61E53FF1A4CFE194DF90627D1232BB8B4B1E6FFFFFFFFFFFF595AC2
        0322D40B3EF60C3EF20432E30015BE494CBAFDFCFD001320CB275BFF2051FF1D
        50FF1C4EFD0E39DC0D18B2B2AEE45D58BD0225DA1044FB1041F60D3DF40C3CF4
        0837EB000AB2A6A6DB003336CA2C62FF2657FF2455FF2355FF2051FF1747EB00
        04AA082ADE174FFF1546F91343F71040F50E3EF40B3FF80025DF494CBD000F15
        C8356BFD3367FF2A5BFF295AFF2758FF2254FE1E52FC1D50FF1A49FC1747FA14
        45F81343F70F42FA032BE4242CBEBBBAE7009696E22D3CD52850EE3D71FF2F5F
        FF2A5BFF2859FF2556FF2051FF1C4DFE194BFD1748FB164BFF0224D8494DC3DC
        DAEEFFFFFF00FFFFFFD0CEF25053CF162ED64981FF3365FF2C5EFF2A5AFF2657
        FF2051FE1C4EFE1D55FF001CD75D5DCAF5F4F8FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFA3A0E0070FC04173FF3364FF2F5FFF295AFF2657FF2255FF0421D45B59
        C9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0911C1447AFF
        3767FF3463FF2F5FFF2959FF2356FE123BDE1F24B5FEFCFEFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF6D67D2345CF24476FF3C6CFF3768FF3769FF2E5EFF
        2959FF2256FF0427CA5C58CAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFEFEDFB2C
        32CC4F84FF4473FF3F6EFF4074FF2A4FEC4076FF2C5DFF2657FF1A4FF7091DBA
        9E9ADEFFFFFFFFFFFF00FFFFFFFFFFFF9692E43E5EED5282FF4977FF4779FF27
        50F0191AB71831D73B72FF2A5BFF2254FF0F3CE4242CBED7D5F3FFFFFF00FFFF
        FFFDFCFE5558DA4A77F55382FF4E7EFF3A6AFA2026C9FFFFFF807EDC1D36DC34
        67FF2557FF1E50FD0125D14D4FC9FEFDFF00FFFFFFC8C6F34A5EE85E8CFD5582
        FF4D7EFF1F37DDAEADECFFFFFFFFFEFF7071DC2241E32D62FF1F4FFF1949F200
        11BEA6A5E200FFFFFFCFCDF73743DE6492FC6DA1FF355EF25B5CDCFAF9FDFFFF
        FFFFFFFFF7F5FC5556CF2147EB285FFF1E57FF0938E80E10B800FFFFFFFFFFFF
        C9C8F73E40DD2235D93846DEC7C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFDFD393A
        C61C44EE0A1DD23A3ECFBEBEEE00}
    end
    object BitBtn3: TBitBtn
      Left = 345
      Top = 7
      Width = 246
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1581#1584#1601' '#1575#1587#1606#1575#1583' '#1580#1605#1593#1610' '#1608#1575#1576#1587#1578#1607' '#1576#1607' '#1587#1606#1583' '#1580#1575#1585#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn3Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000A9A8E20E13B3
        2E31B8A5A4DEFEFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7B7CCC8989
        D0F5F3F8FCFBFDFFFFFFFFFFFF000412C2154EFF0F3EE50009B9484BC3D5D3EF
        FFFFFFFFFFFFFFFFFFF9F7FB6365C7001BCD0010BE0B16AE585BC3E5E4F4FFFF
        FF001D49F61E53FF1A4CFE194DF90627D1232BB8B4B1E6FFFFFFFFFFFF595AC2
        0322D40B3EF60C3EF20432E30015BE494CBAFDFCFD001320CB275BFF2051FF1D
        50FF1C4EFD0E39DC0D18B2B2AEE45D58BD0225DA1044FB1041F60D3DF40C3CF4
        0837EB000AB2A6A6DB003336CA2C62FF2657FF2455FF2355FF2051FF1747EB00
        04AA082ADE174FFF1546F91343F71040F50E3EF40B3FF80025DF494CBD000F15
        C8356BFD3367FF2A5BFF295AFF2758FF2254FE1E52FC1D50FF1A49FC1747FA14
        45F81343F70F42FA032BE4242CBEBBBAE7009696E22D3CD52850EE3D71FF2F5F
        FF2A5BFF2859FF2556FF2051FF1C4DFE194BFD1748FB164BFF0224D8494DC3DC
        DAEEFFFFFF00FFFFFFD0CEF25053CF162ED64981FF3365FF2C5EFF2A5AFF2657
        FF2051FE1C4EFE1D55FF001CD75D5DCAF5F4F8FFFFFFFFFFFF00FFFFFFFFFFFF
        FFFFFFA3A0E0070FC04173FF3364FF2F5FFF295AFF2657FF2255FF0421D45B59
        C9FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF0911C1447AFF
        3767FF3463FF2F5FFF2959FF2356FE123BDE1F24B5FEFCFEFFFFFFFFFFFFFFFF
        FF00FFFFFFFFFFFFFFFFFF6D67D2345CF24476FF3C6CFF3768FF3769FF2E5EFF
        2959FF2256FF0427CA5C58CAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFEFEDFB2C
        32CC4F84FF4473FF3F6EFF4074FF2A4FEC4076FF2C5DFF2657FF1A4FF7091DBA
        9E9ADEFFFFFFFFFFFF00FFFFFFFFFFFF9692E43E5EED5282FF4977FF4779FF27
        50F0191AB71831D73B72FF2A5BFF2254FF0F3CE4242CBED7D5F3FFFFFF00FFFF
        FFFDFCFE5558DA4A77F55382FF4E7EFF3A6AFA2026C9FFFFFF807EDC1D36DC34
        67FF2557FF1E50FD0125D14D4FC9FEFDFF00FFFFFFC8C6F34A5EE85E8CFD5582
        FF4D7EFF1F37DDAEADECFFFFFFFFFEFF7071DC2241E32D62FF1F4FFF1949F200
        11BEA6A5E200FFFFFFCFCDF73743DE6492FC6DA1FF355EF25B5CDCFAF9FDFFFF
        FFFFFFFFF7F5FC5556CF2147EB285FFF1E57FF0938E80E10B800FFFFFFFFFFFF
        C9C8F73E40DD2235D93846DEC7C4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFDFD393A
        C61C44EE0A1DD23A3ECFBEBEEE00}
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 86
    Width = 837
    Height = 414
    Align = alClient
    TabOrder = 3
    object YDBGrid: TYDBGrid
      Left = 1
      Top = 1
      Width = 835
      Height = 412
      Align = alClient
      Color = clSilver
      DataSource = DataSource1
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -9
      TitleFont.Name = 'Nazanin'
      TitleFont.Style = [fsBold]
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
          FieldName = 'PaymentID'
          Title.Alignment = taCenter
          Title.Caption = #1705#1583' '
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'documentno'
          Title.Alignment = taCenter
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
          Title.Alignment = taCenter
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
          Title.Alignment = taCenter
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
          FieldName = 'CREDITORACCOUNTTITLE'
          Title.Alignment = taCenter
          Title.Caption = #1581#1587#1575#1576' '#1576#1587#1578#1575#1606#1705#1575#1585
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEBTORACCOUNTTITLE'
          Title.Alignment = taCenter
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
          Title.Alignment = taCenter
          Title.Caption = #1605#1576#1604#1594
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTE_DETAILFINANCIALNOTETYPETITLE'
          Title.Alignment = taCenter
          Title.Caption = #1593#1604#1578
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Comment'
          Title.Alignment = taCenter
          Title.Caption = #1578#1608#1590#1610#1581#1575#1578
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 102
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOTE_DETAILNOTENO'
          Title.Alignment = taCenter
          Title.Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FULLNAME'
          Title.Alignment = taCenter
          Title.Caption = #1705#1575#1585#1576#1585
          Title.Color = clSkyBlue
          Title.Font.Charset = ARABIC_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Visible = False
        end>
    end
  end
  inherited ahmadvand: TActionList
    Left = 437
    Top = 83
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 439
    Top = 133
  end
  inherited qSetting: TADOQuery
    Left = 8
    Top = 8
  end
  object ADOQDoclist: TADOQuery
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT     PAYMENT.*,        '
      
        '           CREDITORACCOUNT.ACCOUNTTITLE AS CREDITORACCOUNTTITLE,' +
        '        '
      
        '           DEBTORACCOUNT.ACCOUNTTITLE   AS DEBTORACCOUNTTITLE,  ' +
        '      '
      
        '           RTRIM(PAYTYPE.PAYTYPETITLE) +  (CASE WHEN PAYMENT.PAY' +
        'TYPEID = 3 THEN ( SELECT '#39' - '#1602' '#1588' '#39'+(CAST(ORDERNO AS NVARCHAR(10)' +
        '))AS ORDERNODESC FROM FORCEPAYMENT WHERE FORCEPAYMENT.PAYMENTID ' +
        '= PAYMENT.PAYMENTID ) END) AS PAYTYPETITLE,        '
      
        '           FINANCIALNOTE.NOTENO, FINANCIALNOTE.MATUREDATE, FINAN' +
        'CIALNOTE.AMOUNT FINANCIALNOTEAMOUNT,FINANCIALNOTETYPE.FINANCIALN' +
        'OTETYPETITLE,        '
      '           USERS.FULLNAME,    '
      '           ISNULL(COMMENT,PAYTYPETITLE) COMMENT2 ,     '
      
        '           FINANCIALNOTE_DETAIL.AMOUNT AS NOTE_DETAILAMOUNT,    ' +
        ' '
      
        '           FINANCIALNOTE_DETAIL.NOTENO AS NOTE_DETAILNOTENO,    ' +
        ' '
      '           FINANCIALNOTE_DETAIL.NOTEDATE AS DETAILNOTEDATE,     '
      
        '           FINANCIALNOTESTATUS.FINANCIALNOTESTATUSDESC AS STATUS' +
        'FINANCIALNOTESTATUSDESC,     '
      
        '           FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID AS MASTERFIN' +
        'ANCIALNOTETYPEID,     '
      
        '           PayType.PayTypeTitle AS NOTE_DETAILFINANCIALNOTETYPET' +
        'ITLE    '
      'FROM                  FINANCIALNOTE_MASTER INNER JOIN  '
      
        '                      FINANCIALNOTE_DETAIL ON FINANCIALNOTE_MAST' +
        'ER.FINANCIALNOTE_MASTERID = FINANCIALNOTE_DETAIL.FINANCIALNOTE_M' +
        'ASTERID INNER JOIN  '
      
        '                      FINANCIALNOTESTATUS ON FINANCIALNOTE_DETAI' +
        'L.NOTESTATUSID = FINANCIALNOTESTATUS.FINANCIALNOTESTATUSID INNER' +
        ' JOIN  '
      '                      FINANCIALNOTETYPE FINANCIALNOTETYPE ON   '
      
        '                      FINANCIALNOTE_MASTER.FINANCIALNOTETYPEID =' +
        ' FINANCIALNOTETYPE.FINANCIALNOTETYPEID RIGHT OUTER JOIN  '
      '                      PAYMENT INNER JOIN  '
      
        '                      PAYTYPE ON PAYMENT.PAYTYPEID = PAYTYPE.PAY' +
        'TYPEID INNER JOIN  '
      
        '                      ACCOUNT CREDITORACCOUNT ON PAYMENT.CREDITO' +
        'RACCOUNTID = CREDITORACCOUNT.ACCOUNTID INNER JOIN  '
      
        '                      ACCOUNT DEBTORACCOUNT ON PAYMENT.DEBTORACC' +
        'OUNTID = DEBTORACCOUNT.ACCOUNTID ON   '
      
        '                      FINANCIALNOTE_DETAIL.FINANCIALNOTE_DETAILI' +
        'D = PAYMENT.FINANCIALNOTE_DETAILID LEFT OUTER JOIN  '
      
        '                      USERS ON PAYMENT.INSERTUSERID = USERS.USER' +
        'ID LEFT OUTER JOIN  '
      
        '                      FINANCIALNOTE ON FINANCIALNOTE_DETAIL.Fina' +
        'ncialNote_MasterID = FINANCIALNOTE.FINANCIALNOTEID LEFT OUTER JO' +
        'IN  '
      
        '                      FINANCIALNOTETYPE FINANCIALNOTETYPE_1 ON F' +
        'inancialNote_Master.FINANCIALNOTETYPEID = FINANCIALNOTETYPE_1.FI' +
        'NANCIALNOTETYPEID  ')
    Left = 24
    Top = 126
    object ADOQDoclistPaymentID: TAutoIncField
      FieldName = 'PaymentID'
      ReadOnly = True
    end
    object ADOQDoclistCreditorAccountID: TIntegerField
      FieldName = 'CreditorAccountID'
    end
    object ADOQDoclistDebtorAccountID: TIntegerField
      FieldName = 'DebtorAccountID'
    end
    object ADOQDoclistDate: TWideStringField
      FieldName = 'Date'
      Size = 10
    end
    object ADOQDoclistTime: TWideStringField
      FieldName = 'Time'
      Size = 5
    end
    object ADOQDoclistAmount: TLargeintField
      FieldName = 'Amount'
    end
    object ADOQDoclistComment: TStringField
      FieldName = 'Comment'
      Size = 100
    end
    object ADOQDoclistFinancialNoteID: TIntegerField
      FieldName = 'FinancialNoteID'
    end
    object ADOQDoclistInsertUserID: TIntegerField
      FieldName = 'InsertUserID'
    end
    object ADOQDoclistInsertDate: TStringField
      FieldName = 'InsertDate'
      FixedChar = True
      Size = 10
    end
    object ADOQDoclistLastUpDate: TStringField
      FieldName = 'LastUpDate'
      FixedChar = True
      Size = 10
    end
    object ADOQDoclistLastUserID: TIntegerField
      FieldName = 'LastUserID'
    end
    object ADOQDoclistPayTypeID: TWordField
      FieldName = 'PayTypeID'
    end
    object ADOQDoclistRelatedID: TIntegerField
      FieldName = 'RelatedID'
    end
    object ADOQDoclistdocumentno: TStringField
      FieldName = 'documentno'
      Size = 10
    end
    object ADOQDoclistCRTR_DETACCOUNTID: TIntegerField
      FieldName = 'CRTR_DETACCOUNTID'
    end
    object ADOQDoclistFINANCIALNOTE_DETAILID: TIntegerField
      FieldName = 'FINANCIALNOTE_DETAILID'
    end
    object ADOQDoclistWasPrinted: TSmallintField
      FieldName = 'WasPrinted'
    end
    object ADOQDoclistPayTypeSecondId: TIntegerField
      FieldName = 'PayTypeSecondId'
    end
    object ADOQDoclistRefrencePaymentId: TIntegerField
      FieldName = 'RefrencePaymentId'
    end
    object ADOQDoclistCREDITORACCOUNTTITLE: TWideStringField
      FieldName = 'CREDITORACCOUNTTITLE'
      Size = 100
    end
    object ADOQDoclistDEBTORACCOUNTTITLE: TWideStringField
      FieldName = 'DEBTORACCOUNTTITLE'
      Size = 100
    end
    object ADOQDoclistPAYTYPETITLE: TWideStringField
      FieldName = 'PAYTYPETITLE'
      ReadOnly = True
      Size = 67
    end
    object ADOQDoclistNOTENO: TStringField
      FieldName = 'NOTENO'
      Size = 50
    end
    object ADOQDoclistMATUREDATE: TStringField
      FieldName = 'MATUREDATE'
      FixedChar = True
      Size = 10
    end
    object ADOQDoclistFINANCIALNOTEAMOUNT: TLargeintField
      FieldName = 'FINANCIALNOTEAMOUNT'
    end
    object ADOQDoclistFINANCIALNOTETYPETITLE: TWideStringField
      FieldName = 'FINANCIALNOTETYPETITLE'
      Size = 50
    end
    object ADOQDoclistFULLNAME: TWideStringField
      FieldName = 'FULLNAME'
      Size = 50
    end
    object ADOQDoclistCOMMENT2: TStringField
      FieldName = 'COMMENT2'
      ReadOnly = True
      Size = 100
    end
    object ADOQDoclistNOTE_DETAILAMOUNT: TLargeintField
      FieldName = 'NOTE_DETAILAMOUNT'
    end
    object ADOQDoclistNOTE_DETAILNOTENO: TStringField
      FieldName = 'NOTE_DETAILNOTENO'
      Size = 50
    end
    object ADOQDoclistDETAILNOTEDATE: TStringField
      FieldName = 'DETAILNOTEDATE'
      FixedChar = True
      Size = 10
    end
    object ADOQDoclistSTATUSFINANCIALNOTESTATUSDESC: TWideStringField
      FieldName = 'STATUSFINANCIALNOTESTATUSDESC'
      Size = 50
    end
    object ADOQDoclistMASTERFINANCIALNOTETYPEID: TWordField
      FieldName = 'MASTERFINANCIALNOTETYPEID'
    end
    object ADOQDoclistNOTE_DETAILFINANCIALNOTETYPETITLE: TWideStringField
      FieldName = 'NOTE_DETAILFINANCIALNOTETYPETITLE'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQDoclist
    Left = 24
    Top = 158
  end
end
