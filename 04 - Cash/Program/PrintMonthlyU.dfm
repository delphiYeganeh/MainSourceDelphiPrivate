inherited FrPrintMonthly: TFrPrintMonthly
  Left = 347
  Top = 229
  AutoScroll = False
  Caption = '\'
  ClientHeight = 458
  ClientWidth = 704
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep [0]
    Left = 0
    Top = 110
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Frame.Style = psDot
    DataSet = dm.Select_Monthly_Details
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE'
      'QRSTRINGSBAND1')
    Functions.DATA = (
      '0'
      '0'
      #39#39
      #39#39)
    OnPreview = QuickRep1Preview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      50.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      40.000000000000000000
      20.000000000000000000
      20.000000000000000000)
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
      Left = 15
      Top = 19
      Width = 771
      Height = 212
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
        560.916666666666700000
        2039.937500000000000000)
      BandType = rbDetail
      object QRShape3: TQRShape
        Left = 8
        Top = 1
        Width = 333
        Height = 204
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          539.750000000000000000
          21.166666666666700000
          2.645833333333330000
          881.062500000000000000)
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 359
        Top = 1
        Width = 401
        Height = 204
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          539.750000000000000000
          949.854166666666800000
          2.645833333333333000
          1060.979166666667000000)
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 3
        Top = 211
        Width = 752
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666670000
          7.937500000000000000
          558.270833333333300000
          1989.666666666667000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRShape7: TQRShape
        Left = 345
        Top = 2
        Width = 9
        Height = 210
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          555.625000000000000000
          912.812500000000100000
          5.291666666666667000
          23.812500000000000000)
        Pen.Style = psDot
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Left = 363
        Top = 4
        Width = 396
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          960.437499999999900000
          10.583333333333330000
          1047.750000000000000000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRShape5: TQRShape
        Left = 363
        Top = 176
        Width = 396
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          960.437499999999900000
          465.666666666666800000
          1047.750000000000000000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 13
        Top = 179
        Width = 325
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          34.395833333333340000
          473.604166666666700000
          859.895833333333400000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRShape1: TQRShape
        Left = 12
        Top = 5
        Width = 326
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          31.750000000000000000
          13.229166666666700000
          862.541666666667000000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Left = 296
        Top = 154
        Width = 41
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          783.166666666666700000
          407.458333333333300000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '
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
      object QRLabel5: TQRLabel
        Left = 100
        Top = 154
        Width = 61
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          264.583333333333300000
          407.458333333333300000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
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
      object QRLabel4: TQRLabel
        Left = 318
        Top = 117
        Width = 19
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          841.375000000000000000
          309.562500000000000000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1576#1604#1594
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
      object QRLabel3: TQRLabel
        Left = 272
        Top = 73
        Width = 65
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          719.666666666666700000
          193.145833333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
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
      object QRLabel19: TQRLabel
        Left = 584
        Top = 36
        Width = 13
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1545.166666666667000000
          95.250000000000000000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605
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
      object QRLabel17: TQRLabel
        Left = 714
        Top = 152
        Width = 41
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1889.125000000000000000
          402.166666666666700000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '
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
      object QRLabel15: TQRLabel
        Left = 492
        Top = 152
        Width = 61
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1301.750000000000000000
          402.166666666666700000
          161.395833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
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
      object QRLabel14: TQRLabel
        Left = 736
        Top = 118
        Width = 19
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1947.333333333333000000
          312.208333333333300000
          50.270833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1576#1604#1594
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
      object QRLabel13: TQRLabel
        Left = 690
        Top = 76
        Width = 65
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1825.625000000000000000
          201.083333333333300000
          171.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
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
      object QRLabel11: TQRLabel
        Left = 689
        Top = 36
        Width = 66
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1822.979166666667000000
          95.250000000000000000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1593#1590#1608#1610#1578
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
      object QRLabel10: TQRLabel
        Left = 181
        Top = 71
        Width = 13
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          478.895833333333300000
          187.854166666666700000
          34.395833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605
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
      object QRLabel1: TQRLabel
        Left = 271
        Top = 37
        Width = 66
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          717.020833333333300000
          97.895833333333330000
          174.625000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1593#1590#1608#1610#1578
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
      object QRDBText9: TQRDBText
        Left = 626
        Top = 117
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1656.291666666667000000
          309.562500000000000000
          280.458333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 25
        Top = 73
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          66.145833333333340000
          193.145833333333300000
          404.812500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 201
        Top = 38
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          531.812500000000000000
          100.541666666666700000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 190
        Top = 117
        Width = 124
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          502.708333333333400000
          309.562500000000000000
          328.083333333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 196
        Top = 73
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          518.583333333333300000
          193.145833333333300000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'MatureDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText16: TQRDBText
        Left = 24
        Top = 112
        Width = 163
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          63.500000000000000000
          296.333333333333400000
          431.270833333333400000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AmountBill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText15: TQRDBText
        Left = 381
        Top = 112
        Width = 242
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          108.479166666666700000
          1008.062500000000000000
          296.333333333333400000
          640.291666666666800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AmountBill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText14: TQRDBText
        Left = 368
        Top = 37
        Width = 213
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          973.666666666666900000
          97.895833333333340000
          563.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText12: TQRDBText
        Left = 617
        Top = 36
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1632.479166666667000000
          95.250000000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 612
        Top = 76
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1619.250000000000000000
          201.083333333333300000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'MatureDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object CashTitle3: TQRLabel
        Left = 125
        Top = 7
        Width = 122
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          330.729166666666700000
          18.520833333333330000
          322.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
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
      object CashLogo3: TQRImage
        Left = 10
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
          26.458333333333330000
          5.291666666666667000
          185.208333333333300000)
        Stretch = True
      end
      object QRShape21: TQRShape
        Left = 364
        Top = 5
        Width = 394
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          963.083333333333400000
          13.229166666666670000
          1042.458333333333000000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object CashTitle4: TQRLabel
        Left = 497
        Top = 7
        Width = 122
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1314.979166666667000000
          18.520833333333330000
          322.791666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
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
      object QRShape22: TQRShape
        Left = 364
        Top = 179
        Width = 394
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333340000
          963.083333333333400000
          473.604166666666700000
          1042.458333333333000000)
        Brush.Color = clSkyBlue
        Pen.Style = psClear
        Shape = qrsRectangle
      end
      object payam3_S: TQRLabel
        Left = 686
        Top = 181
        Width = 69
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          1815.041666666667000000
          478.895833333333300000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = '-----------------'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object payam4_M: TQRLabel
        Left = 264
        Top = 181
        Width = 69
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          698.500000000000000000
          478.895833333333300000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = '-----------------'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRAngledLabel1: TQRAngledLabel
        Left = 9
        Top = 74
        Width = 24
        Height = 130
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          343.958333333333400000
          23.812500000000000000
          195.791666666666700000
          63.500000000000000000)
        Angle = 90
        AutoSize = False
        Caption = #1605#1582#1589#1608#1589' '#1593#1590#1608
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        FontSize = 8
      end
      object QRAngledLabel2: TQRAngledLabel
        Left = 361
        Top = 48
        Width = 24
        Height = 155
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          410.104166666666800000
          955.145833333333500000
          127.000000000000000000
          63.500000000000000000)
        Angle = 90
        AutoSize = False
        Caption = #1605#1582#1589#1608#1589' '#1589#1606#1583#1608#1602
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        FontSize = 8
      end
    end
    object QRStringsBand1: TQRStringsBand
      Left = 15
      Top = 231
      Width = 771
      Height = 40
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
        105.833333333333300000
        2039.937500000000000000)
      Master = QuickRep1
      PrintBefore = False
    end
  end
  object PAccountDetail: TPanel [1]
    Left = 0
    Top = 0
    Width = 705
    Height = 571
    Align = alCustom
    Constraints.MinHeight = 200
    TabOrder = 2
    object qrProfile: TQuickRep
      Left = 87
      Top = 8
      Width = 559
      Height = 794
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      DataSet = spGetAccountProfile
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      Functions.Strings = (
        'PAGENUMBER'
        'COLUMNNUMBER'
        'REPORTTITLE'
        'QRSTRINGSBAND1'
        'QRSTRINGSBAND2')
      Functions.DATA = (
        '0'
        '0'
        #39#39
        #39#39
        #39#39)
      OnPreview = qrProfilePreview
      Options = []
      Page.Columns = 1
      Page.Orientation = poPortrait
      Page.PaperSize = A5
      Page.Values = (
        50.000000000000000000
        2100.000000000000000000
        50.000000000000000000
        1480.000000000000000000
        40.000000000000000000
        20.000000000000000000
        20.000000000000000000)
      PrinterSettings.Copies = 1
      PrinterSettings.Duplex = False
      PrinterSettings.FirstPage = 0
      PrinterSettings.LastPage = 0
      PrinterSettings.OutputBin = Auto
      PrintIfEmpty = True
      SnapToGrid = True
      Units = Native
      Zoom = 100
      object TitleBand1: TQRBand
        Left = 15
        Top = 19
        Width = 536
        Height = 254
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
          672.041666666666700000
          1418.166666666667000000)
        BandType = rbTitle
        object QRDBText10: TQRDBText
          Left = 363
          Top = 91
          Width = 50
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            960.437500000000000000
            240.770833333333300000
            132.291666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'LFName'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRShape24: TQRShape
          Left = 123
          Top = 28
          Width = 396
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            66.145833333333330000
            325.437500000000000000
            74.083333333333330000
            1047.750000000000000000)
          Brush.Color = clSkyBlue
          Pen.Style = psClear
          Shape = qrsRectangle
        end
        object QRShape25: TQRShape
          Left = 13
          Top = 29
          Width = 504
          Height = 25
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            66.145833333333330000
            34.395833333333330000
            76.729166666666670000
            1333.500000000000000000)
          Brush.Color = clSkyBlue
          Pen.Style = psClear
          Shape = qrsRectangle
        end
        object ProfileCashTitle: TQRLabel
          Left = 205
          Top = 31
          Width = 122
          Height = 20
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            52.916666666666670000
            542.395833333333300000
            82.020833333333330000
            322.791666666666700000)
          Alignment = taCenter
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
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
        object QRLabel6: TQRLabel
          Left = 449
          Top = 64
          Width = 65
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1187.979166666667000000
            169.333333333333300000
            171.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText7: TQRDBText
          Left = 379
          Top = 65
          Width = 65
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1002.770833333333000000
            171.979166666666700000
            171.979166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'AccountNo'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBImage1: TQRDBImage
          Left = 16
          Top = 56
          Width = 97
          Height = 97
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            256.645833333333300000
            42.333333333333330000
            148.166666666666700000
            256.645833333333300000)
        end
        object QRLabel7: TQRLabel
          Left = 416
          Top = 90
          Width = 98
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1100.666666666667000000
            238.125000000000000000
            259.291666666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = False
          AutoStretch = False
          Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText11: TQRDBText
          Left = 111
          Top = 91
          Width = 72
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            293.687500000000000000
            240.770833333333300000
            190.500000000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'FatherName'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel9: TQRLabel
          Left = 187
          Top = 90
          Width = 39
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            494.770833333333300000
            238.125000000000000000
            103.187500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1606#1575#1605' '#1662#1583#1585' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText13: TQRDBText
          Left = 434
          Top = 115
          Width = 68
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1148.291666666667000000
            304.270833333333300000
            179.916666666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'PersonalNo'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel16: TQRLabel
          Left = 174
          Top = 114
          Width = 54
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            460.375000000000000000
            301.625000000000000000
            142.875000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1578#1575#1585#1610#1582' '#1578#1608#1604#1583' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText19: TQRDBText
          Left = 115
          Top = 115
          Width = 55
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            304.270833333333300000
            304.270833333333300000
            145.520833333333300000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'BirthDate'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText20: TQRDBText
          Left = 32
          Top = 115
          Width = 25
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            84.666666666666670000
            304.270833333333300000
            66.145833333333330000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'Title'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel18: TQRLabel
          Left = 60
          Top = 114
          Width = 40
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            158.750000000000000000
            301.625000000000000000
            105.833333333333300000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1580#1606#1587#1610#1578' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel21: TQRLabel
          Left = 449
          Top = 138
          Width = 65
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1187.979166666667000000
            365.125000000000000000
            171.979166666666700000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1606#1608#1593' '#1593#1590#1608#1610#1578' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText21: TQRDBText
          Left = 345
          Top = 139
          Width = 99
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            912.812500000000000000
            367.770833333333300000
            261.937500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'MonthlyTypeTitle'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText22: TQRDBText
          Left = 153
          Top = 139
          Width = 45
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            404.812500000000000000
            367.770833333333300000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'Phones'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel22: TQRLabel
          Left = 201
          Top = 138
          Width = 27
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            531.812500000000000000
            365.125000000000000000
            71.437500000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1578#1604#1601#1606' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel28: TQRLabel
          Left = 469
          Top = 164
          Width = 45
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            1240.895833333333000000
            433.916666666666700000
            119.062500000000000000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1605#1608#1580#1608#1583#1610' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText26: TQRDBText
          Left = 402
          Top = 165
          Width = 31
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            1063.625000000000000000
            436.562500000000000000
            82.020833333333330000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'Exist'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRDBText27: TQRDBText
          Left = 168
          Top = 165
          Width = 59
          Height = 17
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            44.979166666666670000
            444.500000000000000000
            436.562500000000000000
            156.104166666666700000)
          Alignment = taRightJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Color = clWhite
          DataSet = spGetAccountProfile
          DataField = 'TotalExist'
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
        object QRLabel30: TQRLabel
          Left = 254
          Top = 164
          Width = 60
          Height = 19
          Frame.Color = clBlack
          Frame.DrawTop = False
          Frame.DrawBottom = False
          Frame.DrawLeft = False
          Frame.DrawRight = False
          Size.Values = (
            50.270833333333330000
            672.041666666666700000
            433.916666666666700000
            158.750000000000000000)
          Alignment = taLeftJustify
          AlignToBand = False
          AutoSize = True
          AutoStretch = False
          Caption = #1605#1608#1580#1608#1583#1610' '#1705#1604' :'
          Color = clWhite
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = False
          WordWrap = True
          FontSize = 10
        end
      end
    end
  end
  object QuickRep2: TQuickRep [2]
    Left = 784
    Top = 12
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Frame.Style = psDot
    DataSet = dm.Select_Monthly_Details
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
      70.000000000000000000
      2970.000000000000000000
      70.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      50.000000000000000000
      20.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Left = 38
      Top = 26
      Width = 737
      Height = 356
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
        941.916666666666700000
        1949.979166666667000000)
      BandType = rbDetail
      object QRShape19: TQRShape
        Left = 373
        Top = 2
        Width = 358
        Height = 340
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          899.583333333333200000
          986.895833333333200000
          5.291666666666667000
          947.208333333333200000)
        Shape = qrsRectangle
      end
      object QRShape14: TQRShape
        Left = 0
        Top = 2
        Width = 358
        Height = 340
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          899.583333333333200000
          0.000000000000000000
          5.291666666666667000
          947.208333333333200000)
        Shape = qrsRectangle
      end
      object Cashtitle2: TQRLabel
        Left = 122
        Top = 19
        Width = 120
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          322.791666666666700000
          50.270833333333330000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
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
      object QRLabel23: TQRLabel
        Left = 235
        Top = 154
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          621.770833333333400000
          407.458333333333400000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
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
      object QRLabel24: TQRLabel
        Left = 246
        Top = 187
        Width = 55
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          650.875000000000000000
          494.770833333333400000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1581#1602' '#1593#1590#1608#1610#1578
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
      object QRLabel25: TQRLabel
        Left = 237
        Top = 249
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          627.062500000000000000
          658.812500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
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
      object QRDBText17: TQRDBText
        Left = 152
        Top = 156
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          402.166666666666700000
          412.750000000000000000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'MatureDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 154
        Top = 189
        Width = 88
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          407.458333333333300000
          500.062500000000000000
          232.833333333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 259
        Top = 220
        Width = 42
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          685.270833333333400000
          582.083333333333400000
          111.125000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '
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
      object QRLabel29: TQRLabel
        Left = 285
        Top = 80
        Width = 16
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          754.062500000000000000
          211.666666666666700000
          42.333333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '
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
      object QRDBText23: TQRDBText
        Left = 15
        Top = 80
        Width = 250
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          39.687500000000000000
          211.666666666666700000
          661.458333333333200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape15: TQRShape
        Left = 362
        Top = 0
        Width = 10
        Height = 360
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          952.500000000000000000
          957.791666666666800000
          0.000000000000000000
          26.458333333333330000)
        Pen.Style = psDot
        Shape = qrsVertLine
      end
      object Payam2_M: TQRLabel
        Left = 8
        Top = 276
        Width = 300
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          111.125000000000000000
          21.166666666666670000
          730.250000000000000000
          793.750000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = '-----------------'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText32: TQRDBText
        Left = 3
        Top = 189
        Width = 139
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          7.937500000000000000
          500.062500000000000000
          367.770833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'amountBill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape9: TQRShape
        Left = 1
        Top = 75
        Width = 357
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          2.645833333333333000
          198.437500000000000000
          944.562500000000000000)
        Shape = qrsHorLine
      end
      object QRShape10: TQRShape
        Left = 8
        Top = 136
        Width = 297
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          21.166666666666670000
          359.833333333333300000
          785.812500000000000000)
        Shape = qrsHorLine
      end
      object QRShape11: TQRShape
        Left = 8
        Top = 273
        Width = 297
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.937500000000000000
          21.166666666666670000
          722.312500000000000000
          785.812500000000000000)
        Shape = qrsHorLine
      end
      object QRShape12: TQRShape
        Left = 312
        Top = 76
        Width = 1
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666800000
          825.500000000000000000
          201.083333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object Cashtitle1: TQRLabel
        Left = 499
        Top = 19
        Width = 120
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1320.270833333333000000
          50.270833333333330000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1589#1606#1583#1608#1602' '#1602#1585#1590' '#1575#1604#1581#1587#1606#1607' '#1610#1711#1575#1606#1607
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
      object QRLabel32: TQRLabel
        Left = 657
        Top = 154
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1738.312500000000000000
          407.458333333333400000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1587#1585#1585#1587#1610#1583
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
      object QRLabel33: TQRLabel
        Left = 668
        Top = 187
        Width = 55
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1767.416666666667000000
          494.770833333333400000
          145.520833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1581#1602' '#1593#1590#1608#1610#1578
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
      object QRLabel34: TQRLabel
        Left = 659
        Top = 249
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1743.604166666667000000
          658.812500000000000000
          169.333333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1662#1585#1583#1575#1582#1578
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
      object QRDBText24: TQRDBText
        Left = 574
        Top = 156
        Width = 74
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1518.708333333333000000
          412.750000000000000000
          195.791666666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'MatureDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText25: TQRDBText
        Left = 577
        Top = 189
        Width = 87
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1526.645833333333000000
          500.062500000000000000
          230.187500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'Amount'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel35: TQRLabel
        Left = 617
        Top = 220
        Width = 106
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1632.479166666667000000
          582.083333333333400000
          280.458333333333400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '#1576#1593#1583' '#1575#1586' '#1662#1585#1583#1575#1582#1578
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
      object QRLabel37: TQRLabel
        Left = 707
        Top = 80
        Width = 16
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1870.604166666667000000
          211.666666666666700000
          42.333333333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '
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
      object QRDBText30: TQRDBText
        Left = 437
        Top = 80
        Width = 260
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1156.229166666667000000
          211.666666666666700000
          687.916666666666800000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Payam1_S: TQRLabel
        Left = 438
        Top = 272
        Width = 283
        Height = 50
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          132.291666666666700000
          1158.875000000000000000
          719.666666666666800000
          748.770833333333200000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = True
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = '-----------------'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRDBText31: TQRDBText
        Left = 433
        Top = 189
        Width = 141
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1145.645833333333000000
          500.062500000000000000
          373.062500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'amountBill'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 373
        Top = 72
        Width = 357
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          986.895833333333200000
          190.500000000000000000
          944.562500000000000000)
        Shape = qrsHorLine
      end
      object QRShape16: TQRShape
        Left = 432
        Top = 136
        Width = 299
        Height = 9
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          23.812500000000000000
          1143.000000000000000000
          359.833333333333300000
          791.104166666666800000)
        Shape = qrsHorLine
      end
      object QRShape17: TQRShape
        Left = 432
        Top = 270
        Width = 299
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          1143.000000000000000000
          714.375000000000000000
          791.104166666666800000)
        Shape = qrsHorLine
      end
      object QRShape18: TQRShape
        Left = 432
        Top = 76
        Width = 1
        Height = 266
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          703.791666666666800000
          1143.000000000000000000
          201.083333333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel20: TQRLabel
        Left = 656
        Top = 109
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1735.666666666667000000
          288.395833333333400000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1593#1590#1608#1610#1578
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
      object QRDBText33: TQRDBText
        Left = 572
        Top = 111
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1513.416666666667000000
          293.687500000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 234
        Top = 109
        Width = 67
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          619.125000000000000000
          288.395833333333400000
          177.270833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1593#1590#1608#1610#1578
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
      object QRDBText34: TQRDBText
        Left = 161
        Top = 111
        Width = 69
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          425.979166666666700000
          293.687500000000000000
          182.562500000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'AccountNo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel38: TQRLabel
        Left = 667
        Top = 319
        Width = 62
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1764.770833333333000000
          844.020833333333200000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1585#1587#1610#1583' '#1589#1606#1583#1608#1602
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
      object QRLabel39: TQRLabel
        Left = 210
        Top = 318
        Width = 81
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          555.625000000000000000
          841.375000000000000000
          214.312500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1585#1587#1610#1583' '#1608#1575#1585#1610#1586' '#1705#1606#1606#1583#1607
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
      object QRLabel40: TQRLabel
        Left = 446
        Top = 218
        Width = 21
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1180.041666666667000000
          576.791666666666800000
          55.562500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 17
        Top = 218
        Width = 21
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          44.979166666666670000
          576.791666666666800000
          55.562500000000000000)
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
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape20: TQRShape
        Left = 0
        Top = 350
        Width = 735
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          18.520833333333330000
          0.000000000000000000
          926.041666666666800000
          1944.687500000000000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
      object QRLabel2: TQRLabel
        Left = 145
        Top = 37
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          383.645833333333400000
          97.895833333333340000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1601#1578#1585#1670#1607' '#1593#1590#1608#1610#1578
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
        Left = 522
        Top = 37
        Width = 73
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1381.125000000000000000
          97.895833333333340000
          193.145833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583#1601#1578#1585#1670#1607' '#1593#1590#1608#1610#1578
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
      object QRDBText4: TQRDBText
        Left = 594
        Top = 252
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1571.625000000000000000
          666.750000000000000000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'PayDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 172
        Top = 252
        Width = 54
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          455.083333333333300000
          666.750000000000000000
          142.875000000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Color = clWhite
        DataSet = dm.Select_Monthly_Details
        DataField = 'PayDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object CashLogo4: TQRImage
        Left = 4
        Top = 4
        Width = 70
        Height = 70
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          185.208333333333300000
          10.583333333333330000
          10.583333333333330000
          185.208333333333300000)
        Stretch = True
      end
    end
  end
  object Panel3: TPanel [3]
    Left = 0
    Top = 217
    Width = 704
    Height = 200
    Align = alBottom
    Constraints.MinHeight = 41
    TabOrder = 4
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 367
      Height = 198
      Align = alClient
      TabOrder = 0
      object Panel5: TPanel
        Left = 1
        Top = 1
        Width = 365
        Height = 28
        Align = alTop
        BorderStyle = bsSingle
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 0
        DesignSize = (
          361
          24)
        object SBChRev1: TSpeedButton
          Left = 77
          Top = 1
          Width = 23
          Height = 22
          Hint = #1575#1606#1578#1582#1575#1576' '#1605#1593#1603#1608#1587
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCA9B9EBE575BBE575BBE575B
            BE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE57
            5BC78A8ED8E9ECD8E9ECD8E9ECD8E9ECBB4549C3777AC9979BC9979BC9979BC9
            979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC6878AB62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD3CBCFBC4B4EAF080CAF0509AF0509AF
            0509AF0509CCA6A9D8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E9ECD4D4D7B21519AF080CBC4D51BF6064BF6064BF6064BF60
            64D1C1C4D8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CF
            B6B9D8E9ECBF5E61AF0509CBA3A7D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9
            ECB5282CB42024D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECB83539
            B11216D7E4E7D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CF
            D2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECC47B7FAF0509C0
            6366D7E4E7D8E9ECD8E9ECCEB3B7BD5559D3CED1D8E9ECD8E9ECD4CFD2B62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD7E1E4B93B3EAF0509AF08
            0CB73336B73336B5282CAF0509B00D11C37679D7E1E4D4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E6E9C68689BC4B4EB73336
            B73336B5282CAF0509B11216C68387D8E6E9D4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCF
            B6B9C06366D5D9DCD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBF5E62B5
            2529B5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292D
            B5292DB5292DB5282BBB4549D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9EC}
          ParentShowHint = False
          ShowHint = True
          OnClick = SBChRev1Click
        end
        object SBChNone1: TSpeedButton
          Left = 54
          Top = 1
          Width = 23
          Height = 22
          Hint = #1575#1606#1578#1582#1575#1576' '#1607#1610#1670
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCA9B9EBE575BBE575BBE575B
            BE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE57
            5BC78A8ED8E9ECD8E9ECD8E9ECD8E9ECBB4549C3777AC9979BC9979BC9979BC9
            979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC6878AB62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CF
            B6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CF
            D2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBF5E62B5
            2529B5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292D
            B5292DB5292DB5282BBB4549D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9EC}
          ParentShowHint = False
          ShowHint = True
          OnClick = SBChNone1Click
        end
        object SBChAll1: TSpeedButton
          Left = 31
          Top = 1
          Width = 23
          Height = 22
          Hint = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCA9B9EBE575BBE575BBE575B
            BE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE575BBE57
            5BC78A8ED8E9ECD8E9ECD8E9ECD8E9ECBB4549C3777AC9979BC9979BC9979BC9
            979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC9979BC6878AB62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD3CE
            D1CA999CD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD3CED1B42326B11014
            D3CBCFD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD3CED1B42326AF0509AF0509B8383CD7
            E4E7D8E9ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E6E9C68689B11014AF0509B31D21B73034AF0509BE5B5ED8E9
            ECD8E9ECD8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CF
            B6B9CEB3B7B42024AF0509AF0509C88E91CCA6A9AF0509AF0509C4787CD8E9EC
            D8E9ECD8E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9
            ECD6DEE1C26E71B5282CD7E4E7D8E9ECB93B3EAF0509AF0509C37679D8E9ECD8
            E9ECD4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9EC
            D8E9ECD7E1E4D8E9ECD8E9ECD0BEC1B00A0EAF0509AF0509BD5054D3CED1D4CF
            D2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECC4787CAF0509AF0509AF0509C27074D4CFD2B62C2F
            D8E9ECD8E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E6E9BC4B4EAF0509AF0509CA9EA1D4CFD2B62C2FD8E9ECD8
            E9ECD8E9ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD7E1E4BA4044AF0509CA999CD4CFD2B62C2FD8E9ECD8E9ECD8E9
            ECD8E9ECBB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD7E1E4C06366C68689D4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9EC
            BB4549CFB6B9D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD7E1E4D4CFD2B62C2FD8E9ECD8E9ECD8E9ECD8E9ECBF5E62B5
            2529B5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292DB5292D
            B5292DB5292DB5282BBB4549D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9EC}
          ParentShowHint = False
          ShowHint = True
          OnClick = SBChAll1Click
        end
        object SBChSrch1: TSpeedButton
          Left = 8
          Top = 1
          Width = 23
          Height = 22
          Hint = #1580#1587#1578#1580#1608
          Glyph.Data = {
            E6040000424DE604000000000000360000002800000014000000140000000100
            180000000000B0040000120B0000120B00000000000000000000D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD4D1D4BE5B5EC26E71
            D7E1E4D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCA999CB11216AF0509AF0509CBA3A7D8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD6DCDFBC4D51AF0509AF0509AF0509B62B2ED5D9DCD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCC
            A9ACB31D21AF0509AF0509AF0509C16B6ED7E1E4D8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD3CBCFBE5B5EB11014AF0509B21519BF6064D5D9DCC4787CAF0509AF05
            09AF0509B31D21CDABAFD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD0BEC1B2
            1519B11216C06366C68689BD5054B00A0EB42024B00D11AF0509AF0509BD5559
            D6DCDFD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E6E9B52529B42326D3CE
            D1D8E9ECD8E9ECD8E9ECCEB1B4B21519B00A0EB93D41CA9EA1D8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECCCA6A9AF0509CCA6A9D8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECC88E91AF0509D1C1C4D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECC68387AF0509D7E1E4D8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD2C9CCAF0509C99397D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECC68689AF0509D4D1D4D8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD0BEC1AF0509CBA1A4D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECCFB9BCAF0509C58084D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECC1686C
            AF080CD4D4D7D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECBC4D51AF080CC99397D8E9ECD8E9ECD8E9ECC78B8FAF080CC06366D8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D7E4E7BD5054AF0509B31A1EB93D41B42024AF0509BB484CD7E1E4D8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECC99397BB484CB73336BD5559CBA1A4D8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
            E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
            D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
            ECD8E9ECD8E9ECD8E9EC}
          ParentShowHint = False
          ShowHint = True
          OnClick = SBChSrch1Click
        end
        object Label1: TLabel
          Left = 117
          Top = 5
          Width = 234
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1575#1606#1578#1582#1575#1576' '#1670#1606#1583#1610#1606' '#1581#1587#1575#1576' '#1580#1607#1578' '#1670#1575#1662' '#1583#1601#1578#1585#1670#1607' '#1581#1602' '#1593#1590#1608#1610#1578
        end
        object Button3: TButton
          Left = 103
          Top = 1
          Width = 257
          Height = 23
          Caption = #1575#1606#1578#1582#1575#1576' '#1670#1606#1583#1610#1606' '#1581#1587#1575#1576' '#1580#1607#1578' '#1670#1575#1662' '#1583#1601#1578#1585#1670#1607' '#1581#1602' '#1593#1590#1608#1610#1578
          TabOrder = 0
          OnClick = Button3Click
        end
      end
      object CKLBAccount: TYchecklistBox
        Left = 1
        Top = 29
        Width = 365
        Height = 168
        TabStop = False
        Align = alClient
        Columns = 2
        Ctl3D = True
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 14
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        Ydataset = ADOQuery
        TitleField = 'AccountNoAcc'
        IDField = 'AccountID'
      end
    end
    object Panel1: TPanel
      Left = 368
      Top = 1
      Width = 335
      Height = 198
      Align = alRight
      TabOrder = 1
      DesignSize = (
        335
        198)
      object Label2: TLabel
        Left = 219
        Top = 95
        Width = 105
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1605#1581#1583#1608#1583#1607' '#1586#1605#1575#1606#1610' : '#1575#1586' '#1578#1575#1585#1610#1582
      end
      object Label3: TLabel
        Left = 116
        Top = 95
        Width = 6
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575
      end
      object Label4: TLabel
        Left = 210
        Top = 119
        Width = 114
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1575#1605' '#1605#1582#1589#1608#1589' '#1608#1575#1585#1610#1586' '#1705#1606#1606#1583#1607':'
      end
      object Label5: TLabel
        Left = 223
        Top = 157
        Width = 101
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1662#1610#1575#1605' '#1605#1582#1589#1608#1589' '#1589#1606#1583#1608#1602':'
      end
      object PayStatus: TRadioGroup
        Left = 15
        Top = 4
        Width = 309
        Height = 35
        Anchors = [akTop, akRight]
        Columns = 3
        ItemIndex = 0
        Items.Strings = (
          #1662#1585#1583#1575#1582#1578' '#1606#1588#1583#1607
          ' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
          #1607#1605#1607' '#1605#1608#1575#1585#1583)
        TabOrder = 0
      end
      object RadioGroup2: TRadioGroup
        Left = 15
        Top = 42
        Width = 309
        Height = 35
        Anchors = [akTop, akRight]
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          #1662#1606#1580' '#1602#1576#1590' '#1583#1585' '#1589#1601#1581#1607
          #1587#1607' '#1602#1576#1590' '#1583#1585' '#1589#1601#1581#1607)
        TabOrder = 1
      end
      object message_M: TEdit
        Left = 15
        Top = 136
        Width = 306
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 2
        Text = '.........................................................'
      end
      object MEDateFrom: TSolarDatePicker
        Left = 126
        Top = 92
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        TabOrder = 3
        Enabled = True
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
      object MEDateTo: TSolarDatePicker
        Left = 16
        Top = 92
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        About = 'Created by : Mohamad Khorsandi'
        BiDiMode = bdLeftToRight
        TabOrder = 4
        Enabled = True
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
      object message_S: TEdit
        Left = 15
        Top = 173
        Width = 306
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 5
        Text = '.........................................................'
      end
    end
  end
  object Panel2: TPanel [4]
    Left = 0
    Top = 417
    Width = 704
    Height = 41
    Align = alBottom
    TabOrder = 3
    DesignSize = (
      704
      41)
    object Button1: TButton
      Left = 12
      Top = 8
      Width = 75
      Height = 25
      Action = AExit
      TabOrder = 0
    end
    object Button2: TButton
      Left = 572
      Top = 8
      Width = 117
      Height = 25
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588' '#1608' '#1670#1575#1662' F9'
      TabOrder = 1
      OnClick = Button2Click
    end
    object ChBoPreview: TCheckBox
      Left = 364
      Top = 12
      Width = 201
      Height = 17
      Anchors = [akTop, akRight]
      Caption = #1602#1576#1604' '#1575#1586' '#1670#1575#1662' '#1662#1610#1588' '#1606#1605#1575#1610#1588' '#1606#1588#1575#1606' '#1583#1575#1583#1607' '#1588#1608#1583
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object btnPrintProfile: TButton
      Left = 100
      Top = 8
      Width = 75
      Height = 25
      Caption = #1670#1575#1662
      TabOrder = 3
      OnClick = btnPrintProfileClick
    end
  end
  inherited ahmadvand: TActionList
    Left = 401
    Top = 12
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 161
    Top = 68
  end
  object Report_Account: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    CommandTimeout = 600
    ProcedureName = 'Report_Account;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AccountTypeID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = 1
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1000
        Value = Null
      end
      item
        Name = '@ROWCOUNT'
        DataType = ftInteger
        Value = 0
      end>
    Left = 57
    Top = 20
    object Report_AccountMonthlyTypeTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'MonthlyTypeTitle'
      Size = 50
    end
    object Report_AccountBankTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'BankTitle'
      Size = 50
    end
    object Report_AccountAccountID: TAutoIncField
      FieldName = 'AccountID'
      ReadOnly = True
    end
    object Report_AccountAccountTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'AccountTitle'
      Size = 100
    end
    object Report_AccountAccountDate: TStringField
      FieldName = 'AccountDate'
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 11
    end
    object Report_AccountMonthlyTypeID: TIntegerField
      FieldName = 'MonthlyTypeID'
    end
    object Report_AccountMonthlyBeginDate: TStringField
      FieldName = 'MonthlyBeginDate'
      EditMask = #8207'!1399/99/99;1;_'
      FixedChar = True
      Size = 11
    end
    object Report_AccountFamilyid: TIntegerField
      FieldName = 'Familyid'
    end
    object Report_AccountAccountTypeID: TWordField
      FieldName = 'AccountTypeID'
    end
    object Report_AccountContactID: TAutoIncField
      FieldName = 'ContactID'
      ReadOnly = True
    end
    object Report_AccountPersonalNo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'PersonalNo'
      Size = 50
    end
    object Report_AccountFirstName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FirstName'
      Size = 30
    end
    object Report_AccountLastName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'LastName'
      Size = 40
    end
    object Report_AccountFullName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FullName'
      ReadOnly = True
      Size = 71
    end
    object Report_AccountFatherName: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FatherName'
      Size = 30
    end
    object Report_AccountIdno: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Idno'
      Size = 10
    end
    object Report_AccountBirthPlace: TWideStringField
      Alignment = taRightJustify
      FieldName = 'BirthPlace'
      Size = 30
    end
    object Report_AccountAddress: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Address'
      Size = 100
    end
    object Report_AccountPhones: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Phones'
      Size = 50
    end
    object Report_AccountJob: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Job'
      Size = 50
    end
    object Report_AccountMemo: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Memo'
      Size = 500
    end
    object Report_AccountUserField1: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserField1'
      Size = 100
    end
    object Report_AccountUserField2: TWideStringField
      Alignment = taRightJustify
      FieldName = 'UserField2'
      Size = 100
    end
    object Report_AccountContactTypeID: TWordField
      FieldName = 'ContactTypeID'
    end
    object Report_AccountFamilyTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'FamilyTitle'
      Size = 50
    end
    object Report_AccountIsActive: TBooleanField
      Alignment = taRightJustify
      FieldName = 'IsActive'
    end
    object Report_AccountBirthDate: TStringField
      FieldName = 'BirthDate'
      EditMask = #8207'!1399/99/99;1;_'
      Size = 11
    end
    object Report_Accountexist: TYLargeIntField
      FieldName = 'exist'
      ReadOnly = True
    end
    object Report_AccountAccountNo: TStringField
      Alignment = taRightJustify
      FieldName = 'AccountNo'
      Size = 10
    end
    object Report_AccountDebitStatusTitle: TStringField
      Alignment = taRightJustify
      FieldName = 'DebitStatusTitle'
      ReadOnly = True
      Size = 16
    end
  end
  object DReport_Account: TDataSource
    DataSet = Report_Account
    Left = 57
    Top = 72
  end
  object QrSrchAccount: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      
        'SELECT Top 500 Account.AccountID, Account.AccountTitle, AccountN' +
        'o'
      'FROM Account'
      'INNER JOIN Contact ON Account.ContactID = Contact.ContactID'
      'LEFT  JOIN Bank ON Account.BankID = Bank.BankID'
      
        'LEFT  JOIN MonthlyType ON Account.MonthlyTypeID = MonthlyType.Mo' +
        'nthlyTypeID'
      'LEFT  JOIN Family ON Family.FamilyID = Account.FamilyID'
      'WHERE (1=1)'
      '  And (Account.AccountTypeID = 1)'
      '')
    Left = 144
    Top = 20
    object QrSrchAccountAccountID: TAutoIncField
      FieldName = 'AccountID'
      ReadOnly = True
    end
    object QrSrchAccountAccountNo: TStringField
      Tag = 1
      DisplayLabel = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      DisplayWidth = 7
      FieldName = 'AccountNo'
    end
    object QrSrchAccountAccountTitle: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
      DisplayWidth = 40
      FieldName = 'AccountTitle'
      Size = 100
    end
  end
  object ADOQuery: TADOQuery
    Connection = dm.YeganehConnection
    Parameters = <>
    Left = 120
    Top = 72
  end
  object spGetAccountProfile: TADOStoredProc
    Connection = dm.YeganehConnection
    ProcedureName = 'GetAccountProfile;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AccountId'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 10
        Value = 0
      end
      item
        Name = '@Year'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 64
    Top = 144
    object spGetAccountProfileAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object spGetAccountProfileLFName: TWideStringField
      FieldName = 'LFName'
      ReadOnly = True
      Size = 71
    end
    object spGetAccountProfileFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 30
    end
    object spGetAccountProfileAccountDate: TStringField
      FieldName = 'AccountDate'
      FixedChar = True
      Size = 10
    end
    object spGetAccountProfileBirthDate: TStringField
      FieldName = 'BirthDate'
      Size = 10
    end
    object spGetAccountProfileTitle: TStringField
      FieldName = 'Title'
      Size = 100
    end
    object spGetAccountProfilePhones: TWideStringField
      FieldName = 'Phones'
      ReadOnly = True
      Size = 50
    end
    object spGetAccountProfilePersonalNo: TWideStringField
      FieldName = 'PersonalNo'
      ReadOnly = True
      Size = 50
    end
    object spGetAccountProfileExist: TLargeintField
      FieldName = 'Exist'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object spGetAccountProfileTotalExist: TLargeintField
      FieldName = 'TotalExist'
      ReadOnly = True
      DisplayFormat = '#,##0'
    end
    object spGetAccountProfilepicture: TBlobField
      FieldName = 'picture'
    end
    object spGetAccountProfileMonthlyTypeTitle: TWideStringField
      FieldName = 'MonthlyTypeTitle'
      Size = 50
    end
  end
end
