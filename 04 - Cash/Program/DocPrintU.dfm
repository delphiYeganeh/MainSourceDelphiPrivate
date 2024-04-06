inherited FrDocPrint: TFrDocPrint
  Left = 437
  Top = 217
  AutoScroll = False
  Caption = #1711#1586#1575#1585#1588' '#1578#1605#1575#1605#1610' '#1575#1587#1606#1575#1583
  ClientHeight = 455
  ClientWidth = 735
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep2: TQuickRep [0]
    Left = 208
    Top = 436
    Width = 1347
    Height = 952
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = dm.REPORT_PAYMENT_ForPrint
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
    Units = Pixels
    Zoom = 120
    object QRBand1: TQRBand
      Left = 45
      Top = 45
      Width = 1256
      Height = 133
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = 15066597
      ForceNewColumn = True
      ForceNewPage = False
      Size.Values = (
        293.246527777777800000
        2769.305555555556000000)
      BandType = rbTitle
      object QRLblTitle2: TQRLabel
        Left = 406
        Top = 10
        Width = 444
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          81.579861111111110000
          895.173611111111100000
          22.048611111111110000
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
      object QRLabel16: TQRLabel
        Left = 576
        Top = 55
        Width = 103
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          70.555555555555560000
          1270.000000000000000000
          121.267361111111100000
          227.100694444444400000)
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
      object QRLabel19: TQRLabel
        Left = 123
        Top = 55
        Width = 92
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          70.555555555555560000
          271.197916666666700000
          121.267361111111100000
          202.847222222222200000)
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
      object CashLogo2: TQRImage
        Left = 2
        Top = 2
        Width = 111
        Height = 111
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          244.739583333333300000
          4.409722222222222000
          4.409722222222222000
          244.739583333333300000)
        Stretch = True
      end
    end
    object QRBand3: TQRBand
      Left = 45
      Top = 246
      Width = 1256
      Height = 72
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
        2769.305555555556000000)
      BandType = rbDetail
      object QRDBText9: TQRDBText
        Left = 986
        Top = 20
        Width = 78
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.121527777777790000
          2173.993055555556000000
          44.097222222222230000
          171.979166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRShape7: TQRShape
        Left = 223
        Top = 0
        Width = 1
        Height = 72
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
      object QRShape12: TQRShape
        Left = 984
        Top = 0
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2169.583333333333000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText10: TQRDBText
        Left = 1
        Top = 2
        Width = 108
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.965277777777790000
          2.204861111111111000
          4.409722222222222000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRDBText13: TQRDBText
        Left = 111
        Top = 36
        Width = 111
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          72.760416666666680000
          244.739583333333300000
          79.375000000000000000
          244.739583333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRShape15: TQRShape
        Left = 109
        Top = 0
        Width = 1
        Height = 72
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
      object QRShape16: TQRShape
        Left = 392
        Top = 0
        Width = 1
        Height = 72
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
      object QRDBText14: TQRDBText
        Left = 395
        Top = 1
        Width = 587
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          871.235119047619200000
          1.889880952380953000
          1294.568452380952000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRLabel20: TQRLabel
        Left = 111
        Top = 2
        Width = 111
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          72.760416666666680000
          244.739583333333300000
          4.409722222222222000
          244.739583333333300000)
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
      object QRLabel21: TQRLabel
        Left = 1
        Top = 34
        Width = 108
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.965277777777790000
          2.204861111111111000
          74.965277777777790000
          238.125000000000000000)
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
      object QRDBText15: TQRDBText
        Left = 395
        Top = 24
        Width = 588
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666680000
          871.235119047619200000
          52.916666666666680000
          1296.458333333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRDBText16: TQRDBText
        Left = 395
        Top = 45
        Width = 587
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          871.235119047619200000
          98.273809523809540000
          1294.568452380952000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRShape17: TQRShape
        Left = 313
        Top = 0
        Width = 1
        Height = 72
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
      object QRDBText17: TQRDBText
        Left = 315
        Top = 22
        Width = 76
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888890000
          694.531250000000000000
          48.506944444444440000
          167.569444444444500000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRDBText18: TQRDBText
        Left = 226
        Top = 21
        Width = 87
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.531250000000000000
          498.298611111111200000
          46.302083333333340000
          191.822916666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRShape25: TQRShape
        Left = 1065
        Top = -1
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2349.122023809524000000
          -1.889880952380953000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape28: TQRShape
        Left = 1165
        Top = 1
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2568.348214285715000000
          1.889880952380953000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText19: TQRDBText
        Left = 1171
        Top = 17
        Width = 83
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          2581.577380952381000000
          37.797619047619050000
          183.318452380952400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRDBText20: TQRDBText
        Left = 1069
        Top = 18
        Width = 90
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          2356.681547619048000000
          39.687500000000000000
          198.437500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
    end
    object ColumnHeaderBand2: TQRBand
      Left = 45
      Top = 178
      Width = 1256
      Height = 68
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
        149.930555555555600000
        2769.305555555556000000)
      BandType = rbColumnHeader
      object QRShape18: TQRShape
        Left = 0
        Top = -1
        Width = 1256
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          153.080357142857200000
          0.000000000000000000
          -1.889880952380953000
          2768.675595238095000000)
        Shape = qrsRectangle
      end
      object QRLabel24: TQRLabel
        Left = 1172
        Top = 16
        Width = 76
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          70.555555555555560000
          2584.097222222222000000
          35.277777777777780000
          167.569444444444400000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583
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
        Left = 1092
        Top = 17
        Width = 43
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          2407.708333333333000000
          37.797619047619050000
          94.494047619047620000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
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
      object QRLabel26: TQRLabel
        Left = 999
        Top = 5
        Width = 54
        Height = 59
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          130.401785714285700000
          2201.711309523810000000
          11.339285714285710000
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
      object QRShape19: TQRShape
        Left = 223
        Top = -2
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          491.369047619047700000
          -3.779761904761905000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape20: TQRShape
        Left = 984
        Top = -2
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2169.583333333333000000
          -3.779761904761905000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRLabel27: TQRLabel
        Left = 678
        Top = 12
        Width = 45
        Height = 41
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          90.714285714285710000
          1494.895833333333000000
          26.458333333333340000
          98.273809523809540000)
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
      object QRLabel28: TQRLabel
        Left = 21
        Top = 2
        Width = 66
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.925595238095240000
          45.357142857142850000
          3.779761904761905000
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
      object QRLabel29: TQRLabel
        Left = 138
        Top = 2
        Width = 54
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          304.270833333333400000
          3.779761904761905000
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
      object QRShape21: TQRShape
        Left = 109
        Top = -2
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          240.014880952381000000
          -3.779761904761905000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 393
        Top = -2
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          865.565476190476200000
          -3.779761904761905000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 1
        Top = 32
        Width = 225
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.204861111111111000
          2.204861111111111000
          70.555555555555560000
          496.093750000000000000)
        Shape = qrsHorLine
      end
      object QRLabel30: TQRLabel
        Left = 44
        Top = 34
        Width = 22
        Height = 25
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.121527777777790000
          97.013888888888880000
          74.965277777777790000
          48.506944444444440000)
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
      object QRLabel31: TQRLabel
        Left = 158
        Top = 37
        Width = 22
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          88.194444444444450000
          348.368055555555600000
          81.579861111111120000
          48.506944444444440000)
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
      object QRShape24: TQRShape
        Left = 313
        Top = -2
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          689.806547619047700000
          -3.779761904761905000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRLabel32: TQRLabel
        Left = 317
        Top = 2
        Width = 72
        Height = 65
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          143.630952380952400000
          699.255952380952400000
          3.779761904761905000
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
      object QRLabel33: TQRLabel
        Left = 235
        Top = 2
        Width = 71
        Height = 61
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.181547619047600000
          517.827380952381000000
          3.779761904761905000
          156.860119047619000000)
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
      object QRShape26: TQRShape
        Left = 1065
        Top = 0
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2349.122023809524000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRShape27: TQRShape
        Left = 1165
        Top = 0
        Width = 1
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2568.348214285715000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
    end
    object PageFooterBand2: TQRBand
      Left = 45
      Top = 318
      Width = 1256
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
        101.423611111111100000
        2769.305555555556000000)
      BandType = rbPageFooter
      object QRLabel22: TQRLabel
        Left = 585
        Top = 6
        Width = 85
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          70.555555555555560000
          1289.843750000000000000
          13.229166666666670000
          187.413194444444400000)
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
        Left = 720
        Top = 7
        Width = 98
        Height = 32
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
  end
  object QuickRep1: TQuickRep [1]
    Left = 168
    Top = 396
    Width = 1111
    Height = 1572
    Frame.Color = clBlack
    Frame.DrawTop = True
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = dm.REPORT_PAYMENT_ForPrint
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
      99.993601190476190000
      2970.000000000000000000
      99.993601190476190000
      2100.000000000000000000
      99.993601190476190000
      99.993601190476190000
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
        Left = 825
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
          1559.151785714286000000
          39.687500000000000000
          134.181547619047600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Left = 898
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
          1697.113095238095000000
          0.000000000000000000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText4: TQRDBText
        Left = 1
        Top = 2
        Width = 126
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          73.705357142857140000
          1.889880952380953000
          3.779761904761905000
          238.125000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Left = 129
        Top = 44
        Width = 130
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          68.035714285714290000
          243.794642857142900000
          83.154761904761910000
          245.684523809523900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Width = 362
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
          684.136904761904800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Left = 129
        Top = 3
        Width = 130
        Height = 40
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          75.595238095238110000
          243.794642857142900000
          5.669642857142857000
          245.684523809523900000)
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
        Left = 1
        Top = 42
        Width = 125
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          1.889880952380953000
          79.375000000000000000
          236.235119047619100000)
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
        Width = 361
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666680000
          871.235119047619200000
          52.916666666666680000
          682.247023809523800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Width = 361
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          871.235119047619200000
          98.273809523809540000
          682.247023809523800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        Top = 26
        Width = 84
        Height = 29
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          54.806547619047620000
          699.255952380952400000
          49.136904761904770000
          158.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRShape30: TQRShape
        Left = 823
        Top = 1
        Width = 1
        Height = 83
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          156.860119047619000000
          1555.372023809524000000
          1.889880952380953000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRDBText21: TQRDBText
        Left = 901
        Top = 22
        Width = 96
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.366071428571420000
          1702.782738095238000000
          41.577380952380960000
          181.428571428571400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      Expression = 'REPORT_PAYMENT_ForPrint.DocumentNo'
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
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = 15329769
        DataSet = dm.REPORT_PAYMENT_ForPrint
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
      object QRLabel2: TQRLabel
        Left = 824
        Top = 73
        Width = 63
        Height = 69
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          130.401785714285700000
          1557.261904761905000000
          137.961309523809500000
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
        Left = 822
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
          1553.482142857143000000
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
      object QRShape29: TQRShape
        Left = 898
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
          1697.113095238095000000
          122.842261904761900000
          1.889880952380953000)
        Shape = qrsVertLine
      end
      object QRLabel34: TQRLabel
        Left = 922
        Top = 87
        Width = 50
        Height = 38
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.815476190476190000
          1742.470238095238000000
          164.419642857142900000
          94.494047619047620000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582
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
  object Panel2: TPanel [2]
    Left = 0
    Top = 0
    Width = 735
    Height = 71
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      735
      71)
    object Label3: TLabel
      Left = 644
      Top = 11
      Width = 71
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1605#1575#1585#1607' '#1587#1606#1583' '#1575#1586' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 491
      Top = 13
      Width = 10
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 644
      Top = 37
      Width = 62
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583' '#1575#1586' :'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 491
      Top = 37
      Width = 10
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575':'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object DocNoFrom: TYWhereEdit
      Left = 522
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
      OnKeyDown = DocNoFromKeyDown
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocNo'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object BitBtn1: TBitBtn
      Left = 8
      Top = 7
      Width = 105
      Height = 25
      Caption = #1580#1587#1578#1580#1608
      TabOrder = 4
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 8
      Top = 33
      Width = 105
      Height = 25
      Caption = #1606#1605#1575#1610#1588' '#1578#1605#1575#1605#1610' '#1575#1587#1606#1575#1583
      TabOrder = 5
      OnClick = BitBtn2Click
    end
    object DocNoTo: TYWhereEdit
      Left = 370
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
      TabOrder = 1
      OnKeyDown = DocNoFromKeyDown
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocNo'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object DateFrom: TYWhereEdit
      Left = 522
      Top = 33
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
      TabOrder = 2
      OnKeyDown = DocNoFromKeyDown
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocNo'
      CodeField = 'Code'
      TitleField = 'Title'
    end
    object DateTo: TYWhereEdit
      Left = 370
      Top = 33
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
      TabOrder = 3
      OnKeyDown = DocNoFromKeyDown
      isLike = False
      isDate = False
      EveryLike = False
      isString = False
      FieldName = 'DocNo'
      CodeField = 'Code'
      TitleField = 'Title'
    end
  end
  object Panel1: TPanel [3]
    Left = 0
    Top = 380
    Width = 735
    Height = 75
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      735
      75)
    object SpeedButton1: TSpeedButton
      Left = 99
      Top = 47
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
      Left = 124
      Top = 47
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
      Left = 152
      Top = 47
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
      Left = 178
      Top = 47
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
      Left = 643
      Top = 44
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
      Top = 44
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
    object Panel4: TPanel
      Left = 1
      Top = 1
      Width = 733
      Height = 38
      Align = alTop
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      DesignSize = (
        733
        38)
      object RBAllDocInaPage: TRadioButton
        Left = 527
        Top = 11
        Width = 198
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1587#1606#1575#1583' '#1576#1607' '#1589#1608#1585#1578' '#1705#1604#1610' '#1583#1585' '#1610#1705' '#1589#1601#1581#1607
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object RBSeprateDocInaPage: TRadioButton
        Left = 278
        Top = 11
        Width = 201
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1587#1606#1575#1583' '#1576#1607' '#1589#1608#1585#1578' '#1605#1580#1586#1575' '#1583#1585' '#1610#1705' '#1589#1601#1581#1607
        TabOrder = 1
      end
      object RBSeprateDocSepratePage: TRadioButton
        Left = 15
        Top = 11
        Width = 211
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1587#1606#1575#1583' '#1576#1607' '#1589#1608#1585#1578' '#1605#1580#1586#1575' '#1583#1585' '#1589#1601#1581#1575#1578' '#1605#1580#1586#1575
        TabOrder = 2
      end
    end
  end
  object Panel3: TPanel [4]
    Left = 0
    Top = 71
    Width = 735
    Height = 309
    Align = alClient
    TabOrder = 3
    object YDBGrid: TYDBGrid
      Left = 1
      Top = 1
      Width = 733
      Height = 307
      Cursor = crHandPoint
      Align = alClient
      DataSource = dm.dREPORT_PAYMENT_ForPrint
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
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
          Width = 62
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
          Width = 60
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
    Left = 356
    Top = 206
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 255
    Top = 205
  end
end
