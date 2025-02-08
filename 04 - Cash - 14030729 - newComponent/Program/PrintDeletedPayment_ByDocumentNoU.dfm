inherited FrPrintDeletedPayment_ByDocumentNo: TFrPrintDeletedPayment_ByDocumentNo
  Left = 584
  Top = 295
  AutoScroll = False
  Caption = #1606#1605#1575#1610#1588' '#1575#1587#1606#1575#1583' '#1605#1593#1705#1608#1587
  ClientHeight = 464
  ClientWidth = 946
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 946
    Height = 464
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep1: TQuickRep
      Left = -368
      Top = -1189
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
          Left = 442
          Top = 64
          Width = 120
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            69.925595238095240000
            835.327380952381000000
            120.952380952381000000
            226.785714285714300000)
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
          Left = 142
          Top = 64
          Width = 108
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            69.925595238095240000
            268.363095238095300000
            120.952380952381000000
            204.107142857142800000)
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
          Left = 453
          Top = 7
          Width = 99
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            69.925595238095240000
            856.116071428571400000
            13.229166666666670000
            187.098214285714300000)
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
          Left = 908
          Top = 15
          Width = 88
          Height = 37
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            69.925595238095240000
            1716.011904761905000000
            28.348214285714280000
            166.309523809523800000)
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
          Left = 53
          Top = 107
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
            202.217261904761900000
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
          Top = 110
          Width = 25
          Height = 47
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            88.824404761904760000
            351.517857142857100000
            207.886904761904800000
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
    object Panel3: TPanel
      Left = 1
      Top = 89
      Width = 944
      Height = 333
      Align = alClient
      TabOrder = 1
      object YDBGrid: TYDBGrid
        Left = 1
        Top = 1
        Width = 942
        Height = 331
        Cursor = crHandPoint
        Align = alClient
        DataSource = dm.DReport_DeletedPayment_ByDocumentNo
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
            FieldName = 'DocumentNo'
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
            FieldName = 'CreditorAccountTitle'
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
            FieldName = 'DebtorAccountTitle'
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
            FieldName = 'Note_DetailFinancialNoteTypeTitle'
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
            FieldName = 'Note_DetailNoteNo'
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
            FieldName = 'FullName'
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
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 944
      Height = 88
      Align = alTop
      TabOrder = 2
      DesignSize = (
        944
        88)
      object Label3: TLabel
        Left = 866
        Top = 9
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
        Left = 256
        Top = 11
        Width = 4
        Height = 14
        Alignment = taCenter
      end
      object DocNo: TYWhereEdit
        Left = 649
        Top = 3
        Width = 212
        Height = 37
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
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
        Left = 8
        Top = 7
        Width = 109
        Height = 28
        Caption = #1580#1587#1578#1580#1608
        ImageIndex = 35
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
      object rgYearStatus: TRadioGroup
        Left = 1
        Top = 46
        Width = 942
        Height = 41
        Align = alBottom
        Caption = #1575#1606#1578#1582#1575#1576' '#1575#1587#1606#1575#1583
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          #1601#1602#1591' '#1587#1606#1583#1607#1575#1610' '#1587#1575#1604' '#1580#1575#1585#1610
          #1587#1606#1583#1607#1575#1610' '#1607#1605#1607' '#1587#1575#1604' '#1607#1575)
        TabOrder = 2
      end
      object BitBtn2: TAdvGlowButton
        Left = 7
        Top = 55
        Width = 133
        Height = 28
        Anchors = [akLeft, akBottom]
        Caption = #1606#1605#1575#1610#1588' '#1578#1605#1575#1605#1610' '#1575#1587#1606#1575#1583
        ImageIndex = 14
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 3
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
    end
    object Panel1: TPanel
      Left = 1
      Top = 422
      Width = 944
      Height = 41
      Align = alBottom
      TabOrder = 3
      DesignSize = (
        944
        41)
      object SpeedButton1: TAdvGlowButton
        Left = 461
        Top = 9
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 43
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 4
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
        Left = 490
        Top = 9
        Width = 26
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 112
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 5
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
        Left = 520
        Top = 9
        Width = 24
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
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
        Left = 548
        Top = 9
        Width = 25
        Height = 22
        Anchors = [akTop, akRight]
        ImageIndex = 137
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 7
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
      object xpBitBtn1: TAdvGlowButton
        Left = 604
        Top = 6
        Width = 90
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
        TabOrder = 0
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
      object Button5: TAdvGlowButton
        Left = 10
        Top = 6
        Width = 90
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
        TabOrder = 1
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
      object EditBtn: TAdvGlowButton
        Left = 696
        Top = 6
        Width = 90
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588' '
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
        TabOrder = 2
        Visible = False
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
        Left = 816
        Top = 6
        Width = 121
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1601#1610#1586#1610#1705#1610
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
        TabOrder = 3
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 149
    Top = 227
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 351
    Top = 245
  end
end
