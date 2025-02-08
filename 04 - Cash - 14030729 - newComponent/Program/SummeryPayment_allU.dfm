inherited FrSummeryPayment_all: TFrSummeryPayment_all
  Left = 496
  Top = 157
  AutoScroll = False
  Caption = #1578#1585#1575#1586' '#1606#1575#1605#1607
  ClientHeight = 452
  ClientWidth = 762
  Color = clBtnFace
  Font.Height = -12
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 762
    Height = 452
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep2: TQuickRep
      Left = -32
      Top = -790
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = dm.Balance_Sheet_all
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
          Height = 22
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            58.208333333333340000
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
          Height = 23
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            60.854166666666680000
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
          Left = 416
          Top = 20
          Width = 294
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1100.666666666667000000
            52.916666666666660000
            777.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
    end
    object QuickRep4: TQuickRep
      Left = -32
      Top = -790
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = dm.Balance_Sheet_all
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
      end
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
          Left = 400
          Top = 21
          Width = 302
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1058.333333333333000000
            55.562500000000000000
            799.041666666666800000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
    end
    object QuickRep6: TQuickRep
      Left = -361
      Top = -461
      Width = 1123
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          DataSet = dm.Balance_Sheet_all
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
          Left = 584
          Top = 21
          Width = 447
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1545.166666666667000000
            55.562500000000000000
            1182.687500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
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
    object Panel4: TPanel
      Left = 1
      Top = 81
      Width = 760
      Height = 329
      Align = alClient
      TabOrder = 3
      object YDBGrid: TYDBGrid
        Left = 1
        Top = 1
        Width = 758
        Height = 327
        Cursor = crHandPoint
        Align = alClient
        Color = clCream
        DataSource = dm.DBalance_Sheet_all
        Options = [dgColumnResize, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
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
            Title.Caption = #1581#1587#1575#1576' '#1607#1575
            Width = 126
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c1'
            Title.Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c2'
            Title.Caption = #1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c3'
            Title.Caption = #1580#1605#1593' '#1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c4'
            Title.Caption = #1580#1605#1593' '#1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c5'
            Title.Caption = #1605#1575#1606#1583#1607' '#1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1583#1607#1705#1575#1585
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'c6'
            Title.Caption = #1605#1575#1606#1583#1607' '#1711#1585#1583#1588' '#1593#1605#1604#1610#1575#1578' '#1576#1587#1578#1575#1606#1705#1575#1585
            Visible = True
          end>
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 410
      Width = 760
      Height = 41
      Align = alBottom
      TabOrder = 4
      DesignSize = (
        760
        41)
      object SpeedButton1: TAdvGlowButton
        Left = 285
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
        Left = 314
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
        Left = 344
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
        Left = 372
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
      object Button2: TAdvGlowButton
        Left = 408
        Top = 6
        Width = 115
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1588#1588' '#1587#1578#1608#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 218
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object xpBitBtn1: TAdvGlowButton
        Left = 524
        Top = 6
        Width = 115
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1670#1607#1575#1585' '#1587#1578#1608#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 219
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
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
      object xpBitBtn2: TAdvGlowButton
        Left = 640
        Top = 6
        Width = 115
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1583#1608' '#1587#1578#1608#1606#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 221
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = xpBitBtn2Click
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
        Left = 12
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
        TabOrder = 3
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
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 760
      Height = 39
      Align = alTop
      TabOrder = 5
      DesignSize = (
        760
        39)
      object Label3: TLabel
        Left = 714
        Top = 8
        Width = 33
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575#1585#1610#1582' '#1575#1586
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 503
        Top = 8
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1578#1575
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object MakeRep: TAdvGlowButton
        Left = 6
        Top = 4
        Width = 87
        Height = 30
        Caption = #1606#1605#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 14
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
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
      object MEDateFrom: TSolarDatePicker
        Left = 536
        Top = 1
        Width = 175
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
        TabOrder = 1
        Enabled = True
        OnChange = MEDateToChange
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
      object MEDateTo: TSolarDatePicker
        Left = 323
        Top = 1
        Width = 175
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
        OnChange = MEDateToChange
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
    object Panel1: TPanel
      Left = 1
      Top = 40
      Width = 760
      Height = 41
      Align = alTop
      TabOrder = 6
      DesignSize = (
        760
        41)
      object Label2: TLabel
        Left = 695
        Top = 12
        Width = 55
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1581#1587#1575#1576'  '#1607#1575
      end
      object Label5: TLabel
        Left = 613
        Top = 21
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1583#1607#1705#1575#1585
      end
      object Label6: TLabel
        Left = 519
        Top = 21
        Width = 41
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
      end
      object Label7: TLabel
        Left = 397
        Top = 21
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1583#1607#1705#1575#1585
      end
      object Label8: TLabel
        Left = 305
        Top = 21
        Width = 41
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
      end
      object Label9: TLabel
        Left = 205
        Top = 21
        Width = 32
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1583#1607#1705#1575#1585
      end
      object Label10: TLabel
        Left = 113
        Top = 21
        Width = 41
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1576#1587#1578#1575#1606#1705#1575#1585
      end
      object Colheader1: TLabel
        Left = 527
        Top = 0
        Width = 160
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '----------------------------------------'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ColHeader2: TLabel
        Left = 316
        Top = 0
        Width = 160
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '----------------------------------------'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object ColHeader3: TLabel
        Left = 107
        Top = 0
        Width = 160
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '----------------------------------------'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape1: TShape
        Left = 477
        Top = -8
        Width = 1
        Height = 65
        Anchors = [akTop, akRight]
      end
      object Shape2: TShape
        Left = 269
        Top = -31
        Width = 1
        Height = 65
        Anchors = [akTop, akRight]
      end
      object Shape3: TShape
        Left = 688
        Top = -31
        Width = 1
        Height = 65
        Anchors = [akTop, akRight]
      end
    end
  end
end
