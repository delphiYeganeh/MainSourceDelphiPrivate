inherited FrApplicantExam: TFrApplicantExam
  Left = 595
  Top = 182
  AutoScroll = False
  Caption = #1604#1610#1587#1578' '#1606#1605#1585#1607
  ClientHeight = 562
  ClientWidth = 896
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep [0]
    Left = 36
    Top = 166
    Width = 635
    Height = 898
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Select_Applicant_by_Examid
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
    Zoom = 80
    object QRSubDetail1: TQRSubDetail
      Left = 30
      Top = 105
      Width = 575
      Height = 30
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRSubDetail1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        99.218750000000000000
        1901.692708333333000000)
      Master = QuickRep1
      PrintBefore = False
      PrintIfEmpty = True
      object Rect1: TQRShape
        Left = 472
        Top = -1
        Width = 101
        Height = 31
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          1561.041666666667000000
          -3.307291666666667000
          334.036458333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect5: TQRShape
        Left = 96
        Top = -1
        Width = 95
        Height = 31
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          317.500000000000000000
          -3.307291666666667000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect4: TQRShape
        Left = 190
        Top = -1
        Width = 95
        Height = 31
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          628.385416666666700000
          -3.307291666666667000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect3: TQRShape
        Left = 284
        Top = -1
        Width = 95
        Height = 31
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          939.270833333333300000
          -3.307291666666667000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect2: TQRShape
        Left = 378
        Top = -1
        Width = 95
        Height = 31
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          1250.156250000000000000
          -3.307291666666667000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object QRDBText5: TQRDBText
        Left = 475
        Top = 4
        Width = 96
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1570.963541666667000000
          13.229166666666670000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'ApplicantCode'
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
      object Num2: TQRLabel
        Left = 412
        Top = 4
        Width = 29
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1362.604166666667000000
          13.229166666666670000
          95.911458333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----- '
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
      object Num3: TQRLabel
        Left = 318
        Top = 4
        Width = 29
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1051.718750000000000000
          13.229166666666670000
          95.911458333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----- '
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
      object Num4: TQRLabel
        Left = 225
        Top = 4
        Width = 29
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          744.140625000000000000
          13.229166666666670000
          95.911458333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----- '
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
      object Num5: TQRLabel
        Left = 131
        Top = 4
        Width = 29
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          433.255208333333300000
          13.229166666666670000
          95.911458333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----- '
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
      object Rect6: TQRShape
        Left = 2
        Top = -1
        Width = 95
        Height = 31
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          102.526041666666700000
          6.614583333333333000
          -3.307291666666667000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Num6: TQRLabel
        Left = 37
        Top = 4
        Width = 29
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          122.369791666666700000
          13.229166666666670000
          95.911458333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '----- '
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
    end
    object QRBand4: TQRBand
      Left = 30
      Top = 30
      Width = 575
      Height = 75
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = QRBand4BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        248.046875000000000000
        1901.692708333333000000)
      BandType = rbPageHeader
      object Rect_6: TQRShape
        Left = 2
        Top = 46
        Width = 95
        Height = 26
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          6.614583333333333000
          152.135416666666700000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect_1: TQRShape
        Left = 472
        Top = 46
        Width = 101
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          1561.041666666667000000
          152.135416666666700000
          334.036458333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect_2: TQRShape
        Left = 378
        Top = 46
        Width = 95
        Height = 26
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          1250.156250000000000000
          152.135416666666700000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect_3: TQRShape
        Left = 284
        Top = 46
        Width = 95
        Height = 26
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          939.270833333333300000
          152.135416666666700000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect_4: TQRShape
        Left = 190
        Top = 46
        Width = 95
        Height = 26
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          628.385416666666700000
          152.135416666666700000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object Rect_5: TQRShape
        Left = 96
        Top = 46
        Width = 95
        Height = 26
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.989583333333330000
          317.500000000000000000
          152.135416666666700000
          314.192708333333300000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object QRLabel6: TQRLabel
        Left = 395
        Top = 6
        Width = 150
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          1306.380208333333000000
          19.843750000000000000
          496.093750000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1705#1575#1585#1606#1575#1605#1607' '#1578#1601#1705#1610#1705#1610' '#1583#1585#1608#1587' '#1570#1586#1605#1608#1606
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
      object QRDBText6: TQRDBText
        Left = 162
        Top = 7
        Width = 231
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          535.781250000000000000
          23.151041666666670000
          763.984375000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.Browse_Exam
        DataField = 'ExamTitle'
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
        Left = 474
        Top = 50
        Width = 96
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          1567.656250000000000000
          165.364583333333300000
          317.500000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608
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
      object Course2: TQRLabel
        Left = 380
        Top = 50
        Width = 91
        Height = 17
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          1256.770833333333000000
          165.364583333333300000
          300.963541666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585#1587' 1'
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
      object Course3: TQRLabel
        Left = 286
        Top = 48
        Width = 91
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          945.885416666666700000
          158.750000000000000000
          300.963541666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585#1587' 1'
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
      object Course4: TQRLabel
        Left = 192
        Top = 48
        Width = 91
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          635.000000000000000000
          158.750000000000000000
          300.963541666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585#1587' 1'
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
      object Course5: TQRLabel
        Left = 98
        Top = 48
        Width = 91
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          324.114583333333300000
          158.750000000000000000
          300.963541666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585#1587' 1'
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
      object QRLabel7: TQRLabel
        Left = 87
        Top = 7
        Width = 63
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.838541666666670000
          287.734375000000000000
          23.151041666666670000
          208.359375000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1570#1586#1605#1608#1606
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
      object QRDBText7: TQRDBText
        Left = 16
        Top = 7
        Width = 70
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          56.223958333333330000
          52.916666666666670000
          23.151041666666670000
          231.510416666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.Browse_Exam
        DataField = 'ExamDate'
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
      object QRShape1: TQRShape
        Left = 16
        Top = 30
        Width = 529
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          3.307291666666667000
          52.916666666666670000
          99.218750000000000000
          1749.557291666667000000)
        Shape = qrsHorLine
      end
      object Course6: TQRLabel
        Left = 4
        Top = 48
        Width = 91
        Height = 20
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333330000
          13.229166666666670000
          158.750000000000000000
          300.963541666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585#1587' 1'
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
    end
  end
  object QuickRep2: TQuickRep [1]
    Tag = 3
    Left = 712
    Top = 472
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = Select_Applicant_by_Examid
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
      80.000000000000000000
      80.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object QRBand1: TQRBand
      Tag = 4
      Left = 30
      Top = 38
      Width = 734
      Height = 144
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Mitra'
      Font.Style = [fsBold]
      ForceNewColumn = False
      ForceNewPage = True
      ParentFont = False
      Size.Values = (
        381.000000000000000000
        1942.041666666667000000)
      BandType = rbPageHeader
      object QRLabel32: TQRLabel
        Tag = 8
        Left = 277
        Top = 117
        Width = 35
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          732.895833333333300000
          309.562500000000000000
          92.604166666666670000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1576#1607' '#1593#1600#1583#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Tag = 9
        Left = 162
        Top = 90
        Width = 151
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          428.625000000000000000
          238.125000000000000000
          399.520833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1600#1605#1600#1600#1600#1600#1600#1600#1600#1585#1607' '#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Tag = 10
        Left = 161
        Top = 115
        Width = 154
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          425.979166666666700000
          304.270833333333300000
          407.458333333333300000)
        Shape = qrsRectangle
      end
      object QRLabel34: TQRLabel
        Tag = 11
        Left = 200
        Top = 57
        Width = 521
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          529.166666666666700000
          150.812500000000000000
          1378.479166666667000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1570#1586#1605#1608#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel36: TQRLabel
        Tag = 13
        Left = 96
        Top = 56
        Width = 84
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          254.000000000000000000
          148.166666666666700000
          222.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel40: TQRLabel
        Tag = 17
        Left = 692
        Top = 104
        Width = 37
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.854166666666670000
          1830.916666666667000000
          275.166666666666700000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLbstName1: TQRLabel
        Tag = 18
        Left = 560
        Top = 104
        Width = 127
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1481.666666666667000000
          275.166666666666700000
          336.020833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape7: TQRShape
        Tag = 20
        Left = 690
        Top = 90
        Width = 1
        Height = 52
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.583333333333300000
          1825.625000000000000000
          238.125000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Tag = 22
        Left = 472
        Top = 89
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1248.833333333333000000
          235.479166666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Tag = 23
        Left = 274
        Top = 115
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          724.958333333333300000
          304.270833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRLabel43: TQRLabel
        Tag = 25
        Left = 475
        Top = 105
        Width = 80
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1256.770833333333000000
          277.812500000000000000
          211.666666666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Tag = 30
        Left = 96
        Top = 27
        Width = 36
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          254.000000000000000000
          71.437500000000000000
          95.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel48: TQRLabel
        Tag = 31
        Left = 532
        Top = 5
        Width = 189
        Height = 43
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          113.770833333333300000
          1407.583333333333000000
          13.229166666666670000
          500.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1583#1575#1606#1588#1711#1575#1607' '#1593#1604#1608#1605' '#1662#1586#1588#1705#1610' '#1711#1610#1604#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Mitra'
        Font.Style = [fsBold]
        OnPrint = QRLabel48Print
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape12: TQRShape
        Tag = 32
        Left = 0
        Top = 52
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          137.583333333333300000
          1942.041666666667000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape13: TQRShape
        Tag = 33
        Left = 0
        Top = 88
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          232.833333333333300000
          1942.041666666667000000)
        Shape = qrsHorLine
      end
      object RDate: TQRLabel
        Tag = 34
        Left = 8
        Top = 24
        Width = 85
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          21.166666666666670000
          63.500000000000000000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ' '
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
      object QRShape14: TQRShape
        Tag = 41
        Left = 0
        Top = 51
        Width = 735
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          134.937500000000000000
          1944.687500000000000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRShape15: TQRShape
        Tag = 43
        Left = 0
        Top = 89
        Width = 734
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          235.479166666666700000
          1942.041666666667000000)
        Shape = qrsHorLine
      end
      object QRLabel64: TQRLabel
        Tag = 47
        Left = 320
        Top = 105
        Width = 149
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          846.666666666666700000
          277.812500000000000000
          394.229166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1585#1588#1578#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Tag = 7
        Left = 163
        Top = 117
        Width = 109
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          431.270833333333300000
          309.562500000000000000
          288.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '#1576#1607' '#1581#1585#1608#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object RealTitle: TQRLabel
        Tag = 30
        Left = 198
        Top = 3
        Width = 338
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          523.875000000000000000
          7.937500000000000000
          894.291666666666700000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1575#1585#1610#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Jadid'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
      object RealDate: TQRLabel
        Tag = 34
        Left = 8
        Top = 56
        Width = 85
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          21.166666666666670000
          148.166666666666700000
          224.895833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ' '
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
      object QRDBText2: TQRDBText
        Tag = 61
        Left = 408
        Top = 31
        Width = 35
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1079.500000000000000000
          82.020833333333330000
          92.604166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'DeleteQuestionCount'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Tag = 47
        Left = 444
        Top = 31
        Width = 84
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.270833333333330000
          1174.750000000000000000
          82.020833333333330000
          222.250000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1578#1593#1583#1575#1583' '#1587#1608#1575#1604#1575#1578' '#1581#1584#1601#1610' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Tag = 47
        Left = 333
        Top = 30
        Width = 45
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          881.062500000000000000
          79.375000000000000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1576#1575#1585#1605' '#1587#1608#1575#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Tag = 61
        Left = 297
        Top = 31
        Width = 35
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          785.812500000000000000
          82.020833333333330000
          92.604166666666670000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'CorrectItemPoint'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Tag = 47
        Left = 218
        Top = 30
        Width = 39
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          576.791666666666700000
          79.375000000000000000
          103.187500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ':'#1606#1605#1585#1607' '#1705#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Tag = 61
        Left = 189
        Top = 31
        Width = 28
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625000000000000000
          500.062500000000000000
          82.020833333333330000
          74.083333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'maxMark'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape8: TQRShape
        Tag = 21
        Left = 557
        Top = 89
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          1473.729166666667000000
          235.479166666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Tag = 46
        Left = 315
        Top = 89
        Width = 1
        Height = 54
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          142.875000000000000000
          833.437500000000000000
          235.479166666666700000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Tag = 24
        Left = 161
        Top = 90
        Width = 1
        Height = 53
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          140.229166666666700000
          425.979166666666700000
          238.125000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape2: TQRShape
        Tag = 10
        Left = 0
        Top = 115
        Width = 163
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          304.270833333333300000
          431.270833333333300000)
        Shape = qrsRectangle
      end
      object QRLabel8: TQRLabel
        Tag = 9
        Left = 3
        Top = 90
        Width = 157
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          7.937500000000000000
          238.125000000000000000
          415.395833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1578#1593#1583#1575#1583' '#1662#1575#1587#1582' '#1607#1575
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Tag = 8
        Left = 114
        Top = 117
        Width = 47
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          301.625000000000000000
          309.562500000000000000
          124.354166666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1583#1585#1587#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Tag = 8
        Left = 57
        Top = 117
        Width = 51
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          150.812500000000000000
          309.562500000000000000
          134.937500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1606#1575#1583#1585#1587#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Tag = 8
        Left = 3
        Top = 117
        Width = 48
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          7.937500000000000000
          309.562500000000000000
          127.000000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1576#1583#1608#1606' '#1662#1575#1587#1582
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Compset'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape3: TQRShape
        Tag = 23
        Left = 110
        Top = 115
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          291.041666666666700000
          304.270833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Tag = 23
        Left = 53
        Top = 115
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          140.229166666666700000
          304.270833333333300000
          2.645833333333333000)
        Shape = qrsVertLine
      end
    end
    object QRSubDetail2: TQRSubDetail
      Tag = 50
      Left = 30
      Top = 183
      Width = 734
      Height = 37
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      Frame.Style = psDot
      AlignToBottom = False
      BeforePrint = QRSubDetail2BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        97.895833333333330000
        1942.041666666667000000)
      Master = QuickRep2
      DataSet = Select_Applicant_by_Examid
      PrintBefore = False
      PrintIfEmpty = False
      object QRExpr2: TQRExpr
        Tag = 51
        Left = 692
        Top = 7
        Width = 37
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1830.916666666667000000
          18.520833333333330000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        Color = clWhite
        Master = QRSubDetail2
        ParentFont = False
        ResetAfterPrint = False
        Transparent = False
        WordWrap = True
        Expression = 'COUNT'
        FontSize = 8
      end
      object QRDBText20: TQRDBText
        Tag = 53
        Left = 474
        Top = 10
        Width = 82
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1254.125000000000000000
          26.458333333333330000
          216.958333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'ApplicantCode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape17: TQRShape
        Tag = 55
        Left = 690
        Top = 0
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          1825.625000000000000000
          0.000000000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape18: TQRShape
        Tag = 56
        Left = 472
        Top = 0
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333340000
          1248.833333333333000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape19: TQRShape
        Tag = 57
        Left = 274
        Top = 0
        Width = 1
        Height = 39
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          103.187500000000000000
          724.958333333333300000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QrDBStName1: TQRDBText
        Tag = 58
        Left = 560
        Top = 7
        Width = 127
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          58.208333333333330000
          1481.666666666667000000
          18.520833333333330000
          336.020833333333300000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'FullName'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape20: TQRShape
        Tag = 59
        Left = 161
        Top = 1
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          425.979166666666700000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object Qrmark: TQRDBText
        Tag = 60
        Left = 277
        Top = 5
        Width = 37
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          732.895833333333300000
          13.229166666666670000
          97.895833333333330000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid_advanced
        DataField = 'mark'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText28: TQRDBText
        Tag = 61
        Left = 320
        Top = 8
        Width = 149
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666670000
          846.666666666666700000
          21.166666666666670000
          394.229166666666700000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'MajorTitle'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape26: TQRShape
        Tag = 62
        Left = 315
        Top = 0
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333330000
          833.437500000000000000
          0.000000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Tag = 60
        Left = 165
        Top = 5
        Width = 108
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          436.562500000000000000
          13.229166666666670000
          285.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid_advanced
        DataField = 'FarsiMark'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRShape16: TQRShape
        Tag = 54
        Left = 557
        Top = 0
        Width = 1
        Height = 37
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          97.895833333333300000
          1473.729166666670000000
          0.000000000000000000
          2.645833333333330000)
        Shape = qrsVertLine
      end
      object QRShape6: TQRShape
        Tag = 23
        Left = 123
        Top = 114
        Width = 1
        Height = 28
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          74.083333333333330000
          325.437500000000000000
          301.625000000000000000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Tag = 59
        Left = 110
        Top = 1
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          291.041666666666700000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Tag = 59
        Left = 53
        Top = 1
        Width = 1
        Height = 36
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          95.250000000000000000
          140.229166666666700000
          2.645833333333333000
          2.645833333333333000)
        Shape = qrsVertLine
      end
      object QRDBText8: TQRDBText
        Tag = 60
        Left = 121
        Top = 5
        Width = 33
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          320.145833333333300000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'Correct_answer'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText9: TQRDBText
        Tag = 60
        Left = 66
        Top = 5
        Width = 33
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          174.625000000000000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'Wrong_answer'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText10: TQRDBText
        Tag = 60
        Left = 9
        Top = 5
        Width = 33
        Height = 27
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          71.437500000000000000
          23.812500000000000000
          13.229166666666670000
          87.312500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Select_Applicant_by_Examid
        DataField = 'Withot_answer'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
    object QRBand2: TQRBand
      Tag = 63
      Left = 30
      Top = 183
      Width = 734
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
        1942.041666666667000000)
      BandType = rbDetail
      object QRDBText22: TQRDBText
        Tag = 64
        Left = 543
        Top = 5
        Width = 73
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1436.687500000000000000
          13.229166666666700000
          193.145833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'LessonCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText23: TQRDBText
        Tag = 65
        Left = 446
        Top = 5
        Width = 78
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          1180.041666666670000000
          13.229166666666700000
          206.375000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'LessonGroup'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText24: TQRDBText
        Tag = 66
        Left = 358
        Top = 5
        Width = 60
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666700000
          947.208333333333000000
          13.229166666666700000
          158.750000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataField = 'TermCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object QRGroup2: TQRGroup
      Tag = 67
      Left = 30
      Top = 182
      Width = 734
      Height = 1
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
        2.645833333333333000
        1942.041666666667000000)
      Expression = 'tbLt52.LessonCode+STR(tbLt52.LessonGroup)'
      Master = QuickRep2
      ReprintOnNewPage = False
    end
    object QRBand3: TQRBand
      Tag = 68
      Left = 30
      Top = 220
      Width = 734
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
        190.500000000000000000
        1942.041666666667000000)
      BandType = rbPageFooter
      object QRLabel55: TQRLabel
        Tag = 69
        Left = 560
        Top = 9
        Width = 108
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1481.666666666667000000
          23.812500000000000000
          285.750000000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1575#1605#1590#1575' '#1605#1587#1574#1608#1604' '#1578#1589#1581#1610#1581
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
      object QRLabel56: TQRLabel
        Tag = 70
        Left = 586
        Top = 36
        Width = 58
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          55.562500000000000000
          1550.458333333333000000
          95.250000000000000000
          153.458333333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = #1578#1575#1585#1610#1582' '#1578#1603#1605#1610#1604
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
      object QRLabel1: TQRLabel
        Tag = 26
        Left = 0
        Top = 56
        Width = 196
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.041666666666670000
          0.000000000000000000
          148.166666666666700000
          518.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeftNoAlign
        ParentBiDiMode = False
        Caption = '  www.yeganehsoft.net '#1588#1585#1705#1578' '#1606#1585#1605' '#1575#1601#1586#1575#1585#1610' '#1610#1711#1575#1606#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
  end
  object Panel1: TPanel [2]
    Left = 0
    Top = 472
    Width = 896
    Height = 90
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      896
      90)
    object Number: TLabel
      Left = 423
      Top = 59
      Width = 3
      Height = 13
      Anchors = [akRight, akBottom]
    end
    object Button2: TxpBitBtn
      Left = 22
      Top = 7
      Width = 125
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1604#1610#1587#1578' '#1578#1601#1705#1610#1705#1610' '#1705#1604
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageList = Dm.LetterImages
      ImageIndex = 51
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 0
      TabStop = True
      OnClick = Button2Click
    end
    object Button3: TxpBitBtn
      Left = 604
      Top = 48
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = 'Word'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        1800000000003009000000000000000000000000000000000000AB552E883C08
        8236058236058236058236058236058236057832017832017832017832017832
        01682B01682B01682B01682B015B26015B260152220152220152220152220152
        2201471D01471D01471D01471D01AB552EE28964D97748D97748D97748D97748
        D97748CC7449CC7449CC7449C46E42C46E42C46E42BD6C3FBD6C3FB8693AB869
        3AB46339B46339AE6138AB5D32AB5D32AB5D32A45A2CA45A2CA45A2CA45A2C47
        1D01AB552EE08C69A46D558C5D46805643805643805643805643805643805643
        80564378533C78533C744F3D744F3D744F3D744F3D6A47376A47376A47376A47
        376A47376A47376A47376A47376A4737A45A2C471D01AB552EE6916FA46D55FE
        FBFAFDFAF9FDF8F7FDF8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8F0EEF9EFEC
        F8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E1F4E2DCF4E2DCF4E2DCF4E2
        DC6A4737A45A2C471D01AB5D32E99675A46D55FEFBFAFEFBFAFDFAF9FDF8F7FD
        F8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8F0EEF9EFECF8EEEAF7ECE8F7E9E6
        F7E8E4F5E6E1F5E6E1F5E6E1F4E2DCF4E2DCF4E2DC6A4737A45A2C522201AB5D
        32E69E80AB755DFEFCFBFEFBFAFEFBFAFDFAF9FDF8F7FDF8F7FCF7F5FBF6F4FA
        F4F2FAF2F0FAF2F0F8F0EEF9EFECF8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1
        F5E6E1F4E2DCF4E2DC6A4737AB5D32522201AE6138E69E80AB755DFEFCFBFEFC
        FBFEFBFAFEFBFAFDFAF9FDF9F8FDF8F7FCF7F5FBF6F4FAF4F2FAF2F0FAF2F0F8
        F0EEF9EFECF8EEEAF7ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E1F4E2DC6A4737
        AB5D32522201AE6138E9A589AB755DFEFDFCFEFCFBFEFCFB9B644D8D55398751
        32875132D0BAADFCF7F5FBF6F48A4C277849266B45216B4521563C16E2D2C9F7
        ECE8F7E9E6F7E8E4F5E6E1F5E6E1F5E6E16A4737AE6138522201B46339E9A589
        AB755DFFFEFDFEFDFCFEFCFB9B644DD28B72AB552E9F5329875132FDF8F7FCF7
        F58F5230AB552E7849267849266F3D179C8A77F8EEEAF7ECE8F7E9E6F7E8E4F5
        E6E1F5E6E16A4737B46339522201B46640E6AB93AB755DFFFEFDFFFEFDFEFDFC
        A46D55D8977CCC7449CC74498A4C27D0BAADFDF8F7985A3AC26135AB552EA951
        279A4C21563C16E2D2C9F8EEEAF7ECE8F7E9E6F7E8E4F5E6E16A4737B8693A5B
        2601B96A44EDB199B37E67FFFFFFFFFEFDFFFEFDA46D55DA9C83CE7B55CC7449
        AE61388F5230FDF9F89B644DC46E42B65B32AB552EA951276F3D179C8A77F9EF
        ECF8EEEAF7ECE8F7E9E6F7E8E46A4737BD6C3F5B2601B96A44EDB199B37E67FF
        FFFFFFFFFFFFFEFDAB755DDDA48BD58360CE7B55CA77528A4C27D0BAADA76A4D
        C67452B65B32B65B32AB552E9A4C21563C16E2D2C9F9EFECF8EEEAF7ECE8F7E9
        E6744F3DC46E42682B01C16F4BF0B7A0B37E67FFFFFEFFFFFFFFFFFFAB755DE6
        AB93D58A67CD8160D17E58AE61388D5539A46D55CB7C5DBF643EC26135C26135
        AB552E6F3D179C8A77F8F0EEF9EFECF8EEEAF7ECE8744F3DC46E42682B01C16F
        4BF0B7A0B37E67FFFFFFFFFFFEFFFFFFB37E67E6AB93D28B72B57358DA9C83CD
        81608F5230AB755DCF8568C46E42C26135C46E42CC74499F5329563C16E2D2C9
        F8F0EEF9EFECF8EEEA744F3DCC7449682B01C67452F1BEAABA8670FFFFFFFFFF
        FFFFFFFEB37E67EDB199D591779B644DCD8160DA9C83D17E58CE7B55C67452CC
        7449BF643E985A3ACA7752C261356F3D179C8A77FAF2F0F8F0EEF9EFEC744F3D
        CC7449682B01CA7752F1BEAABA8670FFFFFFFFFFFFFFFFFFC7836BEABCA9D897
        7C9B644DAB755DDA9C83D28B72CD8160CE7B55CA7752BF643E8C5D469B644DCC
        74499F5329574421E2D2C9FAF2F0F8F0EE78533CCE7B55783201CE7B55F1BEAA
        BA8670FFFFFFFFFFFFFFFFFFC7836BEABCA9DA9C839B644DD0BAADB37E67DDA4
        8BCF8568CD8160D17E58B96A449B644DBF917CA46D55C46E42784926B5A392FA
        F2F0FAF2F0805643D17E58783201CE7B55F1BEAABA8670FFFFFFFFFFFFFFFFFF
        D28B72EABCA9DDA48B9B644DEADCD6D0BAADDA9C83DA9C83D58A67D58360C16F
        4BA46D55FBF6F49B644DCD8160AB5D32574421EADCD6FAF2F0805643D7815A78
        3201D17E58F4C8B7BA8670FFFFFFFFFFFFEADCD6D28B72EABCA9E6AB93A46D55
        E2D2C9FAF2F0BA8670E6AB93D59177D58A67C16F4BAB755DFDFAF9B5A392B573
        58CB7C5D784926B5A392EADCD6805643D7815A783201D58360F4C8B7BF917CFF
        FFFFFFFFFFDA9C83DA9C83EABCA9E6AB93BA8670B37E67F7EAE7D8C4B9C99075
        DDA48BD59177C1785DB37E67FDFAF9DFBCAFAB755DCB7C5DB463396D5B3BD8C4
        B9805643DD8560783201D58360F4C8B7BF917CFFFFFFD59177D59177EDB199EA
        BCA9EABCA9E6AB93B37E67AB755DFFFFFFBA8670DA9C83DDA48BDA9C83B37E67
        FDFAF9C67452D59177D59177D8977CD58A67C16F4B805643DD8560823605D583
        60F4C8B7BF917CFFFFFFDA9C83DA9C83DA9C83D8977CD59177D59177D28B72D2
        8B72FFFFFEE2D2C9CD8160CB7C5DCB7C5DC67452FDFBFAC16F4BC67452C67452
        C16F4BC16F4BBF643E805643DD8560823605DB8866F4C8B7BF917CFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFF
        FFFFFFFEFDFFFEFDFEFDFCFEFCFBFEFCFBFEFBFAFEFBFAFDFAF9FDF9F88C5D46
        DD8560823605DB8866F4C8B7BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFDFFFEFDFE
        FDFCFEFCFBFEFCFBFEFBFAFEFBFAFDFAF98C5D46E28964823605E08C69F4C8B7
        BF917CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFEFDFFFEFDFEFDFCFEFCFBFEFCFBFE
        FBFAFEFBFA8C5D46E28964823605E08C69F4C8B7BF917CBF917CBF917CBF917C
        BF917CBF917CBF917CBA8670BA8670BA8670BA8670B37E67B37E67B37E67B37E
        67B37E67AB755DAB755DAB755DAB755DAB755DA46D55A46D55A46D55E2896488
        3C08E08C69F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7F4C8B7
        F1BEAAF1BEAAF1BEAAF0B7A0F0B7A0EDB199EDB199E6AB93E9A589E9A589E69E
        80E99675E99675E08C69E28964DD8560E28964883C08E08C69E08C69E08C69E0
        8C69DB8866DB8866DB8866D58360D58360D58360CD8160CB7C5DCB7C5DCE7B55
        C67452C67452C16F4BC16F4BC16F4BB96A44B96A44B46640B46640B46640AE61
        38AE6138AE6138AE6138}
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 1
      TabStop = True
      OnClick = Button3Click
    end
    object Button4: TxpBitBtn
      Left = 464
      Top = 48
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = 'Excel'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        66090000424D660900000000000036000000280000001C0000001C0000000100
        1800000000003009000000000000000000000000000000000000417B57214F39
        214F39214F39214F39214F39214F391A45331A45331A45331A45331A45331A45
        331335291335291335291335291335291335290D281F0D281F0D281F0D281F0D
        281F0A1F190A1F190A1F190A1F19417B575CAA6545A35F45A35F45A35F45A35F
        3F9E5A3F9E5A3F9E5A399755399755399755358C4F358C4F2D87472D87472D87
        47227F40227F40227F401A7A3C1A7A3C1274371274371274370F6C330A6D300A
        1F19417B575CAA656C977E517666517666517666517666517666517666517666
        4B6B604B6B604B6B604B6B604B6B604B6B604B6B60435F59435F59435F59435F
        59435F59435F59435F59435F59435F590F6C330A1F1947815D63B2766C977EE8
        F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB
        DAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2D2E4
        D2435F591274370A1F1947815D63B2766C977EEAF2E9E8F1E8E8F1E8E6F0E6E4
        EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADBDAE9DAD9E8D9D8E7D8
        D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2D2E4D2D2E4D2435F591274370D281F4781
        5D63B2766C977EEBF3EBEAF2E9E8F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0
        EEE0DFECDFDEEBDEDCEADBDCEADBDAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5
        D5E5D5D2E4D2D2E4D2435F591274370D281F4D876273BA836C977EEDF5EDEBF3
        EBEAF2E9E8F1E8E8F1E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFDEEBDEDC
        EADBDCEADBDAE9DAD9E8D9D8E7D8D8E7D8D5E5D5D5E5D5D5E5D5D2E4D2435F59
        1A7A3C0D281F4D876273BA836C977EEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1
        E8E6F0E6E4EFE4E2EEE3E2EEE3E0EEE0DFECDFAAD6B261996426422D213B2721
        3B27213B27213B27213B27213B27D5E5D5435F591A7A3C0D281F4D87627CC185
        76A086EFF6EF4B964D26422D26422D26422D26422D26422D26422D26422D2642
        2D26422D1A4D2A0F60153287353287351274371C6C3A2C66422C66423A5F5121
        3B27D5E5D5435F59227F400D281F558E6781BC9076A086F1F7F14B964D127437
        1274371C6C3A1C6C3A2C66422C66423A5F513A5F513A5F510469041D781E88C7
        926DB6752D87472D8747227F40227F40046904D8E7D8D5E5D5435F59227F4013
        3529558E6788C79276A086F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C6DB675
        68B06F5CAA6555A45A0469044093479DD0A76DB675409347358C4F2D87472D87
        4704690494C79CD8E7D8D8E7D8435F59227F40133529558E6794C79C76A086F3
        F8F3F3F8F3DAE9DA4B964D6DB67573BB7C73BB7C64AC6955A45A046904409347
        9DD0A768B06F499B54499B54409347358C4F0469041A4D2AA8C2A8D9E8D9D8E7
        D84B6B602D874713352958966B94C79C76A086F5F9F5F3F8F3F3F8F3DAE9DA4B
        964D6DB67568B06F55A45A0469044093479DD0A76DB67555A45A55A45A499B54
        499B540469042D8747227F400F6015DAE9DAD9E8D94B6B602D87471335295896
        6B9DD0A781AA8DF6FAF5F5F9F5F3F8F3F3F8F3DAE9DA4B964D55A45A04690440
        9347AAD6B273BB7C55A45A55A45A55A45A55A45A0469043A734C57825A558E67
        57825ADCEADBDAE9DA4B6B602D87471335295F9B729DD0A781AA8DF6FAF6F6FA
        F5F5F9F5F3F8F3F3F8F3DAE9DA1D781E409347AAD6B27CC1855CAA655CAA6555
        A45A55A45A3A734CA8C2A8E2EEE3E0EEE0DFECDFDEEBDEDCEADBDCEADB4B6B60
        358C4F1335295F9B72AAD6B281AA8DF8FAF8F6FAF6F6FAF5F5F9F5F3F8F394C7
        9C4B964DBADEC088C79264AC6964AC695CAA6555A45A57825A046904CDDACDE2
        EEE3E2EEE3E0EEE0DFECDFDEEBDEDCEADB4B6B60358C4F1A45335F9B72AAD6B2
        81AA8DF9FBFAF8FAF8F6FAF6F6FAF594C79C499B54BADEC094C79C6DB67568B0
        6F64AC695CAA6557825A579A5E57825A046904CDDACDE2EEE3E2EEE3E0EEE0DF
        ECDFDEEBDE4B6B603997551A453366A077AAD6B281AA8DFAFDFAF9FBFAF8FAF8
        94C79C55A45AC4E5CA94C79C73BB7C73BB7C6DB67564AC6957825A68B06F6DB6
        7555A45A57825A046904CDDACDE2EEE3E2EEE3E0EEE0DFECDF5176663997551A
        453366A077BADEC081AA8DFAFDFAFAFDFA94C79C5CAA65C4E5CA88C7927CC185
        7CC18573BB7C68B06F57825A68B06F73BB7C73BB7C6DB67555A45A57825A0469
        04CDDACDE2EEE3E2EEE3E0EEE05176663997551A45336CA67CBADEC08AB795FB
        FEFB94C79C68B06FC4E5CA9DD0A788C7927CC1857CC18573BB7C619964A8C2A8
        6199646DB67573BB7C73BB7C6DB67555A45A57825A046904CDDACDE2EEE3E2EE
        E35176663F9E5A1A45336CA67CBADEC08AB795FDFEFD6DB675C4E5CA9DD0A788
        C79288C79288C79273BA83619964D8E7D8F3F8F3CDDACD6199646DB67573BB7C
        73BB7C6DB67555A45A57825A046904E4EFE4E2EEE35176663F9E5A1A45336CA6
        7CC4E5CA8AB795FEFFFE6DB6756DB67568B06F64AC6964AC69619964619964E3
        EBE3F5F9F5F3F8F3F3F8F3CDDACD619964619964619964558E6757825A57825A
        57825AE6F0E6E4EFE45176663F9E5A214F3971AA81C4E5CA8AB795FFFFFFFEFF
        FEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5F3F8F3F3
        F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E8E6F0E6517666
        45A35F214F3971AA81C4E5CA8AB795FFFFFFFFFFFFFEFFFEFDFEFDFBFEFBFAFD
        FAFAFDFAF9FBFAF8FAF8F6FAF6F6FAF5F5F9F5F3F8F3F3F8F3F1F7F1EFF6EFED
        F5EDEDF5EDEBF3EBEAF2E9E8F1E8E8F1E851766645A35F214F3971AA81CCE9D2
        8AB795FFFFFFFFFFFFFFFFFFFEFFFEFDFEFDFBFEFBFAFDFAFAFDFAF9FBFAF8FA
        F8F6FAF6F6FAF5F5F9F5F3F8F3F3F8F3F1F7F1EFF6EFEDF5EDEDF5EDEBF3EBEA
        F2E9E8F1E851766645A35F214F3976AF85CCE9D281AA8D8AB7958AB7958AB795
        8AB7958AB7958AB7958AB79581AA8D81AA8D81AA8D81AA8D81AA8D76A08676A0
        8676A08676A08676A08676A0866C977E6C977E6C977E6C977E6C977E45A35F21
        4F3976AF85CCE9D2CCE9D2CCE9D2C4E5CAC4E5CAC4E5CABADEC0BADEC0BADEC0
        AAD6B2AAD6B2AAD6B29DD0A79DD0A794C79C94C79C88C79281BC907CC18573BA
        8373BA8363B27663B27663B2765CAA655CAA65214F3976AF8576AF8576AF8571
        AA8171AA8171AA816CA67C6CA67C6CA67C66A07766A07766A0775F9B725F9B72
        5F9B7258966B558E67558E67558E674D87624D87624D876247815D47815D4781
        5D417B57417B57417B57}
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 2
      TabStop = True
      OnClick = Button4Click
    end
    object Button5: TxpBitBtn
      Left = 20
      Top = 48
      Width = 127
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1582#1585#1608#1580
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Glyph.Data = {
        32040000424D3204000000000000360000002800000014000000110000000100
        180000000000FC030000000000000000000000000000000000001816136788FF
        0012D16F6CC6F7F1EC9997D90000B1262FBBCBC8DFFFF8CFFFE9C8FFEACCFFEB
        CCFFEBCBFFEBCBFFEBCBFFECCBFFECCCFFE7C4FFF6EB1D18117987FF0F57FF08
        37E4060084031FC60753FF002DE78370A4FFCA66FFB156FFB359FFB25AFFB159
        FFAF59FFAE59FFAC58FFAB59FFAC53FF9B0D282310C0B8E60017CE2565FF154B
        FC1852FF0B34DF4447BDD8D6EEFFFAFFFFEEFFFFEDFEFFEBFDFFE8FAFFE5F9FF
        E2F8FFDEF5FFD9EDFFF0FFFF9C13171309FFFFE88079BC1232D32B65FF1C54FE
        2733B8C3B9D3FFFFF6FFEAE8FFE7E6FFE4E3FFE1E0FFDDDCFFDCDBFFD8D6FFD5
        D3FFCFCAFFE6FFFFA015161109FFFFED7674CD2257E12355F11344EA1242E565
        65C7F1EDEDFFF4F0FFEAEBFFE8E8FFE6E6FFE3E3FFE0E0FFDCDCFFD9D9FFD2CF
        FFE8FFFF9F151B160CEFEDE32739D31952EF363DB66062C00434E6153BDAABA8
        D8FFFFF7FFECEDFFEBEBFFE8E8FFE5E5FFE1E1FFDDDDFFDADAFFD4D1FFEBFFFF
        9F141A150CF7F7E53C4ED7021BC3B1AAD7FFFCF76167D5031ED48E93DCFEFFFA
        FFF0F0FFEDEDFFEBEBFFE5E5FFE3E3FFDEDEFFDCDCFFD5D2FFEAFFFF9F141511
        0AFFFFE9D8D6F88B89D6F6F5FBFFFFFFF0EFF8A3A3DFD5D2EBFFFFFBFFF3F3FF
        F0F0FFEDEDFFE8E8FFE4E4FFE0E0FFDEDEFFD6D4FFECFFFFA01315100AFFFFEA
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFAFAFFF4F4FFF2F2FFEF
        EFFFE9E9FFE5E5FFE1E1FFDFDFFFD8D5FFEEFFFFA01415100AFFFFEAFAFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFFFBFBFFF5F5FFF3F3FFEFEFFFEBEB
        FFE7E7FFE3E3FFDEDEFFD8D5FFEEFFFFA01415100AFFFFEAFAFDFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFF5F5FFF3F3FFF0F0FFECECFFE8E8FF
        E4E4FFDFDFFFD9D6FFEFFFFFA01415100AFFFFE9FAFDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFFF4F4FFF3F2FFEFEFFFEAEAFFE6E6FFE2E2FFDD
        DDFFD7D5FFEEFFFFA01415100AFFFFF0FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFAFDFFF5F9FFF1F5FFEDF1FFE7ECFFE3E4
        FFF8FFFFA11616120DFFFFD4D5D5D6DCD8D4DCD8D4DCD8D4DCD8D4DCD8D4DCD7
        D2DCD7D2DCD2CDDCD0CCDCCCC7DCC9C4DCC5C0DCC2BDDCBFBADCB8B1D9C8E0FA
        9E18141611FFE153F87600F77E00F77E00F77E00F77E00F77E00F77E00F77E00
        F78000F78000F78000F78100F78000F78100F78200F78200F78500FF93001413
        0DFFFEA7F1A159EFA35CF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0A55DF0
        A55DF0A55DF0A55DF0A55DF0A55DF0A55EEFA661F29B3BFD9300131B21FFFCAE
        FE9809FEA31CFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA31DFEA3
        1DFEA31DFEA31DFEA31DFEA31DFEA21AFE9B0BFED99E}
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 3
      TabStop = True
      OnClick = Button5Click
    end
    object Button6: TxpBitBtn
      Left = 745
      Top = 48
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1575#1606#1578#1582#1575#1576' '#1587#1578#1608#1606' '#1607#1575
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FFA016FC9D14
        FC9D14FFA118F89A10FFA118FA9B12FE9F15FE9F15FA9B11FFA117F89910FFA0
        16FC9C12FC9C12FF9E14FFF1FFE6D7E6E6D7E6FFF8FFC4B8C7FFF8FFD5C5D4F8
        E2F2F8E0EFD5BECEFFEDFCC4ADBCFFE4F4E6C3D2E6C0CFFFD6E5D8C5C5CFBEBE
        CFBEBEDAC7C7C6B5B5DAC8C8CBB8B8D5BFBFD5BCBCCBB1B1DABDBDC6AAAADAB7
        B7CFADADCFAAAAD8AEAEF8E6E6E3D3D2E5D5D1FFEEEACCBDB9FFEFEAD9C7C2F3
        DBD7F3DBD6D7BFBCFEDFDFC8ADADFDD8D8E1BDBDE1BABAF8CACAFAEBEADAD0D8
        C9C5E0E5DFFAB2AFC6E7DEF9BEB8D0D9CEE8D6CBE7C6B5C5FFE3E0C8AFAFFDD9
        D9E1C0C0E1BDBDF8CCCCE0D3CB8D9CE41754FF265FFF134AFF2E68FF164DFF2A
        63FF1654FF4E6AEDE8CDBFC6AFAFDABDBDCFB2B2CFAEAED8B2B2FFFFFEB5C1FF
        5E98FF8EC6FF3B6BFF9CD7FF4C7EFF86BFFF6FAAFF6D83FAFFFFF2C9B3B3FFEE
        EEECCBCBECC6C6FFDEDED0C9C08899DB1449FF194CFF4D7AFF3768FF3F6EFF43
        73FF2457FF5B74E4D6BFB2C5B0B0C9B0B0C7ACACC7A9A9C8A7A7FFFFFFAFC2FF
        5B94FF8DC5FF3061FF93CCFF4374FF7CB4FF67A1FF6A82FAFFFFF4C9B6B6FFEE
        EEEBCCCCEBC7C7FFDFDFEEEAE2A2B4F1457FFF5791FF3A6CFF5F99FF3D71FF5B
        94FF3E7BFF5C77F2F8DFD2C7B3B3EBCECED8BBBBD8B7B7E7C1C1EAE7E4C7CEE0
        A2B4F1AEC0FF9AABDDB2C1FF9CAAE2AEB9F3A1ABF2A7A7D1F1DAD5C7B3B3EBCE
        CED8BBBBD8B7B7E7C1C1FFFFFFECEEEFF0F0EDFFFFFFCECDCAFFFFFFDFD8D4FF
        F8F5FFF4F0DDCECDFFFAFEC7B6B9FFEFF2E9CCD0E9C8CBFFDFE3CFC1B0D2C5B0
        D2C6B1CFC3AFD5C9B5CFC0ACD4C3AFD1BDA9D1BBA7D4BBA7CFB5A0D5B7A3CFB0
        9CD2AF9BD2AD99CFA793FFB044FA8200FA8600FA8600FA8600FA8700FA8700FA
        8700FA8700FA8800FA8800FA8800FA8900FA8900FA8900FF9000FDD0A8F5B268
        F5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B46EF5B4
        6EF5B46EF5B674FAA533FF9E10FFA116FFA116FFA116FFA116FFA116FFA116FF
        A116FFA116FFA116FFA116FFA116FFA116FFA116FFA218FF9C0A}
      ImageIndex = 2
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 4
      TabStop = True
      OnClick = Button6Click
    end
    object xpBitBtn1: TxpBitBtn
      Left = 604
      Top = 7
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1604#1610#1587#1578' '#1606#1605#1585#1607' '#1575#1586' 100'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageList = Dm.LetterImages
      ImageIndex = 51
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 5
      TabStop = True
      OnClick = xpBitBtn1Click
    end
    object xpBitBtn2: TxpBitBtn
      Left = 463
      Top = 7
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1604#1610#1587#1578' '#1606#1605#1585#1607' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageList = Dm.LetterImages
      ImageIndex = 51
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 6
      TabStop = True
      OnClick = xpBitBtn2Click
    end
    object xpBitBtn3: TxpBitBtn
      Left = 744
      Top = 7
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1578#1581#1604#1610#1604' '#1583#1585#1589#1583' '#1602#1576#1608#1604#1610'/'#1585#1583#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Gradient = True
      Anchors = [akRight, akBottom]
      TabOrder = 7
      TabStop = True
      OnClick = xpBitBtn3Click
    end
    object xpBitBtn4: TxpBitBtn
      Left = 164
      Top = 7
      Width = 126
      Height = 35
      startColor = 16645629
      EndColor = 14666957
      Caption = #1604#1610#1587#1578' '#1578#1601#1705#1610#1705#1610
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageList = Dm.LetterImages
      ImageIndex = 51
      Gradient = True
      Anchors = [akLeft, akBottom]
      TabOrder = 8
      TabStop = True
      OnClick = xpBitBtn4Click
    end
  end
  object YDBGrid1: TYDBGrid [3]
    Left = 0
    Top = 0
    Width = 896
    Height = 473
    Cursor = crHandPoint
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = 16770790
    DataSource = DSelect_Applicant_by_Examid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
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
    PrintTitle = #1604#1610#1587#1578' '#1583#1575#1606#1588#1580#1608#1610#1575#1606' '#1570#1586#1605#1608#1606
    InvertFarsiDate = True
    TitleSort = True
    AutoInsert = False
    FooterFields = 'Count'
    Columns = <
      item
        Expanded = False
        FieldName = 'ApplicantCode'
        Title.Alignment = taCenter
        Title.Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FullName'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1705#1575#1605#1604
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FacultyTitle'
        Title.Alignment = taCenter
        Title.Caption = #1583#1575#1606#1588#1705#1583#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'MajorTitle'
        Title.Alignment = taCenter
        Title.Caption = #1585#1588#1578#1607
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'FinalMark'
        Title.Alignment = taCenter
        Title.Caption = #1606#1605#1585#1607' '#1606#1607#1575#1610#1610
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ord'
        Title.Alignment = taCenter
        Title.Caption = #1585#1578#1576#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACCEPT'
        Title.Alignment = taCenter
        Title.Caption = #1602#1576#1608#1604' / '#1585#1583
        Width = 61
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GroupingTitle'
        Title.Alignment = taCenter
        Title.Caption = #1711#1585#1608#1607' '
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'mark20'
        Title.Alignment = taCenter
        Title.Caption = #1606#1605#1585#1607' '#1575#1586' 20'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'mark'
        Title.Alignment = taCenter
        Title.Caption = #1606#1605#1585#1607
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstName'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Title.Alignment = taCenter
        Title.Caption = #1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Termcode'
        Title.Alignment = taCenter
        Title.Caption = #1578#1585#1605' '#1608#1585#1608#1583
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'mark100'
        Title.Alignment = taCenter
        Title.Caption = #1583#1585#1589#1583
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CustomField1'
        Title.Alignment = taCenter
        Title.Caption = #1605#1581#1604' '#1582#1583#1605#1578
        Width = 123
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DeleteQuestionCount'
        Title.Alignment = taCenter
        Title.Caption = #1578#1593#1583#1575#1583' '#1587#1608#1575#1604#1575#1578' '#1581#1584#1601#1610
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CorrectItemPoint'
        Title.Alignment = taCenter
        Title.Caption = #1576#1575#1585#1605' '#1587#1608#1575#1604
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'maxMark'
        Title.Alignment = taCenter
        Title.Caption = #1606#1605#1585#1607' '#1705#1604
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'Correct_answer'
        Title.Alignment = taCenter
        Title.Caption = #1662#1575#1587#1582' '#1607#1575#1610' '#1583#1585#1587#1578
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Wrong_answer'
        Title.Alignment = taCenter
        Title.Caption = #1662#1575#1587#1582' '#1607#1575#1610' '#1606#1575#1583#1585#1587#1578
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Withot_answer'
        Title.Alignment = taCenter
        Title.Caption = #1576#1583#1608#1606' '#1662#1575#1587#1582
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SumScore'
        Title.Caption = #1606#1605#1585#1607' '#1578#1588#1585#1610#1581#1610
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RoundFinalMark'
        Title.Caption = #1606#1605#1585#1607' '#1583#1575#1606#1588#1580#1608
        Visible = True
      end>
  end
  inherited ActionList: TActionList
    Left = 107
    Top = 136
  end
  inherited xpWindow1: TxpWindow
    Left = 336
    Top = 152
  end
  object DSelect_Applicant_by_Examid: TDataSource
    DataSet = Select_Applicant_by_Examid
    Left = 152
    Top = 48
  end
  object Select_Applicant_by_Examid: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    OnCalcFields = Select_Applicant_by_ExamidCalcFields
    CommandTimeout = 9999999
    ProcedureName = 'Select_Applicant_by_Examid'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ExamID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 222
      end>
    Left = 512
    Top = 236
    object Select_Applicant_by_ExamidApplicantID: TAutoIncField
      FieldName = 'ApplicantID'
      ReadOnly = True
    end
    object Select_Applicant_by_ExamidApplicantCode: TStringField
      FieldName = 'ApplicantCode'
    end
    object Select_Applicant_by_ExamidFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Select_Applicant_by_ExamidLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Select_Applicant_by_ExamidFullName: TWideStringField
      FieldName = 'FullName'
      Size = 80
    end
    object Select_Applicant_by_ExamidMajorID: TSmallintField
      FieldName = 'MajorID'
    end
    object Select_Applicant_by_ExamidTermcode: TStringField
      FieldName = 'Termcode'
      FixedChar = True
      Size = 3
    end
    object Select_Applicant_by_ExamidFacultyTitle: TWideStringField
      FieldName = 'FacultyTitle'
      Size = 50
    end
    object Select_Applicant_by_ExamidMajorTitle: TWideStringField
      FieldName = 'MajorTitle'
      Size = 60
    end
    object Select_Applicant_by_ExamidFinalMark: TFloatField
      FieldName = 'FinalMark'
      Precision = 7
    end
    object Select_Applicant_by_Examidord: TIntegerField
      FieldName = 'ord'
    end
    object Select_Applicant_by_ExamidACCEPT: TStringField
      FieldName = 'ACCEPT'
      ReadOnly = True
      Size = 4
    end
    object Select_Applicant_by_ExamidGroupingTitle: TWideStringField
      FieldName = 'GroupingTitle'
      Size = 50
    end
    object Select_Applicant_by_Examidmark20: TFloatField
      FieldName = 'mark20'
      ReadOnly = True
    end
    object Select_Applicant_by_Examidmark100: TFloatField
      FieldName = 'mark100'
      ReadOnly = True
    end
    object Select_Applicant_by_ExamidFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 50
    end
    object Select_Applicant_by_ExamidCustomField1: TWideStringField
      FieldName = 'CustomField1'
      Size = 50
    end
    object Select_Applicant_by_ExamidCustomField2: TWideStringField
      FieldName = 'CustomField2'
      Size = 50
    end
    object Select_Applicant_by_ExamidFullPoint: TFloatField
      FieldName = 'FullPoint'
      ReadOnly = True
    end
    object Select_Applicant_by_Examidmark: TFloatField
      FieldName = 'mark'
      ReadOnly = True
    end
    object Select_Applicant_by_ExamidAcceptCount: TIntegerField
      FieldName = 'AcceptCount'
      ReadOnly = True
    end
    object Select_Applicant_by_ExamidRejectCount: TIntegerField
      FieldName = 'RejectCount'
      ReadOnly = True
    end
    object Select_Applicant_by_ExamidAcceptPercent: TBCDField
      FieldName = 'AcceptPercent'
      Precision = 6
      Size = 2
    end
    object Select_Applicant_by_ExamidRejectPercent: TBCDField
      FieldName = 'RejectPercent'
      Precision = 6
      Size = 2
    end
    object Select_Applicant_by_ExamidFarsiMark: TStringField
      FieldKind = fkCalculated
      FieldName = 'FarsiMark'
      Size = 100
      Calculated = True
    end
    object Select_Applicant_by_ExamidFarsiMark100: TStringField
      FieldKind = fkCalculated
      FieldName = 'FarsiMark100'
      Size = 100
      Calculated = True
    end
    object Select_Applicant_by_ExamidDeleteQuestionCount: TIntegerField
      FieldName = 'DeleteQuestionCount'
    end
    object Select_Applicant_by_ExamidCorrectItemPoint: TBCDField
      FieldName = 'CorrectItemPoint'
      Precision = 6
      Size = 2
    end
    object Select_Applicant_by_ExamidmaxMark: TFloatField
      FieldName = 'maxMark'
      Visible = False
    end
    object Select_Applicant_by_ExamidCorrect_answer: TIntegerField
      FieldName = 'Correct_answer'
    end
    object Select_Applicant_by_ExamidWrong_answer: TIntegerField
      FieldName = 'Wrong_answer'
    end
    object Select_Applicant_by_ExamidWithot_answer: TIntegerField
      FieldName = 'Withot_answer'
    end
    object Select_Applicant_by_ExamidSumScore: TWideStringField
      FieldName = 'SumScore'
      Size = 0
    end
    object Select_Applicant_by_ExamidRoundFinalMark: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RoundFinalMark'
      Calculated = True
    end
  end
  object Select_Applicant_by_Examid_advanced: TADOStoredProc
    Connection = Dm.YeganehConnection
    OnCalcFields = Select_Applicant_by_Examid_advancedCalcFields
    CommandTimeout = 9999999
    ProcedureName = 'Select_Applicant_by_Examid_advanced;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ExamID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@questionNumber1'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@questionNumber2'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@maxMark'
        Attributes = [paNullable]
        DataType = ftFloat
        Precision = 15
        Value = Null
      end>
    Left = 512
    Top = 112
    object Select_Applicant_by_Examid_advancedApplicantID: TAutoIncField
      FieldName = 'ApplicantID'
      ReadOnly = True
    end
    object Select_Applicant_by_Examid_advancedApplicantCode: TStringField
      FieldName = 'ApplicantCode'
    end
    object Select_Applicant_by_Examid_advancedFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedLastName: TWideStringField
      FieldName = 'LastName'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedFullName: TWideStringField
      FieldName = 'FullName'
      Size = 80
    end
    object Select_Applicant_by_Examid_advancedMajorID: TSmallintField
      FieldName = 'MajorID'
    end
    object Select_Applicant_by_Examid_advancedTermcode: TStringField
      FieldName = 'Termcode'
      FixedChar = True
      Size = 3
    end
    object Select_Applicant_by_Examid_advancedFatherName: TWideStringField
      FieldName = 'FatherName'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedCustomField1: TWideStringField
      FieldName = 'CustomField1'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedCustomField2: TWideStringField
      FieldName = 'CustomField2'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedFacultyTitle: TWideStringField
      FieldName = 'FacultyTitle'
      Size = 50
    end
    object Select_Applicant_by_Examid_advancedMajorTitle: TWideStringField
      FieldName = 'MajorTitle'
      Size = 60
    end
    object Select_Applicant_by_Examid_advancedFullPoint: TFloatField
      FieldName = 'FullPoint'
      ReadOnly = True
    end
    object Select_Applicant_by_Examid_advancedmark: TFloatField
      FieldName = 'mark'
      ReadOnly = True
    end
    object Select_Applicant_by_Examid_advancedFarsiMark: TStringField
      FieldKind = fkCalculated
      FieldName = 'FarsiMark'
      Size = 100
      Calculated = True
    end
  end
  object Select_ApplicantExam_Log: TADOStoredProc
    Connection = Dm.YeganehConnection
    CommandTimeout = 9999999
    ProcedureName = 'Select_ApplicantExam_Log'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@applicantID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ExamID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end>
    Left = 512
    Top = 64
    object Select_ApplicantExam_Logcoursetitle: TWideStringField
      FieldName = 'coursetitle'
      Size = 60
    end
    object Select_ApplicantExam_LogPercentMark: TFloatField
      FieldName = 'PercentMark'
      ReadOnly = True
    end
  end
  object usp_ListTafkikiKol: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 9999999
    ProcedureName = 'usp_ListTafkikiKol_02;1'
    Parameters = <
      item
        Name = '@ExamId'
        Size = -1
        Value = Null
      end>
    Left = 512
    Top = 176
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    Left = 376
    Top = 240
  end
end
