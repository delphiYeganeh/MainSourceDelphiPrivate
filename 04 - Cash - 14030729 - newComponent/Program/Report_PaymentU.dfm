inherited FrReport_Payment: TFrReport_Payment
  Left = 692
  Top = 239
  AutoScroll = False
  Caption = #1711#1586#1575#1585#1588' '#1578#1585#1575#1705#1606#1588
  ClientHeight = 458
  ClientWidth = 738
  Color = clBtnFace
  Font.Height = -12
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 738
    Height = 458
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep2: TQuickRep
      Left = -81
      Top = -847
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
    object Panel2: TPanel
      Left = 1
      Top = 193
      Width = 736
      Height = 223
      Align = alClient
      TabOrder = 1
      object YDBGrid1: TYDBGrid
        Left = 1
        Top = 1
        Width = 734
        Height = 221
        Cursor = crHandPoint
        Align = alClient
        DataSource = dm.DReport_Payment
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
    object Panel1: TPanel
      Left = 1
      Top = 416
      Width = 736
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        736
        41)
      object Button5: TAdvGlowButton
        Left = 4
        Top = 6
        Width = 75
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
      object Button4: TAdvGlowButton
        Left = 182
        Top = 6
        Width = 106
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Excel'#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 135
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = Button4Click
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
      object Button3: TAdvGlowButton
        Left = 290
        Top = 6
        Width = 105
        Height = 28
        Anchors = [akTop, akRight]
        Caption = 'Word '#1582#1585#1608#1580#1610' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 43
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
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
      end
      object Button2: TAdvGlowButton
        Left = 397
        Top = 6
        Width = 106
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1587#1606#1575#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 198
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
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
      object Button6: TAdvGlowButton
        Left = 505
        Top = 6
        Width = 118
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 137
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = Button6Click
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
      object MakeRep: TAdvGlowButton
        Left = 625
        Top = 6
        Width = 105
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1578#1607#1610#1607' '#1711#1586#1575#1585#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 176
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = MakeRepClick
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
    object FilterPanel: TPanel
      Left = 1
      Top = 1
      Width = 736
      Height = 192
      Align = alTop
      TabOrder = 3
      DesignSize = (
        736
        192)
      object Label1: TLabel
        Left = 645
        Top = 7
        Width = 85
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
      end
      object Label2: TLabel
        Left = 645
        Top = 44
        Width = 85
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1586#1605#1575#1606' '#1662#1585#1583#1575#1582#1578
      end
      object Label3: TLabel
        Left = 645
        Top = 82
        Width = 85
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1605#1576#1604#1594
      end
      object Label4: TLabel
        Left = 645
        Top = 120
        Width = 85
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581
      end
      object Label5: TLabel
        Left = 263
        Top = 7
        Width = 98
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1575#1585#1576#1585' '#1579#1576#1578' '#1705#1606#1606#1583#1607
      end
      object Label6: TLabel
        Left = 263
        Top = 45
        Width = 98
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1670#1705' '#1610#1575' '#1581#1608#1575#1604#1607
      end
      object Label7: TLabel
        Left = 263
        Top = 84
        Width = 98
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1662#1585#1583#1575#1582#1578
      end
      object Label8: TLabel
        Left = 263
        Top = 121
        Width = 98
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1579#1576#1578
      end
      object Label9: TLabel
        Left = 645
        Top = 156
        Width = 85
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
      end
      object Label10: TLabel
        Left = 263
        Top = 157
        Width = 98
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1705#1583' '#1585#1575#1610#1575#1606#1607
      end
      object SpeedButton1: TAdvGlowButton
        Left = 15
        Top = 76
        Width = 23
        Height = 22
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 10
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
        Left = 15
        Top = 1
        Width = 23
        Height = 22
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 11
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
      object YWhereEdit5: TYWhereEdit
        Left = 39
        Top = 1
        Width = 219
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = 16121568
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
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
        Left = 39
        Top = 39
        Width = 219
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
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
        Left = 39
        Top = 77
        Width = 219
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = 16121568
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
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
        Left = 431
        Top = 114
        Width = 212
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
        Left = 431
        Top = 77
        Width = 212
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
        Left = 431
        Top = 39
        Width = 212
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
        Left = 39
        Top = 152
        Width = 219
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        BiDiMode = bdLeftToRight
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
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
        Left = 431
        Top = 152
        Width = 212
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
        Left = 431
        Top = 1
        Width = 212
        Height = 22
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdRightToLeft
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
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
        Left = 39
        Top = 115
        Width = 219
        Height = 22
        Anchors = [akLeft, akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdRightToLeft
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
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
  end
  inherited ahmadvand: TActionList
    Left = 61
    Top = 251
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 63
    Top = 348
  end
  inherited qSetting: TADOQuery
    Left = 56
    Top = 16
  end
end
