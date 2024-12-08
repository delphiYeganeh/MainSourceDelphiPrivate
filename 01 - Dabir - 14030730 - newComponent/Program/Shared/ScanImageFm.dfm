inherited FmScanImage: TFmScanImage
  Tag = 7
  Left = 475
  Top = 194
  Align = alClient
  BorderIcons = [biSystemMenu]
  Caption = #1575#1587#1705#1606' '#1608' '#1606#1605#1575#1610#1588' '#1578#1589#1575#1608#1610#1585
  ClientHeight = 584
  ClientWidth = 1105
  OldCreateOrder = True
  Position = poDesktopCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMain: TPanel [0]
    Left = 0
    Top = 0
    Width = 1105
    Height = 584
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel1: TPanel
      Left = 1
      Top = 34
      Width = 1103
      Height = 52
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        1103
        52)
      object Label2: TLabel
        Left = 576
        Top = 7
        Width = 55
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585' : ('#1662#1610#1705#1587#1604')'
        WordWrap = True
      end
      object SBGoToPAge: TAdvGlowButton
        Left = 264
        Top = 4
        Width = 137
        Height = 22
        Cursor = crHandPoint
        Hint = #1585#1601#1578#1606' '#1576#1607' '#1589#1601#1581#1607' '#1605#1608#1585#1583' '#1606#1592#1585
        Anchors = [akTop, akRight]
        Caption = #1585#1601#1578#1606' '#1576#1607' '#1589#1601#1581#1607' '#1605#1608#1585#1583' '#1606#1592#1585
        ImageIndex = 0
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          00000003000000000000000000000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB7B7B
          314860FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFB67B7B31608F0B73E05084B6FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB67B7B31608F1173EA
          38A1FF31A1FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFB67B7B31608F0B6AE038A1FF38A1FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFFF00FFFF00FFAB7B7B31608F0B73E031A1FF38A1FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC08F84CAA18FB68F84986058FF00
          FF405058116AD431A1FF38A1FFFF00FFFF00FFFF00FFFF00FFFF00FFC0988FE0
          D4ABFFFFCAFFFFCAFFFFCAF4E0C0A184738F7B73A1CAEA38ABFFFF00FFFF00FF
          FF00FFFF00FFFF00FFA17373F4F4EAFFFFEAFFFFD4FFFFD3FFFFD3FFFFD3FFEA
          B6CAA18FC0A1A1FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4CAABFFFFFFFF
          FFD4FFFFD4FEFED3FFFFD3FFFED3FEFED3F4D4A1B67B73FF00FFFF00FFFF00FF
          FF00FFFF00FFB6847BF4EACAFFFFD4FEFED3FEFED3FEFED3FEFED3FFFED3FEFE
          D3FFE098D4AB8FFF00FFFF00FFFF00FFFF00FFFF00FFB69884F4F4CAFFFFD4FE
          FED3FEFED3FEFED3FEFED3FEFED3FEFED3FFD498E0B698FF00FFFF00FFFF00FF
          FF00FFFF00FFB68F84F4EACAFFFFD4FFFFD4FFFED3FEFED3FFFED3FEFED3FEFE
          D3FFE0A1D4AB98FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFE0D4ABFFFFD3FF
          FED3FFFED3FEFED3FEFED3FEFED3FFEAB6FFEAB6B6847BFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFAB8473FFF4B6FFFED3FEFED3FEFED3FEFED3FFF4EAFFFF
          FFD4B698FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC09884F4
          D4A1FFE0A1FFE098FFEAB6F4EACACAABABFF00FFFF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFD4AB8FD4AB8FC09884C0987BFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnClick = SBGoToPAgeClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object SBReplacePic: TAdvGlowButton
        Left = 142
        Top = 4
        Width = 121
        Height = 22
        Cursor = crHandPoint
        Hint = #1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607
        Anchors = [akTop, akRight]
        Caption = #1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1607
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D260400000000000036000000280000001200000012000000010018000000
          0000F0030000120B0000120B00000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4B000000000000
          0F0F0FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B4B4B0000000000000F0F0FFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFF6F6F6F3333333333333F3F3FFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF4B4B4B0000000000000F0F0FFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF4B4B4B0000000000000F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4B
          4B4B0000000000000F0F0FFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF4B4B4B00
          00000000000F0F0FFFFFFFFFFFFFFFFFFFDEDEDECCCCCC3C3C3C000000000000
          0C0C0CCCCCCCD2D2D2FFFFFF0000FFFFFFFFFFFF4B4B4B0000000000000F0F0F
          FFFFFFFFFFFFFFFFFFC9C9C90606060000000000000000000000000000009393
          93FFFFFF0000FFFFFFFFFFFF4B4B4B0000000000000F0F0FFFFFFFFFFFFFFFFF
          FFFFFFFF909090000000000000000000000000575757FFFFFFFFFFFF0000DEDE
          DECCCCCC3C3C3C0000000000000C0C0CCCCCCCD2D2D2FFFFFFFFFFFFFFFFFF54
          5454000000000000272727F0F0F0FFFFFFFFFFFF0000C9C9C906060600000000
          0000000000000000000000939393FFFFFFFFFFFFFFFFFFF0F0F0242424060606
          CFCFCFFFFFFFFFFFFFFFFFFF0000FFFFFF909090000000000000000000000000
          575757FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCF9F9F9FFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFF545454000000000000272727F0F0F0FFFFFFFFFF
          FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FFFF
          FFFFFFFFF0F0F0242424060606CFCFCFFFFFFFFFFFFFFFFFFF0000FFFA5241FA
          5241FA5241FA5241FA5241FA5241FA52410000FF00000000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FFFA5241FA5241FA5241FA5241
          FA5241FA5241FA52410000FF00000000FFFA5241FA5241FA5241FA5241FA5241
          FA5241FA52410000FF0000FFFA5241FA5241FA5241FA5241FA5241FA5241FA52
          410000FF00000000FFFA5241FA5241FA5241FA5241FA5241FA5241FA52410000
          FF0000FFFA5241FA5241FA5241FA5241FA5241FA5241FA52410000FF00000000
          FFFA5241FA5241FA5241FA5241FA5241FA5241FA52410000FF0000FFFA5241FA
          5241FA5241FA5241FA5241FA5241FA52410000FF00000000FFFA5241FA5241FA
          5241FA5241FA5241FA5241FA52410000FF0000FFFA5241FA5241FA5241FA5241
          FA5241FA5241FA52410000FF00000000FF0000FF0000FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnClick = SBReplacePicClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object SpeedButton7: TAdvGlowButton
        Left = -16
        Top = 4
        Width = 157
        Height = 22
        Cursor = crHandPoint
        Hint = #1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1575#1578' '#1575#1586' '#1575#1576#1578#1583#1575
        Anchors = [akTop, akRight]
        Caption = #1575#1589#1604#1575#1581' '#1588#1605#1575#1585#1607' '#1589#1601#1581#1575#1578' '#1575#1586' '#1575#1576#1578#1583#1575
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424DE60400000000000036000000280000001400000014000000010018000000
          0000B004000000000000000000000000000000000000D8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECBF5E62BB4549BB4549BB4549
          BB4549BB4549BB4549BB4549BB4549BB4549BB4549BB4549BB4549BB4549CA9B
          9ED8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB52529CFB6B9CFB6B9CFB6B9CFB6B9CF
          B6B9CFB6B9CFB6B9CFB6B9CFB6B9CFB6B9CFB6B9CFB6B9C3777ABE575BD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECB5292DD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECB5292DD8E9ECD8E9ECD8E9ECD7E1E4C47B7FB83539B5282C
          BF5E61D4D4D7D8E9ECD8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECB5292DD8E9ECD8E9ECD8E6E9B93B3EAF0509B11216B42024AF0509B2
          1519D3CBCFD8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          B5292DD8E9ECD8E9ECC68689AF0509C06366D7E4E7D8E9ECCBA3A7AF080CBC4B
          4ED8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB5292DD8
          E9ECD8E9ECBC4B4EAF080CD7E4E7D8E9ECD8E9ECD8E9ECBC4D51AF080CD8E9EC
          D8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB5292DD8E9ECD8E9
          ECB73336B73336D8E9ECD8E9ECD8E9ECD8E9ECBF6064AF0509D8E9ECD8E9ECC9
          979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB5292DD8E9ECD8E9ECB73336
          B73336D8E9ECD8E9ECD8E9ECD8E9ECBF6064AF0509D8E9ECD8E9ECC9979BBE57
          5BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB5292DD8E9ECCFB6B9B5282CB5282CCE
          B3B7D8E9ECD8E9ECD8E9ECBF6064AF0509D8E9ECD8E9ECC9979BBE575BD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECB5292DD8E9ECC06366AF0509AF0509BD5559D8E9
          ECD8E9ECD8E9ECBF6064AF0509D8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECB5292DD8E9ECD5D9DCB11216B00D11D3CED1D8E9ECD8E9EC
          D8E9ECD1C1C4CCA6A9D8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECB5292DD8E9ECD8E9ECC68387C37679D8E9ECD8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          B5292DD8E9ECD8E9ECD8E6E9D7E1E4D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECC9979BBE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECB5282BD4
          CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2D4CFD2
          D4CFD2C6878ABE575BD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECBB4549B62C2FB62C
          2FB62C2FB62C2FB62C2FB62C2FB62C2FB62C2FB62C2FB62C2FB62C2FB62C2FB6
          2C2FC78A8ED8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          D8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9
          ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8
          E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9ECD8E9EC
          D8E9ECD8E9EC}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnClick = SpeedButton7Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object DBN1: TDBNavigator
        Tag = 16
        Left = 646
        Top = 0
        Width = 457
        Height = 52
        Cursor = crHandPoint
        DataSource = DSLetterData
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Align = alRight
        Anchors = [akTop, akRight]
        Flat = True
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 0
        TabStop = True
        BeforeAction = DBN1BeforeAction
        OnClick = DBN1Click
      end
      object DBColor: TDBEdit
        Left = 8
        Top = 29
        Width = 41
        Height = 21
        DataSource = DSSelImage
        TabOrder = 1
        Visible = False
        OnChange = DBColorChange
      end
      object Edit2: TCurvyEdit
        Left = 489
        Top = 5
        Width = 81
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 2
        TabStop = False
        Version = '1.1.3.0'
        Controls = <>
        Text = '0*0'
      end
      object lblCount: TCurvyEdit
        Left = 409
        Top = 5
        Width = 73
        Height = 21
        Anchors = [akTop, akRight]
        Rounding = 3
        TabOrder = 3
        TabStop = False
        Version = '1.1.3.0'
        Controls = <>
        ReadOnly = True
      end
    end
    object Panel2: TPanel
      Left = 994
      Top = 86
      Width = 110
      Height = 455
      Align = alRight
      ParentColor = True
      TabOrder = 1
      DesignSize = (
        110
        455)
      object Bevel5: TBevel
        Left = 7
        Top = 179
        Width = 95
        Height = 3
      end
      object Bevel4: TBevel
        Left = 7
        Top = 106
        Width = 95
        Height = 3
      end
      object Bevel6: TBevel
        Left = 7
        Top = 284
        Width = 95
        Height = 3
      end
      object SBSettings: TAdvGlowButton
        Left = 8
        Top = 249
        Width = 94
        Height = 28
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1578#1606#1592#1610#1605#1575#1578
        ImageIndex = 116
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Spacing = -1
        TabOrder = 8
        OnClick = SBSettingsClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object SBDelAllData: TAdvGlowButton
        Left = 8
        Top = 292
        Width = 94
        Height = 37
        Cursor = crNo
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601' '#1578#1605#1575#1605' '#1578#1589#1575#1608#1610#1585
        ImageIndex = 115
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 9
        OnClick = SBDelAllDataClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        Layout = blGlyphTop
      end
      object xpBitBtn2: TAdvGlowButton
        Tag = 8
        Left = 8
        Top = 218
        Width = 94
        Height = 28
        Cursor = crHandPoint
        Action = Aprintt
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 112
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BBScan: TAdvGlowButton
        Tag = 2
        Left = 7
        Top = 9
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Action = Scan
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 111
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BBSaveToFile: TAdvGlowButton
        Tag = 9
        Left = 7
        Top = 113
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Action = SaveAs
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 36
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BBSaveAllToFiles: TAdvGlowButton
        Tag = 13
        Left = 7
        Top = 144
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Action = ASaveAll
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607' '#1578#1605#1575#1605' '#1578#1589#1575#1608#1610#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 9
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BBOpenFile: TAdvGlowButton
        Tag = 4
        Left = 7
        Top = 72
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Action = OpenFile
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 26
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BitBtn1: TAdvGlowButton
        Tag = 2
        Left = 7
        Top = 41
        Width = 95
        Height = 28
        Cursor = crHandPoint
        Action = ActSelScanner
        Anchors = [akTop, akRight]
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object BBAllScanImage: TAdvGlowButton
        Left = 8
        Top = 187
        Width = 94
        Height = 28
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1578#1582#1575#1576' '#1578#1589#1608#1610#1585
        ImageIndex = 56
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        TabOrder = 6
        OnClick = BBAllScanImageClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object PanelRecommite: TPanel
        Left = 1
        Top = 341
        Width = 108
        Height = 112
        TabOrder = 7
        object BitBtn4: TAdvGlowButton
          Tag = 10
          Left = 5
          Top = 11
          Width = 95
          Height = 28
          Cursor = crHandPoint
          Caption = #1580#1608#1575#1576' '#1606#1575#1605#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 110
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn4Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BitBtn5: TAdvGlowButton
          Tag = 11
          Left = 5
          Top = 41
          Width = 95
          Height = 28
          Cursor = crHandPoint
          Caption = #1575#1585#1580#1575#1593' '#1606#1575#1605#1607
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 86
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = BitBtn5Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
        object BitBtn6: TAdvGlowButton
          Tag = 12
          Left = 5
          Top = 71
          Width = 95
          Height = 28
          Cursor = crHandPoint
          Caption = #1575#1602#1583#1575#1605' '#1608' '#1576#1575#1610#1711#1575#1606#1610
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 29
          Images = Dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = BitBtn6Click
          Appearance.ColorChecked = 16111818
          Appearance.ColorCheckedTo = 16367008
          Appearance.ColorDisabled = 15921906
          Appearance.ColorDisabledTo = 15921906
          Appearance.ColorDown = 16111818
          Appearance.ColorDownTo = 16367008
          Appearance.ColorHot = 16117985
          Appearance.ColorHotTo = 16372402
          Appearance.ColorMirrorHot = 16107693
          Appearance.ColorMirrorHotTo = 16775412
          Appearance.ColorMirrorDown = 16102556
          Appearance.ColorMirrorDownTo = 16768988
          Appearance.ColorMirrorChecked = 16102556
          Appearance.ColorMirrorCheckedTo = 16768988
          Appearance.ColorMirrorDisabled = 11974326
          Appearance.ColorMirrorDisabledTo = 15921906
        end
      end
    end
    object Panel3: TPanel
      Left = 293
      Top = 86
      Width = 30
      Height = 455
      Align = alLeft
      ParentColor = True
      TabOrder = 2
      object YRotateLabel1: TYRotateLabel
        Left = 1
        Top = 1
        Width = 28
        Height = 137
        Cursor = crHandPoint
        Angle = ag90
        Caption = '   '#1575#1576#1586#1575#1585#1607#1575#1610' '#1608#1610#1585#1575#1610#1588' '#1578#1589#1608#1610#1585'   '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Align = alTop
        OnClick = YRotateLabel1Click
      end
      object YRotateLabel2: TYRotateLabel
        Left = 1
        Top = 138
        Width = 28
        Height = 89
        Cursor = crHandPoint
        Angle = ag90
        Caption = '   '#1711#1585#1608#1607' '#1576#1606#1583#1610' '#1576#1575' '#1585#1606#1711'   '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Visible = False
        Align = alTop
        OnClick = YRotateLabel2Click
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 541
      Width = 1103
      Height = 42
      Align = alBottom
      Anchors = [akRight, akBottom]
      ParentColor = True
      TabOrder = 3
      DesignSize = (
        1103
        42)
      object LabelZoom: TLabel
        Left = 743
        Top = 13
        Width = 45
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1576#1586#1585#1711#1606#1605#1575#1610#1610
      end
      object xpBitBtn1: TAdvGlowButton
        Left = 9
        Top = 8
        Width = 75
        Height = 26
        Cursor = crHandPoint
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = xpBitBtn1Click
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object FitToPage: TAdvGlowButton
        Left = 997
        Top = 8
        Width = 92
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1589#1601#1581#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D8E0200000000000036000000280000000D0000000F000000010018000000
          00005802000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFF858585F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
          FFFFFFFFFFFFFFFFFFFF9A9A9A777777FFFFFFFFFFFFAEAEAE848484FFFFFFFF
          FFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF0F0F07C7C7C8989897D7D7D7070
          70DADADAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFAC7E76AC7E76A88B86B09B99
          727170787878F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFAC7E76ED
          C8C6DBB3B0B7948FB18781AD8079B58F89C8ADA8DDCFCCF7F2F1FFFFFF00FFFF
          FFFFFFFFAC7E76FFE6E6FFDDDDFFD3D3FFCCCCF9BBBAE7A8A5BDA09CB18C87AC
          9591FFFFFF00FFFFFFFFFFFFAC7E76FFEDEDFFE6E6FFDDDDFFD3D3FFCCCCFFC0
          C0FFB9B9FFABABAC7E76FFFFFF00FFFFFFFFFFFFAC7E76FFFBFBFFEDEDFFE6E6
          FFDDDDFFD3D3FFCCCCFFC0C0FFB9B9AC7E76FFFFFF00FFFFFFFFFFFFAC7E76FF
          FFFFFFFBFBFFEDEDFFE6E6FFDDDDFFD3D3FFCCCCFFBEBEAC7E76FFFFFF00FFFF
          FFFFFFFFAC7E76FFFFFFFFFFFFFFFBFBFFEDEDFFE6E6FFDDDDFFD3D3FFCCCCAC
          7E76FFFFFF00FFFFFFFFFFFFAC7E76FFE8E8FFFFFFFFFFFFFFFBFBFFEDEDFFE6
          E6FFDDDDFFD3D3AC7E76FFFFFF00F0F0F08787878786868B87878F88889C8F8F
          A69696B8A2A2C0A9A9D2B7B7DCC1C1AA7E77FFFFFF00B9B9B9E0E0E0EAEAEAD8
          D8D8D8D8D8C6C6C6B1B1B1A3A2A29F9D9D928F8F8F8E8E87868596969600FFFF
          FFB9B9B9B9B9B9B9B9B9B9B9B9D0D0D0DDDDDDC1C1C1C2C2C2E2E2E2EAEAEAEB
          EBEBB9B9B900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDCFCFCFB9B9
          B9B9B9B9B9B9B9B9B9B9FFFFFF00}
        TabOrder = 1
        OnClick = FitToPageClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btnWidthSize: TAdvGlowButton
        Left = 903
        Top = 8
        Width = 92
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1593#1585#1590' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D460200000000000036000000280000000E0000000C000000010018000000
          00001002000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFF
          FFFFE0C0B0993401993401A04111F3E6E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9B3A0A04111EDDAD0FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAC7E76AC7E76AC7E76AC7E76
          AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76FFFFFFFFFFFF0000EDDAD0FFFFFF
          AC7E7651D48151D48151D48151D48151D48151D48151D48151D481AC7E76FFFF
          FFEDDAD00000993401EDDAD0AC7E763DB9613DB9613DB9613DB9613DB9613DB9
          613DB96142BB65AC7E76EDDAD0A041110000993401A64D21AC7E7647AB5C299D
          41299D4147AB5CF3FAF547AB5C6CBC7DF9FCFAAC7E76A64D2199340100009934
          01EDDAD0AC7E76EBEFDE1B852636923DF8F6EAFFF9F0FFF9F0FFF9F0FFF9F0AC
          7E76EDDAD0A041110000EDDAD0FFFFFFAC7E76FFE2B5DCD19BF8DEB0FFE2B5FF
          E2B5FFE2B5FFE2B5FFE2B5AC7E76FFFFFFEDDAD00000FFFFFFFFFFFFAC7E76FF
          CA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AAC7E76FFFFFFFFFFFF
          0000FFFFFFFFFFFFAC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76
          AC7E76AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDDAD0
          993401EDDAD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFFFFFFFFE0C0B0993401993401993401F3E6E0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000}
        TabOrder = 2
        OnClick = btnWidthSizeClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object btnActualSize: TAdvGlowButton
        Left = 810
        Top = 8
        Width = 92
        Height = 25
        Cursor = crHandPoint
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1608#1575#1602#1593#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D460200000000000036000000280000000E0000000C000000010018000000
          00001002000000000000000000000000000000000000993401993401B95401FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB95401993401993401
          0000A04111A64D21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFA64D219934010000B95401FFFFFFAC5A31AC7E76AC7E76AC7E76
          AC7E76AC7E76AC7E76AC7E76AC7E76AC5A31FFFFFFB954010000FFFFFFFFFFFF
          AC7E7651D48151D48151D48151D48151D48151D48151D48151D481AC7E76FFFF
          FFFFFFFF0000FFFFFFFFFFFFAC7E763DB9613DB9613DB9613DB9613DB9613DB9
          613DB96142BB65AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E7647AB5C299D
          41299D4147AB5CF3FAF547AB5C6CBC7DF9FCFAAC7E76FFFFFFFFFFFF0000FFFF
          FFFFFFFFAC7E76EBEFDE1B852636923DF8F6EAFFF9F0FFF9F0FFF9F0FFF9F0AC
          7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E76FFE2B5DCD19BF8DEB0FFE2B5FF
          E2B5FFE2B5FFE2B5FFE2B5AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E76FF
          CA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AAC7E76FFFFFFFFFFFF
          0000B95401FFFFFFAC5A31AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76
          AC7E76AC5A31FFFFFFB954010000993401A64D21FFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD5A319934010000993401993401
          B95401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB954019934
          019934010000}
        TabOrder = 3
        OnClick = btnActualSizeClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
    end
    object Panel5: TPanel
      Left = 323
      Top = 86
      Width = 671
      Height = 455
      Align = alClient
      ParentColor = True
      TabOrder = 4
      object ImageEnView1: TImageEnView
        Left = 16
        Top = 184
        Width = 105
        Height = 105
        Background = clBtnFace
        ParentCtl3D = False
        LegacyBitmap = True
        EnableInteractionHints = True
        Visible = False
        TabOrder = 4
      end
      object ImageEnMView1: TImageEnMView
        Left = 17
        Top = 40
        Width = 136
        Height = 393
        Background = clBtnFace
        ParentCtl3D = False
        StoreType = ietNormal
        ThumbWidth = 70
        ThumbHeight = 70
        HorizBorder = 4
        VertBorder = 4
        TextMargin = 0
        OnImageSelect = ImageEnMView1ImageSelect
        GridWidth = 1
        SelectionWidth = 3
        SelectionColor = clRed
        ImageCacheSize = 100
        Style = iemsACD
        ThumbnailsBackground = clBtnFace
        ThumbnailsBackgroundSelected = clBtnFace
        EnableMultiSelect = True
        MultiSelectionOptions = []
        ThumbnailsBorderWidth = 1
        ThumbnailsBorderColor = clYellow
        DefaultBottomText = iedtNone
        Visible = False
        TabOrder = 1
      end
      object ImageEnDBVect1: TImageEnDBVect
        Left = -2
        Top = -95
        Width = 612
        Height = 455
        Background = clBtnFace
        Ctl3D = False
        ParentCtl3D = False
        LegacyBitmap = True
        OnViewChange = ImageEnDBVect1ViewChange
        MouseInteract = [miZoom, miScroll]
        BackgroundStyle = iebsChessboard
        EnableInteractionHints = True
        Visible = False
        TabOrder = 0
        OnMouseDown = ImageEnDBVect1MouseDown
        OnMouseMove = ImageEnDBVect1MouseMove
        OnMouseUp = ImageEnDBVect1MouseUp
        OnKeyUp = ImageEnDBVect1KeyUp
        OnNewObject = ImageEnDBVect1NewObject
        ObjUndoLimit = 10
        ObjAutoUndo = True
        DataField = 'Image'
        DataSource = DSSelImage
        DataFieldImageFormat = ifJpeg
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clWindowText
        PreviewFont.Height = -13
        PreviewFont.Name = 'Tahoma'
        PreviewFont.Style = []
      end
      object ImageEnDBView1: TImageEnDBView
        Left = 161
        Top = 57
        Width = 612
        Height = 455
        Background = clBtnFace
        ParentCtl3D = False
        BorderStyle = bsNone
        LegacyBitmap = True
        OnViewChange = ImageEnDBView1ViewChange
        OnImageChange = ImageEnDBView1ImageChange
        MouseInteract = [miZoom, miScroll]
        OnMouseWheel = ImageEnDBView1MouseWheel
        EnableInteractionHints = True
        FlatScrollBars = True
        TabOrder = 2
        DataField = 'Image'
        DataSource = DSSelImage
        DataFieldImageFormat = ifTIFF
        JpegQuality = 200
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clWindowText
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object ImgScan: TImgScan
          Left = 280
          Top = 120
          Width = 32
          Height = 32
          ControlData = {
            000001004F0300004F03000000000000000B633A5C74656D702E746966010000
            000100FF7F0000000000000000010006000600400000000102000000C84201}
        end
        object ImgScan1: TImgScan
          Left = 288
          Top = 208
          Width = 32
          Height = 32
          ControlData = {
            000001004F0300004F030000000000000000010000000100FF7F000001000000
            0000010006000600400000000000000000C84201}
        end
      end
      object ImageEnVect1: TImageEnVect
        Left = 312
        Top = 96
        Width = 561
        Height = 425
        Background = clBtnFace
        ParentCtl3D = False
        LegacyBitmap = True
        OnViewChange = ImageEnVect1ViewChange
        MouseInteract = [miZoom, miScroll]
        BackgroundStyle = iebsChessboard
        EnableInteractionHints = True
        Visible = False
        TabOrder = 3
        OnMouseDown = ImageEnVect1MouseDown
        OnMouseMove = ImageEnVect1MouseMove
        OnKeyUp = ImageEnVect1KeyUp
        OnNewObject = ImageEnVect1NewObject
      end
    end
    object Panel6: TPanel
      Left = 146
      Top = 86
      Width = 147
      Height = 455
      Align = alLeft
      ParentColor = True
      TabOrder = 5
      object PageControl1: TPageControl
        Left = 1
        Top = 1
        Width = 145
        Height = 453
        ActivePage = BrushTab
        Align = alClient
        TabOrder = 0
        object BrushTab: TTabSheet
          Caption = #1575#1593#1605#1575#1604' '#1578#1594#1610#1610#1585#1575#1578' '#1585#1608#1610' '#1578#1589#1575#1608#1610#1585'    '
          DesignSize = (
            137
            425)
          object SpeedButton12: TSpeedButton
            Left = 72
            Top = 152
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1670#1585#1582#1588' 90- '#1583#1585#1580#1607
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000120B0000120B00000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCCCC00CCCC
              CC00CCCCCC00CCCCCC00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF0099330000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF009933000099330000FFFFFF00FFFF
              FF00CCCCCC00CCCCCC00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CC99660099330000993300009933000099330000FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF0099330000FFFFFF009933000099330000FFFFFF00FFFF
              FF00CCCCCC00CCCCCC00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF0099330000FFFFFF0099330000FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF0099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00CCCC
              CC00CCCCCC00CCCCCC00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF0099330000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CC996600993300009933000099330000993300009933
              0000FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton12Click
          end
          object SpeedButton13: TSpeedButton
            Left = 104
            Top = 152
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1670#1585#1582#1588' 90 '#1583#1585#1580#1607
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CCCCCC00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
              0000FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CCCCCC00CCCCCC00FFFFFF00FFFFFF00993300009933
              0000FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF0099330000993300009933
              000099330000CC996600FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CCCCCC00CCCCCC00FFFFFF00FFFFFF00993300009933
              0000FFFFFF0099330000FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF009933
              0000FFFFFF0099330000FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00CCCCCC00CCCCCC00CCCCCC00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0099330000FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF0099330000FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF009933000099330000993300009933
              000099330000CC996600FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            Spacing = 0
            OnClick = SpeedButton13Click
          end
          object SpeedButton9: TSpeedButton
            Left = 40
            Top = 152
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1670#1585#1582#1588' 180 '#1583#1585#1580#1607
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              20000000000000040000120B0000120B00000000000000000000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF0099330000FEFDFC00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFEFE0099330000FEFDFD00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFEFE0099330000FCF9F800FDFCFB00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF0099330000FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600993300009933000099330000993300009A350200FFFFFF00FFFF
              FF00FFFFFF00FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FEFDFD00993300009933000099340100FFFEFE00FFFFFF00FEFD
              FC0099330000FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FEFDFC0099330000FFFFFF00FFFFFF00FEFDFD009933
              00009933000099330000FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00993300009933
              0000993300009933000099330000CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0099330000FFFFFF00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FDFCFB00FDFA
              F90099330000FEFDFD00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0099330000FEFDFD00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0099330000FEFDFC00FFFFFF00CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00CC996600CC996600CC996600CC996600CC996600CC996600CC996600CC99
              6600CC996600CC996600CC996600CC996600FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton9Click
          end
          object SpeedButton4: TSpeedButton
            Left = 104
            Top = 184
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1583#1585#1580' '#1705#1575#1583#1585' '#1576#1585' '#1585#1608#1610' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
            Glyph.Data = {
              42030000424D42030000000000003600000028000000110000000F0000000100
              1800000000000C03000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EE00FBF2EEFBF2EEB95401B95401B95401B95401B95401B95401B95401B95401
              B95401B95401B95401B95401B95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401FB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              B95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401FBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB95401FBF2EEFBF2EE00FBF2
              EEFBF2EEB95401FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEB95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401FBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB95401FB
              F2EEFBF2EE00FBF2EEFBF2EEB95401FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB95401FBF2EEFBF2EE00FBF2EEFBF2EE
              B95401FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEB95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401FBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB95401FBF2EEFBF2
              EE00FBF2EEFBF2EEB95401FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEB95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401FB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              B95401FBF2EEFBF2EE00FBF2EEFBF2EEB95401B95401B95401B95401B95401B9
              5401B95401B95401B95401B95401B95401B95401B95401FBF2EEFBF2EE00FBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE00FBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EE00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton4Click
          end
          object SpeedButton6: TSpeedButton
            Left = 8
            Top = 184
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1581#1584#1601' '#1605#1581#1578#1608#1610#1575#1578' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
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
            OnClick = SpeedButton6Click
          end
          object SpeedButton11: TSpeedButton
            Left = 72
            Top = 184
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1583#1585#1580' '#1588#1576#1585#1606#1711' '#1576#1585' '#1585#1608#1610' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEB95401
              B95401B95401B95401B95401B95401B95401B95401B95401B95401B95401B954
              01B95401FBF2EEFBF2EEFBF2EEB95401CC6701CC6701CC6701CC6701CC6701CC
              6701CC6701CC6701CC6701CC6701CC6701B95401FBF2EEFBF2EEFBF2EEB95401
              CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC67
              01B95401FBF2EEFBF2EEFBF2EEB95401D16C01CC6701CC6701CC6701CC6701CC
              6701CC6701CC6701CC6701CC6701CC6701B95401FBF2EEFBF2EEFBF2EEB95401
              DD7801D67101CE6901CC6701CC6701CC6701CC6701CC6701CC6701CC6701CC67
              01B95401FBF2EEFBF2EEFBF2EEB95401E88301E17D01DA7501D36E01CC6701CC
              6701CC6701CC6701CC6701CC6701CC6701B95401FBF2EEFBF2EEFBF2EEB95401
              F48E01EC8701E58101DE7A01D77201CF6A01CC6701CC6701CC6701CC6701CC67
              01B95401FBF2EEFBF2EEFBF2EEB95401FF9901F99301F08B01E98401E27E01DB
              7601D46F01CD6801CC6701CC6701CC6701B95401FBF2EEFBF2EEFBF2EEB95401
              FFA31EFF9B06FD9701F58F01EE8801E78201DF7B01D97401D06B01CC6701CC67
              01B95401FBF2EEFBF2EEFBF2EEB95401FFB24CFFA82EFFA014FF9901F99301F2
              8C01EB8501E47F01DC7701D67101CE6901B95401FBF2EEFBF2EEFBF2EEB95401
              B95401B95401B95401B95401B95401B95401B95401B95401B95401B95401B954
              01B95401FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton11Click
          end
          object SpeedButton10: TSpeedButton
            Left = 8
            Top = 216
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1578#1594#1610#1610#1585' '#1601#1608#1606#1578' '#1583#1585#1580' '#1605#1578#1606
            Anchors = [akTop, akRight]
            Caption = 'F'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -16
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton10Click
          end
          object Label1: TLabel
            Left = 57
            Top = 89
            Width = 76
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1576#1593#1575#1583' '#1602#1604#1605' / '#1662#1575#1705#1606' :'
          end
          object Label7: TLabel
            Left = 57
            Top = 118
            Width = 74
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1585#1606#1711' '#1602#1604#1605' / '#1662#1575#1705#1606' :'
          end
          object SBBrush: TSpeedButton
            Left = 43
            Top = 6
            Width = 26
            Height = 29
            Cursor = crHandPoint
            Hint = #1602#1604#1605' '#1610#1575' '#1662#1575#1705#1606
            Anchors = [akTop, akRight]
            GroupIndex = 2
            Flat = True
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
          object SBZoom: TSpeedButton
            Left = 74
            Top = 6
            Width = 26
            Height = 29
            Cursor = crHandPoint
            Hint = #1576#1586#1585#1711#1606#1605#1575#1610#1610
            Anchors = [akTop, akRight]
            GroupIndex = 2
            Down = True
            Flat = True
            Glyph.Data = {
              22050000424D2205000000000000360000002800000014000000150000000100
              180000000000EC04000000000000000000000000000000000000FBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEF1E9E6E1D5
              D3FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEDED7D4687180817BA0D2B6BC
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EED5DBE048A2F04C75C1857EA4D6B8BBFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEF0EEF073C5FC45A5FA4C75C1857EA4D6B8BBFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEF0EEF073C5FC45A5FA4C75C1857EA4D6B8BBFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEF0EEF073C5FC45A5FA4C75C18780A4EFD9D4EBCCC0DD
              B3A5DEAF9DE0B6A7EBCCC0F5E3DBFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEF0EEF073C5FC4FA9F8A09497D8AFA1D8AD9AE0BD9FEDDD
              BDEDDBBEDBB6A6DCB1A4F0DAD1FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEF0EEF0D6D5D9D2AA9CE4B599FFF0C0FFFFD1FFFFD8FFFFE0
              FFFFEEECDDD0DCB1A2F5E3DBFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEE9CABEDDAD9AFFF3C6FFE8B6F2E6B7C5742DFFFFF8FFFFFEFF
              FFFDD9B7A2E5C5B8FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEE0B5A6F1D3B2FFECB9F2CD9BF1D09EC5742DEADCCDEADCCDFFFFE7F4E8
              C4DBAF9FFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEDE
              AE9DFEF1BFFFE1AECC6701C5742DC5742DC5742DC5742DFFFFDAFEFDD1DDAD9B
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEDFB3A4F6E4
              B9FFEBBEF4D191F4D191C5742DF4DDA9FAEEBFFFFFCEF9E7BEDAAB9AFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEE7C4BAE4C1A7FFFDE5
              FFEED8F4D191C5742DFFF9C7FFF2C0FFF8C6E2BBA0DEB9AEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEF5E3DBD9AB9AF6EADEFFFFFFFF
              EBC9FFE8B8FFE2AFFFF1BEFADAACD9AA9AF5E3DBFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEEFD6CDDAAD9EEACEBBF9E9C5FEF0
              BEF9E5B8EBC4A3DCAD9CEED5CCFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEF5E3DBDDB7ACDAAB9ADDAD9BDAAE9E
              DFB8ADF1DED6FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2
              EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFB
              F2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EEFBF2EE
              FBF2EEFBF2EE}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBZoomClick
          end
          object SpeedButton3: TSpeedButton
            Left = 103
            Top = 6
            Width = 26
            Height = 29
            Cursor = crHandPoint
            Hint = #1575#1606#1578#1582#1575#1576' '#1575#1588#1610#1575#1610' '#1585#1608#1610' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
            GroupIndex = 2
            Flat = True
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
            OnClick = SpeedButton3Click
          end
          object Bevel2: TBevel
            Left = 6
            Top = 246
            Width = 127
            Height = 3
            Anchors = [akTop, akRight]
          end
          object Bevel1: TBevel
            Left = 6
            Top = 142
            Width = 127
            Height = 3
            Anchors = [akTop, akRight]
          end
          object Bevel3: TBevel
            Left = 10
            Top = 319
            Width = 121
            Height = 3
            Anchors = [akTop, akRight]
          end
          object SBResize: TSpeedButton
            Left = 104
            Top = 216
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1575#1589#1604#1575#1581' '#1575#1576#1593#1575#1583' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
            Glyph.Data = {
              FE040000424DFE04000000000000360000002800000012000000110000000100
              200000000000C8040000120B0000120B0000000000000000000000776A000077
              6A0000776A0000776A0000776A0000776A0000776A0000776A0000776A00EBF4
              F300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF0000776A000077DB000077DB000077DB000177DB000077DB000077D9000077
              DB0000776A00EBF4F300EBF4F300EBF4F300EBF4F300EBF4F300EBF4F300EBF4
              F300EBF4F300EBF4F30000776A000377DB000077EE000177EE000077EE000077
              ED000374EE000077D90000776A0000776A0000776A0000776A0000776A000077
              6A0000776A0000776A0000776A0000776A0000776A000078D9000078EE000077
              EE000078EC000077EC000077ED000077DB0000776A000077DB000178D9000077
              DB000077D9000077DB000078DB000077D9000077D90000776A0000776A000078
              DB000077EE000077EE000078EE000078EC000077EE000177DB0000776A000077
              DB000077EC000077EE000077ED000275EE000177EE000077EE000077DB000077
              6A0000776A000077DB000177EE000276EB000077EE000077EE000177EE000077
              DB0000776A000077DB000075EE000077EC000077EE000077ED000076ED000177
              EE000276DB0000776A0000776A000276DB000077EB000177EE000077EE000078
              EE000077EE000077DB0000776A000077DB000077EE000077ED000077EC000077
              EE000178EC000275EE000077DB0000776A0000776A000077DB000276DB000077
              DB000078DB000078D9000377DB000077DB0000776A000077DB000077EE000078
              ED000177EE000077EE000177EE000078EE000077DB0000776A0000776A000077
              6A0000776A0000776A0000776A0000776A0000776A0000776A0000776A000177
              DB000377EE000077EC000077EE000078EE000077EC000077EC000077DB000077
              6A00EBF4F300EBF4F30000776A000077D9000276DB000077DB000177DB000077
              DB000077DB000077DB000077EE000077EE000077EE000077EE000077EE000077
              EE000077DB0000776A00FFFFFF00EBF4F30000776A000077D9000077EE000078
              EC000077EE000077EE000077EE000077EE000077EE000077EE000077EE000077
              EE000077EE000077EE000077DB0000776A00FFFFFF00EBF4F30000776A000078
              DB000077EB000276EE000077ED000077EE000077EE000077EE000077EE000077
              EE000077EE000077EE000077EE000077EE000178D90000776A00FFFFFF00EBF4
              F30000776A000078D9000178ED000177EE000077EE000277EC000077EE000077
              EE000077EE000077EE000077EE000077EE000077EE000077EE000077DB000077
              6A00FFFFFF00EBF4F30000776A000077D9000275EE000077EE000178ED000077
              EE000078EE000078EE000078EE000078EE000078EE000078EE000078EE000078
              EE000077D90000776A00FFFFFF00EBF4F30000776A000276DB000177EE000078
              ED000077EE000078EC000077EE000077EE000077EE000077EE000077EE000077
              EE000077EE000077EE000178D90000776A00FFFFFF00EBF4F30000776A000077
              DB000077D9000076D7000377DB000077DB000077D9000077D9000077D9000077
              D9000077D9000077D9000077D9000077D9000077DB0000776A00FFFFFF00EBF4
              F30000776A0000776A0000776A0000776A0000776A0000776A0000776A000077
              6A0000776A0000776A0000776A0000776A0000776A0000776A0000776A000077
              6A00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SBResizeClick
          end
          object SBPolyLine: TSpeedButton
            Left = 40
            Top = 184
            Width = 26
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
          object BitBtn9: TSpeedButton
            Left = 40
            Top = 216
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1583#1585#1580' '#1605#1578#1606' '#1576#1585' '#1585#1608#1610' '#1578#1589#1608#1610#1585
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000004900
              EDFF4900EDFF4900EDFF4900EDFF000000000000000000000000000000000000
              0000000000004900EDFF4900EDFF4900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF4900EDFF4900EDFF000000000000000000000000000000000000
              0000000000004900EDFF4900EDFF4900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF0000000000000000000000000000000000000000000000000000
              00000000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF0000000000000000000000000000000000000000000000000000
              00000000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF0000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF0000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF0000000000000000000000000000000000000000000000000000
              00000000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF000000008C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF0000000000000000000000000000000000000000000000000000
              00000000000000000000000000004900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF4900EDFF4900EDFF000000000000000000000000000000000000
              0000000000004900EDFF4900EDFF4900EDFF4900EDFF00000000000000004900
              EDFF4900EDFF4900EDFF4900EDFF000000000000000000000000000000000000
              0000000000004900EDFF4900EDFF4900EDFF4900EDFF00000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = BitBtn9Click
          end
          object BitBtn2: TSpeedButton
            Tag = 13
            Left = 72
            Top = 216
            Width = 26
            Height = 26
            Cursor = crHandPoint
            Hint = #1602#1585#1575#1585' '#1583#1575#1583#1606' '#1575#1605#1590#1575#1610' '#1705#1575#1585#1576#1585
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000002800828C3800
              B4C20A0020220000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000000000002C008E994900
              EDFF4000D0E10A00202200000000000000000000000000000000462908808C51
              0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8A4E16FF5B16
              B2FF4900EDFF5109D4FF46232891462908808C510FFF46290880462908808C51
              0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8A4E
              16FF5B16B2FF4900EDFF4706C4E946290A818C510FFF46290880462908808C51
              0FFF462908800000000000000000000000000000000000000000000000000000
              0000030008093100A0AC10003438471670BA83462DFF46290880462908808C51
              0FFF46290880100034384900EBFE4900EDFF4900EDFF4900EDFF3600B2BF4600
              E6F94900EDFF4800E8FB250077814900EDFF692783FF46290880462908808C51
              0FFF462908800000000031009FAB4900EDFF4900EDFF4200D9EB070015172500
              77804900EDFF250077800300080946176BB78B5110FF46290880462908808C51
              0FFF46290880000000000A0020224700E6F84900EDFF18004F55000000000100
              04042D00939E0200060600000000462908808C510FFF46290880462908808C51
              0FFF4629088000000000000000002900848E3200A4B000000000000000000000
              0000000000000000000000000000462908808C510FFF46290880462908808C51
              0FFF462908800000000000000000050011120600141500000000000000001500
              464B4500E0F11500454A00000000462908808C510FFF46290880462908808C51
              0FFF462908800000000000000000000000000000000000000000000000001600
              474C4500E0F11500464B00000000462908808C510FFF46290880462908808C51
              0FFF462908800000000000000000000000000000000000000000000000000000
              0000000000000000000000000000462908808C510FFF46290880462908808C51
              0FFF46290880462908808C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF46290880462908808C51
              0FFF46290880462908808C510FFF8C510FFF8C510FFF8C510FFF8C510FFF8C51
              0FFF8C510FFF8C510FFF8C510FFF8C510FFF8C510FFF46290880000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            OnClick = BitBtn2Click
          end
          object BBUndo: TAdvGlowButton
            Left = 8
            Top = 326
            Width = 123
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1576#1585#1711#1588#1578' (Undo)'
            ImageIndex = 117
            Images = Dm.ImageList_MainNew
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            TabOrder = 0
            Visible = False
            OnClick = BBUndoClick
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
          end
          object BitBtn3: TAdvGlowButton
            Tag = 13
            Left = 55
            Top = 253
            Width = 80
            Height = 28
            Cursor = crHandPoint
            Hint = #1578#1576#1583#1610#1604' '#1578#1589#1608#1610#1585' '#1576#1607' '#1582#1575#1705#1587#1578#1585#1610
            Anchors = [akTop, akRight]
            Caption = #1582#1575#1705#1587#1578#1585#1610
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000097048597300000B1300000B1301009A9C18000000D749444154789C
              AD524B0AC23014AC7B5D7B103D40578AA22BC14378005D2693B4D07C74E58974
              E1613C809F4DE4D516526DABAD0E0C0C9337C37B9020288152AA6784585A604D
              24BD67AC1B7C0303CC8D10672B84F39979B3DAF02E8A8606B8A701E064014B4C
              F5B3E866851854166C8185051203AC9C739DDC274D1EBDD1CCFBDA528606E08D
              2865E8DFCD5F6FFE44CAFC710399156466028C15E71BA2666C94EBB2D9C209F9
              5A711CF735E088BE2E9B0DAA4C3FA438BF6AE0D2BE80B1A90126AD0B7C342938
              6ACE0F857493822AD416B4FF483F143C00F4E4784EFB3B17260000000049454E
              44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn3Click
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
          end
          object BitBtn7: TAdvGlowButton
            Tag = 13
            Left = 55
            Top = 286
            Width = 80
            Height = 28
            Cursor = crHandPoint
            Hint = #1578#1576#1583#1610#1604' '#1578#1589#1608#1610#1585' '#1576#1607' '#1587#1610#1575#1607' '#1608' '#1587#1601#1610#1583
            Anchors = [akTop, akRight]
            Caption = #1587#1610#1575#1607' '#1608' '#13#10' '#1587#1601#1610#1583
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
              61000000097048597300000B1300000B1301009A9C18000000A749444154789C
              ADD23B0AC2501484E1CF5E6B17A20B48A5285A092EC205689B3285ABD2228B71
              013E1A2570959B98687C0C0C1C86333FE7C2A55E3D2CB10E2EE6AE969AE3806B
              C545367B571EE2120A39B6C179C8CE18BC022C9061854E94774296859D272548
              3F74D17928AD79F33B179DFF5D9054C23136C1A368AEDB2D3DE17E563F3A359E
              EB761BC3B874C2F117C014935F00B15A03F6D895AA1F029AF412F0F547FA1A70
              030FE8700BB08634E30000000049454E44AE426082}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = BitBtn7Click
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
          end
          object SpinEdit1: TSpinEdit
            Left = 4
            Top = 289
            Width = 47
            Height = 23
            Anchors = [akTop, akRight]
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            Increment = 5
            MaxValue = 500
            MinValue = 10
            ParentFont = False
            TabOrder = 3
            Value = 150
          end
          object CBHideObjects: TCheckBox
            Left = 18
            Top = 356
            Width = 113
            Height = 33
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1575#1588#1610#1575#1610' '#1575#1590#1575#1601#1607' '#1588#1583#1607' '#1605#1582#1601#1610' '#1588#1608#1606#1583
            TabOrder = 5
            WordWrap = True
            OnClick = CBHideObjectsClick
          end
          object RGPenType: TRadioGroup
            Left = 5
            Top = 41
            Width = 130
            Height = 40
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = #1606#1608#1593' '#1602#1604#1605' / '#1662#1575#1705#1606
            Columns = 2
            ItemIndex = 0
            Items.Strings = (
              #1605#1585#1576#1593#1610
              #1583#1575#1610#1585#1607' '#1575#1610)
            TabOrder = 7
            OnClick = RGPenTypeClick
          end
          object SEBrushSize: TSpinEdit
            Left = 13
            Top = 85
            Width = 40
            Height = 22
            Anchors = [akTop, akRight]
            Increment = 5
            MaxValue = 200
            MinValue = 0
            TabOrder = 4
            Value = 50
            OnChange = SEBrushSizeChange
          end
          object BrushColor: TPanel
            Left = 13
            Top = 114
            Width = 40
            Height = 25
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            BevelInner = bvRaised
            BorderStyle = bsSingle
            Color = clWhite
            TabOrder = 6
            OnClick = BrushColorClick
          end
        end
      end
    end
    object Panel7: TPanel
      Left = 1
      Top = 86
      Width = 145
      Height = 455
      Align = alLeft
      ParentColor = True
      TabOrder = 6
      object PageControl2: TPageControl
        Left = 1
        Top = 1
        Width = 143
        Height = 453
        ActivePage = TabSheet1
        Align = alClient
        TabOrder = 0
        OnChange = PageControl2Change
        object TabSheet1: TTabSheet
          Caption = #1605#1588#1575#1607#1583#1607
          object DBGrid2: TDBGrid
            Left = 0
            Top = 0
            Width = 135
            Height = 425
            Align = alClient
            Color = clBtnFace
            DataSource = dsqSelectedColor
            Options = [dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu2
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid2DrawColumnCell
            OnDblClick = DBGrid2DblClick
            Columns = <
              item
                Expanded = False
                FieldName = 'Color'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descriptions'
                Width = 200
                Visible = True
              end>
          end
        end
        object TabSheet2: TTabSheet
          Caption = #1575#1606#1578#1589#1575#1576
          ImageIndex = 1
          object DBGrid1: TDBGrid
            Left = 0
            Top = 0
            Width = 135
            Height = 425
            Align = alClient
            Color = clBtnFace
            DataSource = DSForm
            Options = [dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            PopupMenu = PopupMenu1
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = ARABIC_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'Color'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descriptions'
                Width = 200
                Visible = True
              end>
          end
        end
      end
    end
    object Panel8: TPanel
      Left = 1
      Top = 1
      Width = 1103
      Height = 33
      Align = alTop
      ParentColor = True
      TabOrder = 7
      DesignSize = (
        1103
        33)
      object Label5: TLabel
        Left = 1027
        Top = 9
        Width = 61
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1593#1606#1608#1575#1606' '#1578#1589#1608#1610#1585' :'
      end
      object Label6: TLabel
        Left = 775
        Top = 9
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1608#1590#1610#1581#1575#1578' :'
      end
      object btnSearchPhoto: TAdvGlowButton
        Left = 1000
        Top = 5
        Width = 23
        Height = 22
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImageIndex = 78
        Images = Dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = btnSearchPhotoClick
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16367008
        Appearance.ColorDisabled = 15921906
        Appearance.ColorDisabledTo = 15921906
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = 16117985
        Appearance.ColorHotTo = 16372402
        Appearance.ColorMirrorHot = 16107693
        Appearance.ColorMirrorHotTo = 16775412
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16102556
        Appearance.ColorMirrorCheckedTo = 16768988
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
      end
      object DBLkCBListItemsID: TDBLookupComboBox
        Left = 832
        Top = 6
        Width = 166
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        DataField = 'ListItemsID'
        DataSource = DSSelImage
        KeyField = 'ListItemsID'
        ListField = 'Title'
        ListSource = DSListItems
        ParentBiDiMode = False
        TabOrder = 0
      end
      object DBENotes: TDBEdit
        Left = 524
        Top = 6
        Width = 247
        Height = 21
        Anchors = [akTop, akRight]
        DataField = 'Description'
        DataSource = DSSelImage
        TabOrder = 1
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 405
    Top = 157
  end
  inherited ActionList: TActionList
    Left = 654
    Top = 161
  end
  inherited Grid_PopupMenu: TPopupMenu
    Left = 143
    Top = 65524
  end
  inherited Timer1sssss: TTimer
    Left = 24
    Top = 65528
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 43
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Aprintt
                ImageIndex = 37
                ShortCut = 16464
              end>
            Caption = '&Dataset'
          end
          item
            Items = <
              item
                Action = Scan
                ImageIndex = 22
                ShortCut = 16457
              end
              item
                Action = OpenFile
                ImageIndex = 49
                ShortCut = 16463
              end
              item
                Action = SaveAs
                ImageIndex = 40
                ShortCut = 16467
              end
              item
                Action = Aclose
                ShortCut = 27
              end>
            Caption = #1606#1575#1605#1607
          end>
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 654
    Top = 109
    StyleName = 'XP Style'
    object Aclose: TAction
      Caption = #1582#1585#1608#1580
      ImageIndex = 56
      ShortCut = 27
    end
    object Aprintt: TAction
      Tag = 14
      Caption = #1670#1575#1662
      ImageIndex = 37
      ShortCut = 16464
      OnExecute = AprinttExecute
    end
    object Scan: TAction
      Tag = 2
      Caption = #1575#1587#1603#1606
      ImageIndex = 22
      ShortCut = 16457
      OnExecute = ScanExecute
    end
    object OpenFile: TAction
      Tag = 5
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
      ImageIndex = 49
      ShortCut = 16463
      OnExecute = OpenFileExecute
    end
    object ADelete: TAction
      Tag = 7
      Caption = #1581#1584#1601
    end
    object SaveAs: TAction
      Tag = 9
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
      ImageIndex = 40
      ShortCut = 16467
      OnExecute = SaveAsExecute
    end
    object ActSelScanner: TAction
      Tag = 26
      Caption = #1575#1606#1578#1582#1575#1576' '#1575#1587#1603#1606#1585
      OnExecute = ActSelScannerExecute
    end
    object ASaveAll: TAction
      Tag = 15
      Caption = #1584#1582#1610#1585#1607' '#1607#1605#1607' '#1578#1589#1575#1608#1610#1585
      OnExecute = ASaveAllExecute
    end
    object Action1: TAction
      Tag = 28
      Caption = #1583#1585#1580#1548' '#1584#1582#1610#1585#1607' '#1608' '#1608#1610#1585#1575#1610#1588
    end
    object acShowAllPages: TAction
      Caption = #1607#1605#1607' '#1589#1601#1581#1575#1578' '#1662#1610#1608#1587#1578' '#1588#1583#1607
      ImageIndex = 30
      OnExecute = acShowAllPagesExecute
    end
    object acShowSelectedPages: TAction
      Caption = #1585#1606#1711' '#1575#1606#1578#1582#1575#1576#1610
      ImageIndex = 42
      OnExecute = acShowSelectedPagesExecute
    end
    object acShowNotColorPages: TAction
      Caption = #1601#1575#1602#1583' '#1585#1606#1711
      OnExecute = acShowNotColorPagesExecute
    end
    object acAttachColor: TAction
      Caption = #1575#1606#1578#1589#1575#1576' '#1585#1606#1711
      ImageIndex = 43
      OnExecute = acAttachColorExecute
    end
    object acDeAttachColor: TAction
      Caption = #1581#1584#1601' '#1585#1606#1711
      OnExecute = acDeAttachColorExecute
    end
  end
  object Timer: TTimer
    Interval = 500
    Left = 654
    Top = 214
  end
  object ColorDialog: TColorDialog
    Left = 654
    Top = 266
  end
  object SavePictureDialog: TSavePictureDialog
    Filter = 
      'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tif' +
      'f)|*.tif;*.tiff|BMP(*.bmp)|*.bmp'
    Left = 654
    Top = 319
  end
  object OpenPictureDialogT: TOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tif' +
      'f)|*.tif;*.tiff'
    FilterIndex = 4
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 654
    Top = 371
  end
  object ImageEnIO1: TImageEnIO
    AttachedImageEn = ImageEnDBView1
    Background = clBtnFace
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    DialogsMeasureUnit = ieduCm
    Left = 516
    Top = 125
  end
  object ImageEnProc1: TImageEnProc
    AttachedImageEn = ImageEnVect1
    Background = clBtnFace
    PreviewsParams = [prppShowResetButton, prppHardReset]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    Left = 412
    Top = 273
  end
  object ColorDialog1: TColorDialog
    Left = 118
    Top = 501
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -21
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    Left = 45
    Top = 497
  end
  object ImageEnMIO1: TImageEnMIO
    AttachedMView = ImageEnMView1
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clWindowText
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    Left = 444
    Top = 117
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 500
    OnTimer = Timer1Timer
    Left = 519
    Top = 331
  end
  object PopupMenu1: TPopupMenu
    Left = 520
    Top = 262
    object N5: TMenuItem
      Action = acAttachColor
    end
    object N6: TMenuItem
      Action = acDeAttachColor
    end
    object N7: TMenuItem
      Caption = '-'
    end
    object N8: TMenuItem
      Action = acShowAllPages
    end
    object N9: TMenuItem
      Action = acShowNotColorPages
    end
  end
  object qAttachColor: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'ColorID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'LetterDataID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE LetterData'
      'SET'#9'ColorID=:ColorID'
      'WHERE LetterDataID=:LetterDataID')
    Left = 355
    Top = 222
  end
  object qGetColor: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'ColorID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'SELECT Color FROM DefineColors WHERE ID=:ColorID')
    Left = 363
    Top = 118
    object qGetColorColor: TStringField
      FieldName = 'Color'
      Size = 50
    end
  end
  object dsqSelectedColor: TDataSource
    Left = 272
    Top = 255
  end
  object PopupMenu2: TPopupMenu
    Left = 520
    Top = 230
    object N1: TMenuItem
      Action = acShowAllPages
    end
    object N2: TMenuItem
      Action = acShowNotColorPages
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Action = acShowSelectedPages
    end
  end
  object QCheckActionAccess: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'acName'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 100
        Value = '0'
      end
      item
        Name = 'AccessID'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = 0
      end>
    SQL.Strings = (
      'SELECT HasAccess FROM ActionsAccess'
      'WHERE (ActionName=:acName )'#9'AND (AccessID=:AccessID )')
    Left = 517
    Top = 366
    object QCheckActionAccessHasAccess: TBooleanField
      FieldName = 'HasAccess'
    end
  end
  object IdDecoderMIME1: TIdDecoderMIME
    FillChar = '='
    Left = 96
    Top = 65528
  end
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    BeforeScroll = QrLetterDataBeforeScroll
    AfterScroll = QrLetterDataAfterScroll
    OnCalcFields = QrLetterDataCalcFields
    Parameters = <
      item
        Name = 'Pa_LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select LetterDataID ,LetterID ,PageNumber, ArchiveID, isDocument'
      'From LetterData'
      'Where( LetterID = :Pa_LetterID )'
      '  And( Extention in (1,2) )'
      'Order By PageNumber  ')
    Left = 881
    Top = 196
    object QrLetterDataRecCount_Calc: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'RecCount_Calc'
      Calculated = True
    end
    object QrLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrLetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterDataPageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrLetterDataArchiveID: TIntegerField
      FieldName = 'ArchiveID'
    end
    object QrLetterDataisDocument: TBooleanField
      FieldName = 'isDocument'
    end
  end
  object DSLetterData: TDataSource
    AutoEdit = False
    DataSet = QrLetterData
    Left = 881
    Top = 244
  end
  object QrSelImage: TADOQuery
    Connection = Dm.YeganehConnection
    AfterScroll = QrSelImageAfterScroll
    OnCalcFields = QrSelImageCalcFields
    Parameters = <
      item
        Name = 'Pa_LetterDataID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select  * '
      'From LetterData'
      'Where LetterDataID = :Pa_LetterDataID')
    Left = 801
    Top = 308
    object QrSelImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrSelImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrSelImageImage: TBlobField
      FieldName = 'Image'
    end
    object QrSelImageextention: TWordField
      FieldName = 'extention'
    end
    object QrSelImageDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object QrSelImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object QrSelImageImageSize_Calc: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'ImageSize_Calc'
      Calculated = True
    end
    object QrSelImageListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object QrSelImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object QrSelImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object QrSelImageFileName: TStringField
      FieldName = 'FileName'
      Size = 100
    end
    object QrSelImageIsTemplate: TBooleanField
      FieldName = 'IsTemplate'
    end
  end
  object DSSelImage: TDataSource
    AutoEdit = False
    DataSet = QrSelImage
    OnDataChange = DSSelImageDataChange
    Left = 801
    Top = 356
  end
  object SPAllImage: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'Get_LetterJpgFile;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@LetterID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 888
    Top = 308
    object SPAllImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object SPAllImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object SPAllImageImage: TBlobField
      Alignment = taRightJustify
      FieldName = 'Image'
    end
    object SPAllImageextention: TWordField
      FieldName = 'extention'
    end
    object SPAllImageDescription: TWideStringField
      Alignment = taRightJustify
      FieldName = 'Description'
      Size = 200
    end
    object SPAllImageLastUpdate: TDateTimeField
      Alignment = taRightJustify
      FieldName = 'LastUpdate'
    end
    object SPAllImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
  end
  object DSAllImage: TDataSource
    AutoEdit = False
    DataSet = SPAllImage
    Left = 888
    Top = 356
  end
  object qrInsertLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'PN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Img'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Ext'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Des'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LU'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      
        'INSERT INTO LetterData (LetterID,PageNumber,Image,Extention,Desc' +
        'ription,LastUpdate)'
      'values( :LID , :PN , :Img , :Ext , :Des , :LU)'
      '')
    Left = 880
    Top = 416
  end
  object QrDelLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterDataID'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from LetterData'
      'Where( LetterDataID = :LetterDataID )'
      'And( Extention in (1,2) )')
    Left = 792
    Top = 424
  end
  object QrListItems: TADOQuery
    Connection = Dm.YeganehConnection
    AfterInsert = QrListItemsAfterInsert
    Parameters = <
      item
        Name = 'UsersID'
        DataType = ftInteger
        Size = -1
        Value = 0
      end>
    SQL.Strings = (
      'Select *'
      'from ListItems'
      'Where(ListID=8)'
      'And(UsersID = :UsersID )'
      ' ')
    Left = 704
    Top = 424
    object QrListItemsListItemsID: TAutoIncField
      FieldName = 'ListItemsID'
      ReadOnly = True
    end
    object QrListItemsListID: TWordField
      FieldName = 'ListID'
    end
    object QrListItemsKeyValue: TIntegerField
      FieldName = 'KeyValue'
    end
    object QrListItemsTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606
      FieldName = 'Title'
      Size = 50
    end
    object QrListItemsNotes: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1578#1608#1590#1610#1581#1575#1578
      FieldName = 'Notes'
      Size = 255
    end
    object QrListItemsUsersID: TIntegerField
      FieldName = 'UsersID'
    end
  end
  object DSListItems: TDataSource
    AutoEdit = False
    DataSet = QrListItems
    Left = 704
    Top = 472
  end
  object quImage: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from LetterData '
      'where letterdataid=0')
    Left = 768
    Top = 472
    object quImageLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object quImageLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object quImagePageNumber: TIntegerField
      FieldName = 'PageNumber'
    end
    object quImageImage: TBlobField
      FieldName = 'Image'
    end
    object quImageextention: TWordField
      FieldName = 'extention'
    end
    object quImageDescription: TWideStringField
      FieldName = 'Description'
      Size = 50
    end
    object quImageLastUpdate: TDateTimeField
      FieldName = 'LastUpdate'
    end
    object quImageListItemsID: TIntegerField
      FieldName = 'ListItemsID'
    end
    object quImageIsCorrectedImage: TBooleanField
      FieldName = 'IsCorrectedImage'
    end
    object quImageVersionNo: TStringField
      FieldName = 'VersionNo'
      Size = 50
    end
    object quImageVersionDate: TStringField
      FieldName = 'VersionDate'
      Size = 10
    end
    object quImageFILENAME: TWideStringField
      FieldName = 'FILENAME'
      Size = 1000
    end
  end
  object qrUpdateLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'PN'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Img'
        Attributes = [paNullable, paLong]
        DataType = ftVarBytes
        NumericScale = 255
        Precision = 255
        Size = 2147483647
        Value = Null
      end
      item
        Name = 'Ext'
        DataType = ftWord
        Precision = 3
        Size = 1
        Value = Null
      end
      item
        Name = 'Desc'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 50
        Value = Null
      end
      item
        Name = 'LU'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'LDID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'UPDATE LetterData SET'
      'PageNumber = :PN,'
      'Image = :Img ,'
      'Extention = :Ext ,'
      'Description = :Desc ,'
      'LastUpdate = :LU'
      'WHERE LetterDataID= :LDID')
    Left = 880
    Top = 464
  end
  object ActionManager2: TActionManager
    ActionBars.SessionCount = 43
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = Apost
                ImageIndex = 40
                ShortCut = 113
              end
              item
                Action = DataSetCancel2
                ImageIndex = 56
                ShortCut = 32776
              end
              item
                Action = AEdit
                ImageIndex = 4
                ShortCut = 115
              end
              item
                Action = Action6
                ImageIndex = 37
                ShortCut = 16464
              end>
            Caption = '&Dataset'
          end
          item
            Items = <
              item
                Action = Action8
                ImageIndex = 22
                ShortCut = 16457
              end
              item
                Action = Action9
                ImageIndex = 49
                ShortCut = 16463
              end
              item
                Action = Action11
                ImageIndex = 40
                ShortCut = 16467
              end
              item
                Action = Action2
                ShortCut = 27
              end
              item
                Action = Action3
                ImageIndex = 50
                ShortCut = 34
              end
              item
                Action = Action4
                ImageIndex = 51
                ShortCut = 33
              end
              item
                Action = NewPage
                ImageIndex = 62
                ShortCut = 16429
              end
              item
                Visible = False
                Action = Action7
                ImageIndex = 31
              end>
            Caption = #1606#1575#1605#1607
          end>
        AutoSize = False
      end>
    Images = Dm.LetterImages
    Left = 364
    Top = 338
    StyleName = 'XP Style'
    object Apost: TDataSetPost
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      Enabled = False
      Hint = 'Post'
      ImageIndex = 40
      ShortCut = 113
    end
    object DataSetCancel2: TDataSetCancel
      Tag = -1
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
    end
    object Action2: TAction
      Tag = -1
      Category = #1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ImageIndex = 56
      ShortCut = 27
    end
    object Action3: TAction
      Tag = -1
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1576#1593#1583
      ImageIndex = 50
      ShortCut = 34
    end
    object Action4: TAction
      Tag = -1
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1602#1576#1604
      ImageIndex = 51
      ShortCut = 33
    end
    object NewPage: TAction
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1580#1583#1610#1583
      ImageIndex = 62
      ShortCut = 16429
    end
    object AEdit: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ImageIndex = 4
      ShortCut = 115
    end
    object Action6: TAction
      Tag = 14
      Category = 'Dataset'
      Caption = #1670#1575#1662
      ImageIndex = 37
      ShortCut = 16464
      OnExecute = AprinttExecute
    end
    object Action7: TAction
      Category = #1606#1575#1605#1607
      Caption = #1662#1575#1603
      ImageIndex = 31
      Visible = False
    end
    object Action8: TAction
      Tag = 2
      Category = #1606#1575#1605#1607
      Caption = #1575#1587#1603#1606
      ImageIndex = 22
      ShortCut = 16457
      OnExecute = ScanExecute
    end
    object Action9: TAction
      Tag = 5
      Category = #1606#1575#1605#1607
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
      ImageIndex = 49
      ShortCut = 16463
      OnExecute = OpenFileExecute
    end
    object Action10: TAction
      Tag = 7
      Category = #1606#1575#1605#1607
      Caption = #1581#1584#1601
    end
    object Action11: TAction
      Tag = 9
      Category = #1606#1575#1605#1607
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
      ImageIndex = 40
      ShortCut = 16467
      OnExecute = SaveAsExecute
    end
    object Action12: TAction
      Tag = 13
      Category = #1606#1575#1605#1607
      Caption = #1583#1585#1580' '#1575#1605#1590#1575
    end
    object Action13: TAction
      Tag = 15
      Caption = #1584#1582#1610#1585#1607' '#1607#1605#1607' '#1578#1589#1575#1608#1610#1585
    end
    object Action14: TAction
      Caption = #1581#1584#1601' '#1607#1605#1607' '#1578#1589#1575#1608#1610#1585
    end
  end
  object SaveDialog1: TSaveDialog
    Title = #1605#1587#1610#1585' '#1584#1582#1610#1585#1607' '#1601#1575#1610#1604
    Left = 738
    Top = 205
  end
  object OpenPictureDialog: TTntOpenPictureDialog
    Filter = 
      'JPEG Image File (*.jpg , *.jpeg)|*.jpeg;*.jpg|Tiff(*.tif , *.tif' +
      'f)|*.tif;*.tiff'
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 642
    Top = 445
  end
  object TimerCleanClipboard: TTimer
    OnTimer = TimerCleanClipboardTimer
    Left = 520
    Top = 296
  end
  object ADOQuery1: TADOQuery
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    Parameters = <>
    Left = 256
    Top = 208
  end
end
