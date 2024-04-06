inherited FrViewExamKey: TFrViewExamKey
  Left = 425
  Top = 123
  AutoScroll = False
  Caption = ''
  ClientHeight = 576
  ClientWidth = 808
  Color = 16773862
  Font.Charset = ANSI_CHARSET
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object QuickRep1: TQuickRep [0]
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = True
    Frame.DrawLeft = True
    Frame.DrawRight = True
    DataSet = Get_ExamKey_Details_ByExamID
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
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
    Page.Columns = 7
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      90.000000000000000000
      2970.000000000000000000
      90.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
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
      Left = 19
      Top = 91
      Width = 108
      Height = 14
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        37.041666666666670000
        285.750000000000000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 3
        Top = -1
        Width = 31
        Height = 16
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          42.333333333333330000
          7.937500000000000000
          -2.645833333333333000
          82.020833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Get_ExamKey_Details_ByExamID
        DataField = 'Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 8
      end
      object QRShape1: TQRShape
        Left = 37
        Top = 2
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          97.895833333333330000
          5.291666666666667000
          39.687500000000000000)
        Brush.Color = clWindow
        Shape = qrsRectangle
      end
      object QRShape2: TQRShape
        Left = 54
        Top = 2
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          142.875000000000000000
          5.291666666666667000
          39.687500000000000000)
        Brush.Color = clWindow
        Shape = qrsRectangle
      end
      object QRShape3: TQRShape
        Left = 72
        Top = 2
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          190.500000000000000000
          5.291666666666667000
          39.687500000000000000)
        Brush.Color = clWindow
        Shape = qrsRectangle
      end
      object QRShape4: TQRShape
        Left = 90
        Top = 2
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          238.125000000000000000
          5.291666666666667000
          39.687500000000000000)
        Brush.Style = bsClear
        Shape = qrsRectangle
      end
      object QRShape8: TQRShape
        Left = 108
        Top = 5
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          285.750000000000000000
          13.229166666666670000
          39.687500000000000000)
        Brush.Color = clWindow
        Shape = qrsRectangle
      end
      object QRShape9: TQRShape
        Left = 125
        Top = 5
        Width = 15
        Height = 10
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          26.458333333333330000
          330.729166666666700000
          13.229166666666670000
          39.687500000000000000)
        Brush.Color = clWindow
        Shape = qrsRectangle
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 19
      Top = 34
      Width = 756
      Height = 36
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = False
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        95.250000000000000000
        2000.250000000000000000)
      BandType = rbPageHeader
      object QRLabel1: TQRLabel
        Left = -151
        Top = 12
        Width = 100
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          -399.520833333333300000
          31.750000000000000000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 619
        Top = 9
        Width = 97
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          1637.770833333333000000
          23.812500000000000000
          256.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1606#1575#1605' '#1570#1586#1605#1608#1606' :'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText14: TQRDBText
        Left = 272
        Top = 9
        Width = 305
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          719.666666666666700000
          23.812500000000000000
          806.979166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.Browse_Exam
        DataField = 'ExamTitle'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRLabel15: TQRLabel
        Left = 135
        Top = 9
        Width = 132
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          357.187500000000000000
          23.812500000000000000
          349.250000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1576#1585#1711#1586#1575#1585#1610' :'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText15: TQRDBText
        Left = 47
        Top = 9
        Width = 86
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.500000000000000000
          124.354166666666700000
          23.812500000000000000
          227.541666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Dm.Browse_Exam
        DataField = 'ExamDate'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 35
        Width = 756
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.645833333333333000
          0.000000000000000000
          92.604166666666680000
          2000.250000000000000000)
        Shape = qrsHorLine
      end
    end
    object QRShape6: TQRShape
      Left = 161
      Top = 1093
      Width = 15
      Height = 10
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        26.458333333333330000
        425.979166666666700000
        2891.895833333333000000
        39.687500000000000000)
      Brush.Color = clBlack
      Shape = qrsRectangle
    end
    object QRShape7: TQRShape
      Left = 26
      Top = 1093
      Width = 15
      Height = 10
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        26.458333333333330000
        68.791666666666680000
        2891.895833333334000000
        39.687500000000000000)
      Brush.Color = clBlack
      Brush.Style = bsFDiagonal
      Shape = qrsRectangle
    end
    object QRLabel2: TQRLabel
      Left = 177
      Top = 1090
      Width = 75
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        468.312500000000000000
        2883.958333333333000000
        198.437500000000000000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1662#1575#1587#1582' '#1589#1581#1610#1581' '#1575#1608#1604
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRLabel3: TQRLabel
      Left = 42
      Top = 1090
      Width = 77
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        47.625000000000000000
        111.125000000000000000
        2883.958333333333000000
        203.729166666666700000)
      Alignment = taLeftJustify
      AlignToBand = False
      AutoSize = True
      AutoStretch = False
      Caption = #1662#1575#1587#1582' '#1589#1581#1610#1581' '#1583#1608#1605
      Color = clWhite
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      WordWrap = True
      FontSize = 8
    end
    object QRBand1: TQRBand
      Left = 19
      Top = 70
      Width = 108
      Height = 21
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
        55.562500000000000000
        285.750000000000000000)
      BandType = rbColumnHeader
      object QRLabel4: TQRLabel
        Left = 37
        Top = 3
        Width = 15
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          97.895833333333330000
          7.937500000000000000
          39.687500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1575#1604#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel5: TQRLabel
        Left = 57
        Top = 3
        Width = 9
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          150.812500000000000000
          7.937500000000000000
          23.812500000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1576
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel6: TQRLabel
        Left = 76
        Top = 3
        Width = 7
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          201.083333333333300000
          7.937500000000000000
          18.520833333333330000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1580
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel7: TQRLabel
        Left = 94
        Top = 3
        Width = 6
        Height = 15
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          39.687500000000000000
          248.708333333333300000
          7.937500000000000000
          15.875000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
    end
  end
  inherited ActionList: TActionList
    Left = 203
    Top = 160
  end
  inherited xpWindow1: TxpWindow
    Left = 64
    Top = 264
  end
  object Get_ExamKey_Details_ByExamID: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Get_ExamKey_Details_ByExamID'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@examid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 3
      end>
    Left = 72
    Top = 200
    object Get_ExamKey_Details_ByExamIDNumber: TSmallintField
      FieldName = 'Number'
    end
    object Get_ExamKey_Details_ByExamIDItem1: TBooleanField
      FieldName = 'Item1'
      ReadOnly = True
    end
    object Get_ExamKey_Details_ByExamIDItem2: TBooleanField
      FieldName = 'Item2'
      ReadOnly = True
    end
    object Get_ExamKey_Details_ByExamIDItem3: TBooleanField
      FieldName = 'Item3'
      ReadOnly = True
    end
    object Get_ExamKey_Details_ByExamIDItem4: TBooleanField
      FieldName = 'Item4'
      ReadOnly = True
    end
    object Get_ExamKey_Details_ByExamIDItem5: TBooleanField
      FieldName = 'Item5'
      ReadOnly = True
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber: TWordField
      FieldName = 'CorrectItemNumber'
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber2: TWordField
      FieldName = 'CorrectItemNumber2'
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber3: TIntegerField
      FieldName = 'CorrectItemNumber3'
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber4: TIntegerField
      FieldName = 'CorrectItemNumber4'
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber5: TIntegerField
      FieldName = 'CorrectItemNumber5'
    end
    object Get_ExamKey_Details_ByExamIDCorrectItemNumber6: TIntegerField
      FieldName = 'CorrectItemNumber6'
    end
  end
  object QGetNumberOfItems: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'SELECT Number_of_Items FROM Exam')
    Left = 72
    Top = 136
    object QGetNumberOfItemsNumber_of_Items: TWordField
      FieldName = 'Number_of_Items'
    end
  end
end
