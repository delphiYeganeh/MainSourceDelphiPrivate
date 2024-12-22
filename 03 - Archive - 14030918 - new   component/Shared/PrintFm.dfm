inherited FmPrint: TFmPrint
  Left = 492
  Top = 271
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1601#1585#1605' '#1670#1575#1662' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 451
  ClientWidth = 437
  Constraints.MaxHeight = 490
  Constraints.MaxWidth = 453
  Constraints.MinHeight = 485
  Constraints.MinWidth = 445
  OldCreateOrder = True
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 0
    Width = 437
    Height = 410
    Align = alClient
    TabOrder = 0
    DesignSize = (
      437
      410)
    object SpeedButton1: TSpeedButton
      Left = 327
      Top = 15
      Width = 103
      Height = 28
      Hint = #1575#1606#1589#1585#1575#1601' '#1575#1586' '#1670#1575#1662
      Caption = #1575#1606#1578#1582#1575#1576' '#1670#1575#1662#1711#1585' '#1608' '#1603#1575#1594#1584
      ParentShowHint = False
      ShowHint = True
      OnClick = SpeedButton1Click
    end
    object GroupBox2: TGroupBox
      Left = 5
      Top = 103
      Width = 425
      Height = 169
      Anchors = [akTop, akRight]
      Caption = '/8'
      TabOrder = 0
      DesignSize = (
        425
        169)
      object Label3: TLabel
        Left = 226
        Top = 86
        Width = 37
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1575' '#1589#1601#1581#1607
      end
      object LblPgCount: TLabel
        Left = 272
        Top = 59
        Width = 31
        Height = 13
        Anchors = [akTop, akRight]
        Caption = '('#1578#1593#1583#1575#1583')'
      end
      object Label4: TLabel
        Left = 16
        Top = 115
        Width = 56
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = '1,3,5 : '#1605#1579#1575#1604
        ParentBiDiMode = False
      end
      object LabelSizeProperty: TLabel
        Left = 234
        Top = 142
        Width = 53
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = ': '#1575#1576#1593#1575#1583' '#1601#1608#1606#1578
        ParentBiDiMode = False
      end
      object LabelColorProperty: TLabel
        Left = 130
        Top = 142
        Width = 51
        Height = 13
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        Caption = ': '#1585#1606#1711' '#1601#1608#1606#1578
        ParentBiDiMode = False
      end
      object RB2: TRadioButton
        Left = 307
        Top = 58
        Width = 105
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1578#1605#1575#1605' '#1589#1601#1581#1575#1578
        TabOrder = 0
      end
      object RB3: TRadioButton
        Left = 328
        Top = 85
        Width = 84
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1575#1586' '#1589#1601#1581#1607
        TabOrder = 1
      end
      object SEStartPg: TSpinEdit
        Left = 272
        Top = 83
        Width = 57
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 500000
        MinValue = 1
        TabOrder = 2
        Value = 1
        OnChange = SEStartPgChange
      end
      object SEEndtPg: TSpinEdit
        Left = 160
        Top = 83
        Width = 57
        Height = 22
        Anchors = [akTop, akRight]
        MaxValue = 500000
        MinValue = 1
        TabOrder = 3
        Value = 1
      end
      object RB4: TRadioButton
        Left = 276
        Top = 112
        Width = 136
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1589#1601#1581#1575#1578' '#1578#1593#1610#1610#1606' '#1588#1583#1607
        TabOrder = 4
      end
      object EdtRandomPage: TEdit
        Left = 76
        Top = 111
        Width = 201
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        TabOrder = 5
        OnEnter = EdtRandomPageEnter
        OnExit = EdtRandomPageExit
        OnKeyPress = EdtRandomPageKeyPress
      end
      object RB1: TRadioButton
        Left = 307
        Top = 32
        Width = 105
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662' '#1589#1601#1581#1607' '#1580#1575#1585#1610
        Checked = True
        TabOrder = 6
        TabStop = True
      end
      object ChBoProperty: TCheckBox
        Left = 296
        Top = 141
        Width = 116
        Height = 17
        Caption = #1670#1575#1662' '#1605#1588#1582#1589#1575#1578' '#1587#1606#1583
        TabOrder = 7
        OnClick = ChBoPropertyClick
      end
      object SEPropertyFont: TSpinEdit
        Left = 190
        Top = 139
        Width = 41
        Height = 22
        MaxLength = 2
        MaxValue = 100
        MinValue = 8
        TabOrder = 8
        Value = 12
      end
      object EdtPropertyColor: TEdit
        Left = 90
        Top = 140
        Width = 38
        Height = 19
        Cursor = crHandPoint
        BevelKind = bkFlat
        Color = -1
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 9
        OnClick = EdtPropertyColorClick
      end
    end
    object RGSize: TRadioGroup
      Left = 6
      Top = 48
      Width = 425
      Height = 49
      Caption = #1575#1576#1593#1575#1583' '#1670#1575#1662' '#1578#1589#1608#1610#1585
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        #1583#1585' '#1575#1576#1593#1575#1583' '#1603#1604' '#1603#1575#1594#1584
        #1583#1585' '#1575#1576#1593#1575#1583' '#1593#1585#1590' '#1603#1575#1594#1584
        #1583#1585' '#1575#1576#1593#1575#1583' '#1608#1575#1602#1593#1610)
      TabOrder = 1
    end
    object DBGrid1: TDBGrid
      Left = 6
      Top = 280
      Width = 424
      Height = 120
      DataSource = DataSource1
      TabOrder = 2
      TitleFont.Charset = ARABIC_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 410
    Width = 437
    Height = 41
    Align = alBottom
    TabOrder = 1
    DesignSize = (
      437
      41)
    object SBPrint: TSpeedButton
      Left = 348
      Top = 7
      Width = 75
      Height = 28
      Anchors = [akTop, akRight]
      Caption = #1670#1575#1662
      OnClick = SBPrintClick
    end
    object SBCancel: TSpeedButton
      Left = 270
      Top = 7
      Width = 75
      Height = 28
      Hint = #1575#1606#1589#1585#1575#1601' '#1575#1586' '#1670#1575#1662
      Caption = #1578#1608#1602#1601' '#1670#1575#1662
      ParentShowHint = False
      ShowHint = True
      OnClick = SBCancelClick
    end
    object SBExit: TSpeedButton
      Left = 9
      Top = 7
      Width = 75
      Height = 28
      Caption = #1582#1585#1608#1580
      Glyph.Data = {
        86050000424D8605000000000000360000002800000016000000140000000100
        18000000000050050000120B0000120B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF89899E7D7D8FB5B591E8E8
        D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF61607B00004803
        04713F3F6D8B8B82DDDDD5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        6464780A0B840000C800009A232353858580FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFB2B19F1C1D5F0004E40000EA0000861D1D37B1B2ABFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5B81E1F470206DC0307FC0000B909094F
        9F9F98FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C6B81F20680509ED0206
        EE0000CC0606658E8E8CFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77776C04
        05970A0EFB0003DD0001CA03035F969694FFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DBDBD2272767080BEC0105EE0204D40102C3080842C1C1B90000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F1BEBEBBFFFFFFFFFF
        FFFFFFFFFFFFFF3B3B530104DB0509F90001DC0306D70000935A5B6C0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9B8AD46466004043C8A
        8A84FFFFFFFFFFFFE6E6DB2525590002E60408F70002E80002D30001DC0A0A49
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7E7E18A8A810B0B4800009E
        1D1D63E9E9DFFFFFFFBBBBAE4343470205B40003F90003F30002EF0002E00003
        F10000510000FFFFFFFFFFFFFFFFFFFFFFFFEDEDE391918A27274D00007D0000
        CB0101B12C2C306565673536490B0B610000AB0002F20003F30508F40206F201
        04EF0102F21415520000FFFFFFE9E9DDC4C4AF84848426265400007B0000CB02
        04DE0103D70002B200028D0000A20000C30000E20305F70408F10B0EF41013F2
        1114F50C10FF00008A7F7F84000056567030317500007100009E0000E40004F9
        0003EF0002E90002E60002E60002E80003EC0206F1070AF40D11F6171BFA1D21
        FE1C1FFF1215F000007B64656FFFFFFF00000000210002670608C40E11F41C1F
        FF1E21FF1214F20D10F4080CF40408F6070CFE1216FF171BFF1C20FC1D20F117
        1AE41113C91011892829538A8A84FFFFFFFFFFFF0000FFFFFFB6B6B36D6D6639
        395B1717811819C13335FF282BFB1B1EF51518E70C0FC000009B07098A171881
        262673353562585858A1A19BFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFAAAA9D56576614156A2324D22F31FF1416C31D1D268F8F839D9C
        8BB2B2A6CCCCC2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0AFA448495E1112921013E6343661FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF69696213146F
        00005C929188FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFC6C6C073737FCDCDCDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
      OnClick = SBExitClick
    end
  end
  inherited DSForm: TDataSource
    Left = 24
    Top = 72
  end
  inherited ActionList: TActionList
    Left = 24
    Top = 16
  end
  inherited xpWindow1: TxpWindow
    Left = 24
    Top = 128
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 112
    Top = 15
  end
  object ColorDialog1: TColorDialog
    Left = 112
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = DMScanImage.QrSelImage
    Left = 46
    Top = 247
  end
end
