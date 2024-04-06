object Fqr32: TFqr32
  Tag = 204
  Left = 240
  Top = 191
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1705#1575#1585#1578' '#1608#1585#1608#1583' '#1576#1607' '#1575#1605#1578#1581#1575#1606
  ClientHeight = 291
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Tag = 1
    Left = 0
    Top = 0
    Width = 551
    Height = 73
    Align = alTop
    BevelInner = bvLowered
    Caption = ' '
    ParentColor = True
    TabOrder = 0
    object Label6: TLabel
      Tag = 2
      Left = 434
      Top = 17
      Width = 50
      Height = 13
      Caption = #1603#1583' '#1606#1610#1605#1587#1575#1604
    end
    object Label5: TLabel
      Tag = 3
      Left = 435
      Top = 41
      Width = 80
      Height = 13
      Caption = ':'#1578#1575#1585#1610#1582' '#1578#1607#1610#1607' '#1711#1586#1575#1585#1588
    end
    object TermEdit: TMaskEdit
      Tag = 6
      Left = 390
      Top = 14
      Width = 37
      Height = 21
      TabStop = False
      TabOrder = 0
      Text = '791'
    end
    object DateEdit: TShamsiDateEdit
      Tag = 7
      Left = 348
      Top = 38
      Width = 79
      Height = 21
      TabStop = False
      MaxLength = 10
      ReadOnly = True
      TabOrder = 1
      Text = '1/1/1'#0
    end
    object GroupPrint: TCheckBox
      Left = 55
      Top = 48
      Width = 86
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1670#1575#1662' '#1711#1585#1608#1607' '#1583#1585#1587
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 2
    end
    object GroupBox1: TGroupBox
      Left = 144
      Top = 15
      Width = 201
      Height = 46
      BiDiMode = bdRightToLeft
      Caption = #1575#1576#1593#1575#1583' '#1593#1705#1587' '#1583#1575#1606#1588#1580#1608
      ParentBiDiMode = False
      TabOrder = 3
      object Label8: TLabel
        Left = 165
        Top = 22
        Width = 19
        Height = 13
        Caption = #1591#1608#1604
      end
      object Label9: TLabel
        Left = 71
        Top = 22
        Width = 25
        Height = 13
        Caption = #1593#1585#1590
      end
      object seHeight: TSpinEdit
        Tag = 8
        Left = 101
        Top = 18
        Width = 57
        Height = 22
        MaxValue = 200
        MinValue = 0
        TabOrder = 0
        Value = 75
      end
      object seWidth: TSpinEdit
        Tag = 9
        Left = 9
        Top = 18
        Width = 57
        Height = 22
        MaxValue = 200
        MinValue = 0
        TabOrder = 1
        Value = 65
      end
    end
    object Chk_Place: TCheckBox
      Left = 46
      Top = 18
      Width = 95
      Height = 17
      Alignment = taLeftJustify
      BiDiMode = bdLeftToRight
      Caption = #1670#1575#1662' '#1605#1581#1604' '#1575#1605#1578#1581#1575#1606
      ParentBiDiMode = False
      TabOrder = 4
    end
    object cbPrintPic: TCheckBox
      Tag = 140
      Left = 58
      Top = 32
      Width = 83
      Height = 17
      BiDiMode = bdRightToLeft
      Caption = #1670#1575#1662' '#1593#1705#1587
      Checked = True
      ParentBiDiMode = False
      State = cbChecked
      TabOrder = 5
    end
  end
  object BitBtn4: TxpBitBtn
    Tag = 11
    Left = 78
    Top = 256
    Width = 114
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = 'Esc '#1582#1585#1608#1580
    Font.Charset = ARABIC_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Glyph.Data = {
      9E060000424D9E0600000000000036040000280000001A000000160000000100
      080000000000680200000000000000000000000100000001000000000000E3E3
      E300FFFF00009999000099999900FFFFFF00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000040404040404
      0404040404040404040404040404040404040404000005010101010101010101
      0101010101010101010101010101010400000501010101010101010100000101
      0101010101010101010101040000050101010101010101000400010101010101
      0101010101010104000005010101000000000004040000000000000000000001
      0101010400000501010101010100040404000303030303000101010101010104
      0000050101010101010004040400020302030300010101010101010400000501
      0101010101000404040003020302030001010101010101040000050101010101
      0100040400000203030203000101010101010104000005010101010101000404
      0000020202030200010101010101010400000501010101010100040404000202
      0202020001010101010101040000050101010101010004040400020203020300
      0101010101010104000005010101010101000404040002020202020001010101
      0101010400000501010101010100040404000202020302000101010101010104
      0000050101010101010004040400020202020200010101010101010400000501
      0101010101000404000202020202020001010101010101040000050101010101
      0100040002020202020202000101010101010104000005010101010101000002
      0202020202020200010101010101010400000501010101010100000000000000
      0000000001010101010101040000050101010101010101010101010101010101
      0101010101010104000005010101010101010101010101010101010101010101
      0101010400000505050505050505050505050505050505050505050505050504
      0000}
    Gradient = True
    TabOrder = 3
    TabStop = True
    ModalResult = 2
    OnClick = BitBtn4Click
  end
  object BitBtn1: TxpBitBtn
    Tag = 12
    Left = 201
    Top = 256
    Width = 114
    Height = 35
    startColor = 16645629
    EndColor = 14666957
    Caption = 'F9  '#1670#1575#1662
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
    OnClick = BitBtn1Click
  end
  object BitBtn3: TxpBitBtn
    Tag = 13
    Left = 324
    Top = 256
    Width = 114
    Height = 35
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
  end
  object QuickRep1: TQuickRep
    Tag = 14
    Left = 38
    Top = 382
    Width = 952
    Height = 1347
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    BeforePrint = QuickRep1BeforePrint
    DataSet = Student_For_ExamCard
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Koodak'
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
      50.000000000000000000
      2970.000000000000000000
      50.000000000000000000
      2100.000000000000000000
      50.000000000000000000
      50.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = First
    PrintIfEmpty = False
    SnapToGrid = True
    Units = MM
    Zoom = 120
    object DetailBand1: TQRBand
      Tag = 15
      Left = 23
      Top = 23
      Width = 453
      Height = 595
      Frame.Color = clBlack
      Frame.DrawTop = True
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      BeforePrint = DetailBand1BeforePrint
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Koodak'
      Font.Style = []
      ForceNewColumn = False
      ForceNewPage = False
      ParentFont = False
      Size.Values = (
        1311.892361111111000000
        998.802083333333300000)
      BandType = rbDetail
      object QRDBText11: TQRDBText
        Tag = 16
        Left = 21
        Top = 515
        Width = 54
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          46.302083333333340000
          1135.503472222222000000
          119.062500000000000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'Totalavg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape2: TQRShape
        Tag = 17
        Left = 1
        Top = 83
        Width = 428
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          158.750000000000000000
          2.204861111111110000
          183.003472222222000000
          943.680555555556000000)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object Head: TQRShape
        Tag = 18
        Left = 0
        Top = 155
        Width = 428
        Height = 30
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          66.145833333333300000
          0.000000000000000000
          341.753472222222000000
          943.680555555556000000)
        Brush.Color = 15921906
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel1: TQRLabel
        Left = 349
        Top = 86
        Width = 67
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111100000
          769.496527777778000000
          189.618055555556000000
          147.725694444444000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '#1588#1605#1575#1585#1607' '#1583#1575#1606#1588#1580#1608#1610#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel2: TQRLabel
        Left = 349
        Top = 108
        Width = 70
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111100000
          769.496527777778000000
          238.125000000000000000
          154.340277777778000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '#1606#1575#1605' '#1582#1575#1606#1608#1575#1583#1711#1610' '#1608' '#1606#1575#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel4: TQRLabel
        Left = 349
        Top = 131
        Width = 64
        Height = 21
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          46.302083333333300000
          769.496527777778000000
          288.836805555556000000
          141.111111111111000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '#1585#1588#1578#1607' '#1578#1581#1589#1610#1604#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Mitra'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRDBText1: TQRDBText
        Tag = 22
        Left = 247
        Top = 86
        Width = 97
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555600000
          544.600694444444000000
          189.618055555556000000
          213.871527777778000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'STNO'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Tag = 23
        Left = 127
        Top = 108
        Width = 219
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555600000
          280.017361111111000000
          238.125000000000000000
          482.864583333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'NAME'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Tag = 24
        Left = 106
        Top = 131
        Width = 240
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555600000
          233.715277777778000000
          288.836805555556000000
          529.166666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'Reshteh_Title'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel8: TQRLabel
        Tag = 25
        Left = 225
        Top = 58
        Width = 194
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          496.093750000000000000
          127.881944444444500000
          427.743055555555600000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1575#1583#1575#1585#1607' '#1603#1600#1604' '#1575#1605#1600#1608#1585#1570#1605#1608#1586#1588#1600#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Tag = 26
        Left = 152
        Top = 33
        Width = 269
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          335.138888888888900000
          72.760416666666680000
          593.107638888889000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1606#1575#1605' '#1583#1575#1606#1588#1705#1575#1607
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape3: TQRShape
        Tag = 27
        Left = 0
        Top = 184
        Width = 428
        Height = 35
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          77.170138888888900000
          0.000000000000000000
          405.694444444444000000
          943.680555555556000000)
        Brush.Color = 14540253
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel10: TQRLabel
        Tag = 28
        Left = 114
        Top = 3
        Width = 178
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          251.354166666666700000
          6.614583333333332000
          392.465277777777900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1603#1575#1585#1578' '#1580#1604#1587#1607' '#1575#1605#1578#1581#1575#1606' '#1662#1575#1610#1575#1606' '#1578#1585#1605
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Titr'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel11: TQRLabel
        Left = 316
        Top = 159
        Width = 89
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555560000
          696.736111111111200000
          350.572916666666700000
          196.232638888888900000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '#1606#1610#1605#1587#1575#1604' '#1578#1581#1589#1610#1604#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel12: TQRLabel
        Tag = 30
        Left = 404
        Top = 192
        Width = 23
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          41.892361111111100000
          890.763888888889000000
          423.333333333333000000
          50.711805555555600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel13: TQRLabel
        Tag = 31
        Left = 233
        Top = 194
        Width = 78
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          513.732638888889000000
          427.743055555556000000
          171.979166666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1606#1600#1600#1600#1600#1600#1575#1605' '#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel14: TQRLabel
        Tag = 32
        Left = 110
        Top = 194
        Width = 70
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          242.534722222222000000
          427.743055555556000000
          154.340277777778000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1606#1575#1605' '#1575#1587#1578#1575#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel15: TQRLabel
        Tag = 33
        Left = 53
        Top = 194
        Width = 32
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          116.857638888889000000
          427.743055555556000000
          70.555555555555600000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1578#1575#1585#1610#1582' '#1575#1605#1578#1581#1575#1606
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel16: TQRLabel
        Tag = 34
        Left = 3
        Top = 194
        Width = 29
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          6.614583333333330000
          427.743055555556000000
          63.940972222222200000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1587#1575#1593#1578
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape6: TQRShape
        Tag = 35
        Left = 195
        Top = 184
        Width = 2
        Height = 333
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          734.218750000000000000
          429.947916666667000000
          405.694444444444000000
          4.409722222222220000)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape7: TQRShape
        Tag = 36
        Left = 99
        Top = 184
        Width = 2
        Height = 333
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          734.218750000000000000
          218.281250000000000000
          405.694444444444000000
          4.409722222222220000)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRShape8: TQRShape
        Tag = 37
        Left = 35
        Top = 184
        Width = 2
        Height = 333
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          734.218750000000000000
          77.170138888888900000
          405.694444444444000000
          4.409722222222220000)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel17: TQRLabel
        Tag = 38
        Left = 405
        Top = 220
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          485.069444444444000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '1'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel18: TQRLabel
        Tag = 39
        Left = 405
        Top = 241
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          531.371527777778000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '2'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel19: TQRLabel
        Tag = 40
        Left = 405
        Top = 262
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          577.673611111111000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '3'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel23: TQRLabel
        Tag = 41
        Left = 405
        Top = 283
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          623.975694444444000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '4'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel24: TQRLabel
        Tag = 42
        Left = 405
        Top = 304
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          670.277777777778000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '5'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel25: TQRLabel
        Tag = 43
        Left = 405
        Top = 325
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          716.579861111111000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '6'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel20: TQRLabel
        Tag = 44
        Left = 405
        Top = 346
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          762.881944444444000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '7'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel21: TQRLabel
        Tag = 45
        Left = 405
        Top = 368
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          811.388888888889000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '8'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel22: TQRLabel
        Tag = 46
        Left = 405
        Top = 389
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          857.690972222222000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '9'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel26: TQRLabel
        Tag = 47
        Left = 405
        Top = 410
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          903.993055555556000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '10'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel27: TQRLabel
        Tag = 48
        Left = 405
        Top = 431
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          950.295138888889000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '11'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel28: TQRLabel
        Tag = 49
        Left = 405
        Top = 452
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          996.597222222222000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '12'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel29: TQRLabel
        Tag = 50
        Left = 405
        Top = 473
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          1042.899305555560000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '13'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRLabel30: TQRLabel
        Tag = 51
        Left = 405
        Top = 494
        Width = 22
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          892.968750000000000000
          1089.201388888890000000
          48.506944444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '14'
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape9: TQRShape
        Tag = 52
        Left = 0
        Top = 514
        Width = 427
        Height = 2
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          4.409722222222220000
          0.000000000000000000
          1133.298611111110000000
          941.475694444444000000)
        Pen.Width = 2
        Shape = qrsHorLine
      end
      object QRLabel31: TQRLabel
        Tag = 53
        Left = 262
        Top = 540
        Width = 161
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          577.673611111111100000
          1190.625000000000000000
          354.982638888888900000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ': '#1578#1593#1583#1575#1583' '#1603#1604' '#1608#1575#1581#1583' '#1711#1584#1585#1575#1606#1610#1583#1607' '#1578#1575' '#1576#1607' '#1581#1575#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel32: TQRLabel
        Tag = 54
        Left = 80
        Top = 516
        Width = 77
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          176.388888888888900000
          1137.708333333333000000
          169.774305555555600000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ': '#1605#1593#1600#1600#1583#1604' '#1603#1600#1600#1600#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object QRLabel35: TQRLabel
        Tag = 55
        Left = 3
        Top = 559
        Width = 195
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555560000
          6.614583333333332000
          1232.517361111111000000
          429.947916666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1583#1585' '#1662#1575#1610#1575#1606' '#1575#1605#1578#1581#1575#1606#1575#1578' '#1575#1610#1606' '#1603#1575#1585#1578' '#1576#1575#1610#1583' '#1605#1587#1578#1585#1583' '#1711#1585#1583#1583'.'
        Color = clWhite
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
      object QRLabel37: TQRLabel
        Tag = 56
        Left = 338
        Top = 194
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          745.243055555556000000
          427.743055555556000000
          132.291666666667000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = #1588#1605#1575#1585#1607' '#1583#1585#1587
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Traffic'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 7
      end
      object QRShape10: TQRShape
        Tag = 57
        Left = 333
        Top = 184
        Width = 2
        Height = 333
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          734.218750000000000000
          734.218750000000000000
          405.694444444444000000
          4.409722222222220000)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object Rdate: TQRLabel
        Tag = 58
        Left = 5
        Top = 130
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          11.024305555555600000
          286.631944444444000000
          147.725694444444000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
      object QRLabel39: TQRLabel
        Tag = 59
        Left = 260
        Top = 516
        Width = 163
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          573.263888888888900000
          1137.708333333333000000
          359.392361111111100000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ': '#1578#1600#1593#1583#1575#1583' '#1608#1575#1581#1583' '#1575#1582#1584' '#1588#1583#1607' '#1606#1610#1605#1600#1600#1600#1600#1587#1575#1604
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = []
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object Lc1: TQRLabel
        Tag = 60
        Left = 335
        Top = 220
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          485.069444444444000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc2: TQRLabel
        Tag = 61
        Left = 335
        Top = 241
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          531.371527777778000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc3: TQRLabel
        Tag = 62
        Left = 335
        Top = 262
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          577.673611111111000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc4: TQRLabel
        Tag = 63
        Left = 335
        Top = 283
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          623.975694444444000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc5: TQRLabel
        Tag = 64
        Left = 335
        Top = 304
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          670.277777777778000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc6: TQRLabel
        Tag = 65
        Left = 335
        Top = 325
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          716.579861111111000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc7: TQRLabel
        Tag = 66
        Left = 335
        Top = 346
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          762.881944444444000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc8: TQRLabel
        Tag = 67
        Left = 335
        Top = 368
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          811.388888888889000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc9: TQRLabel
        Tag = 68
        Left = 335
        Top = 389
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          857.690972222222000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc10: TQRLabel
        Tag = 69
        Left = 335
        Top = 410
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          903.993055555556000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc11: TQRLabel
        Tag = 70
        Left = 335
        Top = 431
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          950.295138888889000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc12: TQRLabel
        Tag = 71
        Left = 335
        Top = 452
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          996.597222222222000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc13: TQRLabel
        Tag = 72
        Left = 335
        Top = 473
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          1042.899305555560000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lc14: TQRLabel
        Tag = 73
        Left = 335
        Top = 494
        Width = 66
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          738.628472222222000000
          1089.201388888890000000
          145.520833333333000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ln1: TQRLabel
        Tag = 74
        Left = 197
        Top = 220
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          485.069444444444000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln2: TQRLabel
        Tag = 75
        Left = 197
        Top = 241
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          531.371527777778000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln3: TQRLabel
        Tag = 76
        Left = 197
        Top = 262
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          577.673611111111000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln4: TQRLabel
        Tag = 77
        Left = 197
        Top = 283
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          623.975694444444000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln5: TQRLabel
        Tag = 78
        Left = 197
        Top = 304
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          670.277777777778000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln6: TQRLabel
        Tag = 79
        Left = 197
        Top = 325
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          716.579861111111000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln7: TQRLabel
        Tag = 80
        Left = 197
        Top = 346
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          762.881944444444000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln8: TQRLabel
        Tag = 81
        Left = 197
        Top = 368
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          811.388888888889000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln9: TQRLabel
        Tag = 82
        Left = 197
        Top = 389
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          857.690972222222000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln10: TQRLabel
        Tag = 83
        Left = 197
        Top = 410
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          903.993055555556000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln11: TQRLabel
        Tag = 84
        Left = 197
        Top = 431
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          950.295138888889000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln12: TQRLabel
        Tag = 85
        Left = 197
        Top = 452
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          996.597222222222000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln13: TQRLabel
        Tag = 86
        Left = 197
        Top = 473
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          1042.899305555560000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ln14: TQRLabel
        Tag = 87
        Left = 197
        Top = 494
        Width = 135
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          434.357638888889000000
          1089.201388888890000000
          297.656250000000000000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu1: TQRLabel
        Tag = 88
        Left = 102
        Top = 220
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          485.069444444444000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu2: TQRLabel
        Tag = 89
        Left = 102
        Top = 241
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          531.371527777778000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu3: TQRLabel
        Tag = 90
        Left = 102
        Top = 262
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          577.673611111111000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu4: TQRLabel
        Tag = 91
        Left = 102
        Top = 283
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          623.975694444444000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu5: TQRLabel
        Tag = 92
        Left = 102
        Top = 304
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          670.277777777778000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu6: TQRLabel
        Tag = 93
        Left = 102
        Top = 325
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          716.579861111111000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu7: TQRLabel
        Tag = 94
        Left = 102
        Top = 346
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          762.881944444444000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu8: TQRLabel
        Tag = 95
        Left = 102
        Top = 368
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          811.388888888889000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu9: TQRLabel
        Tag = 96
        Left = 102
        Top = 389
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          857.690972222222000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu10: TQRLabel
        Tag = 97
        Left = 102
        Top = 410
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          903.993055555556000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu11: TQRLabel
        Tag = 98
        Left = 102
        Top = 431
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          950.295138888889000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu12: TQRLabel
        Tag = 99
        Left = 102
        Top = 452
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          996.597222222222000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu13: TQRLabel
        Tag = 100
        Left = 102
        Top = 473
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          1042.899305555560000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Lu14: TQRLabel
        Tag = 101
        Left = 102
        Top = 494
        Width = 92
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          224.895833333333000000
          1089.201388888890000000
          202.847222222222000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -8
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 6
      end
      object Ls1: TQRLabel
        Tag = 102
        Left = 1
        Top = 220
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          485.069444444444000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls2: TQRLabel
        Tag = 103
        Left = 1
        Top = 241
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          531.371527777778000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls3: TQRLabel
        Tag = 104
        Left = 1
        Top = 262
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          577.673611111111000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls4: TQRLabel
        Tag = 105
        Left = 1
        Top = 283
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          623.975694444444000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls5: TQRLabel
        Tag = 106
        Left = 1
        Top = 304
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          670.277777777778000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls6: TQRLabel
        Tag = 107
        Left = 1
        Top = 325
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          716.579861111111000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls7: TQRLabel
        Tag = 108
        Left = 1
        Top = 346
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          762.881944444444000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls8: TQRLabel
        Tag = 109
        Left = 1
        Top = 368
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          811.388888888889000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls9: TQRLabel
        Tag = 110
        Left = 1
        Top = 389
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          857.690972222222000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls10: TQRLabel
        Tag = 111
        Left = 1
        Top = 410
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          903.993055555556000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls11: TQRLabel
        Tag = 112
        Left = 1
        Top = 431
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          950.295138888889000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls12: TQRLabel
        Tag = 113
        Left = 1
        Top = 452
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          996.597222222222000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls13: TQRLabel
        Tag = 114
        Left = 1
        Top = 473
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          1042.899305555560000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Ls14: TQRLabel
        Tag = 115
        Left = 1
        Top = 494
        Width = 33
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          2.204861111111110000
          1089.201388888890000000
          72.760416666666700000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '       '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText9: TQRDBText
        Tag = 116
        Left = 260
        Top = 157
        Width = 53
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          573.263888888888900000
          346.163194444444500000
          116.857638888888900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'TermCode'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
        WordWrap = True
        FontSize = 9
      end
      object Lm1: TQRLabel
        Tag = 117
        Left = 38
        Top = 220
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          485.069444444444000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm2: TQRLabel
        Tag = 118
        Left = 38
        Top = 241
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          531.371527777778000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm3: TQRLabel
        Tag = 119
        Left = 38
        Top = 262
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          577.673611111111000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm4: TQRLabel
        Tag = 120
        Left = 38
        Top = 283
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          623.975694444444000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm5: TQRLabel
        Tag = 121
        Left = 38
        Top = 304
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          670.277777777778000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm6: TQRLabel
        Tag = 122
        Left = 38
        Top = 325
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          716.579861111111000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm7: TQRLabel
        Tag = 123
        Left = 38
        Top = 346
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          762.881944444444000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm8: TQRLabel
        Tag = 124
        Left = 38
        Top = 368
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          811.388888888889000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm9: TQRLabel
        Tag = 125
        Left = 38
        Top = 389
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          857.690972222222000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm10: TQRLabel
        Tag = 126
        Left = 38
        Top = 410
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          903.993055555556000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm11: TQRLabel
        Tag = 127
        Left = 38
        Top = 431
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          950.295138888889000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm12: TQRLabel
        Tag = 128
        Left = 38
        Top = 452
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          996.597222222222000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm13: TQRLabel
        Tag = 129
        Left = 38
        Top = 473
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          1042.899305555560000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object Lm14: TQRLabel
        Tag = 130
        Left = 38
        Top = 494
        Width = 60
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.097222222222200000
          83.784722222222200000
          1089.201388888890000000
          132.291666666667000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = ' '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Koodak'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRShape5: TQRShape
        Tag = 131
        Left = 402
        Top = 184
        Width = 2
        Height = 334
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          736.423611111111000000
          886.354166666667000000
          405.694444444444000000
          4.409722222222220000)
        Pen.Width = 2
        Shape = qrsVertLine
      end
      object QRLabel38: TQRLabel
        Tag = 132
        Left = 75
        Top = 106
        Width = 40
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          165.364583333333000000
          233.715277777778000000
          88.194444444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = ': '#1585#1583#1610#1601
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRSysData1: TQRSysData
        Tag = 133
        Left = 4
        Top = 106
        Width = 67
        Height = 24
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666700000
          8.819444444444440000
          233.715277777778000000
          147.725694444444000000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        Color = clWhite
        Data = qrsDetailNo
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        FontSize = 9
      end
      object QRLabel43: TQRLabel
        Tag = 134
        Left = 235
        Top = 559
        Width = 188
        Height = 23
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.711805555555560000
          518.142361111111200000
          1232.517361111111000000
          414.513888888888900000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '.'#1576#1583#1608#1606' '#1605#1607#1585' '#1608' '#1575#1605#1590#1575' '#1601#1575#1602#1583' '#1575#1585#1586#1588' '#1605#1610' '#1576#1575#1588#1583
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object TermSUnit: TQRDBText
        Tag = 135
        Left = 201
        Top = 516
        Width = 49
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          443.177083333333300000
          1137.708333333333000000
          108.038194444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = Student_For_ExamCard
        DataField = 'TermSUnit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object lbPassedBefore: TQRLabel
        Tag = 136
        Left = 201
        Top = 538
        Width = 49
        Height = 26
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          57.326388888888900000
          443.177083333333300000
          1186.215277777778000000
          108.038194444444400000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'lbPassedBefore'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Koodak'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel3: TQRLabel
        Tag = -1
        Left = 3
        Top = 158
        Width = 134
        Height = 24
        Enabled = False
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          6.614583333333332000
          348.368055555555600000
          295.451388888888900000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        BiDiMode = bdRightToLeft
        ParentBiDiMode = False
        Caption = #1581#1584#1601' '#1605#1575#1604#1610
        Color = clWhite
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Nazanin'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object qrPic: TQRImage
        Left = 7
        Top = 6
        Width = 65
        Height = 72
        Frame.Color = clBlack
        Frame.DrawTop = True
        Frame.DrawBottom = True
        Frame.DrawLeft = True
        Frame.DrawRight = True
        Size.Values = (
          158.750000000000000000
          15.434027777777780000
          13.229166666666670000
          143.315972222222200000)
        Stretch = True
      end
    end
    object ChildBand1: TQRChildBand
      Tag = 138
      Left = 23
      Top = 618
      Width = 453
      Height = 9
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
        19.843750000000000000
        998.802083333333300000)
      ParentBand = DetailBand1
      object QRShape4: TQRShape
        Tag = 139
        Left = 1
        Top = 3
        Width = 859
        Height = 1
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          2.204861111111111000
          2.204861111111111000
          6.614583333333333000
          1893.975694444445000000)
        Pen.Style = psDot
        Shape = qrsHorLine
      end
    end
  end
  object MainMenu1: TMainMenu
    Tag = 141
    Left = 619
    Top = 181
    object N1: TMenuItem
      Tag = 142
      Caption = #1601#1585#1605
      Visible = False
      object N2: TMenuItem
        Tag = 143
        Caption = #1582#1585#1608#1580
        ShortCut = 27
        OnClick = N2Click
      end
    end
    object N3: TMenuItem
      Tag = 144
      Caption = #1711#1586#1575#1585#1588
      Visible = False
      object N4: TMenuItem
        Tag = 145
        Caption = #1662#1610#1588' '#1606#1605#1575#1610#1588
        ShortCut = 116
      end
      object N5: TMenuItem
        Tag = 146
        Caption = #1670#1575#1662
        ShortCut = 120
        OnClick = BitBtn1Click
      end
    end
  end
  object Student_For_ExamCard: TADOStoredProc
    Tag = 147
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    CommandTimeout = 7200
    ProcedureName = 'Student_For_ExamCard;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@termcode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 7
        Value = '852'
      end
      item
        Name = '@where'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2047
        Value = '(mi.stno = '#39'841156'#39')'
      end
      item
        Name = '@order'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 2047
        Value = Null
      end
      item
        Name = '@MaliCheck'
        Attributes = [paNullable]
        DataType = ftBoolean
        Value = False
      end>
    Left = 195
    Top = 140
    object Student_For_ExamCardstno: TStringField
      Tag = 148
      FieldName = 'stno'
      Size = 15
    end
    object Student_For_ExamCardtermcode: TStringField
      Tag = 149
      FieldName = 'termcode'
      Size = 3
    end
    object Student_For_ExamCardStTermStatus_Title: TStringField
      Tag = 150
      FieldName = 'StTermStatus_Title'
      Size = 30
    end
    object Student_For_ExamCardsusStatus: TIntegerField
      Tag = 151
      FieldName = 'susStatus'
    end
    object Student_For_ExamCardName: TStringField
      Tag = 152
      FieldName = 'Name'
      Size = 30
    end
    object Student_For_ExamCardDaneshkadeh_Title: TStringField
      Tag = 153
      FieldName = 'Daneshkadeh_Title'
      Size = 40
    end
    object Student_For_ExamCardReshteh_Title: TStringField
      Tag = 154
      FieldName = 'Reshteh_Title'
      Size = 60
    end
    object Student_For_ExamCardMaghta_Title: TStringField
      Tag = 155
      FieldName = 'Maghta_Title'
      Size = 30
    end
    object Student_For_ExamCardSahmN_Title: TStringField
      Tag = 156
      FieldName = 'SahmN_Title'
      Size = 40
    end
    object Student_For_ExamCardDon_Title: TStringField
      Tag = 157
      FieldName = 'Don_Title'
      Size = 40
    end
    object Student_For_ExamCardisActive: TIntegerField
      Tag = 158
      FieldName = 'isActive'
    end
    object Student_For_ExamCardCourseType_Title: TStringField
      Tag = 159
      FieldName = 'CourseType_Title'
      Size = 40
    end
    object Student_For_ExamCardPUnitCount: TFloatField
      Tag = 160
      FieldName = 'PUnitCount'
    end
    object Student_For_ExamCardMPMark: TIntegerField
      Tag = 161
      FieldName = 'MPMark'
    end
    object Student_For_ExamCardTermPUnit: TFloatField
      Tag = 162
      FieldName = 'TermPUnit'
    end
    object Student_For_ExamCardTermSUnit: TFloatField
      Tag = 163
      FieldName = 'TermSUnit'
    end
    object Student_For_ExamCardTermAvg: TBCDField
      Tag = 164
      FieldName = 'TermAvg'
      Precision = 10
      Size = 2
    end
    object Student_For_ExamCardTotalAvg: TBCDField
      Tag = 165
      FieldName = 'TotalAvg'
      Precision = 10
      Size = 2
    end
    object Student_For_ExamCardPic: TBlobField
      Tag = 166
      FieldName = 'Pic'
    end
    object Student_For_ExamCardMaliStat: TBooleanField
      FieldName = 'MaliStat'
      ReadOnly = True
    end
    object Student_For_ExamCardTbMaliStatTitle: TStringField
      DisplayWidth = 4000
      FieldName = 'TbMaliStatTitle'
      ReadOnly = True
      Size = 4000
    end
  end
  object cmPassedUnitsBefore: TADOCommand
    Tag = 167
    CommandText = 'sp_UnitCalc;7'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Stno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = Null
      end
      item
        Name = '@TermCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@Result'
        Attributes = [paNullable]
        DataType = ftFloat
        Direction = pdInputOutput
        Precision = 15
        Value = Null
      end>
    Left = 264
    Top = 109
  end
  object cmReshteAvg: TADOCommand
    Tag = 168
    CommandText = 'sp_ReshteAvg;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = 'RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@Stno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 10
        Value = ''
      end
      item
        Name = '@TermCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = ''
      end
      item
        Name = '@Result'
        Attributes = [paNullable]
        DataType = ftFloat
        Direction = pdInputOutput
        Value = 0.000000000000000000
      end>
    Left = 306
    Top = 111
  end
  object Sp_Report_Kart: TADOStoredProc
    CursorType = ctStatic
    ProcedureName = 'uSp_Report_Kart;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@AGrp'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@ATermCode'
        Attributes = [paNullable]
        DataType = ftString
        Size = 3
        Value = Null
      end
      item
        Name = '@AStNo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 50
        Value = Null
      end>
    Left = 114
    Top = 130
    object Sp_Report_KartLessonCode: TStringField
      FieldName = 'LessonCode'
      Size = 12
    end
    object Sp_Report_KartStNo: TStringField
      FieldName = 'StNo'
      Size = 15
    end
    object Sp_Report_KartLessonName: TStringField
      FieldName = 'LessonName'
      ReadOnly = True
      Size = 72
    end
    object Sp_Report_KartTeacherName: TStringField
      FieldName = 'TeacherName'
      Size = 40
    end
    object Sp_Report_KartExamTime: TStringField
      FieldName = 'ExamTime'
      Size = 10
    end
    object Sp_Report_KartExamDate: TStringField
      FieldName = 'ExamDate'
      Size = 10
    end
    object Sp_Report_KartPalce: TStringField
      FieldName = 'Palce'
    end
  end
end
