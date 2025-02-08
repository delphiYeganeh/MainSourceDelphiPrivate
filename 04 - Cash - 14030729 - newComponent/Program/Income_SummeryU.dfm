inherited FrIncome_Summery: TFrIncome_Summery
  Left = 584
  Top = 248
  AutoScroll = False
  Caption = #1578#1585#1575#1586' '#1606#1575#1605#1607
  ClientHeight = 576
  ClientWidth = 766
  Font.Height = -12
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 766
    Height = 576
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object QuickRep2: TQuickRep
      Left = -76
      Top = -625
      Width = 794
      Height = 1123
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
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
      Units = Pixels
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
          Left = 432
          Top = 21
          Width = 270
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1143.000000000000000000
            55.562500000000000000
            714.375000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1606#1585#1605' '#1575#1601#1586#1575#1585' '
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
        object QRLabel22: TQRLabel
          Left = 308
          Top = 17
          Width = 102
          Height = 36
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            95.250000000000000000
            814.916666666666700000
            44.979166666666670000
            269.875000000000000000)
          Alignment = taCenter
          AlignToBand = True
          AutoSize = True
          AutoStretch = False
          Caption = #1582#1604#1575#1589#1607' '#1587#1608#1583' '#1608' '#1586#1610#1575#1606
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
      object QRChildBand1: TQRSubDetail
        Left = 38
        Top = 165
        Width = 718
        Height = 35
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
          92.604166666666670000
          1899.708333333333000000)
        Master = QuickRep2
        DataSet = Balance_Sheet1
        FooterBand = QRBand1
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBText13: TQRDBText
          Left = 314
          Top = 2
          Width = 400
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            830.791666666666800000
            5.291666666666667000
            1058.333333333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet1
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
        object QRDBText14: TQRDBText
          Left = 2
          Top = 2
          Width = 150
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            5.291666666666667000
            5.291666666666667000
            396.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet1
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
        object QRDBText16: TQRDBText
          Left = 159
          Top = 2
          Width = 151
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            420.687500000000000000
            5.291666666666667000
            399.520833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet1
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
      end
      object QRSubDetail1: TQRSubDetail
        Left = 38
        Top = 235
        Width = 718
        Height = 35
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
          92.604166666666670000
          1899.708333333333000000)
        Master = QuickRep2
        DataSet = Balance_Sheet2
        FooterBand = QRBand2
        PrintBefore = False
        PrintIfEmpty = True
        object QRDBText1: TQRDBText
          Left = 314
          Top = 2
          Width = 400
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            830.791666666666800000
            5.291666666666667000
            1058.333333333333000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet2
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
          Left = 311
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
            822.854166666666800000
            0.000000000000000000
            2.645833333333333000)
          Shape = qrsVertLine
        end
        object QRDBText2: TQRDBText
          Left = 2
          Top = 2
          Width = 150
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            5.291666666666667000
            5.291666666666667000
            396.875000000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet2
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
        object QRShape2: TQRShape
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
        object QRDBText3: TQRDBText
          Left = 159
          Top = 2
          Width = 151
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            420.687500000000000000
            5.291666666666667000
            399.520833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Color = clWhite
          DataSet = Balance_Sheet2
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
      end
      object QRBand1: TQRBand
        Left = 38
        Top = 200
        Width = 718
        Height = 35
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
          92.604166666666670000
          1899.708333333333000000)
        BandType = rbGroupFooter
        object SumAmount1: TQRLabel
          Left = 10
          Top = 2
          Width = 80
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            26.458333333333330000
            5.291666666666667000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'SumAmount1'
          Color = clWhite
          OnPrint = SumAmount1Print
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel1: TQRLabel
          Left = 106
          Top = 2
          Width = 135
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            280.458333333333300000
            5.291666666666667000
            357.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1580#1605#1608#1593' '#1583#1585#1570#1605#1583' '#1607#1575
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
      object QRBand2: TQRBand
        Left = 38
        Top = 270
        Width = 718
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        AlignToBottom = False
        Color = clWhite
        ForceNewColumn = False
        ForceNewPage = False
        LinkBand = QRBand5
        Size.Values = (
          92.604166666666670000
          1899.708333333333000000)
        BandType = rbGroupFooter
        object SumAmount3: TQRLabel
          Left = 458
          Top = 2
          Width = 80
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1211.791666666667000000
            5.291666666666667000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'SumAmount3'
          Color = clWhite
          OnPrint = SumAmount3Print
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object SumAmount2: TQRLabel
          Left = 18
          Top = 2
          Width = 80
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            47.625000000000000000
            5.291666666666667000
            211.666666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = 'SumAmount2'
          Color = clWhite
          OnPrint = SumAmount2Print
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel2: TQRLabel
          Left = 106
          Top = 2
          Width = 135
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            280.458333333333300000
            5.291666666666667000
            357.187500000000000000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1605#1580#1605#1608#1593' '#1607#1586#1610#1606#1607' '#1607#1575
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
          Left = 584
          Top = 2
          Width = 97
          Height = 30
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            79.375000000000000000
            1545.166666666667000000
            5.291666666666667000
            256.645833333333300000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          BiDiMode = bdLeftToRight
          ParentBiDiMode = False
          Caption = #1587#1608#1583' '#1608' '#1586#1610#1575#1606
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
      object QRBand5: TQRBand
        Left = 38
        Top = 305
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
    object xpPageControl1: TPageControl
      Left = 1
      Top = 43
      Width = 764
      Height = 491
      ActivePage = xpTabSheet2
      Align = alClient
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      Images = dm.LetterImages_New
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabHeight = 30
      TabOrder = 1
      TabWidth = 100
      object xpTabSheet1: TTabSheet
        Caption = #1583#1585#1570#1605#1583' '#1607#1575
        ImageIndex = 179
        object YDBGrid: TYDBGrid
          Left = 0
          Top = 37
          Width = 756
          Height = 414
          Cursor = crHandPoint
          Align = alClient
          Color = clCream
          DataSource = DBalance_Sheet1
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
          Width = 756
          Height = 37
          Align = alTop
          TabOrder = 1
          DesignSize = (
            756
            37)
          object Label2: TLabel
            Left = 695
            Top = 12
            Width = 55
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1581#1587#1575#1576'  '#1607#1575
          end
          object Label5: TLabel
            Left = 597
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label6: TLabel
            Left = 503
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object Label7: TLabel
            Left = 381
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label8: TLabel
            Left = 289
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object Label9: TLabel
            Left = 189
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label10: TLabel
            Left = 97
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object Colheader1: TLabel
            Left = 511
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
            Left = 300
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
            Left = 91
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
            Left = 461
            Top = -8
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
          object Shape2: TShape
            Left = 253
            Top = -23
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
          object Shape3: TShape
            Left = 672
            Top = -28
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
        end
      end
      object xpTabSheet2: TTabSheet
        Caption = #1607#1586#1610#1606#1607' '#1607#1575
        ImageIndex = 181
        object Panel3: TPanel
          Left = 0
          Top = 0
          Width = 756
          Height = 37
          Align = alTop
          TabOrder = 0
          DesignSize = (
            756
            37)
          object Label1: TLabel
            Left = 695
            Top = 12
            Width = 55
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1581#1587#1575#1576'  '#1607#1575
          end
          object Label11: TLabel
            Left = 595
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label12: TLabel
            Left = 501
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object Label13: TLabel
            Left = 379
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label14: TLabel
            Left = 287
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object Label15: TLabel
            Left = 187
            Top = 19
            Width = 32
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1607#1705#1575#1585
          end
          object Label16: TLabel
            Left = 95
            Top = 19
            Width = 41
            Height = 14
            Anchors = [akTop, akRight]
            Caption = #1576#1587#1578#1575#1606#1705#1575#1585
          end
          object ColHeader12: TLabel
            Left = 511
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
          object ColHeader22: TLabel
            Left = 300
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
          object ColHeader32: TLabel
            Left = 83
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
          object Shape4: TShape
            Left = 461
            Top = -8
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
          object Shape5: TShape
            Left = 245
            Top = -23
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
          object Shape6: TShape
            Left = 672
            Top = -31
            Width = 1
            Height = 65
            Anchors = [akTop, akRight]
          end
        end
        object YDBGrid1: TYDBGrid
          Left = 0
          Top = 37
          Width = 756
          Height = 414
          Cursor = crHandPoint
          Align = alClient
          Color = clCream
          DataSource = DBalance_Sheet2
          Options = [dgColumnResize, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
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
              Width = 126
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c1'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c2'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c3'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c4'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c5'
              Visible = True
            end
            item
              Alignment = taCenter
              Expanded = False
              FieldName = 'c6'
              Visible = True
            end>
        end
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 534
      Width = 764
      Height = 41
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        764
        41)
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
      object Button2: TAdvGlowButton
        Left = 627
        Top = 6
        Width = 121
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662'  '#1587#1608#1583' '#1608' '#1586#1610#1575#1606
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
        TabOrder = 1
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
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 764
      Height = 42
      Align = alTop
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      DesignSize = (
        764
        42)
      object Label3: TLabel
        Left = 712
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
        Left = 475
        Top = 8
        Width = 11
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
        Left = 9
        Top = 10
        Width = 88
        Height = 28
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
      object DateFrom: TSolarDatePicker
        Left = 504
        Top = 2
        Width = 206
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
        OnChange = DateToChange
        OnEnter = DateFromEnter
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
        Left = 240
        Top = 2
        Width = 234
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
        OnChange = DateToChange
        OnEnter = DateFromEnter
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
  end
  inherited ahmadvand: TActionList
    Left = 581
    Top = 123
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 655
    Top = 132
  end
  inherited qSetting: TADOQuery
    Left = 32
    Top = 136
  end
  object Balance_Sheet1: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Balance_Sheet'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dateFrom'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@dateTo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ParentID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sumAmount'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = '0'
      end>
    Left = 264
    Top = 216
    object Balance_Sheet1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Balance_Sheet1accounttitle: TWideStringField
      FieldName = 'accounttitle'
      Size = 100
    end
    object Balance_Sheet1c1: TYLargeIntField
      FieldName = 'c1'
    end
    object Balance_Sheet1c2: TYLargeIntField
      FieldName = 'c2'
    end
    object Balance_Sheet1c3: TYLargeIntField
      FieldName = 'c3'
    end
    object Balance_Sheet1c4: TYLargeIntField
      FieldName = 'c4'
    end
    object Balance_Sheet1c5: TYLargeIntField
      FieldName = 'c5'
    end
    object Balance_Sheet1c6: TYLargeIntField
      FieldName = 'c6'
    end
  end
  object Balance_Sheet2: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Balance_Sheet'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@dateFrom'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@dateTo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@ParentID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@sumAmount'
        Attributes = [paNullable]
        DataType = ftLargeint
        Direction = pdInputOutput
        Precision = 19
        Value = '0'
      end>
    Left = 232
    Top = 160
    object Balance_Sheet2id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object Balance_Sheet2accounttitle: TWideStringField
      FieldName = 'accounttitle'
      Size = 100
    end
    object Balance_Sheet2c1: TLargeintField
      FieldName = 'c1'
    end
    object Balance_Sheet2c2: TLargeintField
      FieldName = 'c2'
    end
    object Balance_Sheet2c3: TLargeintField
      FieldName = 'c3'
    end
    object Balance_Sheet2c4: TLargeintField
      FieldName = 'c4'
    end
    object Balance_Sheet2c5: TLargeintField
      FieldName = 'c5'
    end
    object Balance_Sheet2c6: TLargeintField
      FieldName = 'c6'
    end
  end
  object DBalance_Sheet2: TDataSource
    DataSet = Balance_Sheet2
    Left = 280
    Top = 160
  end
  object DBalance_Sheet1: TDataSource
    DataSet = Balance_Sheet1
    Left = 304
    Top = 216
  end
end
