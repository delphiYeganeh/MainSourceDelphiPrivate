inherited frReport_LoanPerAccount: TfrReport_LoanPerAccount
  Left = 340
  Top = 127
  BorderStyle = bsSingle
  Caption = #1711#1586#1575#1585#1588' '#1608#1575#1605' '#1576#1607' '#1578#1601#1705#1610#1705' '#1575#1593#1590#1575
  ClientHeight = 605
  ClientWidth = 1164
  Color = clWhite
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 1600
    Height = 113
    TabOrder = 0
    object Label1: TLabel
      Left = 331
      Top = 22
      Width = 64
      Height = 13
      Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object SearchEdit: TYWhereEdit
      Left = 145
      Top = 20
      Width = 183
      Height = 21
      BiDiMode = bdLeftToRight
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      TabOrder = 0
      isLike = False
      isDate = False
      EveryLike = True
      isString = True
      FieldName = 'AccountNo'
      TableName = 'Account'
      CodeField = 'Code'
      TitleField = 'Title'
      Connection = dm.YeganehConnection
    end
    object MakeRep: TBitBtn
      Left = 57
      Top = 16
      Width = 87
      Height = 28
      Caption = #1606#1605#1575#1610#1588
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = MakeRepClick
      Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F8F9787B7B4C4E506A6C6E
        D8D9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9EBEB6C7679AE
        896FE5AF88BE9B82595758EBECECFFFFFFFFFFFFE0E2E3A3A7AA9FA3A7D1D3D4
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
        E9747B7E8D7D6FFFD59DFDCD9BFFCD97B1947A85959BFFFFFFDCDCDD7A767494
        7661957A676E6B6AC8CBCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFF8F8F87070706A7074BD9F8AFFE8BFFFDFC1FFDDB5FFD6A547555D8FB9
        C263686DBFA07DFFCB94FFC790C5A1837C7D7CF6F6F7FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF5959597271719B9EA0A1928DFFEFDAFFFDF2FFEFD8
        FFDDB536393C4245488A8585EACEA6FFDFBCFFDBB3FFD9A771655CECEDEEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E75454543D3D3DA7A7A7BBBBBCC1C5C9A9
        8F88EEE3E0FCEFD894897D393B3DACACACA4A4A6DDC3B1FFFBEBFFF3E1FFE7BE
        746B61D6E8EEFCFFFFFFFFFFFFFFFFFFFFFFF6F6F66363638E8E8E5757578787
        87E1E1E1FAFBFACCCDCF8775737D6D69585759434344CFCECECACDCFB6AAA5DC
        CDCAFBEEE1CAB49C8B8D8D8BE4F96AE1FCA7EAFEE8FDFFFFFFFF9898988A8A8A
        C8C8C89999998080809D9D9DDFDFDFA4A4A45458586366676A6A6A464646F6F6
        F6F5F6F6F4F5F6B6AAA9927F78A19B98E3E4E4F2FFFF9AE6FA74E0FB5FDEFB8D
        EBFE898989777777AAAAAACECECEC6C6C69B9B9B8181814949493D3D3D424242
        333333777777E6E6E6EDEDEDB0AEAE5A5F6192A9B39CC8D892CADDBFE7EEFFFF
        FFFFFFFF53D7F96EE5FE9F9F9F545252CBCACACDCCCCBDBCBCB6B5B5AEAEAEAB
        ABAB9F9F9F8E8D8D7E7D7D706F6F5755552D2B2A8D9392ECFCFBD8FEFF95D1E0
        65B0CA54A1C2D8F1F4ABE9FB46D2F9F7FDFFE6E4E45F6669535859929797ABAE
        AEB2B3B2AAA9A89593938F8D8D999898A7A6A6949595647174B6D7DDD4FDFFC5
        F6FACDFAFCE1FFFFE2FFFFC5EDF1C6F7FE4DD0F4D2F0FCFFFFFFFFFFFF7ED5EF
        ACEAF1ADEEF17EBBC986B9C48FBBC396ADAE9AA3A1A5B6B5A9C2C1B2DADBBDF9
        FF97DBE983CCDD7FC8DA7AC2D684C6DACEF5F8C4F8FD4CD5F9D3F4FCFFFFFFFF
        FFFFEFFFFF4ED1F2A4FBFF9FF5F86FCCDE5EBDD458B6D17FCDE195DAE99FE4F0
        AFF6FBC4FFFFCCFFFFCEFFFFCBFFFFBAF5F8A3E1EA96DAE6DEFFFC25C1EDCDF5
        FFFFFFFFFFFFFFFFFFFFCCFFFF5ADBF7A9FFFFAAFFFFA9FDFDA7F7F99EEFF67D
        D4E35CB8CF50ABC75AB4CC67BDD383D0E1A4EDF3C8FFFFD3FFFFCAFFFFDCFFFF
        81E3F456D2F8FFFFFFFFFFFFFFFFFFFFFFFFACF2FF5BD6F0AEFFFFA5FFFFA8FF
        FFA9FFFFAEFFFFB1FFFFB8FFFFADFBFC8FE2EB6ABED553AFC955AEC951ACC76A
        BCD3AFF3F8CDFFFF32C2EBE3F5FCFFFFFFFFFFFFFFFFFFFFFFFFA5F1FF6AE2F2
        99F8F965CADC82E3EC97F1F6A0F6F9A5FDFEAEFFFFB1FFFFB7FFFFBEFFFFB3FF
        FF97E7EF7BCBDC5EB6CF99DCE786E5F66DD7F7FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFA5F4FF7EEEF790F1F55EC4D752B9CF4CB0CB59BCD36FD0DF85E0E993E8F0
        9FF6F8AFFFFFB9FFFFBAFFFFC1FFFFB4FFFFC3FFFF5BD5F3ADE5F8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFA4F4FF87F5FA9FFFFF96FAFC8FF0F585E8EF74D9E560
        C5D74CAFC94FAFCA5DBCD46CCADC7FD6E494EBF1ABFEFEB8FFFFA3F3FA50CFF1
        E3F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFABFBFFB0FFFFACFFFFA2FFFF9EFF
        FF9FFFFF9DFFFF9AFBFC99F7F98AECF271D3E253B6CD43A7C44FAFC949ABC799
        EDF095EDF95BC5E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DEFC18B0DB
        48CEE97DEEF89BF7FB9DF9FC9EFDFDA1FFFFA3FFFFA3FFFFA8FFFFACFFFFA3FF
        FF88E8EF69C9DBA9FEFB65DEF69CE0FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFDCF4FEA4E1F962C3EC34ABDB38BAE24DCDEB65E0F274E2F07DE9F4
        8BF3F99BFFFEADFFFFAFFFFFB1FFFFB7FFFF3CC6E7D1F2FEFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F8FFBFEAFB91
        D8F26AC5E35BC8E856CEED4FD3F24CCDE95CD9ED7AEAF5ABFFFF21B2DEFDFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFF4FCFFDAF3FCBFE8F99FD9EF7DD5F05ECFF03C
        CDF43ACAF6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object Panel2: TPanel
      Left = 1
      Top = 73
      Width = 1598
      Height = 39
      Align = alBottom
      TabOrder = 2
      object BitBtn1: TBitBtn
        Left = 2
        Top = 6
        Width = 70
        Height = 27
        Action = AExit
        Caption = #1582#1585#1608#1580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      end
    end
  end
  object QuickRep1: TQuickRep [1]
    Left = 24
    Top = 130
    Width = 1111
    Height = 1572
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = Report_LoanPerAccount
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
    Units = Pixels
    Zoom = 140
    object ColumnHeaderBand1: TQRBand
      Left = 53
      Top = 164
      Width = 1005
      Height = 162
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
        306.160714285714300000
        1899.330357142857000000)
      BandType = rbColumnHeader
      object QRShape44: TQRShape
        Left = 0
        Top = -1
        Width = 1006
        Height = 164
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          309.940476190476200000
          0.000000000000000000
          -1.889880952380953000
          1901.220238095238000000)
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 887
        Top = 5
        Width = 115
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1676.324404761905000000
          9.449404761904762000
          217.336309523809500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1606#1575#1605' '#1608' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 879
        Top = 43
        Width = 115
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1661.205357142857000000
          81.264880952380950000
          217.336309523809500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1608#1580#1608#1583#1610' '#1662#1587' '#1575#1606#1583#1575#1586':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 245
        Top = 8
        Width = 140
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          463.020833333333300000
          15.119047619047620000
          264.583333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1581#1587#1575#1576'/'#1593#1590#1608#1610#1578':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 286
        Top = 43
        Width = 94
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          540.505952380952400000
          81.264880952380950000
          177.648809523809500000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1593#1590#1608#1610#1578':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape1: TQRShape
        Left = 1
        Top = 32
        Width = 1002
        Height = 13
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          24.568452380952380000
          1.889880952380953000
          60.476190476190480000
          1893.660714285714000000)
        Shape = qrsHorLine
      end
      object QRShape2: TQRShape
        Left = 2
        Top = 66
        Width = 1002
        Height = 5
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          9.449404761904763000
          3.779761904761905000
          124.732142857142800000
          1893.660714285714000000)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 390
        Top = -2
        Width = 2
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          133.494318181818200000
          737.225378787878900000
          -3.607954545454545000
          3.607954545454545000)
        Shape = qrsVertLine
      end
      object QRShape4: TQRShape
        Left = 670
        Top = -2
        Width = 2
        Height = 71
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.696969696969700000
          1266.392045454545000000
          -3.607954545454545000
          3.607954545454545000)
        Shape = qrsVertLine
      end
      object QRLabel5: TQRLabel
        Left = 554
        Top = 13
        Width = 113
        Height = 23
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1046.994047619048000000
          24.568452380952380000
          213.556547619047600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1576#1604#1594' '#1581#1602' '#1593#1590#1608#1610#1578':'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel6: TQRLabel
        Left = 338
        Top = 77
        Width = 329
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          62.366071428571430000
          638.779761904761900000
          145.520833333333300000
          621.770833333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = #1589#1608#1585#1578' '#1581#1587#1575#1576' '#1608#1575#1605#1607#1575#1610' '#1583#1585#1610#1575#1601#1578#1610
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 14
      end
      object QRDBText3: TQRDBText
        Left = 176
        Top = 42
        Width = 106
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          333.375000000000000000
          79.375000000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'AccountDate'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 967
        Top = 124
        Width = 34
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1827.514880952381000000
          234.345238095238100000
          64.255952380952380000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape5: TQRShape
        Left = 2
        Top = 107
        Width = 1002
        Height = 7
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          13.229166666666670000
          3.779761904761905000
          202.217261904761900000
          1893.660714285714000000)
        Shape = qrsHorLine
      end
      object QRLabel8: TQRLabel
        Left = 832
        Top = 124
        Width = 62
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1572.380952380952000000
          234.345238095238100000
          117.172619047619000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1593#1606#1608#1575#1606' '#1608#1575#1605
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel9: TQRLabel
        Left = 447
        Top = 112
        Width = 50
        Height = 46
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          86.934523809523810000
          844.776785714285700000
          211.666666666666700000
          94.494047619047620000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 670
        Top = 124
        Width = 49
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1266.220238095238000000
          234.345238095238100000
          92.604166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1605#1576#1604#1594' '#1608#1575#1605
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 22
        Top = 114
        Width = 83
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.044642857142860000
          41.577380952380950000
          215.446428571428500000
          156.860119047619000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1605#1575#1606#1583#1607' '#1608#1575#1605' '#1608' '#1587#1608#1583
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 251
        Top = 113
        Width = 78
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.044642857142860000
          474.360119047619100000
          213.556547619047600000
          147.410714285714300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1593#1583#1575#1583' '#1575#1602#1587#1575#1591' '#1662#1585#1583#1575#1582#1578' '#1588#1583#1607
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape6: TQRShape
        Left = 966
        Top = 110
        Width = 2
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          1825.625000000000000000
          207.886904761904800000
          3.779761904761905000)
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Left = 756
        Top = 110
        Width = 2
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          138.171296296296300000
          1428.750000000000000000
          207.256944444444400000
          4.409722222222222000)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 620
        Top = 110
        Width = 2
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          1171.726190476191000000
          207.886904761904800000
          3.779761904761905000)
        Shape = qrsVertLine
      end
      object QRShape12: TQRShape
        Left = 501
        Top = 109
        Width = 3
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          946.830357142857100000
          205.997023809523800000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape14: TQRShape
        Left = 442
        Top = 109
        Width = 3
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          835.327380952381100000
          205.997023809523800000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape16: TQRShape
        Left = 328
        Top = 109
        Width = 3
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          619.880952380952400000
          205.997023809523800000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRDBText1: TQRDBText
        Left = 133
        Top = 10
        Width = 106
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          251.354166666666700000
          18.520833333333330000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'AccountNo'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 685
        Top = 10
        Width = 196
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1293.812500000000000000
          18.520833333333330000
          370.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'AccountTitle'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText11: TQRDBText
        Left = 680
        Top = 42
        Width = 192
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          45.357142857142850000
          1285.119047619048000000
          79.375000000000000000
          362.857142857142800000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'TOTALEXIST'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrshp1: TQRShape
        Left = 249
        Top = 109
        Width = 3
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          470.580357142857200000
          205.997023809523800000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape37: TQRShape
        Left = 0
        Top = 160
        Width = 1004
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          5.669642857142857000
          0.000000000000000000
          302.380952380952400000
          1897.440476190476000000)
        Shape = qrsHorLine
      end
      object qrlbl1: TQRLabel
        Left = 519
        Top = 117
        Width = 83
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          980.848214285714200000
          221.116071428571400000
          156.860119047619000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1587#1608#1583' '#1608#1575#1605
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape38: TQRShape
        Left = 126
        Top = 109
        Width = 3
        Height = 73
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          137.961309523809600000
          238.125000000000000000
          205.997023809523800000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRLabel16: TQRLabel
        Left = 153
        Top = 112
        Width = 78
        Height = 47
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          88.824404761904760000
          289.151785714285700000
          211.666666666666700000
          147.410714285714300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1580#1605#1593' '#1605#1576#1604#1594' '#1662#1585#1583#1575#1582#1578#1610
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel14: TQRLabel
        Left = 344
        Top = 113
        Width = 89
        Height = 45
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          85.044642857142860000
          650.119047619047700000
          213.556547619047600000
          168.199404761904800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1580#1605#1593' '#1602#1587#1591' '#1608' '#1587#1608#1583
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object DetailBand1: TQRBand
      Left = 53
      Top = 326
      Width = 1005
      Height = 34
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
        64.255952380952380000
        1899.330357142857000000)
      BandType = rbDetail
      object QRShape36: TQRShape
        Left = 0
        Top = -1
        Width = 1006
        Height = 36
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          68.035714285714290000
          0.000000000000000000
          -1.889880952380953000
          1901.220238095238000000)
        Shape = qrsRectangle
      end
      object QRShape7: TQRShape
        Left = 966
        Top = -1
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.740530303030310000
          1825.625000000000000000
          -2.405303030303031000
          4.810606060606061000)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 756
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          63.740530303030310000
          1428.750000000000000000
          0.000000000000000000
          4.810606060606061000)
        Shape = qrsVertLine
      end
      object QRShape11: TQRShape
        Left = 619
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          1169.836309523810000000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape13: TQRShape
        Left = 501
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          946.830357142857100000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape15: TQRShape
        Left = 442
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          835.327380952381100000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape17: TQRShape
        Left = 328
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          619.880952380952400000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRDBText4: TQRDBText
        Left = 762
        Top = 6
        Width = 203
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1440.656250000000000000
          10.583333333333330000
          383.645833333333400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'LoanTypeTitle'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText5: TQRDBText
        Left = 624
        Top = 6
        Width = 129
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          1179.285714285714000000
          11.339285714285710000
          243.794642857142800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'MablaghVam'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 447
        Top = 6
        Width = 54
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          844.776785714285700000
          11.339285714285710000
          102.053571428571400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'TedadAghsat'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 333
        Top = 6
        Width = 108
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          629.330357142857100000
          11.339285714285710000
          204.107142857142800000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'MablaghYekGhest'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText8: TQRDBText
        Left = 256
        Top = 6
        Width = 72
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          483.809523809523800000
          11.339285714285710000
          136.071428571428600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'tedadAghsatPardakhtShode'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Left = 969
        Top = 6
        Width = 33
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.656250000000000000
          1830.916666666667000000
          11.906250000000000000
          62.177083333333340000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object qrshp2: TQRShape
        Left = 249
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          470.580357142857200000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object qrdbtxtmandehVam: TQRDBText
        Left = 505
        Top = 6
        Width = 113
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          954.389880952380900000
          11.339285714285710000
          213.556547619047600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'TotalIntrestAmount'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape39: TQRShape
        Left = 126
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          238.125000000000000000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRDBText10: TQRDBText
        Left = 129
        Top = 6
        Width = 120
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          243.794642857142800000
          11.339285714285710000
          226.785714285714300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'JamePardakhti'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 4
        Top = 6
        Width = 122
        Height = 22
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.577380952380950000
          7.559523809523811000
          11.339285714285710000
          230.565476190476200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Report_LoanPerAccount
        DataField = 'TotalMandehVam'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object SummaryBand1: TQRBand
      Left = 53
      Top = 360
      Width = 1005
      Height = 34
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
        64.255952380952380000
        1899.330357142857000000)
      BandType = rbSummary
      object QRShape43: TQRShape
        Left = 0
        Top = 1
        Width = 1006
        Height = 33
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Style = psClear
        Size.Values = (
          62.366071428571420000
          0.000000000000000000
          1.889880952380953000
          1901.220238095238000000)
        Shape = qrsRectangle
      end
      object QRShape20: TQRShape
        Left = 967
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          1827.514880952381000000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape21: TQRShape
        Left = 756
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.132575757575770000
          1428.750000000000000000
          0.000000000000000000
          4.810606060606061000)
        Shape = qrsVertLine
      end
      object QRShape22: TQRShape
        Left = 619
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          1169.836309523810000000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape23: TQRShape
        Left = 501
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          946.830357142857100000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape24: TQRShape
        Left = 442
        Top = 2
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          835.327380952381100000
          3.779761904761905000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape25: TQRShape
        Left = 328
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          619.880952380952400000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRLabel15: TQRLabel
        Left = 774
        Top = 6
        Width = 27
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761900000
          1462.767857142857000000
          11.339285714285710000
          51.026785714285710000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = #1580#1605#1593
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape27: TQRShape
        Left = 0
        Top = -2
        Width = 1005
        Height = 4
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.349537037037038000
          0.000000000000000000
          -2.939814814814815000
          1899.120370370371000000)
        Shape = qrsHorLine
      end
      object qrshp3: TQRShape
        Left = 249
        Top = 0
        Width = 3
        Height = 32
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          60.476190476190480000
          470.580357142857200000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object QRShape40: TQRShape
        Left = 126
        Top = 0
        Width = 3
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          64.255952380952380000
          238.125000000000000000
          0.000000000000000000
          5.669642857142857000)
        Shape = qrsVertLine
      end
      object Sum1: TQRLabel
        Left = 623
        Top = 7
        Width = 132
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          1177.395833333333000000
          13.229166666666670000
          249.464285714285700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum2: TQRLabel
        Left = 504
        Top = 7
        Width = 115
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          952.500000000000000000
          13.229166666666670000
          217.336309523809500000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum3: TQRLabel
        Left = 447
        Top = 7
        Width = 53
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          844.776785714285700000
          13.229166666666670000
          100.163690476190500000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum4: TQRLabel
        Left = 334
        Top = 7
        Width = 107
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          631.220238095238000000
          13.229166666666670000
          202.217261904761900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum5: TQRLabel
        Left = 255
        Top = 7
        Width = 72
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          481.919642857142900000
          13.229166666666670000
          136.071428571428600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum7: TQRLabel
        Left = 132
        Top = 7
        Width = 116
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          249.464285714285700000
          13.229166666666670000
          219.226190476190500000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
      object Sum8: TQRLabel
        Left = 4
        Top = 7
        Width = 122
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          43.467261904761910000
          7.559523809523811000
          13.229166666666670000
          230.565476190476200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sum1'
        Color = clWhite
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
    object TitleBand1: TQRBand
      Left = 53
      Top = 53
      Width = 1005
      Height = 111
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        209.776785714285700000
        1899.330357142857000000)
      BandType = rbTitle
      object QRShape41: TQRShape
        Left = 0
        Top = 0
        Width = 1006
        Height = 111
        Frame.Color = clWhite
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          209.776785714285700000
          0.000000000000000000
          0.000000000000000000
          1901.220238095238000000)
        Shape = qrsRectangle
      end
      object CashLogo1: TQRImage
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
          5.669642857142857000
          5.669642857142857000
          185.208333333333300000)
        Stretch = True
      end
      object QRLblSoftTitle: TQRLabel
        Left = 243
        Top = 13
        Width = 518
        Height = 42
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          79.375000000000000000
          459.241071428571400000
          24.568452380952380000
          978.958333333333300000)
        Alignment = taCenter
        AlignToBand = True
        AutoSize = False
        AutoStretch = False
        Caption = ' '
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
    end
  end
  inherited ahmadvand: TActionList
    Left = 29
    Top = 27
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 31
    Top = 84
  end
  object Report_LoanPerAccount: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Report_LoanPerAccount'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AccountID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end
      item
        Name = '@SelAll'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 240
    Top = 48
    object Report_LoanPerAccountAccountID: TIntegerField
      FieldName = 'AccountID'
    end
    object Report_LoanPerAccountAccountTitle: TWideStringField
      FieldName = 'AccountTitle'
      Size = 100
    end
    object Report_LoanPerAccountAccountNo: TStringField
      FieldName = 'AccountNo'
    end
    object Report_LoanPerAccountAccountDate: TStringField
      FieldName = 'AccountDate'
      FixedChar = True
      Size = 10
    end
    object Report_LoanPerAccountLoanTypeTitle: TWideStringField
      FieldName = 'LoanTypeTitle'
      Size = 50
    end
    object Report_LoanPerAccountTedadAghsat: TIntegerField
      FieldName = 'TedadAghsat'
      ReadOnly = True
    end
    object Report_LoanPerAccounttedadAghsatPardakhtShode: TIntegerField
      FieldName = 'tedadAghsatPardakhtShode'
      ReadOnly = True
    end
    object Report_LoanPerAccountTOTALEXIST: TLargeintField
      FieldName = 'TOTALEXIST'
      ReadOnly = True
      DisplayFormat = '##0,'
    end
    object Report_LoanPerAccountIntrestAmount: TIntegerField
      FieldName = 'TotalIntrestAmount'
      DisplayFormat = '##0,'
    end
    object Report_LoanPerAccountPaidIntrestAmount: TIntegerField
      FieldName = 'PaidIntrestAmount'
      DisplayFormat = '##0,'
    end
    object Report_LoanPerAccountMablaghVam: TLargeintField
      FieldName = 'MablaghVam'
      ReadOnly = True
    end
    object Report_LoanPerAccountMablaghYekGhest: TLargeintField
      FieldName = 'MablaghYekGhest'
      ReadOnly = True
    end
    object Report_LoanPerAccountAghsatPardakhti: TLargeintField
      FieldName = 'AghsatPardakhti'
      ReadOnly = True
    end
    object Report_LoanPerAccountmandehVam: TLargeintField
      FieldName = 'mandehVam'
      ReadOnly = True
    end
    object Report_LoanPerAccountTotalMandehVam: TLargeintField
      FieldName = 'TotalMandehVam'
      ReadOnly = True
    end
    object Report_LoanPerAccountJamePardakhti: TLargeintField
      FieldName = 'JamePardakhti'
      ReadOnly = True
    end
  end
  object DReport_LoanPerAccount: TDataSource
    DataSet = Report_LoanPerAccount
    Left = 112
    Top = 48
  end
end
