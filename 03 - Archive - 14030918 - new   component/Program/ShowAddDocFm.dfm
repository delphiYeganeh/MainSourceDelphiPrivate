inherited FmShowAddDoc: TFmShowAddDoc
  Left = 551
  Top = 124
  Width = 550
  Height = 455
  BorderIcons = [biSystemMenu]
  Caption = #1606#1605#1575#1610#1588' '#1575#1591#1604#1575#1593#1575#1578' '#1587#1606#1583' '#1605#1585#1578#1576#1591
  Constraints.MaxHeight = 455
  Constraints.MinHeight = 455
  Constraints.MinWidth = 360
  KeyPreview = True
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel [0]
    Left = 0
    Top = 41
    Width = 542
    Height = 339
    Align = alClient
    TabOrder = 0
    DesignSize = (
      542
      339)
    object Label3: TLabel
      Left = 445
      Top = 18
      Width = 57
      Height = 13
      Anchors = [akTop, akRight]
      Caption = ' '#1588#1605#1575#1585#1607' '#1587#1606#1583
      FocusControl = DBEIncommingNO
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 445
      Top = 42
      Width = 45
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582' '#1587#1606#1583
      FocusControl = DBEIncommingNO
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label8: TLabel
      Left = 445
      Top = 67
      Width = 32
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1608#1590#1608#1593
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 445
      Top = 89
      Width = 54
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1582#1604#1575#1589#1607' '#1587#1606#1583
      Font.Charset = ARABIC_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 445
      Top = 187
      Width = 49
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '&'#1591#1576#1602#1607' '#1576#1606#1583#1610
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label15: TLabel
      Left = 445
      Top = 212
      Width = 59
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1588#1585#1581' '#1662#1610#1608#1587#1578
      FocusControl = DBEAttachTitle
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object UserMemo1: TLabel
      Left = 445
      Top = 237
      Width = 81
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1604#1575#1581#1590#1575#1578' '#1705#1575#1585#1576#1585#1610'1'
      FocusControl = DBEUserMemo
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
    end
    object Label4: TLabel
      Left = 445
      Top = 262
      Width = 53
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1601#1585#1605' '#1662#1610#1608#1587#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object UserMemo2: TLabel
      Left = 445
      Top = 287
      Width = 83
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610' 2'
      FocusControl = DBEUserMemo1
      ParentBiDiMode = False
    end
    object UserMemo3: TLabel
      Left = 445
      Top = 313
      Width = 83
      Height = 13
      Anchors = [akTop, akRight]
      BiDiMode = bdLeftToRight
      Caption = #1605#1604#1575#1581#1592#1575#1578' '#1705#1575#1585#1576#1585#1610' 3'
      FocusControl = DBEUserMemo2
      ParentBiDiMode = False
    end
    object DBEIncommingNO: TDBEdit
      Left = 311
      Top = 15
      Width = 130
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'IncommingNO'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBMemo: TDBMemo
      Left = 10
      Top = 89
      Width = 431
      Height = 88
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      BiDiMode = bdRightToLeftNoAlign
      DataField = 'Memo'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object DBEAttachTitle: TDBEdit
      Left = 10
      Top = 209
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'AttachTitle'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
    object DBEUserMemo: TDBEdit
      Left = 10
      Top = 234
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'UserMemo'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 3
    end
    object DBEUserMemo1: TDBEdit
      Left = 10
      Top = 284
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'UserMemo1'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
    end
    object DBEUserMemo2: TDBEdit
      Left = 10
      Top = 310
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'UserMemo2'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
    end
    object DBEClassificationTitle: TDBEdit
      Left = 311
      Top = 184
      Width = 130
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'ClassificationTitle'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object DBEUserTableTitle: TDBEdit
      Left = 311
      Top = 259
      Width = 130
      Height = 21
      Anchors = [akTop, akRight]
      DataField = 'UserTableTitle'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object DBEsenderTitle: TDBEdit
      Left = 10
      Top = 64
      Width = 431
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'senderTitle'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 8
    end
    object DBEIncommingdate: TDBEdit
      Left = 311
      Top = 39
      Width = 130
      Height = 21
      Anchors = [akTop, akRight]
      BiDiMode = bdRightToLeft
      DataField = 'Incommingdate'
      DataSource = DMShowAddDoc.DsSelLetter
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
  end
  object Panel2: TPanel [1]
    Left = 0
    Top = 380
    Width = 542
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 9
      Top = 6
      Width = 75
      Height = 28
      Cursor = crHandPoint
      Cancel = True
      Caption = #1582#1585#1608#1580
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn1Click
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
    end
  end
  object Panel3: TPanel [2]
    Left = 0
    Top = 0
    Width = 542
    Height = 41
    Align = alTop
    TabOrder = 2
    DesignSize = (
      542
      41)
    object SpeedButton11: TSpeedButton
      Left = 425
      Top = 6
      Width = 105
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1578#1589#1608#1610#1585
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008442
        0000844200008442000084420000844200008442000084420000844200008442
        00008442000084420000844200008442000084420000FF00FF00FF004200FF00
        4200FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
        4200FF004200FF004200FF004200FF00420084420000FF00FF00FF004200FF84
        8400E7E7E700D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6D600D6D6
        D600D6D6D600D6D6D600DEDEDE00FF00420084420000FF00FF00FF004200FF84
        8400FF848400FF848400FF848400FF848400FF848400FF848400FF848400FF84
        8400FF848400FF848400FF848400FF00420084420000FF00FF00FF004200FF84
        0000FF004200FF004200FF004200FF004200FF004200FF004200FF004200FF00
        4200FF004200FF004200FF004200FF004200FF00FF00FF00FF00FF00FF00FF84
        0000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF840000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF840000FF84
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF840000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      OnClick = SpeedButton11Click
    end
    object SpeedButton1: TSpeedButton
      Left = 316
      Top = 6
      Width = 105
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF008484840000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF0084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FF00FF00FF00
        FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF00FF00FF00
        FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6
        C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FF00
        000000000000FF00000000000000FF00000000000000FF00000000000000FF00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
        FF0000000000FF000000FFFFFF00FF00000000000000FFFFFF00FFFFFF00FF00
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000FF000000FFFF
        FF00FF00000000000000C6C6C60000000000FF000000C6C6C600FFFFFF000000
        0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
        FF0000000000FF00000000000000FF00000000000000FF000000FFFFFF00FF00
        0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF000000FFFF
        FF00FF000000FFFFFF00FF00000000000000FFFFFF0000000000C6C6C6000000
        0000C6C6C600FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000000000FF00
        000000000000FFFFFF0000000000FF000000FFFFFF00FF00000000000000FF00
        0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000FF0000000000
        0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
        0000C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C6000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00
        0000FFFFFF00FFFFFF0000000000000000000000000000000000FF0000000000
        0000FF00000000000000FF00000000000000FF00000000000000FF0000000000
        0000FFFFFF00FFFFFF0084848400FFFFFF0000000000FF00FF00FF00FF00FF00
        FF00FF00FF0084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF008484840000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008484840084848400848484008484840084848400848484008484
        8400848484008484840084848400FF00FF00FF00FF00FF00FF00}
      OnClick = SpeedButton1Click
    end
    object SpeedButton110: TSpeedButton
      Left = 208
      Top = 6
      Width = 105
      Height = 28
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1608#1587#1578' '#1607#1575
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555FFFFFFFFFF55555000000000055555577777777775FFFF00B8B8B8B8B0
        0000775F5555555777770B0B8B8B8B8B0FF07F75F555555575F70FB0B8B8B8B8
        B0F07F575FFFFFFFF7F70BFB0000000000F07F557777777777570FBFBF0FFFFF
        FFF07F55557F5FFFFFF70BFBFB0F000000F07F55557F777777570FBFBF0FFFFF
        FFF075F5557F5FFFFFF750FBFB0F000000F0575FFF7F777777575700000FFFFF
        FFF05577777F5FF55FF75555550F00FF00005555557F775577775555550FFFFF
        0F055555557F55557F755555550FFFFF00555555557FFFFF7755555555000000
        0555555555777777755555555555555555555555555555555555}
      NumGlyphs = 2
      OnClick = SpeedButton110Click
    end
  end
  inherited DSForm: TDataSource
    Left = 240
    Top = 224
  end
  inherited ActionList: TActionList
    Left = 240
    Top = 136
  end
  inherited xpWindow1: TxpWindow
    Left = 240
    Top = 184
  end
end
