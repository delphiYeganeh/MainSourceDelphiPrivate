inherited FInbox: TFInbox
  Tag = 1
  Left = 293
  Top = 106
  Width = 1417
  Height = 769
  BorderIcons = []
  Caption = #1705#1575#1585#1578#1575#1576#1604
  FormStyle = fsMDIChild
  OldCreateOrder = True
  Position = poMainFormCenter
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter2: TSplitter [0]
    Left = 1219
    Top = 25
    Height = 705
    Align = alRight
    Color = clSilver
    ParentColor = False
  end
  object List: TPanel [1]
    Left = 0
    Top = 25
    Width = 1219
    Height = 705
    Align = alClient
    BevelOuter = bvLowered
    BorderWidth = 1
    TabOrder = 0
    object PSearch: TPanel
      Left = 2
      Top = 2
      Width = 1215
      Height = 701
      Align = alClient
      BevelOuter = bvNone
      Caption = 'PSearch'
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 633
        Width = 1215
        Height = 1
        Cursor = crVSplit
        Align = alBottom
        Color = clSilver
        ParentColor = False
      end
      object Label12: TLabel
        Left = 119
        Top = 129
        Width = 37
        Height = 13
        Caption = 'SecTitle'
      end
      object Pdata: TPanel
        Left = 0
        Top = 634
        Width = 1215
        Height = 67
        Align = alBottom
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        DesignSize = (
          1215
          67)
        object Label4: TLabel
          Left = 1148
          Top = 2
          Width = 45
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1578#1606' '#1575#1585#1580#1575#1593
          FocusControl = DbParaph
        end
        object Label9: TLabel
          Left = 1148
          Top = 26
          Width = 75
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
          FocusControl = DBEStaffMemo
        end
        object Label21: TLabel
          Left = 1148
          Top = 48
          Width = 53
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
          FocusControl = DBEDeadLineDate
        end
        object LabelDelayed: TLabel
          Left = 776
          Top = 48
          Width = 254
          Height = 14
          Anchors = [akTop, akRight]
          Caption = #1578#1593#1583#1575#1583' '#1606#1575#1605#1607' '#1607#1575#1610' '#1575#1602#1583#1575#1605' '#1606#1588#1583#1607' ('#1605#1607#1604#1578' '#1575#1602#1583#1575#1605' '#1575#1605#1585#1608#1586') : 0'
          Color = clBtnFace
          Font.Charset = ARABIC_CHARSET
          Font.Color = 225
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object DbParaph: TDBEdit
          Left = 4
          Top = 1
          Width = 1134
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          DataField = 'Paraph'
          DataSource = Dcommon
          TabOrder = 0
        end
        object DBEStaffMemo: TDBEdit
          Left = 4
          Top = 24
          Width = 1134
          Height = 19
          Anchors = [akLeft, akTop, akRight]
          DataField = 'StaffMemo'
          DataSource = Dcommon
          TabOrder = 1
        end
        object DBEDeadLineDate: TDBEdit
          Left = 1048
          Top = 46
          Width = 90
          Height = 19
          Anchors = [akTop, akRight]
          Color = 12312063
          DataField = 'DeadLineDate'
          DataSource = Dcommon
          TabOrder = 2
        end
      end
      object FollowupPanel: TPanel
        Left = 0
        Top = 0
        Width = 273
        Height = 587
        Align = alLeft
        Alignment = taRightJustify
        BevelOuter = bvNone
        TabOrder = 1
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 273
          Height = 20
          Align = alTop
          TabOrder = 0
          DesignSize = (
            273
            20)
          object SpeedButton1: TSpeedButton
            Left = 1
            Top = 2
            Width = 18
            Height = 16
            Cursor = crHandPoint
            Flat = True
            Glyph.Data = {
              32010000424D3201000000000000360000002800000009000000090000000100
              180000000000FC000000C40E0000C40E00000000000000000000CCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00000000000000CCCCCCCC
              CCCCCCCCCCCCCCCC000000000000CCCCCC00CCCCCC000000000000CCCCCCCCCC
              CC000000000000CCCCCCCCCCCC00CCCCCCCCCCCC000000000000000000000000
              CCCCCCCCCCCCCCCCCC00CCCCCCCCCCCCCCCCCC000000000000CCCCCCCCCCCCCC
              CCCCCCCCCC00CCCCCCCCCCCC000000000000000000000000CCCCCCCCCCCCCCCC
              CC00CCCCCC000000000000CCCCCCCCCCCC000000000000CCCCCCCCCCCC000000
              00000000CCCCCCCCCCCCCCCCCCCCCCCC000000000000CCCCCC00CCCCCCCCCCCC
              CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC00}
            OnClick = SpeedButton1Click
          end
          object CloseBtn: TSpeedButton
            Left = 252
            Top = 1
            Width = 18
            Height = 16
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Flat = True
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              F6000000424DF600000000000000360000002800000008000000080000000100
              180000000000C000000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFB17D56FFFFFFFFFFFFFFFFFFB17D56FFFFFFFFFFFFB17D56B17D56FFFF
              FFFFFFFFB17D56B17D56FFFFFFB17D56B17D56FFFFFFFFFFFFB17D56B17D56FF
              FFFFB17D56B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFFFFFFFFFFFFFB17D56
              B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFFFFFFFFFFFFFB17D56B17D56FFFF
              FFFFFFFFB17D56B17D56FFFFFFFFFFFFFFFFFFB17D56FFFFFFFFFFFFFFFFFFB1
              7D56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ParentFont = False
            Visible = False
            OnClick = CloseBtnClick
          end
          object openBtn: TSpeedButton
            Left = 252
            Top = 1
            Width = 18
            Height = 16
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Flat = True
            Font.Charset = ARABIC_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Glyph.Data = {
              F6000000424DF600000000000000360000002800000008000000080000000100
              180000000000C000000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB17D56FFFFFFFFFFFFFFFFFFB17D
              56FFFFFFFFFFFFFFFFFFB17D56B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFFF
              FFFFFFFFFFB17D56B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFFFFFFFFFFFFF
              B17D56B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFB17D56B17D56FFFFFFFFFF
              FFB17D56B17D56FFFFFFB17D56B17D56FFFFFFFFFFFFB17D56B17D56FFFFFFFF
              FFFFB17D56FFFFFFFFFFFFFFFFFFB17D56FFFFFFFFFFFFFFFFFF}
            ParentFont = False
            OnClick = CloseBtnClick
          end
        end
        object MinimizedPanel: TPanel
          Left = 0
          Top = 20
          Width = 24
          Height = 567
          Align = alLeft
          TabOrder = 1
          object labell: TYRotateLabel
            Left = 1
            Top = 139
            Width = 22
            Height = 412
            Cursor = crHandPoint
            Angle = ag90
            Caption = #1583#1607'   '#1662#1610#1711#1610#1585#1610' '#1576#1585#1575#1610' '#1575#1606#1580#1575#1605' '#1608#1580#1608#1583' '#1583#1575#1585#1583' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Color = clBtnFace
            ParentColor = False
            Align = alClient
            OnClick = labellClick
          end
          object PDJRotoLabel1: TYRotateLabel
            Left = 1
            Top = 1
            Width = 22
            Height = 138
            Cursor = crHandPoint
            Angle = ag90
            Caption = #1662#1610#1711#1610#1585#1610' - '#1662#1610#1575#1605' - '#1582#1576#1585' '
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Color = clBtnFace
            ParentColor = False
            Align = alTop
            OnClick = labellClick
          end
          object YRotateLabel1: TYRotateLabel
            Left = 1
            Top = 551
            Width = 22
            Height = 15
            Cursor = crHandPoint
            Angle = ag90
            Caption = '>'
            Font.Charset = ARABIC_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Color = clBlack
            ParentColor = False
            Align = alBottom
            OnClick = YRotateLabel1Click
          end
        end
        object PageControl2: TPageControl
          Left = 24
          Top = 20
          Width = 249
          Height = 567
          ActivePage = TshFollowUp
          Align = alClient
          TabHeight = 30
          TabOrder = 2
          OnEnter = PageControl2Enter
          object TshFollowUp: TTabSheet
            Caption = '   '#1662#1610#1711#1610#1585#1610'   '
            object YDBGrid2: TYDBGrid
              Left = 0
              Top = 0
              Width = 241
              Height = 437
              Cursor = crHandPoint
              Align = alClient
              BiDiMode = bdRightToLeft
              Ctl3D = False
              FixedColor = clInfoBk
              Font.Charset = ARABIC_CHARSET
              Font.Color = clBlue
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsUnderline]
              Options = [dgIndicator, dgRowSelect, dgAlwaysShowSelection]
              ParentBiDiMode = False
              ParentCtl3D = False
              ParentFont = False
              PopupMenu = PopupMenu
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = ARABIC_CHARSET
              TitleFont.Color = clBlue
              TitleFont.Height = -12
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDblClick = YDBGrid2DblClick
              YeganehColor = False
              ImageList = ImageList1
              YeganehFinish = False
              PageNumber = False
              RecordNumber = False
              HasTime = False
              Oriention = poPortrait
              HasDate = False
              HasIndex = False
              PrintTitle = #1593#1606#1608#1575#1606
              InvertFarsiDate = True
              TitleSort = True
              AutoInsert = False
              FooterFields = 'Count'
              OnNeedFontCondition = YDBGrid2NeedFontCondition
              OnNeedImageIndex = YDBGrid2NeedImageIndex
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Comment'
                  Width = 180
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'ToDoDate'
                  Title.Caption = #1578#1575#1585#1610#1582
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'HasAlarm'
                  Width = 20
                  Visible = True
                end>
            end
            object Panel2: TPanel
              Left = 0
              Top = 437
              Width = 241
              Height = 90
              Align = alBottom
              TabOrder = 1
              DesignSize = (
                241
                90)
              object Button2: TBitBtn
                Left = 63
                Top = 59
                Width = 90
                Height = 25
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #1575#1606#1580#1575#1605' '#1588#1583
                Font.Charset = ARABIC_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = Button2Click
                Glyph.Data = {
                  36030000424D3603000000000000360000002800000010000000100000000100
                  18000000000000030000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000699BC35381A54E7B9E4A759646708F4169873B
                  627E375B762F4F6728455B243C4C000000000000000000000000000000253C4D
                  524B4546413E413D3A3B3734373330322E2B2D2A272A2725191513060C100000
                  00000000000000000000000000203A4FD1CFCDB3B3B3A7A7A79B9B9B8F8F8F83
                  83837D7D7D393933000000020400000000000000000000000000000000233C52
                  D4D2D0B4B4B4AAAAAA9E9E9E9393939090904040340000000000FF0000AE0000
                  00000000000000000000000000243E55E0DEDBC1C1C1B4B4B4AAAAAAA5A5A55C
                  5C570000000000FF1E1EFF4C4CFF0000B3000000000000000000000000254158
                  EDEAE8CBCBCBC1C1C1B4B4B4B8B8B80404001A1AEE1E1EFF1515130000005151
                  F80000BA00000000000000000026425AF9F6F4D7D7D7CBCBCBC1C1C1B4B4B4C7
                  C7C70C0C0004041F7B796E1E34450000005151F80000CA00000000000027455E
                  FFFFFFE2E2E2D7D7D7CCCCCCC1C1C1B5B5B5BEBEBE72726EA9A7A5172C3C0000
                  0000000028284C000000000000213C54FFFFFFFFFFFFFCFCFCF0F0F0E2E2E2D7
                  D7D7C9C9C9C1C1C1B4B2B0182D3F000000000000000000000000000000273E52
                  9793900000000000000000000000000000000000000000005F5C592136460000
                  000000000000000000000000005479980000000F637062FFFFE3FFFF00316600
                  2059219AFE22577B00000045657F00000000000000000000000000000077ABD7
                  78ADD9110F1500000063FFFF698FAC0361A9030C0D000000496B876C9FC80000
                  00000000000000000000000000000000000000000000000000107A874B5D6A00
                  3457000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000F70792F7A902A54640000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
              end
              object Button3: TBitBtn
                Left = 63
                Top = 32
                Width = 90
                Height = 25
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #1575#1583#1575#1605#1607' '#1662#1610#1711#1610#1585#1610
                Font.Charset = ARABIC_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                OnClick = Button3Click
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  20000000000000040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000707
                  07FF070707FF070707FF070707FF000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000070707FF9696
                  96FF858585FF969696FF969696FF070707FF0000000000000000000000000000
                  00000000000000000000000000000000000000000000070707FFA0A0A0FF7A7A
                  7AFF070707FF070707FFC2C2C2FF969696FF070707FF00000000000000000000
                  000000000000000000000000000000000000070707FFA0A0A0FF6F6F6FFF0707
                  07FF0000000000000000070707FFC2C2C2FF070707FF00000000000000000000
                  000000000000000000000000000000000000070707FF666666FF040404FF0707
                  07FF0E0E0EFF00000000070707FFC2C2C2FF070707FF00000000000000000000
                  000000000000000000000000000000000000070707FF040404FF5C5C5CFF5858
                  58FF070707FF070707FF8B8B8BFF969696FF070707FF00000000000000000000
                  000000000000070707FF070707FF070707FF070707FF9D9D9DFF7A7A7AFF5858
                  58FF040404FF7E7E7EFFC2C2C2FF070707FF0000000000000000000000000000
                  0000070707FFC2C2C2FF737373FF040404FF989898FFB2B2B2FF979797FF0404
                  04FF737373FFC2C2C2FF070707FF000000000000000000000000000000000707
                  07FFC2C2C2FF7E7E7EFF040404FF585858FF7A7A7AFF9D9D9DFF070707FF0707
                  07FF070707FF070707FF00000000000000000000000000000000070707FF9696
                  96FF8B8B8BFF070707FF070707FF585858FF5C5C5CFF040404FF070707FF0000
                  0000000000000000000000000000000000000000000000000000070707FFC2C2
                  C2FF070707FF000000000E0E0EFF070707FF040404FF666666FF070707FF0000
                  0000000000000000000000000000000000000000000000000000070707FFC2C2
                  C2FF070707FF0000000000000000070707FF6F6F6FFFA0A0A0FF070707FF0000
                  0000000000000000000000000000000000000000000000000000070707FF9696
                  96FFC2C2C2FF070707FF070707FF7A7A7AFFA0A0A0FF070707FF000000000000
                  0000000000000000000000000000000000000000000000000000000000000707
                  07FF969696FF969696FF858585FF969696FF070707FF00000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000070707FF070707FF070707FF070707FF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000}
              end
              object Button1: TBitBtn
                Left = 63
                Top = 6
                Width = 90
                Height = 25
                Cursor = crHandPoint
                Anchors = [akTop, akRight]
                Caption = #1575#1610#1580#1575#1583' '
                Font.Charset = ARABIC_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
                OnClick = Button1Click
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  20000000000000040000C40E0000C40E00000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000E0E0EFF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000E0E
                  0EFF007AB9FF0E0E0EFF00000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000E0E0EFF004A
                  73FF0092DCFF0E0E0EFF00000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000E0E0EFF004A73FF0092
                  DCFF0E0E0EFF0000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000E0E0EFF004A73FF0092DCFF0E0E
                  0EFF000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000E0E0EFF004A73FF0092DCFF0E0E0EFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000E0E0EFF004A73FF0092DCFF0E0E0EFF0E0E0EFF0000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000E0E0EFF004A73FF0092DCFF0E0E0EFF2C0F91FF000096FF0E0E
                  0EFF0E0E0EFF0E0E0EFF00000000000000000000000000000000000000000000
                  00000E0E0EFF004A73FF0092DCFF0E0E0EFF3C32D5FF000096FF2E149BFF4643
                  F5FF0000DCFF000073FF0E0E0EFF0E0E0EFF0E0E0EFF00000000000000000E0E
                  0EFF004A73FF0092DCFF0E0E0EFF3C32D5FF000073FF000096FF321CAAFF4643
                  F5FF0000DCFF000073FF0000B9FF000096FF3C32D5FF0E0E0EFF0E0E0EFF004A
                  73FF0092DCFF0E0E0EFF3C32D5FF000073FF000096FF3726BEFF4643F5FF0000
                  DCFF000073FF0000B9FF000096FF3018A4FF3C32D5FF0E0E0EFF0E0E0EFF48B8
                  FFFF0E0E0EFF3C31D2FF3A2ECDFF000073FF000096FF3726BEFF4643F5FF0000
                  DCFF000073FF0000B9FF000096FF3C32D5FF0E0E0EFF000000000E0E0EFF0E0E
                  0EFF0E0E0EFF0E0E0EFF000073FF000096FF3B30D1FF4643F5FF0000DCFF0000
                  73FF0000B9FF000096FF3422B7FF3C32D5FF0E0E0EFF00000000000000000000
                  000000000000000000000E0E0EFF0E0E0EFF0E0E0EFF4643F5FF0000DCFF0000
                  73FF0000B9FF000096FF3C32D5FF0E0E0EFF0000000000000000000000000000
                  000000000000000000000000000000000000000000000E0E0EFF0E0E0EFF0E0E
                  0EFF000096FF3E34DAFF3C32D5FF0E0E0EFF0000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000E0E0EFF0E0E0EFF0E0E0EFF000000000000000000000000}
              end
            end
          end
          object TshMessage: TTabSheet
            Caption = ' '#1662#1610#1575#1605' '#1608' '#1582#1576#1585' '
            ImageIndex = 1
            object Panel6: TPanel
              Left = 0
              Top = 0
              Width = 241
              Height = 527
              Align = alClient
              BevelOuter = bvNone
              TabOrder = 0
              object GroupBox1: TGroupBox
                Left = 0
                Top = 0
                Width = 241
                Height = 97
                Align = alTop
                Caption = #1662#1610#1575#1605
                TabOrder = 0
                DesignSize = (
                  241
                  97)
                object MessageLabel: TLabel
                  Left = 8
                  Top = 19
                  Width = 225
                  Height = 44
                  Alignment = taCenter
                  Anchors = [akLeft, akTop, akRight]
                  AutoSize = False
                  Caption = '............................'
                  Color = clBtnFace
                  ParentColor = False
                  WordWrap = True
                end
                object BBOK: TBitBtn
                  Left = 63
                  Top = 66
                  Width = 75
                  Height = 25
                  Cursor = crHandPoint
                  Anchors = [akTop, akRight]
                  Caption = #1606#1605#1575#1610#1588' '#1662#1610#1575#1605
                  TabOrder = 0
                  OnClick = BBOKClick
                end
              end
              object GroupBox2: TGroupBox
                Left = 0
                Top = 106
                Width = 241
                Height = 421
                Align = alClient
                Caption = #1604#1610#1587#1578' '#1582#1576#1585#1607#1575#1610' '#1582#1608#1575#1606#1583#1607' '#1606#1588#1583#1607
                TabOrder = 1
                object Panel9: TPanel
                  Left = 2
                  Top = 15
                  Width = 237
                  Height = 404
                  Align = alClient
                  BevelOuter = bvNone
                  TabOrder = 0
                  object Panel7: TPanel
                    Left = 0
                    Top = 363
                    Width = 237
                    Height = 41
                    Align = alBottom
                    BevelOuter = bvNone
                    Ctl3D = True
                    ParentCtl3D = False
                    TabOrder = 0
                    DesignSize = (
                      237
                      41)
                    object BBNewsOK: TBitBtn
                      Left = 63
                      Top = 8
                      Width = 75
                      Height = 25
                      Cursor = crHandPoint
                      Anchors = [akTop, akRight]
                      Caption = #1606#1605#1575#1610#1588' '#1582#1576#1585
                      TabOrder = 0
                      OnClick = BBNewsOKClick
                    end
                  end
                  object DBGrid1: TDBGrid
                    Left = 0
                    Top = 0
                    Width = 237
                    Height = 363
                    Cursor = crHandPoint
                    Align = alClient
                    Ctl3D = True
                    DataSource = DSNews
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
                    ParentCtl3D = False
                    ReadOnly = True
                    TabOrder = 1
                    TitleFont.Charset = ARABIC_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'Tahoma'
                    TitleFont.Style = []
                    OnDblClick = DBGrid1DblClick
                    Columns = <
                      item
                        Alignment = taCenter
                        Expanded = False
                        FieldName = 'Code'
                        Title.Alignment = taCenter
                        Width = 32
                        Visible = True
                      end
                      item
                        Alignment = taLeftJustify
                        Expanded = False
                        FieldName = 'Title'
                        Width = 195
                        Visible = True
                      end>
                  end
                end
              end
              object Panel8: TPanel
                Left = 0
                Top = 97
                Width = 241
                Height = 9
                Align = alTop
                BevelOuter = bvNone
                TabOrder = 2
              end
            end
          end
          object TabSheet6: TTabSheet
            Caption = #1670#1578
            ImageIndex = 2
            TabVisible = False
            OnShow = TabSheet6Show
            object GroupBox3: TGroupBox
              Left = 0
              Top = 2
              Width = 286
              Height = 47
              Caption = #1575#1606#1578#1582#1575#1576' '#1705#1575#1605#1662#1610#1608#1578#1585' '#1605#1602#1589#1583
              TabOrder = 0
              object Label6: TLabel
                Left = 179
                Top = 19
                Width = 3
                Height = 13
                BiDiMode = bdLeftToRight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clMaroon
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
              end
              object Label7: TLabel
                Left = 14
                Top = 19
                Width = 10
                Height = 13
                Caption = 'IP'
              end
              object DestinationComputer: TButton
                Left = 147
                Top = 16
                Width = 25
                Height = 19
                Caption = '. . .'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnClick = DestinationComputerClick
              end
              object Edit1: TEdit
                Left = 24
                Top = 15
                Width = 121
                Height = 21
                BiDiMode = bdLeftToRight
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentBiDiMode = False
                ParentFont = False
                TabOrder = 1
              end
            end
            object GroupBox4: TGroupBox
              Left = 0
              Top = 54
              Width = 286
              Height = 235
              Caption = #1605#1578#1608#1606' '#1583#1585#1610#1575#1601#1578' '#1588#1583#1607
              TabOrder = 1
              object Memo1: TMemo
                Left = 8
                Top = 16
                Width = 272
                Height = 211
                BiDiMode = bdRightToLeft
                Color = 14342874
                ParentBiDiMode = False
                ReadOnly = True
                ScrollBars = ssVertical
                TabOrder = 0
              end
            end
            object GroupBox6: TGroupBox
              Left = 0
              Top = 289
              Width = 286
              Height = 169
              Caption = #1605#1578#1606' '#1575#1585#1587#1575#1604#1610
              TabOrder = 2
              object btbSend: TButton
                Left = 8
                Top = 139
                Width = 81
                Height = 25
                Caption = #1575#1585#1587#1575#1604
                TabOrder = 0
                OnClick = btbSendClick
              end
              object Memo2: TMemo
                Left = 8
                Top = 16
                Width = 272
                Height = 119
                MaxLength = 8000
                ScrollBars = ssVertical
                TabOrder = 1
                OnKeyDown = Memo2KeyDown
              end
              object CheckBox1: TCheckBox
                Left = 104
                Top = 144
                Width = 176
                Height = 17
                Caption = #1607#1606#1711#1575#1605' '#1585#1587#1610#1583#1606' '#1605#1578#1606' '#1580#1583#1610#1583' '#1570#1604#1575#1585#1605' '#1576#1583#1607
                TabOrder = 2
              end
            end
          end
        end
      end
      object lettersDbGrid: TYDBGrid
        Left = 273
        Top = 0
        Width = 942
        Height = 587
        Cursor = crHandPoint
        Align = alClient
        BiDiMode = bdRightToLeft
        Ctl3D = True
        DataSource = Dcommon
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowSelect, dgAlwaysShowSelection, dgMultiSelect]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu
        ReadOnly = True
        TabOrder = 2
        TitleFont.Charset = ARABIC_CHARSET
        TitleFont.Color = clBlue
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = lettersDbGridCellClick
        OnDblClick = AviewAllletterExecute
        OnMouseMove = lettersDbGridMouseMove
        OnMouseUp = lettersDbGridMouseUp
        YeganehColor = True
        ImageList = ImageList
        YeganehFinish = False
        PageNumber = False
        RecordNumber = False
        HasTime = False
        Oriention = poPortrait
        HasDate = False
        HasIndex = False
        PrintTitle = #1593#1606#1608#1575#1606
        InvertFarsiDate = True
        TitleSort = True
        AutoInsert = False
        OnNeedColorCondition = lettersDbGridNeedColorCondition
        FooterFields = 'Count'
        OnNeedFontCondition = lettersDbGridNeedFontCondition
        OnNeedImageIndex = lettersDbGridNeedImageIndex
        Columns = <
          item
            Expanded = False
            FieldName = 'Letter_Type'
            Title.Caption = ' '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReType'
            Title.Caption = ' '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DeadLineDate'
            Title.Caption = ' '
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'has_Page'
            Title.Caption = '  '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'has_WordPage'
            Title.Caption = '  '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'has_file'
            Title.Caption = '  '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'InnerNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1606#1575#1605#1607
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IndicatorID'
            Title.Alignment = taCenter
            Title.Caption = #1575#1606#1583#1610#1603#1575#1578#1608#1585
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'innerNo2'
            Title.Caption = #1588#1605#1575#1585#1607' '#1578#1585#1705#1610#1576#1610' '#1606#1575#1605#1607
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiterTitle'
            Title.Alignment = taCenter
            Title.Caption = #1575#1585#1580#1575#1593' '#1583#1607#1606#1583#1607
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MemoAndRecomUserCount'
            Title.Alignment = taCenter
            Title.Caption = #1605#1590#1605#1608#1606' '#1606#1575#1605#1607' '#1608' '#1583#1601#1593#1575#1578' '#1575#1585#1580#1575#1593
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 288
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Paraph'
            Title.Alignment = taCenter
            Title.Caption = #1605#1578#1606' '#1575#1585#1580#1575#1593
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 161
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiteDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593' '#1608' '#1585#1608#1606#1608#1588#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecommiteTime'
            Title.Caption = #1587#1575#1593#1578' '#1575#1585#1580#1575#1593' '#1608' '#1585#1608#1606#1608#1588#1578
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SubjectTitle'
            Title.Caption = #1605#1608#1590#1608#1593' '#1606#1575#1605#1607
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'DeadLineDays'
            Title.Caption = #1608#1590#1593' '#1605#1607#1604#1578' '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ProceedDate'
            Title.Alignment = taCenter
            Title.Caption = #1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ActionTypeTitle'
            Title.Caption = #1606#1608#1593' '#1575#1602#1583#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sendertitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1585#1601' '#1605#1705#1575#1578#1576#1607
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 118
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ReceiveMode'
            Title.Alignment = taCenter
            Title.Caption = #1606#1575#1605#1607' '#1608#1575#1585#1583#1607#1567
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'IncommingNO'
            Title.Caption = #1588#1605#1575#1585#1607' '#1608#1575#1585#1583#1607
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 111
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Incommingdate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607' '#1608#1575#1585#1583#1607
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 83
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UrgencyTitle'
            Title.Alignment = taCenter
            Title.Caption = #1601#1608#1585#1610#1578
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ClassificationTitle'
            Title.Alignment = taCenter
            Title.Caption = #1591#1576#1602#1607' '#1576#1606#1583#1610
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'ViewDate'
            Title.Caption = #1578#1575#1585#1610#1582' '#1582#1608#1575#1606#1583#1606' '
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 73
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ActionTypeTitle'
            Title.Caption = #1608#1590#1593#1610#1578' '#1575#1602#1583#1575#1605
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'StaffMemo'
            Title.Alignment = taCenter
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1576#1575#1610#1711#1575#1606#1610
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 142
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'IsAnswerTitle'
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 92
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'CenterNo'
            Title.Caption = #1588#1605#1575#1585#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1605#1585#1705#1586#1610
            Title.Font.Charset = ARABIC_CHARSET
            Title.Font.Color = clBlack
            Title.Font.Height = -12
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UserMemo'
            Title.Caption = #1578#1608#1590#1610#1581#1575#1578' '#1601#1585#1587#1578#1606#1583#1607
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SecretariatTitle'
            Title.Caption = #1606#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HasLetterForms'
            Title.Caption = #1601#1585#1605#1607#1575#1610' '#1575#1583#1575#1585#1610
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FollowLetterNo'
            Title.Caption = #1593#1591#1601
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RetroactionNo'
            Title.Caption = #1662#1610#1585#1608
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FollowUpStatus'
            Visible = True
          end>
      end
      object ImageEnDBView1: TImageEnDBView
        Left = 328
        Top = 420
        Width = 67
        Height = 66
        Ctl3D = False
        ParentCtl3D = False
        MouseInteract = [miZoom, miScroll]
        BackgroundStyle = iebsChessboard
        ImageEnVersion = '3.0.0'
        EnableInteractionHints = True
        Visible = False
        TabOrder = 3
        DataField = 'Image'
        DataSource = DSLetterData
        ReadOnly = True
        DataFieldImageFormat = ifJpeg
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clWindowText
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
      end
      object Panel11: TPanel
        Left = 0
        Top = 607
        Width = 1215
        Height = 26
        Align = alBottom
        TabOrder = 4
        Visible = False
        DesignSize = (
          1215
          26)
        object Image1: TImage
          Left = 864
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            055449636F6E0000010001001010000001002000680400001600000028000000
            1000000020000000010020000000000040040000000000000000000000000000
            000000000000000000000000000000006B6B6B357A7A7A855757571400000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000008C8C8C9FADADADFF6969695200000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000009D9D9DCC9D9D9DFF5B5B5B2700000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000003F3F3F03A6A6A6F5949494F54747470300000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000053535326ABABABFF909090CC0000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000067676753B3B3B3FF7F897E9F0000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000007E7E7E80B6B7B6FF229320E31580122900000000
            0000000000000000000000000C500C0215871452219F20BA24AD20F1189717BC
            0D540C070000000000000000929292AD9AA99AFF2FB32EFF32B630F31A921888
            147B1346127710491790168228AB27DE4AD848FF4CE449FF2FD02EFF19A618F5
            0C530C020000000000000000A0A0A0D97CA17CFF39C137FF52E050FF56E654FF
            31C830FF19B617FF28C827FF49E146FF58EC55FF48E045FF2BCD28FF179C16CB
            00000000000000004545450AA8A8A8FC649F63FF41CE40FF54E451FF55EA53FF
            32D330FF1AC018FF2ECF2DFF4DE54AFF57EC54FF44DE41FF26C924FF1793169D
            000000000000000058585834ACACADFF56A756FF45D442FF56E554FF52EA51FF
            2BCE28FF1BC118FF33D330FF51E650FF56E854FF3EDA3AFF22C320FF178D1670
            00000000000000006E6E6E61B6B6B7FF41AB3FFF49D848FF58E855FF4EE64BFF
            24C920FF1DC319FF3AD736FF56E854FF52E951FF38D735FF1EB71AFF147D1243
            00000000000000008585858EAEB4B0FF2EAD2CFF4CDB4AFF59EA56FF47E243FF
            1FC51DFF21C61FFF40DB3CFF57EC54FF4FE44EFF33D330FF1BAD17FE0F640F16
            0000000000000000979797BA95A595FF2DB12CFF4FDD4EFF58EC55FF40DD3CFF
            1CC218FF26C924FF46DF42FF49D746FF32BA2FFA22AF20F9189E17E900000000
            000000000000000080808183838383C52F872E6630B32FED4CDB4AFF36D434FF
            18B817FF1FAE1EFA1E9B1DB0168A144D0F620F081169100B178D165400000000
            000000000000000000000000000000000000000010660F0D15871456178D156F
            16871554106D1014000000000000000000000000000000000000000000000000
            00000000E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000
            C0000000C0010000800100008001000080010000800100008003000080030000
            F07F0000}
        end
        object Image2: TImage
          Left = 632
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            055449636F6E0000010001001010000001002000680400001600000028000000
            1000000020000000010020000000000040040000000000000000000000000000
            000000000000000000000000000000006B6B6B357A7A7A855757571400000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000008C8C8C9FADADADFF6969695200000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000009D9D9DCC9D9D9DFF5B5B5B2700000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000003F3F3F03A6A6A6F5949494F54747470300000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000053535326ABABABFF909090CC0000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000067676753B4B3B3FF8080899F0000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000007E7E7E80B6B6B7FF212193E31414802900000000
            0000000000000000000000000C0C50021414875220209FBA2222ADF1171797BC
            0D0D54070000000000000000929292AD9A9AAAFF2E2EB4FF3131B6F319199288
            13137B4612127749161690822727ABDE4949D8FF4B4BE4FF2E2ED0FF1818A6F5
            0C0C53020000000000000000A0A0A0D97D7CA1FF3737C1FF5050E2FF5454E8FF
            3030C8FF1717B6FF2727C9FF4747E2FF5757ECFF4646E1FF2929CDFF16169CCB
            00000000000000004545450AA8A8A8FC66659FFF4040CEFF5252E4FF5454EBFF
            3030D3FF1818C0FF2D2DCFFF4C4CE5FF5656ECFF4242DEFF2424C9FF1616939D
            000000000000000058585834ADACACFF5656A7FF4444D4FF5454E7FF5151EAFF
            2929CEFF1919C1FF3232D3FF5050E8FF5454EAFF3C3CDAFF2020C3FF16168D70
            00000000000000006E6E6E61B7B6B6FF4040ABFF4848D8FF5656E9FF4C4CE7FF
            2222C9FF1B1BC3FF3838D7FF5454EAFF5151E9FF3737D7FF1C1CB7FF13137D43
            00000000000000008585858EB1B0B4FF2C2CADFF4B4BDCFF5757EBFF4545E2FF
            1D1DC5FF1F1FC6FF3E3EDBFF5656ECFF4E4EE6FF3232D3FF1919ADFE0F0F6416
            0000000000000000979797BA9595A6FF2C2CB1FF4E4EDFFF5757ECFF3E3EDDFF
            1A1AC2FF2424C9FF4444DFFF4848D7FF3131BAFA2121AFF917179EE900000000
            000000000000000081808083838383C52E2E87662F2FB3ED4B4BDCFF3434D4FF
            1717B8FF1E1EAEFA1D1D9BB015158A4D0F0F62081010690B16168D5400000000
            00000000000000000000000000000000000000000F0F660D1414875615158D6F
            1515875410106D14000000000000000000000000000000000000000000000000
            00000000E3FF0000E3FF0000E3FF0000C3FF0000C7FF0000C7FF0000C3C00000
            C0000000C0010000800100008001000080010000800100008003000080030000
            F07F0000}
        end
        object Image4: TImage
          Left = 1078
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFC6DEBD0073006BAD6BEFF7EF
            EFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFD6EFD68CC6
            846BB56B4AA55208841031C652218C2994C694FFFFFFEFEFEFEFEFEFEFEFEFEF
            EFEFEFEFEFFFFFFF84C67B21A52108AD1821BD3929C64A31CE5263FF9C52E77B
            29AD42429442DEEFDEEFEFEFEFEFEFEFEFEFEFEFEF73CE73009C0818BD3131D6
            4A39DE5A42E76B52EF7B52F7846BFFA552EF84006B00FFFFF7DEEFDEEFEFEFEF
            EFEFBDEFBD00940018B52921C63929CE4229C64229C64239CE525AF7844AE773
            188C21EFF7EF6BA56B005A00ADCEA5EFEFEF31B531009C0018B52121C63910A5
            1852B54A73BD73399C3908A52129A531C6DEBD94BD8C00840008A518298C29F7
            F7F794DE9452BD5218AD1800940084CE84EFEFEFEFEFEFC6EFC6008400C6E7BD
            BDDEBD007B0021CE3921C631007B00C6DEC652A54A84B57BC6DEC6D6F7D6EFEF
            EFEFEFEFEFEFEFC6EFC6ADDEADEFEFEFFFFFFF18841829CE4229CE4200941094
            C68C00840839CE5A008C10007300429C427BBD7BDEEFDEEFEFEFEFEFEFEFEFEF
            EFEFEF39943129CE4A31D65210A52184BD84088C107BFFBD73FFAD63FF9C0884
            104A9C4ACEE7CEEFEFEFBDEFBDFFFFFFE7F7E7108C1042E76B39DE5A089C10A5
            D6A50894106BFFAD52F7845AFF8C087300EFF7EFEFEFEFEFEFEF5AC65A39AD39
            31942929C64A4AE76B42DE63089C10DEEFDE10A51863FF9C4AEF7352EF7B18AD
            2984B57BEFEFEFEFEFEFBDE7BD00A50039D65A52EF7B52EF7B29C64263B55AEF
            EFEF00940000940031CE4A42E76B39DE5A0894104AA54A6BBD6BCEE7CE31BD39
            52F7845AF78C5AF78410AD29219421ADDEAD63C6639CD69C18AD2139D65A31D6
            5231CE4A10AD21008C0073B5736BCE6B42E76B73FFAD42E77329C64231AD398C
            CE8CEFEFEFEFEFEF7BCE7300A50831CE4A29C64221C63918BD29319431A5D69C
            21C63918C63139BD399CD694EFFFEFEFEFEFEFEFEFEFEFEFEFEFEF9CDE9C009C
            0010AD1810B52110B5181094109CD69C39B53994DE94FFFFFFEFEFEFEFEFEFEF
            EFEF}
        end
        object Image5: TImage
          Left = 1198
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000EEEEEEEEEEEEFFFFFFDEDEDEC6C6C6DEDEDEFFFFFFEEEEEE6363637B7B7B
            7373739C9C9CDEDEDEEEEEEEEEEEEEEEEEEEEEEEEEEFEFEFC6C6C6CECECEE7E7
            E7F7F7F7EFEFEFEEEEEE5A5A5A7B7B7B7B7B7B737373848484ADADADEFEFEFEE
            EEEEDEDEDEBDBDBDD6D6D6E7E7E7E7E7E7E7E7E7EFEFEFEEEEEED6D6D68C8C8C
            6B6B6B7B7B7B737373737373848484D6D6D6BDBDBDDEDEDEDEDEDED6D6D6E7E7
            E7EEEEEEFFFFFFADADB5C6C6C6F7F7F7CECECE7B7B7B6B6B6B7373736B6B6B94
            9494B5B5B5D6D6D6D6D6D6F7F7F7EEEEEEB5B5B57B7B7B8C8C849C9C949C9C9C
            CECECEEFEFEFADADAD737373737373848484B5B5B5E7E7E7FFFFFFBDBDBD6363
            635A5A5A847B6B7B8C9C949494C6BDADD6D6D6EFEFEFF7F7F7DEDEDE9C9C9C73
            7373CECECEF7F7F7CECECE8484848484847B73635A6384008CFF2184F7BDCEE7
            FFEFDEF7EFEFEFEFEFE7E7E7E7E7E7B5B5B5EEEEEEE7E7E7F7F7F7EFEFEFCECE
            C6BDAD9C3184E742B5FF31A5FF107BFF8CADE7E7D6C6D6D6CED6D6D6DEDEDEEE
            EEEEEEEEEEEEEEEEFFFFFFF7F7F7FFF7EF94BDF731A5FF42ADFF4AB5FF39ADFF
            1884FF6B9CE7EFEFEFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE7F7
            FF52ADFF39A5FF42ADFF4AADFF4AB5FF4AB5FF2994FF6BADFFF7FFFFEEEEEEEE
            EEEEEEEEEEEEEEEEEEEEEEEEEEEE94CEFF39A5FF42ADFF42ADFF4AB5FF4AB5FF
            63C6FF63CEFF31A5FF52ADFFEFF7FFEEEEEEEEEEEEEEEEEEEEEEEECEE7FF52B5
            FF42ADFF4AADFF4AB5FF4AB5FF4AB5FF42A5FF4AADFF8CC6FFDEEFFFEEEEEEEE
            EEEEEEEEEEEEEEEEF7FFFF84CEFF42B5FF5AC6FF4AB5FF4AB5FF52BDFF2994FF
            4294FFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEFF7FF9CD6FF84D6
            FF52B5FF4AB5FF52B5FF5ABDFF31A5FF5AA5FFEEEEEEEEEEEEEEEEEEEEEEEEEE
            EEEEEEEEEEEEEEEEEEEEEEFFFFFFF7F7FF6BB5FF4AB5FF52BDFF5ABDFF39A5FF
            5AA5FFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
            EE73BDFF4ABDFF5ACEFF63D6FF42BDFF5AADFFEEEEEEEEEEEEEEEEEEEEEEEEEE
            EEEE}
        end
        object Image6: TImage
          Left = 1015
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000F0F0F0F0F0F0CEBDB5A58473CEC6BDDED6CEEFE7E7F7F7F7FFFFFFF0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F7F7F7B5A594F0F0F0E7DE
            DEDECECECEC6BDB5A594B5A594C6B5ADD6C6C6DED6CEFFFFFFF0F0F0F0F0F0F0
            F0F0F0F0F0DED6D6CEBDB5D6A594A56B5AB58C7BA58C84C6C6C6F7F7F7EFE7E7
            CEC6BDC6B5ADDED6CEF0F0F0F0F0F0F0F0F0F0F0F0CEB5ADEFE7DEC684737B29
            215A1008100000E7DECEF0F0F0F0F0F0F0F0F0F0F0F0FFFFFFF0F0F0F0F0F0F0
            F0F0F7EFEFCEB5ADF7E7D6DEBDADEFD6CEFFF7DE9494D60021FF0000ADCECEDE
            F0F0F0B59C8CF0F0F0F0F0F0F0F0F0F0F0F0E7DEDED6C6B5F7DECEE7C6ADE7C6
            B5E7C6B5EFCEB51031DE084AFF0010BDADA5B5D6BDADF0F0F0F0F0F0F0F0F0F0
            F0F0DED6CED6C6BDEFD6BDE7C6ADE7C6B5E7C6BDFFD6B57B73BD1042F70842FF
            08089CCEC6CEF0F0F0F0F0F0F0F0F0F0F0F0DED6CEE7D6C6E7C6ADE7C6ADE7C6
            B5E7C6ADEFDECEF0F0F02139E7215AFF0029FF2129ADF0F0F0F0F0F0F0F0F0F0
            F0F0DED6CEEFDECEE7BDADE7C6ADE7C6B5E7C6ADE7CEC6FFE7C6CECEE70018F7
            5273BD393939F0F0F0F0F0F0F0F0F0F0F0F0DECEC6EFDECEDEBDA5DEBDADDEC6
            ADE7C6ADE7C6B5E7CEB5FFFFF7A5ADD6B5B5AD526BC68C84C6F0F0F0F0F0F0F0
            F0F0DECEC6F7E7CEDEBDA5DEBDA5DEBDADE7C6B5FFF7EFFFFFFFF0F0F0F7EFD6
            5A638C395ACE0008BDCEC6DEF0F0F0F0F0F0DECEC6F7E7D6DEBDA5DEBDA5DEBD
            A5DEBDADEFD6C6EFD6C6EFD6C6DED6C69C8C8CA5A58C0031FF2129B5F7F7EFF0
            F0F0DECEBDFFFFE7F7E7CEF7E7D6EFE7D6EFE7D6EFE7D6E7D6CEDED6C6BD9C8C
            E7D6CEFFFFFF6373A50842FF0018D6BDBDDED6BDADD6B59CCEB5A5CEB5A5C6AD
            9CBDAD9CCEB5ADD6C6BDDECEC6EFE7DEFFFFFFF0F0F0D6D6C63952AD0031F731
            39CEF7F7EFEFE7DEF7EFEFFFF7F7F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F7F7EFADADA5526B94212994F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F7F7F7B5B5CE9C
            9C94}
        end
        object Image7: TImage
          Left = 1140
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000F0F0F0F0F0F0FFFFFFDEDEDEB5B5B5C6C6C6FFFFFFF0F0F07373737B7B7B
            6B6B6B949494DEDEDEFFFFFFF0F0F0F0F0F0F0F0F0EFEFEFC6C6C6BDBDBDDEDE
            DEF7F7F7EFEFEFF0F0F07B7B7B7373737B7B7B737373737373A5A5A5E7E7E7F0
            F0F0DEDEDEBDBDBDCECECEE7E7E7E7E7E7E7E7E7F7F7F7F0F0F0D6D6D6A5A5A5
            7373737B7B7B7373736B6B6B7B7B7BCECECEBDBDBDD6D6D6DEDEDED6D6D6EFEF
            EFF0F0F0DEDEDEA5A5A5BDBDBDDEDEDED6D6D69494947373737373736B6B6B94
            9494B5B5B5D6D6D6D6D6D6FFFFFFE7E7E7949494848484948C949C9C9CA5A5A5
            C6C6C6EFE7EFC6C6C68484847373738C8C8CB5B5B5EFEFEFF7F7F79C9C9C6B63
            6B6B6B6B6B736B8C8C8C529C5A29A5319CBD9CF7EFF7F7F7F7EFEFEFADADAD8C
            8C8CDEDEDECECECED6D6D6B5B5B584848452845A29A54210C63131E76329CE52
            10AD21BDD6BDE7DEE7CECECEBDBDBDD6D6D6F0F0F0FFFFFFE7E7E7D6CED6ADB5
            AD29BD4A31E76B4AEF8452EF8C52D67321B53984AD84638C6394AD94FFFFFFF0
            F0F0F0F0F0F0F0F0F0F0F0FFFFFFD6DED64ACE6B42E7734AE77B52EF845ACE6B
            00A51839C65A31C64A18AD21A5E7ADF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0EFFF
            EF5AD67342E77B4AE78452EF8463EF8C52F78C5AF78C31D65210B521CEEFD6F0
            F0F0F0F0F0F0F0F0EFFFF7ADEFBD52CE6B39CE5A4AEF8452EF8452EF845AF78C
            63FF944ADE6308B521A5E7ADF0F0F0F0F0F0F0F0F0FFFFFF8CEFA521D65252F7
            8C5AF78C52EF8452EF8C5AF78C63FF9463EF8418BD316BD67BF7FFF7F0F0F0F0
            F0F0F0F0F0F0F0F0EFFFEF73DE8C4AEF7B5AF78C5AF78C5AF78C5AFF9473FF9C
            39D65242CE5AD6F7DEF0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0E7F7E763DE
            8452F78463FF945AFF9473FFA563E77B31CE4AA5E7B5F0F0F0F0F0F0F0F0F0F0
            F0F0F0F0F0F0F0F0F0F0F0F0F0F0D6F7DE52DE7363FF945AFF9C94F7A531DE5A
            6BD684F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0D6FFDE42DE6BADFFC64AEF7342CE63F7FFF7F0F0F0F0F0F0F0F0F0F0F0F0F0
            F0F0}
        end
        object Image8: TImage
          Left = 944
          Top = 3
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036040000424D360400000000000036000000280000001000
            0000100000000100200000000000000400000000000000000000000000000000
            0000FF00FF00949494008C8C8C007B8484007B8C8C007B848400848C8C008C8C
            8C008C8C8C00949C9C00ADADAD00BDC6C600D6D6D600E7E7E700EFEFEF00F7F7
            F700A5A5A50084D6E70094EFF70073BDEF0094EFFF009CF7FF009CF7FF0094F7
            FF0094F7FF008CE7F70084D6DE0073BDC6006BA5AD0063949C0063949C007373
            7300949C9C0073B5BD00638C8C0084B5DE00ADEFF700ADEFF700ADEFF700ADF7
            F700ADF7F700A5F7F700A5F7F7009CF7F70094F7FF008CEFFF0084EFFF008C94
            94008C949400A5E7EF009CCECE008CBDE700ADEFF700ADEFF700ADEFF700A5EF
            EF00A5EFEF009CE7EF0094E7EF0094E7EF008CE7EF008CDEEF0084DEE7009C9C
            9C008C8C8C00B5F7FF00B5EFEF0084B5DE00ADDEEF00ADE7EF00ADE7EF00A5E7
            EF00A5E7EF00A5E7EF00A5E7EF00A5EFEF00A5EFF700A5F7FF009CE7EF00ADAD
            AD008C949400CEFFFF00CEFFFF0094BDEF00C6EFF700C6F7F700C6F7F700C6F7
            F700C6F7F700BDF7F700BDF7FF00BDF7FF00B5F7F700B5FFFF00A5EFEF00ADAD
            AD0094949400DEFFFF00DEFFFF00A5C6EF00CEEFF700D6F7F700CEF7F700CEF7
            F700CEF7F700C6F7F700BDF7F700B5EFF700ADEFF700A5EFF70094DEE700A5A5
            AD00949C9C007B9CA5005A736B0084A5DE00B5E7EF00BDE7EF00C6EFF700CEF7
            F700CEF7F700CEFFFF00D6FFFF00D6FFFF00CEFFFF00CEFFFF00B5F7F700ADAD
            AD009C9C9C00E7F7F700D6E7DE00B5CEF700E7F7FF00E7FFFF00D6F7FF00CEF7
            F700CEF7F700BDEFF700B5E7EF00A5DEEF009CDEEF009CE7EF0094DEE700A5A5
            A5009C9C9C00D6FFFF00DEFFFF009CB5EF00CEEFF700D6EFF700CEEFF700CEF7
            F700CEF7F700CEF7F700CEF7FF00C6F7F700C6F7F700BDF7FF00B5F7F700A5A5
            A500A5A5A500E7FFFF00EFFFFF00ADBDF700E7F7F700E7F7FF00DEF7FF00DEF7
            FF00DEF7FF00D6F7FF00CEF7F700C6F7F700BDF7F700BDF7FF00B5FFFF009C9C
            9C00A5ADAD00DEF7FF00EFFFFF00A5BDEF00D6E7F700D6EFF700C6EFEF00BDE7
            EF00BDE7EF00BDE7EF00B5E7EF00ADE7EF00ADDEEF00A5DEE7009CCECE009C9C
            9C00BDBDBD009CBDC60052635A008CA5D600BDDEF700C6E7EF00BDE7EF00B5E7
            EF00B5E7EF00B5EFF700A5BDC6008CD6D6007BF7FF008CADAD00EFE7E700FFFF
            FF00BDBDBD00EFFFFF00FFFFFF00C6D6FF00DEF7FF00F7FFFF00EFFFFF00EFFF
            FF00EFFFFF00E7FFFF00CEDEDE006BA5A5008CADAD00E7DEDE00FFFFFF00FFFF
            FF00C6C6C600CEDEDE00E7F7EF00ADC6EF00CEE7F700E7FFF700E7FFFF00E7FF
            FF00E7FFFF00EFFFFF00BDDEDE007B848400E7E7E700FFFFFF00FFFFFF00FFFF
            FF00E7E7E700C6C6C600C6C6C600C6C6C600BDBDBD00B5B5B500ADADAD00A5A5
            A500A5A5A5009C9C9C008C8C8C00F7EFEF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00}
        end
        object Label14: TLabel
          Left = 892
          Top = 4
          Width = 49
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1662#1610#1588' '#1606#1608#1610#1587
        end
        object Label15: TLabel
          Left = 975
          Top = 4
          Width = 38
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1585#1608#1606#1608#1588#1578
        end
        object Label16: TLabel
          Left = 1113
          Top = 4
          Width = 26
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1589#1575#1583#1585#1607
        end
        object Label17: TLabel
          Left = 1173
          Top = 4
          Width = 22
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1608#1575#1585#1583#1607
        end
        object Label18: TLabel
          Left = 1047
          Top = 4
          Width = 30
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1575#1582#1604#1610
        end
        object Label20: TLabel
          Left = 497
          Top = 4
          Width = 132
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1593#1583#1605' '#1585#1587#1610#1583#1711#1610' '#1583#1585' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605
        end
        object Label23: TLabel
          Left = 660
          Top = 6
          Width = 202
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1583#1575#1585#1575#1610' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605' '#1610#1575' '#1585#1587#1610#1583#1711#1610' '#1583#1585' '#1605#1607#1604#1578' '#1575#1602#1583#1575#1605
        end
        object Image9: TImage
          Left = 465
          Top = 2
          Width = 20
          Height = 20
          Anchors = [akTop, akRight]
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000C6734ABD7B5A9C634A9C634A94634A94634A94634A8C5A428C5A428C5A42
            8452398452397B52398452397B52398C5239C6734ABD8473FFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7F7FFF7F7FFF7EFFFFFFF84
            634AC6734ABD8C73FFFFFFFFFFFFFFFFFFFFFFFFFFFFF7FFF7F7FFFFFFFFFFFF
            FFFFF7F7EFE7F7E7E7F7E7E7FFF7EF845A4AC67352BD8C7BFFFFFFEFDEDEAD8C
            7BAD8473F7EFE7FFFFF7A57B639C846B947B63FFF7F7FFEFE7F7E7E7FFF7F784
            5A4ACE7B52BD8C7BFFFFFFDEC6BDBD7352AD4A189C735AFFFFFF943910844218
            733108B5AD9CFFF7F7F7EFE7FFF7F78C5A4ACE845AC69484FFFFFFDECEC6CE84
            6BB5B5C6527B8C086329298C3184B573A54A18735A39FFF7F7FFEFEFFFF7F78C
            634ACE8463C69484FFFFFFDECEC6D69473C6D6DE31A56339D66331BD4A088418
            BD5A316B3100C6BDADFFFFF7FFFFFF946B52D68C6BC69C84FFFFFFE7D6CED69C
            7BBDD6A539CE6363FF9C52E78431BD52007B10BD6331735A31FFF7F7FFFFFF94
            6B52DE8C73CEA58CFFFFFFE7D6CEE7A58CF7F7F752C67342EF736BFF9C52E784
            39BD52C66B4A7B4210C6BDADFFFFFF946B52DE9473CE9C8CFFFFFFEFD6CEE7AD
            94B5735ADEE7C631BD5A52F78463FF9452E77B31B54AB56331846B4AFFFFFF9C
            735ADE9473CEA58CFFFFFFE7C6BDE7AD94B57B5AEFEFE7D6E7C618C64A5AFF8C
            63FF9452DE7B2184297B4218E7E7DEA57363E79C7BD6AD9CFFF7F7D68C6BEFBD
            A5DEA58CB5846BE7DED6CE8C7329DE6363FF945AFF945A635A7B7B6BEFEFDEA5
            6B5AE79C7BD6AD9CEFCEBDDE9C84DEA58CDEA58CCE846BF7E7E7D6AD94847B7B
            52946BC6C6BD4263EF1839DE0008AD5A52BDE79C84CEAD9CFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBDBDBDDEDED6396BFF3963EF0818B518
            18A5EFA584CEA594F7EFEFEFE7E7EFE7E7EFE7DEEFE7DEEFE7DEEFE7DEEFE7DE
            FFFFF7F7F7FF315AEF1831CE00009C9C9CD6EFA584E7BDADDEAD9CDEAD9CDEAD
            9CDEAD9CDEA58CDEA58CD69C84D6947BD6947BCE8C6B848CD6848CD6C67352D6
            8463}
        end
        object Label24: TLabel
          Left = 374
          Top = 5
          Width = 88
          Height = 13
          Anchors = [akTop, akRight]
          Caption = #1605#1578#1606' '#1606#1575#1605#1607' '#1575#1605#1590#1575' '#1588#1583#1607
        end
      end
      object ArchiveFolders: TMemo
        Left = 0
        Top = 587
        Width = 1215
        Height = 20
        Align = alBottom
        Font.Charset = ARABIC_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Lines.Strings = (
          'ArchiveFolders')
        ParentFont = False
        TabOrder = 5
      end
    end
  end
  object PtoolBar: TPanel [2]
    Left = 0
    Top = 0
    Width = 1401
    Height = 25
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    Color = 16311249
    Font.Charset = ARABIC_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 1401
      Height = 25
      Align = alClient
      Anchors = []
      AutoSize = True
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 0
      DesignSize = (
        1401
        25)
      object SBHome: TSpeedButton
        Left = 1384
        Top = 2
        Width = 22
        Height = 22
        Cursor = crHandPoint
        Hint = #1601#1610#1604#1578#1585' '#1705#1585#1583#1606' '#1606#1575#1605#1607' '#1607#1575
        Anchors = [akRight]
        GroupIndex = 1
        Down = True
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF001A1C
          1C002C232300272222002C2222002121220000181F0000191D00001220000006
          09001A1B1A002F25250022202000382C2C000A0C0C00C8D0D300B1B9BC00D4FF
          FF00D4FFFF00D4FFFF00D4FFFF00D4FFFF00026EA60002D2FF0002D2FF00000F
          2100D4FFFF00D4FFFF00D4FFFF00D4FFFF003F393900C8D0D300ADB5B800D4FF
          FF00EAFFFF00BDFAFA00CBFFFE00BBF3F4000273AA0002D2FF0002D2FF000015
          2100D4FFFF00D1FFFF00BDFAFA00DFFDFE003C353500C8D0D300ADB6B900D4FF
          FF00DFFDFD00C0F6F600C8FBFA00C3EDF000057AA90002D2FF0005BFFF000222
          4000D4FFFF00CBFDFD00C3F5F500D7FCFC003E363600C8D0D300AFB7BA00D4FF
          FF00F5FEFE00C1F8F800CCFCFB00B2EEF2000C75A1004DD6EC0000C7F000001B
          3000D4FFFF00D6FFFF00BBF7F700E6FCFC003B363600C8D0D300ABB1B400D4FF
          FF00FFFDFD00FAF2F200C4FBFB00C6F4F600458EB2003289AD003A96BE003D51
          5C00D4FFFF00C7FBFB00C4F7F700D5F9F9003C353500C8D0D300C2CACE00A4A4
          A400FCFDFD00F3F5F500FDF4F400C6F9F900D4FFFF00D9FFFF00D7FFFF00D7FF
          FF00C7FDFE00C5F7F700BFF7F700E9FFFF00413B3B00C8D0D300363737002724
          22006E6A6A00FFFFFF00F4F6F700FDF2F200C8F6F700BDF6F700C3F6F700C4F4
          F400C2F7F700CAF8F800C8FFFF00818F8F00160E0D00282B2C001D69890059CB
          D3000D516C006C5A5800FDFDFC00F5F7F800FCF4F400CEF9F900C2FAFA00C6F9
          F900CCF8F800C5FFFF00737071004E70680033CCD00003172100B1C1CE004393
          B50060E6F3001257730064505000FBF9F700F5F8F800FCF4F400CEF8F800C1F8
          F800C7FFFF006E6665004A736A0043D6E3001B374700C8D0D300D6D8D700BBC3
          CB004088A9005DE5FA000B617F0052474700F9F6F500F5F7F800FFF3F300D9FF
          FF00635E5C005084820043DFF700223C4D00C8D0D300C8D0D300C8D0D300C8D0
          D300C3C9CF004387A8005EE3FA00026C8C00423E3F00F4F1F000F7FDFE006954
          5300519292003BF1FF003A01B10063595600C8D0D300C8D0D300C8D0D300C8D0
          D300C8D0D300C9CDD1004688A80061E1F7000B739100535155007D6C65004B98
          950027DAED003A01B1003A01B1004B5C4800C8D0D300C8D0D300C8D0D300C8D0
          D300C8D0D300C8D0D300C8D0D3004A88A8005EDFEF0020708D00378A990027CD
          D200C8D0D3003A01B1003A01B1004C5A4200C8D0D300C8D0D300C8D0D300C8D0
          D300C6CDD100C8D0D300C8D0D300C8D0D3004E89A80058D3EA001C9FBE00C8D0
          D300C9CDC7003A01B1003A01B1004B5A4200DBE2EC00C8D0D300C6CED200C6CE
          D200C6CED200C6CED200C5CDD200C6CED200D3D2D3005C9DBB0055829200C8D0
          D300C8D0D3003A01B1003A01B100545A4B00DAE3EB00C1C9CC00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = SBHomeClick
      end
      object SBOrg: TSpeedButton
        Left = 1291
        Top = 2
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Hint = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1606#1575#1605#1607' '#1607#1575' '#1576#1585' '#1575#1587#1575#1587' '#1711#1610#1585#1606#1583#1607' '#1610#1575' '#1601#1585#1587#1578#1606#1583#1607
        Anchors = [akRight]
        GroupIndex = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          0000FFFFFF00FFFFFF00000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BFBF
          BF00000000007F7F7F0000000000FFFFFF000000000000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BFBF
          BF000000000000000000FFFFFF00FFFFFF00FFFFFF00BFBFBF0000000000FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000BFBF
          BF00BFBFBF0000000000000000000000000000000000FFFFFF00BFBFBF000000
          000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
          0000000000007F7F7F00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBF
          BF00000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000000000FFFFFF00FFFFFF00BFBFBF00000000000000
          000000FFFF0000FFFF0000FFFF000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00000000000000000000000000000000000000
          000000000000000000000000000000FFFF0000FFFF00BFBFBF00FF00FF00FF00
          FF00FF00FF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF0000FFFF0000FFFF0000FFFF00000000000000000000000000FF00FF00FF00
          FF000000000000FFFF0000FFFF00000000000000000000000000000000000000
          00000000000000FFFF00000000000000000000000000FFFFFF00FF00FF000000
          000000FFFF00000000000000000000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF000000000000FFFF000000000000FFFF00FF00FF0000000000FF00FF000000
          00000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FF
          FF000000000000FFFF000000000000FFFF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF000000
          000000FFFF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000000000000FFFF0000FFFF0000FFFF0000FFFF000000000000FF
          FF000000000000FFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF000000000000000000000000000000000000FFFF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF000000000000000000000000000000
          0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = SBOrgClick
      end
      object SBDate: TSpeedButton
        Left = 1314
        Top = 2
        Width = 20
        Height = 21
        Cursor = crHandPoint
        Hint = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1606#1575#1605#1607' '#1607#1575' '#1576#1585' '#1575#1587#1575#1587' '#1578#1575#1585#1610#1582
        Anchors = [akRight]
        GroupIndex = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          003337777777777777F330FFFFFFFFFFF03337F333FFFFF337F330FFF70007FF
          F03337F33777773F37F330FF08FFF80FF03337F373333373F7F330F78FFFFF87
          F03337F7F3333337F7F330F0FFFFFFF0F03337F7F333FFF7F7F330F0FFF900F0
          F03337F7F3377737F7F330F0FFF0FFF0F03337F7F337F337F7F330F78FF0FF87
          F03337F73F37F33737F330FF08F0F80FF03337F373F7FF7337F330FFF70007FF
          F03337F33777773FF7F330FFFFFFFF00003337F33333337777F330FFFFFFFF0F
          F03337FFFFFFFF7F373330999999990F033337777777777F733330FFFFFFFF00
          333337FFFFFFFF77333330000000000333333777777777733333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = SBDateClick
      end
      object SBArchive: TSpeedButton
        Left = 1360
        Top = 2
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Hint = #1583#1587#1578#1607' '#1576#1606#1583#1610' '#1606#1575#1605#1607' '#1607#1575' '#1576#1585' '#1575#1587#1575#1587' '#1586#1608#1606#1705#1606' '#1607#1575#1610' '#1576#1575#1610#1711#1575#1606#1610
        Anchors = [akRight]
        GroupIndex = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000FF00FF000000
          000000FFFF00000000007F7F7F007F7F7F000000000000000000000000000000
          0000000000000080800000808000008080000080800000000000FF00FF000000
          000000FFFF00000000007F7F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00000000000080800000FFFF000080800000FFFF0000000000000000000000
          000000FFFF00000000007F7F7F007F7F7F000000000000000000000000000000
          00000000000000FFFF000080800000FFFF000080800000000000FF00FF000000
          000000FFFF00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F000000000000FFFF0000FFFF000080800000FFFF0000000000FF00FF000000
          000000FFFF00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F000000000000FFFF0000FFFF0000FFFF000080800000000000FF00FF000000
          000000FFFF000000000000000000000000000000000000000000000000000000
          00000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          000000FFFF0000000000FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFF
          FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          000000FFFF0000000000FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFF
          FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          000000FFFF0000000000FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFF
          FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          000000FFFF00000000007F7F7F007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          000000FFFF0000000000FF00FF00FFFFFF00FF00FF00FFFFFF00FF00FF00FFFF
          FF000000000000FFFF0000FFFF0000FFFF0000FFFF0000000000FF00FF000000
          00000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000080800000FFFF0000FFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000000000000FFFF000080800000FFFF0000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000080800000FFFF000080800000FFFF0000000000FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00000000000000000000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = SBArchiveClick
      end
      object Label22: TLabel
        Left = 1030
        Top = 5
        Width = 62
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1608#1590#1593#1610#1578' '#1606#1575#1605#1607' :'
      end
      object Label10: TLabel
        Left = 1202
        Top = 5
        Width = 43
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1606#1608#1593' '#1606#1575#1605#1607' :'
      end
      object SBReport: TSpeedButton
        Left = 1337
        Top = 2
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Hint = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1585#1580#1575#1593#1575#1578
        Anchors = [akRight]
        GroupIndex = 1
        Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FF00FF0084AD
          8C007BA584007BA584007B9C84007B9C84007B9C8400849C8400849C84008494
          84008494840084948400848C8400848C84008C948C00737373007BAD8C00EFF7
          EF00E7EFE700E7EFE700E7EFE700E7EFDE00DEE7D600DEE7DE00DEE7DE00DEDE
          D600DEDED600DEDED600D6DED600D6DED600E7EFE700848C8C0073AD8400D6E7
          D60094C6940094BD94009CBD9C00ADB5AD00D6DED600EFEFEF00EFEFEF00EFEF
          EF00EFEFEF00EFEFEF00EFEFEF00E7E7E700DEDEDE007B8C840073AD8400CEE7
          CE006BB56B006BAD6B007BA57B0094A59400D6DED600E7E7E700E7E7E700DEE7
          DE00DEE7DE00DEE7DE00DEE7DE00D6DEDE00DEDEDE007B8C840073B58400CEE7
          C60052B552004AA54A0052A55200639C63006B946B00738C7300738C73008494
          8400CEDECE00CED6CE00FFFFFF00EFEFEF00DEE7DE007B9484006BB58400DEF7
          DE00B5DEB500B5DEB500BDDEBD00BDDEBD00BDD6BD00B5CEB500B5CEB500B5CE
          B500CEDECE00C6D6C600D6D6D600CED6CE00DEE7DE007B9C84006BBD8400D6EF
          CE007BBD7B0073B5730084B584008CAD8C00A5B5A500CEE7CE00CEE7CE00D6E7
          D600CEE7CE00C6D6C600FFF7FF00EFEFEF00DEE7DE00739C84006BBD8400D6EF
          CE0084C684007BBD7B008CBD8C0094B59400A5BDA500CEE7CE00CEE7CE00CEE7
          CE00CEE7CE00C6D6C600D6DED600CED6CE00DEE7DE00739C84006BC68400E7F7
          DE00CEEFD600D6EFD600D6EFD600CEEFCE00D6EFD600CEE7CE00CEE7CE00DEE7
          DE00E7E7E700E7E7E700E7E7E700DEE7DE00DEEFDE00739C84006BC68400CEEF
          C60052B552004A9C4A005A945A00738C7300C6E7C600CEE7CE00CEE7CE00E7EF
          E700EFEFEF00EFEFEF00EFEFEF00E7E7E700DEEFDE0073A5840063C68400E7FF
          DE00DEFFDE00DEFFDE00DEFFDE00DEF7DE00DEFFDE00CEEFCE00CEEFCE00CEDE
          CE00CEDECE00CEDECE00CEDECE00CEDECE00DEEFD60073A584006BCE8400CEF7
          C60042AD4200399439004A944A005A845A007B947B00C6DEC600C6DEC600EFEF
          EF00F7F7F700F7F7F700FFF7FF00EFEFEF00E7EFDE0073AD840063CE8400E7FF
          DE00C6F7C600C6F7C600C6F7C600C6EFC600C6EFC600C6EFC600C6EFC600C6EF
          C600C6E7C600C6E7C600C6E7C600C6E7C600DEF7DE006BAD840063D68400CEF7
          CE0031AD3100008C0800108C10001884180021842100297B2900297B29003173
          3100427342004A6B4A005263520063736300CEE7CE006BB584006BD68C00F7FF
          E700ADE7A5009CD694009CD69400A5D69C00A5D69C00A5D6A500A5D6A500ADCE
          A500ADCEAD00B5CEAD00B5C6AD00BDCEB500EFFFE70073BD8C0042D673006BDE
          8C006BD68C006BD6940073D6940073D68C0073D68C0073D68C0073D68C0073CE
          8C0073CE8C0073CE8C0073CE8C0073C68C0073C68C0052AD7300}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = SBReportClick
      end
      object lblYear: TLabel
        Left = 874
        Top = 5
        Width = 48
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1587#1575#1604' '#1580#1575#1585#1610
        Font.Charset = ARABIC_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 807
        Top = 5
        Width = 47
        Height = 13
        Anchors = [akTop, akRight]
        Caption = #1578#1593#1583#1575#1583' '#1606#1575#1605#1607' '
      end
      object Label19: TLabel
        Left = 35
        Top = 2
        Width = 82
        Height = 25
        Caption = 'Label19'
        Font.Charset = ARABIC_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object SHOW_ALL_BTN: TSpeedButton
        Left = 533
        Top = 2
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Hint = #1607#1605#1607' '#1606#1575#1605#1607' '#1607#1575
        Anchors = [akTop, akRight]
        GroupIndex = 5
        Down = True
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008877700
          33333337733FFF773F33330887000777033333733F777FFF73F330880FAFAF07
          703337F37733377FF7F33080F00000F07033373733777337F73F087F00A2200F
          77037F3737333737FF7F080A0A2A220A07037F737F3333737F7F0F0F0AAAA20F
          07037F737F3333737F7F0F0A0FAA2A0A08037F737FF33373737F0F7F00FFA00F
          780373F737FFF737F3733080F00000F0803337F73377733737F330F80FAFAF08
          8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SHOW_ALL_BTNClick
      end
      object SHOW_NOT_READ_BTN: TSpeedButton
        Left = 508
        Top = 2
        Width = 22
        Height = 21
        Cursor = crHandPoint
        Hint = #1606#1575#1605#1607' '#1607#1575#1610' '#1582#1608#1575#1606#1583#1607' '#1606#1588#1583#1607
        Anchors = [akTop, akRight]
        GroupIndex = 5
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F777773FF333333008877700
          33333337733FFF773F33330887000777033333733F777FFF73F330880F9F9F07
          703337F37733377FF7F33080F00000F07033373733777337F73F087F0091100F
          77037F3737333737FF7F08090919110907037F737F3333737F7F0F0F0999910F
          07037F737F3333737F7F0F090F99190908037F737FF33373737F0F7F00FF900F
          780373F737FFF737F3733080F00000F0803337F73377733737F330F80F9F9F08
          8033373F773337733733330F8700078803333373FF77733F733333300FFF8800
          3333333773FFFF77333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        Visible = False
        OnClick = SHOW_ALL_BTNClick
      end
      object SpeedButton4: TSpeedButton
        Left = 651
        Top = 0
        Width = 32
        Height = 25
        Anchors = [akRight]
        Flat = True
        Glyph.Data = {
          DA050000424DDA05000000000000360000002800000019000000130000000100
          180000000000A4050000C30E0000C30E00000000000000000000FDFDFDF6F6F6
          FFFFFFFFFFFFFFFFFFFBFBFBFBFBFBFFFFFFFFFFFFFFFFFFF9FAF9FBFBFBFDFD
          FEFFFFFFFFFFFFF9FAFBFFFEFFCED49694A11999A522949F26939F1EB5BE62F6
          F8ECFFFFFF00FFFFFFD6D7D69E9F9EABABAAABABABA4A4A3A8A8A7A9A9A7AAAA
          A9AAAAA9A6A7A6A7A7A6A7A8A7A4A6A4BABABEF0F2DCB7BF6B8B99109BA62C94
          A11796A220909B188895079EA934FFFFFF00D8D8D8D9DAD95859574647454F50
          4E5152504F504E54555250514E4E4F4D50514F50514F5152504546437B7B8CDF
          E7A68694009CA72DDCE0B8ADB65493A018B6BE649DA82E829000D7DBB0007576
          74FFFFFFC0C1C06263615E5F5D63646262636163646263646260615F60615F62
          63616263615D5C5F81827DB8C2548C9909BEC571FFFFFFF5F4F0D5DAACFBFBF3
          B0B852909B159DA93500555553B9B7B8EFF0EF6466635B5C5A5E5F5D61626060
          615F6263616263615F605E60615F5C5D5B6C6D73EAEED287940197A3258B9904
          DDE2B7FFFFFFF5F5F2B9C06E8D9A0898A42294A024005F605E525451CDCDCCD9
          D9D856575560615F6162605F605E60615F6263616263616162605F605E5F6063
          A1A495A8B42F8F9B189EA934EDF0DBFFFFFFF6F6F4FDFEFFB9C17095A11C97A3
          1D00616260616260A1A2A0E8E7E790918F595A586263616162605F605E626361
          62636160615F61626053545189889CF3F9BF879402A4AE44EBEDDABFC67AB1BA
          56D9DEB6C0C77F8A9808BBC36E0060615F5C5D5B5A5C59CDCCCDFFFFFF494A47
          5E5F5D60615F5F605E616260616260666765616260595A586E6F71FAFCF3C2CA
          72879402A4AE428E9A1493A0149BA72A8E9B1095A222F4F4ED0060615F60615F
          5C5D5B646562EAEAE9D0D2CF50514E67686660615F5E5F5D5B5C5A4244415051
          4F60615F575855848589FAFAF3B7C1597F8F008D9A108C990F7E8C0098A522E8
          EACCFFFFFF0062636160615F616260474846C9CAC9FFFFFF4647465A5B595758
          565E5F5D5E615DFFFFFFA9A9A84F504E5758564E4F4C747576F7F6FAFFFFFFBE
          C76AC6CE80FFFFFFFFFFFFFFFFFFFEFEFF006263616162605F605E6465633031
          2FDFDFDFE1E2E2555755838482DDDEDDFFFFFFD8D8D7FFFFFFFFFFFF9D9E9D6A
          6B699C9E9CEAEAEC878788D0CEDFD7D6E66B6B6C6D6D6EF3F3F3FFFFFF006263
          616162606263615C5D5B4B4D4A81817FFFFFFFDADADAECECECCCCDCC8788865B
          5C5A898988C5C7C5FDFDFDE3E3E3FFFFFFA8A9A841423F4A4B474A4C49535452
          8D8E8DF4F4F4FFFFFF006262616465634B4C49666765919491EBEBEBFFFFFFC0
          C1C08181805F605E5152505E5F5D535452666765818280CACAC9FFFFFFDEDDDE
          A7A8A7464744585A575859578C8C8BF6F7F6FAFAFA005355513F413FA2A3A2EF
          F1F1FFFFFFFFFFFF70716F60615F585A575C5D5B60615F61626062636160615F
          5A5B59616260787977C9C8C8FFFFFFE2E2E2989998242522838282F8F8F8FDFD
          FD007E807FFFFFFFFFFFFFFFFFFF86898540413F6364625D5E5C626361626361
          5F605E5F605E5F605E60615F62636160615F5F605E535452393A37E9E9E9FFFF
          FFF0F0F0B1B1B0EFEFEFFFFFFF00FFFFFFDDDEDD9394934E504D535452626361
          60615F61626060615F60615F6263616263616162605F605E60615F60615F5F60
          5E5F605E626362464644ABACABE5E5E5FFFFFFFCFCFCFDFDFD00A1A2A05D5F5C
          4F504E64656365666462636162636163646162636160615F6162606263616263
          6160615F6162606162606263616364626263616566644F504E676866A5A6A4F6
          F6F5FAFAFA00DDDEDC696A673D3E3C4647444445434546434546444546444748
          4647484546474447484647484645464345464444454345464446474446474445
          46444243414D4E4CACACABFDFDFCF9F9F900FFFFFFF7F7F7E7E7E7ECECEBEBEB
          EBEBEBEBEBEBEBECEDECE9E9E9E1E1E1E1E2E1E2E1E1E7E7E6ECECECEBEBEBEB
          EBEBEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEFEFEFFDFEFDFAFAFAF3F3F300}
        OnClick = SpeedButton4Click
      end
      object SpeedButton5: TSpeedButton
        Left = 685
        Top = 0
        Width = 32
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight]
        Flat = True
        Glyph.Data = {
          DA050000424DDA05000000000000360000002800000019000000130000000100
          180000000000A4050000C30E0000C30E00000000000000000000FEFEFEFDFDFD
          FFFFFFFFFFFFFCFCFCFDFDFDFEFEFEFFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFDFD
          FDFFFFFFFFFFFFFEFEFFFDFDFCFFFFFFFFFFFFEFF1DCFDFDFDFFFFFFFDFDFEFF
          FFFEFFFFFF00F7F7F7FDFDFDFCFCFCFFFFFFFDFDFDFCFCFCFBFBFBFFFFFFFFFF
          FFFFFFFFF9F9F9F8F8F8F8F7F8FFFFFFFFFFFFFCFCFAFFFDFFC0C77EBFC77B9B
          A726B2BB5AB7BF6DFEFDFFFDFDFFFFFFFF00FCFCFCFEFEFEE6E6E6EDEDEDEEEE
          EDEAEAEAE8E9E8E6E7E6EEEEEEEEEEEEE9E9E9E9E9E9E5E5E5EDEEEDE6E6E7FF
          FFFFBFC7758E9914939F1D94A01D96A31D929F159BA62FEEF0E0FDFDFF00EDED
          EDE4E4E49E9E9E4D4E4C50514F52535155575452535154555351525052535152
          53515354525253516D6E71F5F8D98C9907929E14A7B149A5AF4493A01C9AA624
          95A21AA5B042F4F4EE00D4D4D4ADADADFFFFFF53545261636061626063646262
          636162636160615F626361616260626361575856DAD9E7A1AD2C94A118BDC571
          FFFFFFFCFBFF96A22293A01B99A5228E9B0CE2E4CA00E0E0E03D3E3CD3D3D2DF
          DFDF60615F63646261626061626062636160615F60615F626361626361585957
          E4E3F18E9A0EA6B142FFFFFFB5BD61C3CA7EFFFFFFD6DAAC909D16909E10EBEE
          D500D9D9DA50514F717171FFFFFF7677745E5F5D616260626361626361616260
          60615F616260626361535552E7E6F58B9709929E1FB2BA5A929F148D9A0ACFD5
          9AFFFFFFD7DCAE869300EAEDD200DDDDDC595A58575856A2A3A2FFFFFF4C4D4B
          61626061626062636162636162636160615F60615F575856C4C3CBD0D8918F9B
          16939F2098A42499A6248E9C0FC6CD89E5E6CF93A017EEF0DE00DBDBDB525351
          5D5E5C757674FFFFFF9D9E9C5A5B596162606263616162606263615F605E6061
          5F60615F474848FFFFFFAAB546919E1A97A22898A42498A42195A11A879600BF
          C57DFFFEFF00DFE0DF52545160615F5859577D7D7CFFFFFF7779765B5C5A6061
          5F6364625758566667655B5C5A5B5C5A5A5B598E8F90FFFFFFA6B1409CA72C8F
          9B179CA92AA3AE2EEBEED0FCFCFBF7F7F800E0E0E052535160615F60615F4F50
          4EDFDFDEDCDCDC5F605D5B5C5A515250A8A9A8F6F5F5B7B7B77F807E4D4E4C55
          5654777877FFFFFFC4C6B2D3D98FD2D6A6C8C6D9E3E3E7FFFFFFF9F9F900E0E0
          E053545260615F60615F5B5C5A80817FFFFFFF5C5D5B8B8B8AE7E7E7FFFFFFB3
          B4B3FFFFFFFEFEFEEEEEEE3C3E3BC2C3C2F9F8F95B5C5E8989907F7F834E4F4C
          B2B1B0FFFFFFFDFDFD00DCDCDC535452616260616260595A585E5F5DCACAC9FF
          FFFFFFFFFFD8D9D84344425859574B4C4A878887D7D7D7FFFFFFFFFFFF828381
          4C4D4B595A57656664565755B2B2B1FFFFFFFFFFFF00DCDCDB5B5C5A5D5E5C47
          4845ACACACD4D5D4FFFFFFA2A3A27A7A7951525063646264656360615F5C5D5B
          4E4F4D929291DADADAFFFFFFD1D2D16E6E6D50514F545553B2B2B1FFFFFFFDFD
          FD00D3D4D35C5D5B848583FFFFFFF0F0EFC2C2C25657555A5B595D5E5C626361
          61626060615F60615F60615F6263615A5B595657558F908FF3F3F3FFFFFFE2E3
          E2696A68B2B2B1FEFEFEF6F6F600EAEAE9E0E0DFFFFFFFB5B6B4787875525351
          65666462636161626062636161626062636161626060615F6162606263616162
          605A5B595B5C5A979897FFFFFFFFFFFFE3E3E3FFFFFFF8F8F800FFFFFFE8E8E8
          7677755556545D5E5C62636161626060615F60615F6162606263616162606263
          6161626060615F6263616263616263615F605E5D5E5C6A6B6AB3B3B2FFFFFFFC
          FCFCFBFBFB00EAEAEA5B5C5A5253515253515354515A5B595455535455535354
          525254515A5B5954555354555354555353545252535157585655565454555352
          53515657553F403EEEEEEDFFFFFFFEFEFE00FFFFFFF0F0F0DBDBDBDEDEDDD6D6
          D6DBDBDBDADADADEDEDEDFDFDED7D7D7DBDBDBD9DAD9DDDDDDDEDEDEDDDDDDDB
          DBDBD9D9D9D7D8D7DEDFDEDEDEDEDCDCDBD6D6D5F7F7F7FFFFFFFFFFFF00}
        OnClick = SpeedButton5Click
      end
      object CBReCommiteType: TDBLookupComboBox
        Left = 1110
        Top = 1
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'KeyValue'
        ListField = 'Title'
        ListSource = DGetList1
        ParentBiDiMode = False
        TabOrder = 0
        OnClick = CBReCommiteTypeChange
      end
      object DBLkCBLetterFormat: TDBLookupComboBox
        Left = 936
        Top = 2
        Width = 90
        Height = 21
        Anchors = [akTop, akRight]
        BiDiMode = bdLeftToRight
        KeyField = 'Code'
        ListField = 'Title'
        ListSource = DSletterformats
        ParentBiDiMode = False
        TabOrder = 1
        OnClick = DBLkCBLetterFormatClick
      end
      object SpinEdit: TEdit
        Left = 757
        Top = 2
        Width = 49
        Height = 21
        Anchors = [akTop, akRight]
        TabOrder = 2
        Text = '100'
      end
    end
  end
  object GroupingPanel: TPanel [3]
    Left = 1222
    Top = 25
    Width = 179
    Height = 705
    Align = alRight
    BevelInner = bvLowered
    Caption = 'GroupingPanel'
    TabOrder = 2
    object PageControl1: TPageControl
      Left = 2
      Top = 2
      Width = 175
      Height = 701
      ActivePage = TabSheet2
      Align = alClient
      TabOrder = 0
      TabPosition = tpBottom
      object TabSheet1: TTabSheet
        Caption = #1580#1587#1578#1580#1608
        object RadioGroup1: TRadioGroup
          Left = 0
          Top = 364
          Width = 167
          Height = 157
          Cursor = crArrow
          Align = alTop
          Caption = #1608#1590#1593#1610#1578' '#1606#1575#1605#1607' '#1607#1575#1610' '#1575#1585#1580#1575#1593#1610
          Color = clWhite
          ItemIndex = 0
          Items.Strings = (
            #1607#1605#1607' '#1575#1585#1580#1575#1593#1575#1578
            #1575#1585#1580#1575#1593#1575#1578' '#1580#1583#1610#1583
            #1583#1575#1585#1575#1610' '#1578#1575#1582#1610#1585' ('#1605#1607#1604#1578' '#1575#1602#1583#1575#1605')'
            #1585#1608#1606#1608#1588#1578
            #1583#1575#1585#1575#1610' '#1580#1608#1575#1576' '#1575#1585#1580#1575#1593
            #1583#1575#1585#1575#1610' '#1662#1610#1711#1610#1585#1610
            #1576#1607' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1575#1585#1587#1575#1604' '#1588#1583#1607' '#1607#1575
            #1575#1585#1580#1575#1593#1575#1578' '#1583#1585#1610#1575#1601#1578#1610' '#1605#1581#1585#1605#1575#1606#1607)
          ParentColor = False
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object DBTreeView: TDBTreeView
          Left = 0
          Top = 252
          Width = 167
          Height = 112
          Cursor = crHandPoint
          Align = alTop
          Ctl3D = False
          Indent = 19
          ReadOnly = True
          TabOrder = 1
          OnClick = DBTreeViewClick
          OnGetSelectedIndex = DBTreeViewGetSelectedIndex
          DataSource = DGet_UserSecretariat_Tree
          RootID = -1
          IDField = 'ID'
          ParentIDField = 'ParentID'
          DisplayField = 'Title'
          StoredFieldsList.Strings = (
            'ID')
          BuildMethod = bmFilter
        end
        object Panel4: TPanel
          Left = 0
          Top = 230
          Width = 167
          Height = 22
          Align = alTop
          BevelOuter = bvNone
          BorderStyle = bsSingle
          Color = clWindow
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          DesignSize = (
            165
            20)
          object SpeedButton2: TSpeedButton
            Left = 70
            Top = -1
            Width = 23
            Height = 23
            Cursor = crHandPoint
            Hint = #1576#1575#1586#1610#1575#1576#1610' '#1575#1591#1604#1575#1593#1575#1578
            Anchors = [akTop, akRight]
            Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000FF00FF00FF00
              FF00A5616B00A5616B00A5616B00A5616B00A5616B00A5616B00A5616B00A561
              6B00A5616B00A5616B00A5616B00A5616B00A5616B00FF00FF00FF00FF00FF00
              FF00A5616B00FFEFC600C6CF9400D6CF9400EFCF9C00E7CF9400EFC78400EFBE
              8400EFBE7B00EFBE8400EFBE8400EFC78400A5616B00FF00FF00FF00FF00FF00
              FF00A5616B00FFEFCE009CBE7300299E21006BAE4A0021961000219610005AA6
              3900CEB67300EFBE7B00EFBE7B00EFC78400A5616B00FF00FF00FF00FF00FF00
              FF00A5615A00FFEFDE00BDCF9C00108E08000086000000860000008600000086
              000029961800DEBE7B00EFBE7B00EFC78400A5616B00FF00FF00FF00FF00FF00
              FF00A5615A00FFF7E700BDCF9C00189610000086000018961000ADBE730073AE
              4A000086000073AE4A00EFBE8400EFC78400A5616B00FF00FF00FF00FF00FF00
              FF00A5716B00FFF7EF00BDD7A500088E0800008600000086000084B65A00EFCF
              A500A5B66B006BAE4A00EFC78C00EFC78400A5616B00FF00FF00FF00FF00FF00
              FF00A5716B00FFFFFF00E7E7D600A5CF94009CC7840094BE73009CBE7300EFD7
              AD00EFCFA5009CC77B00EFC79400EFC78C00A5616B00FF00FF00FF00FF00FF00
              FF00BD866B00FFFFFF00A5DFA500FFEFE700F7EFD6009CC7840094BE730094BE
              73009CBE7300EFCFA500EFCF9C00F7CF9400A5616B00FF00FF00FF00FF00FF00
              FF00BD866B00FFFFFF0073C77300ADD7A500FFEFE70084C77300008600000086
              0000088E0800EFD7AD00EFCFA500F7D7A500A5616B00FF00FF00FF00FF00FF00
              FF00D6966B00FFFFFF0084CF8400008600007BC77300ADD7A500189618000086
              0000108E0800F7D7B500F7D7AD00EFCFA500A5616B00FF00FF00FF00FF00FF00
              FF00D6966B00FFFFFF00F7F7EF0029A629000086000000860000008600000086
              0000108E0800FFEFCE00DECFB500B5AE9400A5616B00FF00FF00FF00FF00FF00
              FF00DE9E7300FFFFFF00FFFFFF00DEF7DE0063BE6300219E2100219E210073BE
              6B00299E210094695200A5695A00A5695A00A5616B00FF00FF00FF00FF00FF00
              FF00DE9E7300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEF7DE00DEF7DE00FFFF
              F700ADB694008C695200E79E5200E78E3100B5694A00FF00FF00FF00FF00FF00
              FF00E7AE7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
              FF00DEC7C600A5695A00FFB65A00BD795A00FF00FF00FF00FF00FF00FF00FF00
              FF00E7AE7B00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7
              EF00DEC7C600A5695A00BD866B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00E7AE7B00D6966B00D6966B00D6966B00D6966B00D6966B00D6966B00D696
              6B00D6966B00A5695A00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton2Click
          end
          object DBText1: TDBText
            Left = -58
            Top = 3
            Width = 125
            Height = 17
            Anchors = [akTop, akRight]
            DataField = 'Title'
            DataSource = DGet_UserSecretariat_Tree
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 167
          Height = 230
          Align = alTop
          BevelOuter = bvNone
          Ctl3D = False
          ParentColor = True
          ParentCtl3D = False
          TabOrder = 3
          DesignSize = (
            167
            230)
          object Label2: TLabel
            Left = 111
            Top = 33
            Width = 42
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1606#1575#1605#1607
          end
          object Label1: TLabel
            Left = 76
            Top = -1
            Width = 80
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1588' '#1606#1575#1605#1607' / '#1575#1606#1583#1610#1603#1575#1578#1608#1585
            Transparent = True
          end
          object Label3: TLabel
            Left = 68
            Top = 100
            Width = 85
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1590#1605#1608#1606' '#1608' '#1601#1585#1587#1578#1606#1583#1607
          end
          object LabelUserMemo: TLabel
            Left = 112
            Top = 135
            Width = 41
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1604#1575#1581#1592#1575#1578
          end
          object Label25: TLabel
            Left = 147
            Top = 49
            Width = 14
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1575#1586' :'
          end
          object Label26: TLabel
            Left = 144
            Top = 75
            Width = 16
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575' : '
          end
          object No: TEdit
            Left = 10
            Top = 15
            Width = 143
            Height = 21
            Anchors = [akTop, akRight]
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 0
            OnEnter = TEditEnter
            OnExit = TEditExit
            OnKeyDown = NoKeyDown
            OnKeyPress = NoKeyPress
          end
          object Search8: TBitBtn
            Left = 9
            Top = 171
            Width = 72
            Height = 24
            Cursor = crHandPoint
            Anchors = [akTop, akRight]
            Caption = ' '#1580#1587#1578#1580#1608
            Default = True
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = Search8Click
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA2A7AC46484B585E63BEC2C5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF787C807C634FEDB285D4A280423F3FC4C7C9FFFFFFFFFFFFD7DBDD737B8174
              7C82D2D4D7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF747577726861FBCF99FF
              D6A2FFD49AE6B588666F76FFFFFFDADBDB464346A87F61A7836B474747D9DADC
              0000FFFFFFFFFFFFFFFFFF7575754F5154B0A59CF7D9B6FFE9D0FFE0C1FFE0AA
              666566878889464F58DBB485FFDEA1FFD598CDA8827576780000FFFFFFFFFFFF
              6969695757579B9C9CA6A2A3D3BAAEFFFFFFFFFFEEFFF2C7292C304140407B82
              8BFFD8AAFFE9CBFFDEBDFFE0AE615A540000EBEBEB545454313131818181C8C8
              C8D7DBDCAEA6A8B8A19DDCC0B2776B63484E55B7BEC4BBC7D3BBA69FFFFCF3FF
              FFF1E3D1AE7A767300005E5E5E9696969D9D9D595959B1B1B1FFFFFFFCFEFF84
              8383605B5B515E6C444648BB9564D6AF76CED9E7C2AEAACDB8AB8A7E72C6C8CB
              0000454545BABABAA8A8A8BFBFBF7777779898986C6B6B3939383D4E5D58534E
              AA6612F8B76DE79429E7D5B2747E907A7473CCCCCFFFFFFF0000474747A5A4A4
              DCDCDCCFD0CFC8C8C898989783888C7181906D4829D27E25FFD395FFD9AFFFE0
              BBC17109A5A5A1FFFFFFFFFFFFFFFFFF0000535353414141828D939A9EA09F9F
              9FA5A8AAA2A3A6B57B40F4A74BFFDCA5FFCB94FFC38AFFCC9AF4B871F4C37FFF
              FFFFFFFFFFFFFFFF0000E7E7E7BBC2C69C6B4EB2A8A2A0A3A57D8387935F2CE9
              9238F2B26AD88A38F8B977FFC78CFDC88CFFD09DE39436F5E7D5FFFFFFFFFFFF
              0000FFFFFFFFFFFFD18451EBC5A7FFFFFFF3F5F6E8D7C8E3B384E1C5A4BD7F36
              FCBD79FFCB90D98A38E7A253F9CD92E4AB69FFFDFEFFFFFF0000FFFFFFFFFFFF
              C68051C17957FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFD18C42FFC47FFBB86ED594
              4BDDB27FD17912D88628FEFAF6FFFFFF0000FFFFFFFFFFFFCB9873C34F00EBD7
              CFFFFFFFFFFFFFFFFFFFD6AC87E0903AFFC179E29337E5C49EFFFFFFF6E7D5FA
              F8F2FFFFFFFFFFFF0000FFFFFFFFFFFFE7CABDD66000BE6528EDECF0F6FFFFE3
              C9BBC7711EFDB059FEB565D98734F5EADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFCFDFFC0682BF78A01C5600BC5600AD16B0CFFAC4AFFC26B
              E18C35DBAF8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFEADDDCB74D03E58014FFA51DFFB33FF8A44DD07121CD9060FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF1E6
              E2DCB5B2D7AB8AD3A988DEB399E3C7BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000}
          end
          object Memo: TEdit
            Left = 10
            Top = 115
            Width = 143
            Height = 21
            Anchors = [akTop, akRight]
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 2
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object date: TComboBox
            Left = 40
            Top = 48
            Width = 105
            Height = 20
            Style = csSimple
            Anchors = [akTop, akRight]
            Ctl3D = False
            ItemHeight = 13
            ParentCtl3D = False
            TabOrder = 3
            OnEnter = TEditEnter
            OnExit = TEditExit
            Items.Strings = (
              #1575#1605#1585#1608#1586
              #1583#1610#1585#1608#1586
              #1581#1575#1604#1575
              #1575#1605#1587#1575#1604
              #1585#1608#1586' '#1575#1582#1610#1585
              '1 '#1585#1608#1586' '#1575#1582#1610#1585
              '2 '#1585#1608#1586' '#1575#1582#1610#1585
              '3 '#1585#1608#1586' '#1575#1582#1610#1585
              '4 '#1585#1608#1586' '#1575#1582#1610#1585
              '5 '#1585#1608#1586' '#1575#1582#1610#1585
              '6 '#1585#1608#1586' '#1575#1582#1610#1585
              '7 '#1585#1608#1586' '#1575#1582#1610#1585
              '8 '#1585#1608#1586' '#1575#1582#1610#1585
              '9 '#1585#1608#1586' '#1575#1582#1610#1585
              #1610#1705' '#1585#1608#1586' '#1575#1582#1610#1585
              #1583#1608' '#1585#1608#1586' '#1575#1582#1610#1585
              #1587#1607' '#1585#1608#1586' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1585#1608#1586' '#1575#1582#1610#1585
              #1662#1606#1580' '#1585#1608#1586' '#1575#1582#1610#1585
              #1588#1588' '#1585#1608#1586' '#1575#1582#1610#1585
              #1607#1601#1578' '#1585#1608#1586' '#1575#1582#1610#1585
              #1607#1588#1578' '#1585#1608#1586' '#1575#1582#1610#1585
              #1606#1607' '#1585#1608#1586' '#1575#1582#1610#1585
              #1585#1608#1586' '#1580#1575#1585#1610
              '1 '#1585#1608#1586' '#1580#1575#1585#1610
              '2 '#1585#1608#1586' '#1580#1575#1585#1610
              '3 '#1585#1608#1586' '#1580#1575#1585#1610
              '4 '#1585#1608#1586' '#1580#1575#1585#1610
              '5 '#1585#1608#1586' '#1580#1575#1585#1610
              '6 '#1585#1608#1586' '#1580#1575#1585#1610
              '7 '#1585#1608#1586' '#1580#1575#1585#1610
              '8 '#1585#1608#1586' '#1580#1575#1585#1610
              '9 '#1585#1608#1586' '#1580#1575#1585#1610
              #1610#1705' '#1585#1608#1586' '#1580#1575#1585#1610
              #1583#1608' '#1585#1608#1586' '#1580#1575#1585#1610
              #1587#1607' '#1585#1608#1586' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1585#1608#1586' '#1580#1575#1585#1610
              #1662#1606#1580' '#1585#1608#1586' '#1580#1575#1585#1610
              #1588#1588' '#1585#1608#1586' '#1580#1575#1585#1610
              #1607#1601#1578' '#1585#1608#1586' '#1580#1575#1585#1610
              #1607#1588#1578' '#1585#1608#1586' '#1580#1575#1585#1610
              #1606#1607' '#1585#1608#1586' '#1580#1575#1585#1610
              #1585#1608#1586' '#1711#1584#1588#1578#1607
              '1 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '2 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '3 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '4 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '5 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '6 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '7 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '8 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              '9 '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1610#1705' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1583#1608' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1587#1607' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1588#1588' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1606#1607' '#1585#1608#1586' '#1711#1584#1588#1578#1607
              #1607#1601#1578#1607' '#1575#1582#1610#1585
              '1 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '2 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '3 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '4 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '5 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '6 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '7 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '8 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              '9 '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1610#1705' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1583#1608' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1587#1607' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1662#1606#1580' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1588#1588' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1601#1578' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1588#1578' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1606#1607' '#1607#1601#1578#1607' '#1575#1582#1610#1585
              #1607#1601#1578#1607' '#1575#1582#1610#1585
              '1 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '2 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '3 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '4 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '5 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '6 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '7 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '8 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              '9 '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1610#1705' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1583#1608' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1587#1607' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1662#1606#1580' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1588#1588' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1601#1578' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1588#1578' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1606#1607' '#1607#1601#1578#1607' '#1580#1575#1585#1610
              #1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '1 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '2 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '3 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '4 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '5 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '6 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '7 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '8 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              '9 '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1610#1705' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1583#1608' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1587#1607' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1588#1588' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1606#1607' '#1607#1601#1578#1607' '#1711#1584#1588#1578#1607
              #1605#1575#1607' '#1575#1582#1610#1585
              '1 '#1605#1575#1607' '#1575#1582#1610#1585
              '2 '#1605#1575#1607' '#1575#1582#1610#1585
              '3 '#1605#1575#1607' '#1575#1582#1610#1585
              '4 '#1605#1575#1607' '#1575#1582#1610#1585
              '5 '#1605#1575#1607' '#1575#1582#1610#1585
              '6 '#1605#1575#1607' '#1575#1582#1610#1585
              '7 '#1605#1575#1607' '#1575#1582#1610#1585
              '8 '#1605#1575#1607' '#1575#1582#1610#1585
              '9 '#1605#1575#1607' '#1575#1582#1610#1585
              #1610#1705' '#1605#1575#1607' '#1575#1582#1610#1585
              #1583#1608' '#1605#1575#1607' '#1575#1582#1610#1585
              #1587#1607' '#1605#1575#1607' '#1575#1582#1610#1585
              #1670#1607#1575#1585' '#1605#1575#1607' '#1575#1582#1610#1585
              #1662#1606#1580' '#1605#1575#1607' '#1575#1582#1610#1585
              #1588#1588' '#1605#1575#1607' '#1575#1582#1610#1585
              #1607#1601#1578' '#1605#1575#1607' '#1575#1582#1610#1585
              #1607#1588#1578' '#1605#1575#1607' '#1575#1582#1610#1585
              #1606#1607' '#1605#1575#1607' '#1575#1582#1610#1585
              #1605#1575#1607' '#1575#1582#1610#1585
              '1 '#1605#1575#1607' '#1580#1575#1585#1610
              '2 '#1605#1575#1607' '#1580#1575#1585#1610
              '3 '#1605#1575#1607' '#1580#1575#1585#1610
              '4 '#1605#1575#1607' '#1580#1575#1585#1610
              '5 '#1605#1575#1607' '#1580#1575#1585#1610
              '6 '#1605#1575#1607' '#1580#1575#1585#1610
              '7 '#1605#1575#1607' '#1580#1575#1585#1610
              '8 '#1605#1575#1607' '#1580#1575#1585#1610
              '9 '#1605#1575#1607' '#1580#1575#1585#1610
              #1610#1705' '#1605#1575#1607' '#1580#1575#1585#1610
              #1583#1608' '#1605#1575#1607' '#1580#1575#1585#1610
              #1587#1607' '#1605#1575#1607' '#1580#1575#1585#1610
              #1670#1607#1575#1585' '#1605#1575#1607' '#1580#1575#1585#1610
              #1662#1606#1580' '#1605#1575#1607' '#1580#1575#1585#1610
              #1588#1588' '#1605#1575#1607' '#1580#1575#1585#1610
              #1607#1601#1578' '#1605#1575#1607' '#1580#1575#1585#1610
              #1607#1588#1578' '#1605#1575#1607' '#1580#1575#1585#1610
              #1606#1607' '#1605#1575#1607' '#1580#1575#1585#1610
              #1605#1575#1607' '#1711#1584#1588#1578#1607
              '1 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '2 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '3 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '4 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '5 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '6 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '7 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '8 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              '9 '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1610#1705' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1583#1608' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1587#1607' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1670#1607#1575#1585' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1662#1606#1580' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1588#1588' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1607#1601#1578' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1607#1588#1578' '#1605#1575#1607' '#1711#1584#1588#1578#1607
              #1606#1607' '#1605#1575#1607' '#1711#1584#1588#1578#1607)
          end
          object ChBoFollowRetroaction: TCheckBox
            Left = 0
            Top = -1
            Width = 71
            Height = 15
            Anchors = [akTop, akRight]
            Caption = #1576#1583#1608#1606' '#1601#1585#1605#1608#1604
            Font.Charset = ARABIC_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object EdtUserMemo: TEdit
            Left = 10
            Top = 149
            Width = 143
            Height = 21
            Anchors = [akTop, akRight]
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 5
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
          object chkbAllYear: TCheckBox
            Left = 87
            Top = 172
            Width = 79
            Height = 17
            Caption = #1583#1585' '#1607#1605#1607' '#1587#1575#1604#1607#1575
            TabOrder = 6
          end
          object chkJustNotArchived: TCheckBox
            Left = 8
            Top = 195
            Width = 157
            Height = 17
            Caption = #1601#1602#1591' '#1576#1575#1610#1711#1575#1606#1610' '#1606#1588#1583#1607
            Checked = True
            State = cbChecked
            TabOrder = 7
          end
          object eFromDate: TEdit
            Left = 40
            Top = 73
            Width = 106
            Height = 21
            Anchors = [akTop, akRight]
            Ctl3D = True
            ParentCtl3D = False
            TabOrder = 8
            OnEnter = TEditEnter
            OnExit = TEditExit
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = #1576#1575#1610#1711#1575#1606#1610' '#1588#1582#1589
        ImageIndex = 1
        object DBArchiveTree: TDBTreeView
          Left = 0
          Top = 52
          Width = 167
          Height = 623
          Align = alClient
          Images = Dm.LetterImages
          Indent = 19
          ReadOnly = True
          TabOrder = 0
          OnClick = DBArchiveTreeClick
          OnKeyUp = DBArchiveTreeKeyUp
          DataSource = DSForm
          RootID = 0
          IDField = 'FolderID'
          ParentIDField = 'ParentFolderID'
          DisplayField = 'Title'
          BuildMethod = bmFilter
        end
        object Panel10: TPanel
          Left = 0
          Top = 0
          Width = 167
          Height = 52
          Align = alTop
          TabOrder = 1
          object SpeedButton3: TSpeedButton
            Left = 2
            Top = 8
            Width = 21
            Height = 22
            Cursor = crHandPoint
            Hint = #1580#1587#1578#1580#1608#1610' '#1586#1608#1606#1705#1606
            Flat = True
            Glyph.Data = {
              E6040000424DE604000000000000360000002800000014000000140000000100
              180000000000B004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00212F4DADB72A37310000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000522C9FF00
              B4FC5BFFFF2A5759000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000001596BEC1FFFF4AC3DD0AC9
              FF054C6100000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000042678FFFFF9BFFFF4ADCFE12A0CA000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000019328AFFFF9CFFFE4BD1EA00A8E200000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000001A6B77A8FFFF52CFE41FDDFF00182A0000000000000000000000000000
              000000000000000000000000000000004443436E6D6C7A7A797776752B2321A1
              8882A2FFFF14DBFF0082B1000000000000000000000000000000000000000000
              000000000000494847F8F9FEE5EDFBD4DEF0CAD4E4C1CDDBA8ACB2EDDFDD8761
              5A00000000000000000000000000000000000000000000000000000000000060
              6367F7FFFFE3FFFFDCD0BDE3CC9EE7D1A3E7D6B0CAD7EDB5CAF37C828A3E3D3D
              0000000000000000000000000000000000000000000000003D4044FFFFFFE8D1
              B4D06E00D38B18D79532D69C3EDDA241ECAA33EEBA5BEFF2FAB5C0CF19191A00
              0000000000000000000000000000000000000000A8B3C2F6E1C0B85F00C47C19
              C7862FCB8C34CB923BCF9642D29D4FDA9E42DCA345E6EEFC5F656E0000000000
              00000000000000000000000000000000FFFFFFBD6A00B97313BA7517BC7111B9
              7312BF7715C07B1CC68526CB892FCE810FECC081B9C9E0000000000000000000
              000000000000000000000000FFFFFFAF5800D3A76CC78F4DC58C42C08536C07C
              27BC7822BC7718BE781ABF730DD3881BE8F7FF00000000000000000000000000
              0000000000000000FFFFFFB16001E7C798D4AD78D0A66BCDA063C79753C6934C
              C18539C08637BE771CCC790BEFFDFF0000000000000000000000000000000000
              00000000FFFFFFB07D43EBC68EEEE2C0E2C79EDEC094DCB888D9B484D6AE78DC
              B786C47E21E3BA8991A3B9000000000000000000000000000000000000000000
              71787FEEEEF2AC6A1DFCEEBDFFFFE0F7EED1EDE1C0ECE1BFEFDFB5E4B87CA55B
              01FFFFFF252B32000000000000000000000000000000000000000000000000DA
              E3ECDEE5F3A76F37C98839E6C180ECD29AE6C183C3781FA16727E8F3FFABB4C0
              000000000000000000000000000000000000000000000000000000000000BABF
              C6FFFFFFEEF7FFDCC3B2D3AD8DD3B89FEBF6FFFFFFFFA3A8B000000000000000
              0000000000000000000000000000000000000000000000000000000000282828
              6D7072C6CCD3C5CFD7CFD9DE56585C1819180000000000000000000000000000
              00000000000000000000}
            ParentShowHint = False
            ShowHint = True
            OnClick = SpeedButton3Click
          end
          object eArchiveYear: TMaskEdit
            Left = 26
            Top = 8
            Width = 29
            Height = 21
            BiDiMode = bdLeftToRight
            EditMask = '!1399;1; '
            MaxLength = 4
            ParentBiDiMode = False
            TabOrder = 0
            Text = '13  '
            OnChange = eArchiveYearChange
          end
          object OnlyOneYear: TCheckBox
            Left = 58
            Top = 10
            Width = 105
            Height = 17
            Caption = #1601#1602#1591' '#1606#1575#1605#1607' '#1607#1575#1610' '#1587#1575#1604
            Checked = True
            State = cbChecked
            TabOrder = 1
            OnClick = OnlyOneYearClick
          end
          object ChbAllSec: TCheckBox
            Left = 65
            Top = 30
            Width = 97
            Height = 17
            Caption = #1578#1605#1575#1605' '#1583#1576#1610#1585#1582#1575#1606#1607' '#1607#1575
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = #1606#1605#1608#1583#1575#1585' '#1587#1575#1586#1605#1575#1606#1610
        ImageIndex = 2
        object FromOrgTree_old: TDBTreeView
          Left = 0
          Top = 0
          Width = 167
          Height = 675
          Align = alClient
          BiDiMode = bdRightToLeftReadingOnly
          Indent = 19
          TabOrder = 0
          Visible = False
          OnClick = FromOrgTree_oldClick
          DataSource = DFromOrganizations
          RootID = 0
          IDField = 'ID'
          ParentIDField = 'ParentID'
          DisplayField = 'Title'
          BuildMethod = bmFilter
        end
        object FromOrgTree: TDBTreeView
          Left = 0
          Top = 0
          Width = 167
          Height = 675
          Cursor = crHandPoint
          Align = alClient
          BiDiMode = bdRightToLeftReadingOnly
          Indent = 19
          ReadOnly = True
          TabOrder = 1
          OnClick = FromOrgTreeClick
          DataSource = DFromOrganizations
          RootID = 0
          IDField = 'ID'
          ParentIDField = 'ParentID'
          DisplayField = 'Title'
          BuildMethod = bmFilter
        end
      end
      object TabSheet4: TTabSheet
        Caption = #1578#1575#1585#1610#1582
        ImageIndex = 3
        object ToOrgDbgrid: TYDBGrid
          Left = 0
          Top = 0
          Width = 167
          Height = 633
          Align = alClient
          BiDiMode = bdRightToLeft
          Color = clWhite
          DataSource = Dsp_distinctDate
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgIndicator, dgConfirmDelete, dgCancelOnExit]
          ParentBiDiMode = False
          ParentFont = False
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
          PrintTitle = #1593#1606#1608#1575#1606
          InvertFarsiDate = True
          TitleSort = True
          AutoInsert = False
          FooterFields = 'Count'
          Columns = <
            item
              Expanded = False
              FieldName = 'Title'
              Title.Alignment = taCenter
              Title.Caption = #1578#1575#1585#1610#1582
              Width = 170
              Visible = True
            end>
        end
      end
      object TabSheet5: TTabSheet
        Caption = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1585#1580#1575#1593#1575#1578
        ImageIndex = 4
        object GroupBox5: TGroupBox
          Left = 8
          Top = 9
          Width = 156
          Height = 136
          Caption = #1711#1586#1575#1585#1588#1610' '#1575#1586' '#1575#1585#1580#1575#1593#1575#1578
          Font.Charset = ARABIC_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          DesignSize = (
            156
            136)
          object Label8: TLabel
            Left = 97
            Top = 23
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1575#1585#1580#1575#1593
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 97
            Top = 47
            Width = 53
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1605#1607#1604#1578' '#1575#1602#1583#1575#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 97
            Top = 72
            Width = 48
            Height = 13
            Anchors = [akTop, akRight]
            Caption = #1578#1575#1585#1610#1582' '#1575#1602#1583#1575#1605
            Font.Charset = ARABIC_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object RecommiteDate: TYWhereEdit
            Left = 8
            Top = 20
            Width = 85
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 0
            isLike = False
            isDate = True
            EveryLike = False
            isString = True
            FieldName = 'RecommiteDate'
            TableName = 'RC'
            CodeField = 'Code'
            TitleField = 'Title'
          end
          object DeadLineDate: TYWhereEdit
            Left = 8
            Top = 44
            Width = 85
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 1
            isLike = False
            isDate = False
            EveryLike = False
            isString = True
            FieldName = 'DeadLineDate'
            CodeField = 'Code'
            TitleField = 'Title'
          end
          object ProceedDate: TYWhereEdit
            Left = 8
            Top = 69
            Width = 85
            Height = 21
            Anchors = [akTop, akRight]
            BiDiMode = bdLeftToRight
            ParentBiDiMode = False
            TabOrder = 2
            isLike = False
            isDate = True
            EveryLike = False
            isString = True
            FieldName = 'RC.ProceedDate'
            CodeField = 'Code'
            TitleField = 'Title'
          end
          object Search: TBitBtn
            Left = 16
            Top = 98
            Width = 85
            Height = 26
            Anchors = [akTop, akRight]
            Caption = ' '#1580#1587#1578#1580#1608
            Default = True
            Font.Charset = ARABIC_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnClick = SearchClick
            Glyph.Data = {
              26040000424D2604000000000000360000002800000012000000120000000100
              180000000000F003000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFA2A7AC46484B585E63BEC2C5FFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FF787C807C634FEDB285D4A280423F3FC4C7C9FFFFFFFFFFFFD7DBDD737B8174
              7C82D2D4D7FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF747577726861FBCF99FF
              D6A2FFD49AE6B588666F76FFFFFFDADBDB464346A87F61A7836B474747D9DADC
              0000FFFFFFFFFFFFFFFFFF7575754F5154B0A59CF7D9B6FFE9D0FFE0C1FFE0AA
              666566878889464F58DBB485FFDEA1FFD598CDA8827576780000FFFFFFFFFFFF
              6969695757579B9C9CA6A2A3D3BAAEFFFFFFFFFFEEFFF2C7292C304140407B82
              8BFFD8AAFFE9CBFFDEBDFFE0AE615A540000EBEBEB545454313131818181C8C8
              C8D7DBDCAEA6A8B8A19DDCC0B2776B63484E55B7BEC4BBC7D3BBA69FFFFCF3FF
              FFF1E3D1AE7A767300005E5E5E9696969D9D9D595959B1B1B1FFFFFFFCFEFF84
              8383605B5B515E6C444648BB9564D6AF76CED9E7C2AEAACDB8AB8A7E72C6C8CB
              0000454545BABABAA8A8A8BFBFBF7777779898986C6B6B3939383D4E5D58534E
              AA6612F8B76DE79429E7D5B2747E907A7473CCCCCFFFFFFF0000474747A5A4A4
              DCDCDCCFD0CFC8C8C898989783888C7181906D4829D27E25FFD395FFD9AFFFE0
              BBC17109A5A5A1FFFFFFFFFFFFFFFFFF0000535353414141828D939A9EA09F9F
              9FA5A8AAA2A3A6B57B40F4A74BFFDCA5FFCB94FFC38AFFCC9AF4B871F4C37FFF
              FFFFFFFFFFFFFFFF0000E7E7E7BBC2C69C6B4EB2A8A2A0A3A57D8387935F2CE9
              9238F2B26AD88A38F8B977FFC78CFDC88CFFD09DE39436F5E7D5FFFFFFFFFFFF
              0000FFFFFFFFFFFFD18451EBC5A7FFFFFFF3F5F6E8D7C8E3B384E1C5A4BD7F36
              FCBD79FFCB90D98A38E7A253F9CD92E4AB69FFFDFEFFFFFF0000FFFFFFFFFFFF
              C68051C17957FFFFFFFFFFFFFFFFFFFEFFFFFFFFFFD18C42FFC47FFBB86ED594
              4BDDB27FD17912D88628FEFAF6FFFFFF0000FFFFFFFFFFFFCB9873C34F00EBD7
              CFFFFFFFFFFFFFFFFFFFD6AC87E0903AFFC179E29337E5C49EFFFFFFF6E7D5FA
              F8F2FFFFFFFFFFFF0000FFFFFFFFFFFFE7CABDD66000BE6528EDECF0F6FFFFE3
              C9BBC7711EFDB059FEB565D98734F5EADEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              0000FFFFFFFFFFFFFCFDFFC0682BF78A01C5600BC5600AD16B0CFFAC4AFFC26B
              E18C35DBAF8AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
              FFFFFFEADDDCB74D03E58014FFA51DFFB33FF8A44DD07121CD9060FFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF1E6
              E2DCB5B2D7AB8AD3A988DEB399E3C7BAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF0000}
          end
        end
      end
    end
  end
  inherited DSForm: TDataSource
    Left = 295
    Top = 256
  end
  inherited ActionList: TActionList
    Left = 674
    Top = 223
    object ASetActions: TAction
      Caption = 'ASetActions'
      OnExecute = ASetActionsExecute
    end
    object Action1: TAction
      Caption = 'Select All'
      ShortCut = 16465
      Visible = False
      OnExecute = Action1Execute
    end
  end
  object FromOrganizations: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    CommandText = 
      'Select * From FromOrganizations Where IsInnerOrg=1 And IsActive ' +
      '= 1'
    Parameters = <>
    Left = 85
    Top = 95
    object FromOrganizationsID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
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
      Size = 50
    end
    object FromOrganizationsIsInnerOrg: TBooleanField
      FieldName = 'IsInnerOrg'
    end
    object FromOrganizationsCode: TWideStringField
      FieldName = 'Code'
      Size = 50
    end
    object FromOrganizationsUniqueID: TLargeintField
      FieldName = 'UniqueID'
    end
  end
  object DFromOrganizations: TDataSource
    DataSet = FromOrganizations
    Left = 85
    Top = 144
  end
  object Dcommon: TDataSource
    AutoEdit = False
    Left = 352
    Top = 264
  end
  object Dsp_distinctDate: TDataSource
    DataSet = Sp_DistinctDate
    Left = 181
    Top = 264
  end
  object QueryRefresher: TTimer
    Interval = 120000
    OnTimer = QueryRefresherTimer
    Left = 674
    Top = 384
  end
  object GetList1: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ListID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 4
      end>
    Left = 214
    Top = 111
  end
  object GetList2: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ListID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 2
      end>
    Left = 183
    Top = 367
  end
  object GetList3: TADOStoredProc
    Connection = Dm.YeganehConnection
    ProcedureName = 'GetList;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@ListID'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 3
      end>
    Left = 352
    Top = 95
  end
  object DGetList3: TDataSource
    DataSet = GetList3
    Left = 352
    Top = 144
  end
  object DgetList2: TDataSource
    DataSet = GetList2
    Left = 183
    Top = 320
  end
  object DGetList1: TDataSource
    DataSet = GetList1
    Left = 174
    Top = 144
  end
  object dUserSecs: TDataSource
    DataSet = Dm.UserSecs
    Left = 442
    Top = 264
  end
  object Sp_DistinctDate: TADODataSet
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    AfterScroll = Sp_DistinctDateAfterScroll
    CommandText = 'sp_distinctDate;1'
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
        Name = '@MyFarsiToday'
        Attributes = [paNullable]
        DataType = ftWideString
        Size = 10
        Value = '1300/01/01'
      end>
    Left = 181
    Top = 212
    object Sp_DistinctDateid: TIntegerField
      FieldName = 'id'
    end
    object Sp_DistinctDateTitle: TWideStringField
      FieldName = 'Title'
      Size = 100
    end
    object Sp_DistinctDatebeginDate: TStringField
      FieldName = 'beginDate'
      FixedChar = True
      Size = 10
    end
    object Sp_DistinctDateEnddate: TStringField
      FieldName = 'Enddate'
      FixedChar = True
      Size = 10
    end
  end
  object ImageList: TImageList
    AllocBy = 1
    Left = 538
    Top = 242
    Bitmap = {
      494C01013A003B00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000040000000F0000000010020000000000000F0
      000000000000000000000000000000000000000000000000000000000000E7E7
      E700BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD7B5A009C634A009C63
      4A0094634A0094634A0094634A008C5A42008C5A42008C5A4200845239008452
      39007B523900845239007B5239008C5239000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500ADADAD00CECECE0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFF7EF00FFFFFF0084634A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B5009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFFFFF00FFFFFF00FFFFF700F7EF
      E700F7E7E700F7E7E700FFF7EF00845A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00ADAD
      AD009C9C9C00FFFFFF0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6735200BD8C7B00FFFFFF00EFDE
      DE00AD8C7B00AD847300F7EFE700FFFFF700A57B63009C846B00947B6300FFF7
      F700FFEFE700F7E7E700FFF7F700845A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700ADAD
      AD00A5A5A5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE7B5200BD8C7B00FFFFFF00DEC6
      BD00BD735200AD4A18009C735A00FFFFFF00943910008442180073310800B5AD
      9C00FFF7F700F7EFE700FFF7F7008C5A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000CECECE00B5B5
      B500ADB5B5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CE845A00C6948400FFFFFF00DECE
      C600CE846B00B5B5C600527B8C0008632900298C310084B57300A54A1800735A
      3900FFF7F700FFEFEF00FFF7F7008C634A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000BDBDBD00B5B5
      B50039949C00DEEFEF0000000000000000000000000000000000FFFFFF00B5D6
      DE005AB5BD0029A5B50052ADB500FFFFFF00CE846300C6948400FFFFFF00DECE
      C600D6947300C6D6DE0031A5630039D6630031BD4A0008841800BD5A31006B31
      0000C6BDAD00FFFFF700FFFFFF00946B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5B5B5009CA5
      AD0029A5B50039ADBD0084BDC600BDDEDE00BDD6DE008CC6C60042ADB5004ACE
      DE004AD6E70029C6D600219CAD00FFFFFF00D68C6B00C69C8400FFFFFF00E7D6
      CE00D69C7B00BDD6A50039CE630063FF9C0052E7840031BD5200007B1000BD63
      3100735A3100FFF7F700FFFFFF00946B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000ADADAD007B9C
      A50031B5C60052D6E70052DEE70031BDCE0010ADB50021BDCE0042D6E70052DE
      EF0042D6DE0029BDCE0042A5B50000000000DE8C7300CEA58C00FFFFFF00E7D6
      CE00E7A58C00F7F7F70052C6730042EF73006BFF9C0052E7840039BD5200C66B
      4A007B421000C6BDAD00FFFFFF00946B52000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700ADADAD00639C
      9C0042C6CE0052DEE70052DEEF0031C6D60018B5C60029BDCE004ADEE70052DE
      EF0042D6DE0021BDCE006BB5BD0000000000DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00DEE7C60031BD5A0052F7840063FF940052E77B0031B5
      4A00B5633100846B4A00FFFFFF009C735A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00ADADAD00529C
      A50042CED60052DEE70052DEEF0029C6CE0018B5C60031C6D60052DEE70052DE
      E70039CEDE0021B5C6009CCECE0000000000DE947300CEA58C00FFFFFF00E7C6
      BD00E7AD9400B57B5A00EFEFE700D6E7C60018C64A005AFF8C0063FF940052DE
      7B00218429007B421800E7E7DE00A57363000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C6C6C600B5B5B50039A5
      AD004ACEDE0052DEE7004ADEE70021BDCE0018B5C60031CED60052DEE70052DE
      EF0031CED60018ADB500C6DEDE0000000000E79C7B00D6AD9C00FFF7F700D68C
      6B00EFBDA500DEA58C00B5846B00E7DED600CE8C730029DE630063FF94005AFF
      94005A635A007B7B6B00EFEFDE00A56B5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00ADB5B50029A5
      AD004ACEDE0052DEEF0042D6E70018B5C60018B5C60039CEDE0052DEEF004AD6
      E70031C6D60010A5AD00EFF7F70000000000E79C7B00D6AD9C00EFCEBD00DE9C
      8400DEA58C00DEA58C00CE846B00F7E7E700D6AD9400847B7B0052946B00C6C6
      BD004263EF001839DE000008AD005A52BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B50094A5A50029A5
      B5004ACEDE0052DEEF0039D6DE0018B5C60021BDCE0042D6DE0042CED60031B5
      BD0021A5B500299CA5000000000000000000E79C8400CEAD9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDBDBD00DEDE
      D600396BFF003963EF000818B5001818A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD009C9C9C00ADCE
      CE0039ADBD004ACEDE0031C6D60010ADBD0021A5AD0063B5BD00BDDEDE00F7FF
      FF00F7FFFF00B5D6DE000000000000000000EFA58400CEA59400F7EFEF00EFE7
      E700EFE7E700EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00FFFFF700F7F7
      FF00315AEF001831CE0000009C009C9CD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700ADD6D6009CCECE00B5D6D600EFF7F70000000000000000000000
      000000000000000000000000000000000000EFA58400E7BDAD00DEAD9C00DEAD
      9C00DEAD9C00DEAD9C00DEA58C00DEA58C00D69C8400D6947B00D6947B00CE8C
      6B00848CD600848CD600C6735200D68463000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5DEBD0029943100217B
      21008C8C8C00A5ADA500ADB5AD00BDC6C600C6BDC600ADADAD00A59CA5005A6B
      5A00187B2100217B290029843100BDD6BD00000000000000000000000000FFFF
      FF005A63D6000821C6000821C6001021C6000821C6000818C6000818BD005A5A
      CE00FFFFFF00000000000000000000000000000000000000000000000000E7E7
      E700BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000947B7B00846363007363
      5A006B5A5A006B5A5A007363630084635A009C737300B5949400DEBDBD00FFDE
      DE00FFFFF700FFFFFF00FFFFFF00FFFFFF00ADE7BD0018A5390010B5310018AD
      39009C9C9C0029C64A0021C64A0094DEAD0000000000FFFFFF00EFE7EF00739C
      7B0010BD420039CE630042C66300107318000000000000000000000000004A52
      D6000031EF00104AFF00104AFF00104AFF00104AFF00104AFF00084AFF000029
      EF004A52C600000000000000000000000000000000000000000000000000B5B5
      B500ADADAD00CECECE0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848C8C0063FFFF008CFFFF006BF7
      FF009CFFFF00ADFFFF00A5FFFF0094FFFF0084FFFF006BEFF70042ADBD002984
      8C00105A6B00004A5A0021212100FFFFFF0031BD5A0018B5390018BD390021B5
      3900A59CA50008B5210000B529007BC68C00F7E7EF00FFFFFF00FFFFFF007BA5
      840010C6420039CE630052D67B000073100000000000000000004A52D6000839
      F700184AFF00184AFF00184AFF001042FF001042FF001042FF001042FF000842
      FF000029EF005252C6000000000000000000000000000000000000000000B5B5
      B5009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      00000000000000000000000000000000000094949400FFB59C00FFD6C600FFDE
      BD00FFCEC600F7AD9C00BD735A00BDEFF700ADEFF700ADF7FF00ADFFFF00ADFF
      FF00A5FFFF009CFFFF00A5A5A500FFFFFF0031CE630018B5310018B5310018AD
      3900BDB5BD00009C000000AD080063B57300D6CED600DEDEDE00FFFFFF008CB5
      940010BD390039CE63004AD6730008731000FFFFFF004A5ADE000839F7002152
      FF00184AFF00184AFF00184AFF00184AFF00104AFF001042FF001042FF001042
      FF000842FF000029EF004A52C600FFFFFF000000000000000000FFFFFF00ADAD
      AD009C9C9C00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00FFF7F700730000005A00
      00005A00000031000000ADAD9400FFFFFF009CE7EF009CE7EF009CE7EF0094DE
      E70094DEEF0084D6DE009C9C9C00FFFFFF0031CE630010B5310010B5310018AD
      3100DED6DE0094BD8C0073B57B0094A59400CEB5C600DECEDE00FFEFFF0094B5
      9C0008AD310039BD5A004AD67300087310005A6BE7001042F7002152FF001852
      FF00184AFF001852FF00184AFF00184AFF00184AFF001042FF00104AFF001042
      FF001042FF000842FF000029EF005A63CE000000000000000000E7E7E700ADAD
      AD00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00D6EFEF00E7FFFF00BDC6
      CE00ADA594004A848C006B6BB50084B5DE00FFFFFF00C6FFFF00BDFFFF00C6FF
      FF00BDFFFF00A5F7F700A5A5A500FFFFFF0031CE630010AD290010AD290018AD
      310042A5520052A5630052A563004A9C5A00399C520039944A00318C4A002994
      420018A5390021AD420029CE5200087310000829DE00295AFF002152FF00315A
      FF002152FF001852FF00295AFF00184AFF00184AFF002152FF000842FF00184A
      FF001042FF001042FF00084AFF000018C6000000000000000000CECECE00B5B5
      B500ADB5AD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008C8C8C00B5FFFF00BDFFFF007BC6
      FF00D6F7FF00FFFFFF000000CE000000BD00947BC600E7FFEF00ADF7F700A5EF
      EF00A5F7F7009CDEE700ADADAD00FFFFFF0031CE630010AD210010AD210008AD
      210000B5180000B5180000B5210000B5210008BD290008BD290008BD310010C6
      390018C6420021C64A0029C65200087310001031E7001852FF008CA5FF000000
      0000DEE7FF002152FF0000000000104AFF00DEE7FF00000000005273FF00F7FF
      FF00426BFF000839FF00104AFF000821CE000000000000000000BDBDBD00B5B5
      B500399C3900DEEFDE0000000000000000000000000000000000FFFFFF00B5DE
      B5005ABD5A0031B5290052B55200FFFFFF0094949400D6F7EF00D6EFE700A5BD
      EF00DEDED600FFCEA5005A5ACE000021FF000000C6008463A500E7EFDE00B5F7
      FF00B5F7FF009CE7E700ADA5A500FFFFFF0031CE630008AD180018AD31004AA5
      5A0042A5520042A5520042A5520042A5520042A5520042A5520042A55A0042A5
      5A004AA5630029B5520021C64A00087310001031E700295AFF005A7BFF00B5C6
      FF00000000002152FF00000000000839FF0000000000E7E7FF008CA5FF00F7F7
      FF007B9CFF000031FF00104AFF000821CE000000000000000000B5B5B5009CAD
      9C0029B5290039BD390084C68400BDDEBD00BDDEBD008CC68C0042B542004ADE
      4A004AE74A0029D6290021AD2100FFFFFF00949C9C0094B5BD00738C84008CAD
      E700BDEFFF00CEE7E700FFEFDE00294AE7000042FF000000C6008C739C00DEFF
      FF00ADF7F700A5E7EF00A5ADAD00FFFFFF0031CE630000A5100031AD4200FFDE
      FF00FFE7F700FFE7F700FFE7F700F7E7F700F7E7EF00F7DEEF00EFDEE700EFDE
      E700EFC6E70042AD5A0018C64A00087310001039EF00215AFF009CB5FF000000
      0000638CFF002152FF00000000000039FF0000000000DEE7FF008CA5FF00E7E7
      FF000000000094ADFF000039FF000821CE000000000000000000ADADAD007BA5
      7B0039C6310052E7520052E7520031CE310018B5100029CE21004AE742005AEF
      52004AE7420029CE290042B54200000000009C9C9C00CEDEE700B5C6BD00A5BD
      EF00D6EFF700D6FFFF00E7FFFF00ADB5E7000831EF006384D60029315A00A5A5
      A500DEFFFF008CDEE700A5A5A500FFFFFF0031CE630000A5100029A53900F7DE
      F700F7F7F700D6D6D600CECECE00CED6D600CECECE00CECECE00CECECE00E7E7
      E700DECEDE0042AD5A0018C64200087310001039EF00215AFF00B5CEFF000000
      0000B5C6FF00BDCEFF00000000008CA5FF00EFF7FF00000000006B8CFF000000
      0000000000006B8CFF000039FF000821D60000000000F7F7F700ADADAD00639C
      630042CE420052E7520052EF520031D6310018C6180029CE29004AE74A0052EF
      520042DE420021CE210073BD6B00000000009C9C9C00EFFFFF00F7FFFF00A5BD
      EF00DEF7F700E7F7F700D6F7FF00E7FFFF0094A5E700948C8C001042CE000808
      C600ADA5C600E7FFFF009C9CA500FFFFFF0031CE630000A5080029A53100FFE7
      FF00F7F7F700EFEFEF00E7E7E700E7E7E700E7E7E700E7E7E700DEDEDE00E7E7
      E700E7CEDE0042AD5A0018C64200087310001039EF00396BFF003163FF004A73
      FF00396BFF004A73FF00426BFF00396BFF00295AFF00396BFF00184AFF00295A
      FF00295AFF00104AFF00104AFF000021D60000000000DEDEDE00ADADAD0052A5
      520042D6420052E7520052EF520029CE290018C6180031D6310052E7520052EF
      520039DE390021C621009CCE9C0000000000A5A5A500DEFFFF00F7FFFF00A5B5
      EF00D6E7EF00CEEFEF00C6EFEF00C6EFF700C6F7EF00739CCE004A63B5000031
      FF001008B500E7CEDE008C948400FFFFFF0031CE6300009C000029A53100FFEF
      FF00FFFFFF00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00E7E7
      E700E7CEDE0042AD520018C64200087310005A73F7002152FF00396BFF003163
      FF00396BFF004273FF00426BFF003163FF00215AFF002152FF002152FF00184A
      FF00184AFF00184AFF000839F7005A6BDE0000000000C6C6C600B5B5B50042AD
      39004ADE4A005AEF52004AE74A0021CE210018C6180039D6310052EF520052EF
      520039D6310018B51800C6DEC60000000000ADADAD00FFFFFF00FFFFFF00C6CE
      FF00F7F7FF00F7FFFF00F7FFFF00EFFFFF00EFFFFF00C6E7E7009C9CA5003952
      94000031FF001821AD00D6CEC600FFFFFF0031CE6300009C000029A53100FFEF
      FF0000000000F7F7F700EFEFEF00F7F7F700EFEFEF00EFEFEF00E7E7E700E7E7
      E700E7D6DE0042B55A0018C6420008731000FFFFFF004A63F700295AFF00396B
      FF00426BFF004273FF00426BFF003963FF00295AFF00295AFF002152FF002152
      FF002152FF000839F7004A5AE700FFFFFF0000000000BDBDBD00ADB5B50029AD
      29004ADE4A005AEF520042E7420018C6180021C6180042DE390052EF52004AE7
      4A0031D6310018AD1000EFF7EF0000000000B5BDBD008CADB500213129007B94
      C600BDD6EF00BDE7EF00B5DEE700B5DEE700B5E7EF009CADB500FFFFFF00D6CE
      AD000029B5000018FF005A63D600FFFFFF0029CE63000094000029A52900FFF7
      FF0000000000DEDEDE00D6D6D600D6D6D600D6D6D600CECECE00CECECE00EFEF
      EF00E7D6E70039A5520010A53100087B180000000000000000004A63F700215A
      FF00396BFF00396BFF003963FF003163FF00295AFF00295AFF002152FF002152
      FF000839FF004A63E700000000000000000000000000B5B5B50094A5940029B5
      29004ADE4A005AEF520042DE390018C6180021CE210042DE42004AD6420031BD
      310021B5210029A529000000000000000000BDBDBD00EFFFFF00F7EFEF00C6DE
      FF00E7F7FF00F7FFFF00E7FFFF00DEFFFF00DEFFFF00CED6D60073C6C600FFFF
      FF00C6B59C000839C6000000D600CECEFF0039CE6B00009C000029A52900FFF7
      FF0000000000F7EFF700EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700EFEF
      EF00EFDEEF0039A5520008942900219431000000000000000000000000004A63
      F7002152FF00396BFF00396BFF003163FF003163FF002963FF00295AFF001042
      FF004A63EF0000000000000000000000000000000000BDBDBD009C9C9C00ADCE
      AD0039BD39004ADE4A0031D6310018BD100021AD210063BD6300BDDEBD00F7FF
      F700F7FFF700B5DEB5000000000000000000ADB5B500CEEFEF00FFFFFF009CC6
      FF00CEF7FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DEFFFF0031313100D6D6
      D600FFFFFF0073737B0021315A0039395200C6F7D60039CE6B0052C67300E7D6
      E700D6DED600D6DEDE00D6DED600D6D6D600CED6CE00C6CECE00C6C6C600BDC6
      BD00C6BDC6004AB56B0029B54A00BDDEC600000000000000000000000000FFFF
      FF005A73FF001039F7001039F7001039F7001039F7001039EF000831EF005A73
      EF00FFFFFF000000000000000000000000000000000000000000000000000000
      0000F7F7F700B5D6AD009CCE9C00B5D6B500EFF7EF0000000000000000000000
      000000000000000000000000000000000000EFEFEF00BDB5B500BDB5B500CEC6
      B500B5ADAD00A59C9C00948C8C00847B7B0073737300736B6B00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000D6A58C00CEA58C00CEA5
      9400CEA59400CE9C9400C69C8C00C69C8C00CEA5A50094AD8400318421001073
      00002173100073946300BDADA500EFE7E70000000000C6CECE00B5BDC600B5BD
      C600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BDC600B5BD
      C600B5BDBD00B5BDBD00BDC6CE0000000000000000000000000000000000F7FF
      FF00BDEFFF00E7FFFF0000000000000000000000000000000000B5D6B5000073
      0000007B0800398C39000000000000000000000000000000000000000000FFFF
      F700FFF7E700FFDEBD00F7CEA500F7BD8C00EFB57B00E7A56B00E79C5A00DE9C
      6300EFC69C00FFFFFF000000000000000000D6AD9400F7E7D600FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF006BBD6B00008C000000A510000094
      0000088C0000107300004A8C3100BDADA500ADB5B5007B8484007B8484007B84
      84007B8484007B8484007B8484007B8484007B8484007B8484007B8484007B84
      84007B8484007B848400949C9C00BDC6CE000000000000000000000000005ADE
      FF0063DEFF0073E7FF0073E7FF00B5F7FF000000000000000000BDDEBD0010AD
      310042EF8400398C310000000000000000000000000000000000FFE7CE00FFE7
      C600FFE7D600FFEFE700FFF7EF00FFEFEF00FFE7DE00FFDED600EFC6B500E7A5
      8C00C6733900F7B56B000000000000000000DEB59C00FFFFFF00FFF7EF009C9C
      9C00A5A5A500A5A5A500D6D6D600D6EFD6000094000010AD2900EFF7F700A5E7
      BD00009C000000940000186B0000739463000000630000006300000063000000
      630000006300000063000000630000006B0000006B000000730000087B000008
      7B000008840000088C0008089400B5BDBD000000000000000000A5EFFF006BDE
      F70000000000F7FFFF00C6F7FF009CF7FF0052B57B00319421001884100021B5
      39004AE7840000630000398C3100398C31000000000000000000FFD6AD00FFFF
      FF00FFFFFF00FFFFFF00FFF7F700FFF7EF00FFE7DE00FFDEC600EFC6AD00DEA5
      8C00CE947300D67B18000000000000000000DEB59C00FFFFFF00FFF7EF00DED6
      D600DEDEDE00DEDEDE00F7EFF7005AAD5A0029B54200F7E7F700E7EFE700FFFF
      FF00B5EFCE00009C0000088C0000297310000000730000007300A5A5CE007373
      AD0000006B0000006B0000006B00000073000000730000007B0000087B000008
      84000008840000088C0000088C00B5BDBD0000000000EFFFFF0031CEF700F7FF
      FF0094D6E70073B5CE00B5DEE700000000004AA5420042EF7B0052F7940052EF
      84004AE784004AEF840042EF8400007B080000000000FFFFF700FFE7CE00FFF7
      FF00FFEFF700ADC6A5001084100063A56300DEC6B500FFDED600E7C6B500E7BD
      9C00DEA58C00CE732900FFF7E70000000000E7B59C00FFFFFF00FFF7E700DED6
      CE00DEDEDE00D6D6D600F7EFF70052B5520042BD5A009CC6940021B5390063CE
      7300FFFFFF00A5E7B500009400001073000000007B0000007B006363AD006363
      AD008484BD0000007B0000007B0000007B0000007B0000007B00000884000008
      84000008840000088C0000088C00B5BDBD000000000084E7FF009CEFFF00E7FF
      FF00D6FFFF00B5E7EF0084CEDE00A5D6EF0039A5390010B5290021BD420042DE
      6B0052EF840021B5390018B539000073000000000000FFFFE700FFEFDE00FFF7
      F70073B55A0021BD390042FF7B0000A52100C6C6B5007B9C6B00FFE7D600EFC6
      A500DEAD8C00CE844200FFDEB50000000000E7BD9C00FFFFF700FFEFDE00A59C
      9C00A5A59C00FFFFFF00C6BDC60063AD63005ADE8C0018C64A0021C6520008B5
      310052C66300FFFFFF0094DE9C002984210000008C0000008C0000008C002121
      94006363B5004242A50000008400000084000000840000008400000884000008
      840000088C00ADADDE0000088C00B5BDBD00F7FFFF0063DEFF00BDFFFF0084CE
      DE00B5EFF700DEFFFF00E7FFFF00DEFFFF00BDE7CE0094CEA50052A5630021BD
      420052F7940018841000BDDEBD005ABDAD0000000000FFF7D600FFF7F70073C6
      630000AD000039B5390031942900DEE7CE000094080000940000E7D6C600EFC6
      AD00DEAD8C00CE845A00F7BD840000000000E7BDA500FFFFF700FFEFDE00CEC6
      BD00D6CEC600CECEC600D6D6D600CECEC60039BD52005ADE8C0029CE5A0021BD
      4A0000AD210052C6630031AD42008CAD7B0000009C0000009C00000094000000
      940000009400B5B5DE004242AD00D6D6EF006363BD004242AD006363B5009494
      CE006363BD006363B50000088C00B5BDBD00CEEFFF0052D6F700D6FFFF008CD6
      E7006BBDD60063B5CE0084CEDE00B5EFF700DEFFFF00F7FFFF00ADDEAD0010BD
      29004AEF7B00319429008CEFFF00CEF7FF0000000000FFE7CE00FFEFEF0073BD
      63005AA54A00FFE7EF00FFF7E70000000000189C180000AD1800E7DECE00F7CE
      B500E7B59400CE845A00E79C630000000000EFBDA500FFFFF700FFEFDE00EFDE
      CE00EFE7D600EFE7DE00EFE7E700FFF7FF00A5DEA50042C65A0063DE8C0031CE
      630021BD4200009C00005ABD6300CEA5A5000808A5000808A5000808A5000808
      A5000808A5003131B5006363C60000009C0010189C00FFFFFF005252B5007373
      C6007373C6003139A50000089400B5BDBD008CE7FF008CEFF700BDFFFF00CEFF
      FF00D6FFFF00BDFFFF008CD6E7006BBDD6006BBDD6008CCEE700BDE7CE0039A5
      420052AD420031B57B00B5F7FF0000000000FFFFFF00FFEFCE00FFEFE70031B5
      390039A54200738C6300FFFFF7004AAD420029D64A0018AD2900D6D6B500F7D6
      BD00E7BD9C00CE946B00DE945200FFFFFF00EFC6A500FFFFEF00FFE7D600A594
      8C00ADA59C00ADA59C00A5A59C00FFF7F700BDB5BD00CED6C6007BC67B0063BD
      63006BBD6B00CEE7CE00FFFFFF00C69C8C000808B5000808B5000808B5000808
      B5000808AD000808AD009494DE001818AD009494D60000089C0000089C000008
      9C00000894000008940000089400B5BDBD0042CEFF00ADF7F7006BC6D60073CE
      DE0094E7EF00B5FFFF00D6FFFF00CEFFFF00B5F7F7009CDEEF00A5D6EF00A5D6
      F700EFFFFF0063D6FF000000000000000000FFFFF700FFEFDE00E7DECE0000CE
      310039E76B00528C4A009C8C84004AB5420042EF7B0039B54200EFDECE00F7D6
      C600E7BDA500D69C7B00DE844200FFF7DE00EFC6A500FFF7EF00FFE7CE00BDB5
      A500C6BDAD00C6BDB500C6BDB500BDBDB500D6D6D600E7E7E700CEC6CE00CEC6
      CE00C6BDC600FFFFFF00FFFFFF00CE9C8C000808C6000808C6000808BD000808
      BD000808BD000808BD002929BD00D6D6F7002121B5000808AD000808A5000808
      9C0000089C0000089C0000089400B5BDBD0031C6EF00C6FFFF00A5FFFF008CDE
      EF006BC6D60052B5CE0063BDCE008CD6E700B5F7FF00CEFFFF00C6FFFF00E7FF
      FF0029CEF700DEFFFF000000000000000000FFFFF700FFEFDE00D6DEBD0063B5
      520010BD210000B5000010940800B5CE9C0094D68C00FFF7F700FFEFE700F7DE
      C600EFC6AD00DEA58400CE732900FFE7CE00F7CEA500FFF7EF00FFE7C600E7D6
      BD00EFDECE00EFDECE00EFDED600EFE7DE00EFEFE700F7EFEF00EFEFEF00EFEF
      EF00EFEFEF00FFFFFF00FFFFFF00CEA594000808CE000808CE000808CE000808
      CE000808CE000808C6000808C600C6C6EF000808B5000808B5000808AD000808
      AD000808A50000089C0000089C00B5BDBD006BDEF700A5FFFF009CF7FF00B5FF
      FF00C6FFFF00BDFFFF009CEFF70073CEDE005AB5CE005AB5CE0094D6E7009CF7
      FF006BDEFF00000000000000000000000000FFF7EF00FFE7CE00F7E7DE00FFEF
      EF00EFE7CE00A5CE8C00CEDEB500FFF7F700FFFFF700FFF7E700FFEFDE00F7DE
      CE00EFC6AD00DEAD8C00CE733100EFCEAD00F7CEAD00FFF7E700FFDEBD00AD9C
      8400F7DECE00BDAD9C00B5A59C00B5ADA500BDADA500B5ADA500FFF7EF00B5AD
      AD00B5ADAD00FFFFFF00FFFFFF00CEA594000808DE000808DE000808DE000808
      DE000808D6000808D6003939D6009494E7000808C6000808BD000808B5000808
      B5000808AD000808A5000808A500B5BDBD008CFFFF0073DEE70052BDD60063C6
      DE007BD6E70094EFF700ADFFFF00C6FFFF00BDFFFF00A5EFF700ADEFF70052D6
      FF00D6F7FF00000000000000000000000000FFEFDE00F7E7D600F7E7D600FFE7
      D600FFEFDE00FFF7EF00FFF7F700FFF7EF00FFF7F700FFF7EF00FFF7E700F7E7
      D600F7D6BD00E7B59400CE7B4200E7A56B00F7CEAD00FFF7E700FFDEBD00AD9C
      8400B59C8C00B5A59400E7CEBD00CEBDB500B5ADA500B5ADA500B5ADA500B5AD
      AD00ADADA500FFF7F700FFFFFF00D6A594000808E7000808E7000808E7000808
      E7000808E7000808DE006363E7004A4ADE001818CE000808C6000808BD000808
      BD000808B5000808AD000808A500B5BDBD00ADFFFF009CFFFF009CFFFF0084EF
      F7006BD6DE0052BDCE004AADCE005ABDD6007BD6E700A5F7F700ADFFFF0063D6
      F700F7FFFF00000000000000000000000000FFE7CE00F7EFE700FFF7F700FFF7
      EF00FFF7E700FFF7E700FFF7EF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFEFEF00EFD6CE00DE944A00F7CEAD00FFF7E700FFD6AD00FFD6
      B500FFDEBD00FFDEC600FFE7CE00FFE7CE00FFE7D600FFE7D600FFEFDE00FFEF
      DE00FFEFDE00FFF7E700FFFFF700D6A594000808EF000808F7000808F7000808
      F7000808EF000808E7005A5AEF007373EF000808D6000808CE000808C6000808
      BD000808B5000808B5000808AD00B5BDC60073E7F7007BEFF70084EFF70094FF
      FF00A5FFFF00B5FFFF00ADFFFF008CE7EF006BCEDE0052B5CE007BEFFF008CDE
      F70000000000000000000000000000000000FFE7C600EFDED600DEA58400F7C6
      9C00FFE7C600FFEFD600FFEFE700FFF7EF00FFFFFF0000000000000000000000
      0000000000000000000000000000DE944A00FFD6B500FFEFDE00FFF7E700FFF7
      E700FFF7E700FFF7E700FFF7EF00FFFFEF00FFFFEF00FFFFF700FFFFF700FFFF
      F700FFFFFF00FFFFF700F7DECE00D6A58C000808EF000808F7000808FF000808
      FF000808F7000808EF000808E7000808DE000808D6000808D6000808CE000808
      C6000808BD000808B5000808AD00BDC6CE00B5E7FF0084D6EF0073CEEF0063D6
      EF005AD6F70042CEEF005ADEEF0084F7FF00ADFFFF00C6FFFF007BEFFF00ADE7
      FF0000000000000000000000000000000000FFEFCE00DEAD9400DEA58400F7CE
      AD00FFE7C600FFEFDE00FFF7EF00FFFFF700000000000000000000000000FFFF
      FF00F7DEC600F7CE9C00EFBD8400F7D6B500FFFFFF00FFD6B500FFCEAD00F7CE
      AD00F7CEAD00F7CEAD00EFC6A500EFC6A500EFC6A500EFBDA500E7BDA500E7BD
      9C00DEB59C00DEB59C00DEAD9400F7EFE7000808E7000808EF000808EF000808
      F7000808EF000808EF000808E7000808DE000808D6000808D6000808CE000808
      C6000808BD000808B5000808AD00C6CED600000000000000000000000000F7FF
      FF00E7F7FF00D6EFFF00ADE7F7007BDEF7004ACEF70029BDE70039C6EF00D6F7
      FF0000000000000000000000000000000000FFFFFF00FFFFEF00FFEFD600FFE7
      CE00FFE7CE00FFDEC600FFDEC600F7DEBD00F7D6B500F7D6AD00EFC6A500EFCE
      AD00F7DEC600FFE7D600FFF7EF000000000000000000D6C6BD008C6B5A00A57B
      6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B
      6B009C7B63009C7B63009C7B6B008463520000000000A58473009C7B6B009C7B
      6B009C7B6B00AD8C7B009C948C006B6B6B006B63630063636300636363006363
      63005A5A5A00635A5A00D6CECE00FFFFFF0000000000A58C7B0000000000FFFF
      FF00EFE7DE00FFFFF70000000000000000000000000000000000000000000000
      000000000000FFFFFF00FFFFFF00AD8C73000000000084AD8C007BA584007BA5
      84007B9C84007B9C84007B9C8400849C8400849C840084948400849484008494
      8400848C8400848C84008C948C007373730000000000D6C6BD00DEC6B500FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      EF00FFFFEF00FFF7E700FFFFEF009C7B6B00AD8C7B00FFFFFF00FFFFEF00FFFF
      F700FFFFF700FFFFFF0094949400EFEFEF00FFFFFF00FFE7DE00EFCEBD00FFFF
      FF00FFFFFF00B5B5B500ADADAD00FFFFFF0000000000A5847B0000000000ADA5
      9C00738C8C00736B6B0084736B009C8C8400B5ADA500BDB5AD00C6BDB500D6CE
      C600FFF7EF00FFF7E700FFF7E7009C846B007BAD8C00EFF7EF00E7EFE700E7EF
      E700E7EFE700E7EFDE00DEE7D600DEE7DE00DEE7DE00DEDED600DEDED600DEDE
      D600D6DED600D6DED600E7EFE700848C8C0000000000D6C6BD00D6C6B500FFFF
      FF00EFD6CE00EFDECE00EFDECE00EFDECE00EFDECE00EFDECE00EFD6C600EFD6
      C600EFD6C600F7DECE00FFFFEF009C7B6300A58C7B00FFFFFF00F7E7DE00EFDE
      CE00EFDECE00FFEFDE00948C8C00E7E7E700FFFFFF00C6734A00A5421000EFE7
      DE00FFFFFF00ADADAD00B5B5B500FFFFFF0000000000AD8C7B0000000000849C
      9C00ADFFFF00A5FFFF009CFFFF0094CED600849C9C00849494008C847B00A59C
      9400EFEFDE00F7F7E700FFFFEF00A584730073AD8400D6E7D60094C6940094BD
      94009CBD9C00ADB5AD00D6DED600EFEFEF00EFEFEF00EFEFEF00EFEFEF00EFEF
      EF00EFEFEF00E7E7E700DEDEDE007B8C840000000000D6C6BD00D6C6B500FFFF
      FF00F7D6D600DEBDAD00DEBDB500DEBDAD00DEBDAD00DEBDAD00DEB5A500DEB5
      A500DEB59C00E7CEBD00FFFFF7009C7B6B00A58C7B00FFFFFF00E7D6C600DEBD
      B500DEBDAD00EFD6C600948C8C00E7EFEF00EFC6AD00A5310000A5310000BD7B
      5200FFFFFF00B5ADAD00B5B5B500FFFFFF0000000000A58C7B00B5ADAD008CBD
      BD0094DEDE008CE7E70094F7F700ADFFFF00C6FFFF00CEFFFF00CEFFFF00BDDE
      E7006B7B7B00C6BDB500FFFFF700A584730073AD8400CEE7CE006BB56B006BAD
      6B007BA57B0094A59400D6DED600E7E7E700E7E7E700DEE7DE00DEE7DE00DEE7
      DE00DEE7DE00D6DEDE00DEDEDE007B8C840000000000E7D6D600E7D6CE000000
      0000008400004AAD4A00E7D6CE00DEC6BD00DEC6B500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00AD8C7B00FFFFFF00E7DED600DEC6
      BD00DEC6BD00EFD6D600A59C9C00AD5A2100B54A0000FFDECE00FFEFDE00BD52
      0800C66318009C949400B5BDBD00FFFFFF00D6D6D600635A5A00525252005A6B
      6B005A636300637B7B00638C8C006BA5A50084BDBD00ADE7E700C6FFFF00C6FF
      FF00A5A5A500FFFFF700FFFFEF00A584730073B58400CEE7C60052B552004AA5
      4A0052A55200639C63006B946B00738C7300738C730084948400CEDECE00CED6
      CE00FFFFFF00EFEFEF00DEE7DE007B94840094CE940084BD840084BD84009CCE
      9C000094180029BD520052AD5200EFD6D600DEBDB500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00AD8C7B00FFFFFF00EFDED600DEC6
      C600DEC6BD00EFDEDE00C68C6B00A53100009C6B4A00BDBDBD00B5BDBD009C73
      4A00B542000094522100C6C6C600FFFFFF0073737B008C736300ADCECE00BDFF
      FF00BDFFFF00ADE7E7008CBDBD006B949400526B6B004A525200A5F7F7008CA5
      A500F7E7DE00FFFFF700FFFFF700A58473006BB58400DEF7DE00B5DEB500B5DE
      B500BDDEBD00BDDEBD00BDD6BD00B5CEB500B5CEB500B5CEB500CEDECE00C6D6
      C600D6D6D600CED6CE00DEE7DE007B9C8400088C180021BD520021BD4A0021BD
      4A0039CE630052EF8C0021B5420042AD3900FFDEEF00DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFD6C600FFFFFF009C7B6B00AD8C7B00FFFFFF00E7DED600DEC6
      C600DEC6C600E7D6D600D69C7B00D68C5200CEC6C600BDB5B500BDB5AD00C6C6
      BD00D6843900B5420000C69C7B00FFFFFF00B5B5B500AD8C8400ADD6D6008CB5
      B5007B94940084ADAD008CC6C6008CCECE007BADAD005A52520084CECE00BDAD
      AD00FFFFFF00FFF7EF00FFFFF700A58473006BBD8400D6EFCE007BBD7B0073B5
      730084B584008CAD8C00A5B5A500CEE7CE00CEE7CE00D6E7D600CEE7CE00C6D6
      C600FFF7FF00EFEFEF00DEE7DE00739C8400299C39004AEF840042DE7B004AE7
      7B004AE7840052EF840052EF8C0029B54A0042A53900F7CECE00D6B5AD00DEB5
      A500DEB59C00EFD6C600FFFFFF00A57B6B00AD948400FFFFFF00E7D6D600D6C6
      BD00DEC6BD00DEC6BD00E7CEBD00EFD6CE00DEC6B500DEBDB500DEBDAD00DEBD
      AD00FFEFE700C65A0000BD4A0000EFDED600B5B5BD0094736B00B5DEDE009CB5
      B5008CA5A5008CA5A5008CA5A500849C9C007B9C9C0094CECE0084B5B500FFF7
      EF00FFFFF700FFF7EF00FFFFF700A58473006BBD8400D6EFCE0084C684007BBD
      7B008CBD8C0094B59400A5BDA500CEE7CE00CEE7CE00CEE7CE00CEE7CE00C6D6
      C600D6DED600CED6CE00DEE7DE00739C8400299C39005AF794004AE7840052EF
      84005AEF8C0052EF8C0063FF9C0031CE520052B55200FFF7F700F7E7DE00F7E7
      DE00EFE7D600F7EFE700FFFFFF009C846B00B5948400FFFFFF00F7F7EF00F7EF
      E700F7EFE700F7EFE700F7EFE700F7E7E700F7E7DE00F7E7DE00EFE7DE00F7DE
      D600FFFFFF00EFD6BD00BD520000D6630000F7F7F7009C8C8400BDDEDE00CEFF
      FF00C6FFFF00BDFFFF00B5FFFF00B5FFFF00B5FFFF00ADFFFF00A5ADAD00FFFF
      FF00FFF7F700FFF7EF00FFFFF700A58473006BC68400E7F7DE00CEEFD600D6EF
      D600D6EFD600CEEFCE00D6EFD600CEE7CE00CEE7CE00DEE7DE00E7E7E700E7E7
      E700E7E7E700DEE7DE00DEEFDE00739C8400189C29005ADE7B0052D6730052D6
      730073E7940063FF9C0031D65A004AB54A00FFFFFF00F7EFE700F7EFE700F7EF
      E700F7E7DE00F7EFE700FFFFFF00A5847300B5948400FFFFFF00FFF7F700F7F7
      F700F7F7F700F7F7F700F7EFEF00F7EFEF00F7EFE700F7EFE700F7EFE700F7E7
      DE00FFFFF700EFEFE700D69C7300D66B000000000000B5ADAD009CADAD0094AD
      AD0094B5B50094BDBD009CCECE009CDEDE009CEFEF009CEFEF00ADADAD00FFFF
      FF00FFFFF700FFFFF70000000000AD8C7B006BC68400CEEFC60052B552004A9C
      4A005A945A00738C7300C6E7C600CEE7CE00CEE7CE00E7EFE700EFEFEF00EFEF
      EF00EFEFEF00E7E7E700DEEFDE0073A584009CD69C0084BD7B0084BD7B009CD6
      9C0010A5210042E76B005AB55200E7D6D600DEBDB500D6BDAD00D6B5AD00DEB5
      A500DEAD9C00EFD6C60000000000A5847300B5948400FFFFFF00E7DEDE00D6C6
      C600DEC6C600DEC6BD00D6BDB500D6BDB500D6B5AD00D6B5A500DEB5A500D6AD
      9C00FFFFFF00DECEBD00DECECE00EFAD630000000000B5948400E7E7E700E7E7
      E700DEDEDE00D6D6D600CECECE00C6CECE00BDBDBD00ADB5B500D6D6CE000000
      000000000000FFFFFF00F7F7EF00946B5A0063C68400E7FFDE00DEFFDE00DEFF
      DE00DEFFDE00DEF7DE00DEFFDE00CEEFCE00CEEFCE00CEDECE00CEDECE00CEDE
      CE00CEDECE00CEDECE00DEEFD60073A5840000000000EFD6D600EFD6D6000000
      0000008C00005AC66300FFFFFF00FFF7F700F7F7EF00F7EFEF00FFF7EF00FFF7
      EF00F7EFE700F7E7E700EFDED60094736300B5948400FFFFFF00FFF7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7EFEF00FFF7EF00FFF7EF00F7EFE700F7E7
      E700EFEFE700B5948400CEC6BD00FFFFFF0000000000B58C7B00000000000000
      00000000000000000000FFFFFF00FFFFFF00FFF7F700F7EFEF00E7DED600AD94
      8C00B5948C00BD9C84008C634A00C6B5AD006BCE8400CEF7C60042AD42003994
      39004A944A005A845A007B947B00C6DEC600C6DEC600EFEFEF00F7F7F700F7F7
      F700FFF7FF00EFEFEF00E7EFDE0073AD840000000000DECEC600DECEC6000000
      00000000000000000000FFFFFF00FFFFFF00FFFFFF0000000000E7DEDE00CEB5
      A500FFEFBD00C69C7300D6C6C60000000000B5948400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700CEBDAD00F7DEBD00EFC6
      8C00AD948C00FFFFFF00FFFFFF00FFFFFF0000000000B5948400000000000000
      0000000000000000000000000000000000000000000000000000E7D6CE00CEB5
      A500FFF7C600AD7B3900C6B5AD000000000063CE8400E7FFDE00C6F7C600C6F7
      C600C6F7C600C6EFC600C6EFC600C6EFC600C6EFC600C6EFC600C6E7C600C6E7
      C600C6E7C600C6E7C600DEF7DE006BAD840000000000DECEC600DECEC6000000
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700C69C
      7B00BD946B00CEBDB5000000000000000000B5948400FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEB5A500C69C6300B594
      8400FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B594840000000000FFFF
      FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFE7E700CEA5
      7300BD8C4A00D6CECE00000000000000000063D68400CEF7CE0031AD3100008C
      0800108C10001884180021842100297B2900297B290031733100427342004A6B
      4A005263520063736300CEE7CE006BB5840000000000DECEC600E7D6CE000000
      0000000000000000000000000000000000000000000000000000EFEFE700946B
      5200D6C6BD00000000000000000000000000BD9C8C00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B59C8C00AD8C7B00F7F7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000B5948400000000000000
      0000000000000000000000000000000000000000000000000000FFF7F7008452
      2900CEC6BD000000000000000000000000006BD68C00F7FFE700ADE7A5009CD6
      94009CD69400A5D69C00A5D69C00A5D6A500A5D6A500ADCEA500ADCEAD00B5CE
      AD00B5C6AD00BDCEB500EFFFE70073BD8C0000000000DECEC600A5846B00B594
      8C00B5948400B5948400B5948400B5948400AD948400AD948400A5847300D6C6
      BD0000000000000000000000000000000000A57B6300BD9C8C00B5948400B594
      8400B5948400B5948400B5948400AD948400AD8C7B00B59C9400FFF7F700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000AD8C7B00B5948400AD8C
      7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B00AD8C7B009C7B6B00EFEF
      EF000000000000000000000000000000000042D673006BDE8C006BD68C006BD6
      940073D6940073D68C0073D68C0073D68C0073D68C0073CE8C0073CE8C0073CE
      8C0073CE8C0073C68C0073C68C0052AD730000000000BD7B5A00A5735A009C6B
      5A009C6B5A009C6B5A009C6B5200946B520094635200946352008C634A00845A
      4A00845A4A00845A4A00845A4A0084523900000000000000000000000000ADD6
      E700E7EFF700FFFFFF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DED6D600D6C6B500FFEF
      E700EFE7DE00EFE7DE00D6CEC600AD9C9400BDADA500C6B5AD00C6B5AD00CEBD
      B500E7DED600FFFFFF00000000000000000000000000949494008C8C8C007B84
      84007B8C8C007B848400848C8C008C8C8C008C8C8C00949C9C00ADADAD00BDC6
      C600D6D6D600E7E7E700EFEFEF00F7F7F70000000000BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFF7EF00FFFFFF00845A4A00FFFFFF00D6D6D600EFE7E700006B
      A500009CCE0021ADD6006BC6E700A5DEEF00EFF7F70000000000000000000000
      00000000000000000000000000000000000000000000CEB5AD00EFE7E7008C29
      1000842910008C423900844A39009C949400FFFFFF00EFEFE700DED6D600D6C6
      BD00AD8C8400FFF7F7000000000000000000A5A5A50084D6E70094EFF70073BD
      EF0094EFFF009CF7FF009CF7FF0094F7FF0094F7FF008CE7F70084D6DE0073BD
      C6006BA5AD0063949C0063949C0073737300C6734A00BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFFF00FFFFFF00FFFFFF00FFEF
      EF00F7E7E700F7E7E700FFF7EF00845A4A00FFFFFF008C8C8C00BDADAD00317B
      9C0031CEEF0021D6EF0008B5E700009CCE0042BDE70073CEE700A5D6E700D6E7
      EF00FFFFFF00000000000000000000000000FFF7F700C6B5A500F7EFE700DEBD
      AD00BD8C7B009C5A420039393100A5A5AD00000000000000000000000000D6C6
      BD00CEBDB500000000000000000000000000949C9C0073B5BD00638C8C0084B5
      DE00ADEFF700ADEFF700ADEFF700ADF7F700ADF7F700A5F7F700A5F7F7009CF7
      F70094F7FF008CEFFF0084EFFF008C949400C6735200C68C7300FFFFFF00E7D6
      CE00A56B520094634200E7D6CE00FFFFFF00945A390084634200735A3900FFEF
      EF00FFEFEF00F7E7E700FFF7F700845A4A00FFFFFF00ADA5A500F7F7F700639C
      BD006BD6EF0073D6E7006BD6E7005AD6EF0031BDDE0018A5CE0021ADD60031C6
      EF0052B5D600BDD6E700FFFFFF0000000000EFEFE700C6ADA500FFF7EF00FFF7
      EF00FFFFFF0000000000000000000818B5003942B500F7F7F700FFFFFF00C6AD
      A500EFE7E7000000000000000000000000008C949400A5E7EF009CCECE008CBD
      E700ADEFF700ADEFF700ADEFF700A5EFEF00A5EFEF009CE7EF0094E7EF0094E7
      EF008CE7EF008CDEEF0084DEE7009C9C9C00CE7B5200BD8C7B00FFFFFF00DEC6
      C600C67B5A00BD5A29009C6B5200FFFFFF009C421800944A21007B310800A59C
      8C00FFF7F700F7EFE700FFF7F7008C5A4A00FFFFFF00ADADAD00F7F7F7004A84
      9C007BD6EF0084DEEF0084DEF70084E7F70084DEEF0084DEEF005AB5C60010DE
      FF0018CEF70029BDEF00219CCE0084BDDE00E7E7DE00C6B5AD00EFD6C600DEC6
      AD00E7C6B500E7CEBD00FFDEC6000010DE000021EF002931AD00FFFFF700B5A5
      8C00000000000000000000000000000000008C8C8C00B5F7FF00B5EFEF0084B5
      DE00ADDEEF00ADE7EF00ADE7EF00A5E7EF00A5E7EF00A5E7EF00A5E7EF00A5EF
      EF00A5EFF700A5F7FF009CE7EF00ADADAD00CE846300C6948400FFFFFF00DECE
      C600CE8C6B00D67B52009C522100D6C6BD00AD634200BD5A3100AD4A21006B42
      2100F7EFE700FFF7EF00FFFFF7008C634A00FFFFFF00ADADAD00F7F7F7004A84
      A50084D6DE0084D6DE0084D6DE0084CED60084DEE7008CE7F7006BB5BD0021E7
      FF0031DEFF0031DEFF0042DEFF00298CBD00D6CEC600DEC6B500EFD6BD00E7C6
      B500E7C6B500E7C6B500F7D6B500847BC6000031F7000029EF0039298400E7D6
      BD00000000000000000000000000000000008C949400CEFFFF00CEFFFF0094BD
      EF00C6EFF700C6F7F700C6F7F700C6F7F700C6F7F700BDF7F700BDF7FF00BDF7
      FF00B5F7F700B5FFFF00A5EFEF00ADADAD00D6846300C6948400FFFFFF00DECE
      C600D6947B00D6845A00C6734A00945A4200BD735A00C6633900C65A31007B31
      0800ADA59400FFFFFF00FFFFFF0094635200FFFFFF00B5B5B500FFFFFF004284
      A50094DEE70094DEE70094DEDE0094D6DE0094DEE7009CEFF7007BBDC60031EF
      FF0042DEFF0031CEF7008CF7FF002994BD00C6B5AD00E7D6C600E7C6B500E7C6
      B500E7C6B500E7C6B500E7C6B500F7EFE7003952E7001852FF000018E7007373
      BD000000000000000000000000000000000094949400DEFFFF00DEFFFF00A5C6
      EF00CEEFF700D6F7F700CEF7F700CEF7F700CEF7F700C6F7F700BDF7F700B5EF
      F700ADEFF700A5EFF70094DEE700A5A5AD00D68C6B00CE9C8C00FFFFFF00E7D6
      CE00DE9C8400B5735A00DE947300BD6B4A00C67B5A00CE6B4200B5633900CE6B
      42006B421800F7EFEF00FFFFFF0094635200FFFFFF00B5B5B50000000000428C
      AD00A5E7EF009CE7E7009CDEE7009CDEDE009CE7E700ADF7FF0084BDC6004AEF
      FF0052E7FF004AD6F700B5FFFF002994BD00BDA59400F7E7D600E7C6AD00E7C6
      AD00E7C6AD00E7C6B500E7C6B500FFF7E700ADADE7000839FF004263C6004239
      4A00BDBDB500000000000000000000000000949C9C007B9CA5005A736B0084A5
      DE00B5E7EF00BDE7EF00C6EFF700CEF7F700CEF7F700CEFFFF00D6FFFF00D6FF
      FF00CEFFFF00CEFFFF00B5F7F700ADADAD00DE947300CEA58C00FFFFFF00EFD6
      CE00E7AD9400B5735A00B5846B00DE947B00CE7B5A00CE734A00945A4200B573
      5200944A1800AD9C8C00FFFFFF009C6B5200D6E7EF009C9C9C0000000000428C
      B500C6EFEF00B5E7DE00B5E7DE00B5E7DE00B5EFEF00C6FFFF009CCEC6006BFF
      FF006BEFFF00A5F7FF00DEFFFF002994BD00B59C8400FFEFDE00DEBDA500E7C6
      AD00E7C6AD00E7C6AD00E7C6AD00E7C6AD00FFF7E7007384DE00C6C6AD003152
      B5000818A500EFE7F70000000000000000009C9C9C00E7F7F700D6E7DE00B5CE
      F700E7F7FF00E7FFFF00D6F7FF00CEF7F700CEF7F700BDEFF700B5E7EF00A5DE
      EF009CDEEF009CE7EF0094DEE700A5A5A500DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00DECEC600D69C8400D68C7300D67B5200AD6B4A00CEB5
      A500BD6B42006B4A2100FFFFFF00A5735A0094C6DE00B5ADA500000000004AAD
      D600D6F7F700CEFFFF00CEFFFF00C6FFF700C6F7F700CEFFFF00A5CEC60073FF
      FF006BEFFF00C6FFFF00E7FFFF002994BD00B5948400FFEFDE00DEBDA500DEBD
      AD00DEBDAD00DEBDA500F7E7DE00FFFFFF00FFFFFF00FFE7CE004A5AA500315A
      E7000039FF001818A500FFFFFF00000000009C9C9C00D6FFFF00DEFFFF009CB5
      EF00CEEFF700D6EFF700CEEFF700CEF7F700CEF7F700CEF7F700CEF7FF00C6F7
      F700C6F7F700BDF7FF00B5F7F700A5A5A500E79C7B00CEA59400FFFFFF00DEA5
      9400EFB59C00C6846B00DECEC600D6BDAD00DE9C8400D6846300B5735A00F7F7
      F700B5735A00A5522900ADAD9C00A5736300CEE7EF00B5ADAD0000000000318C
      AD00D6EFEF00C6EFE700C6E7E700CEEFE700CEF7F700D6FFFF00ADCEC6007BFF
      FF0084EFFF00D6FFFF00EFFFFF003194BD00B5948400F7E7D600DEB59C00DEBD
      A500DEBDA500DEBDA500E7CEB500E7CEBD00EFD6C600CEB5A500B5A59C008C8C
      8C00395ACE000029EF006363BD0000000000A5A5A500E7FFFF00EFFFFF00ADBD
      F700E7F7F700E7F7FF00DEF7FF00DEF7FF00DEF7FF00D6F7FF00CEF7F700C6F7
      F700BDF7F700BDF7FF00B5FFFF009C9C9C00E79C7B00D6AD9C00EFCEBD00D68C
      6B00E7AD9400E7A58C00AD634A00EFDED600C68C6B00D68C7300BD7B6300EFC6
      B500C6735200D6846300000000009C634A00FFFFFF00C6C6C6000000000042AD
      D600EFF7FF00EFFFFF00E7FFF700DEF7EF00D6F7EF00DEFFFF00B5CECE009CEF
      FF00A5EFF700D6FFFF00FFFFFF003194BD00B5948400F7E7CE00DEB59C00E7C6
      AD00E7CEB500EFD6C600F7DECE00F7E7D600FFF7EF00C6AD9C00EFE7E700BDC6
      DE007B849400104AFF000021CE00ADADD600A5ADAD00DEF7FF00EFFFFF00A5BD
      EF00D6E7F700D6EFF700C6EFEF00BDE7EF00BDE7EF00BDE7EF00B5E7EF00ADE7
      EF00ADDEEF00A5DEE7009CCECE009C9C9C00E79C8400D6AD9C00FFF7F700F7DE
      D600F7DED600F7DECE00F7D6CE00FFFFFF00F7E7DE00EFCEC600EFD6C600F7EF
      E700EFCEBD00EFCEBD00F7D6C600A5735A00FFFFFF00C6C6C6000000000039AD
      D60094D6E700B5E7EF00B5E7F700B5E7EF00BDE7E700B5D6DE00BDDEDE00FFFF
      FF00E7FFFF00DEFFFF00000000003194BD00B5947B00FFFFEF00FFF7E700F7E7
      DE00E7D6C600D6C6B500CEB5A500BD9C8C00AD8C84009C6B5A00FFF7F700F7FF
      FF00EFE7D600395AA5000039FF002939C600BDBDBD009CBDC60052635A008CA5
      D600BDDEF700C6E7EF00BDE7EF00B5E7EF00B5E7EF00B5EFF700A5BDC6008CD6
      D6007BF7FF008CADAD00EFE7E700FFFFFF00EFA58400CEAD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AD7B6300FFFFFF00C6C6C60000000000B5DE
      EF009CD6EF009CD6E7009CD6E70084C6D60073A5B5008CC6DE0063B5D6000000
      0000F7FFFF00EFFFFF00000000003194BD00B5948400BD9C8C00BD9C9400C6AD
      A500D6BDB500DECEC600E7DEDE00F7F7EF000000000000000000000000000000
      0000F7F7F700D6D6C600395AB5000010BD00BDBDBD00EFFFFF00FFFFFF00C6D6
      FF00DEF7FF00F7FFFF00EFFFFF00EFFFFF00EFFFFF00E7FFFF00CEDEDE006BA5
      A5008CADAD00E7DEDE00FFFFFF00FFFFFF00EFA58400D6AD9400CEAD9400CEAD
      9400CEAD9400CEA59400CE9C8C00CE9C8C00C6948400C6948400C6948400BD8C
      7300BD8C7300C68C7300BD846B00BD7B6300FFFFFF00CEC6C600000000000000
      0000000000000000000000000000D6D6D600C6C6C600F7FFFF0073C6E700A5D6
      E700DEF7F700DEF7FF00DEF7F7004AA5C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFEFEF00949CB5006B739C00C6C6C600CEDEDE00E7F7EF00ADC6
      EF00CEE7F700E7FFF700E7FFFF00E7FFFF00E7FFFF00EFFFFF00BDDEDE007B84
      8400E7E7E700FFFFFF00FFFFFF00FFFFFF00E7946B00EFA58400E7A58400E79C
      8400E79C7B00E79C7B00DE947B00DE947300DE8C6B00D68C6B00D6846300CE84
      5A00CE7B5200CE734A000000000000000000FFFFFF00ADADAD00B5B5B500ADAD
      AD00ADADAD00ADADAD00B5B5B500A5A5A5000000000000000000FFFFFF008CC6
      DE0094CEE70094C6DE008CC6DE00DEEFF7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7FF00C6C6C600E7E7E700C6C6C600C6C6C600C6C6
      C600BDBDBD00B5B5B500ADADAD00A5A5A500A5A5A5009C9C9C008C8C8C00F7EF
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000FFFFFF00CECECE009C9C9C008C8C8C00B5B5B500F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000A5A5AD00424A4A005A5A6300BDC6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFEF00D6B5B500BD949400FFF7F7000000000000000000F7FFF700E7EF
      E700EFF7EF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000B5B5BD00A5A59C00C6C6C600F7F7F7000000000000000000000000000000
      0000B5B5B500B5B5B500DEE7E700DEDEDE00ADADAD0094949400BDBDBD00E7E7
      E700000000000000000000000000000000000000000000000000000000000000
      00007B7B84007B634A00EFB58400D6A5840042393900C6C6CE00000000000000
      0000737B8400737B8400D6D6D600000000000000000000000000000000000000
      0000CE949400CE8C8C00D6BDBD00FFFFFF00000000000000000063AD5A00007B
      0000217B21000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000316BEF00B5BDBD00A59C9C00BDBDBD000000000000000000F7F7F700BDBD
      BD00E7E7E700F7F7FF00DEDEDE00D6D6DE00DEDEDE00C6C6C600A5A5A500A5A5
      A500F7F7F7000000000000000000000000000000000000000000000000000000
      0000736B6300FFCE9C00FFD6A500FFD69C00E7B58C00636B730000000000DEDE
      DE00AD7B6300A5846B0042424200DEDEDE00000000000000000000000000E7CE
      CE00FFCECE00E7B5B500E7D6D60000000000000000000000000073B5730029C6
      5200318431000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5C6
      FF0042A5FF0084D6FF00C6CEC600ADADAD0000000000DEDEDE00B5B5B500DEDE
      DE00DEDEE700CEC6C600F7E7CE00EFDEBD00CEC6C600D6DEE700D6DEDE00ADAD
      AD0094949400BDBDBD0000000000000000000000000000000000000000007373
      7300B5A59C00F7DEB500FFEFD600FFE7C600FFE7AD0063636300848C8C00424A
      5A00FFDEA500FFD69C00CEAD840073737B000000000000000000FFF7F700CEA5
      A500FFD6D600E7B5B500EFDEDE000000000018941800319429000873000031C6
      5A0000630000318C3100217B1800EFF7EF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B5BDFF00296B
      FF006BD6FF004AB5FF00427BE700ADADAD00DEDEDE00CECECE00FFFFFF00EFEF
      EF00EFE7DE00FFFFE700FFEFD600FFEFC600FFE7AD00DEBD9400CEBDB500DEDE
      E700ADB5B500949494007B7B7B00C6C6C600EFEFEF0052525200313131008484
      8400D6DEDE00ADA5AD00BDA59C00DEC6B500736B63004A4A5200B5BDC600BDC6
      D600FFFFF700FFFFF700E7D6AD007B73730000000000FFF7F700DEB5B500F7CE
      CE00FFD6D600FFDEDE00F7BDBD00FFE7F7000084000039DE6B0039D663004AE7
      7B0031CE5A0029CE5A00007B0000E7EFE7000000000000000000000000000000
      0000E7E7EF00E7E7EF00F7F7F70000000000C6BDBD005A6B8C00429CE7006BD6
      FF002973FF009CB5FF000000000000000000EFEFEF00EFEFEF00D6D6D600C6C6
      C600FFF7EF00FFF7E700FFEFD600FFEFC600FFDEB500EFC69400DEA56B00C68C
      6300CEC6BD00C6C6C600B5B5BD00737B84005A5A5A00949494009C9C9C005A5A
      5A0000000000FFFFFF0084848400635A5A00525A6B0042424A00BD946300D6AD
      7300C6ADAD00CEBDAD008C7B7300C6CECE00FFFFFF00E7BDBD00F7C6C600FFD6
      D600FFD6D600FFE7E700FFE7E700FFFFFF005AAD520073B56300218C100039D6
      6300006B00006BA5630063AD6300F7FFF7000000000000000000F7F7F700BDBD
      C600ADA59400ADA59400ADADAD00B5BDC600A5A59C00CEC6BD00A5C6CE00429C
      EF00A5B5FF00000000000000000000000000FFFFFF00EFEFEF00E7E7E700D6D6
      D600D6D6CE00DEDECE00EFDEC600FFEFC600FFDEAD00EFC68C00DE9C6B00C684
      5200CECECE00CED6DE00B59C8C008C5A4A0042424200BDBDBD00ADADAD00BDBD
      BD009C9C9C006B6B6B0039393900394A5A005A524A00AD631000FFB56B00E794
      2900737B94007B737300CECECE0000000000EFC6C600F7CECE00FFDEDE00FFD6
      D600FFD6D600FFD6D600FFCECE00FFD6D600FFDEE700FFE7FF0073AD630039DE
      6B00298C2100FFCEDE00FFF7FF000000000000000000EFEFEF009C9CA500B5A5
      8400EFCE9C00EFCE9C00D6BD8C00C6AD8C005A636B00C6C6C600D6D6CE00526B
      A50000000000000000000000000000000000000000000000000000000000FFFF
      FF00DEDEDE00C6C6C600C6C6C600CECEC600E7CEAD00DEBD9C00CEC6C600CEDE
      F700AD7B4A00AD4A08008C210000BD7B6B0042424200A5A5A500DEDEDE00CED6
      CE009C9C9400848C8C00738494006B4A2900D67B2100FFD69400FFDEAD00FFE7
      BD00A5A5A500000000000000000000000000EFBDBD00FFE7E700FFDEDE00FFDE
      DE00FFDEDE00FFDEDE00FFDEDE00FFD6D600FFD6D600FFDEE7005AB55200008C
      000021941800EFBDC600CEB5B50000000000FFFFFF00A5A5AD00C6AD8C00F7D6
      9400F7C69400D6A57B00CEAD8400EFCE9C00DEBD8C00525A6B0094949400BDB5
      B500000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7F7F700CEDEE700BDBDBD00C6AD9400BD945A00BD5A
      0000B54A00009C310000BD735A00000000005252520042424200848C94009C9C
      A500A5ADAD00A5A5A500B57B4200F7A54A00FFDEA500FFCE9400FFC68C00FFCE
      9C00F7C67B00000000000000000000000000FFDEDE00FFDEDE00FFDEDE00FFE7
      E700CEA5A500CEA5A500CE9C9C00CE9C9C00CE9C9C00D6B5B500FFEFF700FFEF
      FF00FFF7FF00FFD6D600BD848400F7F7F700E7E7E700A59C8400FFDE9C00FFDE
      AD0000520000006300006B7B3900DEB58C00EFCE9C00C6AD9400BDC6CE000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFE7CE00DE7B0800D66B0000CE6B0000C66B
      0000A5420000B56B5200FFF7F70000000000E7E7E700BDC6C6009C6B4A00B5AD
      A5007B848400945A2900EF943900F7B56B00DE8C3900FFBD7300FFC68C00FFCE
      8C00E7943100F7E7D6000000000000000000FFF7F700FFEFEF00FFE7E700FFE7
      E700EFCECE00EFCECE00EFC6C600EFC6C600EFC6C600EFBDBD00F7C6C600FFC6
      C600F7C6C600FFE7E700BD848400F7F7F700D6D6D600DEC69400FFE7B500B5BD
      7B00007B100021B54A00426B21006B7B3900CEAD8C00CEB58400B5B5B500FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F7CEA500DE8C1800DE840000D6840000CE7B0000D67B
      0000AD634200F7F7F70000000000000000000000000000000000D6845200EFC6
      A500F7F7F700EFD6CE00E7B58400E7C6A500BD7B3100FFBD7B00FFCE9400DE8C
      3900FFCE9400E7AD6B00FFFFFF0000000000FFFFFF00FFFFFF00FFEFEF00FFE7
      E700EFC6C600EFC6C600EFC6C600EFBDBD00EFBDBD00E7BDBD00F7C6C600FFCE
      CE00F7C6C600FFD6D600C68C8C00F7F7F700CECECE00F7DEAD00FFF7CE002173
      100039C65A0042D66B0021B54A0000630000D6AD8400E7CE9C00B5ADA500EFEF
      F700000000000000000000000000000000000000000000000000000000000000
      000000000000F7C68C00E78C2100DE942100DE8C1000D6840000DE8C0000B552
      0000FFFFFF000000000000000000000000000000000000000000C6845200C67B
      52000000000000000000FFFFFF0000000000D68C4200FFC67B00FFBD6B00D694
      4A00D67B1000DE842900FFFFF70000000000FFFFFF00FFFFFF00FFF7F700FFF7
      F700D6ADAD00D6ADAD00D6ADAD00D6ADAD00D6A5A500D6A5A500EFBDBD00FFCE
      CE00F7C6C600FFD6D600C68C8C00F7F7F700CECECE00F7E7B500FFFFE7001873
      100021A5390039C65A00007B100000520000FFCE9C00E7CE9C00B5AD9C00EFEF
      F70000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7B55A00E7942100E7AD4200E79C3100DE942100DE940800BD5A0000A552
      3100000000000000000000000000000000000000000000000000E7CEBD00D663
      0000EFEFF700F7FFFF00E7CEBD00C6731800FFB55A00FFB56300DE843100F7EF
      DE0000000000000000000000000000000000FFD6D600FFF7F70000000000FFF7
      F700FFF7F700FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6D600FFD6D600FFCE
      CE00FFCECE00DEA5A500EFDEDE0000000000EFEFEF00ADAD9C00FFFFE700FFFF
      FF001873180021731800B5BD8400FFE7B500FFDEA500B5A58C00C6CECE000000
      000000000000000000000000000000000000000000000000000000000000FFEF
      D600EFAD5200EFBD6B00EFB55200E7AD4200DE941800C6630000B5633900F7EF
      EF00000000000000000000000000000000000000000000000000FFFFFF00C66B
      2900C6630800C6630800D66B0800FFAD4A00FFC66B00E78C3100DEAD8C000000
      000000000000000000000000000000000000FFFFFF00FFD6D600FFE7E700FFFF
      FF00FFF7F700FFF7F700FFEFEF00FFE7E700FFDEDE00FFD6D600FFD6D600FFD6
      D600DEADAD00EFD6D6000000000000000000FFFFFF00C6BDBD00C6C6B500FFFF
      EF00FFFFF700FFFFDE00FFEFC600FFE7AD00BDAD8C00A5ADAD00FFFFFF000000
      0000000000000000000000000000000000000000000000000000FFEFD600FFCE
      7B00F7BD6300E79C3100D67B1000D66B0800CE7B3100D69C7B00F7EFEF000000
      000000000000000000000000000000000000000000000000000000000000EFDE
      DE00E7841000FFA51800FFB53900FFA54A00D6732100CE946300000000000000
      00000000000000000000000000000000000000000000FFFFFF00FFE7E700FFD6
      D600FFEFEF00FFF7F700FFF7F700FFEFEF00FFEFEF00FFD6D600F7C6C600E7AD
      AD00F7E7E70000000000000000000000000000000000F7F7FF00C6C6C600ADAD
      A500F7E7C600F7DEB500D6C6A5009C948400ADADAD00F7F7F700000000000000
      0000000000000000000000000000000000000000000000000000FFE7C600F79C
      2100E79C5200E7B58400EFD6BD00FFEFE700FFF7F70000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000DEB5B500D6AD8C00D6AD8C00DEB59C00E7C6BD0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFE7E700F7DEDE00F7DEDE00F7DEDE00F7DEDE00F7DEDE00F7E7E700F7EF
      EF00000000000000000000000000000000000000000000000000FFFFFF00EFEF
      EF00CECECE00CECECE00D6D6D600E7E7E700FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000F7D6BD00CE6B390000000000000000000000
      00000000000000000000000000000000000000000000845A4A00A58473009C7B
      6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B6B009C7B
      63009C7B63009C7363009C7B6B0084634A000000000000000000000000000000
      00000000000000000000C6DEBD00007300006BAD6B00EFF7EF00000000000000
      00000000000000000000000000000000000000000000FFF7E700FFE7BD00FFF7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000EFC6AD00CE6B1000CE73420000000000000000000000
      000000000000000000000000000000000000F7F7F700B5948400FFFFFF00FFFF
      EF00FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFFF700FFFF
      EF00FFFFEF00FFF7E700FFFFEF009C736300000000000000000000000000D6EF
      D6008CC684006BB56B004AA552000884100031C65200218C290094C69400FFFF
      FF000000000000000000000000000000000000000000FFF7E700FFE7BD00FFF7
      E700FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EFC6A500DE7B2900DE8C3100CE6B420000000000000000000000
      000000000000000000000000000000000000F7F7F700AD948400FFFFFF00F7E7
      D600EFDECE00EFDECE00EFDECE00EFDECE00EFDECE00EFD6CE00EFD6C600EFD6
      C600EFD6C600F7E7D600FFFFEF009473630000000000FFFFFF0084C67B0021A5
      210008AD180021BD390029C64A0031CE520063FF9C0052E77B0029AD42004294
      4200DEEFDE00000000000000000000000000FFFFF700F7B55200EFA55200EF9C
      3900EFBD7B00F7DEB500FFEFDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7C6A500D6732100EFA54A00CE843100CE7B5A0000000000000000000000
      000000000000000000000000000000000000F7F7F700AD948400FFFFFF00FFE7
      E700DEBDB500DEBDB500DEBDAD00DEBDAD00DEBDAD00DEBDAD00DEB5A500DEB5
      9C00D6B59C00EFD6C600FFFFF700947363000000000073CE7300009C080018BD
      310031D64A0039DE5A0042E76B0052EF7B0052F784006BFFA50052EF8400006B
      0000FFFFF700DEEFDE000000000000000000FFF7E700EFAD4A00FFD6AD00FFD6
      A500F7B57300EFA54A00EFAD6300E7B58400F7DEBD0000000000000000000000
      00000000000000000000FFFFFF00F7D6C600000000000000000000000000F7C6
      A500D6731000F7AD6300EF9C5200BD843900AD420000A54A0000A5420000A539
      00009C3900009C3100009C3100009C390000FFFFFF00C6A59C00FFFFFF005AB5
      6300008C0000C6D6BD00EFCECE00DEC6B500DEBDB500DEBDB500DEBDAD00DEBD
      A500DEB5A500EFDECE00FFFFF7009C7B6300BDEFBD000094000018B5290021C6
      390029CE420029C6420029C6420039CE52005AF784004AE77300188C2100EFF7
      EF006BA56B00005A0000ADCEA50000000000F7DEBD00EFAD5A00FFCE9C00FFC6
      8C00FFC68C00FFC68C00FFBD7300F7AD5A00EFA55200DE9C5A00F7DECE000000
      0000000000000000000000000000CE844A000000000000000000F7BD9400DE8C
      3100F7B57300EFA55A00EF9C5200D68C4200CE8C4200CE843900CE843100CE7B
      2100C6731800C66B1000C66B0000AD5218008CC694007BAD73009CCE9C0031A5
      390031C66300089C1800ADCE9C00F7CED600DEBDB500DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFDECE00FFFFFF009C7B630031B53100009C000018B5210021C6
      390010A5180052B54A0073BD7300399C390008A5210029A53100C6DEBD0094BD
      8C000084000008A51800298C2900F7F7F700EFBD7B00FFC68400FFCE9400FFC6
      8C00FFC68400FFC68400FFC68400FFC68400FFC67B00F7A54A00E7AD6B00FFFF
      FF00000000000000000000000000BD73390000000000F7BD8C00EF9C4A00F7BD
      7B00EFAD6B00EFA56300EF9C5200EF9C4A00E7944200E7943900E78C3100DE84
      2900DE7B2100DE7B1800D6730800AD52180021BD4A0021BD4A0021BD4A0029BD
      52004AEF840042D67300189C2900A5C69400F7CECE00DEBDB500DEBDAD00DEBD
      AD00DEB5A500EFDECE00FFFFFF009C7B630094DE940052BD520018AD18000094
      000084CE84000000000000000000C6EFC60000840000C6E7BD00BDDEBD00007B
      000021CE390021C63100007B0000C6DEC600EF9C3900FFD6A500FFC68C00FFC6
      8400FFC68400FFBD7300E78C3900DE8C3100DE8C3900D68C3100E7C6A5000000
      0000000000000000000000000000DE8C4A00F7BD9400F7AD5A00FFCE9C00F7B5
      7B00EFAD6B00EFAD6300EFA55A00E79C5200E7944A00E7944200DE8C3900DE84
      3100D67B2100D67B1800DE7B1000AD52100042E7840042DE7B0042E77B004AE7
      84004AEF840052F78C004AD67B0018A529009CC68C00E7C6BD00DEB5AD00DEB5
      A500D6B59C00EFDECE00FFFFFF009C7B6B0052A54A0084B57B00C6DEC600D6F7
      D600000000000000000000000000C6EFC600ADDEAD0000000000FFFFFF001884
      180029CE420029CE42000094100094C68C00E79C4200FFCE9C00FFC68C00FFC6
      8C00FFBD7B00FFBD7B00DE944200EFD6BD00FFF7EF00FFFFF700000000000000
      00000000000000000000FFF7F700E7944A00F7BD8C00F7AD6B00FFE7CE00F7C6
      8C00F7B56B00EFAD6B00EFA56300EFA55A00E79C4A00E7944200E78C3900DE8C
      3100DE842900D67B2100DE841800AD52100063EF94004AE77B0052EF840052EF
      8C0052EF84005AF7940052F78C0021B53100ADD6AD00FFEFEF00F7E7DE00F7E7
      DE00F7E7D600F7EFE700FFFFFF009C7B63000084080039CE5A00008C10000073
      0000429C42007BBD7B00DEEFDE00000000000000000000000000000000003994
      310029CE4A0031D6520010A5210084BD8400F7B57300FFCE9400EFAD6300F7B5
      6B00FFC69400FFBD7B00F7AD5A00DEA563000000000000000000000000000000
      00000000000000000000F7E7DE00EF94390000000000F7BD8400EFA55A00FFE7
      C600F7BD8400F7AD6B00EFAD6300EFA55A00E79C5A00E79C5200E7944A00DE8C
      3900DE8C3100DE842900DE842100B55210005AD67B0052D6730052D6730063D6
      84006BF7A50052F78C0029BD3900B5D6A500FFF7FF00F7EFEF00F7EFE700F7EF
      E700F7E7DE00FFF7EF00FFFFFF009C7B6B00088C10007BFFBD0073FFAD0063FF
      9C00088410004A9C4A00CEE7CE0000000000BDEFBD00FFFFFF00E7F7E700108C
      100042E76B0039DE5A00089C1000A5D6A500FFD6A500FFBD7300E7A55A00CE7B
      1800FFDEAD00FFBD7300FFBD7300E78C3100E7C6A50000000000000000000000
      00000000000000000000E7C6B500EF84180000000000FFFFFF00F7BD8C00EF9C
      4A00FFEFCE00F7BD8400EFAD6300EFA55A00F7CEA500F7CE9C00F7C68C00F7BD
      8400EFB57300EFB56B00EFA54A00B55A18008CCE8C007BB56B009CD69C0031A5
      390052EF840018B52900ADC69C00EFCECE00D6BDB500D6BDAD00D6B5A500DEB5
      A500D6B59C00EFDECE00FFFFFF009C7B6B00089410006BFFAD0052F784005AFF
      8C0008730000EFF7EF0000000000000000005AC65A0039AD39003194290029C6
      4A004AE76B0042DE6300089C1000DEEFDE00FFEFCE00EFA55200EFCEA500EFCE
      AD00EF9C4200FFDEAD00FFB56300FFBD6B00D67B2900EFD6BD00000000000000
      000000000000FFFFFF00D68C5200FF8C1000000000000000000000000000F7BD
      9400E78C3100FFE7CE00F7C69400F7B56B00BD5A1000C65A0800C6520000BD52
      0000BD4A0000BD4A0000BD4A0000AD420000FFFFFF00CEADA500FFFFFF005ABD
      6300009C0000D6EFD600FFFFFF00F7F7EF00F7EFEF00F7EFEF00F7F7EF00FFF7
      EF00F7E7E700F7EFE700E7DED600946B5A0010A5180063FF9C004AEF730052EF
      7B0018AD290084B57B000000000000000000BDE7BD0000A5000039D65A0052EF
      7B0052EF7B0029C6420063B55A0000000000DE8C3100DEAD6B00000000000000
      0000DE944A00F7B57300FFCE9400FFAD5A00FFB56300DE7B2100D6945A00EFCE
      B500E7C6A500C66B2100EF7B0800FF8C08000000000000000000000000000000
      0000F7BD9400E78C3900FFE7CE00FFBD7B00C663390000000000000000000000
      000000000000000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6CEC600D6BD
      A500FFE7AD00BD947300DED6CE00FFFFFF00009400000094000031CE4A0042E7
      6B0039DE5A00089410004AA54A006BBD6B00CEE7CE0031BD390052F784005AF7
      8C005AF7840010AD290021942100ADDEAD00FFF7EF0000000000000000000000
      0000FFF7F700D6843900FFBD7B00FFC68400FFAD5200FFAD5200FF9C3900DE7B
      1000E77B1000FF941800FF9C1800D66300000000000000000000000000000000
      000000000000F7BD9400E79C5200FFCE8C00CE6B390000000000000000000000
      000000000000000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00DECECE00BD94
      6B00BD947300D6CEC600FFFFFF00FFFFFF0063C663009CD69C0018AD210039D6
      5A0031D6520031CE4A0010AD2100008C000073B573006BCE6B0042E76B0073FF
      AD0042E7730029C6420031AD39008CCE8C000000000000000000000000000000
      000000000000F7E7CE00D68C4200F7B56B00FFCE8C00FFAD5A00FFA54200FF9C
      3100FF9C2900FF941800EF7B0000D68C63000000000000000000000000000000
      00000000000000000000F7C69C00E78C3900CE73390000000000000000000000
      000000000000000000000000000000000000F7F7F700BD9C8C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00D6C6BD00946B
      4A00DED6CE00FFFFFF00FFFFFF00FFFFFF0000000000000000007BCE730000A5
      080031CE4A0029C6420021C6390018BD290031943100A5D69C0021C6390018C6
      310039BD39009CD69400EFFFEF00000000000000000000000000000000000000
      00000000000000000000F7E7DE00DE945A00DE842900FFB56B00FFC67300FFBD
      5A00FF9C3100D6630000D68C5200F7EFEF000000000000000000000000000000
      0000000000000000000000000000FFD6BD00CE73390000000000000000000000
      000000000000000000000000000000000000FFFFFF00CEB5AD00DECEC600DECE
      C600DECEC600DECEC600DECEC600DECEC600D6C6C600DECEC600CEBDB500EFEF
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000009CDE
      9C00009C000010AD180010B5210010B51800109410009CD69C0039B5390094DE
      9400FFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FFFFFF00F7D6C600D6946300CE733100CE73
      3100CE8C5A00EFD6C600FFFFFF00000000000000000000000000000000000000
      0000F7F7F70073737B00B58C6B00EFB58C00AD846B006B737B00FFFFFF000000
      0000F7F7F700848C94007B848400C6C6CE000000000000000000000000000000
      0000000000000000000000000000CE6B3100F7D6C60000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00DEDE
      DE00B5B5B500C6C6C600FFFFFF0000000000737373007B7B7B006B6B6B009494
      9400DEDEDE00FFFFFF0000000000000000000000000000000000000000000000
      0000FFFFFF00EFEFEF009C9C9C00A5A5A500EFEFEF00FFFFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00005A5A630094847300FFDEA500FFD6A500FFD69C00847B6B00DEDEE700F7F7
      F700636B7300AD846300C6947B00635A5A000000000000000000000000000000
      0000000000000000000000000000CE734200BD631000EFC6AD00000000000000
      00000000000000000000000000000000000000000000EFEFEF00C6C6C600BDBD
      BD00DEDEDE00F7F7F700EFEFEF00000000007B7B7B00737373007B7B7B007373
      730073737300A5A5A500E7E7E700000000000000000000000000EFEFEF00D6D6
      D600BDBDBD00B5B5B500E7E7E7007B7B7B006B6B6B008C8C8C00DEDEDE00EFEF
      EF00000000000000000000000000000000000000000000000000FFFFFF006B6B
      6B006B737300B5A59400FFEFCE00FFE7CE00FFE7BD00B5A584007B7B7B00636B
      7300A58C7300FFE7A500FFD69400DEB58C000000000000000000000000000000
      0000000000000000000000000000CE734200BD7B2900C66B2100EFC6A5000000
      000000000000000000000000000000000000DEDEDE00BDBDBD00CECECE00E7E7
      E700E7E7E700E7E7E700F7F7F70000000000D6D6D600A5A5A500737373007B7B
      7B00737373006B6B6B007B7B7B00CECECE00CECECE00BDBDBD00F7F7F7000000
      000000000000FFFFFF00DEDEDE00949494007B7B7B006B6B6B006B6B6B007B7B
      7B007B7B7B0084848400B5B5B500F7F7F70000000000000000005A5A5A006B6B
      6B00A5A5A500A5A59C00EFD6CE0000000000FFFFDE008C8C7B00212129007B84
      8C00DEB59C00FFF7D600FFE7C600FFE7B5000000000000000000000000000000
      0000000000000000000000000000C66B4200CE843100C6843900BD631800F7CE
      AD0000000000000000000000000000000000BDBDBD00D6D6D600DEDEDE00D6D6
      D600EFEFEF0000000000DEDEDE00A5A5A500BDBDBD00DEDEDE00D6D6D6009494
      940073737300737373006B6B6B0094949400CECECE00FFFFFF00000000000000
      0000F7F7F700DEDEDE00A5A5A5007B7B7B007B7B7B0084848400737373006363
      630063636300737373007373730073737300EFEFEF005A5A5A00393939008C8C
      8C00D6D6D600D6DEDE00A5949400CEB5AD00BDAD9C003931390094949400C6C6
      C600AD9C9C00FFF7E700FFFFFF00F7DEBD00A5310000A5290000A5310000A531
      0000A5390000A5390000A5390000A5420000EF9C4A00EF9C4A00C6945200B55A
      0800FFCEA500000000000000000000000000B5B5B500D6D6D600D6D6D600FFFF
      FF00E7E7E7009494940084848400948C94009C9C9C00A5A5A500C6C6C600EFE7
      EF00C6C6C60084848400737373008C8C8C00D6D6D60000000000EFEFEF00CECE
      CE00BDBDBD00C6C6C600DEDEDE00A5A5A5008C8C8C00848484007B7B7B008484
      8400848484006B6B6B00848484007373730063636300ADADAD00949494004A4A
      4A00DEDEDE0000000000E7EFEF00635A5A00736B7300424A4A0084848400E7E7
      E700E7E7EF00AD949400DEC6BD008C7B7300B5521800CE730800C66B1000C673
      1800CE7B2100CE842900CE843900CE844200D68C4200EFA55200EFA55A00CE9C
      6300C6732900F7C69C000000000000000000B5B5B500EFEFEF00F7F7F7009C9C
      9C006B636B006B6B6B006B736B008C8C8C00529C5A0029A531009CBD9C00F7EF
      F700F7F7F700EFEFEF00ADADAD008C8C8C00D6D6D600EFEFEF00C6C6C600DEDE
      DE00EFEFEF00EFEFEF00DEDEDE00BDBDBD00ADADAD00ADADAD00949494007B7B
      7B00737373007B7B7B008C8C8C007B7B7B00424242009C9C9C00ADADAD00D6D6
      D6006B6B6B008484840042424200394242005252520042424200CECECE00E7FF
      E700DEF7D600C6BDC60063636300DEDEDE00B5521800E7842100D6731000DE7B
      2100DE842900E78C3100E7943900E7944200EF9C4A00EFA55200F7AD6300F7AD
      6B00C69C6300C67B3900F7C6940000000000DEDEDE00CECECE00D6D6D600B5B5
      B5008484840052845A0029A5420010C6310031E7630029CE520010AD2100BDD6
      BD00E7DEE700CECECE00BDBDBD00D6D6D600D6D6D600EFEFEF00E7E7E700DEDE
      DE00D6D6D600D6D6D600EFEFEF00EFEFEF00EFEFEF00E7E7E700F7E7F700F7E7
      F700DECEDE00A5BDA500ADA5AD007B7B7B0042424200B5B5B500DEDEDE00CECE
      CE00C6C6C6009C9C9C008C8C8C007B737B005A5A5A005A525A00736B7300B5BD
      AD00189C3100A5B59C00FFFFFF0000000000AD521800E7943900D6731000D67B
      2100DE843100DE8C3900E7944200E7944A00E79C5200EFA55A00EFAD6300F7B5
      6B00F7B57B00CE9C7300C6844200F7C6940000000000FFFFFF00E7E7E700D6CE
      D600ADB5AD0029BD4A0031E76B004AEF840052EF8C0052D6730021B5390084AD
      8400638C630094AD9400FFFFFF0000000000D6D6D600EFEFEF00DEDEDE00D6D6
      D600E7E7E700FFFFFF0000000000F7F7F700F7EFF7000000000073AD7B00428C
      42004A8C52006BCE84009CCEA500847B8400636363003939390094949400ADAD
      AD00A5A5A500A5A5A500ADADAD00BDBDBD00ADBDAD00ADBDAD00ADB5A5009CB5
      940039C66B0031B54A00CEE7C60000000000B5521800E79C4A00D67B1800DE84
      2900DE8C3100E78C3900E7944200E79C4A00EFA55A00EFA56300EFAD6B00F7B5
      7300FFBD8400EFC68C00CE8C4A00F7BD8C00000000000000000000000000FFFF
      FF00D6DED6004ACE6B0042E773004AE77B0052EF84005ACE6B0000A5180039C6
      5A0031C64A0018AD2100A5E7AD0000000000D6D6D600BDBDBD00DEDEDE00E7E7
      E7009C9CA50084848400BDBDBD00DEDEDE00FFF7FF005AAD5A00007B0000087B
      00002173000008520000ADADAD00DEDEDE00F7F7F700BDBDBD00C6C6C600B5B5
      B500A5A5A5008C8C8C00736B7300739C730021B5420021AD4A0021AD420029AD
      4A0039D66B0042DE7B0029AD4200CEEFCE00B5521800EFA55A00DE843100DE8C
      3100DE944200E7944A00E79C5200EFA55A00EFAD6300EFAD6B00F7AD6B00F7B5
      7B00FFCE9400EF9C5200F7BD8C00000000000000000000000000000000000000
      0000EFFFEF005AD6730042E77B004AE7840052EF840063EF8C0052F78C005AF7
      8C0031D6520010B52100CEEFD60000000000F7F7F700C6C6C600D6D6D600A5AD
      AD008C7B7300A59C8C0073736B00AD94AD0052A55A00008C00004AC65A0010AD
      210000940000108C0000297B2100F7FFF7000000000000000000000000000000
      0000FFFFFF00F7F7F700DED6DE0084AD840042DE730039DE730042DE7B004AE7
      7B004AE77B004AEF84004ADE7B0039AD4A00B5521800F7BD7300EFB57300EFB5
      7B00F7BD8400F7C68C00F7C69400FFCE9C00F7CE9C00F7B57B00F7B57300FFCE
      9C00E7944200F7C6940000000000000000000000000000000000EFFFF700ADEF
      BD0052CE6B0039CE5A004AEF840052EF840052EF84005AF78C0063FF94004ADE
      630008B52100A5E7AD000000000000000000000000000000000000000000ADAD
      AD00EFD6C600FFEFD600FFF7EF007BAD630018B531006BC67300FFFFFF000000
      0000B5EFC60008AD1800107B0000398431000000000000000000000000000000
      00000000000000000000000000008CC6940052DE840031DE6B0042DE730042E7
      7B004AE77B0052EF84005AF78C0042E78400A5390000BD4A0000BD4A0000BD4A
      0000BD520000C6520000C65A0800C65A0800F7CE9C00F7B57300FFCE9400E784
      2900F7C69C0000000000000000000000000000000000FFFFFF008CEFA50021D6
      520052F78C005AF78C0052EF840052EF8C005AF78C0063FF940063EF840018BD
      31006BD67B00F7FFF70000000000000000000000000000000000F7F7F7009C9C
      9400FFFFEF00FFEFD600FFFFFF00319C290052CE6B00ADC6A50010AD21009CDE
      9C0000000000B5EFC60010840000107300000000000000000000000000000000
      000000000000000000000000000084BD84006BE79C004AE784005AEF940063F7
      94006BF79C0052F78C005AFF94004AD663000000000000000000000000000000
      0000000000000000000000000000BD633100FFCE9400FFBD8400E78C3900F7C6
      9C00000000000000000000000000000000000000000000000000EFFFEF0073DE
      8C004AEF7B005AF78C005AF78C005AF78C005AFF940073FF9C0039D6520042CE
      5A00D6F7DE000000000000000000000000000000000000000000BDBDBD00D6CE
      C600FFFFEF00FFEFE700FFFFFF0052A5420063DE8C0010B5310010BD390000A5
      10009CDEA5000000000018A51800217B10000000000000000000000000000000
      00000000000000000000000000009CCE9C004ACE6B005AD67B0063DE84005AD6
      73008CEFAD004AFF8C004AD66300E7EFDE000000000000000000000000000000
      0000000000000000000000000000C66B3100FFCE9400E7944A00F7C69C000000
      000000000000000000000000000000000000000000000000000000000000E7F7
      E70063DE840052F7840063FF94005AFF940073FFA50063E77B0031CE4A00A5E7
      B500000000000000000000000000000000000000000000000000ADADAD00FFFF
      FF00FFF7EF00FFF7EF00FFF7F700C6D6B50029B54A0052DE840029C65A0021BD
      4A0000AD18009CD69C0042AD520073B56B000000000000000000000000000000
      0000000000000000000000000000F7FFF700DEEFD600DEEFD600DEEFDE00B5CE
      A5006BEF9C0042D66300D6EFCE00000000000000000000000000000000000000
      0000000000000000000000000000CE733900E7943900F7C6A500000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000D6F7DE0052DE730063FF94005AFF9C0094F7A50031DE5A006BD684000000
      00000000000000000000000000000000000000000000E7E7E700DEDEDE00DEDE
      DE00DEDEDE00EFEFEF00FFFFFF0000000000BDCEB5004AAD520042D6730031CE
      630018BD4200009C0800A5D6A500000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E7EF
      DE0039C65200E7F7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000CE733100FFDEBD0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D6FFDE0042DE6B00ADFFC6004AEF730042CE6300F7FFF7000000
      00000000000000000000000000000000000000000000FFFFFF00F7F7F700F7F7
      F700F7F7F700EFEFEF00DEE7E700DEDEDE00EFE7EF00F7FFF7009CD6A5008CCE
      8C008CCE8C00ADDEAD000000000000000000000000000000000000000000F7FF
      FF00FFF7FF000000000000000000FFFFFF00F7E7E700F7EFE70000000000FFFF
      FF00AD522100BD734A00F7E7DE00000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFE700F7CE9C00FFE7C600000000000000000000000000FFFFFF00DEDE
      DE00C6C6C600DEDEDE00FFFFFF0000000000636363007B7B7B00737373009C9C
      9C00DEDEDE000000000000000000000000000000000000000000000000000000
      00000000000094CE940031CE630042DE7B0042DE730042DE7B0010BD420084C6
      8C000000000000000000000000000000000000000000000000000000000052B5
      D6004ABDDE00B5D6E700E7C6B500CE845200A5310000AD421000CE845A00C663
      1000C65A0000B54A0000AD4A1000EFD6C6000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00FFEFE700F7CE9C00FFE7C6000000000000000000EFEFEF00C6C6C600CECE
      CE00E7E7E700F7F7F700EFEFEF00000000005A5A5A007B7B7B007B7B7B007373
      730084848400ADADAD00EFEFEF00000000000000000000000000000000000000
      00000000000094CE940031CE5A0042DE730039D66B0042D6730010B5390084C6
      8C00000000000000000000000000000000000000000000000000EFF7FF0031BD
      E70021EFFF008CADAD00B5520000C6520000D66B0000AD420800A5390000CE63
      0000E77B0800CE6B18009C290000BD734A000000000000000000000000000000
      00000000000000000000000000000000000000000000F7E7D600F7D6AD00EFB5
      6B00E79C3100F7B56B00F7B55A00FFEFCE00DEDEDE00BDBDBD00D6D6D600E7E7
      E700E7E7E700E7E7E700EFEFEF0000000000D6D6D6008C8C8C006B6B6B007B7B
      7B00737373007373730084848400D6D6D6000000000000000000000000000000
      0000000000008CCE940031CE5A0042DE730039D66B0039D6730010B5390084CE
      8C00000000000000000000000000000000000000000000000000ADCEE7004AE7
      F7004AF7FF00B5BDA500D66B0000E77B0000EF8C0000AD4A1800A54A0000E77B
      0000FF940000D67B1800A5390000B5633100EFCEB500FFFFFF00000000000000
      00000000000000000000FFFFF700EFCEB500E7B57B00EFAD5A00EFA54A00FFBD
      7B00FFD69C00FFD6A500F7B56300F7DEB500BDBDBD00DEDEDE00DEDEDE00D6D6
      D600E7E7E70000000000FFFFFF00ADADB500C6C6C600F7F7F700CECECE007B7B
      7B006B6B6B00737373006B6B6B00949494000000000000000000000000000000
      0000000000009CD69C0039CE63004ADE7B0042D6730042DE730010B542008CCE
      94000000000000000000000000000000000000000000000000006BB5D6005AEF
      F70063FFFF00C6BD9C00F7840000FF9C0800FFB54A00BD5A1800A54A0000EF9C
      0000FFCE7B00EFAD6B00B54A0000B5521800C6733900FFFFFF00000000000000
      000000000000EFD6C600DE945200F7A55200F7AD5200FFBD7300FFC68C00FFC6
      8C00FFC68C00FFCE9C00F7B56B00F7CE9C00B5B5B500D6D6D600D6D6D600F7F7
      F70000000000B5B5B5007B7B7B008C8C84009C9C94009C9C9C00CECECE00EFEF
      EF00ADADAD00737373007373730084848400BDE7BD0084CE8C0084CE940084CE
      94008CCE940052BD5A0039D66B004ADE7B0042DE730042DE730021BD52004AAD
      52008CC68C0084C68C0084C68C0084C68C0000000000DEEFF70063C6DE0084FF
      FF007BFFFF00CECEA500FFAD4A00FFCE7300F7B56300D673180094390000B55A
      2100EFB57B00F7B56B00EF9C4A00B5632900BD6B290000000000000000000000
      0000FFFFFF00E7AD7300EFBD7B00FFD69C00FFCE8C00FFCE8C00FFC68400FFC6
      8400FFC68C00FFCE9400FFC68400F7BD7300B5B5B500E7E7E700FFFFFF00BDBD
      BD00636363005A5A5A00847B6B007B8C9C0094949400C6BDAD00D6D6D600EFEF
      EF00F7F7F700DEDEDE009C9C9C007373730073CE840039D6630021CE520029CE
      520021C6520031CE5A004ADE7B0042DE730042DE730042DE730042D66B0021BD
      520010B5390010B5390010B5390010B5420000000000B5D6E7005AC6DE00ADFF
      FF008CFFFF00A5E7E700DEC68C00E7A53100CE5A0000BD5A0000CE630000BD52
      0000AD420800C6845200D6CEAD0094B5B500D6843900FFFFFF00000000000000
      000000000000F7DECE00D6843100D67B2900CE7B2100D67B1800FFB57300FFC6
      8400FFC68400FFC68C00FFCE9C00EFA54200CECECE00F7F7F700CECECE008484
      8400848484007B7363005A638400008CFF002184F700BDCEE700FFEFDE00F7EF
      EF00EFEFEF00E7E7E700E7E7E700B5B5B5008CD6940084FFAD005AEF8C005AEF
      8C005AEF8C0052EF840052E784004AE77B004AE77B0042DE730042DE730042DE
      730042DE730042D6730039D6730042DE7B00000000008CCEE70073D6E700C6FF
      FF009CFFFF0073F7FF008CF7FF00BDDEDE00D6630000DE730000E77B0000D673
      1800A531000084847300A5FFFF00399CC600E78C3900F7EFEF00000000000000
      000000000000000000000000000000000000F7F7EF00DE944200FFC68400FFBD
      7B00FFC68400FFC68C00FFCE9400E794390000000000E7E7E700F7F7F700EFEF
      EF00CECEC600BDAD9C003184E70042B5FF0031A5FF00107BFF008CADE700E7D6
      C600D6D6CE00D6D6D600DEDEDE00000000008CD6940084FFA50063EF8C0063EF
      8C005AEF8C005AE78C0052E7840052E7840052E784004AE77B0042DE730042DE
      730039D66B0039D66B0039D66B0042D67300DEEFF70052B5D600D6FFFF00D6FF
      FF00CEFFFF0094FFFF0094FFFF00CEE7E700FF8C0000FFA51800FFAD2100F7AD
      4A00B5420000B58C6300D6FFFF003194BD00EF8C2900EFDED600000000000000
      000000000000000000000000000000000000D6944A00F7AD5A00FFBD7B00FFC6
      8400F7AD6300E79C4A00FFCE9400F7AD5A000000000000000000FFFFFF00F7F7
      F700FFF7EF0094BDF70031A5FF0042ADFF004AB5FF0039ADFF001884FF006B9C
      E700EFEFEF000000000000000000000000008CD69C0094FFB50073F79C0073F7
      9C0073F79C006BEF94005AEF8C0052E7840052E784004AE77B0042DE7B004ADE
      7B004ADE7B0042DE730042DE730042DE7B00B5D6E700DEF7FF00EFFFFF00FFFF
      FF00DEFFFF00A5FFFF00A5FFFF00CEF7F700F7B56300EFB57B00EFAD6B00EF9C
      5A00C6631800C6A58400DEFFFF00319CBD00EF7B0800DEBDA500000000000000
      0000000000000000000000000000DEB59400EF943100FFBD7300FFBD7300FFC6
      8C00D6842100DEA56300F7BD7300FFC684000000000000000000000000000000
      0000E7F7FF0052ADFF0039A5FF0042ADFF004AADFF004AB5FF004AB5FF002994
      FF006BADFF00F7FFFF0000000000000000007BCE84006BE7840063DE7B0063DE
      7B005ADE7B006BE784007BF79C005AEF8C0052E7840052E784004ADE7B0042D6
      6B0042CE630039CE5A0031C65A0031CE6300A5D6E70063BDDE005ABDE7005ABD
      DE00DEFFFF009CF7FF00A5FFFF00A5FFFF00CEEFE700CEE7D600D6DEC600D6D6
      C600CEDED600D6F7EF00E7FFFF00399CBD00FF8C0800CE7B3100F7EFEF000000
      00000000000000000000DEBDA500DE843100FFBD6B00FFB56300FFC67B00E78C
      2900F7D6B500F7E7D600E7A55200FFEFC6000000000000000000000000000000
      000094CEFF0039A5FF0042ADFF0042ADFF004AB5FF004AB5FF0063C6FF0063CE
      FF0031A5FF0052ADFF00EFF7FF0000000000BDE7BD008CD6940094D69C0094D6
      9C0094D69C0063C66B006BE784006BEF94005AEF8C0052EF840031CE5A0052B5
      5A0094D69C0094CE94008CCE94008CCE9400FFFFFF00EFF7FF00EFF7FF00FFFF
      FF00FFFFFF00ADEFF700A5EFF7009CE7F70094E7F70084E7F70084E7FF007BEF
      FF00CEFFFF00D6FFFF00F7FFFF00399CBD00EF7B0000FF8C1000C65A0000D694
      6B00DEAD8400C67B3100E7842100FFB55A00FFAD5A00FFBD6B00F7A54A00DEA5
      6B000000000000000000EFC69C00CE6B0800000000000000000000000000CEE7
      FF0052B5FF0042ADFF004AADFF004AB5FF004AB5FF004AB5FF0042A5FF004AAD
      FF008CC6FF00DEEFFF00000000000000000000000000FFFFFF00000000000000
      0000000000009CD69C005ADE7B006BF79C005AEF8C005AEF8C0021C64A008CCE
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000EFFFFF00F7FFFF00F7FFFF00FFFFFF00FFFFFF00FFFFFF00EFFF
      FF00E7FFFF00DEFFFF00FFFFFF00399CC600CE630800FF9C2100FF9C2100F78C
      1800EF8C2100FFA54200FFAD5200FFA54A00FFB56300F7A55200D6944A00F7F7
      EF00000000000000000000000000000000000000000000000000F7FFFF0084CE
      FF0042B5FF005AC6FF004AB5FF004AB5FF0052BDFF002994FF004294FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094D69C0063DE7B0073F79C0063EF8C005AEF8C0021C64A0084CE
      8C00000000000000000000000000000000000000000000000000000000000000
      0000ADE7F700A5DEF700ADE7F700ADDEF700A5DEEF00A5DEF70094CEE700E7F7
      FF00E7FFFF00DEFFFF0000000000399CC600DEA58400DE731000FFA53900FFAD
      4200FFA54200FFA54A00FFB56300FFBD6B00EF944200D6945200F7E7D6000000
      0000000000000000000000000000000000000000000000000000EFF7FF009CD6
      FF0084D6FF0052B5FF004AB5FF0052B5FF005ABDFF0031A5FF005AA5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF0094D69C0063DE7B0073F79C0063EF8C005AEF8C0021C64A0084CE
      8C00000000000000000000000000000000000000000000000000000000000000
      0000C6EFF700C6EFF700BDE7F700B5E7F700ADDEF700B5E7F70063BDDE00C6E7
      F700000000000000000000000000429CC600FFF7FF00DEA58400CE631000EF8C
      2100FFAD4A00FFB55200F7943900CE731800DEAD7B00F7EFE700000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF00F7F7FF006BB5FF004AB5FF0052BDFF005ABDFF0039A5FF005AA5FF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF008CD6940063E7840094FFB50084FFAD0084FFAD0039D663007BCE
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F7FFFF0052AD
      D6004AA5CE0052A5CE00429CC6008CC6DE0000000000FFFFFF00F7EFEF00E7B5
      9400D68C6300D68C6300E7AD8C00F7E7DE00FFFFFF0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000073BDFF004ABDFF005ACEFF0063D6FF0042BDFF005AADFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000BDE7BD007BCE84008CD69C008CD6940094D69C0073CE8400BDE7
      BD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A584730000000000FFFFEF00FFFFEF00FFFFEF00FFFF
      EF00FFFFEF00FFF7EF00FFF7E700FFFFEF0000000000104AFF000839E7000008
      BD004A4AC600D6D6EF00FFFFFF00FFFFFF00FFFFFF00FFF7FF006363C6000018
      CE000010BD000810AD005A5AC600E7E7F7000000000000000000CEBDB500A584
      7300CEC6BD00DED6CE00EFE7E700F7F7F700FFFFFF0000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700E7E7E700E7E7
      E700EFEFEF00EFEFE700F7F7F7008C8484007373730073737B00737373007373
      73006B6B6B0073737300CECECE00FFFFFF000000000000000000000000000000
      000000000000000000009C84730000000000FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7E700FFFFEF00184AF7001852FF00184AFF00184A
      FF000021D6002129BD00B5B5E700FFFFFF00FFFFFF005A5AC6000021D6000839
      F7000839F7000031E7000010BD004A4ABD0000000000F7F7F700B5A594000000
      0000E7DEDE00DECECE00CEC6BD00B5A59400B5A59400C6B5AD00D6C6C600DED6
      CE00FFFFFF0000000000000000000000000084848400B5A5A500ADA5A500B5A5
      A5009C94940052739C00A5B5CE00948C8C00FFFFFF00FFFFFF00DE9C8400FFFF
      FF00FFFFFF00D6D6D6006B6B6B00FFFFFF00FFFFFF00F7F7F700F7F7F700F7F7
      F700F7F7F700FFFFFF00A584730000000000FFF7F700FFF7F700FFF7F700FFF7
      EF00FFF7EF00FFF7EF00FFF7EF00FFFFF7001021CE00215AFF002152FF001852
      FF00184AFF000839DE000818B500B5ADE7005A5ABD000021DE001042FF001042
      F7000839F7000839F7000831EF000008B50000000000DED6D600CEBDB500D6A5
      9400A56B5A00B58C7B00A58C8400C6C6C600F7F7F700EFE7E700CEC6BD00C6B5
      AD00DED6CE000000000000000000000000009C949400FFF7F700FFEFEF00FFF7
      F700DEC6C6003994E70094CEFF0094949400FFFFFF00D69C84009C290000D6B5
      A500FFFFFF00CECECE007B737300FFFFFF00BDAD9C00AD8C7B00AD8C7B00AD8C
      7300AD8C7300B59C8C009C7B6B0000000000FFFFF700FFFFF700FFFFF700FFFF
      F700FFF7EF00FFF7EF00FFF7EF00FFFFF7003131CE002963FF002152FF002152
      FF002152FF002152FF001042EF000000AD000829DE00104AFF001042FF001042
      F7001042F7000839F7000839FF000021DE0000000000CEB5AD00EFE7DE00C684
      73007B2921005A10080010000000E7DECE000000000000000000000000000000
      0000FFFFFF000000000000000000000000009C949400FFF7F700FFEFEF00FFF7
      F700DEC6C6004294E7009CCEF700949C9C00F7DED600A5390000A5390000AD4A
      1000F7E7E700D6D6D6007B7B7B00FFFFFF00D6C6BD00FFFFFF00FFFFEF00FFFF
      EF00FFFFEF00FFFFFF00AD8C730000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7F700FFF7EF00FFFFF7000810CE00316BFF003163FF00295A
      FF00295AFF00215AFF002152FF001852FF001852FF00184AFF001042FF001042
      FF001042F7000842FF000029E7002129BD00F7EFEF00CEB5AD00F7E7D600DEBD
      AD00EFD6CE00FFF7DE009494D6000021FF000000AD00CECEDE0000000000B59C
      8C00000000000000000000000000000000009C9C9C00FFFFFF00FFF7F700FFFF
      FF00DECECE004A9CE7009CD6FF008C8C8400BD6B3100B55A1800DEBDA500B539
      0000C67B4A00CED6DE00847B7B00FFFFFF00D6C6BD00FFFFFF00FFF7EF00FFF7
      EF00FFF7EF00FFFFF700AD8C73000000000000000000FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700FFFFFF009494E7002939D6002952EF003973
      FF00295AFF00295AFF00295AFF002152FF002152FF00184AFF00184AFF00104A
      FF00104AFF000021DE004A4AC600DEDEEF00E7DEDE00D6C6B500F7DECE00E7C6
      AD00E7C6B500E7C6B500EFCEB5001031DE00084AFF000010BD00ADA5B500D6BD
      AD0000000000000000000000000000000000948C8C00BDB5B500BDB5B500BDB5
      B500B5ADAD00427BB500A5C6DE00944A1800B5420000E7CEC600FFFFFF00D694
      6300B5420000A58473007B848C00FFFFFF00D6C6BD00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFFFFF00AD8C7B000000000000000000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFFFF700FFFFFF00D6CEF7005252CE001029
      D6004A84FF003163FF00295AFF00295AFF002152FF002152FF00184AFF001852
      FF000018D6005A5ACE00F7F7FF00FFFFFF00DED6CE00D6C6BD00EFD6BD00E7C6
      AD00E7C6B500E7C6BD00FFD6B5007B73BD001042F7000842FF0008089C00CEC6
      CE00000000000000000000000000000000009C9C9C00FFFFFF00FFF7F700FFFF
      FF00DED6D6004AA5E700ADD6F700B54A00009C634200737B84007B7B7B00847B
      7300B5520800B54A0000A58C8400F7FFFF00D6CEC60000000000FFFFF700FFFF
      F700FFFFF700FFFFFF00B58C7B0000000000000000000000000000000000F7EF
      EF00CEBDB500C6B5A500C6AD9C00AD8C7B00FFFFFF00FFFFFF00FFFFFF00A5A5
      E7000008C6004273FF003163FF00295AFF00295AFF002152FF002152FF000021
      D6005A5ACE00FFFFFF00FFFFFF00FFFFFF00DED6CE00E7D6C600E7C6AD00E7C6
      AD00E7C6B500E7C6AD00EFDECE00000000002139E700215AFF000029FF002129
      AD00000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00DED6D60052A5E7008CCEFF00CEB5AD00A5DEFF008CD6FF00D6D6D600FFFF
      FF00FFE7D600BD4A0000B55A1000EFE7E700DECEC60000000000FFFFFF00FFFF
      FF00FFFFFF0000000000B58C7B000000000000000000FFFFFF0000000000EFE7
      E700BDA59400EFD6B500CE9C6B00AD8C7B00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF000810C600427BFF003163FF003163FF00295AFF00295AFF002152FF001039
      DE001821B500FFFFFF00FFFFFF00FFFFFF00DED6CE00EFDECE00E7BDAD00E7C6
      AD00E7C6B500E7C6AD00E7CEC600FFE7C600CECEE7000018F7005273BD003939
      3900000000000000000000000000000000009C9C9C00FFFFFF00FFFFFF00FFFF
      FF00DED6D6005AADDE005ABDFF007BCEFF0052BDFF0042ADFF00ADADAD00FFF7
      F700FFFFFF00E7B58C00BD4A0000DE944A00DECEC6000000000000000000FFFF
      FF00FFFFFF0000000000B58C7B0000000000FFFFFF00FFFFFF0000000000F7EF
      EF00C6AD9400DEB57B00AD948400FFFFFF00FFFFFF00FFFFFF00FFFFFF006B63
      D600315AF7004273FF00396BFF00316BFF00316BFF00295AFF00295AFF002152
      FF000021CE005A5ACE00FFFFFF00FFFFFF00DECEC600EFDECE00DEBDA500DEBD
      AD00DEC6AD00E7C6AD00E7C6B500E7CEB500FFFFF700A5ADD600B5B5AD00526B
      C6008C84C600000000000000000000000000A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DEDED60063B5E70052C6FF005AC6FF0052BDFF004AB5FF00B5B5B500FFFF
      FF00FFF7F700FFFFFF00DE945A00CE5A0000DECEC6000000000000000000FFFF
      FF00FFFFFF0000000000B58C7B0000000000000000000000000000000000FFF7
      F700AD8C6B00AD9484000000000000000000FFFFFF00FFFFFF00EFEFFF002931
      CE004A84FF004273FF00396BFF004273FF00294AEF004273FF00295AFF002152
      FF00184AF7000818BD009C9CDE00FFFFFF00DECEC600F7E7CE00DEBDA500DEBD
      A500DEBDAD00E7C6B500FFF7EF00FFFFFF0000000000F7EFD6005A638C00395A
      CE000008BD00CEC6DE0000000000000000009C9C9C00E7E7E700DEDEDE00E7E7
      E700CEC6C60063A5CE004AADE70052ADDE004AADE70042A5DE00ADADAD00E7DE
      DE00DED6D600E7D6D600DED6D600DE8C4200DECEC60000000000000000000000
      000000000000F7EFEF00A57B6300C6ADA500C6ADA500C6AD9C00BDA59C00B594
      8400B59C8C00FFFFF7000000000000000000FFFFFF00FFFFFF009494E700395A
      EF005284FF004A73FF00427BFF002152F7001818B5001831D6003973FF00295A
      FF002152FF000839E7002129BD00D6D6F700DECEC600F7E7D600DEBDA500DEBD
      A500DEBDA500DEBDAD00EFD6C600EFD6C600EFD6C600DED6C6009C8C8C00A5A5
      8C000031FF002129B500F7F7EF00000000009C9C9C00DEDEDE00D6D6D600DED6
      D600C6BDBD0063A5C6004AA5D60052A5D6004AA5D600429CD600A5ADAD00DED6
      D600D6C6C600DEC6C600A5A5A500EFDED600DECEC6000000000000000000FFFF
      FF0000000000EFE7DE00CEBDAD00FFE7C600CEAD8C00D6C6BD00FFF7F700F7F7
      F700FFFFFF00000000000000000000000000FFFFFF00FFFFFF00525ADE004A73
      F7005284FF004A7BFF00396BFF002121CE00FFFFFF00847BDE001831DE003163
      FF002152FF001852FF000021D6004A4ACE00DECEBD00FFFFE700F7E7CE00F7E7
      D600EFE7D600EFE7D600EFE7D600E7D6CE00DED6C600BD9C8C00E7D6CE00FFFF
      FF006373A5000842FF000018D600BDBDDE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DEDED6006BBDE70063CEFF0063CEFF005AC6FF0052BDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5A5A500E7EFEF00DECEC60000000000FFFFFF00FFFF
      FF0000000000EFE7DE00C6A57B00C69C6B00C6B5AD0000000000000000000000
      000000000000000000000000000000000000FFFFFF00CEC6F7004A5AEF005A8C
      FF005284FF004A7BFF001831DE00ADADEF00FFFFFF00FFFFFF007373DE002142
      E7002963FF00184AFF00184AF7000010BD00D6BDAD00D6B59C00CEB5A500CEB5
      A500C6AD9C00BDAD9C00CEB5AD00D6C6BD00DECEC600EFE7DE00FFFFFF000000
      0000D6D6C6003952AD000031F7003139CE00A5A5A500FFFFFF00FFFFFF00FFFF
      FF00DED6D60063B5DE005AC6FF005AC6FF005AC6FF0052BDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5A5A500E7E7E700DECEC60000000000000000000000
      000000000000EFE7E7009C6B5200CEBDB5000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00CECEF7003142DE006394
      FF006BA5FF00315AF7005A5ADE00FFFFFF00FFFFFF00FFFFFF00F7F7FF005252
      CE002142EF00295AFF001852FF000839EF00F7F7EF00EFE7DE00F7EFEF00FFF7
      F700000000000000000000000000000000000000000000000000000000000000
      0000F7F7EF00ADADA500526B940021299400ADADAD00FFFFFF00FFFFFF00FFFF
      FF00DEDEDE0063B5E70052C6FF0052C6FF0052C6FF004ABDFF00B5B5B500FFFF
      FF00FFF7F700FFF7F700B5ADAD00E7E7E700E7D6D600DECEC600DECEC600DECE
      C600DECEC600D6C6BD00DED6CE00000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00CECEF7003942
      DE002131DE003942DE00C6C6F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003939C6001842EF000818D6003939CE000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F7F7F700B5B5CE009C9C9400A5A5A500ADADAD00A5A5A500ADAD
      AD00A59C9C008C949C008C9CA5008C9CA50084949C0084949C00949494009C9C
      9C009C9C9C009C9C9C008484840000000000000000000000000094CEE7001884
      B5006BB5CE00BDDEEF00EFF7F700FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000FFF7F700C6A5A500B5848400EFE7E700FFF7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00ADADAD00A5A5
      A500A5A5A500BDBDBD00EFEFEF000000000000000000638CFF006B6BC600F7F7
      EF009C94DE000000B500CECEDE00FFFFCE00FFEFCE00FFEFCE00FFEFCE00FFEF
      CE00FFEFCE00FFEFCE00FFE7C600FFF7EF0000000000FFFFFF005AC6E7000084
      B50008DEFF0000ADDE0008A5D6004ABDDE0094CEE700C6DEEF00EFF7F7000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7EFEF00C6A5A500DEA5A500BD8484009C636300AD737300BD949400D6BD
      BD00E7DEDE00F7EFEF00FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DEDEDE00ADADAD00A5A5
      A500A5A5A500BDBDBD00EFEFEF0000000000181810007B84FF000831E7000000
      84000018C6000052FF008473A500FFCE6300FFB55200FFB55A00FFB55A00FFAD
      5A00FFAD5A00FFAD5A00FFAD5200FF9C080000000000CEE7EF004AD6EF00088C
      BD0029E7FF0021DEF70018D6EF0008CEFF0000BDE70018BDE70039B5DE005AA5
      CE009CC6DE00F7F7FF0000000000000000000000000000000000F7F7F700BD94
      9400EFCECE00FFE7E700F7CECE00BD84840000000000FFF7F700F7EFEF00EFDE
      DE00E7BDBD00BD8C8C00A5737300F7EFEF0000000000FFE7D600F7DEBD00EFC6
      A500EFC69400EFC69400F7D6AD00E7DED600636B6B0073737300A5A5A5006B63
      6300A5A5A50084848400525252006363630029211000C6BDE7002163FF00104A
      FF001852FF000831DE00DED6EF00FFFFFF00FFEFFF00FFEFFF00FFEFFF00FFE7
      FF00FFE7FF00FFDEF700FFF7FF00FF9C100000000000ADD6E70042D6EF00189C
      CE004AF7FF0031DEEF0018B58C0029DEF70029E7FF0018DEFF0010D6FF0010CE
      F70018C6F700189CCE003194BD0094BDD60000000000F7F7F700C69C9C00EFCE
      CE00FFE7E700FFDEDE00F7D6D600BD8C8C0000000000FFFFFF00FFFFFF00FFFF
      FF0000000000E7C6C600A5737300F7EFEF00F7DEC600E7841800D66B0000E794
      3100EF942100D65A0000EF840000946329007B8C9C00D6D6D6007B7B73004263
      730073737300ADADAD008C8C8C007373730010100800FFFFEF001031D6002963
      FF001852FF002131BD00FFFFF700FFEFEF00FFE7E700FFE7E700FFDEDE00FFDE
      DE00FFDED600FFD6D600FFE7FF00FFA51000FFFFFF007BC6EF005ADED6000884
      9C004AD6B50029C6A50039D6AD0031C69C0039E7FF0031DEFF0031DEFF0029DE
      FF0029DEFF0031DEFF0031E7FF0018C6EF00FFF7F700CEA5A500EFD6D600FFEF
      EF00FFDEDE00FFDEDE00FFD6D600BD8C8C0000000000EFE7E700EFE7E700FFFF
      FF00FFFFFF00DEC6C600AD737300F7EFEF00EFC69C00EFA54200F7BD7300FFCE
      8400AD52080094391000FFA52900AD8C5200A5B5C6009C9C9400847B7B00009C
      B50073848C00736B6B00A5A5A5007373730010100800FFFFEF002152E7002152
      F7001042EF001042E700F7EFEF00FFF7F700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C1000F7FFFF001884630000840000006B
      5A0063E7BD0042DEAD0052E7BD0052E7B50039D6B5004AE7FF0042E7FF0039DE
      FF0039DEFF0039DEFF0039D6FF0063EFFF00F7EFEF00D6B5B500FFEFEF00FFE7
      E700FFDEDE00FFDEDE00FFD6D600C68C8C0000000000AD949400845A5A00C6A5
      A50000000000DEC6C600AD737300F7EFEF00F7D6BD00EF9C4200FFDEA500DE63
      0000AD736B0021108400E76B0000D69C39007B94B5008C8C8400B5ADA50052E7
      E7007B9C94008C847B008C8C8C005A5A5A0018100800EFEFE7001852EF003139
      B5006363C6000031E700ADADDE00FFFFF700FFEFEF00FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C100084BD840000730000009C0000007B
      73007BEFC60052DEB5005AE7BD0063EFCE005AEFBD004AD6BD0052EFFF004AE7
      FF004AE7FF004AE7FF0042D6F70094F7FF00F7EFEF00DEADAD00FFDEDE00FFDE
      DE00FFD6D600FFD6D600FFD6D600CE9C9C00BD848400BD848400CEADAD00D6B5
      B500E7D6D600D6BDBD00AD737300F7EFEF00FFF7EF00E7842100D6842900FFD6
      7B00945A52008C8CD600FFBD4200CE5200009C845A004A525A00A5947B0084EF
      FF00638CA500A59484004A4A42009C9C9C0018100800F7F7E7000018C600B5AD
      D600FFFFF7006363D6008C94DE00FFFFFF00FFF7F700FFEFEF00FFE7E700FFE7
      E700FFDEDE00FFDEDE00FFEFFF00FF9C10000884080000940800009C0000007B
      6B008CF7C6005AE7B50063EFBD006BF7C60052DE9C0063E7DE0063EFFF005AEF
      FF0052EFFF0052E7FF005ADEF700B5FFFF00F7EFEF00DEADAD00FFDEDE00FFDE
      DE00FFD6D600FFD6D600FFD6D600CE9C9C00F7E7E700E7C6C600D69C9C00BD7B
      7B00AD6B6B00BD848400AD7B7B00F7EFEF0000000000EFB57B00E7520000C6A5
      6B00427BCE004A84D600DE841800E76B0000F7CEAD00A5A594004A73E700396B
      FF003984FF00427BFF00948C7B000000000010100800FFFFEF008C8CD600F7F7
      FF00FFFFFF00F7EFFF00D6D6EF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA5100010B5180008941000319C29000084
      9400B5F7DE005AD69C006BEFB50063DEA50084FFFF0084FFFF0073F7FF006BF7
      FF006BEFFF0063E7FF0084EFF700DEFFFF00F7EFEF00DEADAD00FFD6D600FFD6
      D600FFD6D600FFCECE00FFD6D600CE9C9C000000000000000000000000000000
      000000000000EFC6C600B57B7B00EFEFEF000000000000000000ADA58C0010A5
      FF0052BDFF0042BDFF00218CEF00FFD6B50000000000C6D6FF00398CFF005AAD
      FF005AA5FF00428CFF0094B5FF000000000010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA5100018BD290010AD210084CE840031A5
      EF00E7FFFF005AD68C0084EFD6009CFFFF0094FFFF008CF7FF0084F7FF007BF7
      FF0073F7FF006BE7F700B5F7FF00E7FFFF00F7EFEF00DEADAD00FFD6D600FFD6
      D600FFCECE00FFCECE00FFD6D600D69C9C00FFFFFF00FFFFFF00FFFFFF00FFF7
      F700FFFFFF00EFD6D600B57B7B00EFEFEF0000000000FFFFFF0052C6FF006BBD
      FF007BC6FF007BC6FF0052B5FF0084D6FF00000000006B8CFF0052ADFF005AAD
      FF005AADFF004AA5FF0063A5FF000000000010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFEF
      EF00FFE7E700FFDEDE00FFEFFF00FFA5100021C6310029C6390029BD31000084
      5200DEFFFF00A5F7EF00ADFFFF00A5FFFF009CFFFF0094FFFF0094FFFF008CF7
      FF007BF7FF008CE7F700D6FFFF00E7FFFF00F7EFEF00DEA5A500FFCECE00FFC6
      C600FFC6C600F7BDBD00FFD6D600D6A5A50000000000AD94940094636300AD8C
      8C0000000000EFD6D600B57B7B00EFE7E7000000000084B5C600007BCE008CD6
      FF008CD6FF008CD6FF007BC6FF0052B5FF000000000073A5FF0073F7FF0073EF
      FF0063C6FF0073EFFF00316BBD00BDADA50010100800FFFFEF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFF7F700FFEFEF00FFE7
      E700FFE7E700FFDEDE00FFEFFF00FFA5100029CE420029C64A0039D6520031D6
      4A0029AD4A0063C6A500A5EFF7009CE7F7008CE7EF0084E7F7007BE7F70073E7
      F7006BDEF700C6F7FF00D6FFFF00EFFFFF00F7EFEF00DEA5A500FFC6C600F7C6
      C600F7C6C600EFB5B500F7CECE00D6A5A500EFDEDE00C6ADAD00E7DEDE00C6B5
      B50000000000F7E7E700B57B7B00EFE7E700000000006BADCE0000295A0052A5
      DE00BDEFFF00A5DEFF008CCEFF005ABDFF0000000000424A6B00000000000829
      39006BD6F7000008100000000000737B7B0010100800FFFFF700FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF7FF00FFF7
      F700FFEFF700FFE7EF00FFFFFF00FFA5100021B5390039DE5A0042DE63004AE7
      6B004AF7730039CE5A00CEF7DE00FFFFFF00F7FFFF00FFFFFF00FFFFFF00EFFF
      FF00D6FFFF00E7FFFF00DEFFFF00FFFFFF00F7EFEF00DEA5A500F7C6C600EFBD
      BD00EFB5B500EFBDBD00FFDEDE00FFE7E700DEADAD00DEADAD00D6A5A500D6AD
      AD00CEA5A500CEA5A500B57B7B00EFE7E700000000007BB5D6000084BD000063
      94001073AD0000639C00004A84005AADE70000000000080000007B7B73006352
      4A000800000021211800000000007373730010100800FFFFD600DEDED600DEDE
      D600DEDED600DEDED600DED6D600DED6D600DED6CE00DED6CE00DECEC600DEC6
      C600DEC6BD00DEBDBD00DECEE700FF9C180052BD630031D652004AE76B0052F7
      7B0039DE63006BC6B500C6EFFF00B5E7F700ADDEF700ADDEF7009CD6EF00DEF7
      F700EFFFFF00E7FFFF00DEFFFF0000000000F7EFEF00D69C9C00EFBDBD00EFB5
      B500F7CECE00FFEFEF00FFE7E700FFE7E700FFE7E700FFDEDE00FFDEDE00FFD6
      D600EFBDBD00DEA5A500B57B7B00EFE7E70000000000CEDEEF000073AD00009C
      CE00008CBD000084BD00005A9C0073ADC600000000008C8C8C00181818006363
      63004A4A4A000000000018181800D6D6D60010101000FFE75200F77B0000F77B
      0000F77B0000F77B0000F77B0000F77B0000F7840000F7840000F7840000F784
      0000F7840000F7840000F7840000FF940000E7F7E70042C6630039E76B004AEF
      7B007BD69400D6EFFF00B5E7F700ADE7F700ADDEF700ADDEF70063BDDE00BDE7
      EF0000000000000000000000000000000000F7EFEF00D69C9C00E7C6C600E7C6
      C600EFCECE00EFD6D600F7D6D600FFE7E700EFC6C600DEADAD00DEB5B500DEC6
      C600EFDEDE00F7F7F700000000000000000000000000000000009CC6DE000063
      A500005A9C0000529400297BB500FFFFFF000000000000000000B5B5B5008484
      84007B7B7B00BDBDBD00E7E7E7000000000010100800FFFFA500EFA55A00F7A5
      5A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A55A00F7A5
      5A00F7A55A00F7A55A00F79C3900FF94000000000000EFF7EF0084D694004ABD
      7300000000000000000000000000000000000000000000000000F7FFFF005AB5
      D6004AA5CE0052A5CE0052A5CE00429CC600FFFFFF00FFF7F700F7EFEF00EFE7
      E700EFDEDE00EFDEDE00EFD6D600E7CECE00E7D6D600F7EFEF00FFFFFF00FFFF
      FF00000000000000000000000000000000000000000000000000000000000000
      0000E7EFF700FFFFFF0000000000000000000000000000000000000000000000
      00000000000000000000000000000000000010182100FFFFAD00FFA51800FFA5
      1800FFA51800FFA51800FFA51800FFA51800FFA51800FFA51800FFA51800FFA5
      1800FFA51800FFA51800FF9C0800FFDE9C000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009C7B6B009C7363009C73
      630094736300947363009473630094736300947363009C736300A59C8400189C
      18000094000073A56300FFF7FF00FFFFFF0000000000BD7B5A00A5735A009C6B
      5A009C6B5A009C6B5A009C6B5200946B520094635200946352009C6B52009C6B
      520073B5730029C6520039DE7300318431000000000000000000000000000000
      0000ADCEAD00639C6300398C39009CAD8C009473630094736300947363009473
      630094735A0094735A00946B5A007B5A4A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7B6B00FFFFFF00FFFFF700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFFFF00FFFFFF00FFF7EF0029BD
      420010B529007BA56B00FFFFFF00FFFFFF0000000000BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00189418003194
      29000873000031C65A0042DE7B00006300000000000000000000C6E7C600087B
      080021C63100089410009CCE9C00FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7E700FFF7E700FFEFE7008C6B5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7B6B00FFFFFF00EFDED600D6BD
      AD00DEBDAD00DEBDAD00D6B5A500FFCED60031A5310018C6420021C6420039D6
      630031CE5A0018BD310018BD390000940000C6734A00BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFF7F700FFFFFF00FFFFFF000084000052F7
      94004AEF84004AE784004AE7840042E77B0000000000000000003994390021BD
      310029CE420008840800E7F7E700FFFFF700FFF7EF00FFF7EF00FFF7EF00FFF7
      EF00FFF7EF00FFF7E700FFF7E700946B5A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C7B6B00FFFFFF00EFE7DE00DEC6
      B500DEC6B500DEC6B500D6BDAD00FFD6DE0031A531004AFF94005AFF9C0052F7
      8C0052EF8C0052F79C004AEF8C00009C0000C6735200C68C7300FFFFFF00E7D6
      CE00A56B520094634200E7D6CE00FFFFFF00945A3900846342000084000039DE
      6B0039D663004AE77B004AEF840031CE5A0000000000EFF7EF00088C080031D6
      520039D65200088C0800EFF7EF00FFFFFF00FFFFF700FFF7F700FFF7EF00FFF7
      EF00FFF7EF00FFF7EF00FFF7EF0094735A000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000009C7B6B00FFFFFF00EFE7DE00DEC6
      BD00DEC6BD00DEC6BD00D6BDB500FFCED60063B5630039B54A0039B5390029BD
      420029C64A0021A521004ABD520042AD4200CE7B5200BD8C7B00FFFFFF00DEC6
      C600C67B5A00BD5A29009C6B5200FFFFFF009C421800944A21005AAD520073B5
      6300218C100039D6630052EF8400006B0000BDD6AD00399C3100089408004AE7
      73004AE7730010A521001894180084CE8400FFFFF700FFFFF700FFFFF700FFFF
      F700FFF7EF00FFF7EF00FFF7EF00947363000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000009C7B7300FFFFFF00EFE7E700DEC6
      C600DEC6C600DEC6BD00DEC6B500DEC6BD00E7CEBD00E7C6BD00CEBDA50031BD
      420018B529006B9C5A00FFEFF700FFFFFF00CE846300C6948400FFFFFF00DECE
      C600CE8C6B00D67B52009C522100D6C6BD00AD634200BD5A3100FFDEE700FFE7
      FF0073AD630039DE6B005AFF9400298C2100DED6CE0021B531005AF78C0052EF
      7B0052EF7B005AFF8C0042DE6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFF7F700FFF7EF00947363000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000A5847300FFFFFF00EFE7E700D6BD
      BD00DEC6BD00DEBDB500DEBDB500DEBDB500DEBDAD00DEB5A500E7CEBD0094B5
      7B009CCE8C00BDBDA500F7EFF700FFFFFF00D6846300C6948400FFFFFF00DECE
      C600D6947B00D6845A00C6734A00945A4200BD735A00C6633900FFD6D600FFDE
      E7005AB55200008C0000008C000021941800CEBDB5006BBD630018B5290063FF
      9C0063FF940052EF840021A521000000000000000000FFFFFF00FFFFFF00FFFF
      F700FFFFF700FFFFF700FFFFF700947363000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000A5847300FFFFFF00F7EFEF00E7D6
      D600E7D6D600E7D6CE00E7D6CE00E7D6CE00E7CEC600E7CEC600EFCEC600FFCE
      CE00FFFFFF00C6A59C00E7DED600FFFFFF00D68C6B00CE9C8C00FFFFFF00E7D6
      CE00DE9C8400B5735A00DE947300BD6B4A00C67B5A00CE6B4200B5633900CE6B
      42006B421800F7EFEF00FFFFFF0094635200D6BDB500FFFFF700FFFFF70094DE
      940018B52100ADE7A500FFFFF70000000000000000000000000084D68400A5DE
      A500F7EFE700EFE7DE00E7D6D600947363000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000A5847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFFF
      F700FFF7E700BD9C8C00E7DED600FFFFFF00DE947300CEA58C00FFFFFF00EFD6
      CE00E7AD9400B5735A00B5846B00DE947B00CE7B5A00CE734A00945A4200B573
      5200944A1800AD9C8C00FFFFFF009C6B5200D6C6BD00FFFFF700FFFFF700FFFF
      F70084D68400FFF7F700FFFFF7000000000000000000B5E7B50018B5210018B5
      2100DECEC600AD846B00A57B5A00E7DED6000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000A5847300FFFFFF00F7EFEF00DECE
      CE00DECEC600DECEC600DEC6BD00DEC6BD00DEBDB500DEBDAD00DEBDAD00DEB5
      A500FFF7EF00BD9C9400E7DED600FFFFFF00DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00DECEC600D69C8400D68C7300D67B5200AD6B4A00CEB5
      A500BD6B42006B4A2100FFFFFF00A5735A00D6C6BD000000000000000000FFFF
      FF00FFFFF700FFFFF700FFFFF70000000000EFFFEF0052EF840063FF94005AF7
      8C0018B52900529C4200E7DED600000000000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7EF00EFEFE700EFEF
      E700D6C6B500AD948400EFE7E700FFFFFF00E79C7B00CEA59400FFFFFF00DEA5
      9400EFB59C00C6846B00DECEC600D6BDAD00DE9C8400D6846300B5735A00F7F7
      F700B5735A00A5522900ADAD9C00A5736300D6C6BD000000000000000000FFFF
      FF00FFFFF700FFFFF700FFFFFF00FFFFFF0042AD42005AFF8C0052EF7B0052EF
      7B005AF78C0021B531005AB55A00000000000000000000000000000000000000
      0000008400000084000000840000000000000084000000840000008400000000
      000000840000008400000084000000000000AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00BDA59C00B59C8C00C6A5
      94008C6B5200D6C6C600FFFFFF00FFFFFF00E79C7B00D6AD9C00EFCEBD00D68C
      6B00E7AD9400E7A58C00AD634A00EFDED600C68C6B00D68C7300BD7B6300EFC6
      B500C6735200D6846300000000009C634A00D6C6BD0000000000000000000000
      0000FFFFF700F7F7EF00F7F7EF0084CE840018A5180010A521004AE7730042DE
      6B0008940800399C39004AB54A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6ADA500E7D6B500FFDE
      A500DECECE00FFFFFF00FFFFFF00FFFFFF00E79C8400D6AD9C00FFF7F700F7DE
      D600F7DED600F7DECE00F7D6CE00FFFFFF00F7E7DE00EFCEC600EFD6C600F7EF
      E700EFCEBD00EFCEBD00F7D6C600A5735A00D6C6BD000000000000000000FFFF
      FF00D6C6BD00CEB5A500FFF7E700D6C6BD00E7DEDE00088C080039D6520031CE
      4A00088C0800EFF7EF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD847300FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00CEBDAD00D6AD7300B584
      6300FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFA58400CEAD9400FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AD7B6300D6C6BD000000000000000000FFFF
      FF00DECEC600C6A58400EFCE8C00E7DED600000000000884080029CE420029C6
      3900399439000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6B5A500FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00E7CEBD00F7EFE700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EFA58400D6AD9400CEAD9400CEAD
      9400CEAD9400CEA59400CE9C8C00CE9C8C00C6948400C6948400C6948400BD8C
      7300BD8C7300C68C7300BD846B00BD7B6300D6C6BD00FFFFFF00FFFFFF00FFFF
      FF00DECEC600BD946B00A57B630000000000000000000894100021C6310018BD
      2900C6E7C6000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002921210021212100212118002121
      1800212118002121180021211800212118002121180029292900313131002929
      290029292900292929002929290029292900E7946B00EFA58400E7A58400E79C
      8400E79C7B00E79C7B00DE947B00DE947300DE8C6B00D68C6B00D6846300CE84
      5A00CE7B5200CE734A000000000000000000E7DED600D6C6BD00D6C6BD00D6C6
      BD00D6BDBD00F7EFEF0000000000DEEFDE009CC69C00B5CEB500D6E7D600FFFF
      FF0000000000000000000000000000000000000000000000000000000000E7E7
      E700BDBDBD00F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B500ADADAD00CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5B5
      B5009C9C9C00E7E7E70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000FFFFFF00ADAD
      AD009C9C9C00FFFFFF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E7E7E700ADAD
      AD00A5A5A5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000CECECE00B5B5
      B500ADADB5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000BDBDBD00B5B5
      B50039399C00DEDEEF0000000000000000000000000000000000FFFFFF00B5B5
      DE005A5ABD002929B5005252B500FFFFFF000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000B5B5B5009C9C
      AD002929B5003939BD008484C600BDBDDE00BDBDDE008C8CC6004242B5004A4A
      DE004A4AE7002929D6002121AD00FFFFFF000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000ADADAD007B7B
      A5003131C6005252E7005252EF003131CE001010B5002121CE004242E7005252
      EF004242E7002929CE004242B500000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      00000084000000840000008400000000000000000000F7F7F700ADADAD006363
      9C004242CE005252E7005252EF003131D6001818C6002929CE004A4AE7005252
      EF004242DE002121CE006B6BBD00000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      00000084000000840000008400000000000000000000DEDEDE00ADADAD005252
      A5004242D6005252E7005252EF002929CE001818C6003131D6005252EF005252
      EF003939DE002121C6009C9CCE00000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      00000084000000840000008400000000000000000000C6C6C600B5B5B5004242
      AD004A4ADE005252EF004A4AE7002121CE001818C6003939D6005252EF005252
      EF003131D6001818B500C6C6DE00000000000084000000840000008400000000
      0000008400000084000000840000000000000084000000840000008400000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000008400000084000000840000000000000000000000000000000000000000
      0000000000000000000000000000000000000084000000840000008400000000
      00000084000000840000008400000000000000000000BDBDBD00B5B5B5002929
      AD004A4ADE005252EF004242E7001818C6001818C6003939DE005252EF004A4A
      E7003131D6001818AD00EFEFF700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B5009494A5002929
      B5004A4ADE005252EF003939DE001818C6002121CE004242DE004A4AD6003131
      BD002121B5002929A50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BDBDBD009C9C9C00ADAD
      CE003939BD004A4ADE003131D6001010BD002121AD006363BD00BDBDDE00F7F7
      FF00F7F7FF00B5B5DE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700ADADD6009C9CCE00B5B5D600EFEFF70000000000000000000000
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
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF000000FF000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000FF00000000000000000000000000000000000000
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
      00000000000000000000000000000000000000000000CE8C6300AD4A1800944A
      2900A5A5AD00ADADB500B5BDBD00BDBDBD00ADADAD009C9C9C00949494006363
      6B00A54A2100A54A2100AD633900F7E7E70000000000BD7B5A009C634A009C63
      4A0094634A0094634A0094634A008C5A42008C5A42008C5A4200845239008452
      39007B523900845239007B5239008C52390000000000AD7B7B00B58C8C00CEAD
      A500F7E7E700F7F7F700FFF7F700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6844200AD4A0000C6731800AD6B
      2900D68C4200DE944200E7AD6300FFF7EF00FFFFFF00F7F7F700EFEFEF009494
      9400CE842900DE9C5200BD6B2100AD52290000000000BD847300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFF700FFF7
      F700FFF7F700FFF7EF00FFFFFF0084634A00F7EFEF00B57B7B00FFF7F700FFFF
      F700C6A5AD00CEA5A500D6ADAD00D6BDBD00DECECE00E7D6D600F7E7E700FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD5A0000C6732900CE732100AD73
      3100BD631800C66B1000CE843100DED6CE00F7F7F700FFFFFF00F7FFFF009C9C
      9C00D68C3100E7AD6300DE9C4A009C310000C6734A00BD8C7300FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFF700FFF7F700FFFFFF00FFFFFF00FFFFF700F7EF
      E700F7E7E700F7E7E700FFF7EF00845A4A00F7EFEF00B57B7B00FFE7D600FFFF
      DE00FFFFEF00FFFFF700FFE7EF00E7D6D600D6BDBD00DEBDBD00C69CA500E7D6
      DE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C66B2100BD6B2100C66B1800AD6B
      3100B5521000B55A1000C67B3100CEC6BD00DEDEE700F7F7F700FFFFFF00ADAD
      AD00D6843100DEA55A00DE9442009C310000C6735200BD8C7B00FFFFFF00EFDE
      DE00AD8C7B00AD847300F7EFE700FFFFF700A57B63009C846B00947B6300FFF7
      F700FFEFE700F7E7E700FFF7F700845A4A00EFE7E700BD848C00FFEFEF00FFFF
      F700FFFFDE00FFE7CE00F7D6BD00FFE7C600FFEFD600FFF7EF00CEADAD00E7D6
      CE00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD631800BD631800BD631800AD6B
      3100CECECE00BDB5B500A5A5A5009CADB500B5BDCE00CED6E700F7FFFF00B5BD
      CE00BD732900D6945200D69439009C310000CE7B5200BD8C7B00FFFFFF00DEC6
      BD00BD735200AD4A18009C735A00FFFFFF00943910008442180073310800B5AD
      9C00FFF7F700F7EFE700FFF7F7008C5A4A00EFDEDE00C69C9C00FFF7FF00FFFF
      FF00FFFFDE0084847B007B6B6300CEB59C00E7D6B500FFF7DE00D6ADAD00EFDE
      E700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD631800B5631800BD631800B563
      2100A5734A00AD7B4A00A5734A00A56B39009C633100945A29008C5221008C5A
      2900AD6B2100C67B2900D68C31009C310800CE845A00C6948400FFFFFF00DECE
      C600CE846B00D67B4A009C522900E7DED600AD5A3900BD5A3100A54A1800735A
      3900FFF7F700FFEFEF00FFF7F7008C634A00E7DEDE00CE9C9C00FFF7E700FFFF
      DE00FFFFDE00B5B5C600527B8C0008632900298C310084B57300D6ADAD00F7E7
      EF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD5A1000B55A1800B55A1000BD5A
      1000BD5A0800BD5A0800C6631000C6631000C66B1000CE6B1800CE731800D673
      2100D67B2900CE842900D68431009C310800CE846300C6948400FFFFFF00DECE
      C600D6947300D6845A00BD6B3900A5735A00BD735200BD633100BD5A31006B31
      0000C6BDAD00FFFFF700FFFFFF00946B5200E7D6D600D6ADAD00FFFFFF00FFFF
      F700FFFFEF00C6D6DE0031A5630039D6630031BD4A00088418006B8C5200FFF7
      F700FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B55A1000B55A1000B5632100AD6B
      3100B56B2900B56B2900B56B3100B56B3100B56B3100B5733100BD733100BD73
      3100C67B3900CE7B2900D68429009C310800D68C6B00C69C8400FFFFFF00E7D6
      CE00D69C7B00BD7B5A00DE9473009C5A3900BD7B6300C66B3900C66B3900BD63
      3100735A3100FFF7F700FFFFFF00946B5200E7D6D600DEADA500FFEFD600FFFF
      C600FFF7C600BDD6A50039CE630063FF9C0052E7840031BD5200007B10009CCE
      9C00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5521000AD521000B58C6B00C6C6
      BD00CEC6BD00CEC6BD00CEC6BD00C6BDB500C6BDB500C6BDB500C6BDB500BDB5
      AD00B59C8400C67B3100CE8429009C310800DE8C7300CEA58C00FFFFFF00E7D6
      CE00E7A58C00AD735A00BD7B6300DE947300CE7B5200CE734A00945A3900C66B
      4A007B421000C6BDAD00FFFFFF00946B5200E7D6D600E7BDBD00FFFFFF00FFFF
      FF00FFFFFF00F7F7F70052C6730042EF73006BFF9C0052E7840039BD52000073
      0000FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5520800AD520800BD9C7B00E7EF
      F700E7EFEF00E7E7EF00E7EFEF00E7E7EF00E7E7E700DEE7E700DEDEE700DEDE
      E700B5A59C00C67B2900CE8429009C310800DE947300CE9C8C00FFFFFF00EFD6
      CE00E7AD9400B5735A00CEB5A500D69C8400D6846300CE7B5200A5634A00BD94
      8400B5633100846B4A00FFFFFF009C735A00E7CECE00E7BDB500FFFFDE00F7EF
      D600FFF7D600FFEFDE00DEE7C60031BD5A0052F7840063FF940052E77B0031B5
      4A00BDDEBD00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A0800AD4A0800BD947B00E7EF
      F700D6D6D600C6C6C600C6C6C600C6C6C600CEC6C600CECECE00C6C6C600E7E7
      E700BDA59400C67B2900CE7B29009C310800DE947300CEA58C00FFFFFF00E7C6
      BD00E7AD9400B57B5A00EFEFE700CEA59400E79C8400D67B5A00B5735200E7E7
      DE00BD7352007B421800E7E7DE00A5736300E7CECE00EFCEC600FFFFFF00E7EF
      F700FFFFEF00FFF7EF00FFF7F700D6E7C60018C64A005AFF8C0063FF940052DE
      7B0021842900CEDECE00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000AD4A0800A5420800BD9C8400EFF7
      FF00F7F7F700EFEFEF00EFEFEF00EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7
      E700BDAD9C00C6732900CE7B29009C310800E79C7B00D6AD9C00FFF7F700D68C
      6B00EFBDA500DEA58C00B5846B00E7DED600CE8C7300DE947B00B5846B00F7E7
      DE00BD7B6300CE7B5A00A57B6300A56B5A00DECECE00F7D6CE00FFFFEF00DEDE
      EF00FFFFEF00FFFFEF00FFF7EF00FFFFFF00B5E7B50029DE630063FF94005AFF
      94005A635A007B7B6B00EFEFDE00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420000A5420000BD9C8400F7FF
      FF00EFEFEF00DEDEDE00DEDEDE00DEDEDE00DEDEDE00DEDEDE00D6D6D600E7E7
      E700BDAD9C00C6732900CE7B21009C310800E79C7B00D6AD9C00EFCEBD00DE9C
      8400DEA58C00DEA58C00CE846B00F7E7E700D6AD9400D68C6B00CE846B00E7CE
      BD00CE7B5A00CE846300CE7352009C634A00E7CECE00D6C6C6006B6B6B00736B
      730073737300737373006B6B6B008C8484006B636B00847B7B0052946B00C6C6
      BD004263EF001839DE000008AD005A52BD000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A5420000A5390000BD9C8400F7FF
      FF00F7F7F700EFEFEF00EFEFEF00E7E7E700E7E7E700E7E7E700DEDEDE00E7E7
      E700BDAD9C00B56B2900C67321009C390800E79C8400CEAD9C00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00AD7B6300DEC6C600E7C6C600736B6B00AD9C
      B500C6ADAD00736B6B00736B6B009C8484005A5A5A008C7B7B00BDBDBD00DEDE
      D600396BFF003963EF000818B5001818A5000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C3900009C390000BD9C8400F7FF
      FF00DEDEDE00CECECE00CECECE00CECECE00CECECE00CECECE00CECECE00EFEF
      EF00BDAD9C0084522100A5632100A5390000EFA58400CEA59400F7EFEF00EFE7
      E700EFE7E700EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFE7DE00EFDE
      DE00EFDEDE00EFDEDE00EFE7E700AD7B6300DED6D600847373006B6B6B00847B
      7B00736B6B005A5A5A006B6B6B00737B7B008C8C8C00A5A5A500FFFFF700F7F7
      FF00315AEF001831CE0000009C009C9CD6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BD520000A5390000C69C8400F7FF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00F7F7F700EFEFEF00EFEF
      EF00BDAD9C00BD732100BD5A0800C6733900EFA58400E7BDAD00DEAD9C00DEAD
      9C00DEAD9C00DEAD9C00DEA58C00DEA58C00D69C8400D6947B00D6947B00CE8C
      6B00CE846300D6846300C6735200D6846300FFFFFF00C6C6C600C6C6C600CECE
      CE00DEDEDE00EFEFEF00F7F7F700F7F7F700FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00848CD600848CD600C6C6E700FFFFFF00424D3E000000000000003E000000
      2800000040000000F00000000100010000000000800700000000000000000000
      000000000000000000000000FFFFFF00E3FF800000000000E3FF800000000000
      E3FF800000000000C3FF000000000000C7FF000000000000C7FF000000000000
      C3C0000000000000C000000000000000C0010000000000008001000000000000
      8001000000000000800100000000000080010000000000008003000000000000
      8003000000000000F07F0000000000008000E007E3FF80000080E007E3FF0000
      0000C003E3FF000000000000C3FF000000000000C7FF000000000000C7FF0000
      00001240C3C0000000000A80C000000000001288C00100000000125880010000
      0000000080010000000000008001000008000000800100000800C00380030000
      0800E007800300000000E007F07F000080008001E3C3E00300000000E0C3C003
      00000000C800C003000000008100800100000000800080010000000000008001
      0000000000008101000000000001000000000000000300000000000000030000
      00000000000700000000000000070000000000000007000000000000000F007E
      00000000000F00E000000000E00F000180008000A3F8800080000000A0000000
      80000000A0000000800000008000000090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000080020000
      000200008018000090000000BC0000009C410000BFC1000090030000A8030000
      9FC70000BFC70000800F0000800F00008000E1FF800380008000007F80030000
      0000000700E70000000000010607000000000000000F000000000000000F0000
      00000000000F0000000020000007000000002000000300000000200000010000
      0000200000010000000220000000000000002002000000000000201200F00000
      00003E00FFF80000000300C0FFFC0000F03FF87FF0C7FFF0F00FF031F0C7FFF0
      C007F020E1C7FFE08003E000C100FFC0000000008000F103000008000000C007
      000000010001800FE00000070001000FFC0100070000001FFE0100030000000F
      FC03C0010000000FF807CD010000000FE00FC00F2001001FE00FC01F0003001F
      C01FE03F8007803FC07FF07FE00FC07FFE7F8000FC3F87FFFC7F0000E00F87FF
      F87F0000800701FFF07F00008003007CE00000000001001EC00000000000000E
      800000000600001E000000000E40003C0000000001E000FC800000000100007C
      8000000003000038E000000003013000F07F000000007000F87F00000000F800
      FC7F0000C001FC00FE7F0000E007FE01F010FE7FC103F03FF000FE3F8101C00F
      C000FE1F01001800C100FE0F0400300000000007000040000400000300000000
      0000000100000000000100008001024000010000E001000000000001F0010000
      F0000003C003E010FE0000078003C008FE00FE0FC007C004FE00FE1FE00FC000
      FE01FE3FF01F8101FFE3FE7FF81F8003E621FFE1C107F80FE000FFE18101F80F
      C000FF800100F80FC0003C000400F80FC0003800080000008000700000000000
      800038000000000080003F008001000000003F00C007000000003E00F0030000
      00001C00F00100000000000CE003B80FF800000FC01FF00FF002001FC01FF00F
      F00E003FE01FF00FFFC0807FF81FF80FFD008000C07F8000FD00000090070000
      01000000800700000100000080F7000001000000002F000001800000000F0000
      01800000000F000041E00000010F000045A00000000F00006520000000070000
      65E300000083000078030000000100006807000000000000487F000000100000
      78FF00000FF0000001FF0000FFF80001C0FFF81FFF818000801FF001FF810000
      8003C08080000000800080880000000000000080000000000000008800000000
      00000000000000000000000080010000000000F8C08100000000000080810000
      0000008880800000000000088080000000000000808000000001000080800000
      000F0003C0C100008FC0000FF3FF0000FFFF80008000F000FFFF00008000C000
      FFFF00000000C000FFFF000000008000F111000000000000F111000000000000
      F111000000000180F1110000000001C0F111000000000180F111000000006101
      F111000000006001F111000000027001FFFF000000006003FFFF000000006087
      FFFF000000000187FFFF00000003020FE3FFFFFFFFFFFFFFE3FFFFFFFFFFFFFF
      E3FFFFFFFFFFFFFFC3FFFFFFFFFFFFFFC7FF1111FFF1FF11C7FF1111FFF1FF11
      C3C01111FFF1FF11C0001111FFF1FF11C0011111FFF1FF1180011111FFF1FF11
      80011111FFF1FF1180011111FFF1FF118001FFFFFFFFFFFF8003FFFFFFFFFFFF
      8003FFFFFFFFFFFFF07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1111F111FF11FFF11111F111FF11FFF1
      1111F111FF11FFF11111F111FF11FFF11111F111FF11FFF11111F111FF11FFF1
      1111F111FF11FFF11111F111FF11FFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF800080008000FFFF000080000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF000000000000FFFF000000000000FFFF000000000000
      FFFF000000000000FFFF00000000000000000000000000000000000000000000
      000000000000}
  end
  object PopupMenu: TPopupMenu
    Left = 674
    Top = 277
    object N1: TMenuItem
      Caption = #1578#1606#1592#1610#1605' '#1587#1578#1608#1606' '#1607#1575#1610' '#1580#1583#1608#1604
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1670#1575#1662
      OnClick = N2Click
    end
    object Excel1: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Excel'
      OnClick = Excel1Click
    end
    object Word1: TMenuItem
      Caption = #1575#1585#1587#1575#1604' '#1576#1607' Word'
      OnClick = Word1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object N3: TMenuItem
      Caption = #1575#1610#1606' '#1606#1575#1605#1607' '#1582#1608#1575#1606#1583#1607' '#1606#1588#1583#1607' '#1576#1575#1588#1583
      OnClick = N3Click
    end
    object N5: TMenuItem
    end
    object N6: TMenuItem
      Action = MainForm.AARCHIVE
    end
    object N7: TMenuItem
      Action = MainForm.adeleteWord
    end
    object N8: TMenuItem
    end
    object N9: TMenuItem
    end
    object Word2: TMenuItem
      Action = MainForm.AExpotToWord
    end
    object N10: TMenuItem
    end
    object N11: TMenuItem
      Action = MainForm.Apicture
    end
    object N12: TMenuItem
    end
    object N13: TMenuItem
    end
    object N14: TMenuItem
    end
  end
  object Settings: TADOTable
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    TableName = 'Settings'
    Left = 85
    Top = 324
    object SettingsUserID: TIntegerField
      FieldName = 'UserID'
    end
    object SettingsVariableId: TIntegerField
      FieldName = 'VariableId'
    end
    object SettingsValue: TWideStringField
      FieldName = 'Value'
      Size = 255
    end
    object Settingsdescription: TWideStringField
      FieldName = 'description'
      Size = 50
    end
  end
  object ImageList1: TImageList
    Left = 538
    Top = 180
    Bitmap = {
      494C010107000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003939
      3900848484004A4A4A000000000000000000000000000000000000000000F7F7
      F7002929290000000000000000000000000000000000525252006B6B6B004242
      4200000000000808080010101000181818002121210031313100393939004242
      42002121210000000000000000000000000000000000FFFFFF00D6D6D600C6C6
      CE0094948C007B7B00006B6B00005A5A0000292900000000000000000000D6D6
      D600292929000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A5A5A009C9C9C006363
      630094949400BDBDBD00C6C6C6004A4A4A00000000000808080031313100A5A5
      A500C6C6C60000000000000000000000000000000000B5B5B500E7E7E7009494
      94000000000021212100313131004A4A4A005A5A5A005A5A5A005A5A5A007373
      73003939390000000000000000000000000000000000FFFFFF00D6D6D600D6D6
      DE00949463009C9C00007B7B00006B6B000021210000000000005A5A5A009C9C
      9C00BDBDBD000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B5B5B500CECECE006363
      63008C8C8C00ADADAD00B5B5B500C6C6C600DEDEDE0000000000525252009494
      9400D6D6D60031313100000000000000000000000000ADADAD00DEDEDE008C8C
      8C000000000021212100313131004A4A4A004A4A4A0018101000181010004A4A
      4A002929290000000000000000000000000000000000FFFFFF00E7E7EF00B5B5
      8C0063632100B5B5000094940000848400003131000018181800848484008C8C
      8C00D6D6D6002929290000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000737373008C8C
      8C006B6B6B00B5B5B500ADADAD00BDBDBD00D6D6D600000000006B6B6B009C9C
      9C0094949400CECECE00000000000000000000000000ADADAD00DEDEDE008C8C
      8C000000000021212100393939004A4A4A001810100000101800001018002118
      18001818180000000000000000000000000000000000FFFFFF00E7E7EF00C6C6
      8C00BDBD0000C6C60000ADAD0000A5A500003939000021212900949494009494
      940094949400CECECE0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B007373
      7300A5A5A5008C8C8C00A5A5A500B5B5B500D6D6D600000000007B7B7B009494
      94008C8C8C00CECECE00393942000000000000000000ADADAD00DEDEDE008C8C
      8C00080808002929290042424200211818000008080010ADBD0010A5BD000008
      08000000000000000000000000000000000000000000FFFFFF008C8C8C009494
      A5009C9C2900E7E7000010100000C6C600004A4A0000292939009C9C9C009494
      94008C8C8C00CECECE0039394200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000525252004242
      4200737373007B7B7B00A5A5A50094949400BDBDBD0000000000949494009494
      9400949494009C9CB5006B6B08000000000000000000ADADAD00DEDEDE008C8C
      8C001010100031313100312929000008080021BDD6001894AD001894AD0010A5
      B5000008100000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
      FF00BDBDAD00FFFF3100FFFF2100FFFF00006B6B0000393942009C9C9C009494
      9400949494009C9CB5006B6B0800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FFFFFF00F7F7F700181818008484840000000000212121009C9C9C009494
      94009C9CB50073730000393900000000000000000000ADADAD00D6D6D6009494
      940021212100393939000000000031E7FF0021A5BD00189CB5001094AD00189C
      AD0010ADC6000010100000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000424242009C9C9C009494
      94009C9CB5007373000039390000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDBDBD00FFFFFF007B7B7B000808080063636300ADADAD00949494009494
      B5007B7B000031310000000000000000000000000000ADADAD00D6D6D600ADAD
      AD0031313100424242005A5252000008080029CEE70018A5BD0018ADB5002152
      A500318C8C0010ADBD0000081000000000000000000000000000000000000000
      00008C8C8C00E7E7E700CECECE00BDBDBD00B5B5B500A5A5A500949494009C9C
      B500737300003131000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000021212100212121004A4A4A00ADADAD00A5A5A5009C9CB5007B7B
      00003131000000000000000000000000000000000000ADADAD00D6D6D600CECE
      CE00212121000000000000000000000000000010100029CEE70018B5BD007342
      C6002163B500008CA50000A5CE00000000000000000000000000000000000000
      000008080800C6C6C600BDBDBD00B5B5B500A5A5A500A5A5A5009494B5007373
      0000313100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000005252520052525200CECECE00B5B5B5009C9CB500737300003131
      00000000000000000000000000000000000000000000C6C6C600F7F7F700FFFF
      FF005A5A5A00000000000000000000000000000000000010180029D6EF00008C
      9C0000DEF70000EFFF0000182100000000000000000000000000000000000000
      0000000000007B7B7B00CECECE00B5B5B500B5B5B5009C9CB500737300003131
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000010101000D6D6D600C6C6C600A5A5BD0063630000313100000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000018180010A5
      C60018FFFF000018180000000000000000000000000000000000000000000000
      00000000000008080800C6C6C600C6C6C6009C9CBD0063630000313100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00ADADCE0042420000FFFF4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000008
      1000003139000000000000000000000000000000000000000000000000000000
      000000000000000000007B7B7B00ADADC60042420000FFFF4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010210073730000B5B50000DEDE4A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000001010210073730000B5B50000D6D64A00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A00006B6B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A00006B6B000000000000000000000000
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
      0000000000000000000018100000CE8C0000FFB5000008000000000000000000
      00000000000000000000000000000000000000000000BDBDBD00B5B5B500BDBD
      BD00C6CECE00D6DEE700EFEFEF00F7F7F700F7F7F700F7F7F700FFFFFF000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000818002194CE0021BDFF0000315200000000000000000008080800EFEF
      EF00292929000000000000000000000000000000000000000000212121004A4A
      4A005A5A5A007373730042424200000000000808080010101000212121003939
      3900000000000000000000000000000000000000000000000000000000000000
      000000000000C6840000FFCE0000FFB50000E7940000AD6B0000100800000000
      00000000000000000000000000000000000000000000ADADAD00A5A5A500ADAD
      BD00AD9C7B005231000000000000181008006B6B6B00ADADAD00EFEFEF000000
      000000000000000000000000000000000000000000000000000000101800218C
      CE004ACEFF0084DEFF00109CE70010B5FF000094E70000395200000000004242
      4200CECECE00000000000000000000000000000000000000000042424200ADAD
      AD00BDBDBD00E7E7E700949494000000000021212100393939005A5A5A007B7B
      7B0018181800000000000000000000000000000000000000000008080800ADAD
      AD00848CA500FFB500006B522100FFB50000E79400008C5A0000B57300001810
      00000000000000000000000000000000000000000000ADADAD009CA5B500B58C
      4200B573000042290800527B9C00105A8C0000000000000000005A5A5A000000
      000000000000000000000000000000000000000000000000000029DEFF004ABD
      FF007BD6FF001894CE00007BBD00006BA5001084CE0018BDFF00004A73002118
      1000E7E7E7002929290000000000000000000000000000000000424242009C9C
      9C00B5B5B500D6D6D6008C8C8C00080808002121210042424200525252007B7B
      7B002929290031313100000000000000000000000000A5A5A500F7F7F700DEDE
      DE0039424A007B5A1800FFB50000FFAD0000E79400008C5A00009C6B00004A31
      00000000000000000000000000000000000000000000A5ADAD00AD9C7B00CE9C
      3100B5BDD600524A52005A6B7B00008CDE000084C600000000005A5A5A000000
      0000000000000000000000000000000000000000000000000000008CD60042CE
      FF002194CE000073BD004AA5DE001884C600007BC600086BA50000527B002118
      1000A5A5A500CECECE0000000000000000000000000000000000424242009C9C
      9C00B5B5B500DEDEDE0073737300000000002121210039393900424242009C9C
      9C002929290042424200212121000000000000000000FFFFFF00525252006363
      63006B738C00FFA50000FFAD0000FFAD0000E79400008C5A00009C6B00004A31
      00000000000000000000000000000000000000000000A5A5A5009C9C9C009CA5
      AD00B5B5B50042423900738C940000396B000031520000000000B5B5B5000000
      000000000000000000000000000000000000000000000000000000427300005A
      9400007BC6004AADE7001073A5001084C6004A9CCE00006BA500000000005A5A
      5A0094949400CECECE003939420000000000000000000000000029292900DEDE
      DE0084848400B5ADA500BDADAD00B5BDC600736B6B008C8C8400949494009494
      94007B7B7B0031313100181818000000000000000000E7E7E700DEDEDE00C6CE
      CE0039312100FFAD0000FFB50000FFB50000E79400008C5A00009C6B00004A31
      00000000000000000000000000000000000000000000A5A5A5009C9C9C00A5A5
      A500ADADAD00B5B5B50000000000424252000010000000392100080000000000
      0000000000000000000000000000000000000000000008BDFF0029ADEF000042
      6B00009CEF0000528C001884BD004A9CD6000063A50000000000313131009494
      94009C9C9C009C9CB5006B6B0800000000000000000000000000000000000000
      00003963730063A5BD005AA5BD004273840039637B0010313900080000004242
      4200737373007B7B7B00101010000000000000000000E7E7E700D6D6D6005A63
      7B00FFBD0000FFB5000052421800AD6B0000EF9C00008C5A00009C6B00004A31
      00000000000000000000000000000000000000000000A5A5A500949494009C9C
      9C00A5A5A500B5B5B50039313900004A2100DEF7EF0000523100000000000000
      0000000000000000000000000000000000000000000029C6FF0073D6FF000063
      9C000042630000ADFF00007BBD00005A940000000000080808007B7B7B009C9C
      9C009C9CB5007373000039390000000000000000000000000000000000000000
      00007BBDCE0073ADC60073ADC600085A5200008C310029425200292121006B6B
      6B0084848400CECECE00525252000000000000000000E7E7E700DEDEDE009C9C
      AD00C67B0000FFB50000FFBD0000FFAD0000B57300009C630000A56B00005231
      000000000000000000000000000000000000000000009C9C9C00949494009C9C
      9C009C9C9C00A5A5A500B5B5B500000000005AFFDE00846B7300005231000000
      000000000000000000000000000000000000000000000008100042D6FF00089C
      EF00007BBD0000426B0000294200005A8C0000426B00292121009C9C9C009C9C
      B500737300003131000000000000000000000000000000000000000000004A73
      84007BBDCE001021210052849400527B840052738C0000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7004A4A4A00949C
      9C0042392900FFB50000C6840000B5730000BD7B0000CE8400008C5A00000000
      000000000000000000000000000000000000000000009C9C9C008C8C8C009494
      94009C9C9C00A5A5A500B5B5B5003931310000522900F7FFFF00000000000000
      0000000000000000000000000000000000000000000000000000000000000852
      7B0018C6FF00089CEF000084CE00009CEF0000294A0042393900A5A5BD007373
      00003131000000000000000000000000000000000000000000000000000084C6
      D60073A5B500213139000808100084C6DE002939420000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF00DEDEDE00CECE
      CE00BDBDC60031292100CE840000BD7B0000BD7B00009463000000000000A5A5
      A5004242420000000000000000000000000000000000949494008C8C8C009494
      9400949494009C9C9C00A5A5A500ADADAD000000000000522900000800000052
      3900000800000000000000000000000000000000000000000000000000000000
      00000000000000527B001052840000315A0018080000B5B5D600737300003131
      00000000000000000000000000000000000000000000000000005273840084BD
      CE001829290042636B00426B73007BB5C6000000000000000000000000000000
      00000000000000000000000000000000000000000000E7E7E700A5A5A5009C9C
      9C009C9C9C00B5B5BD0039312100CE840000CE8400004A2900008C949C00D6D6
      D6008C8C8C007B7B7B00FFFFFF0000000000000000008C8C8C00848484008C8C
      8C0094949400949494009C9C9C00ADADAD004239390000311800528473000031
      2100009C63000000000000000000000000000000000000000000000000000000
      000000000000000000004A4239004A424200BDBDD60063630000313100000000
      000000000000000000000000000000000000000000000000000094C6D60084B5
      C60018293100081010008CCEDE00293942000000000000000000000000000000
      0000000000000000000000000000000000000000000073737300ADADAD009C9C
      9C009C9C9C009C9C9C00B5BDC6005A5239009C6300000800000084848C00DEDE
      DE000000000084848400FFFFFF00000000000000000094949400848484008C8C
      8C00949494009C9C9C009C9C9C00ADADAD00635A6300005A3100FFFFFF002108
      100000633900006B420000000000000000000000000000000000000000000000
      0000000000000000000084848400BDBDD60042420000FFFF4A00000000000000
      000000000000000000000000000000000000000000006B8C9C0094BDD60084AD
      BD008CBDCE005A7B840084B5C600000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000007B7B7B00ADAD
      AD00A5A5A500B5B5B5007B7B7B001018180000000000000000008C8C8C00D6D6
      D6003131310018181800FFFFFF00000000000000000042424200393939003939
      39004242420042424200424242004A4A4A00313131000000000084FFDE00FFFF
      FF00102921000052310000000000000000000000000000000000000000000000
      000000000000000000001010210073730000B5B50000D6D64A00000000000000
      0000000000000000000000000000000000000000000000000000293942008CB5
      C6008CBDCE008CBDD60029394200000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007B7B
      7B008484840010101000000000000000000000000000000000009C9C9C00E7E7
      E7008C8C8C0084848400FFFFFF00000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000063CE
      A500005A31000000000000000000000000000000000000000000000000000000
      00000000000000000000000000004A4A00006B6B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003142420084ADBD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFFFFFFFF0000E3E7880780670000
      80878007804700008043800780030000C043800780030000C041800780010000
      C041800780010000F0818203FF810000F0038001F0030000F8078701F0070000
      F80F8781F80F0000F81FFFC3F81F0000FC3FFFE7FC3F0000FC3FFFFFFC3F0000
      FE7FFFFFFE7F0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFC3F801FF0C7C10F
      F81F821FC027C007C00F809FC003C003800F805FC003C101800F805FC021C001
      800F821F8041F001800F803F8081E001800F811F8003E07F801F801FE007C07F
      80278087F80FC0FF80018007FC1F80FF80098003FC3F81FFC0C18043FC3FC1FF
      E3C1FFE7FE7FF3FFFFFFFFF7FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object DSletterformats: TDataSource
    DataSet = Qrletterformats
    Left = 442
    Top = 144
  end
  object Qrletterformats: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <>
    SQL.Strings = (
      'Select 0 as Code, '#39#1607#1605#1607' '#1605#1608#1575#1585#1583#39' as Title'
      'Union'
      'Select 1 as Code, '#39#1593#1575#1583#1610#39' as Title'
      'Union'
      'Select 2 as Code, '#39#1662#1610#1588' '#1606#1608#1610#1587#39' as Title')
    Left = 442
    Top = 95
    object QrletterformatsCode: TIntegerField
      FieldName = 'Code'
      ReadOnly = True
    end
    object QrletterformatsTitle: TStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 9
    end
  end
  object Get_UserSecretariat_Tree: TADOStoredProc
    Connection = Dm.YeganehConnection
    CursorType = ctStatic
    LockType = ltBatchOptimistic
    ProcedureName = 'Get_UserSecretariat_Tree;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@userid'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 0
      end>
    Left = 400
    Top = 328
    object Get_UserSecretariat_TreeID: TAutoIncField
      FieldName = 'ID'
      ReadOnly = True
    end
    object Get_UserSecretariat_TreeSecID: TIntegerField
      FieldName = 'SecID'
    end
    object Get_UserSecretariat_TreeParentID: TIntegerField
      FieldName = 'ParentID'
    end
    object Get_UserSecretariat_TreeTag: TIntegerField
      FieldName = 'Tag'
    end
    object Get_UserSecretariat_TreeTitle: TStringField
      FieldName = 'Title'
      ReadOnly = True
      Size = 30
    end
    object Get_UserSecretariat_TreeProceed: TBooleanField
      FieldName = 'Proceed'
    end
  end
  object DGet_UserSecretariat_Tree: TDataSource
    DataSet = Get_UserSecretariat_Tree
    Left = 400
    Top = 374
  end
  object QrNews: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'Pa_UsersID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select N.NewsID , N.Code , N.Title , NU.ISRead'
      'From News N'
      'Inner Join NewsUsers NU On NU.NewsID = N.NewsID'
      'Where(NU.UsersID = :Pa_UsersID )'
      'And(NU.NotShow = 0)'
      'And(NU.ISRead = 0)'
      ''
      ''
      '')
    Left = 85
    Top = 216
    object QrNewsNewsID: TAutoIncField
      FieldName = 'NewsID'
      ReadOnly = True
    end
    object QrNewsCode: TIntegerField
      DisplayLabel = #1705#1583' '#1582#1576#1585
      FieldName = 'Code'
    end
    object QrNewsTitle: TWideStringField
      Alignment = taRightJustify
      DisplayLabel = #1593#1606#1608#1575#1606' '#1582#1576#1585
      FieldName = 'Title'
      Size = 300
    end
    object QrNewsISRead: TBooleanField
      Alignment = taRightJustify
      DisplayLabel = #1582#1608#1575#1606#1583#1607' '#1606#1588#1583#1607
      FieldName = 'ISRead'
    end
  end
  object DSNews: TDataSource
    DataSet = QrNews
    Left = 85
    Top = 264
  end
  object UserTimer: TTimer
    Interval = 50000
    OnTimer = UserTimerTimer
    Left = 674
    Top = 330
  end
  object QrSrchArchFolder: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'UserID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select FolderID,Title'
      'From ArchiveFolder'
      'Where (1=1)'
      'And(UserID = :UserID)'
      'And(ArchiveCenterID = -1)')
    Left = 538
    Top = 74
    object QrSrchArchFolderFolderID: TAutoIncField
      FieldName = 'FolderID'
      ReadOnly = True
    end
    object QrSrchArchFolderTitle: TWideStringField
      Tag = 1
      DisplayLabel = #1606#1575#1605' '#1586#1608#1606#1603#1606
      DisplayWidth = 50
      FieldName = 'Title'
      Size = 100
    end
  end
  object QrLetterData: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'LetterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = 0
      end>
    SQL.Strings = (
      'Select Top 1 LetterDataID ,LetterID , Image '
      'From LetterData'
      'Where LetterID = :LetterID'
      'And( Extention in (1,2) )'
      'Order By PageNumber')
    Left = 521
    Top = 329
    object QrLetterDataLetterDataID: TAutoIncField
      FieldName = 'LetterDataID'
      ReadOnly = True
    end
    object QrLetterDataLetterID: TIntegerField
      FieldName = 'LetterID'
    end
    object QrLetterDataImage: TBlobField
      FieldName = 'Image'
    end
  end
  object DSLetterData: TDataSource
    AutoEdit = False
    DataSet = QrLetterData
    Left = 521
    Top = 377
  end
  object quHasSign: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'p1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT COUNT(id) as C FROM LetterSign WHERE LetterID= :p1')
    Left = 434
    Top = 211
    object quHasSignC: TIntegerField
      FieldName = 'C'
    end
  end
  object Dcommon2: TDataSource
    Left = 354
    Top = 211
  end
  object QrViewDate: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = 'letterid'
        DataType = ftInteger
        Size = -1
        Value = 434779
      end>
    SQL.Strings = (
      'DECLARE @letterid int'
      '       ,@Cnt int'
      'SET @letterid =:letterid'
      ''
      'SELECT @Cnt = COUNT(*)'
      'FROM Recommites'
      'WHERE letterid =@letterid--434731'
      ''
      'IF @cnt = 1'
      'BEGIN'
      #9'SELECT viewdate,1'
      #9'FROM Recommites'
      #9'WHERE letterid =@letterid'
      'END'
      'IF @cnt > 1'
      'BEGIN'
      '  SELECT TOP 1 viewdate,2'
      '  FROM Recommites'
      '  WHERE letterid =@letterid'
      '  AND parentid <> 0'
      '  ORDER BY id'
      'END'
      'ELSE'
      'SELECT NULL')
    Left = 506
    Top = 466
    object QrViewDateviewdate: TStringField
      FieldName = 'viewdate'
      Size = 100
    end
  end
  object ADOHasAccess: TADOQuery
    Connection = Dm.YeganehConnection
    Parameters = <
      item
        Name = '@UserID1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = '@UserID2'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = '@UserID3'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'IF EXISTS'
      #9#9'('
      #9#9#9'SELECT [Value]'
      #9#9#9' FROM Settings'
      #9#9#9'WHERE VariableName LIKE '#39'%cbAlarmMessage%'#39
      #9#9#9'AND UserID = :@UserID1'
      #9#9')'
      'BEGIN'
      '  IF '#9'('
      #9#9#9'SELECT CAST([Value] as bit)'
      #9#9#9' FROM Settings'
      #9#9#9'WHERE VariableName LIKE '#39'%cbAlarmMessage%'#39
      #9#9#9'AND UserID = :@UserID2'
      #9#9') = 1'
      '  SELECT 1 AS HasAccess'
      '  IF '#9'('
      #9#9#9'SELECT CAST([Value] as bit)'
      #9#9#9' FROM Settings'
      #9#9#9'WHERE VariableName LIKE '#39'%cbAlarmMessage%'#39
      #9#9#9'AND UserID = :@UserID3'
      #9#9') = 0'
      '  SELECT 0 AS HasAccess'
      ''
      'END'
      'ELSE'
      '  SELECT 0 AS HasAccess')
    Left = 650
    Top = 467
    object ADOHasAccessHasAccess: TIntegerField
      FieldName = 'HasAccess'
    end
  end
end
