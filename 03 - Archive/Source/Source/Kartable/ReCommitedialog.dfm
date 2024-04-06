inherited RecommiteSave: TRecommiteSave
  Tag = 14
  Left = 690
  Top = 414
  ActiveControl = OrgIDEdit
  AutoSize = True
  Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
  ClientHeight = 566
  ClientWidth = 800
  TransparentColor = True
  TransparentColorValue = 4259584
  Constraints.MaxHeight = 604
  Constraints.MaxWidth = 816
  Constraints.MinHeight = 600
  Constraints.MinWidth = 808
  OldCreateOrder = True
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel6: TPanel [0]
    Left = 0
    Top = 108
    Width = 800
    Height = 160
    Align = alTop
    Color = 16377053
    TabOrder = 5
    Visible = False
    object GroupBox2: TGroupBox
      Left = 636
      Top = 1
      Width = 163
      Height = 158
      Align = alRight
      Caption = #1575#1606#1578#1582#1575#1576' '#1711#1585#1608#1607' '#1575#1585#1580#1575#1593#1575#1578
      Color = clBtnFace
      ParentColor = False
      TabOrder = 0
      DesignSize = (
        163
        158)
      object DBLkCBWorkGroup: TDBLookupComboBox
        Left = 8
        Top = 24
        Width = 145
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DropDownRows = 20
        KeyField = 'WorkGroupID'
        ListField = 'Title'
        ListSource = DSWorkGroup
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = DBLkCBWorkGroupClick
      end
    end
    object PageControl_Org: TPageControl
      Left = 1
      Top = 1
      Width = 635
      Height = 158
      ActivePage = TabList
      Align = alClient
      TabHeight = 25
      TabOrder = 1
      object TabTree: TTabSheet
        Caption = '  '#1583#1585#1582#1578#1610'  '
        object OrgTree: TDBTreeView
          Left = 0
          Top = 0
          Width = 627
          Height = 123
          Align = alClient
          Ctl3D = False
          Indent = 19
          StateImages = StatImages
          TabOrder = 0
          OnClick = OrgTreeClick
          OnKeyPress = OrgTreeKeyPress
          RootID = 1
          IDField = 'ID'
          ParentIDField = 'ParentID'
          DisplayField = 'Name_Semat'
          StoredFieldsList.Strings = (
            'Title')
          BuildMethod = bmFilter
        end
      end
      object TabList: TTabSheet
        Caption = '  '#1604#1610#1587#1578#1610'  '
        ImageIndex = 1
        object OrgList: TYchecklistBox
          Left = 0
          Top = 0
          Width = 627
          Height = 123
          TabStop = False
          Align = alClient
          BevelInner = bvNone
          Columns = 3
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          TabOrder = 0
          OnClick = OrgListClick
          Ydataset = FromOrganizations
          TitleField = 'title'
          IDField = 'id'
        end
      end
    end
  end
  object DetailPanel: TPanel [1]
    Left = 0
    Top = 498
    Width = 800
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Ctl3D = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 3
    DesignSize = (
      798
      32)
    object Label4: TLabel
      Left = 633
      Top = 9
      Width = 57
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605':'
    end
    object desc: TLabel
      Left = 795
      Top = 82
      Width = 3
      Height = 13
      Anchors = [akTop, akRight, akBottom]
    end
    object Label6: TLabel
      Left = 767
      Top = 9
      Width = 25
      Height = 13
      Anchors = [akTop, akRight]
      Caption = #1578#1575#1585#1610#1582':'
    end
    object SpeedButton4: TSpeedButton
      Left = 521
      Top = 7
      Width = 18
      Height = 18
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '-'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton4Click
    end
    object SpeedButton3: TSpeedButton
      Left = 541
      Top = 7
      Width = 18
      Height = 18
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '+'
      Font.Charset = ARABIC_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = SpeedButton3Click
    end
    object DayinWeek: TLabel
      Left = 499
      Top = 9
      Width = 16
      Height = 13
      Anchors = [akTop, akRight]
      Caption = '....'
    end
    object proceeded: TCheckBox
      Left = 93
      Top = 7
      Width = 168
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1601#1593#1604#1610' '#1575#1586' '#1603#1575#1585#1578#1575#1576#1604' '#1582#1575#1585#1580' '#1588#1608#1583
      TabOrder = 2
    end
    object DBShamsiDateEdit2: TDBShamsiDateEdit
      Left = 696
      Top = 6
      Width = 70
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      CheckValidity = True
      ShowMsg = False
      DataField = 'RecommiteDate'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBIsCopy: TDBCheckBox
      Left = 262
      Top = 7
      Width = 86
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1601#1602#1591' '#1582#1608#1575#1606#1583#1606#1610
      DataField = 'IsCopy'
      DataSource = DSForm
      TabOrder = 3
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBDeadLineDate: TDBShamsiDateEdit
      Left = 560
      Top = 6
      Width = 70
      Height = 19
      TabStop = False
      Anchors = [akTop, akRight]
      CheckValidity = True
      ShowMsg = False
      DataField = 'DeadLineDate'
      DataSource = DSForm
      Font.Charset = ARABIC_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnChange = DBDeadLineDateChange
      OnEnter = DBDeadLineDateEnter
    end
    object DBChBoISFollowup: TDBCheckBox
      Left = 352
      Top = 7
      Width = 79
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1662#1610#1711#1610#1585#1610' '#1588#1608#1583
      DataField = 'ISFollowup'
      DataSource = DSForm
      TabOrder = 4
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
    object DBCheckBox1: TDBCheckBox
      Left = 3
      Top = 7
      Width = 86
      Height = 17
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1605#1581#1585#1605#1575#1606#1607
      DataField = 'IsSecure'
      DataSource = DSForm
      TabOrder = 5
      ValueChecked = 'True'
      ValueUnchecked = 'False'
    end
  end
  object Panel5: TPanel [2]
    Left = 0
    Top = 532
    Width = 800
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 0
    DesignSize = (
      800
      41)
    object BitBtn2: TBitBtn
      Left = 506
      Top = 6
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1606#1589#1585#1575#1601
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        AA030000424DAA03000000000000360000002800000011000000110000000100
        1800000000007403000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        800080800080800080805465D400008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080803B4CD10000
        C0000080800000BF0006C13446CF008080008080008080008080008080008080
        008080008080008080008080263BD10001C54153D4000080800000C50013C800
        0CC72E43D2008080008080008080008080008080008080008080008080132AD1
        0000C93B4FD7008080000080800080801027D10010CE000DCD1026D200808000
        80800080800080800080800080800017D10006CE4356DA008080008080000080
        800080800080804053DD000FD4000CD30080800080800080800080808D9AE705
        1DD50005D24355DD008080008080008080000080800080800080800080806A7B
        E5000ED9000BD80080800080807385E60016D80008D64558E000808000808000
        8080008080000080800080800080800080800080800080800822DF0000FF0000
        FF0018DC000BDA485CE300808000808000808000808000808000008080008080
        008080008080008080008080008080162EE30013E00013E04A5EE60080800080
        8000808000808000808000808000008080008080008080008080008080008080
        3D52E90016E20015E3001AE50A26EA97A4F00080800080800080800080800080
        80000080800080800080800080800080802740EB000DE7000EE75467EC008080
        011DEC0018ED8B99F10080800080800080800080800000808000808000808000
        80801E37ED000FEC000EEC5165EF008080008080008080132DF3000EF28F9EF4
        00808000808000808000008080008080008080112BF00013EF0010EF5063F100
        80800080800080800080800080803148F6000DF891A0F6008080008080000080
        800080800011F20015F30012F35B6DF500808000808000808000808000808000
        80800080806074F80014FD798AFA008080000080800014F70019F8000EF8586C
        F700808000808000808000808000808000808000808000808000808092A2FA88
        98FA00808000008080000DFD000EFC586CF90080800080800080800080800080
        80008080008080008080008080008080008080008080008080000080802D47FC
        7588FB0080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000}
    end
    object BitBtn1: TBitBtn
      Left = 688
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        06030000424D06030000000000003600000028000000100000000F0000000100
        180000000000D002000000000000000000000000000000000000008080008080
        0080800080808000008000000080800080800080800080800080800080800080
        8000808000808000808000808000808000808080000000800000800080000000
        8080008080008080008080008080008080008080008080008080008080008080
        8000000080000080000080000080008000000080800080800080800080800080
        8000808000808000808000808080000000800000800000800000800000800000
        8000800000008080008080008080008080008080008080008080800000008000
        00800000800000FF000080000080000080000080008000000080800080800080
        8000808000808000808000800000800000800000FF0000808000808000800000
        800000800080000000808000808000808000808000808000808000FF00008000
        00FF0000808000808000808000FF000080000080000080008000000080800080
        8000808000808000808000808000FF0000808000808000808000808000808000
        FF00008000008000008000800000008080008080008080008080008080008080
        00808000808000808000808000808000808000FF000080000080000080008000
        0000808000808000808000808000808000808000808000808000808000808000
        808000808000FF00008000008000008000800000008080008080008080008080
        00808000808000808000808000808000808000808000808000FF000080000080
        0000800080000000808000808000808000808000808000808000808000808000
        808000808000808000808000FF00008000008000008000800000008080008080
        00808000808000808000808000808000808000808000808000808000808000FF
        0000800000800080000000808000808000808000808000808000808000808000
        808000808000808000808000808000808000FF00008000008000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000FF00008080}
    end
    object BitBtn3: TBitBtn
      Left = 398
      Top = 6
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1587#1575#1604' '#1585#1608#1606#1608#1588#1578
      Font.Charset = ARABIC_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00
        FF00000000000000000000000000FFFFFF0000000000FFFFFF00000000000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000000000000000
        000000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000000000000000000000000000FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000000000000000000000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00000000000000
        0000FFFFFF00FFFFFF0000000000FFFFFF0000000000FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF0000000000FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF000000000000000000FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000FFFFFF000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000FFFFFF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF0000000000000000000000000000000000000000000000000000000000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        00000000000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object BitBtn4: TBitBtn
      Left = 14
      Top = 6
      Width = 75
      Height = 25
      Caption = #1582#1585#1608#1580
      TabOrder = 3
      OnClick = BitBtn4Click
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
    object BitBtn5: TBitBtn
      Left = 584
      Top = 6
      Width = 100
      Height = 25
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = #1575#1585#1580#1575#1593' '#1608' '#1576#1587#1578#1606' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      OnClick = BitBtn5Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000EDEDEDE6E7E7
        E5E7E7E5E7E7E8E9E9EEEAE6F5F2F08887877777777677787575757374756F6F
        6F717171CACACAFFFFFF848282B5A7A7AFA3A3B2A5A59E919051779BA1B7CD90
        8F8FFFFFFFFFFFFFD99E80FFFFFFFFFFFFD1D0D06E6E6EFAFAFA989393FFF2F2
        FFECECFFF1F0DFC5C23F93E495C8F8929292FFFFFFD29F829B2C00D4B5A4FFFF
        FFCFCDCD787777FBFBFB999696FFF2F2FFEBEBFFF1F0DBC7C44697E09ACAF594
        9A9DF0DFD5A53B00A63D00AC4D10F1E7E4D5D5D67C7A7AFCFBFB9B9999FFFEFE
        FFF7F7FFFDFDDECFCC4A9EE49ED1FD8F8885BE6B34B45819DEB9A2B03F00C07B
        4ECED5DD807F7FFBFBFB908F8FBCB2B2B8B0B0BAB3B3B2AAA9407DB0A0C1DC92
        4C1CB24400E4CFC2FFFFFFD59260B64300A586727D848AFCFCFC9D9C9CFFFDFD
        FCF7F7FFFCFCD8D2D14FA2E1AFD6F4B648009B6642757F86787A7C857D77B355
        0BB14C00A18D80F5FAFD9E9E9EFFFFFFFFFFFFFFFFFFDAD7D456A7E189CCFBC8
        B6A8A4DCFF8AD4FFD6D2D5FFFFFFFAE2D5BC4D00B05912EAE5E19E9F9FFFFFFF
        FFFFFFFFFFFFD9D6D45FACDF5ABFFF7ECCFF50BAFF42AEFBAFABADFFF7F6FFF8
        FEE2B38DB94800DD914EA1A1A1FFFFFFFFFFFFFFFFFFDCD8D664B1E156C2FF58
        C1FF56BFFF4FB7FFB4B0B2FFFDFCFFF1F2FFF9FADC975ECF5F009D9D9DE6E6E6
        DFDFDFE3E3E2C8C5C460A3CB4FACE251AADF4EA8E047A1DEAAABAEE7DCDBDFD1
        D1E1D0D2DAD3D3DC8F409D9D9DD9D9D9D4D4D4D8D7D7C1BFBE60A0C44FA7D650
        A4D44CA1D5459CD3A7A8ABDBD1D0D4C7C7D8C5C5A7A1A4EBDFD2A7A7A7FFFFFF
        FFFFFFFFFFFFDCD9D76AB8E263CFFF62CAFF5DC6FF54BDFFB4B4B5FFFFFFFFF4
        F4FFF4F4B0A5A5E5E8EAA7A7A7FFFFFFFFFFFFFFFFFFD9D5D466B3DF5CC6FF5D
        C3FF5AC1FF51B8FCB3B1B3FFFBFAFFF0F0FFF0F0B0A5A5E5E7E7ABABABFFFFFF
        FFFFFFFFFFFFDEDBDA60B2E652C4FF54C3FF51C1FF4AB9FFB5B3B6FFFFFFFFF6
        F6FFF6F6B7A9A9E6E7E7A0A0A0ABABABA7A7A7A8A8A8A09F9F8C969E8899A289
        98A186969F84949E9391919F9C9B9B98989C9898878585EDEDED}
    end
    object AaddLetterData: TBitBtn
      Left = 251
      Top = 6
      Width = 104
      Height = 25
      Cursor = crHandPoint
      Caption = #1662#1610#1608#1587#1578' '#1607#1575
      TabOrder = 5
      OnClick = AaddLetterDataClick
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
    end
  end
  object Panel4: TPanel [3]
    Left = 0
    Top = 0
    Width = 800
    Height = 108
    Align = alTop
    AutoSize = True
    ParentColor = True
    TabOrder = 1
    object ToPanel: TPanel
      Left = 1
      Top = 1
      Width = 798
      Height = 106
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        798
        106)
      object Label2: TLabel
        Left = 926
        Top = 7
        Width = 57
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 189
        Top = 69
        Width = 21
        Height = 21
        Anchors = [akTop, akRight]
        Flat = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0018A2D600109ACE00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0084D3EF006BEBFF0031B6DE00109ACE00088EB500088EB500088EB500FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0039AADE0084FFFF007BFFFF005AD3F7005AD3F7005AD3F7005AD3F70031B6
          DE00109ACE00088EB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE0039AADE009CFFFF0073F7FF0073EBFF0073EBFF0073EBFF005AD3F7005AD3
          F7005AD3F70031B6EF00109ACE00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE00109ACE009CD3EF007BF7FF007BF7FF0073EBFF0073EBFF0073EBFF0073EB
          FF005AD3F7005AD3F70031B6EF00FF00FF00FF00FF00FF00FF00FF00FF00109A
          CE005AD3F700109ACE0084FFFF0073F7FF0073F7FF0073F7FF0073EBFF0073EB
          FF0073EBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00FF00FF00109A
          CE007BF7FF00109ACE009CD3EF008CEBF7008CEBF7008CF7FF0073EBFF0073EB
          FF0073EBFF005AD3F7005AD3F70021AADE00FF00FF00FF00FF00FF00FF00109A
          CE0084FFFF005AD3F700109ACE00088EB500088EB500088EB5009CD3EF0073F7
          FF006BEBFF006BEBFF005AD3F7005AD3F700088EB500FF00FF00FF00FF00109A
          CE0084FFFF007BF7FF0084868400005100000051000000510000109ACE009CD3
          EF006BEBFF006BEBFF006BEBFF007BEBFF00188ECE00FF00FF00FF00FF00109A
          CE0084FFFF007BF7FF008C8E8C00318E31000051000000200000001C0000109A
          CE00088EB500108ECE00108ECE00108ECE00088EB500FF00FF00FF00FF00109A
          CE00B5FFFF007BFFFF009C9AA50039AA4A00318E310000380000003C0000B551
          0000BD490000D6510000D65900006B696B00FF00FF00FF00FF00FF00FF00109A
          CE0084D3EF00B5FFFF00A5A2A500189A210010710800398621007B792900D661
          1000B53C0000AD300000B53800006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF0018A2D600109ACE00ADAAAD00FFCB6B00FFBE4A00FFB63900FFB63900FFBE
          4A00FFDF7300F7D3AD00BD865A006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00B5B6B500F7BE7300FFA22900FF9A1000FFAA3900FFAA
          3900FFD38C00F7EBB500FFFFBD006B696B00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00B5B6B500A5A2AD00A5A2AD00A5A2AD00A5A2AD00A5A2
          AD00A5A2AD00A5A2AD00A5A2AD0073717B00FF00FF00FF00FF00}
        OnClick = SpeedButton2Click
      end
      object OneOrg: TRadioButton
        Left = 702
        Top = 71
        Width = 89
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1607
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = OneOrgClick
      end
      object MoreOrg: TRadioButton
        Left = 703
        Top = 88
        Width = 89
        Height = 17
        Anchors = [akTop, akRight]
        Caption = #1575#1585#1580#1575#1593' '#1588#1608#1606#1583#1711#1575#1606
        TabOrder = 1
        OnClick = OneOrgClick
      end
      object DBEditToStaffer: TDBEdit
        Left = 213
        Top = 69
        Width = 124
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdRightToLeft
        DataField = 'OrgStaff'
        DataSource = DSForm
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBiDiMode = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 3
        OnEnter = TEditEnter
        OnExit = TEditExit
        OnKeyDown = GotoNext
      end
      object OrgIDEdit: TEdit
        Left = 657
        Top = 69
        Width = 49
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        ReadOnly = True
        TabOrder = 2
        OnEnter = OrgIDEditEnter
        OnExit = OrgIDEditExit
        OnKeyDown = GotoNext
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 798
        Height = 67
        Align = alTop
        Caption = #1575#1585#1580#1575#1593' '#1587#1585#1610#1593' '#1576#1607' :'
        TabOrder = 4
        DesignSize = (
          798
          67)
        object OrgButton1: TBitBtn
          Tag = 1
          Left = 651
          Top = 16
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1605#1583#1610#1585' '#1593#1575#1605#1604'  '#1605#1581#1578#1585#1605' '#1588#1585#1705#1578' '#1610#1711
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = OrgButton1Click
        end
        object OrgButton2: TBitBtn
          Tag = 2
          Left = 506
          Top = 16
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1605#1583#1610#1585' '#1576#1575#1586#1585#1711#1575#1606#1610
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = OrgButton1Click
        end
        object OrgButton3: TBitBtn
          Tag = 3
          Left = 361
          Top = 16
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1588#1606#1575#1587' 1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = OrgButton1Click
        end
        object OrgButton4: TBitBtn
          Tag = 4
          Left = 217
          Top = 16
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1575#1589#1594#1585#1570#1602#1575
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnClick = OrgButton1Click
        end
        object SpeedButton6: TBitBtn
          Left = 155
          Top = 16
          Width = 56
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1608#1610#1585#1575#1610#1588
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnClick = SpeedButton6Click
        end
        object OrgButton5: TBitBtn
          Tag = 5
          Left = 651
          Top = 40
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1588#1606#1575#1587'3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnClick = OrgButton1Click
        end
        object OrgButton6: TBitBtn
          Tag = 6
          Left = 506
          Top = 40
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1588#1606#1575#1587'4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnClick = OrgButton1Click
        end
        object OrgButton7: TBitBtn
          Tag = 7
          Left = 361
          Top = 40
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1588#1606#1575#1587'5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnClick = OrgButton1Click
        end
        object OrgButton8: TBitBtn
          Tag = 8
          Left = 217
          Top = 40
          Width = 140
          Height = 23
          Cursor = crHandPoint
          Anchors = [akTop, akRight]
          Caption = #1705#1575#1585#1588#1606#1575#1587'6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnClick = OrgButton1Click
        end
      end
      object orgcombo: TDBLookupComboBox
        Left = 343
        Top = 69
        Width = 312
        Height = 21
        Anchors = [akTop, akRight]
        BevelInner = bvNone
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        Ctl3D = True
        DataField = 'fromorgtitle'
        DataSource = DSForm
        Enabled = False
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ListField = 'Title'
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 6
        OnClick = orgcomboClick
        OnCloseUp = orgcomboCloseUp
        OnDropDown = orgcomboDropDown
        OnKeyDown = GotoNext
      end
      object SearchEdit: TEdit
        Left = 340
        Top = 69
        Width = 296
        Height = 21
        Anchors = [akTop, akRight]
        ReadOnly = True
        TabOrder = 5
        Text = #1580#1587#1578#1580#1608' '#1576#1585' '#1575#1587#1575#1587' '#1593#1606#1608#1575#1606' ...'
        OnChange = SearchEditChange
        OnEnter = SearchEditEnter
        OnExit = SearchEditExit
        OnKeyDown = SearchEditKeyDown
      end
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 268
    Width = 800
    Height = 230
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object PageControl_Text: TPageControl
      Left = 0
      Top = 0
      Width = 800
      Height = 230
      ActivePage = TabSheet1
      Align = alClient
      TabHeight = 25
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = #1605#1590#1605#1608#1606' '#1575#1585#1580#1575#1593' '
        object Splitter1: TSplitter
          Left = 661
          Top = 0
          Height = 195
          Align = alRight
          Color = clMedGray
          ParentColor = False
        end
        object DBparaph: TDBMemo
          Left = 0
          Top = 0
          Width = 661
          Height = 195
          Align = alClient
          Ctl3D = False
          DataField = 'Paraph'
          DataSource = DSForm
          ParentCtl3D = False
          TabOrder = 0
          OnEnter = TEditEnter
          OnExit = TEditExit
        end
        object Panel3: TGroupBox
          Left = 664
          Top = 0
          Width = 128
          Height = 195
          Align = alRight
          Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1570#1605#1575#1583#1607
          Color = clBtnFace
          ParentColor = False
          TabOrder = 1
          DesignSize = (
            128
            195)
          object Label9: TLabel
            Left = 51
            Top = 151
            Width = 71
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1602#1575#1604#1576' '#1607#1575#1610' '#1583#1610#1711#1585':'
          end
          object SpeedButton1: TSpeedButton
            Left = 4
            Top = 18
            Width = 119
            Height = 23
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Caption = #1608#1610#1585#1575#1610#1588' '#1602#1575#1604#1576
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            OnClick = SpeedButton1Click
          end
          object Bevel1: TBevel
            Left = 0
            Top = 44
            Width = 126
            Height = 2
            Anchors = [akLeft, akTop, akRight]
          end
          object TemplateButton1: TBitBtn
            Tag = 1
            Left = 4
            Top = 48
            Width = 119
            Height = 23
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Caption = #1576#1585#1585#1587#1610' '#1588#1608#1583
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = TemplateButton1Click
          end
          object TemplateButton2: TBitBtn
            Tag = 2
            Left = 4
            Top = 74
            Width = 119
            Height = 23
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Caption = #1580#1607#1578' '#1575#1591#1604#1575#1593
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = TemplateButton1Click
          end
          object TemplateButton3: TBitBtn
            Tag = 3
            Left = 4
            Top = 100
            Width = 119
            Height = 23
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Caption = #1575#1602#1583#1575#1605' '#1601#1608#1585#1610
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = TemplateButton1Click
          end
          object TemplateButton4: TBitBtn
            Tag = 4
            Left = 4
            Top = 126
            Width = 119
            Height = 23
            Cursor = crHandPoint
            Anchors = [akLeft, akTop, akRight]
            Caption = #1575#1602#1583#1575#1605' '#1604#1575#1586#1605' '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = TemplateButton1Click
          end
          object DBLookupComboBox1: TDBLookupComboBox
            Left = 4
            Top = 165
            Width = 121
            Height = 21
            Anchors = [akLeft, akTop, akRight]
            BiDiMode = bdLeftToRight
            KeyField = 'Paraph'
            ListField = 'Title'
            ListSource = Dm.DSELECT_ParaphTemplate
            ParentBiDiMode = False
            TabOrder = 4
            OnClick = DBLookupComboBox1Click
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = '   '#1578#1589#1608#1610#1585'   '
        ImageIndex = 1
        object PanelSign: TPanel
          Left = 0
          Top = 0
          Width = 792
          Height = 30
          Align = alTop
          BevelInner = bvLowered
          TabOrder = 0
          DesignSize = (
            792
            30)
          object Label7: TLabel
            Left = 516
            Top = 8
            Width = 38
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1606#1711' '#1602#1604#1605
          end
          object Label1: TLabel
            Left = 605
            Top = 8
            Width = 44
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1583#1575#1586#1607' '#1602#1604#1605
          end
          object SBRemoveSign: TSpeedButton
            Left = 662
            Top = 2
            Width = 27
            Height = 26
            Cursor = crHandPoint
            Hint = #1581#1584#1601' '#1605#1581#1578#1608#1610#1575#1578' '#1578#1589#1608#1610#1585
            Glyph.Data = {
              EE030000424DEE03000000000000360000002800000012000000110000000100
              180000000000B803000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEF4EAED6B49D2F4EAEDFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEAA94E95533E2FBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EE7D5FD4380FD44018D1EDE2EBFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEAA94E92C03DF9880E7FBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EEB19CDE2D04D9330AD53C13D3EDE2EBFBF2EEFBF2EEFBF2EEFBF2EEAA94
              E92B02DF9880E7FBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EED9C9
              E7360CD32E05D83910D3EDE2EBFBF2EEFBF2EEA58EE82B02DF9F88E8FBF2EEFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEEDE2EB4821D12C
              02DA350BD4EDE2EBA58EE82B02DF9F88E8FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE704ED42B02DC2D03D9
              2A01DFA58EE8FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE4D27D12A01DF2C02DADFD0E7FBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EE5935D52A01DF5F3CD32D03DA2C02DAD7C7E6FBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE4F2BD72A
              01DF6341D8FBF2EEE6D9EA3007D72A01DCC0ADE1FBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EED6C7EC360EDC2A01DF6745D7FBF2EEFBF2EE
              FBF2EEFBF2EE380FD42A01DEAF99DDFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EE957CE72A01DF2A01DF7353D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE4E28D15A36D1FBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EE3C14DB2A01
              DF7E60D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EE370DD48264D6FBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBRemoveSignClick
          end
          object SpeedButton7: TSpeedButton
            Left = 720
            Top = 2
            Width = 27
            Height = 26
            Cursor = crHandPoint
            Hint = #1602#1585#1575#1585' '#1583#1575#1583#1606' '#1575#1605#1590#1575#1610' '#1705#1575#1585#1576#1585
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF005000000000FF
              FFFF0EEEEEEEEE0FFFFF0E11111100000F000EEEEEE0BBBBB0000E0111100BBB
              BB090EE00E0BBBBBBB090E10B00000BBBB090EEE0BBBBBBBBB090E111000000B
              BB090EEEEE0B00BBB0000E111110B0000FFF0EEEEEEE0B0FFFFF00E0E0E0F0B0
              FFFFF0707070700B0FFFF070707070F090FF0F0F0FF50FFF0FFF}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton7Click
          end
          object SBPolyLine: TSpeedButton
            Left = 613
            Top = 2
            Width = 27
            Height = 26
            Hint = #1602#1604#1605' '#1606#1608#1585#1610
            Glyph.Data = {
              DE020000424DDE0200000000000036000000280000000D000000110000000100
              180000000000A802000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEEACFCCAC5857CB9492FB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEA54B
              4BAC5857EACFCCFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEE3C3C0993434F0DBD7FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEE3C3C0993434FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEF0DBD7993434D19F9CFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEC487
              86993434BE7C7BF0DBD7FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EED7ABA8A54B4B993434E3C3C0FBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB9706FAC5857FBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEDD
              B7B4993434FBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EED19F9CA04040FBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEE3C3C0A04040BE7C7BFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB26463B26463F6E7E3FBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBPolyLineClick
          end
          object SBMoveLayers: TSpeedButton
            Left = 691
            Top = 2
            Width = 27
            Height = 26
            Hint = #1580#1575#1576#1580#1575#1610#1610' '#1575#1588#1610#1575#1610
            Glyph.Data = {
              2E030000424D2E0300000000000036000000280000000D000000130000000100
              180000000000F802000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEBE
              9B9AD7BEBBFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEE3D0CDD9C6ACE6D9BBB8958EF6EAE6FBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEAC7E76F6EAE6FBF2EEBF9E98FFFFE1FFFFE2BF9E97FBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEB8887CB9958DDDC7C4D9C6B5FFFFE9CCB3A8E3D0CD
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEC39381F9F5CBBF9F93FFFFE7F9
              F5EABF9C9BFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EECD9C84FFFF
              D3FFFFDFFFFFE7DFCFC6C5A7A3CCB0ACB99491F0E2DEFBF2EE00FBF2EEFBF2EE
              FBF2EED2A186FFFFD0FFFFDBFFFFE5FFFFECFFFFEFDFCFC5D1B6B3FBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EED3A187FFFDCAFFFFD6FFFFDDFFFFE3ECE2CDC4A5A2
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EECF9D84FFEFBCFFFECCFFFFD3F9
              F5D1B9958FF6EAE6FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEC59481FFE3
              B1FFEEBBFFFAC7B99688F0E2DEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EEBC8B7DFFDAA7FFE1AEC69E88EAD8D5FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEB38379FFCE9BD9AC8CD7BEBBFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEAA7C76ECC097C4A29DFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEA47673B28A
              85FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EE
              FBF2EE9F7171FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBMoveLayersClick
          end
          object SBBrush: TSpeedButton
            Left = 382
            Top = 2
            Width = 27
            Height = 26
            Hint = #1662#1575#1603' '#1603#1606
            Glyph.Data = {
              86050000424D8605000000000000360000002800000016000000140000000100
              1800000000005005000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EE23A3B623828D21818C13ACC00BC6DF07D2EC
              04DBF703DDFB02DFFD01E1FF01E1FF01E1FF01E1FF01E1FF01E1FFFBF2EEFBF2
              EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EE01E1FF35D1F024838F1F879112B7
              CB0AC9E107D2ED06D4EF03DBF802E0FD01E1FF01E1FF01E1FF01E1FF01E1FFFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EE5CBFD016CDE99D717162
              4942FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEA48585
              D09D9DA17574805D5A705551F2E8E3FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE826967AB7F7E71544FA377758B6664755A56F7EDEAFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE937877CB9C9BD09D9DBD8A8A8764617E6360F4F0EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EE8D7271D5A2A2E7B4B4D09D9DB88585757E9C2DA0
              C47DC8DFFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE8E7373EBB8B8DCA9A9768B9E34
              B9FF30A8FA1DA3CD92CFE2FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE887A7F4C96AD
              28D7FF33C9FF34B9FF2FA8F82DADD5A7D7E4FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE2DADD510BDE328D7FF33C9FF34B9FF2DA6F618A3CFB8DCE7FBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE28ACD410C0E428D7FF33C7FF34B4FF2BA3F425AAD5C9E2E9
              FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE25AAD511C2E62CD3FF34C5FF34B4FF29A3
              F118A4D0D6E6EAFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE28ACD412C2E82CD3FF34
              C5FF34B4FF19A2DF52B9DAFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE30AED6
              12C4E92CD3FF1EB2E728ACD4FBF2EEFBF2EEFBF2EEFBF2EE0000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EE39B1D70DB1DB28ACD4FBF2EEFBF2EEFBF2EEFBF2EEFBF2EE0000FBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EE53BADAFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EE0000FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EE0000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBBrushClick
          end
          object Label3: TLabel
            Left = 360
            Top = 8
            Width = 57
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1606#1583#1575#1586#1607' '#1662#1575#1603' '#1603#1606
          end
          object Bevel2: TBevel
            Left = 650
            Top = 3
            Width = 3
            Height = 25
            Style = bsRaised
          end
          object Bevel3: TBevel
            Left = 420
            Top = 3
            Width = 3
            Height = 25
            Style = bsRaised
          end
          object SEPenWidth: TSpinEdit
            Left = 560
            Top = 4
            Width = 41
            Height = 22
            Anchors = [akTop, akRight]
            MaxValue = 25
            MinValue = 1
            TabOrder = 0
            Value = 1
            OnChange = SEPenWidthChange
          end
          object EdtPenColor: TEdit
            Left = 477
            Top = 6
            Width = 33
            Height = 19
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            BevelInner = bvNone
            BevelOuter = bvRaised
            Color = clBlack
            Ctl3D = False
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 1
            OnClick = EdtPenColorClick
          end
          object SEEraser: TSpinEdit
            Left = 316
            Top = 4
            Width = 41
            Height = 22
            Anchors = [akTop, akRight]
            Increment = 2
            MaxValue = 50
            MinValue = 8
            TabOrder = 2
            Value = 15
            OnChange = SEEraserChange
          end
        end
        object ImageEnDBVect1: TImageEnDBVect
          Left = 0
          Top = 30
          Width = 792
          Height = 165
          ParentCtl3D = False
          AutoFit = True
          BackgroundStyle = iebsChessboard
          ImageEnVersion = '3.0.0'
          EnableInteractionHints = True
          Align = alClient
          TabOrder = 1
          OnMouseMove = ImageEnDBVect1MouseMove
          OnMouseUp = ImageEnDBVect1MouseUp
          OnNewObject = ImageEnDBVect1NewObject
          DataField = 'Image'
          DataSource = DSGet_RecommiteJpgFile
          DataFieldImageFormat = ifJpeg
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clWindowText
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
        end
      end
    end
  end
  object DBGToORG: TYDBGrid [5]
    Left = 176
    Top = 133
    Width = 498
    Height = 152
    Hint = '172'
    Anchors = [akTop, akRight]
    DataSource = DSearch
    Options = [dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 4
    TitleFont.Charset = ARABIC_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Visible = False
    OnCellClick = DBGToORGCellClick
    OnKeyDown = DBGToORGKeyDown
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
        FieldName = 'Code'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'title'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ResponsibleStaffer'
        Width = 120
        Visible = True
      end>
  end
  inherited DSForm: TDataSource
    Left = 132
    Top = 152
  end
  inherited ActionList: TActionList
    Left = 548
    Top = 316
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = #1575#1606#1578#1602#1575#1604' '#1576#1607' '#1581#1575#1601#1592#1607
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 0
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = #1705#1662#1610
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 1
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = #1583#1585#1580' '#1605#1578#1606
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 2
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = #1575#1606#1578#1582#1575#1576' '#1607#1605#1607
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = #1575#1606#1589#1585#1575#1601
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 3
      ShortCut = 16474
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = #1581#1584#1601
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
  end
  object ColorDialog: TColorDialog [8]
    Left = 464
    Top = 368
  end
  object Get_RecommiteJpgFile: TADODataSet [9]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 'Get_RecommiteJpgFile;1'
    CommandType = cmdStoredProc
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@RecommiteID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 322
    Top = 104
    object Get_RecommiteJpgFileRecommiteDataID: TAutoIncField
      FieldName = 'RecommiteDataID'
      ReadOnly = True
    end
    object Get_RecommiteJpgFileRecommiteID: TIntegerField
      FieldName = 'RecommiteID'
    end
    object Get_RecommiteJpgFileImage: TBlobField
      FieldName = 'Image'
    end
    object Get_RecommiteJpgFileExtention: TWordField
      FieldName = 'Extention'
    end
  end
  object StatImages: TImageList [10]
    BkColor = clWhite
    Left = 464
    Top = 316
    Bitmap = {
      494C010105000900040010001000FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F700FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00F7F7F700EFEFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700FFFFFF00FFFFFF00F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F7F7F700000000000000000000000000000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005A5A
      5A00000000000000000000000000000000000000000000000000000000000000
      0000D6D6D600F7F7F700FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B5B5B5000000
      0000000000000000000000000000A5A5A500B5B5B500E7E7E700393939000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
      000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF004242420000000000FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEDEDE00000000000000
      0000FFFFFF00FFFFFF00636363000000000029292900FFFFFF00FFFFFF000000
      0000FFFFFF00FFFFFF00ADADAD00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006B6B6B0000000000A5A5
      A500FFFFFF00737373006B6B6B00FFFFFF00E7E7E70000000000FFFFFF005252
      5200E7E7E700FFFFFF0039393900FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005252520000000000FFFF
      FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00CECECE00FFFFFF009494
      940029292900FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF000000000000000000FFFFFF00000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00ADADAD00000000009C9C
      9C00FFFFFF004A4A4A00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001010
      100008080800FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000A5A5
      A500FFFFFF00FFFFFF0094949400FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      000063636300FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0010101000C6C6
      C60000000000E7E7E700FFFFFF00FFFFFF00FFFFFF00ADADAD00000000000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
      0000FFFFFF00000000000000000000000000000000000000000000000000B5B5
      B500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF008484840042424200FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF0000000000FFFFFF0008080800000000000000000000000000FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400424242004242
      4200424242004242420042424200424242004242420042424200424242004242
      4200FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF006B6B6B00C6C6C600FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF0084848400848484008484
      8400848484008484840084848400848484008484840084848400848484008484
      840084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      8003000000000000BFFB000000000000800B000000000000800B000000000000
      800B000000000000800B000000000000800B000000000000800B000000000000
      800B000000000000800B000000000000800B000000000000800B000000000000
      8003000000000000FFFF0000000000000000FFFFFFFFFFFF0000FFFFFFFFFFFF
      00008003800380030000BFFBBFFBBFFB0000800B800B800B0000800B800B800B
      0000800B800B800B0000800B800B800B0000800B800B800B0000800B800B800B
      0000800B800B800B0000800B800B800B0000800B800B800B0000800B800B800B
      00008003800380030000FFFFFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DSearch: TDataSource [11]
    DataSet = SearchORG
    Left = 32
    Top = 152
  end
  object SearchORG: TADODataSet [12]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'Select top 1 id,title, ResponsibleStaffer, Code from fromorganiz' +
      'ations'#13#10'where IsActive=1'
    Parameters = <>
    Left = 144
    Top = 112
    object SearchORGid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SearchORGtitle: TWideStringField
      FieldName = 'title'
      Size = 100
    end
    object SearchORGResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object SearchORGCode: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
  end
  object FromOrganizations: TADOStoredProc [13]
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'get_InnerOrganizations'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 208
    Top = 104
    object FromOrganizationsTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object FromOrganizationsParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object FromOrganizationsPhone: TWideStringField
      FieldName = 'Phone'
      Size = 30
    end
    object FromOrganizationsFax: TWideStringField
      FieldName = 'Fax'
      Size = 30
    end
    object FromOrganizationsEmail: TWideStringField
      FieldName = 'Email'
      Size = 30
    end
    object FromOrganizationsResponsibleStaffer: TWideStringField
      FieldName = 'ResponsibleStaffer'
      Size = 50
    end
    object FromOrganizationsIsActive: TBooleanField
      FieldName = 'IsActive'
    end
    object FromOrganizationsPreCode: TWideStringField
      FieldName = 'PreCode'
    end
    object FromOrganizationsIsInnerOrg: TBooleanField
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizationsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object FromOrganizationsCode: TWideStringField
      DisplayWidth = 50
      FieldName = 'Code'
      Size = 50
    end
    object FromOrganizationsName_Semat: TWideStringField
      FieldName = 'Name_Semat'
      ReadOnly = True
      Size = 151
    end
  end
  object DFromOrganizations: TDataSource [14]
    DataSet = FromOrganizations
    Left = 208
    Top = 152
  end
  object QrWorkGroupOrg: TADOQuery [15]
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_WorkGroupID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select * '
      'From WorkGroupOrg'
      'Where WorkGroupID = :Pa_WorkGroupID')
    Left = 552
    Top = 104
    object QrWorkGroupOrgWorkGroupOrgID: TAutoIncField
      FieldName = 'WorkGroupOrgID'
      ReadOnly = True
    end
    object QrWorkGroupOrgWorkGroupID: TIntegerField
      FieldName = 'WorkGroupID'
    end
    object QrWorkGroupOrgFromOrgID: TIntegerField
      FieldName = 'FromOrgID'
    end
  end
  object DSWorkGroupOrg: TDataSource [16]
    AutoEdit = False
    DataSet = QrWorkGroupOrg
    Left = 552
    Top = 152
  end
  object SPWorkGroup: TADOStoredProc [17]
    Connection = Dm.YeganehConnection
    ProcedureName = 'Sp_Select_WorkGroup;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@UserID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 437
    Top = 104
    object SPWorkGroupWorkGroupID: TAutoIncField
      FieldName = 'WorkGroupID'
      ReadOnly = True
    end
    object SPWorkGroupTitle: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Title'
      Size = 50
    end
    object SPWorkGroupDescript: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Descript'
      Size = 300
    end
  end
  object DSWorkGroup: TDataSource [18]
    AutoEdit = False
    DataSet = SPWorkGroup
    Left = 437
    Top = 152
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 464
    Top = 420
    inherited wordMenuItem: TMenuItem
      OnClick = nil
    end
    inherited ExcelMenuItem: TMenuItem
      OnClick = nil
    end
    inherited PrintMenuItem: TMenuItem
      OnClick = nil
    end
    inherited TextMenuItem: TMenuItem
      OnClick = nil
    end
    inherited CustomMenuItem: TMenuItem
      OnClick = nil
    end
  end
  object DSGet_RecommiteJpgFile: TDataSource
    DataSet = Get_RecommiteJpgFile
    Left = 322
    Top = 152
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 1500
    OnTimer = Timer1Timer
    Left = 388
    Top = 319
  end
  object PopupMenu1: TPopupMenu
    Left = 680
    Top = 200
    object N4: TMenuItem
      Action = EditSelectAll1
    end
    object N1: TMenuItem
      Action = EditCut1
    end
    object N2: TMenuItem
      Action = EditCopy1
    end
    object N5: TMenuItem
      Action = EditPaste1
    end
    object N6: TMenuItem
      Action = EditUndo1
    end
    object N3: TMenuItem
      Action = EditDelete1
    end
  end
  object QCheckAccess: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      '')
    Left = 292
    Top = 329
  end
  object CheckAccessForErja: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'CheckAccessForErja;1'
    Parameters = <
      item
        Name = '@FromOrgID'
        DataType = ftInteger
        Value = Null
      end
      item
        Name = '@ToOrgID'
        DataType = ftInteger
        Value = Null
      end>
    Left = 140
    Top = 336
    object CheckAccessForErjaResult: TIntegerField
      FieldName = 'Result'
    end
  end
end
