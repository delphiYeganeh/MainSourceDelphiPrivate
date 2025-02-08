inherited FQrPrintPayment_ByDocumentNo: TFQrPrintPayment_ByDocumentNo
  Left = 564
  Top = 245
  BorderStyle = bsDialog
  Caption = #1606#1605#1575#1610#1588' '#1576#1585' '#1575#1587#1575#1587' '#1588#1605#1575#1585#1607' '#1587#1606#1583
  ClientHeight = 562
  ClientWidth = 915
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 915
    Height = 562
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep1: TQuickRep
      Left = 6
      Top = -1014
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
        Height = 108
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
          204.107142857142900000
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
        Top = 161
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
        Top = 308
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
        Top = 392
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
        Top = 161
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
          Top = 67
          Width = 1004
          Height = 81
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            153.080357142857100000
            0.000000000000000000
            126.622023809523800000
            1897.440476190476000000)
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
            28.348214285714290000
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
          Top = 67
          Width = 1
          Height = 82
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            154.970238095238100000
            491.369047619047600000
            126.622023809523800000
            1.889880952380952000)
          Shape = qrsVertLine
        end
        object QRShape1: TQRShape
          Left = 924
          Top = 67
          Width = 1
          Height = 82
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            154.970238095238100000
            1746.250000000000000000
            126.622023809523800000
            1.889880952380952000)
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
          Left = 32
          Top = 71
          Width = 69
          Height = 28
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            60.476190476190480000
            134.181547619047600000
            130.401785714285700000)
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
          Left = 160
          Top = 70
          Width = 64
          Height = 28
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            302.380952380952400000
            132.291666666666700000
            120.952380952381000000)
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
          Top = 67
          Width = 1
          Height = 82
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            154.970238095238100000
            240.014880952381000000
            126.622023809523800000
            1.889880952380952000)
          Shape = qrsVertLine
        end
        object QRShape4: TQRShape
          Left = 458
          Top = 67
          Width = 1
          Height = 82
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            154.970238095238100000
            865.565476190476200000
            126.622023809523800000
            1.889880952380952000)
          Shape = qrsVertLine
        end
        object QRShape8: TQRShape
          Left = 0
          Top = 104
          Width = 261
          Height = 1
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            1.889880952380952000
            0.000000000000000000
            196.547619047619000000
            493.258928571428600000)
          Shape = qrsHorLine
        end
        object QRLabel10: TQRLabel
          Left = 54
          Top = 107
          Width = 24
          Height = 29
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            54.806547619047620000
            102.053571428571400000
            202.217261904761900000
            45.357142857142860000)
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
          Left = 187
          Top = 107
          Width = 24
          Height = 29
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            54.806547619047620000
            353.407738095238100000
            202.217261904761900000
            45.357142857142860000)
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
          Top = 67
          Width = 1
          Height = 82
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            154.970238095238100000
            689.806547619047600000
            126.622023809523800000
            1.889880952380952000)
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
            143.630952380952400000
            699.255952380952400000
            130.401785714285700000
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
    object pnlGrid: TPanel
      Left = 1
      Top = 121
      Width = 913
      Height = 327
      Align = alClient
      TabOrder = 1
      object YDBGrid: TYDBGrid
        Left = 1
        Top = 1
        Width = 911
        Height = 325
        Cursor = crHandPoint
        Align = alClient
        Color = clCream
        DataSource = DataSource1
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
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
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end>
      end
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 913
      Height = 120
      Align = alTop
      TabOrder = 2
      DesignSize = (
        913
        120)
      object Label3: TLabel
        Left = 846
        Top = 8
        Width = 60
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lBDocNo: TLabel
        Left = 6
        Top = 11
        Width = 4
        Height = 14
        Alignment = taCenter
      end
      object Label1: TLabel
        Left = 870
        Top = 46
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1575#1586' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 603
        Top = 45
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575' '#1578#1575#1585#1610#1582
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DocNo: TYWhereEdit
        Left = 646
        Top = 2
        Width = 192
        Height = 22
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
      object BitBtn1: TAdvGlowButton
        Left = 5
        Top = 44
        Width = 124
        Height = 27
        Caption = #1580#1587#1578#1580#1608
        ImageIndex = 70
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
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
      object FromDate: TSolarDatePicker
        Left = 646
        Top = 40
        Width = 193
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
        TabOrder = 2
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
        Left = 352
        Top = 40
        Width = 169
        Height = 22
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = '1403/11/14'
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
      object Panel3: TPanel
        Left = 1
        Top = 78
        Width = 911
        Height = 41
        Align = alBottom
        TabOrder = 4
        DesignSize = (
          911
          41)
        object EditBtn: TAdvGlowButton
          Left = 778
          Top = 5
          Width = 124
          Height = 28
          Anchors = [akTop, akRight]
          Caption = #1608#1610#1585#1575#1610#1588' '#1587#1606#1583' '#1580#1575#1585#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 2
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = EditBtnClick
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
        object DelBtn: TAdvGlowButton
          Left = 514
          Top = 5
          Width = 258
          Height = 28
          Hint = #1579#1576#1578' '#1575#1587#1606#1575#1583' '#1605#1593#1705#1608#1587' '#1610#1575' '#1581#1584#1601
          Anchors = [akTop, akRight]
          Caption = '  "'#1579#1576#1578' '#1587#1606#1583' '#1605#1593#1705#1608#1587' "'#1587#1606#1583#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 90
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = DelBtnClick
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
        object BitBtn3: TAdvGlowButton
          Left = 10
          Top = 5
          Width = 500
          Height = 28
          Hint = #1579#1576#1578' '#1575#1587#1606#1575#1583' '#1605#1593#1705#1608#1587' '#1610#1575' '#1581#1584#1601
          Anchors = [akTop, akRight]
          Caption = 
            #1579#1576#1578' '#1587#1606#1583' '#1605#1593#1705#1608#1587' "'#1575#1587#1606#1575#1583' '#1605#1585#1578#1576#1591'" '#1576#1575' '#1587#1606#1583#1607#1575#1610' '#1575#1606#1578#1582#1575#1576#1610'  '#1588#1575#1605#1604'   '#1575#1587#1606#1575#1583' '#1580#1605#1593#1610 +
            ' '#1608' '#1575#1587#1606#1575#1583' '#1608#1575#1576#1587#1578#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 18
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn3Click
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
    object Panel1: TPanel
      Left = 1
      Top = 448
      Width = 913
      Height = 113
      Align = alBottom
      TabOrder = 3
      DesignSize = (
        913
        113)
      object SpeedButton1: TAdvGlowButton
        Left = 13
        Top = 2
        Width = 24
        Height = 28
        Anchors = [akTop, akRight]
        ImageIndex = 43
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 1
        OnClick = SpeedButton1Click
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
      object SpeedButton2: TAdvGlowButton
        Left = 42
        Top = 2
        Width = 26
        Height = 28
        Anchors = [akTop, akRight]
        ImageIndex = 112
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 2
        OnClick = SpeedButton2Click
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
      object SpeedButton3: TAdvGlowButton
        Left = 72
        Top = 2
        Width = 24
        Height = 28
        Anchors = [akTop, akRight]
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
        OnClick = SpeedButton3Click
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
      object SpeedButton4: TAdvGlowButton
        Left = 100
        Top = 2
        Width = 25
        Height = 28
        Anchors = [akTop, akRight]
        ImageIndex = 137
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
        OnClick = SpeedButton4Click
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
        Left = 2
        Top = 77
        Width = 115
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
      object rgYearStatus: TRadioGroup
        Left = 4
        Top = 32
        Width = 905
        Height = 41
        Anchors = [akLeft, akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1576#1575#1586#1607' '#1580#1607#1578' '#1576#1575#1585#1711#1586#1575#1585#1610' '#1575#1587#1606#1575#1583' '#1576#1585#1575#1610' '#1670#1575#1662
        Columns = 5
        ItemIndex = 0
        Items.Strings = (
          #1601#1602#1591' '#1587#1606#1583#1607#1575#1610' '#1587#1575#1604' '#1580#1575#1585#1610
          #1587#1606#1583#1607#1575#1610' '#1607#1605#1607' '#1587#1575#1604' '#1607#1575)
        TabOrder = 5
      end
      object BitBtn2: TAdvGlowButton
        Left = 326
        Top = 41
        Width = 215
        Height = 27
        Caption = #1576#1575#1585#1711#1586#1575#1585#1610' '#1580#1607#1578' '#1670#1575#1662' '#1578#1605#1575#1605#1610' '#1575#1587#1606#1575#1583
        ImageIndex = 2
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = BitBtn2Click
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
      object xpBitBtn1: TAdvGlowButton
        Left = 12
        Top = 41
        Width = 109
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 113
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
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
      object pnlDesc: TPanel
        Left = 128
        Top = 43
        Width = 188
        Height = 25
        Anchors = [akLeft, akTop, akRight]
        BevelOuter = bvNone
        Caption = #1578#1593#1583#1575#1583' '#1575#1587#1606#1575#1583' = 0'
        ParentColor = True
        TabOrder = 8
      end
    end
  end
  inherited ahmadvand: TActionList
    Left = 109
    Top = 171
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 39
    Top = 221
  end
  inherited qSetting: TADOQuery
    Left = 32
    Top = 168
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
    Left = 32
    Top = 326
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
    Left = 120
    Top = 326
  end
end
