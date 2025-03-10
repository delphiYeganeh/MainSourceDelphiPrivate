object FrAddAttachment: TFrAddAttachment
  Left = 653
  Top = 209
  BiDiMode = bdRightToLeft
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1578#1589#1608#1610#1585' '#1606#1575#1605#1607
  ClientHeight = 553
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = ARABIC_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poDefault
  Scaled = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 834
    Height = 553
    Align = alClient
    ParentColor = True
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 832
      Height = 40
      Align = alTop
      Color = 14666957
      TabOrder = 0
      DesignSize = (
        832
        40)
      object Label5: TLabel
        Left = 786
        Top = 4
        Width = 24
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1588#1585#1581
      end
      object DBEdit2: TDBEdit
        Left = 424
        Top = 1
        Width = 356
        Height = 22
        Anchors = [akTop, akRight]
        BevelOuter = bvNone
        Color = clWhite
        Ctl3D = True
        DataField = 'DataDescription'
        DataSource = DSelect_Attachment_by_Page
        ParentCtl3D = False
        TabOrder = 0
      end
    end
    object Panel1: TPanel
      Left = 1
      Top = 525
      Width = 832
      Height = 27
      Align = alBottom
      Color = 14666957
      TabOrder = 1
      DesignSize = (
        832
        27)
      object Label3: TLabel
        Left = 332
        Top = 8
        Width = 30
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1589#1601#1581#1607
      end
      object Label4: TLabel
        Left = 291
        Top = 6
        Width = 7
        Height = 14
        Anchors = [akTop, akRight]
        Caption = #1575#1586
      end
      object SpeedButton1: TBitBtn
        Left = 546
        Top = 2
        Width = 92
        Height = 22
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1608#1575#1602#1593#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = SpeedButton1Click
        Glyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000993401993401
          B95401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB954019934
          019934010000A04111A64D21FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFA64D219934010000B95401FFFFFFAC5A31AC7E76AC7E
          76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC5A31FFFFFFB954010000FFFF
          FFFFFFFFAC7E7651D48151D48151D48151D48151D48151D48151D48151D481AC
          7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E763DB9613DB9613DB9613DB9613D
          B9613DB9613DB96142BB65AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E7647
          AB5C299D41299D4147AB5CF3FAF547AB5C6CBC7DF9FCFAAC7E76FFFFFFFFFFFF
          0000FFFFFFFFFFFFAC7E76EBEFDE1B852636923DF8F6EAFFF9F0FFF9F0FFF9F0
          FFF9F0AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFAC7E76FFE2B5DCD19BF8DEB0
          FFE2B5FFE2B5FFE2B5FFE2B5FFE2B5AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFF
          AC7E76FFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AAC7E76FFFF
          FFFFFFFF0000B95401FFFFFFAC5A31AC7E76AC7E76AC7E76AC7E76AC7E76AC7E
          76AC7E76AC7E76AC5A31FFFFFFB954010000993401A64D21FFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAD5A3199340100009934
          01993401B95401FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB9
          54019934019934010000}
      end
      object FitToPage: TBitBtn
        Left = 730
        Top = 2
        Width = 99
        Height = 22
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1583#1575#1586#1607' '#1589#1601#1581#1607' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = FitToPageClick
        Glyph.Data = {
          8E020000424D8E0200000000000036000000280000000D0000000F0000000100
          1800000000005802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFF858585F2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFF9A9A9A777777FFFFFFFFFFFFAEAEAE848484
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF0F0F07C7C7C8989897D
          7D7D707070DADADAFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFAC7E76AC7E76A88B
          86B09B99727170787878F8F8F8FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          AC7E76EDC8C6DBB3B0B7948FB18781AD8079B58F89C8ADA8DDCFCCF7F2F1FFFF
          FF00FFFFFFFFFFFFAC7E76FFE6E6FFDDDDFFD3D3FFCCCCF9BBBAE7A8A5BDA09C
          B18C87AC9591FFFFFF00FFFFFFFFFFFFAC7E76FFEDEDFFE6E6FFDDDDFFD3D3FF
          CCCCFFC0C0FFB9B9FFABABAC7E76FFFFFF00FFFFFFFFFFFFAC7E76FFFBFBFFED
          EDFFE6E6FFDDDDFFD3D3FFCCCCFFC0C0FFB9B9AC7E76FFFFFF00FFFFFFFFFFFF
          AC7E76FFFFFFFFFBFBFFEDEDFFE6E6FFDDDDFFD3D3FFCCCCFFBEBEAC7E76FFFF
          FF00FFFFFFFFFFFFAC7E76FFFFFFFFFFFFFFFBFBFFEDEDFFE6E6FFDDDDFFD3D3
          FFCCCCAC7E76FFFFFF00FFFFFFFFFFFFAC7E76FFE8E8FFFFFFFFFFFFFFFBFBFF
          EDEDFFE6E6FFDDDDFFD3D3AC7E76FFFFFF00F0F0F08787878786868B87878F88
          889C8F8FA69696B8A2A2C0A9A9D2B7B7DCC1C1AA7E77FFFFFF00B9B9B9E0E0E0
          EAEAEAD8D8D8D8D8D8C6C6C6B1B1B1A3A2A29F9D9D928F8F8F8E8E8786859696
          9600FFFFFFB9B9B9B9B9B9B9B9B9B9B9B9D0D0D0DDDDDDC1C1C1C2C2C2E2E2E2
          EAEAEAEBEBEBB9B9B900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCDCDCDCF
          CFCFB9B9B9B9B9B9B9B9B9B9B9B9FFFFFF00}
      end
      object SpeedButton3: TAdvGlowButton
        Left = 426
        Top = 2
        Width = 54
        Height = 22
        Anchors = [akTop, akRight]
        Caption = #1576#1586#1585#1711#1578#1585' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 74
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = SpeedButton3Click
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
      object SpeedButton4: TAdvGlowButton
        Left = 480
        Top = 2
        Width = 62
        Height = 21
        Anchors = [akTop, akRight]
        Caption = #1603#1608#1670#1603#1578#1585
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 75
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = SpeedButton4Click
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
      object SpeedButton5: TBitBtn
        Left = 638
        Top = 2
        Width = 92
        Height = 22
        Anchors = [akTop, akRight]
        Caption = #1601#1610#1578' '#1576#1575' '#1593#1585#1590' '
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = SpeedButton5Click
        Glyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFE0C0B0993401993401A04111F3E6E0FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9B3A0A04111EDDAD0FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFAC7E76AC7E76AC7E
          76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E76FFFFFFFFFFFF0000EDDA
          D0FFFFFFAC7E7651D48151D48151D48151D48151D48151D48151D48151D481AC
          7E76FFFFFFEDDAD00000993401EDDAD0AC7E763DB9613DB9613DB9613DB9613D
          B9613DB9613DB96142BB65AC7E76EDDAD0A041110000993401A64D21AC7E7647
          AB5C299D41299D4147AB5CF3FAF547AB5C6CBC7DF9FCFAAC7E76A64D21993401
          0000993401EDDAD0AC7E76EBEFDE1B852636923DF8F6EAFFF9F0FFF9F0FFF9F0
          FFF9F0AC7E76EDDAD0A041110000EDDAD0FFFFFFAC7E76FFE2B5DCD19BF8DEB0
          FFE2B5FFE2B5FFE2B5FFE2B5FFE2B5AC7E76FFFFFFEDDAD00000FFFFFFFFFFFF
          AC7E76FFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AFFCA7AAC7E76FFFF
          FFFFFFFF0000FFFFFFFFFFFFAC7E76AC7E76AC7E76AC7E76AC7E76AC7E76AC7E
          76AC7E76AC7E76AC7E76FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFEDDAD0993401EDDAD0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFFFFFFFFE0C0B0993401993401993401F3E6E0FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000}
      end
      object SpeedButton7: TAdvGlowButton
        Left = 239
        Top = 5
        Width = 21
        Height = 19
        Anchors = [akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ImageIndex = 78
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 8
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
      object ProgressBar: TProgressBar
        Left = 6
        Top = 6
        Width = 230
        Height = 16
        Anchors = [akTop, akRight]
        Max = 10
        TabOrder = 0
        Visible = False
      end
      object ComboBox1: TComboBox
        Left = 363
        Top = 3
        Width = 57
        Height = 22
        Anchors = [akTop, akRight]
        ItemHeight = 14
        ItemIndex = 4
        TabOrder = 1
        Text = '100'
        OnClick = ComboBox1Click
        OnExit = ComboBox1Click
        OnKeyDown = ComboBox1KeyDown
        Items.Strings = (
          '10'
          '25'
          '50'
          '75'
          '100'
          '200'
          '500'
          '1000')
      end
      object Edit1: TEdit
        Left = 262
        Top = 4
        Width = 25
        Height = 22
        Anchors = [akTop, akRight]
        TabOrder = 2
        Text = '1'
      end
      object DBEdit1: TDBEdit
        Left = 307
        Top = 3
        Width = 25
        Height = 22
        Anchors = [akTop, akRight]
        DataField = 'PageNumber'
        DataSource = DSelect_Attachment_by_Page
        TabOrder = 9
      end
    end
    object ImageScroll: TScrollBox
      Left = 1
      Top = 41
      Width = 727
      Height = 484
      Align = alClient
      BevelInner = bvLowered
      Color = clWhite
      ParentColor = False
      TabOrder = 2
      object LetterImage: TImage
        Left = 1
        Top = 1
        Width = 88
        Height = 80
        Stretch = True
        OnMouseDown = LetterImageMouseDown
        OnMouseMove = LetterImageMouseMove
      end
    end
    object ButtonScroll: TScrollBox
      Left = 728
      Top = 41
      Width = 105
      Height = 484
      Align = alRight
      BorderStyle = bsNone
      TabOrder = 3
      DesignSize = (
        105
        484)
      object Bpost: TAdvGlowButton
        Tag = 454
        Left = 1
        Top = 63
        Width = 103
        Height = 26
        Hint = 'Post'
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 59
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = BpostClick
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
      object EditBitBtn: TAdvGlowButton
        Tag = 455
        Left = 1
        Top = 6
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1608#1610#1585#1575#1610#1588
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 2
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 1
        OnClick = EditBitBtnClick
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
      object ScanBitBtn: TAdvGlowButton
        Tag = 456
        Left = 1
        Top = 34
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1575#1587#1603#1606
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 182
        Images = dm.LetterImages_New
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = ScanBitBtnClick
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
      object BPrint: TAdvGlowButton
        Tag = 457
        Left = 1
        Top = 273
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1670#1575#1662
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 113
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 3
        OnClick = BPrintClick
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
      object CancelBitBtn: TAdvGlowButton
        Tag = 458
        Left = 1
        Top = 92
        Width = 103
        Height = 26
        Hint = 'Cancel'
        Anchors = [akTop, akRight]
        Caption = #1575#1606#1589#1585#1575#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 1
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 4
        OnClick = CancelBitBtnClick
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
      object BopenFile: TAdvGlowButton
        Tag = 459
        Left = 1
        Top = 129
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 143
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 5
        OnClick = BopenFileClick
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
      object BSave: TAdvGlowButton
        Tag = 460
        Left = 1
        Top = 302
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 36
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 6
        OnClick = BSaveClick
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
      object BNextPage: TAdvGlowButton
        Tag = 461
        Left = 1
        Top = 158
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1589#1601#1581#1607' '#1580#1583#1610#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = BNextPageClick
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
      object BPrevious: TAdvGlowButton
        Tag = 462
        Left = 1
        Top = 187
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1589#1601#1581#1607' '#1602#1576#1604
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 87
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 8
        OnClick = BPreviousClick
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
      object Bnext: TAdvGlowButton
        Tag = 212
        Left = 1
        Top = 216
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1589#1601#1581#1607' '#1576#1593#1583
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 85
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = BnextClick
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
      object BitBtn9: TAdvGlowButton
        Tag = 460
        Left = 1
        Top = 331
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1582#1585#1608#1580
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 84
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 10
        OnClick = BitBtn9Click
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
      object WritePan: TPanel
        Left = 3
        Top = 359
        Width = 98
        Height = 124
        Anchors = [akTop, akRight]
        ParentColor = True
        TabOrder = 11
        DesignSize = (
          98
          124)
        object Label1: TLabel
          Left = 49
          Top = 36
          Width = 47
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1575#1606#1583#1575#1586#1607' '#1602#1604#1605
        end
        object Label2: TLabel
          Left = 54
          Top = 12
          Width = 40
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1585#1606#1711' '#1602#1604#1605
        end
        object SpeedButton6: TSpeedButton
          Left = 26
          Top = 95
          Width = 24
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7EBD534CC67
            34CC6734CC6734CC6734CC6734CC6734CC6734CC6734CC67FFFFFF0167010167
            010167010167015F9B5BFFFFFFD7EBD57FDB9A41CE6F34CC6734CC6734CC6734
            CC6734CC6734CC67FFFFFF016701016701016701116F10ECEAE0FFFFFFFFFFFF
            FFFFFFFFFFFFB1E5BB59D48034CC6734CC6734CC6734CC67FFFFFF0167010167
            010167017EAD78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7EBD57F
            DB9A41CE6F34CC67FFFFFF016701016701116F10ECEAE0FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFBE7C5BFFFFFFFFFFFFBF5A01FBF2EEB1E5BBFFFFFF0167010167
            019EBE95FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA94401B2581FFFFFFFAF
            4A01AF4A01FBF2EEF6E7E001670120781FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFE3C3B3B85301C25D01AF4A01BF5A01B9704CFFFFFF016701ADC7
            A4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3C3B3BE7C5BBC
            5701B5622EFFFFFFFFFFFF7EAD78FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2643DFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = SpeedButton6Click
        end
        object SpeedButton8: TSpeedButton
          Left = 53
          Top = 95
          Width = 24
          Height = 22
          Anchors = [akTop, akRight]
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF1FFF032542F335F30083F081552180E5114D3FFDC59
            AC6853BB6E52C1715EC17766BD7B6EB27B76AB7F83A8868FA78FE4FFE4BCE7BA
            164B121D5D1B165E181A691FC2FFCB66CA7844C56244CF6750CE6E53C26E5AB6
            6F74BB839DD1A9C3E6CBFFFFFFFFFFFF6EA4692869240D560E085609BFFFC66D
            CC7C55CA7340BD6744B46663C78599ECB8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF28612413510F195C19D4FFD870B97374BE7694DC96BDFFC2D9FFE1DDFF
            EAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8DB486255221255423D6FFD8C8
            ECB8FAF9BF716027FFFFD5FFFFE28F866BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF4D6847173413EDFFEDFFFFE682582394541AFFFFD578481E613B
            1DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA9B3A24C5747F4FFF469
            61448955198F4A0183450595622AF6D1A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFFFA62635FFDFFFEFFFFF292653A8D541DBE8D5BF8D0A6FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECECFBFDFEF1
            EBECFFF4EF876A65FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          OnClick = SpeedButton8Click
        end
        object SpinEdit1: TSpinEdit
          Left = 0
          Top = 33
          Width = 50
          Height = 23
          Anchors = [akTop, akRight]
          MaxValue = 25
          MinValue = 1
          TabOrder = 0
          Value = 2
          OnChange = SpinEdit1Change
        end
        object ColorPan: TPanel
          Left = 0
          Top = 7
          Width = 50
          Height = 22
          Anchors = [akTop, akRight]
          Color = 14666957
          TabOrder = 1
          OnClick = Panel1Click
        end
        object Button1: TAdvGlowButton
          Left = 6
          Top = 61
          Width = 87
          Height = 26
          Anchors = [akTop, akRight]
          Caption = #1583#1585#1580' '#1605#1578#1606
          Font.Charset = ARABIC_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 37
          Images = dm.ImageList_MainNew
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = Button1Click
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
      object Bdelete: TAdvGlowButton
        Tag = 212
        Left = 1
        Top = 245
        Width = 103
        Height = 26
        Anchors = [akTop, akRight]
        Caption = #1581#1584#1601
        Font.Charset = ARABIC_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 90
        Images = dm.ImageList_MainNew
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 12
        OnClick = BdeleteClick
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
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg;*.jpeg)|*.jpeg;*.jpg'
    FilterIndex = 4
    Left = 130
    Top = 62
  end
  object SavePictureDialog: TSavePictureDialog
    Left = 350
    Top = 152
  end
  object ActionManager1: TActionManager
    ActionBars.SessionCount = 43
    ActionBars = <
      item
        Items = <
          item
            Items = <
              item
                Action = DataSetPost1
                ImageIndex = 40
                ShortCut = 113
              end
              item
                Action = DataSetCancel1
                ImageIndex = 56
                ShortCut = 32776
              end
              item
                Action = AEDit
                ImageIndex = 4
                ShortCut = 115
              end
              item
                Visible = False
                Action = Adelete
                ImageIndex = 17
                ShortCut = 16430
              end
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
              end
              item
                Action = NextPage
                ImageIndex = 50
                ShortCut = 34
              end
              item
                Action = PreviosPage
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
                Action = AClear
                ImageIndex = 31
              end>
            Caption = #1606#1575#1605#1607
          end>
        AutoSize = False
      end>
    Left = 244
    Top = 123
    StyleName = 'XP Style'
    object Scan: TAction
      Tag = 1
      Category = #1606#1575#1605#1607
      Caption = #1575#1587#1603#1606
      ImageIndex = 22
      ShortCut = 16457
      OnExecute = ScanExecute
    end
    object OpenFile: TAction
      Tag = 2
      Category = #1606#1575#1605#1607
      Caption = #1582#1608#1575#1606#1583#1606' '#1575#1586' '#1601#1575#1610#1604
      ImageIndex = 49
      ShortCut = 16463
      OnExecute = OpenFileExecute
    end
    object SaveAs: TAction
      Tag = 3
      Category = #1606#1575#1605#1607
      Caption = #1584#1582#1610#1585#1607' '#1583#1585' '#1601#1575#1610#1604
      ImageIndex = 40
      ShortCut = 16467
      OnExecute = SaveAsExecute
    end
    object DataSetPost1: TDataSetPost
      Tag = 4
      Category = 'Dataset'
      Caption = #1584#1582#1610#1585#1607
      Enabled = False
      Hint = 'Post'
      ImageIndex = 40
      ShortCut = 113
      OnExecute = DataSetPost1Execute
    end
    object DataSetCancel1: TDataSetCancel
      Tag = 5
      Category = 'Dataset'
      Caption = #1575#1606#1589#1585#1575#1601
      Enabled = False
      Hint = 'Cancel'
      ImageIndex = 56
      ShortCut = 32776
      OnExecute = DataSetCancel1Execute
    end
    object Aclose: TAction
      Tag = 6
      Category = #1606#1575#1605#1607
      Caption = #1582#1585#1608#1580
      ImageIndex = 56
      ShortCut = 27
      OnExecute = AcloseExecute
    end
    object NextPage: TAction
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1576#1593#1583
      ImageIndex = 50
      ShortCut = 34
      OnExecute = NextPageExecute
    end
    object PreviosPage: TAction
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1602#1576#1604
      ImageIndex = 51
      ShortCut = 33
      OnExecute = PreviosPageExecute
    end
    object NewPage: TAction
      Category = #1606#1575#1605#1607
      Caption = #1589#1601#1581#1607' '#1580#1583#1610#1583
      ImageIndex = 62
      ShortCut = 16429
      OnExecute = NewPageExecute
    end
    object AEDit: TDataSetEdit
      Category = 'Dataset'
      Caption = #1608#1610#1585#1575#1610#1588
      ImageIndex = 4
      ShortCut = 115
      OnExecute = AEDitExecute
    end
    object Adelete: TDataSetDelete
      Category = 'Dataset'
      Caption = #1581#1584#1601
      ImageIndex = 17
      ShortCut = 16430
      Visible = False
      OnExecute = AdeleteExecute
    end
    object Aprintt: TAction
      Category = 'Dataset'
      Caption = #1670#1575#1662
      Enabled = False
      ImageIndex = 37
      ShortCut = 16464
    end
    object AClear: TAction
      Category = #1606#1575#1605#1607
      Caption = #1662#1575#1603
      ImageIndex = 31
      Visible = False
    end
    object Action1: TAction
      Category = #1606#1575#1605#1607
      Caption = #1608#1610#1585#1575#1610#1588' '#1578#1589#1608#1610#1585
    end
  end
  object ColorDialog: TColorDialog
    Left = 440
    Top = 208
  end
  object Timer: TTimer
    Interval = 500
    OnTimer = TimerTimer
    Left = 440
    Top = 160
  end
  object AcquireImage: TAcquireImage
    AppVersionMajorNum = 0
    AppInfo = 'Twain Freeware Component'
    AppManufacturer = 'none'
    AppProductFamily = 'none'
    AppProductName = 'none'
    Language = 0
    Country = 0
    Left = 273
    Top = 229
  end
  object Select_Attachment_by_Page: TADOStoredProc
    Connection = dm.YeganehConnection
    CursorType = ctStatic
    ProcedureName = 'Select_Attachment_by_Page;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@DocumentTypeID'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end
      item
        Name = '@DocumentID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = Null
      end
      item
        Name = '@PageNumber'
        Attributes = [paNullable]
        DataType = ftWord
        Precision = 3
        Value = Null
      end>
    Left = 72
    Top = 176
    object Select_Attachment_by_PageDataDescription: TWideStringField
      FieldName = 'DataDescription'
      Size = 50
    end
    object Select_Attachment_by_PageData: TBlobField
      FieldName = 'Data'
    end
    object Select_Attachment_by_PageAttachmentID: TAutoIncField
      FieldName = 'AttachmentID'
      ReadOnly = True
    end
    object Select_Attachment_by_PageDocumentID: TIntegerField
      FieldName = 'DocumentID'
    end
    object Select_Attachment_by_PagePageNumber: TWordField
      FieldName = 'PageNumber'
    end
    object Select_Attachment_by_PageDocumentTypeID: TWordField
      FieldName = 'DocumentTypeID'
    end
  end
  object DSelect_Attachment_by_Page: TDataSource
    DataSet = Select_Attachment_by_Page
    Left = 128
    Top = 192
  end
end
