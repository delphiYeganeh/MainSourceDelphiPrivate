object Fqr30: TFqr30
  Tag = 203
  Left = 253
  Top = 182
  AutoScroll = False
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu]
  Caption = ' '#1711#1586#1575#1585#1588' '#1583#1585#1580' '#1588#1605#1575#1585#1607' '#1589#1606#1583#1604#1610' '#1575#1605#1578#1581#1575#1606#1575#1578' '#1662#1575#1610#1575#1606' '#1578#1585#1605
  ClientHeight = 163
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep
    Tag = 14
    Left = 376
    Top = 452
    Width = 635
    Height = 898
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = ADODataSet1
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Traffic'
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
    Page.Columns = 2
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
    Zoom = 80
    object QRGroup1: TQRGroup
      Tag = 15
      Left = 30
      Top = 99
      Width = 287
      Height = 1
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Frame.Style = psDot
      AlignToBottom = False
      BeforePrint = QRGroup1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = True
      Size.Values = (
        3.307291666666667000
        949.192708333333300000)
      Expression = 'ADODataSet1.LessonCode'
      Master = QuickRep1
      ReprintOnNewPage = False
    end
    object ColumnHeaderBand1: TQRBand
      Tag = 16
      Left = 30
      Top = 30
      Width = 575
      Height = 69
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = ColumnHeaderBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        228.203125000000000000
        1901.692708333333000000)
      BandType = rbPageHeader
      object QRShape9: TQRShape
        Tag = 17
        Left = -1
        Top = 46
        Width = 574
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          69.453125000000000000
          -3.307291666666670000
          152.135416666667000000
          1898.385416666670000000)
        Shape = qrsRectangle
      end
      object QRLabel15: TQRLabel
        Tag = 18
        Left = 153
        Top = 6
        Width = 18
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          506.015625000000000000
          19.843750000000000000
          59.531250000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Tag = 19
        Left = 73
        Top = 27
        Width = 21
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          241.432291666666700000
          89.296875000000000000
          69.453125000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = ':'#1589#1601#1581#1607
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Tag = 20
        Left = 443
        Top = 26
        Width = 18
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1465.130208333333000000
          85.989583333333330000
          59.531250000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1583#1585#1587
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
      object Rdate: TQRLabel
        Tag = 21
        Left = 98
        Top = 7
        Width = 54
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.531250000000000000
          324.114583333333300000
          23.151041666666670000
          178.593750000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RDate'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Rpage: TQRLabel
        Tag = 22
        Left = 7
        Top = 26
        Width = 62
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          59.531250000000000000
          23.151041666666700000
          85.989583333333300000
          205.052083333333000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Rpage'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel22: TQRLabel
        Tag = 23
        Left = 8
        Top = 47
        Width = 46
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          26.458333333333330000
          155.442708333333300000
          152.135416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1589#1606#1583#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape12: TQRShape
        Tag = 24
        Left = 243
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          803.671875000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Tag = 25
        Left = 177
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          585.390625000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Tag = 26
        Left = 60
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          198.437500000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRLabel14: TQRLabel
        Tag = 27
        Left = 197
        Top = 2
        Width = 182
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          651.536458333333300000
          6.614583333333333000
          601.927083333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1711#1586#1575#1585#1588' '#1588#1605#1575#1585#1607' '#1589#1606#1583#1604#1610' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1583#1585' '#1580#1604#1587#1607' '#1575#1605#1578#1581#1575#1606
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
      object QRDBText15: TQRDBText
        Tag = 28
        Left = 137
        Top = 26
        Width = 59
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          453.098958333333400000
          85.989583333333340000
          195.130208333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'LessonCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object UnivARM: TQRImage
        Tag = 29
        Left = 525
        Top = 3
        Width = 31
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          138.906250000000000000
          1736.328125000000000000
          9.921875000000000000
          102.526041666666700000)
        Stretch = True
      end
      object QRLabel4: TQRLabel
        Tag = 30
        Left = 204
        Top = 26
        Width = 30
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          674.687500000000000000
          85.989583333333330000
          99.218750000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1603#1583' '#1583#1585#1587
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
      object QRLabel2: TQRLabel
        Tag = 31
        Left = 181
        Top = 47
        Width = 58
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          598.619791666666700000
          155.442708333333300000
          191.822916666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Tag = 32
        Left = 89
        Top = 47
        Width = 64
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          294.348958333333300000
          155.442708333333300000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Tag = 33
        Left = 288
        Top = 26
        Width = 147
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          952.500000000000000000
          85.989583333333340000
          486.171874999999900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'LessonNae'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Tag = 34
        Left = 293
        Top = 47
        Width = 46
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          969.036458333333300000
          155.442708333333300000
          152.135416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1589#1606#1583#1604#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Tag = 35
        Left = 528
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          1746.250000000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRShape2: TQRShape
        Tag = 36
        Left = 462
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          1527.968750000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRShape3: TQRShape
        Tag = 37
        Left = 345
        Top = 46
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          1141.015625000000000000
          152.135416666667000000
          3.307291666666670000)
        Shape = qrsVertLine
      end
      object QRLabel7: TQRLabel
        Tag = 38
        Left = 466
        Top = 47
        Width = 58
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1541.197916666667000000
          155.442708333333300000
          191.822916666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Tag = 39
        Left = 374
        Top = 47
        Width = 64
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1236.927083333333000000
          155.442708333333300000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Tag = 40
        Left = 256
        Top = 47
        Width = 21
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          846.666666666666700000
          155.442708333333300000
          69.453125000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Tag = 41
        Left = 543
        Top = 47
        Width = 21
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          1795.859375000000000000
          155.442708333333300000
          69.453125000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Tag = 28
        Left = 7
        Top = 6
        Width = 59
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          23.151041666666670000
          19.843750000000000000
          195.130208333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'ExamTime'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 67
        Top = 6
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          221.588541666666700000
          19.843750000000000000
          72.760416666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1587#1575#1593#1578':'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
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
      Tag = 42
      Left = 30
      Top = 132
      Width = 287
      Height = 19
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = True
      Frame.Style = psDot
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        62.838541666666670000
        949.192708333333300000)
      BandType = rbDetail
      object QRDBText8: TQRDBText
        Tag = 43
        Left = 55
        Top = 2
        Width = 106
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333340000
          181.901041666666700000
          6.614583333333332000
          350.572916666666800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'NAME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object Rradif: TQRLabel
        Tag = 44
        Left = 256
        Top = 3
        Width = 24
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          846.666666666667000000
          9.921875000000000000
          79.375000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RRadif'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText2: TQRDBText
        Tag = 45
        Left = 162
        Top = 2
        Width = 85
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333340000
          535.781250000000000000
          6.614583333333332000
          281.119791666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'Stno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object RNumber: TQRLabel
        Tag = 46
        Left = 2
        Top = 2
        Width = 51
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          6.614583333333332000
          6.614583333333332000
          168.671875000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'RRadif'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Tag = 37
        Left = 247
        Top = 0
        Width = 1
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          816.901041666666800000
          0.000000000000000000
          3.307291666666666000)
        Shape = qrsVertLine
      end
    end
    object PageFooterBand1: TQRBand
      Tag = 47
      Left = 30
      Top = 153
      Width = 575
      Height = 20
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        66.145833333333330000
        1901.692708333333000000)
      BandType = rbPageFooter
      object QRLabel31: TQRLabel
        Tag = 48
        Left = 12
        Top = 2
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          39.687500000000000000
          6.614583333333333000
          310.885416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1608#1575#1581#1583' '#1603#1575#1605#1662#1610#1608#1578#1585' '#1570#1605#1608#1586#1588' '#1603#1604' - '#1575'.'#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Roya'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRGroup2: TQRGroup
      Tag = 49
      Left = 30
      Top = 100
      Width = 287
      Height = 32
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRGroup2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        105.833333333333300000
        949.192708333333300000)
      Expression = 'ADODataSet1.LessonGroup'
      FooterBand = SummaryBand1
      Master = QuickRep1
      ReprintOnNewPage = False
      object Radif: TQRLabel
        Tag = 50
        Left = 254
        Top = 11
        Width = 26
        Height = 19
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666700000
          840.052083333333000000
          36.380208333333300000
          85.989583333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Radif'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Tag = 51
        Left = 89
        Top = 8
        Width = 74
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666680000
          294.348958333333400000
          26.458333333333330000
          244.739583333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = ADODataSet1
        DataField = 'LessonGroup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel1: TQRLabel
        Tag = 52
        Left = 168
        Top = 8
        Width = 15
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          555.625000000000000000
          26.458333333333330000
          49.609375000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1711#1585#1608#1607
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
    end
    object SummaryBand1: TQRBand
      Tag = 53
      Left = 30
      Top = 151
      Width = 287
      Height = 2
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        6.614583333333333000
        949.192708333333300000)
      BandType = rbGroupFooter
    end
  end
  object ProgressBar1: TProgressBar
    Tag = 58
    Left = 0
    Top = 138
    Width = 367
    Height = 11
    Align = alTop
    BorderWidth = 1
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 89
    Width = 367
    Height = 49
    Align = alTop
    BevelOuter = bvLowered
    TabOrder = 2
    object BitBtn1: TxpBitBtn
      Tag = 9
      Left = 3
      Top = 6
      Width = 106
      Height = 38
      Hint = #1582#1585#1608#1580' '#1575#1586' '#1576#1585#1606#1575#1605#1607' '#1711#1586#1575#1585#1588
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      TabOrder = 0
      TabStop = True
      OnClick = BitBtn1Click
    end
    object PreviewBtn: TxpBitBtn
      Tag = 56
      Left = 232
      Top = 6
      Width = 120
      Height = 38
      startColor = 16645629
      EndColor = 14666957
      Caption = 'F5 '#1662#1610#1588' '#1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        FE040000424DFE04000000000000360000002800000016000000120000000100
        180000000000C8040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFF7EFFFFFFFFFF7FFF7FFFFFFFFFFFFFFFFFFEFEFFFFF
        FFFFFFFFFFF7FFF7FFFFFFF7F7F7FFFFFFFFFFFFFFF7F7FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF090A1B00046F000084
        220C1FF7F7F7FFFFFFFFF7F7F7FFF7F7EFFFFFFFFFF7FFF7F7EFEFFFF7F7FFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBEFE700051E0002D60000
        B50002D60002D600051EFFFFFFFBEFE7FFF7F7FFFFFFF7F7F7FFFFFFEFFFEFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F7F700014A0002D600
        0084FFFFFFFFF7F700047B0002D600051EFFFFFFFFFFFF002B2E00616102736E
        FFFFFFFFF7E7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000000160AB8
        000094FFFFFFF7F7F70000000A22000002D6000084FFFFFF1D779A1BA79872FF
        F95AFFFB02736EFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0808
        04777BF800046FF7F7F7FFFFE7C3CCCB0000000002D6003C9178C1FA02736E00
        0000001010FFFFFF5AFFFB007987FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFF000000777BF800046FF7F7F7FFF7F7FFF7F7FFF7F70000B51D779A5AFFFB
        02736E000000000000FFF7F7FFFFFF007987FFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFF000000000008777BF800046FD6DAF7CADBF60002D60000841BA7
        985AFFFB02736EFFFFFFFFF7F7FFFFFF78C1FA007987FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFF0000007F847B000000777BF8777BF80002D600008400
        0808AAB8AE08080472FFF9737B7B52716CA9CECD46E4FC0C0004FFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000868A8C868A8C000000000000000008
        100008868A8C7F847B0000000000005AFFFB78C1FA46E4FC02736EFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000007A7684AAB8AEC3CCCBAAB8
        AE0C0004AAB8AE0000000010108884840000000C00040000000C0004100008F7
        FFF7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0000000A2200000000BE
        A0A3080804AAB8AEA6ACD1F0EBD0E3D5E10008087A7684C3CCCBAAB8AE000000
        FFF7F7F7FFF7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7FFF7000000
        868A8C090A1B000000080804000000C3CCCB0000000000000008080008080000
        08F7F7F7FFFFFFF7F7F7FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FF000000888484AAB8AE000000F7F7F7EFEFFF000808888484AAB8AE100008F7
        F7F7FFFFFFFFFFFFF7FFF7F7EFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000A6ACD1000000FFFFFFFFFFFFFFFFFF000000AAB8AE000808
        F7FFF7F7EFFFF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFF7F7F7FFFFFF0C0004FFFFFFEFEFFFFFFFFFFFFFE7FFFFFF0000
        00FFFFFFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
      Gradient = True
      TabOrder = 1
      TabStop = True
      Cancel = True
      OnClick = PreviewBtnClick
    end
    object PrintBtn: TxpBitBtn
      Tag = 57
      Left = 117
      Top = 7
      Width = 112
      Height = 37
      startColor = 16645629
      EndColor = 14666957
      Caption = 'F9   '#1670#1575#1662
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        C6060000424DC60600000000000036000000280000001A000000150000000100
        18000000000090060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFF7EFEFFFFFFFFFFF
        FFF7FFF7FFFFFFF7FFF7FFFFFFFFFFFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFF00
        00001000080000000010100000000C0004001000000808000000000000000000
        FFFFFFF7F7F7FFF7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFF7EFEF000000E3D5E1CACED2C9DFD2D2CFD3E3D5E1C9DF
        D2D2C0D0CACED2D2CFD3100008C9DFD2000000FFFFFFF7F7F7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00101800000000
        0000000000000000000000000000100008001010000000000000000808100008
        C3CCCB000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000D2C0D0D1E1D4CACED2E3D5E1CACED2D1E1D408FF
        F708FFF700F7EFE3D5E1C9DFD2000000001010000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001010CACED2CA
        CED2C9DFD2CACED2CACED2C3CCCB85777B8F7C95868A8CB9C6D2D2CFD3001018
        C3CCCB0C0004FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000000000001000080010100000000C00040010100000
        000000000C0004080804000000000000E3D5E1B7EBFA000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000D2CFD3D2
        CFD3C3CCCBE3D5E1C9DFD2C9BBD2D1E1D4E3D5E1CACED2CADBF6000000D2CFD3
        000000D2C0D0000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000000000000808040000000000000010100000
        00000000000000000000D9E7F3000000CACED2080804000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFF00
        0000EFEFEFFFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFEFFFEF000000C3CCCB
        0C0004CACED2000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFF000000FFFFFF0000000000000000
        00000000000000FFFFFF000000090A1B000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFFF
        FFFF000000FFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFEFE7F3FFFFFF000000
        FFFFFFFFFFFFF7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFE3D5E1000000F7F7F70000000808
        040000000C0004000000FFFFFF000008FFFFFFF7FFF7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFFFFFEF
        EFEFFFFFFF080804FFFFFFF7F7F7FFFFFFFFFFFFEFEFEFFFFFFFF7F7EFF7F7F7
        000808FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F70000000000000000
        00080804000000000000001010000000000008FFFFFFF7F7F7FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7
        F7F7FFFFFFFFFFFFF7F7F7FFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFEFEFEF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      Gradient = True
      TabOrder = 2
      TabStop = True
      Cancel = True
      OnClick = PrintBtnClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 0
    Width = 367
    Height = 89
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Tag = 6
      Left = 287
      Top = 5
      Width = 61
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1588#1605#1575#1585#1607' '#1588#1585#1608#1593
      ParentBiDiMode = False
    end
    object Label4: TLabel
      Tag = 7
      Left = 172
      Top = 5
      Width = 43
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = #1578#1575#1585#1610#1582' '#1578#1607#1610#1607
      ParentBiDiMode = False
    end
    object Number: TMaskEdit
      Tag = 13
      Left = 227
      Top = 1
      Width = 57
      Height = 21
      EditMask = '########;1;_'
      MaxLength = 8
      TabOrder = 0
      Text = '0       '
    end
    object Date: TShamsiDateEdit
      Tag = 55
      Left = 96
      Top = 1
      Width = 69
      Height = 21
      MaxLength = 10
      TabOrder = 1
      Text = '1/1/1'#0
    end
    object RadioGroup1: TRadioGroup
      Left = 8
      Top = 40
      Width = 244
      Height = 34
      Caption = #1605#1585#1578#1576' '#1587#1575#1586#1610' '#1576#1585#1575#1587#1575#1587
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        #1606#1575#1605' '#1608#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610)
      TabOrder = 2
    end
  end
  object DataSource1: TDataSource
    Tag = 66
    AutoEdit = False
    Left = 16
    Top = 8
  end
  object ADODataSet1: TADODataSet
    Tag = 67
    CursorType = ctStatic
    CommandText = 
      'select * from VW_StListLesson'#13#10'where termcode=:tc'#13#10'and lessoncod' +
      'e=:lc'#13#10'and lessongroup>=:lg1'#13#10'and lessongroup<=:lg2'#13#10#13#10
    CommandTimeout = 720
    Parameters = <
      item
        Name = 'tc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = '822'
      end
      item
        Name = 'lc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 12
        Value = Null
      end
      item
        Name = 'lg1'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 1.000000000000000000
      end
      item
        Name = 'lg2'
        Attributes = [paSigned]
        DataType = ftFloat
        NumericScale = 255
        Precision = 15
        Size = 8
        Value = 99.000000000000000000
      end>
    Left = 104
    Top = 49
    object ADODataSet1TermCode: TStringField
      Tag = 68
      FieldName = 'TermCode'
      Size = 3
    end
    object ADODataSet1LessonCode: TStringField
      Tag = 69
      FieldName = 'LessonCode'
      Size = 12
    end
    object ADODataSet1LessonGroup: TFloatField
      Tag = 70
      FieldName = 'LessonGroup'
    end
    object ADODataSet1Stno: TStringField
      Tag = 71
      FieldName = 'Stno'
      Size = 15
    end
    object ADODataSet1NAME: TStringField
      Tag = 72
      FieldName = 'NAME'
      Size = 60
    end
    object ADODataSet1Reshteh_Title: TStringField
      Tag = 73
      FieldName = 'Reshteh_Title'
      Size = 60
    end
    object ADODataSet1Unit_Title: TFloatField
      Tag = 75
      FieldName = 'Unit_Title'
    end
    object ADODataSet1LessonNae: TStringField
      FieldName = 'LessonNae'
      Size = 60
    end
    object ADODataSet1ExamTime: TStringField
      FieldName = 'ExamTime'
      Size = 10
    end
  end
  object ADODataSet2: TADODataSet
    Tag = 76
    CursorType = ctStatic
    CommandText = 'select * from VW_StListLesson'
    Parameters = <>
    Left = 64
  end
end
